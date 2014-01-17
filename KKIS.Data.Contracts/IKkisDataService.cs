// --------------------------------------------------------------------------------------------------------------------
// <copyright file="IKkisDataService.cs" company="Krystal Kleer Ice Sculptures, LLC">
//   Copyright (c) Krystal Kleer Ice Sculptures, LLC. All rights reserved.
// </copyright>
// <summary>
//   
// </summary>
// --------------------------------------------------------------------------------------------------------------------

namespace KKIS.Data.Contracts
{
    using KKIS.Data.Models;

    /// <summary>
    /// KKIS data service interface.
    /// </summary>
    public interface IKkisDataService
    {
        /// <summary>
        /// Gets the album list.
        /// </summary>
        /// <param name="user">The user.</param>
        /// <returns>The photo album collection.</returns>
        PhotoAlbumCollection GetAlbumList(string user);

        /// <summary>
        /// Sends the email.
        /// </summary>
        /// <param name="fromName">From name.</param>
        /// <param name="fromEmail">From email.</param>
        /// <param name="message">The message.</param>
        /// <returns>true if successful; false otherwise</returns>
        bool SendEmail(string fromName, string fromEmail, string message);
    }
}
