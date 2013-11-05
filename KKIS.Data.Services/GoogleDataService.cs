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
    using System;
    using System.Collections.Generic;
    using System.Diagnostics.CodeAnalysis;

    using Google.GData.Client;
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

            foreach (AtomEntry x in picasaFeed.Entries)
            {
                albums[x.FeedUri] = x.Title.Text;
            }

            return albums;
        }

        /// <summary>
        /// Gets the photo list.
        /// </summary>
        /// <param name="feedUri">The feed URI.</param>
        /// <returns>Dictionary of photos.</returns>
        public Dictionary<string, Tuple<string, string>> GetPhotoList(string feedUri)
        {
            const int Medium = 1;
            Dictionary<string, Tuple<string, string>> photos = new Dictionary<string, Tuple<string, string>>();
            PicasaFeed picasaFeed = this.picasaService.Query(new PhotoQuery(feedUri));

            foreach (PicasaEntry x in picasaFeed.Entries)
            {
                string imageUrl = x.Content.AbsoluteUri;
                string thumbnailUrl = x.Media.Thumbnails[Medium].Url;
                string imageTitle = x.Summary.Text;

                Tuple<string, string> photo = new Tuple<string, string>(thumbnailUrl, imageTitle);
                photos[imageUrl] = photo;
            }

            return photos;
        }
    }
}
