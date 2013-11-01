// --------------------------------------------------------------------------------------------------------------------
// <copyright file="KkisDataServiceTests.cs" company="Krystal Kleer Ice Sculptures, LLC">
//   Copyright (c) Krystal Kleer Ice Sculptures, LLC. All rights reserved.
// </copyright>
// <summary>
//   
// </summary>
// --------------------------------------------------------------------------------------------------------------------

namespace KKIS.Web.Tests.Data.Services
{
    using System.Collections.Generic;
    using System.Linq;

    using KKIS.Data.Contracts;
    using KKIS.Data.Models;
    using KKIS.Data.Services;

    using Microsoft.VisualStudio.TestTools.UnitTesting;

    using Moq;

    /// <summary>
    /// KkisDataService tests
    /// </summary>
    [TestClass]
    public class KkisDataServiceTests
    {
        /// <summary>
        /// Tests the GetAlbumList method.
        /// </summary>
        [TestMethod]
        public void GetAlbumListTest()
        {
            // Arrange
            const string TestAlbumKey = "Test Album Key";
            const string TestAlbumTitle = "Test Album";
            Dictionary<string, string> albums = new Dictionary<string, string>
            {
                { TestAlbumKey, TestAlbumTitle }
            };
            const string TestPhotoTitle = "Test Photo";
            const string TestPhotoKey = "Test Photo Key";
            Dictionary<string, string> photos = new Dictionary<string, string>
            {
                { TestPhotoKey, TestPhotoTitle }
            };
            const string TestUser = "Test User";
            Mock<IGoogleDataService> mockGoogleService = new Mock<IGoogleDataService>();
            mockGoogleService.Setup(x => x.GetAlbumList(TestUser)).Returns(albums);
            mockGoogleService.Setup(x => x.GetPhotoList(TestAlbumKey)).Returns(photos);
            IKkisDataService dataService = new KkisDataService(mockGoogleService.Object);

            // Act
            PhotoAlbumCollection result = dataService.GetAlbumList(TestUser);

            // Assert
            Assert.IsNotNull(result);
            Assert.AreEqual(1, result.Count);
            Assert.AreEqual(TestAlbumTitle, result.First().Title);
            Assert.AreEqual(1, result.First().Photos.Count);
            Assert.AreEqual(TestPhotoTitle, result.First().Photos.First().Title);
        }
    }
}
