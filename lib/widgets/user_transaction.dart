import 'package:expensaa/models/transaction.dart';
import 'package:expensaa/widgets/new_transaction.dart';
import 'package:expensaa/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

class UserTransactions extends StatefulWidget {
  UserTransactions({Key? key}) : super(key: key);

  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransaction = [
    Transaction(
      amount: 69.99,
      date: DateTime.now(),
      id: 't1',
      title: 'New Shoes',
    ),
    Transaction(
      amount: 16.53,
      date: DateTime.now(),
      id: 't2',
      title: 'Weekly Groceries',
    ),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
      title: txTitle,
    );

    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransaction),
      ],
    );
  }
}
