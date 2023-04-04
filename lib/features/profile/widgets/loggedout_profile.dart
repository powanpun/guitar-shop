import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:guitar_shop/core/app_controller/router/router_manager.dart';
import 'package:guitar_shop/core/manager/color_manager.dart';
import 'package:guitar_shop/core/widgets/custom_button.dart';
import 'package:guitar_shop/core/widgets/custom_text.dart';
import 'package:guitar_shop/features/profile/profile_page/profile_page.dart';
import 'package:package_info_plus/package_info_plus.dart';

class LoggedOutProfileUI extends StatefulWidget {
  const LoggedOutProfileUI({Key? key}) : super(key: key);

  @override
  State<LoggedOutProfileUI> createState() => _LoggedOutProfileUIState();
}

class _LoggedOutProfileUIState extends State<LoggedOutProfileUI> {
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
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: ColorManager.skyBlue05,
            borderRadius: BorderRadius.circular(10),
          ),
          child: SizedBox(
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: CustomText(
                      title: 'Login or Signup to view your complete profile',
                      color: ColorManager.textDark,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  width: 32,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () async {
                      context.push(AppRoutes.loginPageRoute);
                    },
                    child: CustomBottom(
                      text: "Login/Signup",
                      radius: 10,
                      padding: 16,
                      textColor: ColorManager.white,
                      backgroundColor: ColorManager.textDark,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 20),
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
                if (tile.showAlways) ...{
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
                }
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
      ],
    );
  }
}
