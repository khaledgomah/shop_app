import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.onTap, required this.text,
  });
  final VoidCallback onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: double.infinity,
        child: Text(
          text,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
