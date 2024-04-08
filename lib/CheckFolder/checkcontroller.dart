// import 'package:dealsabaadproject/Models/SingleDealsModel/singledealmodel.dart';
// import 'package:dealsabaadproject/Network/network.dart';
// import 'package:dio/dio.dart';
// import 'package:get/get.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:video_player/video_player.dart';

// class SingleDealController extends GetxController {
//   var selectflorOption = "".obs; // Initialize with a default value
//   var selectflorDropdown = [].obs;
//   var selectunitOption = "".obs;
//   var selectunitDropdown = [];
//   // var selectflorOption =
//   //     "Select Packaging".obs; // Initialize with a default value
//   // var selectflorDropdown = ["Select Packaging", "Packaging", "connection"].obs;
//   late VideoPlayerController controller;
//   late Future<void> initializeVideoPlayerFuture;
//   SingleDealsModel? singleDealsModel;
//   // List<SingleDealController>? singleDealsModel;
//   // int _counter = 0;
//   RxBool isLoading = false.obs;
//   var data = '''''';
//   var dio = Dio();
//   var response;

//   // Define _kGoogLePlex and _list here
//   static final CameraPosition kGoogLePlex = CameraPosition(
//     target: LatLng(24.9056, 67.0822),
//     zoom: 14,
//   );
//   List<String> dropdownlist = [];
//   List<Marker> _marker = [];
//   List<Marker> get markers => _list;

//   List<Marker> _list = const [
//     Marker(
//       markerId: MarkerId("1"),
//       position: LatLng(24.9345872, 67.099281),
//       infoWindow: InfoWindow(title: "My Current position"),
//     ),
//     Marker(
//       markerId: MarkerId("2"),
//       position: LatLng(24.9056, 67.0822),
//       infoWindow: InfoWindow(title: "Saddar"),
//     ),
//     Marker(
//       markerId: MarkerId("3"),
//       position: LatLng(24.9056, 67.0822),
//       infoWindow: InfoWindow(title: "defence"),
//     ),
//     Marker(
//       markerId: MarkerId("4"),
//       position: LatLng(24.9056, 67.0822),
//       infoWindow: InfoWindow(title: "Tariq Road"),
//     ),
//   ];
//   int get differenceInDays => _calculateDifference();
//   Future<SingleDealsModel?> onSubmit(String idcheck) async {
//     isLoading.value = true; // Start loading
//     try {
//       response = await dio.request(
//         'http://dealsabaad.com:5001/deal/get/$idcheck',
//         options: Options(
//           method: 'GET',
//         ),
//         data: data,
//       );

//       if (response.statusCode == 200) {
//         // Map<String, dynamic> responseData = response.data;

//         singleDealsModel = SingleDealsModel.fromJson(response.data);
//         print("bannermodel!.userId ${singleDealsModel!.id}");

//         print("banner model ===========> $singleDealsModel");
//         //

//         for (int a = 0; a < singleDealsModel!.dealInventory!.length; a++) {
//           String floorName = singleDealsModel!
//               .dealInventory![a].inventory!.floors!.name
//               .toString();
//           // String unitNo =
//           //     singleDealsModel!.dealInventory![a].inventory!.unitno.toString();

//           // Check if the floorName is not already present in the dropdown list
//           if (!selectflorDropdown.contains(floorName)) {
//             selectflorDropdown.add(floorName);
//           }
//           // if (!selectunitDropdown.contains(unitNo)) {
//           //   selectunitDropdown.add(unitNo);
//           // }
//           // Check if the unitNo is not already present in the dropdown list
//         }

// // If the dropdown list is empty after adding all the names,
// // set the selectflorOption to "Please Select"
//         if (selectflorDropdown.isEmpty) {
//           selectflorDropdown.add("Please Select");
//         }

//         // if (selectunitDropdown.isEmpty) {
//         //   selectunitDropdown.add("Please Select");
//         // }

// // Set the selectflorOption to the first item in the dropdown list
//         selectflorOption.value = selectflorDropdown[0];

// // Set the selectunitOption to the first item in the dropdown list

//         // selectunitOption.value = selectunitDropdown[0];

//         print(singleDealsModel!.name.toString());
//       } else {
//         print("Error: ${response.statusMessage}");
//       }
//     } catch (error) {
//       print("Error: $error");
//     } finally {
//       isLoading.value = false; // Stop loading
//     }
//   }

//   // void changefloorOption(String option) {
//   //   selectflorOption.value = option;

//   //   // Clear the unit dropdown list
//   //   // selectunitDropdown.clear();

//   //   // // Iterate through the dealInventory to find the selected floor ID
//   //   // for (int i = 0; i < singleDealsModel!.dealInventory!.length; i++) {
//   //   //   String floorId =
//   //   //       singleDealsModel!.dealInventory![i].inventory!.floorId.toString();
//   //   //   if (selectflorOption.value == floorId) {
//   //   //     // If the selected floor ID matches the current floor ID, add the unit number to the dropdown
//   //   //     String unitNo =
//   //   //         singleDealsModel!.dealInventory![i].inventory!.unitno.toString();
//   //   //     selectunitDropdown.add(unitNo);
//   //   //     // selectunitOption.value = selectunitDropdown[0];
//   //   //   }
//   //   //   String unitNo =
//   //   //       singleDealsModel!.dealInventory![i].inventory!.unitno.toString();
//   //   //   if (!selectunitDropdown.contains(unitNo)) {
//   //   //     selectunitDropdown.add(unitNo);
//   //   //   }
//   //   // }
//   //   // selectunitOption.value = selectunitDropdown[0];
//   //   // // If no unit numbers were found for the selected floor, add a placeholder
//   //   // if (selectunitDropdown.isEmpty) {
//   //   //   selectunitDropdown.add("Please Select");
//   //   // }

