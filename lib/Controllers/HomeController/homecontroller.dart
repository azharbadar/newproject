import 'package:dealsabaadproject/Models/Homemodels/dealmodel.dart';
import 'package:dealsabaadproject/Models/Homemodels/homemodel.dart';
import 'package:dealsabaadproject/Network/network.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

RxString name = ''.obs;
RxString image = ''.obs;
RxString bgimage = ''.obs;

class HomeController extends GetxController {
  late VideoPlayerController controller;
  late VideoPlayerController controller2;
  late Future<void> initializeVideoPlayerFuture;
  RxBool isLoading = false.obs;
  List<HomeScreenModel>? homeScreenModel;
  List<DealModel>? dealModel;

  onSubmit() {
    isLoading.value = true;
    Network.getApi(null, 'http://dealsabaad.com:5001/category').then((value) {
      print(value);
      if (value != null) {
        // homeScreenModel = HomeScreenModel.fromJson(value);

        // homeScreenModel =
        //     HomeScreenModel.fromJson(Map<String, dynamic>.from(value));

// List<Map<String, dynamic>> homeScreenModel = List<Map<String, dynamic>>.from(value);

        homeScreenModel = List<Map<String, dynamic>>.from(value)
            .map((map) => HomeScreenModel.fromJson(map))
            .toList();
        print(homeScreenModel);
        // image = homeScreenModel[0].backgroundImage
        name.value = homeScreenModel![0].name.toString();
        image.value = homeScreenModel![0].responsiveBannerImage.toString();
        bgimage.value = homeScreenModel![0].backgroundImage.toString();
        isLoading.value = false;
      } else {
        // SnackBar(content: Text("data not found"));
        Get.snackbar("data", "data not found",
            snackPosition: SnackPosition.BOTTOM);
      }
    });
  }

  // @override
  // void initState() {
  //   _controller = VideoPlayerController.network(
  //       "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4");
  //   _controller = VideoPlayerController.asset("videos/sample_video.mp4");
  //   _initializeVideoPlayerFuture = _controller.initialize();
  //   _controller.setLooping(true);
  //   _controller.setVolume(1.0);
  //   super.initState();
  // }

//  check this functions

  // @override
  // void onInit() {
  //   // onSubmit();
  //   // TODO: implement onInit
  //   controller = VideoPlayerController.network(
  //       "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4");
  //   controller = VideoPlayerController.asset("videos/sample_video.mp4");
  //   initializeVideoPlayerFuture = controller.initialize();
  //   controller.setLooping(true);
  //   controller.setVolume(1.0);
  //   super.onInit();
  // }

  // void togglePlayPause() {
  //   if (controller.value.isPlaying) {
  //     controller.pause();
  //   } else {
  //     controller.play();
  //   }
  //   update(); // Notify listeners of changes
  // }

// new function

// second api

  SubmitApiTwo() {
    isLoading.value = true;
    Network.getApi(null, 'http://dealsabaad.com:5001/deal').then((value) {
      print(value);
      if (value != null) {
        // homeScreenModel = HomeScreenModel.fromJson(value);

        // homeScreenModel =
        //     HomeScreenModel.fromJson(Map<String, dynamic>.from(value));

// List<Map<String, dynamic>> homeScreenModel = List<Map<String, dynamic>>.from(value);

//  homeScreenModel = List<Map<String, dynamic>>.from(value)
//             .map((map) => HomeScreenModel.fromJson(map))
//             .toList();

        dealModel = List<Map<String, dynamic>>.from(value)
            .map((map) => DealModel.fromJson(map))
            .toList();
        print(dealModel); // image = homeScreenModel[0].backgroundImage

        isLoading.value = false;
      } else {
        // SnackBar(content: Text("data not found"));
        Get.snackbar("data", "data not found",
            snackPosition: SnackPosition.BOTTOM);
      }
    });
  }

  @override
  void onInit() {
    onSubmit();
    SubmitApiTwo();
    controller = VideoPlayerController.network(
      "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
    );
    initializeVideoPlayerFuture = controller.initialize();
    controller.setLooping(true);
    controller.setVolume(1.0);

    controller2 = VideoPlayerController.network(
      "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
    );
    initializeVideoPlayerFuture = controller2.initialize();
    controller2.setLooping(true);
    controller2.setVolume(1.0);
    super.onInit();
  }

  void togglePlayPause() {
    if (controller.value.isPlaying) {
      controller.pause();
    } else {
      controller.play();
    }
    update(); // Notify listeners of changes
  }

  void togglePlayPause2() {
    if (controller2.value.isPlaying) {
      controller2.pause();
    } else {
      controller2.play();
    }
    update(); // Notify listeners of changes
  }

  @override
  void dispose() {
    controller.dispose();
    controller2.dispose();
    super.dispose();
  }
}

// import 'package:dealsabaadapp/HomeScreen/homemodel.dart';
// import 'package:dealsabaadapp/Network/network.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:video_player/video_player.dart';

// class HomeController extends GetxController {
//   late VideoPlayerController controller;
//   late Future<void> initializeVideoPlayerFuture;

//   RxBool isLoading = false.obs;
//   HomeScreenModel? homeScreenModel;

//   onSubmit() async {
//     isLoading.value = true;

//     Network.getApi(null, "http:dealsabaad.com:5001/category").then(
//       (value) {
//         print("check ");
//         print(value);
//         if (value != null) {
//           homeScreenModel = HomeScreenModel.fromJson(value);
//           print(homeScreenModel);
//         } else {
//           isLoading.value = false;
//           SnackBar(content: Text("snsnns"));
//         }

//         homeScreenModel = HomeScreenModel.fromJson(value);
//         print(homeScreenModel);
//       },
//     );
//   }

//   @override
//   void onInit() {
//     onSubmit();

//     controller = VideoPlayerController.network(
//       "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
//     );
//     initializeVideoPlayerFuture = controller.initialize();
//     controller.setLooping(true);
//     controller.setVolume(1.0);
//     super.onInit();
//   }

//   void togglePlayPause() {
//     if (controller.value.isPlaying) {
//       controller.pause();
//     } else {
//       controller.play();
//     }
//     update(); // Notify listeners of changes
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }
// }
