using System;
using System.Collections.Generic;

namespace WebApplication1.Models
{
    public partial class Stadium
    {
        public Stadium()
        {
            Matches = new HashSet<Matches>();
        }

        public int StadiumId { get; set; }
        public string StadiumName { get; set; }
        public int? StadiumCountry { get; set; }
        public int? MatchesAllowed { get; set; }

        public Country StadiumCountryNavigation { get; set; }
        public ICollection<Matches> Matches { get; set; }
    }
}
