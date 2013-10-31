// --------------------------------------------------------------------------------------------------------------------
// <copyright file="PhotoAlbumCollectionTests.cs" company="Krystal Kleer Ice Sculptures, LLC">
//   Copyright (c) Krystal Kleer Ice Sculptures, LLC. All rights reserved.
// </copyright>
// <summary>
//   
// </summary>
// --------------------------------------------------------------------------------------------------------------------

namespace KKIS.Web.Tests.Data.Models
{
    using System.Linq;

    using KKIS.Data.Models;

    using Microsoft.VisualStudio.TestTools.UnitTesting;

    /// <summary>
    /// PhotoAlbumCollection tests
    /// </summary>
    [TestClass]
    public class PhotoAlbumCollectionTests
    {
        /// <summary>
        /// Tests the ToString method
        /// </summary>
        [TestMethod]
        public void PhotoAlbumCollectionTest()
        {
            // Arrange
            string[] testTitles = new string[] { "Test1", "Test2" };
            PhotoAlbumCollection photoAlbumCollection = new PhotoAlbumCollection();
            photoAlbumCollection.AddRange(testTitles.Select(x => new PhotoAlbum
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
