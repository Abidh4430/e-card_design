import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  PaymentScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Payment Details',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'How would you like to pay ?',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 20),
              CreditCard(
                cardNumber: '3546 7532 XXXX 9742',
                cardHolder: 'SELMI HOUSSEM',
                expiry: '08/2025',
              ),
              SizedBox(height: 20),
              CreditCard(
                cardNumber: '5198 5412 XXXX 9874',
                cardHolder: 'SELMI HOUSSEM',
                expiry: '05/2024',
              ),
              Spacer(),
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.grey[800],
                  radius: 25,
                  child: Icon(Icons.add, color: Colors.white),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class CreditCard extends StatelessWidget {
  final String cardNumber;
  final String cardHolder;
  final String expiry;

  const CreditCard({
    required this.cardNumber,
    required this.cardHolder,
    required this.expiry,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          colors: [Colors.blueGrey.shade900, Colors.black],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      height: 180,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              'assets/images/WhatsApp Image 2025-07-09 at 3.41.52 PM.jpeg',
              width: 50,
            ),

          ),

          Spacer(),
          Text(
            cardNumber,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              letterSpacing: 2,
            ),
          ),
          
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('CARDHOLDER', style: TextStyle(color: Colors.grey, fontSize: 12)),
                  Text(cardHolder, style: TextStyle(color: Colors.white)),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('VALID THRU', style: TextStyle(color: Colors.grey, fontSize: 12)),
                  Text(expiry, style: TextStyle(color: Colors.white)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}