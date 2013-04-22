using System.Web.Mvc;
using KKIS.Web.Controllers;
using KKIS.Web.Models;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace KKIS.Web.Tests.Web.Controllers
{
    [TestClass]
    public class HomeControllerTests
    {
        [TestMethod]
        public void IndexTest()
        {
            // Arrange
            HomeController homeController = new HomeController(null);

            // Act
            var result = homeController.Index();

            // Assert
            Assert.IsInstanceOfType(result, typeof(ViewResult));
            Assert.IsInstanceOfType((result as ViewResult).Model, typeof(ContactModel));
        }

        [TestMethod]
        public void IndexSubmitTest()
        {
            // Arrange
            HomeController homeController = new HomeController(null);
            ContactModel model = new ContactModel();

            // Act
            var result = homeController.Index(model);

            // Assert
            Assert.IsInstanceOfType(result, typeof(ViewResult));
            Assert.IsInstanceOfType((result as ViewResult).Model, typeof(ContactModel));
            Assert.AreEqual(model, (result as ViewResult).Model as ContactModel);
        }
    }
}
