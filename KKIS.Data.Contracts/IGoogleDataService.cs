// --------------------------------------------------------------------------------------------------------------------
// <copyright file="IGoogleDataService.cs" company="Krystal Kleer Ice Sculptures, LLC">
//   Copyright (c) Krystal Kleer Ice Sculptures, LLC. All rights reserved.
// </copyright>
// <summary>
//   
// </summary>
// --------------------------------------------------------------------------------------------------------------------

namespace KKIS.Data.Contracts
{
    using System;
    using System.Collections.Generic;

    /// <summary>
    /// Google data service interface
    /// </summary>
    public interface IGoogleDataService
    {
        /// <summary>
        /// Gets the album list.
        /// </summary>
        /// <param name="user">The user.</param>
        /// <returns>The dictionary of albums.</returns>
        Dictionary<string, string> GetAlbumList(string user);

        /// <summary>
        /// Gets the photo list.
        /// </summary>
        /// <param name="feedUri">The feed URI.</param>
        /// <returns>The dictionary of photos.</returns>
        Dictionary<string, Tuple<string, string>> GetPhotoList(string feedUri);
    }
}
