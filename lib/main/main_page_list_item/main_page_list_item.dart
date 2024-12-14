import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:provider/provider.dart';
import 'package:unsplash_clone/main/main_page_view_model.dart';
import 'package:unsplash_clone/theme/app_colors.dart';
import 'package:unsplash_clone/theme/app_typhography.dart';

class MainPageListItem extends StatelessWidget {
  final int _index;

  const MainPageListItem({
    required int index,
    super.key,
  }) : _index = index;

  Widget _buildBlurHash(double width, double height, String blurHash) {
    return SizedBox(
      width: width,
      height: height,
      child: BlurHash(hash: blurHash),
    );
  }

  Widget _buildNetworkImage(double width, double height, String imageUrl) {
    return Image.network(
      imageUrl,
      width: width,
      height: height,
      cacheWidth: width.toInt(),
      cacheHeight: height.toInt(),
      fit: BoxFit.cover,
    );
  }

  Widget _buildUserNameText(String userName) {
    return Positioned(
      left: 15,
      bottom: 20,
      child: Text(
        userName,
        style:
            AppTypography.shared.label_sm_regular(AppColors.accent_on_accent),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final mainPageViewModel = context.read<MainPageViewModel>();
    final dto = mainPageViewModel.listPhotosDtos[_index];
    final imageWidth = dto.width;
    final imageHeight = dto.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final newHeight = (imageHeight / imageWidth) * screenWidth;
    final imageUrl = dto.imageUrl;
    final blurHash = dto.blurHash;
    final userName = dto.userName;

    return Stack(
      children: [
        _buildBlurHash(
          screenWidth,
          newHeight,
          blurHash,
        ),
        _buildNetworkImage(
          screenWidth,
          newHeight,
          imageUrl,
        ),
        _buildUserNameText(userName),
      ],
    );
  }
}
