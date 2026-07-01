import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isSelected;

  const CategoryCard({
    super.key,
    required this.icon,
    required this.title,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85,
      margin: const EdgeInsets.only(right: 15),
      child: Column(
        children: [

          Container(
            height: 65,
            width: 65,
            decoration: BoxDecoration(
              color: isSelected
                  ? const Color(0xffFF9955)
                  : Colors.white,
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(.15),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),

            child: Icon(
              icon,
              color: isSelected
                  ? Colors.white
                  : const Color(0xffFF9955),
              size: 32,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: isSelected
                  ? Colors.black
                  : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}