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
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Net;
    using System.Net.Mail;

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
                Dictionary<string, Tuple<string, string>> photos = this.googleData.GetPhotoList(x.Key);
                album.Photos = photos.Select(y => new Photo
                {
                    Title = y.Value.Item2,
                    Url = y.Key,
                    Thumbnail = y.Value.Item1
                }).ToList();
                return album;
            }).ToArray());

            return albumCollection;
        }

        /// <summary>
        /// Sends the email.
        /// </summary>
        /// <param name="fromName">From name.</param>
        /// <param name="fromEmail">From email.</param>
        /// <param name="message">The message.</param>
        /// <returns>true if successful; false otherwise</returns>
        public bool SendEmail(string fromName, string fromEmail, string message)
        {
            const string Host = "smtp.gmail.com";
            const int Port = 587;

            bool result = true;
            try
            {
                MailMessage mail = new MailMessage(
                    fromEmail,
                    "krystalkleerice@gmail.com",
                    string.Format("Contact Message from {0} via krystalkleerice.com", fromName),
                    message);

                mail.CC.Add(fromEmail);

                SmtpClient smtp = new SmtpClient
                {
                    Host = Host,
                    Port = Port,
                    EnableSsl = true,
                    DeliveryMethod = SmtpDeliveryMethod.Network,
                    Credentials = new NetworkCredential("krystalkleerice@gmail.com", "k2k1i9s0"),
                    Timeout = 20000
                };

                smtp.Send(mail);
            }
            catch (Exception)
            {
                result = false;
            }

            return result;
        }
    }
}
