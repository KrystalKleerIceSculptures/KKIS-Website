// --------------------------------------------------------------------------------------------------------------------
// <copyright file="GalleryControllerTests.cs" company="Krystal Kleer Ice Sculptures, LLC">
//   Copyright (c) Krystal Kleer Ice Sculptures, LLC. All rights reserved.
// </copyright>
// <summary>
//   
// </summary>
// --------------------------------------------------------------------------------------------------------------------

namespace KKIS.Web.Tests.Web.Controllers
{
    using System.Web.Mvc;

    using KKIS.Data.Contracts;
    using KKIS.Data.Models;
    using KKIS.Web.Controllers;

    using Microsoft.VisualStudio.TestTools.UnitTesting;

    using Moq;

    /// <summary>
    /// GalleryController tests
    /// </summary>
    [TestClass]
    public class GalleryControllerTests
    {
        /// <summary>
        /// Tests the gallery index action.
        /// </summary>
        [TestMethod]
        public void IndexTest()
        {
            // Arrange
            var mockKkisService = new Mock<IKkisDataService>();
            mockKkisService.Setup(x => x.GetAlbumList(It.IsAny<string>())).Returns(new PhotoAlbumCollection());
            GalleryController galleryController = new GalleryController(mockKkisService.Object);

            // Act
            var result = galleryController.Index() as ViewResult;

            // Assert
            Assert.IsNotNull(result);
            Assert.IsInstanceOfType(result, typeof(ViewResult));
            Assert.IsInstanceOfType(result.Model, typeof(PhotoAlbumCollection));
        }

        /// <summary>
        /// Tests the gallery navigation action.
        /// </summary>
        [TestMethod]
        public void NavigationTest()
        {
            // Arrange
            var mockKkisService = new Mock<IKkisDataService>();
            mockKkisService.Setup(x => x.GetAlbumList(It.IsAny<string>())).Returns(new PhotoAlbumCollection());
            GalleryController galleryController = new GalleryController(mockKkisService.Object);

            // Act
            var result = galleryController.Navigation();

            // Assert
            Assert.IsNotNull(result);
            Assert.IsInstanceOfType(result.Data, typeof(PhotoAlbumCollection));
        }
    }
}
