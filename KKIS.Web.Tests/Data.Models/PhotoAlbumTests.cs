// --------------------------------------------------------------------------------------------------------------------
// <copyright file="PhotoAlbumTests.cs" company="Krystal Kleer Ice Sculptures, LLC">
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
    /// PhotoAlbum tests.
    /// </summary>
    [TestClass]
    public class PhotoAlbumTests
    {
        /// <summary>
        /// Tests the ToString method.
        /// </summary>
        [TestMethod]
        public void PhotoAlbumTest()
        {
            // Arrange
            const string TestTitle = "Test";
            PhotoAlbum photoAlbum = new PhotoAlbum
            {
                Title = TestTitle
            };

            // Act
            string result = photoAlbum.ToString();

            // Assert
            Assert.AreEqual(TestTitle, result);
        }

        /// <summary>
        /// Tests the ToString method when the title is null.
        /// </summary>
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
