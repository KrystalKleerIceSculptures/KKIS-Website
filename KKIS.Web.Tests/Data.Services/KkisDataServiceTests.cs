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
            string testAlbumKey = "Test Album Key";
            string testAlbumTitle = "Test Album";
            Dictionary<string, string> albums = new Dictionary<string, string>()
            {
                { testAlbumKey, testAlbumTitle }
            };
            string testPhotoTitle = "Test Photo";
            string testPhotoKey = "Test Photo Key";
            Dictionary<string, string> photos = new Dictionary<string, string>()
            {
                { testPhotoKey, testPhotoTitle }
            };
            string testUser = "Test User";
            Mock<IGoogleDataService> mockGoogleService = new Mock<IGoogleDataService>();
            mockGoogleService.Setup(x => x.GetAlbumList(testUser)).Returns(albums);
            mockGoogleService.Setup(x => x.GetPhotoList(testAlbumKey)).Returns(photos);
            IKkisDataService dataService = new KkisDataService(mockGoogleService.Object);

            // Act
            PhotoAlbumCollection result = dataService.GetAlbumList(testUser);

            // Assert
            Assert.IsNotNull(result);
            Assert.AreEqual(1, result.Count);
            Assert.AreEqual(testAlbumTitle, result.First().Title);
            Assert.AreEqual(1, result.First().Count);
            Assert.AreEqual(testPhotoTitle, result.First().First().Title);
        }
    }
}
