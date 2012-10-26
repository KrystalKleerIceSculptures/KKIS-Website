using System.Web.Mvc;
using KKIS.Services;

namespace KKIS.Controllers
{
    public class BaseController : Controller
    {
        protected IDataService kkisDataService;
    }
}
