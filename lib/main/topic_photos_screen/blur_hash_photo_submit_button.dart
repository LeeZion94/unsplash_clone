import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:unsplash_clone/main/topic_photos_screen/topic_photos_screen_view_model.dart';
import 'package:unsplash_clone/theme/app_colors.dart';
import 'package:unsplash_clone/theme/app_typhography.dart';

class BlurHashPhotoSubmitButton extends StatelessWidget {
  final String _title;
  final String _description;

  const BlurHashPhotoSubmitButton({
    required String title,
    required String descrption,
    super.key,
  })  : _title = title,
        _description = descrption;

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
              BlurHash(
                hash: topicPhotosScreenViewmodel.submitButtonBlurHash,
                decodingWidth: 10,
                decodingHeight: 10,
              ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: 16,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _title,
                      style: AppTypography.shared
                          .heading_heading2(AppColors.accent_on_accent),
                    ),
                    const Gap(10),
                    Text(
                      _description,
                      style: AppTypography.shared
                          .label_sm_semiBold(AppColors.accent_on_accent),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
