using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


/// <summary>
/// Summary description for Booking
/// </summary>
/// 

    public class Booking
    {

        private string _Guest;
        private DateTime? _Arrival;
        private string _Test;


        public Booking()
        {
            _Guest = null;
            _Arrival = null;
            _Test = null;
        }



        public string Guest
        {
            get { return _Guest; }
            set { _Guest = value; }
        }


        public DateTime? Arrival
        {
            get { return _Arrival; }
            set { _Arrival = value; }
        }

        public string Test
        {
            get { return _Test; }
            set { _Test = value; }
        }



    }

