import 'package:fashion_design/utils/shared/constants.dart';
import 'package:fashion_design/utils/shared/custom_padding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyClosetPage extends StatefulWidget {
  const MyClosetPage({super.key});

  @override
  State<MyClosetPage> createState() => _MyClosetPageState();
}

class _MyClosetPageState extends State<MyClosetPage> {
  @override
  Widget build(BuildContext context) {
    final List<String> topImageList = [
      '$kAssetsImages/product/top1.png',
      '$kAssetsImages/product/top2.png',
      '$kAssetsImages/product/top3.png',
      '$kAssetsImages/product/top4.png',

    ];
    final List<String> topTextList = [
      'Casual Tops',
      'Sports Wear',
      "Men's Fashion",
      'Trends',
    ];
    final List<String> pantImageList = [
      '$kAssetsImages/product/pant1.png',
      '$kAssetsImages/product/pant2.png',
      '$kAssetsImages/product/pant3.png',
      '$kAssetsImages/product/pant4.png',
      '$kAssetsImages/product/pant5.png',

    ];
    final List<String> pantTextList = [
      'Casual Pants',
      'Sports Wear',
      "Men's Fashion",
      'Trends',
      'Joggers',
    ];
    final List<String> shoeImageList = [
      '$kAssetsImages/product/shoe1.png',
      '$kAssetsImages/product/shoe2.png',
      '$kAssetsImages/product/shoe3.png',
      '$kAssetsImages/product/shoe4.png',
      '$kAssetsImages/product/shoe5.png',

    ];
    final List<String> shoeTextList = [
      'Casual Shoes',
      'Sports Wear',
      "Men's Fashion",
      'Trends',
      "Women's Fashion",
    ];
    final List<String> jwelImageList = [
      '$kAssetsImages/product/jwel1.png',
      '$kAssetsImages/product/jwel2.png',
      '$kAssetsImages/product/jwel3.png',
      '$kAssetsImages/product/jwel4.png',

    ];
    final List<String> jwelTextList = [
      'Gold',
      'Gold',
      'Gold',
      'Gold',

    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("A Fashion Closet",
            style: Theme.of(context).textTheme.headlineSmall),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff0591BD), Color(0xff6BD5D5)],
              begin: Alignment.topRight,
              end: Alignment.topLeft,
            ),
          ),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: const Icon(CupertinoIcons.bookmark),
          ),
          const SizedBox(width: 8),
          InkWell(
            onTap: () {},
            child: const Icon(Icons.settings),
          ),
          const SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Column(
            children: [
              CustomPadding(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const CircleAvatar(
                            backgroundImage: AssetImage("assets/images/pic.png"),
                            radius: 25,
                          ),
                          kSizedBoxWidth(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Stacy",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(letterSpacing: 1),
                              ),
                              Text(
                                "Set Your Profile",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall!
                                    .copyWith(
                                        decoration: TextDecoration.underline,
                                  color: const Color(0xFF01579B),),
                              )
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            height: 27,
                            width: 27,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(colors: [Color(0xFF01579B), Color(0xff6BD5D5)],
                                begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                ),
                child: CustomPadding(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: const Icon(Icons.location_on_outlined, size: 16),
                              ),
                              const SizedBox(width: 5),
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  "bangalore",
                                  style: Theme.of(context).textTheme.labelSmall,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              InkWell(
                                  onTap: () {},
                                  child: Text(
                                    "OOTD Calender",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall!
                                        .copyWith(
                                            color: Colors.blue,
                                            decoration: TextDecoration.underline),
                                  )),
                              const SizedBox(width: 5),
                              InkWell(
                                onTap: () {},
                                child: const Icon(
                                  Icons.chevron_right,
                                  size: 16,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 40,
                        child: ListView.builder(
                          padding: const EdgeInsets.all(4),
                          itemCount: 7,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (_, index) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Container(
                              width: 85,
                              decoration: BoxDecoration(
                                  color: Colors.grey[400],
                                  borderRadius: BorderRadius.circular(4)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Friday, Feb 2",
                                    style: TextStyle(fontSize: 9),
                                  ),
                                  CustomPadding(
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "30° C",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelSmall,
                                        ),
                                        const SizedBox(width: 5),
                                        const Icon(
                                          Icons.cloud_outlined,
                                          size: 15,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              CustomPadding(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "My Closet",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(decoration: TextDecoration.underline),
                        ),
                        Text("33 Items",
                            style: Theme.of(context).textTheme.labelMedium),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Tops",
                              style: Theme.of(context).textTheme.titleSmall),
                          const SizedBox(height: 5),
                          SizedBox(
                            height: 100,
                            child: ListView.builder(
                              padding: const EdgeInsets.all(4),
                              itemCount: topImageList.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (c, i) => Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 70,
                                      width: 85,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[400],
                                          borderRadius: BorderRadius.circular(4)),
                                      child: Image.asset(topImageList[i],
                                      ),
                                    ),
                                    Text(
                                      topTextList[i],
                                      style: Theme.of(context).textTheme.labelSmall,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          Text("Pants",
                              style: Theme.of(context).textTheme.titleSmall),
                          const SizedBox(height: 5),
                          SizedBox(
                            height: 100,
                            child: ListView.builder(
                              padding: const EdgeInsets.all(4),
                              itemCount: pantImageList.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (c,i) => Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 85,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          color: Colors.grey[400],
                                          borderRadius: BorderRadius.circular(4)
                                        ),
                                        child: Image.asset(pantImageList[i]),
                                      ),
                                      Text(pantTextList[i],style: Theme.of(context).textTheme.labelSmall,)
                                    ],
                                  ),
                                ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          Text("Shoes",
                              style: Theme.of(context).textTheme.titleSmall),
                          const SizedBox(height: 5),
                          SizedBox(
                            height: 100,
                            child: ListView.builder(
                              padding: const EdgeInsets.all(4),
                              itemCount: shoeImageList.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (c,i) => Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 85,
                                      height: 70,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[400],
                                          borderRadius: BorderRadius.circular(4)
                                      ),
                                      child: Image.asset(shoeImageList[i]),
                                    ),
                                    Text(shoeTextList[i],style: Theme.of(context).textTheme.labelSmall,)
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          Text("Jewellery",
                              style: Theme.of(context).textTheme.titleSmall),
                          const SizedBox(height: 5),
                          SizedBox(
                            height: 100,
                            child: ListView.builder(
                              padding: const EdgeInsets.all(4),
                              itemCount: jwelImageList.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (c,i) => Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 85,
                                      height: 70,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[400],
                                          borderRadius: BorderRadius.circular(4)
                                      ),
                                      child: Image.asset(jwelImageList[i]),
                                    ),
                                    Text(jwelTextList[i],style: Theme.of(context).textTheme.labelSmall,),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
