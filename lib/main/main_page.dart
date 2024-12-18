import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:unsplash_clone/main/main_page_view_model.dart';
import 'package:unsplash_clone/main/report_edit_only_screen/report_edit_only_screen.dart';
import 'package:unsplash_clone/main/report_edit_only_screen/reposrt_edit_only_screen_view_model.dart';
import 'package:unsplash_clone/main/topic_photos_screen/topic_photos_screen.dart';
import 'package:unsplash_clone/main/topic_photos_screen/topic_photos_screen_view_model.dart';
import 'package:unsplash_clone/theme/app_colors.dart';
import 'package:unsplash_clone/theme/app_typhography.dart';
import 'package:unsplash_clone/util/mixin/toast_message_mixin.dart';
import 'package:unsplash_clone/util/widget/loading_overlay.dart';
import 'package:unsplash_clone/util/widget/loading_overlay_view_model.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with ToastMessageMixin, TickerProviderStateMixin {
  late TabController _tabController;
  late final MainPageViewModel _mainPageViewModel;
  final _loadingOverlayViewModel = LoadingOverlayViewModel();

  @override
  void initState() {
    super.initState();

    _initProperties();
    _addListeners();
    _addPostFrameCallBack();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _removeListeners();

    super.dispose();
  }

  void _initProperties() {
    _mainPageViewModel = context.read<MainPageViewModel>();
    _tabController = TabController(length: 1, vsync: this);
  }

  void _addListeners() {
    _mainPageViewModel.listTopicsDtosListenable.addListener(_refreshWidget);
  }

  void _removeListeners() {
    _mainPageViewModel.listTopicsDtosListenable.removeListener(_refreshWidget);
  }

  void _addPostFrameCallBack() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _mainPageViewModel.fetchListTopics();
      }
    });
  }

  void _refreshWidget() {
    setState(() {
      _tabController.dispose();
      _tabController = TabController(
        length: _mainPageViewModel.listTopicsDtos.length + 1,
        vsync: this,
      );
    });
  }

  Widget _buildLoadOverlay() {
    return LoadingOverlay(loadingOverlayViewModel: _loadingOverlayViewModel);
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      title: Text(
        'Unsplash',
        style: AppTypography.shared.heading_heading2(AppColors.fg_on_contrast),
      ),
      backgroundColor: AppColors.bg_contrast,
      surfaceTintColor: AppColors.bg_contrast,
      centerTitle: true,
      toolbarHeight: 40,
    );
  }

  Widget _buildTab(String title) {
    return Tab(
      height: 30,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Text(
          title,
        ),
      ),
    );
  }

  List<Widget> _buildTopicPhotosTap() {
    return _mainPageViewModel.listTopicsDtos.map((element) {
      return _buildTab(element.title);
    }).toList();
  }

  Widget _buildTabBar() {
    return TabBar(
      isScrollable: true,
      controller: _tabController,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      labelPadding: EdgeInsets.zero,
      indicatorPadding: EdgeInsets.zero,
      tabAlignment: TabAlignment.start,
      labelStyle:
          AppTypography.shared.label_sm_semiBold(AppColors.fg_on_contrast),
      unselectedLabelStyle:
          AppTypography.shared.label_sm_semiBold(AppColors.fg_on_contrast),
      indicatorColor: AppColors.fg_on_contrast,
      dividerColor: AppColors.fg_subtle,
      dividerHeight: 0.5,
      overlayColor: const WidgetStatePropertyAll(Colors.transparent),
      tabs: [
        _buildTab('보도/편집 전용'),
        ..._buildTopicPhotosTap(),
      ],
    );
  }

  Widget _buildReportEditOnlyScreen() {
    return Provider(
      create: (context) => ReportEditOnlyScreenViewModel(),
      child: const ReportEditOnlyScreen(),
    );
  }

  List<Widget> _buildTopicPhotosScreen() {
    return _mainPageViewModel.listTopicsDtos.map((element) {
      return Provider(
        create: (context) => TopicPhotosScreenViewModel(),
        child: TopicPhotosScreen(
          topicId: element.id,
          title: element.title,
          description: element.description,
        ),
      );
    }).toList();
  }

  Widget _buildTabBarView() {
    return Expanded(
      child: TabBarView(
        controller: _tabController,
        children: [
          _buildReportEditOnlyScreen(),
          ..._buildTopicPhotosScreen(),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return SafeArea(
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildTabBar(),
              _buildTabBarView(),
            ],
          ),
          _buildLoadOverlay(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      backgroundColor: AppColors.bg_contrast,
      body: _buildBody(),
    );
  }
}
