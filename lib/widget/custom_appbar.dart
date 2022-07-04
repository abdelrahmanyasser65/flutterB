import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 100,
              flexibleSpace: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.deepPurpleAccent,
                  Colors.pink,
                  Colors.deepPurpleAccent
                ])),
              ),
              centerTitle: true,
              leading: Padding(
                padding: const EdgeInsets.only(left: 1),
                child: Row(
                  children: [
                    Expanded(
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.account_circle))),
                    Expanded(
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.account_circle))),
                  ],
                ),
              ),
              actions: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.account_circle)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.account_circle)),
              ],
              title: const Text(
                "CustomAppbar",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                //body
              ]),
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      flexibleSpace: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.deepPurpleAccent,
          Colors.pink,
          Colors.deepPurpleAccent
        ])),
      ),
      centerTitle: true,
      leading: Padding(
        padding: const EdgeInsets.only(left: 1),
        child: Row(
          children: [
            Expanded(
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.account_circle))),
            Expanded(
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.account_circle))),
          ],
        ),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.account_circle)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.account_circle)),
      ],
      title: const Text(
        "CustomAppbar",
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );
  }
}
