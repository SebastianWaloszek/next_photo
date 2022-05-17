import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:like_button/like_button.dart';
import 'package:next_photo/src/base/presentation/widgets/provider/injected_bloc_provider.dart';
import 'package:next_photo/src/common/presentation/localization/generated/l10n.dart';
import 'package:next_photo/src/common/presentation/theme/app_colors.dart';
import 'package:next_photo/src/common/presentation/theme/app_dimens.dart';
import 'package:next_photo/src/common/presentation/theme/app_icons.dart';
import 'package:next_photo/src/common/presentation/theme/app_text_styles.dart';
import 'package:next_photo/src/common/presentation/widgets/button/app_icon_button.dart';
import 'package:next_photo/src/features/albums/domain/entities/photo.dart';
import 'package:next_photo/src/features/albums/presentation/cubits/photo_like/photo_like_cubit.dart';
import 'package:timeago/timeago.dart' as timeago;

/// A list item for showing a photo with its details.
class PhotoListItem extends StatefulWidget {
  /// Creates item.
  const PhotoListItem({
    Key? key,
    required this.photo,
  }) : super(key: key);

  /// The photo that should be shown.
  final Photo photo;

  @override
  State<PhotoListItem> createState() => _PhotoListItemState();
}

class _PhotoListItemState extends State<PhotoListItem>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return SizedBox(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppDimens.contentPaddingHorizontal,
              vertical: AppDimens.contentPaddingVertical,
            ),
            child: _Header(),
          ),
          _Photo(
            photo: widget.photo,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppDimens.contentPaddingHorizontal,
              vertical: AppDimens.contentPaddingVertical,
            ),
            child: _Footer(
              photo: widget.photo,
            ),
          ),
        ],
      ),
    );
  }
}

class _Photo extends StatelessWidget {
  const _Photo({
    Key? key,
    required this.photo,
  }) : super(key: key);

  final Photo photo;

  @override
  Widget build(BuildContext context) {
    return Ink(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fitWidth,
          image: NetworkImage(
            photo.url,
          ),
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Placeholder(
          fallbackHeight: 34,
          fallbackWidth: 34,
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              // TODO: Replace text placeholder.
              'yankodesign',
              style: AppTextStyles.headline1(context),
            ),
            Text(
              // TODO: Replace text placeholder.
              'Sakıp Sabancı Müzesi',
              style: AppTextStyles.body2(context),
            ),
            Text(
              // TODO: Replace text placeholder.
              'Zeki Müren • Kırk Yıllık Dost Gibiyiz',
              style: AppTextStyles.body2(context),
            ),
          ],
        ),
        const Spacer(),
        const AppIconButton(
          icon: AppIcons.more,
        ),
      ],
    );
  }
}

class _Footer extends StatelessWidget {
  const _Footer({
    Key? key,
    required this.photo,
  }) : super(key: key);

  final Photo photo;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: [
            _LikeButton(
              photo: photo,
            ),
            const SizedBox(width: 10),
            const AppIconButton(
              icon: AppIcons.comment,
            ),
            const SizedBox(width: 10),
            const AppIconButton(
              icon: AppIcons.share,
            ),
            const Spacer(),
            const AppIconButton(
              icon: AppIcons.bookmark,
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            const Placeholder(
              fallbackHeight: 16,
              fallbackWidth: 40,
            ),
            const SizedBox(width: 8),
            Text(
              // TODO: Replace username and others like count placeholders.
              S.of(context).likedBy('bora.dn', 1657),
              style: AppTextStyles.headline2(context),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Text(
          photo.title,
          style: AppTextStyles.headline2(context),
        ),
        const SizedBox(height: 10),
        Text(
          // TODO: Replace comment number placeholder.
          S.of(context).viewAllComments(10),
          style: AppTextStyles.headline2(
            context,
            color: AppColors.secondaryContent(context),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: <Widget>[
            const Placeholder(
              fallbackHeight: 26,
              fallbackWidth: 26,
            ),
            const SizedBox(width: 8),
            // TODO: Replace add a comment text placeholder.
            Text(
              S.of(context).addAComment,
              style: AppTextStyles.headline2(
                context,
                color: AppColors.secondaryContent(context),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Text(
          timeago.format(
            // TODO: Replace placeholder posted photo time.
            DateTime.now().subtract(const Duration(minutes: 15)),
          ),
          style: AppTextStyles.body2(
            context,
            color: AppColors.secondaryContent(context),
          ),
        )
      ],
    );
  }
}

class _LikeButton extends StatelessWidget {
  const _LikeButton({
    Key? key,
    required this.photo,
  }) : super(key: key);

  final Photo photo;

  @override
  Widget build(BuildContext context) {
    return InjectedBlocProvider<PhotoLikeCubit>(
      child: BlocBuilder<PhotoLikeCubit, PhotoLikeState>(
        builder: (context, state) {
          return LikeButton(
            isLiked: state.maybeWhen(
              success: (like) => like,
              orElse: () => photo.isLiked,
            ),
            onTap: (like) async => context.read<PhotoLikeCubit>().setPhotoLike(
                  photo.id,
                  like: !like,
                ),
            size: 28,
            circleColor: CircleColor(
              start: AppColors.like(context),
              end: AppColors.like(context),
            ),
            bubblesColor: BubblesColor(
              dotPrimaryColor: AppColors.like(context),
              dotSecondaryColor: AppColors.like(context),
            ),
            likeBuilder: (bool isLiked) {
              return Icon(
                isLiked ? AppIcons.heartFilled : AppIcons.heart,
                color: isLiked
                    ? AppColors.like(context)
                    : AppColors.primaryContent(context),
                size: 28,
              );
            },
          );
        },
      ),
    );
  }
}
