using KKIS.Models;

namespace KKIS.Services
{
    public interface IDataService
    {
        PhotoAlbumCollection GetAlbumList(string user);
    }
}
