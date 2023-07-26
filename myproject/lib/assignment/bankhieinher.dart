//1.  Create Heirarchial inheritance about Bank
class Bank{
  int minblnc = 1000;
  void interest(int roi,String acctype){
    print('the rate of interest of $acctype is $roi');
  }
  void details(String place,int pincode){
    print('the bank branch is located at $place with pincode $pincode');
  }
}
class SBI extends Bank{
  int blnc = 0;
  int nblnc =0;
  void deposit(int amount){
    blnc = minblnc;
    blnc = blnc + amount;
    print('now balance is $blnc');
  }
  void withdrawal(int amount){
    nblnc = minblnc;
    nblnc = nblnc - amount;
    print('balance after withdrawal is $nblnc');
    if(nblnc < minblnc){
      print('insufficcent balance , please make it grater than or equal to $minblnc');
      
    }else
      print('balance is correct and is $nblnc');
  }
  }
class ICIC extends Bank{
  int new_balance = 0;
  void bankdetails(String bankname,String branch,int ifsc){
    print('bank name    :$bankname');
    print('branch name  :$branch');
    print('ifsc code    :$ifsc');
  }
  void addmoney(int amount){
    new_balance = new_balance + amount;
    print('balance is $new_balance');
  }
  void takemoney(int amount){
    new_balance = new_balance - amount;
    print('balance is $new_balance');
  }
  void display(){
    print('new balance in bank is $new_balance');
  }
}
void main(){
  var sbi = SBI();
  sbi.deposit(2000);
  sbi.withdrawal(500);
  sbi.interest(7,'savings');
  sbi.details('PUNNAD',670703);
  print("*************************");
  print("*************************");
  var icic =ICIC();
  icic.bankdetails('ICIC','KAKKANAD',76458934267892);
  icic.addmoney(2500);
  icic.takemoney(750);
  icic.display();
  icic.interest(12,'savings');
  icic.details('kakkanad',679897);
}