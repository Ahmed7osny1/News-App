import 'package:flutter/material.dart';
import '../models/category_model.dart';


class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key,
    required this.categorymodel});

  final CategoryModel categorymodel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          right: 8.0,
      ),
      child: Container(
        height: 85,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: AssetImage(categorymodel.image),
            fit: BoxFit.fill,
          )
        ),
        child: Center(
          child: Text(
            categorymodel.categoryName,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}