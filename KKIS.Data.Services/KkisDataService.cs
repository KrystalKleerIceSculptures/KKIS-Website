using System.Collections.Generic;
using System.Linq;
using KKIS.Data.Contracts;
using KKIS.Data.Models;

namespace KKIS.Data.Services
{
    public class KkisDataService : IKkisDataService
    {
        private readonly IGoogleDataService GoogleData;

        public KkisDataService() : this(new GoogleDataService()) { }
        public KkisDataService(IGoogleDataService googleDataService)
        {
            this.GoogleData = googleDataService;
        }

        public PhotoAlbumCollection GetAlbumList(string user)
        {
            PhotoAlbumCollection albumCollection = new PhotoAlbumCollection();

            Dictionary<string, string> albums = GoogleData.GetAlbumList(user);

            albumCollection = new PhotoAlbumCollection();
            albumCollection.AddRange(albums.Select(x =>
            {
                PhotoAlbum album = new PhotoAlbum()
                {
                    Title = x.Value
                };
                Dictionary<string, string> photos = GoogleData.GetPhotoList(x.Key);
                album.AddRange(photos.Select(y => new Photo()
                {
                    Title = y.Value,
                    Url = y.Key
                }));
                return album;
            }).ToArray());

            return albumCollection;
        }
    }
}
