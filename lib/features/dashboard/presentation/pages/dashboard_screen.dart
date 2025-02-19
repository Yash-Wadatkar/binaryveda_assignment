import 'package:cached_network_image/cached_network_image.dart';
import 'package:dashboard_ui_assignment/core/constants/app_icons.dart';
import 'package:dashboard_ui_assignment/core/constants/app_images.dart';
import 'package:dashboard_ui_assignment/core/constants/app_strings.dart';
import 'package:dashboard_ui_assignment/core/dependency_injection_container/di_injectable.dart';
import 'package:dashboard_ui_assignment/core/theme/app_color_pallet.dart';
import 'package:dashboard_ui_assignment/core/theme/app_font.dart';
import 'package:dashboard_ui_assignment/features/dashboard/domain/entity/upload_data_entity.dart';
import 'package:dashboard_ui_assignment/features/dashboard/presentation/bloc/dash_board_bloc.dart';
import 'package:dashboard_ui_assignment/features/dashboard/presentation/cubit/dash_board_cubit.dart';
import 'package:dashboard_ui_assignment/features/dashboard/presentation/widgets/color_pallet_bar_widget.dart';
import 'package:dashboard_ui_assignment/features/dashboard/presentation/widgets/custom_app_bar_widget.dart';
import 'package:dashboard_ui_assignment/features/dashboard/presentation/widgets/custom_switch_widget.dart';
import 'package:dashboard_ui_assignment/features/dashboard/presentation/widgets/show_snackbar_widget.dart';
import 'package:dashboard_ui_assignment/features/dashboard/presentation/widgets/social_media_icons_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>
    with SingleTickerProviderStateMixin {
  late DashBoardBloc tabBarContentBloc;
  late DashBoardBloc tabBarBloc;
  late DashBoardCubit tabBarCubit;
  late DashBoardCubit tabBarContentCubit;
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    tabBarCubit = getIt<DashBoardCubit>();
    tabBarContentCubit = getIt<DashBoardCubit>();
    // tabBarContentBloc = DashBoardBloc();
    //  tabBarBloc = DashBoardBloc();
    tabBarContentCubit.loadDashBoardPhotos();
    // tabBarContentBloc.add(LoadDashBoardPhotosEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColorPallet.whiteColor,
        appBar: CustomAppBarWidget(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _profileButton(
                          icon: AppIcons.icUploadIcon, text: AppStrings.upload),
                      Column(
                        children: [
                          Image.asset(
                            AppImages.profilePic,
                            height: 127,
                            width: 127,
                          ),
                          Text(
                            AppStrings.uerName, // Fixed typo
                            overflow: TextOverflow.ellipsis,
                            style: AppFonts.barlow(
                              fontSize: 36,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                      _profileButton(
                          icon: AppIcons.icEditIcon, text: AppStrings.edit),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppStrings.myDashboard,
                        overflow: TextOverflow.ellipsis,
                        style: AppFonts.barlowCondensed(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      CustomSwitch(
                        initialValue: true,
                        onChanged: (value) {},
                      )
                    ],
                  ),
                ),
                Divider(thickness: 2, color: AppColorPallet.dividerColor),
                Padding(
                  padding: const EdgeInsets.only(top: 9, bottom: 11),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildStatColumn(
                          AppStrings.noOfFollowers, AppStrings.followers),
                      _buildStatColumn(
                          AppStrings.noOfArtWork, AppStrings.artworks),
                      _buildStatColumn(
                          AppStrings.noOfExibition, AppStrings.exhibitions),
                    ],
                  ),
                ),
                Divider(thickness: 2, color: AppColorPallet.dividerColor),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialMediaIconsWidget(
                      icon: AppIcons.icFavoriteIcon,
                      numbers: AppStrings.noOfLikes,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: SocialMediaIconsWidget(
                        icon: AppIcons.icShareIcon,
                        numbers: AppStrings.noOfShares,
                      ),
                    ),
                    SocialMediaIconsWidget(
                      icon: AppIcons.icBluetoothIcon,
                      numbers: AppStrings.noOfBluetoothShares,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 21, bottom: 24),
                  child: ColorPalletBarWidget(),
                ),
                BlocBuilder<DashBoardCubit, DashBoardCubitState>(
                  bloc: tabBarCubit,
                  builder: (context, state) {
                    final selectedIndex = state.maybeWhen(
                      /// If state is ToggleTabBar, use its index
                      toggleTabBar: (index) => index,

                      /// Default to 0 if state is something else
                      orElse: () => 0,
                    );

                    //   (state is ToggleTabBarState) ? state.index : 0;

                    return TabBar(
                      onTap: (index) {
                        tabBarCubit.toggleTabBar(index: index);
                      },
                      labelStyle: AppFonts.barlow(
                          fontWeight: FontWeight.w500, fontSize: 14),
                      indicatorWeight: 1,
                      indicatorPadding: EdgeInsets.symmetric(vertical: 5),
                      labelColor: Colors.black,
                      indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(
                          color: AppColorPallet.indicatorColor,
                          width: 2,
                        ),
                        insets: EdgeInsets.symmetric(horizontal: -10),
                      ),
                      unselectedLabelColor:
                          AppColorPallet.unselectedTabTextColor,
                      dividerColor: Colors.transparent,
                      controller: tabController,
                      tabs: [
                        _buildTab(
                          index: 0,
                          selectedIndex: selectedIndex,
                          text: AppStrings.uploads,
                          icon: AppIcons.icUploadIcon,
                        ),
                        _buildTab(
                          index: 1,
                          selectedIndex: selectedIndex,
                          text: AppStrings.exhibitions,
                          icon: AppIcons.icExibitionIcon,
                        ),
                        _buildTab(
                          index: 2,
                          selectedIndex: selectedIndex,
                          text: AppStrings.revenue,
                          icon: AppIcons.icRevenueIcon,
                        ),
                      ],
                    );
                  },
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.5,
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      BlocConsumer<DashBoardCubit, DashBoardCubitState>(
                        bloc: tabBarContentCubit,
                        listenWhen: (previous, current) {
                          return current.maybeWhen(
                            errorState: (errorMessage) => true,
                            orElse: () => false,
                          );
                        },
                        buildWhen: (previous, current) {
                          return current.maybeWhen(
                            dataSuccessfullyLoaded: (uploadDataEntity) => true,
                            orElse: () => false,
                          );
                        },
                        builder: (context, state) {
                          return state.maybeWhen(
                              dataSuccessfullyLoaded: (uploadDataEntity) =>
                                  _buildUploadsContent(
                                      uploadData: uploadDataEntity),
                              orElse: () => SizedBox());
                        },
                        listener: (BuildContext context, state) {
                          state.maybeWhen(
                              errorState: (errorMessage) =>
                                  showSnackBAR(context, errorMessage),
                              orElse: () => false);
                          // switch (state.runtimeType) {
                          //   case const (DashBoardCubitState.errorState):
                          //     final errorMessage =
                          //         (state as DashBoardFailureState).errorMessage;
                          //     showSnackBAR(context, errorMessage);
                          // }
                        },
                      ),
                      _buildExhibitionsContent(),
                      _buildRevenueContent(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  /// Widget for displaying buttons on profile section
  Widget _profileButton({required String icon, required String text}) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(icon),
        ),
        Text(
          text,
          overflow: TextOverflow.ellipsis,
          style: AppFonts.barlowCondensed(
            fontSize: 14,
            fontWeight: FontWeight.w300,
            color: AppColorPallet.purpleColor,
          ),
        ),
      ],
    );
  }

  /// Builds the content for the uploads tab
  Widget _buildUploadsContent({required List<UploadDataEntity> uploadData}) {
    return GridView.builder(
      itemCount: uploadData.length,
      shrinkWrap: true,
      padding: EdgeInsets.all(12),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.98,
        crossAxisSpacing: 6.38,
        mainAxisSpacing: 6,
      ),
      itemBuilder: (context, index) {
        final item = uploadData[index];
        return CachedNetworkImage(
          imageUrl: item.thumbnailUrl,
          placeholder: (context, url) =>
              Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) {
            return Container(
                decoration: BoxDecoration(color: AppColorPallet.dividerColor),
                child: Icon(
                  Icons.error_outline,
                  color: Colors.grey,
                ));
          },
          fit: BoxFit.cover,
        );
      },
    );
  }

  /// Builds the content for the exhibitions tab
  Widget _buildExhibitionsContent() {
    return Center(
        child: Text(
      'Exhibitions Content',
      overflow: TextOverflow.ellipsis,
    ));
  }

  /// Builds the content for the exhibitions tab
  Widget _buildRevenueContent() {
    return Center(
        child: Text(
      'Revenue Content',
      overflow: TextOverflow.ellipsis,
    ));
  }

  /// widget for displaying the tabs of tabbar
  Widget _buildTab({
    required int index,
    required int selectedIndex,
    required String text,
    required String icon,
  }) {
    return Tab(
      text: text,
      icon: SvgPicture.asset(
        icon,
        // ignore: deprecated_member_use
        color: selectedIndex == index
            ? Colors.black
            : AppColorPallet.unselectedTabTextColor,
      ),
    );
  }

  /// widget to show user stats
  Widget _buildStatColumn(String number, String label) {
    return Column(
      children: [
        Text(
          number,
          overflow: TextOverflow.ellipsis,
          style: AppFonts.barlowCondensed(
              fontSize: 24, fontWeight: FontWeight.w300),
        ),
        Text(
          label,
          overflow: TextOverflow.ellipsis,
          style: AppFonts.barlowCondensed(
              fontSize: 14, fontWeight: FontWeight.w300),
        ),
      ],
    );
  }
}
