import 'package:fashion_design/utils/shared/constants.dart';
import 'package:flutter/material.dart';

class MyGroups extends StatefulWidget {
  const MyGroups({super.key});

  @override
  State<MyGroups> createState() => _MyGroupsState();
}

class _MyGroupsState extends State<MyGroups> {
  final List<Map<String, dynamic>> _allUsers = [
    {"images": "$kAssetsImages/profile1.png", "name": "Rock's Fashion Group"},
    {"images": "$kAssetsImages/profile2.png", "name": "Sniper Trendz"},
    {"images": "$kAssetsImages/photos/photo3.png", "name": "Stacy Fashions"},
    {"images": "$kAssetsImages/photos/photo4.png", "name": "Lucy Cloths"},
    {"images": "$kAssetsImages/profile3.png", "name": "Lina Lotus View"},
    {"images": "$kAssetsImages/profile4.png", "name": "Mirana Margato"},
    {"images": "$kAssetsImages/photos/photo7.png", "name": "Luna Moon Dress"},
    {"images": "$kAssetsImages/photos/photo8.png", "name": "Jack Costume"},
  ];

  List<Map<String, dynamic>> _foundUsers = [];

  @override
  void initState() {
    // TODO: implement initState
    _foundUsers = _allUsers;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    setState(() {
      _foundUsers = results;
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
        title: Text("Groups",
            style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 10),
            TextField(
              onChanged: (value)  => _runFilter(value),
              decoration: const InputDecoration(
                  labelText: "Search", suffixIcon: Icon(Icons.search)),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("* Existing Group",style: Theme.of(context).textTheme.labelLarge,),
                GestureDetector(
                  onTap: (){},
                  child: Center(
                    child: Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 150,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(colors: [Color(0xff0591BD), Color(0xff6BD5D5)],
                          begin: Alignment.topRight,
                          end: Alignment.topLeft,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Expanded(
                              flex: 1,
                              child: Icon(Icons.add_box_outlined)),
                          Expanded(
                              flex: 3,
                              child: Text("Create a group",style: Theme.of(context).textTheme.labelLarge,)),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Expanded(
              child: ListView.builder(
                itemCount: _foundUsers.length,
                itemBuilder: (c, i) => Card(
                  key: ValueKey(_foundUsers[i]["images"]),
                  color: Colors.white,
                  elevation: 5,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    leading: Image.asset(
                      _foundUsers[i]["images"].toString(),
                      height: 37,
                      width: 37,
                    ),
                    title: Text(
                      _foundUsers[i]["name"],
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
