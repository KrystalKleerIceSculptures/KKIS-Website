// --------------------------------------------------------------------------------------------------------------------
// <copyright file="PhotoTests.cs" company="Krystal Kleer Ice Sculptures, LLC">
//   Copyright (c) Krystal Kleer Ice Sculptures, LLC. All rights reserved.
// </copyright>
// <summary>
//   
// </summary>
// --------------------------------------------------------------------------------------------------------------------

namespace KKIS.Web.Tests.Data.Models
{
    using KKIS.Data.Models;

    using Microsoft.VisualStudio.TestTools.UnitTesting;

    /// <summary>
    /// Photo tests
    /// </summary>
    [TestClass]
    public class PhotoTests
    {
        /// <summary>
        /// Tests the ToString method.
        /// </summary>
        [TestMethod]
        public void PhotoTest()
        {
            // Arrange
            const string TestTitle = "Test";
            Photo photo = new Photo
            {
                Title = TestTitle
            };

            // Act
            string result = photo.ToString();

            // Assert
            Assert.AreEqual(TestTitle, result);
        }

        /// <summary>
        /// Tests the ToString method when the title is null.
        /// </summary>
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
