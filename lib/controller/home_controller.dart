import 'package:get/get.dart';
import 'package:readsphere_ieee/screens/challenge.dart';
import 'package:readsphere_ieee/screens/home.dart';
import 'package:readsphere_ieee/screens/home_page.dart';
import 'package:readsphere_ieee/screens/library_screen.dart';
import 'package:readsphere_ieee/screens/profile.dart';


class HomeController extends GetxController {
  int currentIndex = 0;
  List pages = [
    const HomePage(),
   const LibraryScreen(),
    const Challenge(),
    const Profile()
  ];
  changePage(int pageIndex) {
    currentIndex = pageIndex;
    update();
  }

  goToHomeWithIndex(index, arguments) {
    Get.to(() => const Home(), arguments: arguments);
    currentIndex = index;
    update();
  }
}
