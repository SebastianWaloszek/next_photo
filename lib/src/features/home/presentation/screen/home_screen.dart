import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:next_photo/src/base/presentation/widgets/provider/injected_bloc_provider.dart';
import 'package:next_photo/src/common/presentation/localization/generated/l10n.dart';
import 'package:next_photo/src/common/presentation/theme/app_colors.dart';
import 'package:next_photo/src/common/presentation/theme/app_dimens.dart';
import 'package:next_photo/src/common/presentation/theme/app_icons.dart';
import 'package:next_photo/src/common/presentation/theme/app_text_styles.dart';
import 'package:next_photo/src/common/presentation/widgets/app_refresh_indicator.dart';
import 'package:next_photo/src/common/presentation/widgets/button/app_icon_button.dart';
import 'package:next_photo/src/common/presentation/widgets/text/app_logo.dart';
import 'package:next_photo/src/features/albums/presentation/cubits/photos/photos_cubit.dart';
import 'package:next_photo/src/features/home/presentation/widgets/photo_list_item.dart';

/// The screen with photo feed and stories.
class HomeScreen extends StatelessWidget {
  /// Creates screen.
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Material(
          child: Column(
            children: const [
              _TopNavigationBar(),
              Expanded(
                child: _ContentScrollView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TopNavigationBar extends StatelessWidget {
  const _TopNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background(context),
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimens.contentPaddingHorizontal,
        vertical: AppDimens.contentPaddingVertical,
      ),
      child: Row(
        children: [
          const AppLogo(),
          const Spacer(),
          Row(
            children: const [
              AppIconButton(
                icon: AppIcons.heart,
              ),
              SizedBox(width: 20),
              AppIconButton(
                icon: AppIcons.addIconFilled,
              ),
              SizedBox(width: 20),
              AppIconButton(
                icon: AppIcons.messenger,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ContentScrollView extends StatelessWidget {
  const _ContentScrollView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InjectedBlocProvider<PhotosCubit>(
      onCreate: (cubit) => cubit.getAllPhotos(),
      child: Builder(
        builder: (context) {
          return AppRefreshIndicator(
            onRefresh: context.read<PhotosCubit>().getAllPhotos,
            child: const CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: _StoriesList(),
                ),
                SliverToBoxAdapter(
                  child: VerticalDivider(),
                ),
                _PhotoList()
              ],
            ),
          );
        },
      ),
    );
  }
}

// TODO: Implement stories mock.
class _StoriesList extends StatelessWidget {
  const _StoriesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 114,
      child: ListView.separated(
        itemCount: 10,
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimens.borderPaddingHorizontal,
          vertical: AppDimens.contentPaddingVertical,
        ),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, _) => const SizedBox(width: 20),
        itemBuilder: (context, index) => const _StoriesListItem(),
      ),
    );
  }
}

class _StoriesListItem extends StatelessWidget {
  const _StoriesListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Implement stories list item.
    return const Placeholder(
      fallbackHeight: 94,
      fallbackWidth: 72,
    );
  }
}

class _PhotoList extends StatelessWidget {
  const _PhotoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhotosCubit, PhotosState>(
      builder: (context, state) {
        final photos = state.whenOrNull(
          inProgress: (currentPhotos) => currentPhotos,
          success: (photos) => photos,
        );

        if (photos != null) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return PhotoListItem(photo: photos[index]);
              },
              childCount: photos.length,
            ),
          );
        } else {
          return SliverToBoxAdapter(
            child: state.maybeWhen(
              failure: (_) => Center(
                child: Text(
                  S.of(context).anErrorOccurred,
                  style: AppTextStyles.headline2(context),
                ),
              ),
              orElse: () => SizedBox.fromSize(),
            ),
          );
        }
      },
    );
  }
}
