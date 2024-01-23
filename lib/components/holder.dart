// /*
// import 'package:flutter/material.dart';
// import 'package:news_app/services/news-service.dart';
//
// import '../models/article_model.dart';
// import 'news_tile.dart';
//
// class NewsListView extends StatefulWidget {
//   const NewsListView({super.key});
//
//   @override
//   State<NewsListView> createState() => _NewsListViewState();
// }
//
// class _NewsListViewState extends State<NewsListView> {
//   List<ArticleModel> articles = [];
//   bool isLoading = true;
//
//   @override
//   void initState() {
//     super.initState();
//     getGeneralNews();
//   }
//
//   Future<void> getGeneralNews() async {
//     articles = await NewsServices().getNews();
//     isLoading = false;
//     setState(() {});
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return isLoading
//         ? const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
//         : SliverList.separated(
//       separatorBuilder: (context, index) {
//         return const SizedBox(
//           height: 20,
//         );
//       },
//       itemBuilder: (context, index) {
//         return NewsTile(
//           articleModel: articles[index],
//         );
//       },
//       itemCount: articles.length,
//     );
//   }
// }
// */
