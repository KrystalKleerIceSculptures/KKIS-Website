using KKIS.Data.Models;

namespace KKIS.Data.Contracts
{
    public interface IKkisDataService
    {
        PhotoAlbumCollection GetAlbumList(string user);
    }
}