//   //   // Set the selectunitOption to the first item in the dropdown list
//   //   // selectunitOption.value = selectunitDropdown[0];
//   // }

//   void changefloorOption(String option) {
//     if (option != "please select") {
//       selectflorDropdown.clear(); // Clear the existing dropdown items

//       for (int i = 0; i < singleDealsModel!.dealInventory!.length; i++) {
//         // Check if the current floor ID matches the selected option
//         if (option ==
//             singleDealsModel!.dealInventory![i].inventory!.floorId.toString()) {
//           // Add the floor name to the dropdown list if it's not already present
//           String floorName = singleDealsModel!
//               .dealInventory![i].inventory!.floors!.name
//               .toString();
//           if (!selectflorDropdown.contains(floorName)) {
//             selectflorDropdown.add(floorName);
//           }
//         }
//       }

//       // Insert "Please Select" option if the dropdown is empty
//       if (selectflorDropdown.isEmpty) {
//         selectflorDropdown.add("Please Select");
//       }

//       // Set the selected floor option to the first item in the dropdown
//       selectflorOption.value = selectflorDropdown[0];
//     }
//   }

//   // void changeunitOption(String option) {
//   //   selectunitOption.value = option;
//   // }

//   // void changeunitOption(String option) {
//   //   selectunitOption.value = option;
//   //   if (selectflorOption.value != "please select") {
//   //     for (int i = 0; i < singleDealsModel!.dealInventory!.length; i++) {
//   //       if (selectflorOption.value ==
//   //           singleDealsModel!.dealInventory![1].inventory!.floorId.toString()) ;
//   //       if (selectunitOption.value ==
//   //           singleDealsModel!.dealInventory![1].inventory!.unitno) ;
//   //     }
//   //   }
//   // }

//   void changeunitOption(String option) {
//     selectunitOption.value = option;
//     // if (selectflorOption.value != "please select") {
//     //   for (int i = 0; i < singleDealsModel!.dealInventory!.length; i++) {
//     //     //   // Check karein ki selectflorOption ka value current loop ke floor ID ke saath match karta hai ya nahi
//     //     //   if (selectflorOption.value ==
//     //     //       singleDealsModel!.dealInventory![i].inventory!.floorId.toString()) {
//     //     //     // Agar match hota hai, toh selectunitOption ko update karein
//     //     //     selectunitOption.value =
//     //     //         singleDealsModel!.dealInventory![i].inventory!.unitno.toString();
//     //     //     break; // Loop ko break karein kyonki ek hi unit number mil gaya hai
//     //     //   }
//     //     if (selectflorOption.value ==
//     //         singleDealsModel!.dealInventory![i].inventory!.floors!.name
//     //             .toString()) {}
//     //   }
//     // }

//     // if (selectflorOption.value != "please select") {
//     //   for (int i = 0; i < singleDealsModel!.dealInventory!.length; i++) {
//     //     // // Check karein ki selectflorOption ka value current loop ke floor ID ke saath match karta hai ya nahi
//     //     if (selectflorOption.value ==
//     //         singleDealsModel!.dealInventory![i].inventory!.floorId.toString()) {
//     //       // if (selectflorDropdown.value.isEmpty) {
//     //       //   selectflorDropdown.insert(0, "Please Select");
//     //       // }
//     //       selectflorDropdown
//     //           .add(singleDealsModel!.dealInventory![i].inventory!.floors!.name);
//     //       //   // Agar match hota hai, toh selectunitOption ko update karein
//     //       //   selectunitOption.value =
//     //       //       singleDealsModel!.dealInventory![i].inventory!.unitno.toString();
//     //       //   break; // Loop ko break karein kyonki ek hi unit number mil gaya hai
//     //     }
//     //   }
//     //   selectflorOption.value = selectflorDropdown[0];
//     // }
//   }

//   // newfun(newValue) {
//   //   for (int a = 0; a < singleDealsModel!.dealInventory!.length; a++) {
//   //     if (singleDealsModel!.dealInventory![a].inventory!.floors!.name ==
//   //         newValue) {
//   //       for (int i = 0;
//   //           i < singleDealsModel!.dealInventory![a].inventory!.unitno!.length;
//   //           i++) {
//   //         dropdownlist.add(singleDealsModel!
//   //             .dealInventory![a].inventory!.unitno!
//   //             .toString());
//   //       }
//   //     }
//   //   }
//   //   print(dropdownlist);
//   // }

//   void newfun(newValue) {
//     // Clear the dropdownlist before populating it
//     dropdownlist.clear();

//     for (int a = 0; a < singleDealsModel!.dealInventory!.length; a++) {
//       if (singleDealsModel!.dealInventory![a].inventory!.floors!.name ==
//           newValue) {
//         for (int i = 0;
//             i < singleDealsModel!.dealInventory![a].inventory!.unitno!.length;
//             i++) {
//           String unitNo = singleDealsModel!
//               .dealInventory![a].inventory!.unitno![i]
//               .toString();

//           // Check if the unit number already exists in the dropdownlist
//           if (!dropdownlist.contains(unitNo)) {
//             dropdownlist.add(unitNo);
//           }
//         }
//       }
//     }
//     print(dropdownlist);
//   }

//   @override
//   void onInit() {
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

//   int _calculateDifference() {
//     if (singleDealsModel != null &&
//         singleDealsModel!.startDate != null &&
//         singleDealsModel!.endDate != null) {
//       DateTime startDate = DateTime.parse(singleDealsModel!.startDate!);
//       DateTime endDate = DateTime.parse(singleDealsModel!.endDate!);
//       return endDate.difference(startDate).inDays;
//     } else {
//       return 0; // Return default value if dates are null
//     }
//   }
// }
