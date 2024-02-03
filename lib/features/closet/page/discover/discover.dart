import 'package:fashion_design/features/closet/page/discover/widgets/custom_filter_page.dart';
import 'package:fashion_design/features/closet/page/discover/widgets/custom_product_details.dart';
import 'package:fashion_design/features/closet/page/my_closet/my_closet.dart';
import 'package:flutter/material.dart';
import '../../../../utils/shared/constants.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff0591BD), Color(0xff6BD5D5)],
              begin: Alignment.topRight,
              end: Alignment.topLeft,
            ),
          ),
        ),
        title: const Text('Discover'),
        actions: [
          InkWell(
            onTap: () {},
            child: const Icon(Icons.search),
          ),
          kSizedBoxWidth(),
        ],
      ),
      drawer: Drawer(
        width: 250,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.grey[200],
                width: double.infinity,
                height: 220,
                padding: const EdgeInsets.only(top: 40, right: 40, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        height: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("assets/images/pic.png")),
                        ),
                      ),
                    ),
                    kSizedBoxHeight(),
                    Expanded(
                        child: Text("Stacy",
                            style: Theme.of(context).textTheme.headlineSmall)),
                    Expanded(
                        child: Text("User Name",
                            style: Theme.of(context).textTheme.labelMedium)),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: const Column(
                        children: [
                          Text(
                            "Followers",
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                          Text(
                            "240",
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      kSizedBoxHeight(),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (e) => const MyClosetPage()));
                          },
                          child: Text(
                            "My Closet",
                            style: Theme.of(context).textTheme.labelLarge,
                          )),
                      kSizedBoxHeight(),
                      const Divider(thickness: 0.5),
                      kSizedBoxHeight(),
                      InkWell(
                          onTap: () {},
                          child: Text(
                            "Groups",
                            style: Theme.of(context).textTheme.labelLarge,
                          )),
                      kSizedBoxHeight(),
                      const Divider(thickness: 0.5),
                      kSizedBoxHeight(),
                      InkWell(
                          onTap: () {},
                          child: Text(
                            "Saved",
                            style: Theme.of(context).textTheme.labelLarge,
                          )),
                      kSizedBoxHeight(),
                      const Divider(thickness: 1),
                      kSizedBoxHeight(),
                      InkWell(
                          onTap: () {},
                          child: Text(
                            "Chat",
                            style: Theme.of(context).textTheme.labelLarge,
                          )),
                      kSizedBoxHeight(),
                      const Divider(thickness: 1),
                      kSizedBoxHeight(),
                      InkWell(
                          onTap: () {},
                          child: Text(
                            "Suggested",
                            style: Theme.of(context).textTheme.labelLarge,
                          )),
                      kSizedBoxHeight(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 8,right: 8,bottom: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  width: 132,
                  decoration: BoxDecoration(
                      color: const Color(0xff6BD5D5),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Text("The Latest Ideas"),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: () {
                      CustomFilterPage(context);
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Filter",
                            style: Theme.of(context).textTheme.titleSmall),
                        const SizedBox(width: 10),
                        const Icon(Icons.filter_list_outlined, size: 22),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          const CustomProductDetails(),
        ],
      ),
    );
  }
}


