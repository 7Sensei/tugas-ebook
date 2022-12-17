import 'package:flutter/material.dart';
import 'package:division/division.dart';
import 'package:tugas_appbook/page/chapter.dart';
import 'package:tugas_appbook/style/style.dart';

class MangaBox extends StatelessWidget {
  final String url;
  final double scale;
  final int index;
  const MangaBox({
    Key? key,
    required this.url,
    required this.index,
    this.scale = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Chapter(
                page: index,
              ))),
      child: Parent(
          style: parentStyle
            ..background.image(path: url, fit: BoxFit.cover)
            ..width(200 * scale)
            ..height(300 * scale)),
    );
  }
}
