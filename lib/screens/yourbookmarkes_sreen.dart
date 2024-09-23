import 'package:flutter/material.dart';
import 'package:readsphere_ieee/constant/constants.dart';


import 'package:readsphere_ieee/widgets/specific_category_container.dart';

class YourbookmarkesSreen extends StatelessWidget {
  const YourbookmarkesSreen({super.key});
  static String id = "yourbookmarkes";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: secondaryColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text("Your BookMarkes"),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.share),
            )
          ],
        ),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return const SpecificCategoryContainer(
                buttonText: "Continue read",
              );
            }));
  }
}
