import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guitar_shop/core/manager/assets_manager.dart';
import 'package:guitar_shop/core/manager/color_manager.dart';
import 'package:guitar_shop/core/widgets/custom_text.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("About Us")),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(
          16,
          30,
          16,
          16,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomText(
                title: "About us",
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
              const SizedBox(height: 30),
              const CustomText(
                  title:
                      "International Brands. Great Discounts . All musical Instrument with great after service. Do like our page for updates."),
              const SizedBox(height: 30),
              const CustomText(
                  title:
                      "Our Vision: Empowering Musicians to create. \nOur Mission: \n》To establish Guitar Shop as one-stop solution for all your musical needs. \n 》To be the largest and the best destination for musical brands. \n 》To be the best and largest music store chain in Nepal. Established: Since 2008"),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: ColorManager.profileBg,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          AssetManager.svgLogo,
                          height: 32,
                          width: 32,
                        ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            CustomText(
                              title: "Guitar Shop Nepal",
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                            SizedBox(height: 8),
                            CustomText(
                              title: "Geetanjali Chowk, Kathmandu",
                              fontSize: 14,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const CustomText(
                      title: "01-5907863 ",
                    ),
                    const CustomText(
                      title: "info@guitarshop.com.np",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
