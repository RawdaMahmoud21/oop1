
class BankAccount {
  String accountId = '';
  double balance = 0;

  BankAccount(this.balance);
  BankAccount.empty(){
    balance = 0 ;

  }
  void withdraw (double numWith){
    if(numWith <= balance){
      balance = balance - numWith;
      print('Your balance is $balance');
    }else{
      print('Your balance is insufficient');
    }
  }

  void deposit(double numDep){
    balance = balance + numDep;
    print('Your balance is $balance');

  }
}

void main() {
BankAccount account1 = BankAccount(5000);
BankAccount account2 = BankAccount(1000);
account1.withdraw(20);
account2.deposit(2000);
}
