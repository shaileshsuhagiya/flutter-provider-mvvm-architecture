import 'package:flutter/foundation.dart';
import 'package:mvvm_demo/src/movie_functionality/business_logic/enums/view_state.dart';

class BaseModel extends ChangeNotifier {
  ViewState _state = ViewState.Idle;

  ViewState get state => _state;

  void updateState(ViewState viewState) {
    updateStateWithoutNotifyListner(viewState);
    notifyListeners();
  }

  void updateStateWithoutNotifyListner(ViewState viewState) =>
      _state = viewState;
}
