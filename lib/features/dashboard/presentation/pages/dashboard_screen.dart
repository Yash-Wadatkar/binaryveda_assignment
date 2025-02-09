import 'package:cached_network_image/cached_network_image.dart';
import 'package:dashboard_ui_assignment/core/constants/app_icons.dart';
import 'package:dashboard_ui_assignment/core/constants/app_images.dart';
import 'package:dashboard_ui_assignment/core/constants/app_strings.dart';
import 'package:dashboard_ui_assignment/core/theme/app_color_pallet.dart';
import 'package:dashboard_ui_assignment/core/theme/app_font.dart';
import 'package:dashboard_ui_assignment/features/dashboard/domain/entity/upload_data_entity.dart';
import 'package:dashboard_ui_assignment/features/dashboard/presentation/bloc/dash_board_bloc.dart';
import 'package:dashboard_ui_assignment/features/dashboard/presentation/widgets/color_pallet_bar_widget.dart';
import 'package:dashboard_ui_assignment/features/dashboard/presentation/widgets/custom_app_bar_widget.dart';
import 'package:dashboard_ui_assignment/features/dashboard/presentation/widgets/custom_switch_widget.dart';
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
  late DashBoardBloc dashBoardBloc;
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);

    dashBoardBloc = DashBoardBloc();
    dashBoardBloc.add(LoadDashBoardPhotosEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorPallet.whiteColor,
      appBar:
          CustomAppBarWidget(), // Ensure this widget is implemented correctly
      body: BlocConsumer<DashBoardBloc, DashBoardState>(
        buildWhen: (previous, current) => current is! DashBoardListnerState,
        listenWhen: (previous, current) => current is DashBoardListnerState,
        listener: (context, state) {},
        builder: (context, state) {
          switch (state.runtimeType) {
            case const (DashBoardInitial):
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30, bottom: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: SvgPicture.asset(AppIcons.icUploadIcon),
                                ),
                                Text(
                                  AppStrings.upload,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppFonts.barlowCondensed(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: AppColorPallet.purpleColor,
                                  ),
                                ),
                              ],
                            ),
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
                            Column(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: SvgPicture.asset(AppIcons.icEditIcon),
                                ),
                                Text(
                                  AppStrings.edit,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppFonts.barlowCondensed(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                    color: AppColorPallet.purpleColor,
                                  ),
                                ),
                              ],
                            ),
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
                            _buildStatColumn(AppStrings.noOfExibition,
                                AppStrings.exhibitions),
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
                      TabBar(
                        labelStyle: AppFonts.barlow(
                            fontWeight: FontWeight.w500, fontSize: 14),
                        indicatorWeight: 1,
                        indicatorPadding: EdgeInsets.symmetric(vertical: 5),
                        labelColor: Colors.black,
                        indicator: UnderlineTabIndicator(
                            borderSide: BorderSide(
                              color: AppColorPallet.indicatorColor,
                              width: 2,
                            ), // Set thickness & color
                            insets: EdgeInsets.symmetric(horizontal: -10)),

                        unselectedLabelColor:
                            AppColorPallet.unselectedTabTextColor,
                        dividerColor: Colors.transparent,

                        controller: tabController, // Add the TabController
                        tabs: [
                          _buildTab(
                            index: 0,
                            text: AppStrings.uploads,
                            icon: AppIcons.icUploadIcon,
                          ),
                          _buildTab(
                            index: 1,
                            text: AppStrings.exhibitions,
                            icon: AppIcons.icExibitionIcon,
                          ),
                          _buildTab(
                            index: 2,
                            text: AppStrings.revenue,
                            icon: AppIcons.icRevenueIcon,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.5,
                        child: TabBarView(
                          controller: tabController,
                          children: [
                            BlocBuilder<DashBoardBloc, DashBoardState>(
                              bloc: dashBoardBloc,
                              buildWhen: (previous, current) => current
                                  is DashBoardDataSuccessfullyFetchedState,
                              builder: (context, state) {
                                switch (state.runtimeType) {
                                  case const (DashBoardDataSuccessfullyFetchedState):
                                    final dashBoardDataSuccessState = state
                                        as DashBoardDataSuccessfullyFetchedState;
                                    return _buildUploadsContent(
                                        uploadData: dashBoardDataSuccessState
                                            .uploadDataEntity);

                                  default:
                                    return SizedBox();
                                }
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
              );

            default:
              return Center(child: Text('Oops something went wrong '));
          }
        },
      ),
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
                decoration: BoxDecoration(color: Colors.grey),
                child: Icon(Icons.error));
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
  Widget _buildTab(
      {required int index, required String text, required String icon}) {
    return Tab(
      text: text,
      icon: SvgPicture.asset(
        icon,
        // ignore: deprecated_member_use
        color: tabController.index == index
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
