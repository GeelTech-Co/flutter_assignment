import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:assignment_test/features/auth/presentation/providers/auth_provider.dart';
import 'package:assignment_test/features/bmi/presentation/screens/bmi_screen.dart';

import 'package:assignment_test/features/product/presentation/screens/products_screen.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Potato Tech Flutter Assignment'),
          actions: [
            GestureDetector(
              onTap: () => context.read<AuthProvider>().singOut(),
              child: const Icon(Icons.logout),
            ),
            const SizedBox(width: 10),
          ],
          bottom: const TabBar(
            labelStyle: TextStyle(fontSize: 16),
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(text: 'Products'),
              Tab(text: 'BMI Calculator'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ProductsScreen(),
            // FixIssuesScreen(),
            BmiCalculateScreen(),
          ],
        ),
      ),
    );
  }
}
