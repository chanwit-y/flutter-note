class ATM {
  int _bank1000;
  int _bank500;
  int _bank100;

  ATM({int bank1000 = 0, int bank500 = 0, int bank100 = 0}) : _bank100 = bank100, _bank500 = bank500, _bank1000 = bank1000;

  int get total => _bank1000 * 1000 + _bank500 * 500 + _bank100 * 100;
  int get balanceBank1000 => _bank1000 * 1000;
  int get balanceBank500 => _bank500 * 500;
  int get balanceBank100 => _bank100 * 100;

  get bank1000 => _bank1000;
  get bank500 => _bank500;
  get bank100 => _bank100;

  void deposit(int amount) {
    if (amount < 0) {
      throw Exception('Amount must be positive');
    }
    if (amount % 100 != 0) {
      throw Exception('Amount must be multiple of 100');
    }
    if (amount > 10000) {
      throw Exception('Amount must be less than 10000');
    }
    if (amount > 0) {
      if (amount >= 1000) {
        _bank1000 += amount ~/ 1000;
        amount %= 1000;
      }
      if (amount >= 500) {
        _bank500 += amount ~/ 500;
        amount %= 500;
      }
      if (amount >= 100) {
        _bank100 += amount ~/ 100;
        amount %= 100;
      }
    }
  }

  void withdraw(int amount) {
    if (amount < 0) {
      throw Exception('Amount must be positive');
    }
    if (amount % 100 != 0) {
      throw Exception('Amount must be multiple of 100');
    }
    if (amount > total) {
      throw Exception('Amount must be less than total');
    }
    if (amount > 0) {
      if (amount >= 1000) {
        _bank1000 -= amount ~/ 1000;
        amount %= 1000;
      }
      if (amount >= 500) {
        _bank500 -= amount ~/ 500;
        amount %= 500;
      }
      if (amount >= 100) {
        _bank100 -= amount ~/ 100;
        amount %= 100;
      }
    }
  }
}