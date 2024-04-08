import 'package:dealsabaadproject/Models/CategoryModel/categorymodel.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

// class BannerController extends GetxController {
//   RxBool isLoading = false.obs;
//   BannerModel? bannermodel;
//   var response;
//   // List<BannerModel>? bannermodel;
// //  List<DealModel>? dealModel;
//   // onSubmit() async {
//   //   isLoading.value = true;
//   //   Network.getApi(null, 'http://dealsabaad.com:5001/deal/get/3').then((value) {
//   //     print(value);
//   //     if (value != null) {
//   //       // bannermodel = List<Map<String, dynamic>>.from(value)
//   //       //     .map((map) => BannerModel.fromjson(map))
//   //       //     .toList();
//   //       // bannermodel =

//   //       //       bannermodel = List<Map<String, dynamic>>.from(value)
//   //       //     .map((map) => BannerModel.fromJson(map))
//   //       //     .toList();
//   //       bannermodel = BannerModel.fromjson(value);
//   //       print(bannermodel);
//   //       // image = homeScreenModel[0].backgroundImage

//   //       isLoading.value = false;
//   //     } else {
//   //       isLoading.value = false;
//   //       // SnackBar(content: Text("data not found"));
//   //       Get.snackbar("data", "data not found",
//   //           snackPosition: SnackPosition.BOTTOM);
//   //     }
//   //   });
//   // }

//   // Future<BannerModel?> onSubmit() async {
//   //   isLoading.value = true;
//   //   try {
//   //     var value =
//   //         await Network.getApi(null, 'http://dealsabaad.com:5001/deal/get/3');
//   //     if (value != null) {
//   //       BannerModel bannerModel = BannerModel.fromjson(
//   //           value); // Assuming you have a method to convert dynamic to BannerModel
//   //       isLoading.value = false;
//   //       return bannerModel;
//   //     } else {
//   //       isLoading.value = false;
//   //       return null;
//   //     }
//   //   } catch (e) {
//   //     isLoading.value = false;
//   //     throw e; // Rethrow the error for the caller to handle
//   //   }
//   // }

//   // Future onSubmit() async {
//   //   isLoading.value = true;

//   //   Network.getApi(
//   //     null,
//   //     'http://dealsabaad.com:5001/deal/get/3',
//   //   ).then(
//   //     (value) {
//   //       if (value != null) {
//   //         bannermodel = BannerModel.fromjson(value);
//   //         print(bannermodel);
//   //         isLoading.value = false;
//   //       } else {
//   //         isLoading.value = false;
//   //         return bannermodel;
//   //       }
//   //     },
//   //   );
//   // }
// // real

//   // Future<BannerModel?> onSubmit(String idcheck) async {
//   //   isLoading.value = true;

//   //   Network.getApi(
//   //     null,
//   //     'http://dealsabaad.com:5001/deal/get/$idcheck',
//   //   ).then((value) {
//   //     if (value != null) {
//   //       // bannermodel = BannerModel.fromjson(value);

//   //       // bannermodel = List<Map<String, dynamic>>.from(value)
//   //       //     .map((map) => BannerModel.fromJson(map))
//   //       //     .toList();
//   //       // bannermodel = List<Map<String, dynamic>>.from(value)
//   //       //     .map((map) => BannerModel.fromjson(map))
//   //       //     .toList()
//   //       //     .cast<BannerModel>();

//   //       print(bannermodel);
//   //       isLoading.value = false;
//   //     } else {
//   //       isLoading.value = false;
//   //       Get.snackbar('Error', 'Data not found');
//   //       return null;
//   //     }
//   //   });
//   // }

//   Future<BannerModel?> onSubmit(String idcheck) async {
//     isLoading.value = true;

