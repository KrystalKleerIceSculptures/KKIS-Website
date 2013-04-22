using System.Collections.Generic;

namespace KKIS.Data.Contracts
{
    public interface IGoogleDataService
    {
        Dictionary<string, string> GetAlbumList(string user);
        Dictionary<string, string> GetPhotoList(string feedUri);
    }
}
