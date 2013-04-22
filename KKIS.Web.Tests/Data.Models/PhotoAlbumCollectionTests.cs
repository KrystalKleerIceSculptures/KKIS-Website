using System.Linq;
using KKIS.Data.Models;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace KKIS.Web.Tests.Data.Models
{
    [TestClass]
    public class PhotoAlbumCollectionTests
    {
        [TestMethod]
        public void PhotoAlbumCollectionTest()
        {
            // Arrange
            string[] testTitles = new string[] { "Test1", "Test2" };
            PhotoAlbumCollection photoAlbumCollection = new PhotoAlbumCollection();
            photoAlbumCollection.AddRange(testTitles.Select(x=>new PhotoAlbum()
            {
                Title = x
            }));

            // Act
            string actualResult = photoAlbumCollection.ToString();
            string expectedResult = string.Join(", ", testTitles);

            // Assert
            Assert.AreEqual(expectedResult, actualResult);
        }
    }
}
