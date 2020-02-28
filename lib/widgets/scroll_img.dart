import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ScrollImg extends StatelessWidget {
  final String imgUrl;
  ScrollImg(this.imgUrl);

  @override
  Widget build(BuildContext context) {
    const bool kIsWeb = identical(0, 0.0);
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            color: Colors.grey,
            offset: Offset(4, 4),
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      width: MediaQuery.of(context).size.width * .8, 
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: kIsWeb
            ? Image.network(
                imgUrl,
                fit: BoxFit.fill,
              )
            : CachedNetworkImage(
                fit: BoxFit.fill,
                imageUrl: imgUrl,
                placeholder: (ctx,stri)=>Center(child: Text("Loading")),
              ),
      ),
    );
  }
}
