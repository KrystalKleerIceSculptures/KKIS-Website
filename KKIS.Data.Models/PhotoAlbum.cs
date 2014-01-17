// --------------------------------------------------------------------------------------------------------------------
// <copyright file="PhotoAlbum.cs" company="Krystal Kleer Ice Sculptures, LLC">
//   Copyright (c) Krystal Kleer Ice Sculptures, LLC. All rights reserved.
// </copyright>
// <summary>
//   
// </summary>
// --------------------------------------------------------------------------------------------------------------------

namespace KKIS.Data.Models
{
    using System.Collections.Generic;

    /// <summary>
    /// Photo album.
    /// </summary>
    public class PhotoAlbum
    {
        /// <summary>
        /// Gets or sets the unique identifier.
        /// </summary>
        public string Id { get; set; }

        /// <summary>
        /// Gets or sets the title.
        /// </summary>
        public string Title { get; set; }

        /// <summary>
        /// Gets or sets the photos.
        /// </summary>
        public List<Photo> Photos { get; set; }

        /// <summary>
        /// Returns a <see cref="System.String" /> that represents this instance.
        /// </summary>
        /// <returns>
        /// A <see cref="System.String" /> that represents this instance.
        /// </returns>
        public override string ToString()
        {
            return this.Title ?? string.Empty;
        }
    }
}
