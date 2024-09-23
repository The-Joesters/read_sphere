import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readsphere_ieee/constant/constants.dart';
import 'package:readsphere_ieee/screens/downloadsbooks_screen.dart';
import 'package:readsphere_ieee/screens/featuredbooks_screen.dart';
import 'package:readsphere_ieee/screens/perimum.dart';
import 'package:readsphere_ieee/screens/yourbookmarkes_sreen.dart';
import 'package:readsphere_ieee/widgets/custom_button.dart';
import 'package:readsphere_ieee/widgets/custom_library_container.dart';
import 'package:readsphere_ieee/widgets/custom_library_text_row.dart';
import 'package:screen_go/extensions/responsive_nums.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});
  static String id = "library-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text("Library"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              CustomLibraryTextRow(
                titleText: "Your bookmarkes",
                onpressed: () {
                  Get.to(() => const YourbookmarkesSreen());
                },
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomLibraryContainer(),
                  CustomLibraryContainer(),
                ],
              ),
              CustomLibraryTextRow(
                titleText: "Featured Books",
                onpressed: () {
                  Get.to(() => const FeaturedbooksScreen());
                },
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomLibraryContainer(),
                  CustomLibraryContainer(),
                ],
              ),
              CustomLibraryTextRow(
                titleText: "Your downloads",
                onpressed: () {
                  Get.to(() => const DownloadsbooksScreen());
                },
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomLibraryContainer(),
                  CustomLibraryContainer(),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              CustomButton(
                  onpressed: () {
                    Get.to(() => const Perimum());
                  },
                  buttonColor: primaryColor,
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 4.w,
                      fontFamily: 'IBMPlexSans'),
                  buttonText: 'Go premium',
                  borderColor: primaryColor),
              SizedBox(
                height: 16.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
