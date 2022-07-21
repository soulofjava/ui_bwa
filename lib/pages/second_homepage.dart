import 'package:flutter/material.dart';
import 'package:ui_bwa/theme.dart';
import 'package:ui_bwa/widgets/custom_list.dart';

class SecondHomePage extends StatelessWidget {
  final String jobTitleHome, imageUrl;

  const SecondHomePage(
      {super.key, required this.jobTitleHome, required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 270,
                        child: Image.asset(
                          imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 200,
                          left: 24,
                        ),
                        child: Text(
                          jobTitleHome,
                          style: jobTtileTextStyle,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 230,
                          left: 24,
                        ),
                        child: Text(
                          '12,309 Available',
                          style: availableJobTextStyle,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 30,
                    left: 24,
                    right: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'New Startups',
                        style: titleList,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Column(
                        children: [
                          CustomList(
                            companyName: 'Google',
                            jobTitle: 'Front-End Developer',
                            imageUrl: 'assets/google-icon.png',
                          )
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Column(
                        children: [
                          CustomList(
                            imageUrl: 'assets/instagram-icon.png',
                            jobTitle: 'UI Designer',
                            companyName: 'Instagram',
                          )
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Column(
                        children: [
                          CustomList(
                            imageUrl: 'assets/facebook-icon.png',
                            jobTitle: 'Data Scientist',
                            companyName: 'Facebook',
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 30,
                    left: 24,
                    right: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Big Companies',
                        style: titleList,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Column(
                        children: [
                          CustomList(
                            companyName: 'Google',
                            jobTitle: 'Front-End Developer',
                            imageUrl: 'assets/google-icon.png',
                          )
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Column(
                        children: [
                          CustomList(
                            imageUrl: 'assets/instagram-icon.png',
                            jobTitle: 'UI Designer',
                            companyName: 'Instagram',
                          )
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Column(
                        children: [
                          CustomList(
                            imageUrl: 'assets/facebook-icon.png',
                            jobTitle: 'Data Scientist',
                            companyName: 'Facebook',
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
