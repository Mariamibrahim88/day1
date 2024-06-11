class HandlException extends Exception {
  String errorMessage() {
    return "not enough balance to withdraw";
  }
}

class BankAccount {
  double balance;

  BankAccount(this.balance);

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    if (balance < amount) {
      throw HandlException();
    }
    balance -= amount;
  }
}
