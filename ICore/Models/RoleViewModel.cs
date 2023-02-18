using System.ComponentModel.DataAnnotations;

namespace A_ICore.Models
{
    public class RoleViewModel
    {
        [Required(ErrorMessage = "Lütfen rol adı giriniz...")]
        public string name { get; set; }
    }
}
