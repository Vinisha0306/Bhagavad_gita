import 'package:bhagavad_gita/headers.dart';
import 'package:bhagavad_gita/pages/chapters_page/chapters_page.dart';
import 'package:bhagavad_gita/pages/details_page/details_page.dart';

class AppRoutes {
  static String homePage = '/';
  static String chaptersPage = 'chaptersPage';
  static String detailspage = 'detailsPage';

  static Map<String, WidgetBuilder> routes = {
    homePage: (context) => HomePage(),
    chaptersPage: (context) => ChaptersPage(),
    detailspage: (context) => DetailsPage(),
  };
}
