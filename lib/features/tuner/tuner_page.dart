import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_audio_capture/flutter_audio_capture.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guitar_shop/core/manager/assets_manager.dart';
import 'package:guitar_shop/core/manager/color_manager.dart';
import 'package:guitar_shop/core/widgets/custom_text.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:pitch_detector_dart/pitch_detector.dart';
import 'package:pitchupdart/instrument_type.dart';
import 'package:pitchupdart/pitch_handler.dart';

class TunnerPage extends StatefulWidget {
  const TunnerPage({super.key});

  @override
  State<TunnerPage> createState() => _TunnerPageState();
}

class _TunnerPageState extends State<TunnerPage> {
  final _audioRecorder = FlutterAudioCapture();
  final pitchDetectorDart = PitchDetector(44100, 2000);
  final pitchupDart = PitchHandler(InstrumentType.guitar);
  final player = AudioPlayer();
  ValueNotifier<Offset> offsets = ValueNotifier(Offset.zero);
  // Offset offset = Offset.zero;
  ValueNotifier<String> currentNote = ValueNotifier("");
  ValueNotifier<String> selectedNote = ValueNotifier("");
  ValueNotifier<double> selectedPitch = ValueNotifier(0.0);
  ValueNotifier<double> pitchDiff = ValueNotifier(0.0);
  ValueNotifier<bool> isHigh = ValueNotifier(false);
  ValueNotifier<bool> isLow = ValueNotifier(false);

  Future<void> _startCapture() async {
    try {
      await _audioRecorder.start(listener, onError,
          sampleRate: 44100, bufferSize: 3000);
    } catch (e) {
      debugPrint(e.toString());
    }
    currentNote.value = "";
  }

  Future<void> _stopCapture() async {
    await _audioRecorder.stop();

    offsets.value = Offset.zero;
  }

  void listener(dynamic obj) {
    //d Gets the audio sample
    var buffer = Float64List.fromList(obj.cast<double>());
    final List<double> audioSample = buffer.toList();

    //Uses pitch_detector_dart library to detect a pitch from the audio sample
    final result = pitchDetectorDart.getPitch(audioSample);

    //If there is a pitch - evaluate it
    if (result.pitched) {
      //Uses the pitchupDart library to check a given pitch for a Guitar
      final handledPitchResult = pitchupDart.handlePitch(result.pitch);
      currentNote.value = handledPitchResult.note;

      double diffValue = selectedPitch.value - result.pitch;
      //Updates the state with the result
      pitchDiff.value = diffValue / 100;
      debugPrint((diffValue / 100).toString());
      if (diffValue / 100 > -5 && diffValue / 100 < 5) {
        offsets.value = Offset(-diffValue / 100, 0);
        isLow.value = false;
        isHigh.value = false;
      }

      if (diffValue / 100 < -5) {
        isHigh.value = true;
      }
      if (diffValue / 100 > 5) {
        isLow.value = true;
      }
    }
  }

  void onError(Object e) {
    debugPrint(e.toString());
  }

  @override
  void initState() {
    checkPermisson();
    super.initState();
  }

  checkPermisson() async {
    PermissionStatus result = await Permission.microphone.request();

    if (result.isGranted) {
      _startCapture();
    } else {}
  }

