import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:next_photo/src/common/presentation/enum/bottom_navigation_tab.dart';

/// The cubit for keeping the state of the selected bottom navigation tab.
@lazySingleton
class BottomNavigationCubit extends Cubit<BottomNavigationTab> {
  /// Creates the cubit.
  BottomNavigationCubit() : super(BottomNavigationTab.home);

  /// Changes the currently selected tab.
  void changeTab(BottomNavigationTab tab) => emit(tab);
}
