import 'dart:math';
import 'package:flutter/material.dart';
import 'package:tugas_appbook/page/manga_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double currentPageValue = 0;
  PageController controller =
      PageController(initialPage: 0, viewportFraction: 0.55);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(() {
      setState(() {
        currentPageValue = controller.page!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> urls = [
      "assets/chapter1.png",
      "assets/chapter2.png",
      "assets/chapter3.png",
    ];
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Text('Black Clover From MangaPlus'),
      ),
      body: PageView.builder(
          controller: controller,
          itemCount: urls.length,
          itemBuilder: (context, index) {
            double difference = index - currentPageValue;
            if (difference < 0) {
              difference *= -1;
            }
            difference = min(1, difference);
            return Center(
                child: MangaBox(
              url: urls[index],
              scale: 1 - (difference * 0.3),
              index: index,
            ));
          }),
    );
  }
}