  @override
  void dispose() {
    player.dispose();
    _stopCapture();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Guitar Tuner"),
          centerTitle: true,
        ),
        backgroundColor: Colors.black,
        body: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              AssetManager.tunerBg,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              width: 1,
              color: ColorManager.tunnerGrey,
            ),
            Center(
              child: Column(children: [
                const SizedBox(
                  height: 60,
                ),
                ValueListenableBuilder(
                    valueListenable: offsets,
                    builder:
                        (BuildContext context, Offset value, Widget? child) {
                      return Center(
                          child: Text(
                        currentNote.value,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold),
                      ));
                    }),
                const SizedBox(
                  height: 10,
                ),
                ValueListenableBuilder(
                  valueListenable: offsets,
                  builder: (BuildContext context, Offset value, Widget? child) {
                    return AnimatedSlide(
                        duration: const Duration(milliseconds: 200),
                        offset: offsets.value,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            SvgPicture.asset(
                              AssetManager.svgPointer,
                              height: 74,
                              width: 74,
                            ),
                            ValueListenableBuilder(
                              valueListenable: pitchDiff,
                              builder: (context, value, child) {
                                return Container(
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.only(top: 8),
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: ColorManager.primary,
                                      borderRadius: BorderRadius.circular(100)),
                                  child: CustomText(
                                    fontSize: 10,
                                    title:
                                        (-pitchDiff.value).toStringAsFixed(1),
                                    color: ColorManager.white,
                                  ),
                                );
                              },
                            )
                          ],
                        ));
                  },
                ),
                Expanded(
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ValueListenableBuilder(
                        valueListenable: isLow,
                        builder: (context, value, child) {
                          return Visibility(
                            visible: isLow.value,
                            child: CustomText(
                              title: 'Too Low!!!',
                              color: ColorManager.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w800,
                            ),
                          );
                        },
                      ),
                      ValueListenableBuilder(
                        valueListenable: isHigh,
                        builder: (context, value, child) {
                          return Visibility(
                            visible: isHigh.value,
                            child: CustomText(
                              title: 'Too High!!!',
                              color: ColorManager.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w800,
                            ),
                          );
                        },
                      )
                    ],
                  )),
                ),
                Stack(
                  children: [
                    Image.asset(
                      AssetManager.guitarHead,
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height / 2,
                      fit: BoxFit.contain,
                    ),
                    Positioned(
                      top: 210,
                      left: MediaQuery.of(context).size.width / 1.22,
                      child: GestureDetector(
                        onTap: () {
                          selectedNote.value = "e";
                          selectedPitch.value = 329.63;

                          player.play(AssetSource('sounds/strings/1e.mp3'));
                        },
                        child: ValueListenableBuilder(
                          valueListenable: selectedNote,
                          builder: (context, value, child) {
                            return Container(
                                height: 50,
                                width: 50,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: (selectedNote.value == "e")
                                        ? Colors.red
                                        : Colors.grey.shade100,
                                    border: Border.all(
                                        color: Colors.black54, width: 2),
                                    borderRadius: BorderRadius.circular(25)),
                                child: Text(
                                  "E",
                                  style: TextStyle(
                                      color: (selectedNote.value == "e")
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ));
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      top: 130,
                      left: MediaQuery.of(context).size.width / 1.22,
                      child: GestureDetector(
                        onTap: () {
                          selectedNote.value = "B";
                          selectedPitch.value = 246.94;

                          player.play(AssetSource('sounds/strings/b.mp3'));
                        },
                        child: ValueListenableBuilder(
                            valueListenable: selectedNote,
                            builder: (context, value, child) {
                              return Container(
                                  height: 50,
                                  width: 50,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: (selectedNote.value == "B")
                                          ? Colors.red
                                          : Colors.grey.shade100,
                                      border: Border.all(
                                          color: Colors.black54, width: 2),
                                      borderRadius: BorderRadius.circular(25)),
                                  child: Text(
                                    "B",
                                    style: TextStyle(
                                        color: (selectedNote.value == "B")
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ));
                            }),
                      ),
                    ),
                    Positioned(
                      top: 50,
                      left: MediaQuery.of(context).size.width / 1.22,
                      child: GestureDetector(
                        onTap: () {
                          selectedNote.value = "G";
                          selectedPitch.value = 196.00;
                          player.play(AssetSource('sounds/strings/g.mp3'));
                        },
                        child: ValueListenableBuilder(
                            valueListenable: selectedNote,
                            builder: (context, value, child) {
                              return Container(
                                  height: 50,
                                  width: 50,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: (selectedNote.value == "G")
                                          ? Colors.red
                                          : Colors.grey.shade100,
                                      border: Border.all(
                                          color: Colors.black54, width: 2),
                                      borderRadius: BorderRadius.circular(25)),
                                  child: Text(
                                    "G",
                                    style: TextStyle(
                                        color: (selectedNote.value == "G")
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ));
                            }),
                      ),
                    ),
                    Positioned(
                      top: 50,
                      left: MediaQuery.of(context).size.width / 18,
                      child: GestureDetector(
                        onTap: () {
                          selectedNote.value = "D";
                          selectedPitch.value = 146.83;
                          player.play(AssetSource('sounds/strings/d.mp3'));
                        },
                        child: ValueListenableBuilder(
                            valueListenable: selectedNote,
                            builder: (context, value, child) {
                              return Container(
                                  height: 50,
                                  width: 50,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: (selectedNote.value == "D")
                                          ? Colors.red
                                          : Colors.grey.shade100,
                                      border: Border.all(
                                          color: Colors.black54, width: 2),
                                      borderRadius: BorderRadius.circular(25)),
                                  child: Text(
                                    "D",
                                    style: TextStyle(
                                        color: (selectedNote.value == "D")
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ));
                            }),
                      ),
                    ),
                    Positioned(
                      top: 130,
                      left: MediaQuery.of(context).size.width / 18,
                      child: GestureDetector(
                        onTap: () {
                          selectedNote.value = "A";
                          selectedPitch.value = 110.00;
                          player.play(AssetSource('sounds/strings/a.mp3'));
                        },
                        child: ValueListenableBuilder(
                            valueListenable: selectedNote,
                            builder: (context, value, child) {
                              return Container(
                                  height: 50,
                                  width: 50,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: (selectedNote.value == "A")
                                          ? Colors.red
                                          : Colors.grey.shade100,
                                      border: Border.all(
                                          color: Colors.black54, width: 2),
                                      borderRadius: BorderRadius.circular(25)),
                                  child: Text(
                                    "A",
                                    style: TextStyle(
                                        color: (selectedNote.value == "A")
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ));
                            }),
                      ),
                    ),
                    Positioned(
                      top: 210,
                      left: MediaQuery.of(context).size.width / 18,
                      child: GestureDetector(
                        onTap: () {
                          selectedNote.value = "E";
                          selectedPitch.value = 82.41;
                          player.play(AssetSource('sounds/strings/e.mp3'));
                        },
                        child: ValueListenableBuilder(
                            valueListenable: selectedNote,
                            builder: (context, value, child) {
                              return Container(
                                  height: 50,
                                  width: 50,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: (selectedNote.value == "E")
                                          ? Colors.red
                                          : Colors.grey.shade100,
                                      border: Border.all(
                                          color: Colors.black54, width: 2),
                                      borderRadius: BorderRadius.circular(25)),
                                  child: Text(
                                    "E",
                                    style: TextStyle(
                                        color: (selectedNote.value == "E")
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ));
                            }),
                      ),
                    ),
                  ],
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