//     Network.getApi(
//       null,
//       'http://dealsabaad.com:5001/deal/get/$idcheck',
//     ).then((value) {
//       print(value);
//       if (value != null) {
//         // bannermodel = BannerModel.fromJson(value);
//         // bannermodel = List<Map<String, dynamic>>.from(value)
//         //     .map((map) => BannerModel.fromJson(map))
//         //     .cast<BannerModel>()
//         //     .toList();
//         Map<String, dynamic> responseData = response.data;

//         bannermodel = BannerModel.fromJson(responseData);
//         print("dashBoardModel!.userId ${bannermodel!.userId}");

//         print(bannermodel);
//         isLoading.value = false;
//       } else {
//         isLoading.value = false;
//         Get.snackbar('Error', 'Data not found');
//         return null;
//       }
//     });
//   }

// // original

//   // Future<BannerModel?> onSubmit() async {
//   //   isLoading.value = true;

//   //   final value = await Network.getApi(
//   //     null,
//   //     'http://dealsabaad.com:5001/deal/get/3',
//   //   );

//   //   if (value != null && value['status'] != 0) {
//   //     bannermodel = BannerModel.fromjson(value);
//   //     print(bannermodel);
//   //     return bannermodel;
//   //   } else {
//   // isLoading.value = false;
//   // Get.snackbar('Error', 'Data not found');
//   // return null;
//   //   }
//   // }

//   @override
//   void onInit() {
//     // onSubmit();
//     super.onInit();
//   }
// }

RxString desc = ''.obs;
RxString frontimg = ''.obs;

class CategoryController extends GetxController {
  late VideoPlayerController controller;
  late Future<void> initializeVideoPlayerFuture;
  //  userModel? dashBoardModel;
  CategoryModel? categoryModel;
  // int _counter = 0;
  RxBool isLoading = false.obs;
  var data = '''''';
  var dio = Dio();
  var response;
  // ignore: non_constant_identifier_names

  // Future<BannerModel?> onSubmit(String idcheck) async {
  //   isLoading.value = true;
  //   try {
  //     response = await dio.request(
  //       'http://dealsabaad.com:5001/deal/get/3',
  //       options: Options(
  //         method: 'GET',
  //       ),
  //       data: data,
  //     );

  //     if (response.statusCode == 200) {
  //       Map<String, dynamic> responseData = response.data;

  //       bannermodel = BannerModel.fromJson(responseData);
  //       print("dashBoardModel!.userId ${bannermodel!.userId}");

  //       print("dashboard model ===========> $bannermodel");
  //       print(bannermodel!.name.toString());
  //       print(bannermodel!.price.toString());
  //       isLoading.value = false;
  //     } else {
  //       print("Error: ${response.statusMessage}");
  //     }
  //   } catch (error) {
  //     print("Error: $error");
  //   }
  // }

  Future<CategoryModel?> onSubmit(String idcheck) async {
    isLoading.value = true; // Start loading
    try {
      response = await dio.request(
        'http://dealsabaad.com:5001/category/$idcheck',
        options: Options(
          method: 'GET',
        ),
        data: data,
      );

      if (response.statusCode == 200) {
        Map<String, dynamic> responseData = response.data;

        categoryModel = CategoryModel.fromJson(responseData);
        print("bannermodel!.userId ${categoryModel!.id}");
        desc.value = categoryModel!.dealCategory![0].deal!.desc.toString();
        frontimg.value =
            categoryModel!.dealCategory![1].deal!.frontImage.toString();
        print("banner model ===========> $categoryModel");
        print(
          categoryModel!.name.toString(),
        );
        print(categoryModel!.name.toString());
      } else {
        print("Error: ${response.statusMessage}");
      }
    } catch (error) {
      print("Error: $error");
    } finally {
      isLoading.value = false; // Stop loading
    }
  }

  @override
  void onInit() {
    controller = VideoPlayerController.network(
      "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
    );
    initializeVideoPlayerFuture = controller.initialize();
    controller.setLooping(true);
    controller.setVolume(1.0);
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

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
