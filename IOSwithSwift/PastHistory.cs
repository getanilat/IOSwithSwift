//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace IOSwithSwift
{
    using System;
    using System.Collections.Generic;
    
    public partial class PastHistory
    {
        public string GameId { get; set; }
        public string UserId { get; set; }
        public Nullable<System.DateTime> Datetime { get; set; }
        public string GameStatus { get; set; }
        public Nullable<int> Score { get; set; }
        public string GameTypeId { get; set; }
        public string ActualString { get; set; }
        public string DisplayString { get; set; }
        public string TempDateTime { get; set; }
    
        public virtual UserRegistration UserRegistration { get; set; }
    }
}
