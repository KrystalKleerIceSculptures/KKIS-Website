using System.Linq;
using System.Collections.Generic;

namespace KKIS.Models
{
    public class PhotoAlbumCollection : List<PhotoAlbum>
    {
        public override string ToString()
        {
            return string.Join(", ", this.Select(x => x.Title));
        }
    }

    public class PhotoAlbum
    {
        public string Title { get; set; }

        public override string ToString()
        {
            return Title ?? string.Empty;
        }
    }
}
