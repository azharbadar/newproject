import 'package:dealsabaadproject/Controllers/CategoryController/categorycontroller.dart';
import 'package:dealsabaadproject/Controllers/HomeController/homecontroller.dart';
import 'package:dealsabaadproject/SingleDealScreen.dart/singledealscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});
  CategoryController categoryController = Get.put(CategoryController());
  @override
  Widget build(BuildContext context) {
    // String idcheck = Get.arguments;
    // String imageUrl = Get.arguments;
    // String name = Get.arguments;
    // String imag = Get.arguments;

    // new check condition
    Map<String, dynamic> args = Get.arguments;
    String idcheck = args['id'];
    String imageUrl = args['imageUrl'];
    String name = args['name'];

    // String id = args['id'];

    // var id = Get.arguments;
    // String imagetwo = args['image2'];

    // var arguments = Get.arguments;
    // var idcheck = arguments['id'];
    // var imageUrlcheck = arguments['imageUrl'];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FutureBuilder(
                future: categoryController.onSubmit(idcheck),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Container(
                      height: MediaQuery.of(context).size.height,
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  } else {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Image.network(imageUrl), // skip
                        Image.network(
                            "https://backend.dealsabaad.com/category/img/" +
                                image.toString()),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),

                              Text(
                                name,
                                style: GoogleFonts.montserrat(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),

                              // Text(
                              //   name,
                              //   style: GoogleFonts.montserrat(
                              //       fontSize: 22, fontWeight: FontWeight.bold),
                              // ),
                              // Text(bannerController.bannermodel!.dealCategory!.length
                              //     .toString()),
                              // Text(bannerController.bannermodel!.dealCategory
                              //     .toString()),
                              // Text(bannerController
                              //     .bannermodel!.dealCategory![0].dealId
                              //     .toString()),
                              // Container(
                              //   child: ListView.builder(
                              //       shrinkWrap: true,
                              //       physics: ScrollPhysics(),
                              //       itemCount: bannerController
                              //           .bannermodel!.dealCategory!.length,
                              //       itemBuilder: (context, index) {
                              //         return

                              //             // Text(bannerController.bannermodel!
                              //             //     .dealCategory![index].deal!.frontImage
                              //             //     .toString());
                              //             // Image.asset(
                              //             //     "https://backend.dealsabaad.com/category/img/" +
                              //             //         bannerController
                              //             //             .bannermodel!
                              //             //             .dealCategory![index]
                              //             //             .deal!
                              //             //             .frontImage
                              //             //             .toString());

                              //             // https://backend.dealsabaad.com/deal/img/9.png
                              //             //     Container(
                              //             //   child: Image.network(
                              //             //       "https://backend.dealsabaad.com/deal/img/${bannerController.bannermodel!.dealCategory![index].deal!.frontImage.toString()}"),
                              //             // );

                              //             Card(
                              //           color: Colors.white,
                              //           elevation: 6,
                              //           child: Container(
                              //             color: Colors.white,
                              //             child: Column(
                              //               mainAxisAlignment:
                              //                   MainAxisAlignment.start,
                              //               crossAxisAlignment:
                              //                   CrossAxisAlignment.start,
                              //               children: [
                              //                 Image.network(
                              //                     "https://backend.dealsabaad.com/deal/img/${bannerController.bannermodel!.dealCategory![index].deal!.frontImage.toString()}"),
                              //                 Padding(
                              //                   padding: const EdgeInsets.only(
                              //                       left: 10,
                              //                       right: 10,
                              //                       bottom: 10),
                              //                   child: Column(
                              //                     mainAxisAlignment:
                              //                         MainAxisAlignment.start,
                              //                     crossAxisAlignment:
                              //                         CrossAxisAlignment.start,
                              //                     children: [
                              //                       const SizedBox(height: 6),
                              //                       Row(
                              //                         mainAxisAlignment:
                              //                             MainAxisAlignment
                              //                                 .spaceBetween,
                              //                         children: [
                              //                           Container(
                              //                             width: 280,
                              //                             child: Text(
                              //                               // 'Super three room deal',
                              //                               '${bannerController.bannermodel!.dealCategory![index].deal!.desc.toString()}',
                              //                               style: GoogleFonts
                              //                                   .ubuntu(
                              //                                       fontSize:
                              //                                           20,
                              //                                       fontWeight:
                              //                                           FontWeight
                              //                                               .w800),
                              //                             ),
                              //                           ),
                              //                           Row(
                              //                             children: [
                              //                               RatingBar.builder(
                              //                                 initialRating: 3,
                              //                                 minRating: 1,
                              //                                 direction: Axis
                              //                                     .horizontal,
                              //                                 allowHalfRating:
                              //                                     true,
                              //                                 itemCount: 1,
                              //                                 itemPadding:
                              //                                     const EdgeInsets
                              //                                         .symmetric(
                              //                                         horizontal:
                              //                                             4.0),
                              //                                 itemBuilder:
                              //                                     (context,
                              //                                             _) =>
                              //                                         const Icon(
                              //                                   size: 50,
                              //                                   Icons.star,
                              //                                   color: Colors
                              //                                       .amber,
                              //                                 ),
                              //                                 itemSize: 22,
                              //                                 onRatingUpdate:
                              //                                     (rating) {
                              //                                   print(rating);
                              //                                 },
                              //                               ),
                              //                               Text(
                              //                                 '4.2',
                              //                                 style: GoogleFonts.ubuntu(
                              //                                     fontSize: 14,
                              //                                     fontWeight:
                              //                                         FontWeight
                              //                                             .w800),
                              //                               ),
                              //                             ],
                              //                           ),
                              //                         ],
                              //                       ),
                              //                       const SizedBox(height: 8),
                              //                       Text(
                              //                         'MAK Business Tower, Ferozepur\n Road, Karachi',
                              //                         style: GoogleFonts.ubuntu(
                              //                             fontSize: 16,
                              //                             fontWeight:
                              //                                 FontWeight.w600),
                              //                       ),
                              //                       const SizedBox(height: 2),
                              //                       Row(
                              //                         mainAxisAlignment:
                              //                             MainAxisAlignment
                              //                                 .spaceBetween,
                              //                         children: [
                              //                           Text(
                              //                             'Rs 11,424,000',
                              //                             style: GoogleFonts
                              //                                 .ubuntu(
                              //                                     fontSize: 16,
                              //                                     fontWeight:
                              //                                         FontWeight
                              //                                             .w800),
                              //                           ),
                              //                           SizedBox(
                              //                             height: 24,
                              //                             width: 24,
                              //                             child: Image.asset(
                              //                                 "assets/Homeimgs/cards-heart.png"),
                              //                           ),
                              //                         ],
                              //                       ),
                              //                     ],
                              //                   ),
                              //                 ),
                              //               ],
                              //             ),
                              //           ),
                              //         );
                              //       }),
                              // ),

                              // ListView.builder(
                              //   physics: ScrollPhysics(),
                              //   shrinkWrap: true,
                              //   itemCount: bannerController
                              //       .bannermodel!.dealCategory!.length,
                              //   itemBuilder: (BuildContext context, int index) {
                              //     return Padding(
                              //       padding: const EdgeInsets.symmetric(
                              //           vertical:
                              //               8.0), // Adjust the vertical padding here
                              //       child: Card(
                              //         color: Colors.white,
                              //         elevation: 1,
                              //         child: Padding(
                              //           padding: const EdgeInsets.all(
                              //               8.0), // Add padding to create gap below the card
                              //           child: Container(
                              //             color: Colors.white,
                              //             child: Column(
                              //               mainAxisAlignment:
                              //                   MainAxisAlignment.start,
                              //               crossAxisAlignment:
                              //                   CrossAxisAlignment.start,
                              //               children: [
                              //                 Image.network(
                              //                   "https://backend.dealsabaad.com/deal/img/${bannerController.bannermodel!.dealCategory![index].deal!.frontImage.toString()}",
                              //                 ),
                              //                 Padding(
                              //                   padding: const EdgeInsets.only(
                              //                       left: 10,
                              //                       right: 10,
                              //                       bottom: 10),
                              //                   child: Column(
                              //                     mainAxisAlignment:
                              //                         MainAxisAlignment.start,
                              //                     crossAxisAlignment:
                              //                         CrossAxisAlignment.start,
                              //                     children: [
                              //                       const SizedBox(height: 6),
                              //                       Row(
                              //                         mainAxisAlignment:
                              //                             MainAxisAlignment
                              //                                 .spaceBetween,
                              //                         children: [
                              //                           Container(
                              //                             width: 270,
                              //                             child: Text(
                              //                               '${bannerController.bannermodel!.dealCategory![index].deal!.desc.toString()}',
                              //                               style: GoogleFonts
                              //                                   .ubuntu(
                              //                                 fontSize: 20,
                              //                                 fontWeight:
                              //                                     FontWeight
                              //                                         .w800,
                              //                               ),
                              //                             ),
                              //                           ),
                              //                           Row(
                              //                             children: [
                              //                               RatingBar.builder(
                              //                                 initialRating: 3,
                              //                                 minRating: 1,
                              //                                 direction: Axis
                              //                                     .horizontal,
                              //                                 allowHalfRating:
                              //                                     true,
                              //                                 itemCount: 1,
                              //                                 itemPadding:
                              //                                     const EdgeInsets
                              //                                         .symmetric(
                              //                                         horizontal:
                              //                                             4.0),
                              //                                 itemBuilder:
                              //                                     (context,
                              //                                             _) =>
                              //                                         const Icon(
                              //                                   size: 50,
                              //                                   Icons.star,
                              //                                   color: Colors
                              //                                       .amber,
                              //                                 ),
                              //                                 itemSize: 22,
                              //                                 onRatingUpdate:
                              //                                     (rating) {
                              //                                   print(rating);
                              //                                 },
                              //                               ),
                              //                               Text(
                              //                                 '4.2',
                              //                                 style: GoogleFonts
                              //                                     .ubuntu(
                              //                                   fontSize: 14,
                              //                                   fontWeight:
                              //                                       FontWeight
                              //                                           .w800,
                              //                                 ),
                              //                               ),
                              //                             ],
                              //                           ),
                              //                         ],
                              //                       ),
                              //                       const SizedBox(height: 8),
                              //                       Text(
                              //                         'MAK Business Tower, Ferozepur\n Road, Karachi',
                              //                         style: GoogleFonts.ubuntu(
                              //                           fontSize: 16,
                              //                           fontWeight:
                              //                               FontWeight.w600,
                              //                         ),
                              //                       ),
                              //                       const SizedBox(height: 2),
                              //                       Row(
                              //                         mainAxisAlignment:
                              //                             MainAxisAlignment
                              //                                 .spaceBetween,
                              //                         children: [
                              //                           Text(
                              //                             bannerController
                              //                                 .bannermodel!
                              //                                 .dealCategory![
                              //                                     index]
                              //                                 .deal!
                              //                                 .price
                              //                                 .toString(),
                              //                             style: GoogleFonts
                              //                                 .ubuntu(
                              //                               fontSize: 16,
                              //                               fontWeight:
                              //                                   FontWeight.w800,
                              //                             ),
                              //                           ),
                              //                           SizedBox(
                              //                             height: 24,
                              //                             width: 24,
                              //                             child: Image.asset(
                              //                                 "assets/Homeimgs/cards-heart.png"),
                              //                           ),
                              //                         ],
                              //                       ),
                              //                     ],
                              //                   ),
                              //                 ),
                              //               ],
                              //             ),
                              //           ),
                              //         ),
                              //       ),
                              //     );
                              //   },
                              // ),

                              // ListView.builder(
                              //   physics: ScrollPhysics(),
                              //   shrinkWrap: true,
                              //   itemCount: bannerController
                              //       .bannermodel!.dealCategory!.length,
                              //   itemBuilder: (BuildContext context, int index) {
                              //     return Card(
                              //       color: Colors
                              //           .white, // Set the background color of the Card to white
                              //       elevation: 1,
                              //       child: Padding(
                              //         padding: const EdgeInsets.all(8.0),
                              //         child: Container(
                              //           color: Colors
                              //               .white, // Set the background color of the Container to white
                              //           child: Column(
                              //             mainAxisAlignment:
                              //                 MainAxisAlignment.start,
                              //             crossAxisAlignment:
                              //                 CrossAxisAlignment.start,
                              //             children: [
                              //               Image.network(
                              //                 "https://backend.dealsabaad.com/deal/img/${bannerController.bannermodel!.dealCategory![index].deal!.frontImage.toString()}",
                              //               ),
                              //               Padding(
                              //                 padding: const EdgeInsets.only(
                              //                     left: 10,
                              //                     right: 10,
                              //                     bottom: 10),
                              //                 child: Column(
                              //                   mainAxisAlignment:
                              //                       MainAxisAlignment.start,
                              //                   crossAxisAlignment:
                              //                       CrossAxisAlignment.start,
                              //                   children: [
                              //                     const SizedBox(height: 6),
                              //                     Row(
                              //                       mainAxisAlignment:
                              //                           MainAxisAlignment
                              //                               .spaceBetween,
                              //                       children: [
                              //                         Container(
                              //                           width: 270,
                              //                           child: Text(
                              //                             '${bannerController.bannermodel!.dealCategory![index].deal!.desc.toString()}',
                              //                             style: GoogleFonts
                              //                                 .ubuntu(
                              //                               fontSize: 20,
                              //                               fontWeight:
                              //                                   FontWeight.w800,
                              //                             ),
                              //                           ),
                              //                         ),
                              //                         Row(
                              //                           children: [
                              //                             RatingBar.builder(
                              //                               initialRating: 3,
                              //                               minRating: 1,
                              //                               direction:
                              //                                   Axis.horizontal,
                              //                               allowHalfRating:
                              //                                   true,
                              //                               itemCount: 1,
                              //                               itemPadding:
                              //                                   const EdgeInsets
                              //                                       .symmetric(
                              //                                       horizontal:
                              //                                           4.0),
                              //                               itemBuilder:
                              //                                   (context, _) =>
                              //                                       const Icon(
                              //                                 size: 50,
                              //                                 Icons.star,
                              //                                 color:
                              //                                     Colors.amber,
                              //                               ),
                              //                               itemSize: 22,
                              //                               onRatingUpdate:
                              //                                   (rating) {
                              //                                 print(rating);
                              //                               },
                              //                             ),
                              //                             Text(
                              //                               '4.2',
                              //                               style: GoogleFonts
                              //                                   .ubuntu(
                              //                                 fontSize: 14,
                              //                                 fontWeight:
                              //                                     FontWeight
                              //                                         .w800,
                              //                               ),
                              //                             ),
                              //                           ],
                              //                         ),
                              //                       ],
                              //                     ),
                              //                     const SizedBox(height: 8),
                              //                     Text(
                              //                       'MAK Business Tower, Ferozepur\n Road, Karachi',
                              //                       style: GoogleFonts.ubuntu(
                              //                         fontSize: 16,
                              //                         fontWeight:
                              //                             FontWeight.w600,
                              //                       ),
                              //                     ),
                              //                     const SizedBox(height: 2),
                              //                     Row(
                              //                       mainAxisAlignment:
                              //                           MainAxisAlignment
                              //                               .spaceBetween,
                              //                       children: [
                              //                         Text(
                              //                           bannerController
                              //                               .bannermodel!
                              //                               .dealCategory![
                              //                                   index]
                              //                               .deal!
                              //                               .price
                              //                               .toString(),
                              //                           style:
                              //                               GoogleFonts.ubuntu(
                              //                             fontSize: 16,
                              //                             fontWeight:
                              //                                 FontWeight.w800,
                              //                           ),
                              //                         ),
                              //                         SizedBox(
                              //                           height: 24,
                              //                           width: 24,
                              //                           child: Image.asset(
                              //                               "assets/Homeimgs/cards-heart.png"),
                              //                         ),
                              //                       ],
                              //                     ),
                              //                   ],
                              //                 ),
                              //               ),
                              //             ],
                              //           ),
                              //         ),
                              //       ),
                              //     );
                              //   },
                              // ),

                              // new code

                              Padding(
                                padding: const EdgeInsets.only(bottom: 32),
                                child: Container(
                                  child: ListView.separated(
                                    physics: ScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: categoryController
                                        .categoryModel!.dealCategory!.length,
                                    separatorBuilder: (context, index) =>
                                        const SizedBox(
                                      height: 12,
                                    ), // Add space between cards
                                    itemBuilder: (context, index) {
                                      return InkWell(
                                        onTap: () {
                                          Get.to(SingleDealScreen(),
                                              // arguments: categoryController
                                              //     .categoryModel!
                                              //     .dealCategory![index]
                                              //     .dealId
                                              //     .toString()
                                              arguments: {
                                                'dealid': categoryController
                                                    .categoryModel!
                                                    .dealCategory![index]
                                                    .dealId
                                                    .toString(),
                                                'desc': categoryController
                                                    .categoryModel!
                                                    .dealCategory![index]
                                                    .deal!
                                                    .desc
                                                    .toString(),
                                                'price': categoryController
                                                    .categoryModel!
                                                    .dealCategory![index]
                                                    .deal!
                                                    .price
                                                    .toString(),
                                              }); //
                                        },
                                        child: Card(
                                          color: Colors.white,
                                          elevation: 1,
                                          child: Container(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Image.network(
                                                  "https://backend.dealsabaad.com/deal/img/${categoryController.categoryModel!.dealCategory![index].deal!.frontImage.toString()}",
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10,
                                                          right: 10,
                                                          bottom: 10),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const SizedBox(height: 6),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Container(
                                                            width: 270,
                                                            child: Text(
                                                              '${categoryController.categoryModel!.dealCategory![index].deal!.desc.toString()}',
                                                              style: GoogleFonts
                                                                  .ubuntu(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w800,
                                                              ),
                                                            ),
                                                          ),
                                                          Row(
                                                            children: [
                                                              RatingBar.builder(
                                                                initialRating:
                                                                    3,
                                                                minRating: 1,
                                                                direction: Axis
                                                                    .horizontal,
                                                                allowHalfRating:
                                                                    true,
                                                                itemCount: 1,
                                                                itemPadding:
                                                                    const EdgeInsets
                                                                        .symmetric(
                                                                        horizontal:
                                                                            4.0),
                                                                itemBuilder:
                                                                    (context,
                                                                            _) =>
                                                                        const Icon(
                                                                  size: 50,
                                                                  Icons.star,
                                                                  color: Colors
                                                                      .amber,
                                                                ),
                                                                itemSize: 22,
                                                                onRatingUpdate:
                                                                    (rating) {
                                                                  print(rating);
                                                                },
                                                              ),
                                                              Text(
                                                                '4.2',
                                                                style:
                                                                    GoogleFonts
                                                                        .ubuntu(
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w800,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(height: 8),
                                                      Text(
                                                        'MAK Business Tower, Ferozepur\n Road, Karachi',
                                                        style:
                                                            GoogleFonts.ubuntu(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      const SizedBox(height: 2),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            categoryController
                                                                .categoryModel!
                                                                .dealCategory![
                                                                    index]
                                                                .deal!
                                                                .price
                                                                .toString(),
                                                            style: GoogleFonts
                                                                .ubuntu(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 24,
                                                            width: 24,
                                                            child: Image.asset(
                                                                "assets/Homeimgs/cards-heart.png"),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),

                              const SizedBox(
                                height: 10,
                              ),

                              // ListView.builder(
                              //     shrinkWrap: true,
                              //     itemCount: bannerController
                              //         .bannermodel!.dealCategory!.length,
                              //     itemBuilder: (context, index) {
                              //       return Card(
                              //         color: Colors.white,
                              //         elevation: 6,
                              //         child: Container(
                              //           color: Colors.white,
                              //           child: Column(
                              //             mainAxisAlignment:
                              //                 MainAxisAlignment.start,
                              //             crossAxisAlignment:
                              //                 CrossAxisAlignment.start,
                              //             children: [
                              //               Image.network(bannerController
                              //                   .bannermodel!
                              //                   .dealCategory![index]
                              //                   .deal!
                              //                   .frontImage
                              //                   .toString()),
                              //               Padding(
                              //                 padding: EdgeInsets.only(
                              //                     left: 10,
                              //                     right: 10,
                              //                     bottom: 10),
                              //                 child: Column(
                              //                   mainAxisAlignment:
                              //                       MainAxisAlignment.start,
                              //                   crossAxisAlignment:
                              //                       CrossAxisAlignment.start,
                              //                   children: [
                              //                     SizedBox(height: 6),
                              //                     Row(
                              //                       mainAxisAlignment:
                              //                           MainAxisAlignment
                              //                               .spaceBetween,
                              //                       children: [
                              //                         Text(
                              //                           'Super three room deal',
                              //                           style: GoogleFonts.ubuntu(
                              //                               fontSize: 20,
                              //                               fontWeight:
                              //                                   FontWeight.w800),
                              //                         ),
                              //                         Row(
                              //                           children: [
                              //                             RatingBar.builder(
                              //                               initialRating: 3,
                              //                               minRating: 1,
                              //                               direction:
                              //                                   Axis.horizontal,
                              //                               allowHalfRating: true,
                              //                               itemCount: 1,
                              //                               itemPadding:
                              //                                   const EdgeInsets
                              //                                       .symmetric(
                              //                                       horizontal:
                              //                                           4.0),
                              //                               itemBuilder:
                              //                                   (context, _) =>
                              //                                       const Icon(
                              //                                 size: 50,
                              //                                 Icons.star,
                              //                                 color: Colors.amber,
                              //                               ),
                              //                               itemSize: 22,
                              //                               onRatingUpdate:
                              //                                   (rating) {
                              //                                 print(rating);
                              //                               },
                              //                             ),
                              //                             Text(
                              //                               '4.2',
                              //                               style: GoogleFonts
                              //                                   .ubuntu(
                              //                                       fontSize: 14,
                              //                                       fontWeight:
                              //                                           FontWeight
                              //                                               .w800),
                              //                             ),
                              //                           ],
                              //                         ),
                              //                       ],
                              //                     ),
                              //                     const SizedBox(height: 8),
                              //                     Text(
                              //                       'MAK Business Tower, Ferozepur\n Road, Karachi',
                              //                       style: GoogleFonts.ubuntu(
                              //                           fontSize: 16,
                              //                           fontWeight:
                              //                               FontWeight.w600),
                              //                     ),
                              //                     const SizedBox(height: 2),
                              //                     Row(
                              //                       mainAxisAlignment:
                              //                           MainAxisAlignment
                              //                               .spaceBetween,
                              //                       children: [
                              //                         Text(
                              //                           'Rs 11,424,000',
                              //                           style: GoogleFonts.ubuntu(
                              //                               fontSize: 16,
                              //                               fontWeight:
                              //                                   FontWeight.w800),
                              //                         ),
                              //                         SizedBox(
                              //                           height: 24,
                              //                           width: 24,
                              //                           child: Image.asset(
                              //                               "assets/Homeimgs/cards-heart.png"),
                              //                         ),
                              //                       ],
                              //                     ),
                              //                   ],
                              //                 ),
                              //               ),
                              //             ],
                              //           ),
                              //         ),
                              //       );
                              //     })
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),

                        Center(
                          child: Text(
                            "Get in Touch",
                            style: GoogleFonts.montserrat(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Text(
                            textAlign: TextAlign.justify,
                            "We are located in Karachi, Pakistan and you can get in touch via  writing us and calling us to avail the deals ",
                            style: GoogleFonts.montserrat(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ftr_icons(
                                img: "assets/Homeimgs/location.png",
                                title: "Visit Us",
                                subtitle:
                                    "L6-01, AQ Business Center - Main Jinnah Avenue, Bahria Town, Karachi"),
                            const SizedBox(
                              height: 10,
                            ),
                            ftr_icons(
                                img: "assets/Homeimgs/mail.png",
                                title: "Write Us",
                                subtitle: "info@dealsabaad.com"),
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ftr_icons(
                                img: "assets/Homeimgs/call.png",
                                title: "Call Us",
                                subtitle: "+92 304 111 7000"),
                            ftr_icons(
                                img: "assets/Homeimgs/whatsapp.png",
                                title: "Whatsapp Us",
                                subtitle: "+92 300 285 2856"),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),

                        // new

                        Container(
                          color: const Color(0xff181c2c),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 30,
                                ),
                                Image.asset("assets/Homeimgs/footer_logo.png"),
                                const SizedBox(
                                  height: 14,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Text(
                                    textAlign: TextAlign.justify,
                                    "DealsAbaad’s aim is to provide confidence and integrity to people to trust this industry specially overseas investors.",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Powered by Abdur Rahman Bin Auf Associates (Private) Limited",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 16, color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 14,
                                ),
                                Row(
                                  children: [
                                    Image.asset("assets/Homeimgs/facebook.png"),
                                    const SizedBox(
                                      width: 14,
                                    ),
                                    Image.asset(
                                        "assets/Homeimgs/instagram.png"),
                                    const SizedBox(
                                      width: 14,
                                    ),
                                    Image.asset("assets/Homeimgs/twitter.png"),
                                    const SizedBox(
                                      width: 14,
                                    ),
                                    Image.asset("assets/Homeimgs/linkedin.png"),
                                    const SizedBox(
                                      width: 14,
                                    ),
                                    Image.asset("assets/Homeimgs/youtube.png"),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Deals",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 24,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  "Bahria United Mobile and Electronics Market",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(height: 12),
                                Text(
                                  "GFS Kapra Market",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  "Piccadilly Suits Residential Apartments",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(height: 12),
                                Text(
                                  "NTR United Mobile Market",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  "Bahria United Mobile and Electronics Market",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(height: 12),
                                Text(
                                  "GFS Kapra Market",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  height: 18,
                                ),
                                // Center(
                                //   child: YoutubePlayer(
                                //     controller:
                                //         singleDealController.controllertwo,
                                //     showVideoProgressIndicator: true,
                                //   ),
                                // ),
                                Stack(
                                  children: [
                                    AspectRatio(
                                      aspectRatio: categoryController
                                          .controller.value.aspectRatio,
                                      child: VideoPlayer(
                                          categoryController.controller),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Positioned(
                                      top: 90,
                                      left: 120,
                                      child: Center(
                                        child: Container(
                                          height: 40,
                                          width: 100,
                                          child: ElevatedButton(
                                              onPressed: () {
                                                categoryController
                                                    .togglePlayPause();
                                              },
                                              child: Icon(categoryController
                                                      .controller
                                                      .value
                                                      .isPlaying
                                                  ? Icons.pause
                                                  : Icons.play_arrow)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 18,
                                ),
                                const Divider(
                                  color: Colors.white,
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "© 2023. All Rights Reserved By Dealsabaad",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  height: 22,
                                ),
                                Center(
                                  child: Text(
                                    "Privacy Policy",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Center(
                                  child: Text(
                                    "FAQ",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Center(
                                  child: Text(
                                    "Terms & Condition",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Center(
                                  child: Text(
                                    "Refund Policy",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                const SizedBox(
                                  height: 32,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("assets/Homeimgs/visa.png"),
                                    const SizedBox(
                                      width: 17,
                                    ),
                                    Image.asset("assets/Homeimgs/jazzcash.png"),
                                    const SizedBox(
                                      width: 17,
                                    ),
                                    Image.asset(
                                        "assets/Homeimgs/mastercard.png"),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                        ),

                        // Image.network(
                        //     bannerController.bannermodel!.imageUrl.toString()),
                        // Padding(
                        //   padding: const EdgeInsets.symmetric(horizontal: 10),
                        //   child: Column(
                        //     children: [
                        //       const SizedBox(height: 20),
                        //       Text(
                        //         bannerController!.bannermodel!.name.toString(),
                        //         style: GoogleFonts.montserrat(
                        //           fontSize: 20,
                        //           fontWeight: FontWeight.bold,
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                      ],
                    );
                  }
                }),
          ],
        ),
      ),

      //     FutureBuilder<BannerModel?>(
      //   future: bannerController.onSubmit(),
      //   builder: (context, snapshot) {
      //     if (snapshot.connectionState == ConnectionState.waiting) {
      //       return const Center(child: CircularProgressIndicator());
      //     } else if (snapshot.hasError || snapshot.data == null) {
      //       return const Center(child: Text('Error: Data not found'));
      //     } else {
      //       BannerModel bannerModel = snapshot.data!;
      //       return Column(
      //         mainAxisAlignment: MainAxisAlignment.start,
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           Image.network(bannerModel.imageUrl.toString()),
      //           Padding(
      //             padding: const EdgeInsets.symmetric(horizontal: 10),
      //             child: Column(
      //               children: [
      //                 const SizedBox(height: 20),
      //                 Text(
      //                   bannerModel.name.toString(),
      //                   style: GoogleFonts.montserrat(
      //                     fontSize: 20,
      //                     fontWeight: FontWeight.bold,
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ],
      //       );
      //     }
      //   },
      // ),

      // FutureBuilder(
      //     future: bannerController.onSubmit(),
      //     builder: (context, snapshot) {
      //       if (snapshot.connectionState == ConnectionState.waiting) {
      //         return Center(
      //           child: CircularProgressIndicator(),
      //         );
      //       } else {
      //         return Column(
      //           mainAxisAlignment: MainAxisAlignment.start,
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             // Image.network(
      //             //     bannerController.bannermodel!.imageUrl.toString()),
      //             // Padding(
      //             //   padding: const EdgeInsets.symmetric(horizontal: 10),
      //             //   child: Column(
      //             //     children: [
      //             //       const SizedBox(height: 20),
      //             //       Text(
      //             //         bannerController!.bannermodel!.name.toString(),
      //             //         style: GoogleFonts.montserrat(
      //             //           fontSize: 20,
      //             //           fontWeight: FontWeight.bold,
      //             //         ),
      //             //       ),
      //             //     ],
      //             //   ),
      //             // ),
      //             Text("this data is  check")
      //           ],
      //         );
      //       }
      //     }),
    );
  }

  Column ftr_icons({img, title, subtitle}) {
    return Column(
      children: [
        Image.asset(
          img,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          title,
          style:
              GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 4,
        ),
        Container(
          width: 140,
          child: Text(subtitle),
        ),
      ],
    );
  }
}
