import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guitar_shop/core/manager/color_manager.dart';
import 'package:guitar_shop/core/widgets/cached_network_image.dart';
import 'package:guitar_shop/core/widgets/custom_text.dart';
import 'package:guitar_shop/data_layer/api_url/api_url.dart';
import 'package:guitar_shop/features/profile/bloc/profile_bloc.dart';
import 'package:guitar_shop/features/profile/profile_page/profile_page.dart';
import 'package:package_info_plus/package_info_plus.dart';

class LoggedInProfileUI extends StatefulWidget {
  const LoggedInProfileUI({super.key});

  @override
  State<LoggedInProfileUI> createState() => _LoggedInProfileState();
}

class _LoggedInProfileState extends State<LoggedInProfileUI> {
  PackageInfo _packageInfo = PackageInfo(
    appName: 'Unknown',
    packageName: 'Unknown',
    version: '',
    buildNumber: 'Unknown',
    buildSignature: 'Unknown',
    installerStore: 'Unknown',
  );
  @override
  void initState() {
    context.read<ProfileBloc>().add(const GetUserProfile());
    getPackageInfo();
    super.initState();
  }

  void getPackageInfo() async {
    try {
      PackageInfo info = await PackageInfo.fromPlatform();
      setState(() {
        _packageInfo = info;
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // profile header
          GestureDetector(
            onTap: () {
              // context.push(AppRoutes.editProfilePage, extra: userModel);
            },
            child: BlocBuilder<ProfileBloc, ProfileState>(
              builder: (context, state) {
                if (state is UserProfileLoaded) {
                  return Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: ColorManager.skyBlue05,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        const ClipOval(
                          child: CustomCachedImage(
                            imageUrl:
                                '${ApiUrl.baseUrl}/web/image?model=res.users&id=8&field=image_1920',
                            height: 48,
                            width: 48,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(state.user.name ?? ""),
                            const SizedBox(height: 5),
                            Text(state.user.email ?? ""),
                          ],
                        ),
                      ],
                    ),
                  );
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
          ),
          const SizedBox(height: 23),
          // options list

          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: ColorManager.white,
              border: Border.all(
                color: ColorManager.profileBg,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                for (ProfilePageTileModel tile in profilePageTiles) ...[
                  ListTile(
                    tileColor: ColorManager.white,
                    contentPadding: EdgeInsets.zero,
                    onTap: () {
                      tile.onPressed(context);
                    },
                    leading: tile.prefix,
                    title: Transform.translate(
                        offset: const Offset(-10, 0),
                        child: CustomText(
                          title: tile.label,
                          color: ColorManager.textDark,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        )),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Color(0xFFE0E0E0),
                    ),
                  ),
                  tile.showDivider == true
                      ? const Divider()
                      : const SizedBox.shrink()
                ]
              ],
            ),
          ),
          const SizedBox(height: 30),
          CustomText(
            title: "App Version ${_packageInfo.version}",
            color: ColorManager.textGrey,
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
          ),
          const SizedBox(height: 100),
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     _infoTile('App name', _packageInfo.appName),
          //     _infoTile('Package name', _packageInfo.packageName),
          //     _infoTile('App version', _packageInfo.version),
          //     _infoTile('Build number', _packageInfo.buildNumber),
          //     _infoTile('Build signature', _packageInfo.buildSignature),
          //     _infoTile(
          //       'Installer store',
          //       _packageInfo.installerStore ?? 'not available',
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
