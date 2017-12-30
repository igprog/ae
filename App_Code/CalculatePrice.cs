using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CalculatePrice
/// </summary>
/// 
namespace IGPROG
{
    public class CalculatePrice
    {
        Double? _TotalPrice;
        Double? _PricePerDay;

        public CalculatePrice()
        {
            //
            // TODO: Add constructor logic here
            //
            _TotalPrice = null;
            _PricePerDay = null;

        }



        public void Calculate(DateTime arrival, DateTime departure, Int32 persons, bool airconditioning)
        {
           
            Int32 price = 80;
            Int32 totalPrice = 0;
            TimeSpan daysSpan = departure.Date - arrival.Date;
            int days = Convert.ToInt32(daysSpan.TotalDays);
            DateTime currentDay = arrival;
          
            Int32 personsPrice = 0;
            //if (persons == 3)
            //{
            //    personsPrice = -5;
            //}
            //if (persons == 4)
            //{
            //    personsPrice = 0;
            //}
            if (persons == 5)
            {
                personsPrice = 10;
            }


            Int32 priceForAirconditioning =
                  airconditioning == true ? 10 : 0;


            for (int i = 0; i < days; i++)
            {
                currentDay = arrival.AddDays(i);


                if (Convert.ToInt32(currentDay.Date.Month) == 7 || Convert.ToInt32(currentDay.Date.Month) == 8)
                {
                    price = 80 + personsPrice + priceForAirconditioning;
                }
                else
                {
                    price = 50 + personsPrice + priceForAirconditioning;
                }


                if (persons > 5 && persons < 9)
                {
                    price = price * 2 + priceForAirconditioning;
                }
                if (persons >= 9 && persons < 12)
                {
                    price = price * 3 + priceForAirconditioning;
                }


                totalPrice = totalPrice + price;
            }

            _TotalPrice = totalPrice;
            _PricePerDay = price;
        //    litCalculationResult.Text = AppendResult(totalPrice);


        }

        public Double? TotalPrice
        {
            get { return _TotalPrice; }
        }

        public Double? PricePerDay
        {
            get { return _PricePerDay; }
        }


    }

}