import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  static const String routeName = '\Ordercreen';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.all(10),
        child: const Text(
          'Orders',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 36,
          ),
        ),
      ),
    );
  }
}
