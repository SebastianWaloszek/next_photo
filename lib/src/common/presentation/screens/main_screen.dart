import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:next_photo/src/base/presentation/widgets/provider/injected_bloc_provider.dart';
import 'package:next_photo/src/common/presentation/cubits/bottom_navigation_cubit.dart';
import 'package:next_photo/src/common/presentation/enums/bottom_navigation_tab.dart';
import 'package:next_photo/src/common/presentation/theme/app_colors.dart';
import 'package:next_photo/src/common/presentation/widgets/alert/app_snack_bars.dart';
import 'package:next_photo/src/common/presentation/widgets/app_screen.dart';
import 'package:next_photo/src/features/home/presentation/screen/home_screen.dart';
import 'package:next_photo/src/features/users/presentation/widget/user_profile_image.dart';

/// The primary screen with bottom navigation.
class MainScreen extends StatefulWidget {
  /// Creates screen.
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _tabs = const {
    BottomNavigationTab.home: HomeScreen(),
  };

  var _selectedTab = BottomNavigationTab.home;

  @override
  Widget build(BuildContext context) {
    return InjectedBlocProvider<BottomNavigationCubit>(
      child: AppScreen(
        body: BlocListener<BottomNavigationCubit, BottomNavigationTab>(
          listener: (context, selectedTab) {
            setState(() {
              _selectedTab = BottomNavigationTab.home;
            });
          },
          child: _tabs[_selectedTab],
        ),
        bottomNavigationBar: const _BottomNavigationBar(),
      ),
    );
  }
}

class _BottomNavigationBar extends StatelessWidget {
  const _BottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationCubit, BottomNavigationTab>(
      builder: (context, state) {
        return BottomNavigationBar(
          items: BottomNavigationTab.values.map(
            (tab) {
              if (tab == BottomNavigationTab.profile) {
                return _ProfileBottomNavigationBarItem();
              } else {
                return tab.mapToBarItem(
                  isSelected: tab == state,
                );
              }
            },
          ).toList(),
          currentIndex: state.index,
          onTap: (index) {
            // TODO: Remove show unimplemented placeholder.
            if (index == 0) {
              context.read<BottomNavigationCubit>().changeTab(
                    BottomNavigationTab.values.elementAt(index),
                  );
            } else {
              AppSnackBars.showUnimplementedMessage(context);
            }
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: AppColors.primaryContent(context),
          unselectedItemColor: AppColors.primaryContent(context),
          backgroundColor: AppColors.background(context),
          type: BottomNavigationBarType.fixed,
        );
      },
    );
  }
}

class _ProfileBottomNavigationBarItem extends BottomNavigationBarItem {
  _ProfileBottomNavigationBarItem()
      : super(
          icon: const UserProfileImage(radius: 14),
          label: BottomNavigationTab.profile.title,
        );
}

extension on BottomNavigationTab {
  BottomNavigationBarItem mapToBarItem({
    required bool isSelected,
  }) {
    return BottomNavigationBarItem(
      icon: Icon(
        size: 28,
        getIcon(isSelected: isSelected),
      ),
      label: title,
    );
  }
}
