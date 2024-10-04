// lib/components/feature_tile.dart
import 'package:flutter/material.dart';

class FeatureTile extends StatelessWidget {
  final String title;

  const FeatureTile({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 154, // Width 154px
      height: 209, // Height 209px
      decoration: BoxDecoration(
        color: Color(0xFF393939), // Color set to #393939
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ), // Only bottom corners are rounded
        border: Border(
          bottom: BorderSide(color: Colors.red, width: 2), // Red border at the bottom only
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end, // Align label at the bottom
        children: [
          Container(
            color: Colors.red,
            padding: EdgeInsets.symmetric(vertical: 10),
            width: double.infinity,
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
