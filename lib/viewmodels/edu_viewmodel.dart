import 'package:stacked/stacked.dart';

class EduViewModel extends BaseViewModel {
  bool isPressed = false;

  onHover(hovered) {
    this.isPressed = hovered;
    rebuildUi();
  }
}
