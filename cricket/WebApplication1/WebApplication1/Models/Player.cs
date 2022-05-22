using System;
using System.Collections.Generic;

namespace WebApplication1.Models
{
    public partial class Player
    {
        public int Id { get; set; }
        public string PlayerName { get; set; }
        public int? PlayerAge { get; set; }
        public int? PlayerId { get; set; }

        public Country PlayerNavigation { get; set; }
    }
}
