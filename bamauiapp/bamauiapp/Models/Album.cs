using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace bamauiapp.Models
{
    class Album
    {
        public int UserId { get; set; }
        public int Id { get; set; }
        public string Title { get; set; }

        public static Album FromJson(string json)
        {
            var jsonObject = JObject.Parse(json);
            return new Album
            {
                UserId = (int)jsonObject["userId"],
                Id = (int)jsonObject["id"],
                Title = (string)jsonObject["title"]
            };
        }
    }
}
