class SBI{
  int min_balance = 1000;
  void interest(double roi,String acc_type){
    print('rate of interest for $acc_type is $roi');
  }

}

class SBI_branch1 extends SBI{
  int new_balance = 0;
  void deposit(int amount){
    new_balance = min_balance;
    new_balance = new_balance + amount;
    print('balance after deposit is $new_balance');
  }
  void withdrawal(int amount){
   new_balance = min_balance;
   new_balance = new_balance - amount;
   print('balance after withdrawal is $new_balance');
 }
 void balance(){
  print('current balance is $new_balance');
 }
}
void main(){
  var sbi =SBI_branch1();
  sbi.deposit(1500);
  sbi.withdrawal(300);
  sbi.balance();
  sbi.interest(7,"savings");
}

