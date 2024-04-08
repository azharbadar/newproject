// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:dealsabaadproject/Controllers/CategoryController/categorycontroller.dart';
// import 'package:dealsabaadproject/Controllers/HomeController/homecontroller.dart';
// import 'package:dealsabaadproject/Controllers/SingleDealsController/singledealscontroller.dart';
// import 'package:dealsabaadproject/Utilis/CustomWidget/customwidge.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:intl/intl.dart';
// import 'package:video_player/video_player.dart';

// class SingleDealScreen extends StatelessWidget {
//   SingleDealScreen({super.key});
//   SingleDealController singleDealController = Get.put(SingleDealController());
//   @override
//   Widget build(BuildContext context) {
//     //  String imag = Get.arguments;
//     Map<String, dynamic> args = Get.arguments;
//     String idcheck = args['dealid'];
//     String desc = args['desc'];
//     String price = args['price'];

//     // String imageUrl = args['imageUrl'];
//     // String name = args['name'];

//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Image.network("https://backend.dealsabaad.com/category/img/" +
//             //     image.toString()),  skip

//             // Image.network("https://backend.dealsabaad.com/category/img/" +
//             //     bgimage.toString()),

//             // future

//             FutureBuilder(
//                 future: singleDealController.onSubmit(idcheck),
//                 builder: ((context, snapshot) {
//                   if (snapshot.connectionState == ConnectionState.waiting) {
//                     return const Center(
//                       child: CircularProgressIndicator(),
//                     );
//                   } else {
//                     return Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Image.network(
//                             "https://backend.dealsabaad.com/category/img/$bgimage"),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(
//                             horizontal: 14,
//                             vertical: 10,
//                           ),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Container(
//                                   decoration: BoxDecoration(
//                                       color: Color(0xffFFD624),
//                                       borderRadius: BorderRadius.circular(10)),
//                                   child: Padding(
//                                     padding: const EdgeInsets.all(8.0),
//                                     child: Text(
//                                       singleDealController
//                                           .singleDealsModel!.desc
//                                           .toString(),
//                                       style: GoogleFonts.montserrat(
//                                           fontSize: 16,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                   )),
//                               Container(
//                                 child: CarouselSlider(
//                                   items: singleDealController
//                                       .singleDealsModel!.dealImages!
//                                       .map((item) {
//                                     return Container(
//                                       width: MediaQuery.of(context).size.width,
//                                       margin: const EdgeInsets.symmetric(
//                                           horizontal: 5.0),
//                                       child: Center(
//                                         child: Image.network(
//                                           "https://backend.dealsabaad.com/deal/img/${item.imagePath.toString()}",
//                                         ),
//                                       ),
//                                     );
//                                   }).toList(),
//                                   options: CarouselOptions(
//                                     autoPlay: true,
//                                     height: 150.0,
//                                     enlargeCenterPage: true,
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 decoration: const BoxDecoration(
//                                     color: Color(0xffF2F5F7)),
//                                 child: Padding(
//                                   padding: const EdgeInsets.symmetric(
//                                       horizontal: 14),
//                                   child: Column(
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Padding(
//                                         padding: const EdgeInsets.only(top: 20),
//                                         child: Container(
//                                           decoration: BoxDecoration(
//                                               color: const Color(0xff4A6594),
//                                               borderRadius:
//                                                   BorderRadius.circular(8)),
//                                           child: Padding(
//                                             padding: const EdgeInsets.all(10.0),
//                                             child: Text(
//                                               "Apply Discount/Referral Code to Get Exclusive Discount!",
//                                               style: GoogleFonts.montserrat(
//                                                   fontSize: 16,
//                                                   fontWeight: FontWeight.bold,
//                                                   color: Colors.white),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                       const SizedBox(height: 20),
//                                       Row(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.center,
//                                         children: [
//                                           Text(
//                                             "Deal Ends in",
//                                             style: GoogleFonts.montserrat(
//                                                 fontSize: 20,
//                                                 fontWeight: FontWeight.bold),
//                                           ),
//                                           const SizedBox(
//                                             width: 30,
//                                           ),
//                                           Text.rich(
//                                             TextSpan(
//                                               text: "Hurry up only ",
//                                               style: GoogleFonts.montserrat(
//                                                   fontSize: 20),
//                                               children: <InlineSpan>[
//                                                 TextSpan(
//                                                   text: singleDealController
//                                                       .differenceInDays
//                                                       .toString(),
//                                                 ),

//                                                 // Add a line break or separate Text widget for the last part
//                                                 const TextSpan(
//                                                   text: '\n',
//                                                 ),
//                                                 const TextSpan(
//                                                   text:
//                                                       " days left!", // Or any other text for the last part
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                       Padding(
//                                         padding: const EdgeInsets.only(top: 30),
//                                         child: Row(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.spaceAround,
//                                           children: [
//                                             timewidget(time: "HOURS"),
//                                             timewidget(time: "MIN"),
//                                             timewidget(time: "SEC"),
//                                           ],
//                                         ),
//                                       ),
//                                       const SizedBox(
//                                         height: 30,
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                               const SizedBox(
//                                 height: 20,
//                               ),
//                               Text(
//                                 "Project Detials",
//                                 style: GoogleFonts.montserrat(
//                                     fontSize: 20, fontWeight: FontWeight.bold),
//                               ),
//                               const SizedBox(
//                                 height: 10,
//                               ),
//                               Text.rich(
//                                 TextSpan(
//                                   text: "Project Name: ",
//                                   style: GoogleFonts.montserrat(fontSize: 16),
//                                   children: <InlineSpan>[
//                                     // Add a line break or separate Text widget for the last part

//                                     TextSpan(
//                                       text:
//                                           desc, // Or any other text for the last part
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Text.rich(
//                                 TextSpan(
//                                   text: "Price: Rs.",
//                                   style: GoogleFonts.montserrat(fontSize: 16),
//                                   children: <InlineSpan>[
//                                     // Add a line break or separate Text widget for the last part

//                                     TextSpan(
//                                       text:
//                                           price, // Or any other text for the last part
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               const Divider(),
//                               Text(
//                                 "Description",
//                                 style: GoogleFonts.montserrat(
//                                     fontSize: 20, fontWeight: FontWeight.bold),
//                               ),
//                               const SizedBox(
//                                 height: 8,
//                               ),
//                               Text(
//                                 textAlign: TextAlign.justify,
//                                 singleDealController
//                                     .singleDealsModel!.project!.description
//                                     .toString(),
//                                 style: GoogleFonts.montserrat(
//                                   fontSize: 16,
//                                 ),
//                               ),
//                               const Divider(),
//                               const SizedBox(
//                                 height: 10,
//                               ),
//                               Text(
//                                 "Features",
//                                 style: GoogleFonts.montserrat(
//                                     fontSize: 20, fontWeight: FontWeight.bold),
//                               ),
//                               Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Text(
//                                     singleDealController
//                                         .singleDealsModel!
//                                         .project!
//                                         .projectsFeature![0]
//                                         .feature!
//                                         .name
//                                         .toString(),
//                                     style: GoogleFonts.montserrat(fontSize: 16),
//                                   ),
//                                   Text(
//                                       singleDealController
//                                           .singleDealsModel!
//                                           .project!
//                                           .projectsFeature![1]
//                                           .feature!
//                                           .name
//                                           .toString(),
//                                       style:
//                                           GoogleFonts.montserrat(fontSize: 16)),
//                                   Text(
//                                       singleDealController
//                                           .singleDealsModel!
//                                           .project!
//                                           .projectsFeature![2]
//                                           .feature!
//                                           .name
//                                           .toString(),
//                                       style:
//                                           GoogleFonts.montserrat(fontSize: 16))
//                                 ],
//                               ),
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     singleDealController
//                                         .singleDealsModel!
//                                         .project!
//                                         .projectsFeature![2]
//                                         .feature!
//                                         .name
//                                         .toString(),
//                                     style: GoogleFonts.montserrat(fontSize: 16),
//                                   ),
//                                   const SizedBox(width: 20),
//                                   Text(
//                                       singleDealController
//                                           .singleDealsModel!
//                                           .project!
//                                           .projectsFeature![4]
//                                           .feature!
//                                           .name
//                                           .toString(),
//                                       style:
//                                           GoogleFonts.montserrat(fontSize: 16)),
//                                 ],
//                               ),
//                               const SizedBox(width: 10),
//                               const Divider(),
//                               const SizedBox(width: 10),
//                               Text(
//                                 "Address :",
//                                 style: GoogleFonts.montserrat(
//                                     fontSize: 20, fontWeight: FontWeight.bold),
//                               ),
//                               const SizedBox(
//                                 height: 10,
//                               ),
//                               LocationRichText(
//                                   address: "Address : ",
//                                   text: singleDealController
//                                       .singleDealsModel!.project!.cities!.name),
//                               const SizedBox(
//                                 height: 8,
//                               ),
//                               LocationRichText(
//                                   address: "Location : ",
//                                   text: singleDealController.singleDealsModel!
//                                       .project!.location!.name),
//                               const SizedBox(
//                                 height: 8,
//                               ),
//                               LocationRichText(
//                                   address: "Property Type : ",
//                                   text: singleDealController.singleDealsModel!
//                                       .project!.propertylocation!.name),
//                               const SizedBox(
//                                 height: 8,
//                               ),
//                               const Divider(),
//                               const SizedBox(
//                                 height: 10,
//                               ),
//                               Text(
//                                 "Other Details :",
//                                 style: GoogleFonts.montserrat(
//                                     fontSize: 20, fontWeight: FontWeight.bold),
//                               ),
//                               const SizedBox(
//                                 height: 10,
//                               ),
//                               LocationRichText(
//                                   address: "Property Type : ",
//                                   text: singleDealController.singleDealsModel!
//                                       .project!.propertylocation!.name),
//                               const Divider(),
//                               const SizedBox(
//                                 height: 16,
//                               ),
//                               Text.rich(
//                                 TextSpan(
//                                   text: singleDealController
//                                       .singleDealsModel!.project!.totalsize
//                                       .toString(),
//                                   style: GoogleFonts.montserrat(fontSize: 16),
//                                   children: <InlineSpan>[
//                                     const TextSpan(text: " "),
//                                     TextSpan(
//                                       text: singleDealController
//                                           .singleDealsModel!.project!.sizestype
//                                           .toString(),
//                                       style: GoogleFonts.montserrat(
//                                           fontSize: 16), // O
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               const SizedBox(height: 10),
//                               const Divider(),
//                               const SizedBox(height: 10),
//                               Text(
//                                 "Location",
//                                 style: GoogleFonts.montserrat(
//                                     fontSize: 20, fontWeight: FontWeight.bold),
//                               ),
//                               const SizedBox(height: 10),
//                               Container(
//                                 decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(100)),
//                                 height: 400,
//                                 child: GoogleMap(
//                                   initialCameraPosition:
//                                       SingleDealController.kGoogLePlex,
//                                 ),
//                               ),
//                               const SizedBox(height: 18),
//                               Stack(
//                                 children: [
//                                   AspectRatio(
//                                     aspectRatio: singleDealController
//                                         .controller.value.aspectRatio,
//                                     child: VideoPlayer(
//                                         singleDealController.controller),
//                                   ),
//                                   const SizedBox(
//                                     height: 20,
//                                   ),
//                                   Positioned(
//                                     top: 170,
//                                     left: 10,
//                                     child: Center(
//                                       child: Container(
//                                         height: 40,
//                                         child: ElevatedButton(
//                                             onPressed: () {
//                                               singleDealController
//                                                   .togglePlayPause();
//                                             },
//                                             child: Container(
//                                               child: Icon(singleDealController
//                                                       .controller
//                                                       .value
//                                                       .isPlaying
//                                                   ? Icons.pause
//                                                   : Icons.play_arrow),
//                                             )),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               const SizedBox(
//                                 height: 20,
//                               ),
//                               Container(
//                                 decoration: BoxDecoration(
//                                     color: const Color(0xffF2F5F7),
//                                     borderRadius: BorderRadius.circular(10)),
//                                 child: Padding(
//                                   padding: const EdgeInsets.all(8.0),
//                                   child: Column(
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Center(
//                                         child: Container(
//                                           width: Get.width,
//                                           decoration: BoxDecoration(
//                                               color: const Color(0xff4A6594),
//                                               borderRadius:
//                                                   BorderRadius.circular(10)),
//                                           child: Padding(
//                                             padding: const EdgeInsets.all(8.0),
//                                             child: Text(
//                                               "Select Your Unit",
//                                               textAlign: TextAlign.center,
//                                               style: GoogleFonts.montserrat(
//                                                   fontSize: 16,
//                                                   fontWeight: FontWeight.bold,
//                                                   color: Colors.white),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                       const SizedBox(
//                                         height: 12,
//                                       ),
//                                       Container(
//                                         decoration: BoxDecoration(
//                                             color: const Color(0xffFFD624),
//                                             borderRadius:
//                                                 BorderRadius.circular(8)),
//                                         child: Padding(
//                                           padding: const EdgeInsets.all(8.0),
//                                           child: Text(
//                                             "View Floor Plan",
//                                             style: GoogleFonts.montserrat(
//                                                 color: Colors.black,
//                                                 fontWeight: FontWeight.bold),
//                                           ),
//                                         ),
//                                       ),
//                                       const SizedBox(
//                                         height: 12,
//                                       ),
//                                       Text(
//                                         "Select Floor Number",
//                                         style: GoogleFonts.montserrat(
//                                             color: Colors.black),
//                                       ),
//                                       const SizedBox(
//                                         height: 12,
//                                       ),
//                                       Obx(() => Container(
//                                             width: Get.width,
//                                             height: 50,
//                                             decoration: BoxDecoration(
//                                                 color: Colors.white,
//                                                 borderRadius:
//                                                     BorderRadius.circular(8)),
//                                             child: DropdownButtonHideUnderline(
//                                               child: Padding(
//                                                 padding:
//                                                     const EdgeInsets.symmetric(
//                                                         horizontal: 10),
//                                                 child: DropdownButton(
//                                                   value: singleDealController
//                                                       .selectflorOption.value,
//                                                   style: GoogleFonts.montserrat(
//                                                       fontSize: 16,
//                                                       fontWeight:
//                                                           FontWeight.normal,
//                                                       color: Colors.black),
//                                                   onChanged: (newValue) {
//                                                     // singleDealController
//                                                     //     .changefloorOption(
//                                                     //         newValue!);
//                                                     singleDealController
//                                                         .newfun(newValue!);
//                                                   },
//                                                   items: singleDealController
//                                                       .selectflorDropdown
//                                                       .map<
//                                                           DropdownMenuItem<
//                                                               String>>((value) {
//                                                     return DropdownMenuItem<
//                                                         String>(
//                                                       value: value,
//                                                       child: Text(value),
//                                                     );
//                                                   }).toList(),
//                                                 ),
//                                               ),
//                                             ),
//                                           )),
//                                       const SizedBox(
//                                         height: 8,
//                                       ),
//                                       Text(
//                                         "Select Unit Number",
//                                         style: GoogleFonts.montserrat(
//                                             color: Colors.black),
//                                       ),
//                                       const SizedBox(
//                                         height: 8,
//                                       ),
//                                       Obx(() => Container(
//                                             width: Get.width,
//                                             height: 50,
//                                             decoration: BoxDecoration(
//                                                 color: Colors.white,
//                                                 borderRadius:
//                                                     BorderRadius.circular(8)),
//                                             child: DropdownButtonHideUnderline(
//                                               child: Padding(
//                                                 padding:
//                                                     const EdgeInsets.symmetric(
//                                                         horizontal: 10),
//                                                 child: DropdownButton(
//                                                   value: singleDealController
//                                                       .selectunitOption.value,
//                                                   style: GoogleFonts.montserrat(
//                                                       fontSize: 16,
//                                                       fontWeight:
//                                                           FontWeight.normal,
//                                                       color: Colors.black),
//                                                   onChanged: (newValue) {
//                                                     singleDealController
//                                                         .changeunitOption(
//                                                             newValue!);
//                                                   },
//                                                   items: singleDealController
//                                                       .dropdownlist
//                                                       .map<
//                                                           DropdownMenuItem<
//                                                               String>>((value) {
//                                                     return DropdownMenuItem<
//                                                         String>(
//                                                       value: value,
//                                                       child: Text(value),
//                                                     );
//                                                   }).toList(),
//                                                 ),
//                                               ),
//                                             ),
//                                           )),
//                                       const SizedBox(height: 10),
//                                       Text(
//                                         "Apply Voucher / Referral Code",
//                                         style: GoogleFonts.montserrat(
//                                             fontSize: 16,
//                                             fontWeight: FontWeight.bold),
//                                       ),
//                                       const SizedBox(height: 10),
//                                       Text(
//                                         "Standard Price",
//                                         style: GoogleFonts.montserrat(
//                                           fontSize: 16,
//                                         ),
//                                       ),
//                                       Text(
//                                         "Rs.0/",
//                                         style: GoogleFonts.montserrat(
//                                           fontSize: 16,
//                                         ),
//                                       ),
//                                       const SizedBox(height: 10),
//                                       Text(
//                                         "Discount (0%)",
//                                         style: GoogleFonts.montserrat(
//                                           fontSize: 16,
//                                         ),
//                                       ),
//                                       Text(
//                                         "Rs.0/",
//                                         style: GoogleFonts.montserrat(
//                                           fontSize: 16,
//                                         ),
//                                       ),
//                                       const SizedBox(height: 10),
//                                       Text(
//                                         "Referral Discount",
//                                         style: GoogleFonts.montserrat(
//                                           fontSize: 16,
//                                         ),
//                                       ),
//                                       Text(
//                                         "Rs.0/",
//                                         style: GoogleFonts.montserrat(
//                                           fontSize: 16,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     );
//                   }
//                 })),
//           ],
//         ),
//       ),
//     );
//   }

//   Container LocationRichText({address, text}) {
//     return Container(
//       child: Text.rich(
//         TextSpan(
//           text: address,
//           style: GoogleFonts.montserrat(fontSize: 16),
//           children: <InlineSpan>[
//             // Add a line break or separate Text widget for the last part

//             TextSpan(
//               // text: singleDealControllerx`
//               //     .singleDealsModel!
//               //     .project!
//               //     .cities!
//               //     .name
//               //     .toString() // Or any other text for the last part
//               text: text.toString(),
//               style: GoogleFonts.montserrat(fontSize: 16), // O
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
