using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace KKIS.Models
{
    public class ContactModel
    {
        [Required]
        public string Name { get; set; }

        [Required, EmailAddressAttribute]
        public string Email { get; set; }

        [Required, DataType(DataType.MultilineText)]
        public string Message { get; set; }
    }
}