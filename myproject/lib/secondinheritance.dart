class SBI{
  int minblnc = 2000;
  void interest(int roi,String acc_type){
    print('the rate of interest of $acc_type is $roi');
  }
}
class SBI_User extends SBI{
  int blnc = 0;
  void addmoney(int amount){
    blnc = minblnc;
    blnc = minblnc + amount;
    print('balance after deposit is $blnc');
  }
  void withdrawal(int amount){
    blnc = minblnc;
    blnc = blnc - amount;
    print('balance now is $blnc');
    if(blnc < 2000){
      blnc = blnc + 2000;
      print('new balance is $blnc');
    }
  }
}
void main(){
  var sbi = SBI_User();
  sbi.addmoney(2000);
  sbi.withdrawal(2500);
  sbi.interest(5, 'fd');
}