using System.Collections.Generic;
using System.Linq;
using KKIS.Data.Contracts;
using KKIS.Data.Models;
using KKIS.Data.Services;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;

namespace KKIS.Web.Tests.Data.Services
{
    [TestClass]
    public class KkisDataServiceTests
    {
        [TestMethod]
        public void GetAlbumListTest()
        {
            // Arrange
            Dictionary<string, string> albums = new Dictionary<string, string>();
            Dictionary<string, string> photos = new Dictionary<string, string>();
            string testAlbumTitle = "Test Album";
            string testPhotoTitle = "Test Photo";
            albums[string.Empty] = testAlbumTitle;
            photos[string.Empty] = testPhotoTitle;
            var mockGoogleService = new Mock<IGoogleDataService>();
            mockGoogleService.Setup(x => x.GetAlbumList(It.IsAny<string>())).Returns(albums);
            mockGoogleService.Setup(x => x.GetPhotoList(It.IsAny<string>())).Returns(photos);
            IKkisDataService dataService = new KkisDataService(mockGoogleService.Object);

            // Act
            PhotoAlbumCollection result = dataService.GetAlbumList(string.Empty);

            // Assert
            Assert.IsNotNull(result);
            Assert.AreEqual(1, result.Count);
            Assert.AreEqual(testAlbumTitle, result.First().Title);
            Assert.AreEqual(1, result.First().Count);
            Assert.AreEqual(testPhotoTitle, result.First().First().Title);
        }
    }
}
