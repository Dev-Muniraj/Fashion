import 'package:fashion_design/utils/shared/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 4,
          itemBuilder: (c,i) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage("assets/images/pic.png"),
                            height: 25,
                            width: 25,
                            fit: BoxFit.cover,
                          ),
                        ),
                        kSizedBoxWidth(),
                        InkWell(
                          onTap: () {},
                          child: Text("Stacy",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                    Container(
                      height: 30,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(child: Text("Follow",style: Theme.of(context).textTheme.titleSmall!.apply(color: Colors.white))),
                    ),
                  ],
                ),
                kSizedBoxHeight(),
                const Image(image: AssetImage("$kAssetsImages/cloth.png")),
                kSizedBoxHeight(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.heart)),
                        IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.bookmark)),
                        IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.chat_bubble)),
                      ],
                    ),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert))
                  ],
                ),
                kSizedBoxHeight(1.0),
                Text(
                  "#landsend #tops #bottoms #jeans #joggers, #shirts",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                kSizedBoxHeight(10.0),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Daily/Wear",
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    kSizedBoxWidth(),
                    const Text("-"),
                    kSizedBoxWidth(),
                    Text(
                      "Spring/Fall",
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    kSizedBoxWidth(),
                    const Text("-"),
                    kSizedBoxWidth(),
                    Text(
                      "Comfortable/Trendy",
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ],
                ),
                Text(
                  "an hour ago",
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                kSizedBoxHeight(10.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
