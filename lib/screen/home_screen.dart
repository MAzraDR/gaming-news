import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:gamingnews/screen/article_screen.dart';
import 'package:gamingnews/services/firestore_service.dart';
import 'package:gamingnews/widgets/bottom_navbar.dart';
import 'package:gamingnews/widgets/custom_Tag.dart';

import '../widgets/image_container.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  static const routeName = '/home';

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      bottomNavigationBar: const BottomNavbar(index: 0),
      extendBodyBehindAppBar: true,
      body: StreamBuilder<QuerySnapshot>(
        stream: FirestoreService().getNews(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            } else {
              List articlesList = snapshot.data!.docs;

              DocumentSnapshot firstDocument = articlesList[0];
              Map<String, dynamic> firstData =
                  firstDocument.data() as Map<String, dynamic>;

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ImageContainer(
                    height: MediaQuery.of(context).size.height * 0.45,
                    width: double.infinity,
                    padding: const EdgeInsets.all(20.0),
                    imageUrl: firstData['image'],
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomTag(
                            backgroundColor: Colors.grey.withAlpha(150),
                            children: [
                              Text(
                                "News of the Day",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: Colors.white),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            firstData['title'],
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  height: 1.25,
                                ),
                          ),
                          TextButton(
                            onPressed: () {},
                            style:
                                TextButton.styleFrom(padding: EdgeInsets.zero),
                            child: Row(
                              children: [
                                Text(
                                  'Learn More',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(color: Colors.white),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Icon(
                                  Icons.arrow_right_alt,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "Hot News",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 15),
                      itemCount: articlesList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        DocumentSnapshot documentSnapshot = articlesList[index];
                        Map<String, dynamic> data =
                            documentSnapshot.data() as Map<String, dynamic>;
                        return InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              Article_Screen.routeName,
                              arguments: data['id'],
                            );
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            margin: const EdgeInsets.only(right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ImageContainer(
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  imageUrl: data['image'],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  data['title'],
                                  maxLines: 2,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                          fontWeight: FontWeight.bold,
                                          height: 1.5),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.timer_sharp,
                                      size: 12,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      data['uploadat'],
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            }
          }
        },
      ),
    );
  }
}
