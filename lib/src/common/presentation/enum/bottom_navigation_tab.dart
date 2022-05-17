import 'package:flutter/material.dart';
import 'package:next_blog/src/common/presentation/localization/generated/l10n.dart';
import 'package:next_blog/src/common/presentation/theme/app_icons.dart';

/// A tab in a bottom navigation bar.
enum BottomNavigationTab {
  /// Tab for initial home page with photo feed.
  home,

  /// Tab for search page.
  search,

  /// Tab for short video feed.
  reels,

  /// Tab for page for product store.
  store,

  /// Tab for the user profile.
  profile,
}

/// Presentation extensions on [BottomNavigationTab],
extension BottomNavigationTabExtension on BottomNavigationTab {
  /// Returns an icon for a specific tab.
  ///
  /// Will return filled icon if available and [isSelected] is true.
  IconData getIcon({required bool isSelected}) {
    switch (this) {
      case BottomNavigationTab.home:
        return isSelected ? AppIcons.homeFilled : AppIcons.home;
      case BottomNavigationTab.search:
        return isSelected ? AppIcons.searchFilled : AppIcons.search;
      case BottomNavigationTab.reels:
        return AppIcons.reels;
      case BottomNavigationTab.store:
        return AppIcons.shop;
      case BottomNavigationTab.profile:
        // TODO: Replace with proper icon from design.
        return Icons.person_outline_rounded;
    }
  }

  /// A title of a tab.
  String get title {
    switch (this) {
      case BottomNavigationTab.home:
        return S.current.home;
      case BottomNavigationTab.search:
        return S.current.search;
      case BottomNavigationTab.reels:
        return S.current.reels;
      case BottomNavigationTab.store:
        return S.current.store;
      case BottomNavigationTab.profile:
        return S.current.profile;
    }
  }
}
