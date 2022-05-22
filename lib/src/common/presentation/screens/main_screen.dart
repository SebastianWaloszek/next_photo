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
  final List<Widget> _tabs = const [
    HomeScreen(),
  ];

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return InjectedBlocProvider<BottomNavigationCubit>(
      child: AppScreen(
        body: BlocListener<BottomNavigationCubit, BottomNavigationTab>(
          listener: (context, selectedTab) => _pageController.jumpToPage(
            selectedTab.index,
          ),
          child: PageView(
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: _tabs,
          ),
        ),
        bottomNavigationBar: _BottomNavigationBar(
          pageController: _pageController,
        ),
      ),
    );
  }
}

class _BottomNavigationBar extends StatelessWidget {
  const _BottomNavigationBar({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationCubit, BottomNavigationTab>(
      builder: (context, state) {
        return BottomNavigationBar(
          items: BottomNavigationTab.values.map(
            (tab) {
              final isSelected = (pageController.page ?? 0).toInt() ==
                  BottomNavigationTab.values.indexOf(tab);

              if (tab == BottomNavigationTab.profile) {
                return _ProfileBottomNavigationBarItem();
              } else {
                return tab.mapToBarItem(
                  isSelected: isSelected,
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
