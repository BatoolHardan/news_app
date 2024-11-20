import 'package:flutter/material.dart';
import 'package:news_app_batool/models/cateroge_model.dart';
import 'package:news_app_batool/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });
  final List<CategoryModel> categories = const [
    CategoryModel(image: 'assets/business.png', categoryName: 'Business'),
    CategoryModel(
        image: 'assets/entertaiment.png', categoryName: 'Entertainment'),
    CategoryModel(image: 'assets/health.png', categoryName: 'Health'),
    CategoryModel(image: 'assets/technology.png', categoryName: 'Technology'),
    CategoryModel(image: 'assets/general.png', categoryName: 'General'),
    CategoryModel(image: 'assets/science.png', categoryName: 'Science'),
    CategoryModel(image: 'assets/sports.png', categoryName: 'Sports')
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
