using System;
using System.Linq;
using Google.GData.Client;
using Google.GData.Photos;
using KKIS.Models;

namespace KKIS.Services
{
    public class DataService : IDataService
    {
        public PhotoAlbumCollection GetAlbumList(string user)
        {
            PhotoAlbumCollection albumCollection = new PhotoAlbumCollection();

            AlbumQuery query = new AlbumQuery();
            query.Uri = new Uri(PicasaQuery.CreatePicasaUri(user));

            PicasaService picasaService = new PicasaService("PhotoBrowser");
            PicasaFeed picasaFeed = picasaService.Query(query);

            albumCollection.AddRange(picasaFeed.Entries.Select(x => new PhotoAlbum()
                {
                    Title = x.Title.Text
                }).ToList());

            return albumCollection;
        }
    }
}
