import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Chapter extends StatelessWidget {
  final int page;
  const Chapter({
    Key? key,
    required this.page,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late String chapter;
    if (page == 0) {
      chapter = 'https://kiryuu.id/black-clover-chapter-1/';
    } else if (page == 1) {
      chapter = 'https://kiryuu.id/black-clover-chapter-2/';
    } else if (page == 2) {
      chapter = 'https://kiryuu.id/black-clover-chapter-3/';
    }

    return SafeArea(
      child: WebView(
        initialUrl: chapter,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
