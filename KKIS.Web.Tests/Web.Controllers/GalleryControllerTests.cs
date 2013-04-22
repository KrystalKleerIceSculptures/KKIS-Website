using System.Web.Mvc;
using KKIS.Data.Contracts;
using KKIS.Data.Models;
using KKIS.Web.Controllers;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Moq;

namespace KKIS.Web.Tests.Web.Controllers
{
    [TestClass]
    public class GalleryControllerTests
    {
        [TestMethod]
        public void IndexTest()
        {
            // Arrange
            var mockKKISService = new Mock<IKkisDataService>();
            mockKKISService.Setup(x => x.GetAlbumList(It.IsAny<string>())).Returns(new PhotoAlbumCollection());
            GalleryController galleryController = new GalleryController(mockKKISService.Object);

            // Act
            var result = galleryController.Index();

            // Assert
            Assert.IsInstanceOfType(result, typeof(ViewResult));
            Assert.IsInstanceOfType((result as ViewResult).Model, typeof(PhotoAlbumCollection));
        }

        [TestMethod]
        public void NavigationTest()
        {
            // Arrange
            var mockKKISService = new Mock<IKkisDataService>();
            mockKKISService.Setup(x => x.GetAlbumList(It.IsAny<string>())).Returns(new PhotoAlbumCollection());
            GalleryController galleryController = new GalleryController(mockKKISService.Object);

            // Act
            var result = galleryController.Navigation();

            // Assert
            Assert.IsInstanceOfType(result, typeof(JsonResult));
            Assert.IsInstanceOfType((result as JsonResult).Data, typeof(PhotoAlbumCollection));
        }
    }
}
