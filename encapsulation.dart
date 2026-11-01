class BankAccount {
  BankAccount(this.owner, {double startingBalance = 0})
      : _balance = startingBalance;

  final String owner;
  double _balance;

  double get balance => _balance;

  set balance(double value) {
    if (value < 0) {
      throw ArgumentError('Balance cannot be negative');
    }
    _balance = value;
  }

  void deposit(double amount) {
    if (amount <= 0) {
      throw ArgumentError('Deposit must be positive');
    }
    _balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      throw ArgumentError('Withdrawal must be positive');
    }
    if (amount > _balance) {
      throw StateError('Insufficient funds');
    }
    _balance -= amount;
  }
}

void main() {
  final account = BankAccount('Mona', startingBalance: 100);
  account.deposit(50);
  print(account.balance); // 150
}