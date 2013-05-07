using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using Google.GData.Photos;
using KKIS.Data.Contracts;

namespace KKIS.Data.Services
{
    [ExcludeFromCodeCoverage]
    public class GoogleDataService : IGoogleDataService
    {
        PicasaService picasaService = new PicasaService("PhotoBrowser");

        public Dictionary<string, string> GetAlbumList(string user)
        {
            Dictionary<string, string> albums = new Dictionary<string, string>();
            PicasaFeed picasaFeed = picasaService.Query(new AlbumQuery(PicasaQuery.CreatePicasaUri(user)));

            picasaFeed.Entries.Select(x => albums[x.FeedUri] = x.Title.Text).ToArray();

            return albums;
        }

        public Dictionary<string, string> GetPhotoList(string feedUri)
        {
            Dictionary<string, string> photos = new Dictionary<string, string>();
            PicasaFeed picasaFeed = picasaService.Query(new PhotoQuery(feedUri));

            picasaFeed.Entries.Select(x => photos[x.Content.AbsoluteUri] = x.Summary.Text).ToArray();

            return photos;
        }
    }
}
