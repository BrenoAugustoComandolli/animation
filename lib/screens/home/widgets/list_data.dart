import 'package:flutter/material.dart';

class ListData extends StatelessWidget {
  const ListData({this.title, this.subtitle, this.image, this.margin, Key? key})
      : super(key: key);

  final String? title;
  final String? subtitle;
  final ImageProvider? image;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(
            color: Colors.grey[100]!,
            width: 1.0,
          ),
          bottom: BorderSide(
            color: Colors.grey[100]!,
            width: 1.0,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: image != null
                  ? DecorationImage(
                      image: image!,
                    )
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              title != null
                  ? Text(
                      title!,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  : Container(),
              const SizedBox(
                height: 5,
              ),
              subtitle != null
                  ? Text(
                      subtitle!,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.w300,
                      ),
                    )
                  : Container(),
            ],
          )
        ],
      ),
    );
  }
}
