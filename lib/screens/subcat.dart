import 'package:cached_network_image/cached_network_image.dart';
import 'package:farm_app/data/scheme.dart';
import 'package:farm_app/screens/scheme_page.dart';
import 'package:flutter/material.dart';

class SubCategory extends StatelessWidget {
  final String title;
  SubCategory(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: <Widget>[
          ...(schemeList.map((ele) {
            return ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => SchemePage(ele),
                  ),
                );
              },
              leading: CircleAvatar(
                child: CachedNetworkImage(imageUrl: ele.imgUrl),
              ),
              title: Text(ele.name),
            );
          }).toList()),
        ],
      ),
    );
  }
}
