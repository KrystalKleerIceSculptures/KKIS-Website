// --------------------------------------------------------------------------------------------------------------------
// <copyright file="PhotoAlbumCollection.cs" company="Krystal Kleer Ice Sculptures, LLC">
//   Copyright (c) Krystal Kleer Ice Sculptures, LLC. All rights reserved.
// </copyright>
// <summary>
//   
// </summary>
// --------------------------------------------------------------------------------------------------------------------

namespace KKIS.Data.Models
{
    using System.Collections.Generic;
    using System.Linq;

    /// <summary>
    /// Photo album collection
    /// </summary>
    public class PhotoAlbumCollection : List<PhotoAlbum>
    {
        /// <summary>
        /// Returns a <see cref="System.String" /> that represents this instance.
        /// </summary>
        /// <returns>
        /// A <see cref="System.String" /> that represents this instance.
        /// </returns>
        public override string ToString()
        {
            return string.Join(", ", this.Select(x => x.Title));
        }
    }
}
