using System.Collections.Generic;
using System.Linq;

namespace KKIS.Data.Models
{
    public class PhotoAlbumCollection : List<PhotoAlbum>
    {
        public override string ToString()
        {
            return string.Join(", ", this.Select(x => x.Title));
        }
    }
}
