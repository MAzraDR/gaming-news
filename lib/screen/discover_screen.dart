import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:gamingnews/services/firestore_service.dart';
import 'package:gamingnews/widgets/bottom_navbar.dart';
import 'package:gamingnews/widgets/image_container.dart';
import 'package:gamingnews/screen/screen.dart';

class Discover_Screen extends StatelessWidget {
  const Discover_Screen({Key? key}) : super(key: key);

  static const routeName = '/discover';
  @override
  Widget build(BuildContext context) {
    List<String> tabs = ['PC', 'Console', 'Mobile'];
    // TODO: implement build
    return DefaultTabController(
      initialIndex: 0,
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        bottomNavigationBar: const BottomNavbar(index: 1),
        body: ListView(
          padding: const EdgeInsets.all(20.0),
          children: [const _DiscoverNews(), _CategoryNews(tabs: tabs)],
        ),
      ),
    );
  }
}

class _CategoryNews extends StatelessWidget {
  const _CategoryNews({
    Key? key,
    required this.tabs,
  }) : super(key: key);

  final List<String> tabs;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirestoreService().getNews(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else {
          List<QueryDocumentSnapshot> dataList = snapshot.data!.docs;
          return Column(
            children: [
              SizedBox(
                height: 40,
              ),
              TabBar(
                isScrollable: true,
                indicatorColor: Colors.black,
                tabs: tabs
                    .map(
                      (tab) => Tab(
                        icon: Text(
                          tab,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                    .toList(),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: TabBarView(
                  children: tabs
                      .map(
                        (tab) => ListView.builder(
                          itemCount: dataList.length,
                          itemBuilder: (context, index) {
                            DocumentSnapshot documentSnapshot = dataList[index];
                            Map<String, dynamic> data =
                                documentSnapshot.data() as Map<String, dynamic>;

                            if (data['category'] == tab) {
                              return InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                    context,
                                    Article_Screen.routeName,
                                    arguments: data['id'],
                                  );
                                },
                                child: Row(
                                  children: [
                                    ImageContainer(
                                      width: 80,
                                      height: 80,
                                      margin: const EdgeInsets.all(10.0),
                                      borderRadius: 5,
                                      imageUrl: data['image'],
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            data['title'],
                                            maxLines: 2,
                                            overflow: TextOverflow.clip,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge!
                                                .copyWith(
                                                    fontWeight:
                                                        FontWeight.bold),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'by ${data['author']}',
                                            maxLines: 2,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall!,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            } else {
                              // Return an empty container if the category doesn't match
                              return Container();
                            }
                          },
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          );
        }
      },
    );
  }
}

class _DiscoverNews extends StatefulWidget {
  const _DiscoverNews({
    Key? key,
  }) : super(key: key);

  @override
  State<_DiscoverNews> createState() => _DiscoverNewsState();
}

class _DiscoverNewsState extends State<_DiscoverNews> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Discover',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: Colors.black, fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 5,
        ),
        Text(
          'All News About Gaming',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(
          height: 20,
        ),
        TextFormField(
          controller: _searchController,
          onChanged: (value) {
            setState(() {});
          },
          decoration: InputDecoration(
              hintText: 'Search',
              fillColor: Colors.grey.shade200,
              filled: true,
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
              suffixIcon: const RotatedBox(
                quarterTurns: 1,
                child: Icon(
                  Icons.tune,
                  color: Colors.grey,
                ),
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide.none)),
        ),
        const SizedBox(height: 20),
        _searchController.text.isNotEmpty
            ? StreamBuilder<QuerySnapshot>(
                stream: FirestoreService()
                    .getNewsNew(searchQuery: _searchController.text),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else {
                    List<QueryDocumentSnapshot> dataList = snapshot.data!.docs;
                    return Column(
                      children: dataList
                          .where((data) => data['title']
                              .toLowerCase()
                              .contains(_searchController.text.toLowerCase()))
                          .map(
                            (data) => InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  Article_Screen.routeName,
                                  arguments: data['id'],
                                );
                              },
                              child: Row(
                                children: [
                                  ImageContainer(
                                    width: 80,
                                    height: 80,
                                    margin: const EdgeInsets.all(10.0),
                                    borderRadius: 5,
                                    imageUrl: data['image'],
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          data['title'],
                                          maxLines: 2,
                                          overflow: TextOverflow.clip,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                          .toList(),
                    );
                  }
                },
              )
            : const SizedBox(),
      ],
    );
  }
}
