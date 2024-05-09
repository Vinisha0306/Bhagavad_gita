import 'package:bhagavad_gita/headers.dart';

class PageControlController extends ChangeNotifier {
  void nextPage({required int data}) {
    data++;
    notifyListeners();
  }
}
