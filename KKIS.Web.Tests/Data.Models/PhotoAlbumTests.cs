using KKIS.Data.Models;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace KKIS.Web.Tests.Data.Models
{
    [TestClass]
    public class PhotoAlbumTests
    {
        [TestMethod]
        public void PhotoAlbumTest()
        {
            // Arrange
            string testTitle = "Test";
            PhotoAlbum photoAlbum = new PhotoAlbum()
            {
                Title = testTitle
            };

            // Act
            string result = photoAlbum.ToString();

            // Assert
            Assert.AreEqual(testTitle, result);
        }

        [TestMethod]
        public void PhotoAlbumNullTest()
        {
            // Arrange
            PhotoAlbum photoAlbum = new PhotoAlbum();

            // Act
            string result = photoAlbum.ToString();

            // Assert
            Assert.AreEqual(string.Empty, result);
        }
    }
}
