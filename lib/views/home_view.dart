import 'package:flutter/material.dart';
import 'package:newsapp/widgets/category_list_view.dart';
import '../widgets/news_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 16,
        ),
        child: Column(
          children: [
            CategoryListView(),
            SizedBox(
              height: 32,
            ),
            Expanded(
                child: NewsListView()
            ),
          ],
        ),
      ),
      //body: const CategoryListView(),
    );
  }
}