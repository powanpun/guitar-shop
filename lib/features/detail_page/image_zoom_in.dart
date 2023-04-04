import 'package:flutter/material.dart';
import 'package:guitar_shop/core/manager/color_manager.dart';

class ImageZoomPage extends StatefulWidget {
  final List<String> images;
  final String position;
  const ImageZoomPage(
      {super.key, required this.images, required this.position});

  @override
  State<ImageZoomPage> createState() => _ImageZoomPageState();
}

class _ImageZoomPageState extends State<ImageZoomPage> {
  late ValueNotifier<String> selectedImage;
  late ValueNotifier<int> selectedPosition;
  @override
  void initState() {
    selectedPosition = ValueNotifier(int.parse(widget.position));

    selectedImage = ValueNotifier(widget.images[selectedPosition.value]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.profileBg,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.close))
                ],
              ),
              ValueListenableBuilder(
                valueListenable: selectedImage,
                builder: (context, value, child) {
                  return Expanded(
                      child: InteractiveViewer(
                          child: Image.network(
                    selectedImage.value,
                    fit: BoxFit.contain,
                  )));
                },
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 40),
                width: double.infinity,
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.images.length,
                  itemBuilder: (context, index) {
                    return ValueListenableBuilder(
                      valueListenable: selectedPosition,
                      builder: (context, value, child) {
                        return Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: (index == selectedPosition.value)
                                    ? ColorManager.primary
                                    : ColorManager.profileBg,
                              )),
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          width: 100,
                          height: 100,
                          child: GestureDetector(
                            onTap: () {
                              selectedPosition.value = index;
                              selectedImage.value =
                                  widget.images[selectedPosition.value];
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                widget.images[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              )
            ],
          ),
        ));
  }
}
