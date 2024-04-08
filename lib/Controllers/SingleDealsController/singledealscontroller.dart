import 'package:dealsabaadproject/Models/SingleDealsModel/singledealmodel.dart';
import 'package:dealsabaadproject/Network/network.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// double salePrice = 0.0;

class SingleDealController extends GetxController {
  late YoutubePlayerController controller = YoutubePlayerController(
    initialVideoId: 'UjSKASbyVvs',
    flags: const YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );

  // video two
  late YoutubePlayerController controllertwo = YoutubePlayerController(
    initialVideoId: 'UjSKASbyVvs',
    flags: const YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );
  // RxDouble checkprice = 0.0.obs;
  RxString totalsaleprice = ''.obs;
  RxString standardprice = ''.obs;
  RxString percentage = ''.obs;
  var selectflorOption = "".obs; // Initialize with a default value
  var selectflorDropdown = [].obs;
  var selectunitOption = "".obs;
  var selectunitDropdown = [].obs;
  // var selectflorOption =
  //     "Select Packaging".obs; // Initialize with a default value
  // var selectflorDropdown = ["Select Packaging", "Packaging", "connection"].obs;
  // late VideoPlayerController controller;
  // late Future<void> initializeVideoPlayerFuture;

  SingleDealsModel? singleDealsModel;
  // List<SingleDealController>? singleDealsModel;
  // int _counter = 0;
  RxBool isLoading = false.obs;
  var data = '''''';
  var dio = Dio();
  var response;

  // Define _kGoogLePlex and _list here
  static final CameraPosition kGoogLePlex = CameraPosition(
    target: LatLng(24.9056, 67.0822),
    zoom: 14,
  );
  List<String> dropdownlist = [];
  List<Marker> _marker = [];
  List<Marker> get markers => _list;

  List<Marker> _list = const [
    Marker(
      markerId: MarkerId("1"),
      position: LatLng(24.9345872, 67.099281),
      infoWindow: InfoWindow(title: "My Current position"),
    ),
    Marker(
      markerId: MarkerId("2"),
      position: LatLng(24.9056, 67.0822),
      infoWindow: InfoWindow(title: "Saddar"),
    ),
    Marker(
      markerId: MarkerId("3"),
      position: LatLng(24.9056, 67.0822),
      infoWindow: InfoWindow(title: "defence"),
    ),
    Marker(
      markerId: MarkerId("4"),
      position: LatLng(24.9056, 67.0822),
      infoWindow: InfoWindow(title: "Tariq Road"),
    ),
  ];
  int get differenceInDays => _calculateDifference();
  Future<SingleDealsModel?> onSubmit(String idcheck) async {
    isLoading.value = true; // Start loading
    try {
      response = await dio.request(
        'http://dealsabaad.com:5001/deal/get/$idcheck',
        options: Options(
          method: 'GET',
        ),
        data: data,
      );

      if (response.statusCode == 200) {
        Map<String, dynamic> responseData = response.data;

        singleDealsModel = SingleDealsModel.fromJson(response.data);
        print("bannermodel!.userId ${singleDealsModel!.id}");

        print("banner model ===========> $singleDealsModel");
        //

        for (int a = 0; a < singleDealsModel!.dealInventory!.length; a++) {
          String floorName = singleDealsModel!
              .dealInventory![a].inventory!.floors!.name
              .toString();
          // String unitNo =
          //     singleDealsModel!.dealInventory![a].inventory!.unitno.toString();

          // Check if the floorName is not already present in the dropdown list
          if (!selectflorDropdown.contains(floorName)) {
            selectflorDropdown.add(floorName);
          }
          // if (!selectunitDropdown.contains(unitNo)) {
          //   selectunitDropdown.add(unitNo);
          // }
          // Check if the unitNo is not already present in the dropdown list
        }

// If the dropdown list is empty after adding all the names,
// set the selectflorOption to "Please Select"
        if (selectflorDropdown.isEmpty) {
          selectflorDropdown.add("Please Select");
        }

        // if (selectunitDropdown.isEmpty) {
        //   selectunitDropdown.add("Please Select");
        // }

// Set the selectflorOption to the first item in the dropdown list
        selectflorOption.value = selectflorDropdown[0];

// Set the selectunitOption to the first item in the dropdown list

        // selectunitOption.value = selectunitDropdown[0];

        print(singleDealsModel!.name.toString());
      } else {
        print("Error: ${response.statusMessage}");
      }
    } catch (error) {
      print("Error: $error");
    } finally {
      isLoading.value = false; // Stop loading
    }
  }

  // void changefloorOption(String option) {
  //   selectflorOption.value = option;
  //   selectunitDropdown.clear(); // Clear the unit dropdown list

  //   // Iterate through the dealInventory to find unique unit numbers
  //   if (selectflorOption.value != "please select") {
  //     for (int i = 0; i < singleDealsModel!.dealInventory!.length; i++) {
  //       if (selectflorOption.value ==
  //           singleDealsModel!.dealInventory![i].inventory!.floors!.name
  //               .toString()) {
  //         String unitNo =
  //             singleDealsModel!.dealInventory![i].inventory!.unitno.toString();
  //         // Add unique unit numbers to selectunitDropdown
  //         if (!selectunitDropdown.contains(unitNo)) {
  //           selectunitDropdown.add(unitNo);
  //         }
  //       }
  //     }
  //   }
// uper wala code original hai

