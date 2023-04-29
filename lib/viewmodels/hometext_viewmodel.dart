import 'package:stacked/stacked.dart';

class HomeTextViewModel extends BaseViewModel {
  bool isPressed = false;

  onHover(hovered) {
    this.isPressed = hovered;
    rebuildUi();
  }
}
