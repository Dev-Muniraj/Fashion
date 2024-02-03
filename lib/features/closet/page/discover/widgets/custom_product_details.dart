import 'package:fashion_design/features/closet/products/products.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/shared/constants.dart';
import '../../../../../utils/shared/custom_padding.dart';

class CustomProductDetails extends StatelessWidget {
  const CustomProductDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> iconImageList = [
      '$kAssetsImages/profile1.png',
      '$kAssetsImages/profile2.png',
      '$kAssetsImages/profile3.png',
      '$kAssetsImages/profile4.png',
      '$kAssetsImages/profile5.png',
      '$kAssetsImages/profile6.png',
      '$kAssetsImages/profile7.png',
      '$kAssetsImages/cloth.png',
    ];
    final List<String> iconTextList = [
      'Stacy',
      'Stark',
      'Ravi',
      'Hello',
      'Cameron',
      'Red',
      'Green',
      'Jeeva',
    ];

    return Expanded(
      child: CustomScrollView(slivers: [
        SliverGrid.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemCount: iconImageList.length,
            itemBuilder: (c, i) {
              return CustomPadding(
                  child: GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (e) => const ProductDetails())),
                child: Card(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  clipBehavior: Clip.hardEdge,
                  elevation: 5,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Center(
                          child: Stack(children: [
                            Image.asset(
                              iconImageList[i],
                              height: 90,
                              width: 110,
                              fit: BoxFit.contain,
                            ),
                            Positioned(
                                top: 8.0,
                                right: 0.0,
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                      padding: const EdgeInsets.all(2.0),
                                      decoration: BoxDecoration(
                                          border: Border.all(color: kGreyText),
                                          shape: BoxShape.circle),
                                      child: const Icon(
                                        Icons.share_outlined,
                                        size: 13.0,
                                        color: Colors.black,
                                      )),
                                ))
                          ]),
                        ),
                        kSizedBoxHeight(4.0),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: const Image(
                                image: AssetImage("assets/images/pic.png"),
                                height: 15,
                                width: 15,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 5),
                            InkWell(
                              onTap: () {},
                              child: Text(iconTextList[i],
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall!
                                      .copyWith(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold)),
                            ),
                          ],
                        ),
                        kSizedBoxHeight(1.0),
                        Text(
                          "#landsend #tops #bottoms #jeans #joggers, #shirts",
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                        kSizedBoxHeight(10.0),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                  padding: const EdgeInsets.all(2.0),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      shape: BoxShape.circle),
                                  child: const Icon(
                                    Icons.favorite_outline,
                                    size: 10.0,
                                    color: kGreyText,
                                  )),
                            ),
                            kSizedBoxWidth(8.0),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                  padding: const EdgeInsets.all(2.0),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: kGreyText),
                                      shape: BoxShape.circle),
                                  child: const Icon(
                                    Icons.bookmark_border_outlined,
                                    size: 10.0,
                                    color: kGreyText,
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ));
            })
        // This trailing comma makes auto-formatting nicer for build methods.
      ]),
    );
  }
}
