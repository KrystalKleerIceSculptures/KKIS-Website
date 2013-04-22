namespace KKIS.Data.Models
{
    public class Photo
    {
        public string Title { get; set; }
        public string Description { get; set; }
        public string Url { get; set; }

        public override string ToString()
        {
            return this.Title ?? string.Empty;
        }
    }
}
