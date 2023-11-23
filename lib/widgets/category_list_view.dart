import 'package:flutter/material.dart';

import '../models/category_model.dart';
import 'category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel(image: 'assets/business.avif',
        categoryName: 'Business'),
    CategoryModel(image: 'assets/entertaiment.avif',
        categoryName: 'Entertaiment'),
    CategoryModel(image: 'assets/general.avif',
        categoryName: 'General'),
    CategoryModel(image: 'assets/health.avif',
        categoryName: 'Health'),
    CategoryModel(image: 'assets/science.avif',
        categoryName: 'Science'),
    CategoryModel(image: 'assets/sports.avif',
        categoryName: 'Sport'),
    CategoryModel(image: 'assets/technology.jpeg',
        categoryName: 'Technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index){
            return CategoryCard(
              categorymodel: categories[index]
            );
          }
      ),
    );
  }
}
