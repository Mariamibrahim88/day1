class HandlException implements Exception {
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

void main() {
  BankAccount account = BankAccount(10000);
  try {
    account.withdraw(2000);
  } on HandlException catch (e) {
    print((e.errorMessage()));
  }
  print("Remaining balance: ${account.balance}");
}
