﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EntityLayer.Concrete
{
    public class Blog
    {
        [Key]
        public int BlogID { get; set; }       
        public string BlogTitle { get; set; }
        public string BlogContent { get; set; }
        public string BlogThumbnailImage { get; set; }
        public string BlogImage { get; set; }
        public DateTime BlogCreateDate { get; set; }
        public bool BlogStatus { get; set; }
        //Category Blog arası ilişki
        public int CategoryID { get; set; }
        public Category Category { get; set; }

		public int WriterID { get; set; }
		public Writer Writer { get; set; }
		//Blog ile Comment arası ilişki
		public List<Comment> Comments { get; set; }

    }
}
