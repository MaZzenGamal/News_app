import 'package:flutter/material.dart';
import 'package:news_app/components/news_list_view.dart';
import 'package:news_app/components/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});

  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
           NewsListViewBuilder(category: category,)
          ],
        ),
      )
    );
  }
}