  void changefloorOption(String option) {
    selectflorOption.value = option;
    selectunitDropdown.clear(); // Clear the unit dropdown list

    // Iterate through the dealInventory to find unique unit numbers
    if (selectflorOption.value != "please select") {
      for (int i = 0; i < singleDealsModel!.dealInventory!.length; i++) {
        if (selectflorOption.value ==
            singleDealsModel!.dealInventory![i].inventory!.floors!.name
                .toString()) {
          String unitNo =
              singleDealsModel!.dealInventory![i].inventory!.unitno.toString();

          // Add unique unit numbers to selectunitDropdown
          if (!selectunitDropdown.contains(unitNo)) {
            selectunitDropdown.add(unitNo);
          }
        }
      }
    }

    // Convert selectunitDropdown to a set and then back to a list to remove duplicates
    List uniqueItems = selectunitDropdown.toSet().toList();

    // Set the selected unit option to the first item in the unique list
    if (uniqueItems.isNotEmpty) {
      selectunitOption.value = uniqueItems[0];
    } else {
      // If no unique items are found, set a placeholder value
      selectunitOption.value = "Please Select";
    }
  }

// check uper asfand code

  // void changeunitOption(St

  // void changeunitOption(String option) {
  //   selectunitOption.value = option;
  //   // if (selectflorOption.value != "please select") {
  //   for (int i = 0; i < singleDealsModel!.dealInventory!.length; i++) {
  //     if (num ==
  //         singleDealsModel!.dealInventory![i].inventory!.saleprice.toString()) ;
  //   }
  // }

// original unit option

  void changeunitOption(String option) {
    selectunitOption.value = option;

    // Iterating through the inventory to find the sale price
    for (int i = 0; i < singleDealsModel!.dealInventory!.length; i++) {
      // Assuming 'salePrice2' is the reactive variable representing unitno
      if (selectunitOption.value ==
          singleDealsModel!.dealInventory![i].inventory!.unitno.toString()) {
        // Assuming 'price' is the property representing the sale price

        double checkprice = double.parse(singleDealsModel!
            // .dealInventory![i].inventory!.saleprice\
            .dealInventory![i]
            .inventory!
            .totalSalePrice
            .toString());
        //  double num1 =  singleDealsModel!.saleper.toString()

        double num1 = double.parse(singleDealsModel!.saleper.toString());
        percentage.value = num1.toString();
        num num2 = (checkprice * num1) / 100;
        // total saleprice assign value in standartprice
        standardprice.value = checkprice.toString();
        // totalprice assign in  totalsaleprice
        totalsaleprice.value = num2.toString();
        print(standardprice.value);
        print(num1);
        print(totalsaleprice.value);
        print(percentage.value);
        break;
      }
    }
  }

  // newfun(newValue) {
  //   for (int a = 0; a < singleDealsModel!.dealInventory!.length; a++) {
  //     if (singleDealsModel!.dealInventory![a].inventory!.floors!.name ==
  //         newValue) {
  //       for (int i = 0;
  //           i < singleDealsModel!.dealInventory![a].inventory!.unitno!.length;
  //           i++) {
  //         dropdownlist.add(singleDealsModel!
  //             .dealInventory![a].inventory!.unitno!
  //             .toString());
  //       }
  //     }
  //   }
  //   print(dropdownlist);
  // }

// delete it
  void newfun(newValue) {
    // Clear the dropdownlist before populating it
    dropdownlist.clear();

    for (int a = 0; a < singleDealsModel!.dealInventory!.length; a++) {
      if (singleDealsModel!.dealInventory![a].inventory!.floors!.name ==
          newValue) {
        for (int i = 0;
            i < singleDealsModel!.dealInventory![a].inventory!.unitno!.length;
            i++) {
          String unitNo = singleDealsModel!
              .dealInventory![a].inventory!.unitno![i]
              .toString();

          // Check if the unit number already exists in the dropdownlist
          if (!dropdownlist.contains(unitNo)) {
            dropdownlist.add(unitNo);
          }
        }
      }
    }
    print(dropdownlist);
  }

  // @override
  // void onInit() {
  //   controller = VideoPlayerController.network(
  //     // "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4",
  //     "https://www.youtube.com/watch?v=" +
  //         singleDealsModel!.project!.video.toString(),
  //   );
  //   initializeVideoPlayerFuture = controller.initialize();
  //   controller.setLooping(true);
  //   controller.setVolume(1.0);
  //   super.onInit();
  // }

// oninit check  // uper wala original hai code

  // @override
  // void onInit() {
  //   // Check if singleDealsModel is not null before accessing its properties
  //   if (singleDealsModel!.project != null) {
  //     // Construct the video URL only if singleDealsModel and its project property are not null
  //     String videoUrl = "https://www.youtube.com/watch?v=" +
  //         singleDealsModel!.project!.video.toString();

  //     // Initialize the VideoPlayerController with the constructed video URL
  //     controller = VideoPlayerController.network(videoUrl);
  //   } else {
  //     // Handle the case where singleDealsModel or its project property is null
  //     // You can provide a default video URL or handle the situation according to your app's requirements
  //     controller = VideoPlayerController.network("default_video_url.mp4");
  //   }

  //   // Continue with the initialization
  //   initializeVideoPlayerFuture = controller.initialize();
  //   controller.setLooping(true);
  //   controller.setVolume(1.0);
  //   super.onInit();
  // }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }

  int _calculateDifference() {
    if (singleDealsModel != null &&
        singleDealsModel!.startDate != null &&
        singleDealsModel!.endDate != null) {
      DateTime startDate = DateTime.parse(singleDealsModel!.startDate!);
      DateTime endDate = DateTime.parse(singleDealsModel!.endDate!);
      return endDate.difference(startDate).inDays;
    } else {
      return 0; // Return default value if dates are null
    }
  }
}
