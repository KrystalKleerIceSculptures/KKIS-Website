// --------------------------------------------------------------------------------------------------------------------
// <copyright file="HomeControllerTests.cs" company="Krystal Kleer Ice Sculptures, LLC">
//   Copyright (c) Krystal Kleer Ice Sculptures, LLC. All rights reserved.
// </copyright>
// <summary>
//   
// </summary>
// --------------------------------------------------------------------------------------------------------------------

namespace KKIS.Web.Tests.Web.Controllers
{
    using System.Web.Mvc;

    using KKIS.Web.Controllers;
    using KKIS.Web.Models;

    using Microsoft.VisualStudio.TestTools.UnitTesting;

    /// <summary>
    /// HomeController tests
    /// </summary>
    [TestClass]
    public class HomeControllerTests
    {
        /// <summary>
        /// Tests the Index method.
        /// </summary>
        [TestMethod]
        public void IndexTest()
        {
            // Arrange
            HomeController homeController = new HomeController(null);

            // Act
            var result = homeController.Index() as ViewResult;

            // Assert
            Assert.IsNotNull(result);
        }
    }
}
