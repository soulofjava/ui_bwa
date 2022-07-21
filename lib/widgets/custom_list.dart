// @dart=2.9
import 'package:flutter/material.dart';
import 'package:ui_bwa/pages/detail_pages.dart';
import 'package:ui_bwa/theme.dart';

class CustomList extends StatelessWidget {
  final String jobTitle, companyName, imageUrl;

  const CustomList({Key key, this.jobTitle, this.companyName, this.imageUrl})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailPage()),
        );
      },
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            height: 45,
            width: 45,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  jobTitle,
                  style: jobTextStyle,
                ),
                Text(
                  companyName,
                  style: companyTextStyle,
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Color.fromARGB(255, 182, 181, 181),
                  thickness: 1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
