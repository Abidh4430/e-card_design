import 'package:flutter/material.dart';
import 'package:flutter_projects/e-card.dart';

void main() => runApp(PaymentApp());

class PaymentApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Payment UI',
      debugShowCheckedModeBanner: false,
      home: PaymentScreen(),
    );
  }
}
