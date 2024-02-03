import 'package:flutter/material.dart';

import '../../../../../utils/shared/constants.dart';

void CustomFilterPage(BuildContext context) {
  showModalBottomSheet(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      context: context,
      builder: (builder) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                          onTap: () {},
                          child: Text(
                            "Apply",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .apply(color: Colors.blue),
                          ))),
                  kSizedBoxHeight(),
                  Text("Layouts",
                      style: Theme.of(context).textTheme.titleMedium),
                  kSizedBoxHeight(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: const Image(
                              image: AssetImage("assets/layouts/1.png"),
                            ),
                          ),
                        ),
                        kSizedBoxWidth(),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: const Image(
                              image: AssetImage("assets/layouts/2.png"),
                            ),
                          ),
                        ),
                        kSizedBoxWidth(),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: const Image(
                              image: AssetImage("assets/layouts/3.png"),
                            ),
                          ),
                        ),
                        kSizedBoxWidth(),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: const Image(
                              image: AssetImage("assets/layouts/4.png"),
                            ),
                          ),
                        ),
                        kSizedBoxWidth(),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: const Image(
                              image: AssetImage("assets/layouts/5.png"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  kSizedBoxHeight(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Sort by",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      InkWell(
                          onTap: () {}, child: const Icon(Icons.minimize_sharp)),
                    ],
                  ),
                  kSizedBoxHeight(),
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            height: 40,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Center(
                              child: Text(
                                "On Sale",
                                style:
                                Theme.of(context).textTheme.labelMedium,
                              ),
                            ),
                          ),
                        ),
                      ),
                      kSizedBoxWidth(),
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            height: 40,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Center(
                              child: Text(
                                "Featured",
                                style:
                                Theme.of(context).textTheme.labelMedium,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  kSizedBoxHeight(),
                  const Divider(),
                  kSizedBoxHeight(),
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            height: 40,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Center(
                              child: Text(
                                "Date : Latest",
                                style:
                                Theme.of(context).textTheme.labelMedium,
                              ),
                            ),
                          ),
                        ),
                      ),
                      kSizedBoxWidth(),
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            height: 40,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Center(
                              child: Text(
                                "Date : Oldest",
                                style:
                                Theme.of(context).textTheme.labelMedium,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  kSizedBoxHeight(),
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            height: 40,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Center(
                              child: Text(
                                "Price : Low to High",
                                style:
                                Theme.of(context).textTheme.labelMedium,
                              ),
                            ),
                          ),
                        ),
                      ),
                      kSizedBoxWidth(),
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            height: 40,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Center(
                              child: Text(
                                "Price : High to Low",
                                style:
                                Theme.of(context).textTheme.labelMedium,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  kSizedBoxHeight(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Price",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      InkWell(
                          onTap: () {}, child: const Icon(Icons.minimize_sharp)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      });
}