import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:next_blog/src/base/presentation/widgets/provider/injected_bloc_provider.dart';
import 'package:next_blog/src/common/presentation/cubit/bottom_navigation_cubit.dart';
import 'package:next_blog/src/common/presentation/enum/bottom_navigation_tab.dart';
import 'package:next_blog/src/common/presentation/theme/app_colors.dart';
import 'package:next_blog/src/common/presentation/widgets/alert/app_snack_bars.dart';
import 'package:next_blog/src/features/home/presentation/screen/home_screen.dart';

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
      child: Scaffold(
        body: Center(
          child: BlocListener<BottomNavigationCubit, BottomNavigationTab>(
            listener: (context, selectedTab) => _pageController.jumpToPage(
              selectedTab.index,
            ),
            child: PageView(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: _tabs,
            ),
          ),
        ),
        bottomNavigationBar:
            BlocBuilder<BottomNavigationCubit, BottomNavigationTab>(
          builder: (context, state) {
            return BottomNavigationBar(
              items: BottomNavigationTab.values
                  .map(
                    (tab) => tab.mapToBarItem(
                      isSelected: (_pageController.page ?? 0).toInt() ==
                          BottomNavigationTab.values.indexOf(tab),
                    ),
                  )
                  .toList(),
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
        ),
      ),
    );
  }
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
