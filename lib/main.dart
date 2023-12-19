//http://dribbble.com/shots/19858341-Finnancial-Mobile-IOS-App

import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currency_card.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: const Color(0xFF171717),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 60,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Hey, Selena',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 60,),
                Text('Total Balance',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 22,
                  ),
                ),
                const SizedBox(height: 5,),
                Text('\$5 194 482',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 45,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 40,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(text: 'Transfer', bgColor: Color(0xFFF1B33B), textColor: Colors.black,),
                    Button(text: 'Request', bgColor: Color(0xFF1F2123), textColor: Colors.white,),
                  ],
                ),
                const SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text("Wallets",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text('View All',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                const CurrencyCard(name: 'Euro', code: 'EUR', amount: '6 428', icon: Icons.euro_rounded,isInverted: false,order: 1,),
                Transform.translate(
                    offset: const Offset(0, -20),
                    child: const CurrencyCard(name: 'Dollar', code: 'USD', amount: '55 622', icon: Icons.attach_money_outlined,isInverted: true,order: 2,)),
                Transform.translate(
                    offset: const Offset(0, -40),
                    child: const CurrencyCard(name: 'Bitcoin', code: 'BIT', amount: '9 785', icon: Icons.currency_bitcoin,isInverted: false,order: 3,)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
