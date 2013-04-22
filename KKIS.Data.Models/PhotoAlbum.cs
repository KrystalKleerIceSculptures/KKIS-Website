using System.Collections.Generic;

namespace KKIS.Data.Models
{
    public class PhotoAlbum : List<Photo>
    {
        public string Title { get; set; }

        public override string ToString()
        {
            return this.Title ?? string.Empty;
        }
    }
}
