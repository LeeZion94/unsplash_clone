import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:unsplash_clone/network/dto/list_photos/list_photos_dto.dart';
import 'package:unsplash_clone/theme/app_colors.dart';
import 'package:unsplash_clone/theme/app_typhography.dart';

class HalfScreenWidthPictureItem extends StatelessWidget {
  final ListPhotosDto _dto;
  final _defaultDecodedSize = 10;

  const HalfScreenWidthPictureItem({
    required ListPhotosDto dto,
    super.key,
  }) : _dto = dto;

  Widget _buildUserNameText(String userName) {
    return Positioned(
      left: 10,
      bottom: 20,
      child: Text(
        userName,
        style:
            AppTypography.shared.label_sm_semiBold(AppColors.accent_on_accent),
      ),
    );
  }

  Widget _buildFadeInImage(
      double width, double height, String imageUrl, String blurHash) {
    return SizedBox(
      width: width,
      height: height,
      child: FadeInImage(
        fadeInDuration: const Duration(milliseconds: 500),
        placeholder: BlurHashImage(
          blurHash,
          decodingWidth: _defaultDecodedSize,
          decodingHeight: _defaultDecodedSize,
        ),
        image: ResizeImage(
          NetworkImage(imageUrl),
          width: width.toInt(),
          height: height.toInt(),
        ),
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final imageWidth = _dto.width;
    final imageHeight = _dto.height;
    final halfScreenWidth = MediaQuery.of(context).size.width / 2;
    final newHeight = (imageHeight / imageWidth) * halfScreenWidth;
    final imageUrl = _dto.imageUrl;
    final blurHash = _dto.blurHash;
    final userName = _dto.userName;

    return Stack(
      children: [
        _buildFadeInImage(
          halfScreenWidth,
          newHeight,
          imageUrl,
          blurHash,
        ),
        _buildUserNameText(userName),
      ],
    );
  }
}
