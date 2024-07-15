part of 'bottom_nav_bar_cubit.dart';

abstract class BottomNavBarState {}

class BottomNavBarInitial extends BottomNavBarState {}

class ChangeItemIndex extends BottomNavBarState {
  final int selectedIndex;
  ChangeItemIndex(this.selectedIndex);
}
