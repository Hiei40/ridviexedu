import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bottom_nav_bar_state.dart';

class BottomNavBarCubit extends Cubit<BottomNavBarState> {
  BottomNavBarCubit() : super(BottomNavBarInitial());
  static BottomNavBarCubit get(context) => BlocProvider.of(context);

  int selectedIndex = 0;

  void changeitem(int index) {
    selectedIndex = index;
    emit(ChangeItemIndex(selectedIndex));
  }
}
