using A_ICore.Models;
using Microsoft.AspNetCore.Mvc;
namespace A_ICore.ViewComponents
{
    public class CommentList : ViewComponent
    {
        public IViewComponentResult Invoke()
        {
            var commentvalues = new List<UserComment>
            {
                new UserComment
                {
                    ID=1,
                    Username="Hatice"
                },
                new UserComment
                {
                    ID=2,
                    Username="Murat"
                }, new UserComment
                {
                    ID=3,
                    Username="Mesut"
                }

            };
            return View(commentvalues);
        }
    }
}
