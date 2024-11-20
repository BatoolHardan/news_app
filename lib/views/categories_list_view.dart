import 'package:flutter/material.dart';
import 'package:news_app_batool/models/cateroge_model.dart';
import 'package:news_app_batool/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });
  final List<CategoryModel> categories = const [
    CategoryModel(image: 'assets/business.png', categoryName: 'business'),
    CategoryModel(
        image: 'assets/entertaiment.png', categoryName: 'entertainment'),
    CategoryModel(image: 'assets/health.png', categoryName: 'health'),
    CategoryModel(image: 'assets/technology.png', categoryName: 'technology'),
    CategoryModel(image: 'assets/general.png', categoryName: 'general'),
    CategoryModel(image: 'assets/science.png', categoryName: 'science'),
    CategoryModel(image: 'assets/sports.png', categoryName: 'sports')
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
