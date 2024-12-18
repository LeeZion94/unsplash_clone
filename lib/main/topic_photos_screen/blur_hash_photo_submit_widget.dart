import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:unsplash_clone/main/topic_photos_screen/topic_photos_screen_view_model.dart';
import 'package:unsplash_clone/theme/app_colors.dart';
import 'package:unsplash_clone/theme/app_typhography.dart';
import 'package:unsplash_clone/util/mixin/toast_message_mixin.dart';

class BlurHashPhotoSubmitWidget extends StatelessWidget with ToastMessageMixin {
  final String _title;
  final String _description;

  const BlurHashPhotoSubmitWidget({
    required String title,
    required String descrption,
    super.key,
  })  : _title = title,
        _description = descrption;

  Widget _buildBlurHash(String blurHash) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: BlurHash(
            hash: blurHash,
            decodingWidth: 10,
            decodingHeight: 10,
          ),
        );
      },
    );
  }

  Widget _buildPhotoSubmitButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FilledButton(
        onPressed: () {
          showToastMessage(
            '미구현',
            context,
          );
        },
        style: FilledButton.styleFrom(
          elevation: 0,
          backgroundColor: AppColors.bg_canvas,
          padding: const EdgeInsets.symmetric(vertical: 8),
          minimumSize: const Size(0, 0),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: Text(
          '사진 제출',
          style: AppTypography.shared.label_sm_semiBold(AppColors.fg_base),
        ),
      ),
    );
  }

  Widget _buildDescriptionColumn(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          _title,
          style:
              AppTypography.shared.heading_heading2(AppColors.accent_on_accent),
        ),
        const Gap(10),
        Text(
          _description,
          style: AppTypography.shared
              .label_sm_semiBold(AppColors.accent_on_accent),
        ),
        const Gap(10),
        _buildPhotoSubmitButton(context),
      ],
    );
  }

  Widget _buildBottomAlignColumn(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: 16,
        ),
        child: _buildDescriptionColumn(context),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final topicPhotosScreenViewmodel =
        context.read<TopicPhotosScreenViewModel>();

    return SliverToBoxAdapter(
      child: SizedBox(
        width: double.infinity,
        height: 200,
        child: Stack(
          children: [
            if (topicPhotosScreenViewmodel.isDtoEmpty == false)
              _buildBlurHash(topicPhotosScreenViewmodel.submitButtonBlurHash),
            _buildBottomAlignColumn(context),
          ],
        ),
      ),
    );
  }
}
