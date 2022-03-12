import 'package:flutter/material.dart';

class ErrorTile extends StatelessWidget {
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.redAccent,
      child: InkWell(
        onTap: () {},
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(errorMessage),
          ),
        ),
      ),
    );
  }

  ErrorTile(this.errorMessage);
}
