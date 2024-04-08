import 'dart:io';

import 'package:dealsabaadproject/AboutScreen/aboutscreen.dart';
import 'package:dealsabaadproject/CategoryScreen/categoryscreen.dart';
import 'package:dealsabaadproject/Controllers/HomeController/homecontroller.dart';
import 'package:dealsabaadproject/Loginscreen/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    print(homeController.homeScreenModel);
    return Scaffold(
        appBar: AppBar(),
        // drawer: Drawer(),
        drawer: Drawer(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 28,
                        child: Image.asset("assets/Homeimgs/logo-dark.png")),
                    //  Icon(
                    //       Icons.clear,
                    //       size: 26,
                    //     ),
                    // InkWell(
                    //   onTap: () {
                    //     Get.back();
                    //     ; // Close the current page
                    //   },
                    //   child: const Icon(
                    //     Icons.clear,
                    //     size: 26,
                    //   ),
                    // )
                    // InkWell(
                    //   onTap: () {
                    //     Get.back(); // Close the current page
                    //   },
                    //   child: const Icon(
                    //     Icons.clear,
                    //     size: 26,
                    //   ),
                    // )
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop(); // Close the current page
                      },
                      child: const Icon(
                        Icons.clear,
                        size: 26,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 34),
                // Container(
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(10),
                //     color: const Color(0xffFFD624),
                //   ),
                //   child: Padding(
                //     padding:
                //         const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                //     child: Text(
                //       "Login",
                //       style: GoogleFonts.montserrat(
                //           fontSize: 16, fontWeight: FontWeight.w600),
                //     ),
                //   ),
                // ),

                Container(
                  decoration: BoxDecoration(),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffffd624),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {
                        Get.to(LoginScreen());
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Get.to(HomeScreen());
                  },
                  child: Text(
                    "Home",
                    style: GoogleFonts.montserrat(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Get.to(AboutScreen());
                  },
                  child: Text(
                    "About",
                    style: GoogleFonts.montserrat(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Deals",
                  style: GoogleFonts.montserrat(
                      fontSize: 16, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Project",
                  style: GoogleFonts.montserrat(
                      fontSize: 16, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "News & Blogs",
                  style: GoogleFonts.montserrat(
                      fontSize: 16, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Contact Us",
                  style: GoogleFonts.montserrat(
                      fontSize: 16, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Dealer Registration",
                  style: GoogleFonts.montserrat(
                      fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
        body: Obx(
          () => homeController.isLoading.value == true
              ? const Center(
                  child: CircularProgressIndicator(
                    // radius: 8,
                    backgroundColor: Colors.black,
                  ),
                )
              : SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          // Text('${homeController.homeScreenModel}'),
                          // Text('${homeController.homeScreenModel ?? "HomeScreenModel is null"}'),

                          // Container(
                          //   child:
                          //   // Image.asset("assets/Homeimgs/back_img.png"),
                          //   Image.network(homeController.homeScreenModel[0].backgroundImage

                          //       .toString()),
                          // ),

                          // ListView.builder(
                          //   shrinkWrap: true,
                          //     itemCount: homeController.homeScreenModel!.length,
                          //     itemBuilder: (context, index) {
                          //       Image.network(homeController
                          //           .homeScreenModel![index].backgroundImage
                          //           .toString());
                          //     }),

                          // Container(
                          //   child: Image.network(
                          //       "http://dealsabaad.com:5001/category/img/" +
                          //           homeController
                          //               .homeScreenModel![0].bannerImage
                          //               .toString()),
                          // ),
                          Container(
                            child: Image.asset('assets/Homeimgs/back_img.png'),
                          ),
// SKIP PHOTO
                          Positioned(
                            left: 20,
                            top: 20,
                            child: SizedBox(
                                height: 38,
                                width: 38,
                                child: Image.asset(
                                    "assets/Homeimgs/home_icon.png")),
                          ),
                          Positioned.fill(
                              top: 22,
                              left: 70,
                              child: Text(
                                'dealsabaad',
                                // '${homeController.homeScreenModel![0].name.toString()}',
                                style: GoogleFonts.ubuntu(
                                    fontSize: 28,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800),
                              )),
                          Positioned(
                            top: 70,
                            left: 70,
                            child: Center(
                              child: Text(
                                'Deals of a\n Lifetime',
                                style: GoogleFonts.ubuntu(
                                  fontSize: 34,
                                  height: 1,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Container(
                            //   child: Image.asset(
                            //       "assets/Homeimgs/bnr_sale_img.png"),
                            // ),

                            // InkWell(
                            //   onTap: () {
                            // Get.to(
                            //   BannerOne(),
                            //   arguments: {
                            //     'name': homeController
                            //         .homeScreenModel![0].name
                            //         .toString(),
                            //     'imageUrl':
                            //         "http://dealsabaad.com:5001/category/img/${homeController.homeScreenModel![0].backgroundImage}",
                            //     'image2':
                            //         "http://dealsabaad.com:5001/category/img/${homeController.homeScreenModel![1].bannerImage}",
                            //     'id': homeController.homeScreenModel![0].id
                            //         .toString()

                            //   },
                            // );

                            // //     for (var model
                            // //         in homeController.homeScreenModel!) {
                            // //       Get.to(BannerOne(), arguments: {
                            //         'id': model.id.toString(),
                            //         'imageUrl':
                            //             "http://dealsabaad.com:5001/category/img/${model.bannerImage}"
                            // //       });
                            // //     }
                            // //   },
                            // //   child:

                            // //    Container(
                            // //     child: Image.network(
                            // //         "http://dealsabaad.com:5001/category/img/${homeController.homeScreenModel![0].backgroundImage}"),
                            // //   ),
                            // // ),
                            // const SizedBox(
                            //   height: 20,
                            // ),
                            // Container(
                            //   child: Image.network(
                            //       "http://dealsabaad.com:5001/category/img/${homeController.homeScreenModel![1].backgroundImage}"),
                            // ),
                            // const SizedBox(
                            //   height: 20,
                            // ),
                            ListView.builder(
                                shrinkWrap: true,
                                physics: ScrollPhysics(),
                                itemCount:
                                    homeController.homeScreenModel!.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: InkWell(
                                      onTap: () {
                                        Get.to(CategoryScreen(), arguments: {
                                          'id': homeController
                                              .homeScreenModel![index].id
                                              .toString(),
                                          // 'imageUrl':
                                          //     "http://dealsabaad.com:5001/category/img/${homeController.homeScreenModel![index].backgroundImage}",
                                          'imageUrl':
                                              "http://dealsabaad.com:5001/category/img/${homeController.homeScreenModel![index].backgroundImage}",
                                          'name': homeController
                                              .homeScreenModel![index].name
                                              .toString()
                                        });
                                      },
                                      child: Container(
                                        child: Image.network(
                                            "http://dealsabaad.com:5001/category/img/${homeController.homeScreenModel![index].backgroundImage}"),
                                      ),
                                    ),
                                  );
                                }),
                            // Container(
                            //   child: Image.asset(
                            //       "assets/Homeimgs/bnr_flag_img.png"),
                            // ),

                            Text(
                              "Our amazing deals",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.ubuntu(
                                height: 1,
                                fontSize: 44,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),

                            // Padding(
                            //   padding: const EdgeInsets.only(bottom: 33),
                            //   child: Container(
                            //     child: ListView.builder(
                            //       physics: ScrollPhysics(),
                            //       shrinkWrap: true,
                            //       itemCount: homeController.dealModel!.length,
                            //       itemBuilder: (context, index) {
                            //         return Column(
                            //           mainAxisAlignment:
                            //               MainAxisAlignment.start,
                            //           crossAxisAlignment:
                            //               CrossAxisAlignment.start,
                            //           children: [
                            //             Card(
                            //               elevation: 6,
                            //               child: Padding(
                            //                 padding: const EdgeInsets.only(
                            //                     bottom: 4),
                            //                 child: Container(
                            //                   child: Column(
                            //                     children: [
                            //                       Image.network(
                            //                         "https://backend.dealsabaad.com/deal/img/" +
                            //                             homeController
                            //                                 .dealModel![index]
                            //                                 .frontImage
                            //                                 .toString(),
                            //                       ),
                            //                       Padding(
                            //                         padding: EdgeInsets.only(
                            //                             left: 10,
                            //                             right: 10,
                            //                             bottom: 10),
                            //                         child: Column(
                            //                           mainAxisAlignment:
                            //                               MainAxisAlignment
                            //                                   .start,
                            //                           crossAxisAlignment:
                            //                               CrossAxisAlignment
                            //                                   .start,
                            //                           children: [
                            //                             SizedBox(height: 6),
                            //                             Row(
                            //                               mainAxisAlignment:
                            //                                   MainAxisAlignment
                            //                                       .spaceBetween,
                            //                               children: [
                            //                                 Text(
                            //                                   'Super three room deal',
                            //                                   style: GoogleFonts.ubuntu(
                            //                                       fontSize: 20,
                            //                                       fontWeight:
                            //                                           FontWeight
                            //                                               .w800),
                            //                                 ),
                            //                                 Row(
                            //                                   children: [
                            //                                     RatingBar
                            //                                         .builder(
                            //                                       initialRating:
                            //                                           3,
                            //                                       minRating: 1,
                            //                                       direction: Axis
                            //                                           .horizontal,
                            //                                       allowHalfRating:
                            //                                           true,
                            //                                       itemCount: 1,
                            //                                       itemPadding: const EdgeInsets
                            //                                           .symmetric(
                            //                                           horizontal:
                            //                                               4.0),
                            //                                       itemBuilder:
                            //                                           (context,
                            //                                                   _) =>
                            //                                               const Icon(
                            //                                         size: 50,
                            //                                         Icons.star,
                            //                                         color: Colors
                            //                                             .amber,
                            //                                       ),
                            //                                       itemSize: 22,
                            //                                       onRatingUpdate:
                            //                                           (rating) {
                            //                                         print(
                            //                                             rating);
                            //                                       },
                            //                                     ),
                            //                                     Text(
                            //                                       '4.2',
                            //                                       style: GoogleFonts.ubuntu(
                            //                                           fontSize:
                            //                                               14,
                            //                                           fontWeight:
                            //                                               FontWeight
                            //                                                   .w800),
                            //                                     ),
                            //                                   ],
                            //                                 ),
                            //                               ],
                            //                             ),
                            //                             const SizedBox(
                            //                                 height: 8),
                            //                             Text(
                            //                               'MAK Business Tower, Ferozepur\n Road, Karachi',
                            //                               style: GoogleFonts
                            //                                   .ubuntu(
                            //                                       fontSize: 16,
                            //                                       fontWeight:
                            //                                           FontWeight
                            //                                               .w600),
                            //                             ),
                            //                             const SizedBox(
                            //                                 height: 2),
                            //                             Row(
                            //                               mainAxisAlignment:
                            //                                   MainAxisAlignment
                            //                                       .spaceBetween,
                            //                               children: [
                            //                                 Text(
                            //                                   'Rs 11,424,000',
                            //                                   style: GoogleFonts.ubuntu(
                            //                                       fontSize: 16,
                            //                                       fontWeight:
                            //                                           FontWeight
                            //                                               .w800),
                            //                                 ),
                            //                                 SizedBox(
                            //                                   height: 24,
                            //                                   width: 24,
                            //                                   child: Image.asset(
                            //                                       "assets/Homeimgs/cards-heart.png"),
                            //                                 ),
                            //                               ],
                            //                             ),
                            //                           ],
                            //                         ),
                            //                       ),
                            //                     ],
                            //                   ),
                            //                 ),
                            //               ),
                            //             ),
                            //           ],
                            //         );
                            //       },
                            //     ),
                            //   ),
                            // ),

                            Padding(
                              padding: const EdgeInsets.only(bottom: 33),
                              child: Container(
                                child: ListView.separated(
                                  physics: const ScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: homeController.dealModel!.length,
                                  separatorBuilder: (context, index) =>
                                      const SizedBox(
                                          height:
                                              20), // Add space between cards
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: () {
                                        // Get.to(SingleDeals());  commit check
                                      },
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Card(
                                            elevation: 6,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 4),
                                              child: Container(
                                                child: Column(
                                                  children: [
                                                    Image.network(
                                                      "https://backend.dealsabaad.com/deal/img/" +
                                                          homeController
                                                              .dealModel![index]
                                                              .frontImage
                                                              .toString(),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 10,
                                                              right: 10,
                                                              bottom: 10),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          const SizedBox(
                                                              height: 6),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Container(
                                                                width: 280,
                                                                child: Text(
                                                                  // 'Super three room deal',
                                                                  homeController
                                                                      .dealModel![
                                                                          index]
                                                                      .desc
                                                                      .toString(),
                                                                  style:
                                                                      GoogleFonts
                                                                          .ubuntu(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w800,
                                                                  ),
                                                                ),
                                                              ),
                                                              Row(
                                                                children: [
                                                                  RatingBar
                                                                      .builder(
                                                                    initialRating:
                                                                        3,
                                                                    minRating:
                                                                        1,
                                                                    direction: Axis
                                                                        .horizontal,
                                                                    allowHalfRating:
                                                                        true,
                                                                    itemCount:
                                                                        1,
                                                                    itemPadding: const EdgeInsets
                                                                        .symmetric(
                                                                        horizontal:
                                                                            4.0),
                                                                    itemBuilder:
                                                                        (context,
                                                                                _) =>
                                                                            const Icon(
                                                                      size: 50,
                                                                      Icons
                                                                          .star,
                                                                      color: Colors
                                                                          .amber,
                                                                    ),
                                                                    itemSize:
                                                                        22,
                                                                    onRatingUpdate:
                                                                        (rating) {
                                                                      print(
                                                                          rating);
                                                                    },
                                                                  ),
                                                                  Text(
                                                                    '4.2',
                                                                    style: GoogleFonts
                                                                        .ubuntu(
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w800,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          const SizedBox(
                                                              height: 8),
                                                          Text(
                                                            // 'MAK Business Tower, Ferozepur Road, Karachi',
                                                            '${homeController.dealModel![0].name}',
                                                            style: GoogleFonts
                                                                .ubuntu(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              height: 2),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Text(
                                                                // 'Rs 11,424,000',
                                                                'Rs ${homeController.dealModel![index].price.toString()}',
                                                                style:
                                                                    GoogleFonts
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
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),

                            const SizedBox(
                              height: 20,
                            ),

                            // CardWigdet(
                            //     img:
                            //         "https://backend.dealsabaad.com/deal/img/" +
                            //             homeController.dealModel![0].frontImage
                            //                 .toString()),
                            // const SizedBox(
                            //   height: 20,
                            // ),
                            // CardWigdet(img: "assets/Homeimgs/deco2_image.png"),
                            // const SizedBox(
                            //   height: 20,
                            // ),
                            // CardWigdet(img: "assets/Homeimgs/deco3_image.png"),
                            // const SizedBox(
                            //   height: 20,
                            // ),
                            Stack(
                              children: [
                                AspectRatio(
                                  aspectRatio: homeController
                                      .controller.value.aspectRatio,
                                  child: VideoPlayer(homeController.controller),
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
                                            homeController.togglePlayPause();
                                          },
                                          child: Icon(homeController
                                                  .controller.value.isPlaying
                                              ? Icons.pause
                                              : Icons.play_arrow)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Customer testimonials",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.ubuntu(
                                height: 1,
                                fontSize: 44,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Our customers are not customers but our family. Check out what our family says about DealsAbaad",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.ubuntu(
                                height: 1.2,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(
                              height: 32,
                            ),
                            Card(
                              elevation: 7,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: const Color(
                                      0xffF2F5F7,
                                    ),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 8, right: 7),
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: Colors.transparent,
                                            radius: 26,
                                            child: Image.asset(
                                                "assets/Homeimgs/avetar_img.png"),
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Muhammad Fahad",
                                                // '${homeController.homeScreenModel!.name.toString()}',
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.ubuntu(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 4,
                                              ),
                                              Text(
                                                "Karachi, Pakistan",
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.ubuntu(
                                                  height: 1,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            width: 7,
                                          ),
                                          RatingBar.builder(
                                            initialRating: 3,
                                            minRating: 1,
                                            direction: Axis.horizontal,
                                            allowHalfRating: true,
                                            itemCount: 4,
                                            itemPadding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 1.0),
                                            itemBuilder: (context, _) =>
                                                const Icon(
                                              size: 50,
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            itemSize: 19,
                                            onRatingUpdate: (rating) {
                                              print(rating);
                                            },
                                          ),
                                          const SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            '4.4',
                                            style: GoogleFonts.ubuntu(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w800),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 14,
                                      ),
                                      Text(
                                        "I bought 2 rooms apartment from DealsAbaad. Initially I was very much reluctant to invest as who would like to purchase a property which is at super discount. I used to heard discount on dresses, food but never of property.After following their page, me and my friend went to see their office and after the dealing of around 1.5 hours we paid token of the shop.",
                                        textAlign: TextAlign.justify,
                                        style: GoogleFonts.ubuntu(
                                          height: 1,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 14,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xffF2F5F7),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Center(
                                      child: Text(
                                    "How it Work",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  )),
                                  const SizedBox(
                                    height: 20,
                                  ),

                                  Iconwidget(
                                      iconimag:
                                          'assets/Homeimgs/search_icon.png',
                                      title: 'Search & Browse'),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Iconwidget(
                                      iconimag:
                                          'assets/Homeimgs/check_out_icon.png',
                                      title: "Checkout process"),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Iconwidget(
                                      iconimag: 'assets/Homeimgs/tool_icon.png',
                                      title: "Additional tools & Resources"),

                                  // Container(
                                  //   decoration: BoxDecoration(
                                  //       color:
                                  //           Color.fromARGB(255, 214, 222, 234),
                                  //       borderRadius:
                                  //           BorderRadius.circular(10)),
                                  //   child: Container(
                                  //     height: 60,
                                  //     child: Padding(
                                  //       padding: const EdgeInsets.all(8.0),
                                  //       child: Image.asset(
                                  //           'assets/Homeimgs/search_icon copy.png'),
                                  //     ),
                                  //   ),
                                  // ),
                                  // const SizedBox(
                                  //   height: 20,
                                  // ),
                                  // Text(
                                  //   'Search & Browse',
                                  //   style: GoogleFonts.montserrat(
                                  //       fontSize: 20,
                                  //       fontWeight: FontWeight.bold),
                                  // ),
                                  // Text(
                                  //   'Use our advanced search feature to find properties based on your criteria',
                                  //   textAlign: TextAlign.center,
                                  //   style: GoogleFonts.montserrat(
                                  //       fontSize: 16,
                                  //       fontWeight: FontWeight.w400),
                                  // ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Center(
                        child: Text(
                          "Our Partners",
                          style: GoogleFonts.montserrat(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),

                      Center(
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xfff2f5f7),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 60, vertical: 38),
                                child: Image.asset(
                                    "assets/Homeimgs/gfs_prj_img.png"),
                              ))),
                      const SizedBox(
                        height: 40,
                      ),

                      Center(
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xfff2f5f7),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 92, vertical: 24),
                                child: Image.asset(
                                    "assets/Homeimgs/bhria_img.png"),
                              ))),
                      const SizedBox(
                        height: 40,
                      ),
                      Center(
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xfff2f5f7),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 14, vertical: 30),
                                child: Image.asset(
                                    "assets/Homeimgs/realstate_img.png"),
                              ))),
                      const SizedBox(
                        height: 40,
                      ),

                      Center(
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xfff2f5f7),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 14, vertical: 30),
                                child:
                                    Image.asset("assets/Homeimgs/nara_img.png"),
                              ))),

                      const SizedBox(
                        height: 40,
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
                                  Image.asset("assets/Homeimgs/instagram.png"),
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
                                    aspectRatio: homeController
                                        .controller.value.aspectRatio,
                                    child:
                                        VideoPlayer(homeController.controller2),
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
                                              homeController.togglePlayPause2();
                                            },
                                            child: Icon(homeController
                                                    .controller2.value.isPlaying
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
                                  Image.asset("assets/Homeimgs/mastercard.png"),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
          // )
        ));
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

  Container Iconwidget({iconimag, title}) {
    return Container(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 214, 222, 234),
                borderRadius: BorderRadius.circular(10)),
            child: Container(
              height: 60,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Image.asset(iconimag),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: GoogleFonts.montserrat(
                fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            'Use our advanced search feature to find properties based on your criteria',
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
                fontSize: 16, fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}

class CardWigdet extends StatelessWidget {
  String img;
  CardWigdet({
    required this.img,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 6,
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(img),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Super three room deal',
                        style: GoogleFonts.ubuntu(
                            fontSize: 20, fontWeight: FontWeight.w800),
                      ),
                      Row(
                        children: [
                          RatingBar.builder(
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 1,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => const Icon(
                              size: 50,
                              Icons.star,
                              color: Colors.amber,
                            ),
                            itemSize: 22,
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                          Text(
                            '4.2',
                            style: GoogleFonts.ubuntu(
                                fontSize: 14, fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'MAK Business Tower, Ferozepur\n Road, Karachi',
                    style: GoogleFonts.ubuntu(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Rs 11,424,000',
                        style: GoogleFonts.ubuntu(
                            fontSize: 16, fontWeight: FontWeight.w800),
                      ),
                      SizedBox(
                        height: 24,
                        width: 24,
                        child: Image.asset("assets/Homeimgs/cards-heart.png"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
