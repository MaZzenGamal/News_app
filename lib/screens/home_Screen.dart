import 'package:flutter/material.dart';
import 'package:news_app/components/category_listView.dart';

import '../components/news_list_view_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('News', style: TextStyle(fontWeight: FontWeight.bold)),
              Text(
                'Cloud',
                style: TextStyle(
                    color: Colors.orange, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(child: CategoryListView()),
              SliverToBoxAdapter(
                  child: SizedBox(
                height: 30,
              )),
              NewsListViewBuilder(category: 'general',)
              //Expanded(child: NewsListView())
            ],
          ),
        ));
  }
}
