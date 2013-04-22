using KKIS.Data.Models;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace KKIS.Web.Tests.Data.Models
{
    [TestClass]
    public class PhotoTests
    {
        [TestMethod]
        public void PhotoTest()
        {
            // Arrange
            string testTitle = "Test";
            Photo photo = new Photo()
            {
                Title = testTitle
            };

            // Act
            string result = photo.ToString();

            // Assert
            Assert.AreEqual(testTitle, result);
        }

        [TestMethod]
        public void PhotoNullTest()
        {
            // Arrange
            Photo photo = new Photo();

            // Act
            string result = photo.ToString();

            // Assert
            Assert.AreEqual(string.Empty, result);
        }
    }
}
