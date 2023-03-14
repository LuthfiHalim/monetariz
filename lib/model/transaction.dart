class Transaction {
  final int? id;
  final double? amount;
  final DateTime? date;
  final Account? account;
  final String? note;
  final Category? category;
  final TransactionType? transactionType;

  Transaction({
    this.id,
    this.amount,
    this.date,
    this.account,
    this.note,
    this.category,
    this.transactionType,
  });
}

class Currency {
  final String? title;
  final String? code;
  final String? symbol;
  final int decimalPoint;
  final bool symbolIsFront;

  Currency({
    required this.title,
    required this.code,
    required this.symbol,
    this.decimalPoint = 0,
    this.symbolIsFront = true,
  });
}

class Account {
  final Currency? currency;
  final GroupAccount groupAccount;
  final double? amount;
  final String? description;
  final bool isShow;

  Account({
    this.currency,
    this.groupAccount = GroupAccount.cash,
    this.amount,
    this.description,
    this.isShow = true,
  });
}

enum GroupAccount { cash, account, banks, savings, investments, loan, other }

enum TransactionType { income, expense, transfer, repeat, loan, repayment }

class Category {
  final String title;
  final String? subCategory;

  Category({this.title = '', this.subCategory});
}

class Budget {
  final int? id;
  final double? amount;
  final BudgetType budgetType;

  Budget({this.id, this.amount, this.budgetType = BudgetType.category});
}

enum BudgetType { account, category }
