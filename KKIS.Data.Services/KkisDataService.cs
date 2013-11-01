// --------------------------------------------------------------------------------------------------------------------
// <copyright file="KkisDataService.cs" company="Krystal Kleer Ice Sculptures, LLC">
//   Copyright (c) Krystal Kleer Ice Sculptures, LLC. All rights reserved.
// </copyright>
// <summary>
//   
// </summary>
// --------------------------------------------------------------------------------------------------------------------

namespace KKIS.Data.Services
{
    using System.Collections.Generic;
    using System.Linq;

    using KKIS.Data.Contracts;
    using KKIS.Data.Models;

    /// <summary>
    /// KKIS data service
    /// </summary>
    public class KkisDataService : IKkisDataService
    {
        /// <summary>
        /// Google data service
        /// </summary>
        private readonly IGoogleDataService googleData;

        /// <summary>
        /// Initializes a new instance of the <see cref="KkisDataService"/> class.
        /// </summary>
        public KkisDataService()
            : this(new GoogleDataService())
        {
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="KkisDataService"/> class.
        /// </summary>
        /// <param name="googleDataService">The google data service.</param>
        public KkisDataService(IGoogleDataService googleDataService)
        {
            this.googleData = googleDataService;
        }

        /// <summary>
        /// Gets the album list.
        /// </summary>
        /// <param name="user">The user.</param>
        /// <returns>The list of albums.</returns>
        public PhotoAlbumCollection GetAlbumList(string user)
        {
            Dictionary<string, string> albums = this.googleData.GetAlbumList(user);

            PhotoAlbumCollection albumCollection = new PhotoAlbumCollection();
            albumCollection.AddRange(albums.Select(x =>
            {
                PhotoAlbum album = new PhotoAlbum
                {
                    Id = x.Value.ToLower().Replace(' ', '_'),
                    Title = x.Value
                };
                Dictionary<string, string> photos = this.googleData.GetPhotoList(x.Key);
                album.Photos = photos.Select(y => new Photo
                {
                    Title = y.Value,
                    Url = y.Key
                }).ToList();
                return album;
            }).ToArray());

            return albumCollection;
        }
    }
}
