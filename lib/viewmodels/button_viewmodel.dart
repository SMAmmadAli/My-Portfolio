import 'package:stacked/stacked.dart';

class ButtonViewModel extends BaseViewModel {
  bool isPressed = false;

  onHover(hovered) {
    this.isPressed = hovered;
    rebuildUi();
  }
}
