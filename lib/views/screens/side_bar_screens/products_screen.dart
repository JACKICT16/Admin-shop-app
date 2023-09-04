import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  static const String routeName = '\ProductScreen';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.all(10),
        child: const Text(
          'Products',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 36,
          ),
        ),
      ),
    );
  }
}
