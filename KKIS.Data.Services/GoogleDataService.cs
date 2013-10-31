// --------------------------------------------------------------------------------------------------------------------
// <copyright file="GoogleDataService.cs" company="Krystal Kleer Ice Sculptures, LLC">
//   Copyright (c) Krystal Kleer Ice Sculptures, LLC. All rights reserved.
// </copyright>
// <summary>
//   
// </summary>
// --------------------------------------------------------------------------------------------------------------------

namespace KKIS.Data.Services
{
    using System.Collections.Generic;
    using System.Diagnostics.CodeAnalysis;
    using System.Linq;

    using Google.GData.Photos;

    using KKIS.Data.Contracts;

    /// <summary>
    /// Google data service
    /// </summary>
    [ExcludeFromCodeCoverage]
    public class GoogleDataService : IGoogleDataService
    {
        /// <summary>
        /// Picasa service
        /// </summary>
        private readonly PicasaService picasaService = new PicasaService("PhotoBrowser");

        /// <summary>
        /// Gets the album list.
        /// </summary>
        /// <param name="user">The user.</param>
        /// <returns>Dictionary of albums.</returns>
        public Dictionary<string, string> GetAlbumList(string user)
        {
            Dictionary<string, string> albums = new Dictionary<string, string>();
            PicasaFeed picasaFeed = this.picasaService.Query(new AlbumQuery(PicasaQuery.CreatePicasaUri(user)));

            picasaFeed.Entries.Select(x => albums[x.FeedUri] = x.Title.Text).ToArray();

            return albums;
        }

        /// <summary>
        /// Gets the photo list.
        /// </summary>
        /// <param name="feedUri">The feed URI.</param>
        /// <returns>Dictionary of photos.</returns>
        public Dictionary<string, string> GetPhotoList(string feedUri)
        {
            Dictionary<string, string> photos = new Dictionary<string, string>();
            PicasaFeed picasaFeed = this.picasaService.Query(new PhotoQuery(feedUri));

            picasaFeed.Entries.Select(x => photos[x.Content.AbsoluteUri] = x.Summary.Text).ToArray();

            return photos;
        }
    }
}
