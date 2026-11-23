
class Holiday{
  String name = '';
  int day = 0 ;
  String month = '';

  Holiday(this.name,this.day,this.month);

 static bool inSameMonth(Holiday holiday1 ,Holiday holiday2){
   return holiday1 == holiday2 ;
 }

 static double avgDate(List<Holiday>holidays){
   int sum = 0;
       for (int i = 0 ; i < holidays.length ; i++){
         sum += holidays[i].day;
       }
       return sum / holidays.length;
 }

}

void main(){
  Holiday holiday1 = Holiday("October Victory Day", 6 , "October");
  Holiday holiday2 = Holiday("Sinai Liberation Day", 25, "April");
  Holiday holiday3 = Holiday("Christmas", 7, "January");
  Holiday holiday4 = Holiday("Independence Day", 4, "July");

  List<Holiday>holidays = [holiday1,holiday2,holiday3,holiday4];

  print(Holiday.inSameMonth(holiday1, holiday2));
  print(Holiday.inSameMonth(holiday3, holiday4));

  print(Holiday.avgDate(holidays));
}