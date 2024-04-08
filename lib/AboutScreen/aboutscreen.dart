import 'package:dealsabaadproject/HomeScreen/homescreen.dart';
import 'package:dealsabaadproject/Loginscreen/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
      ),

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
              Text(
                "About",
                style: GoogleFonts.montserrat(
                    fontSize: 16, fontWeight: FontWeight.w400),
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
      body: SingleChildScrollView(
        child: Column(
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
                      child: Image.asset("assets/Homeimgs/home_icon.png")),
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
                      'About us',
                      style: GoogleFonts.ubuntu(
                        fontSize: 34,
                        height: 1,
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 120,
                  left: 20,
                  child: Center(
                    child: Text(
                      'Karay apkay khuwaboon ko abaad',
                      style: GoogleFonts.ubuntu(
                        fontSize: 22,
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
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'About us',
                      style: GoogleFonts.ubuntu(
                        fontSize: 34,
                        height: 1,
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 36,
                  ),
                  Text(
                    "A digital marketing platform that is established to undo the myth of the word, “RISK” when it comes to market. DealsAbaad’s aim is to provide confidence and integrity as a marketingagency to people on behalf of trusted builders working in Market to trust this industry both local and overseas investors. People who are located in Pakistan can easily visit an satisfy their ambiguities and fears but what about overseas investors? Due to lack of commitment, lack of information and uncertainties, overseas investors resists in investing online. We envision an online market place for local and overseas buyers where they can	buy, sell or rent out from reliable sellers who are signed up us as Marketing agency.",
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "We believe in the phenomenon of life, until the heart beats, a person lives; similarly at DealsAbaad we try to live everyday by re-inventing our processes conducting research, adapting change, tapping creative platforms, bringing-in technological novelties and 	finding out innovative marketing solutions to all our clients.",
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.montserrat(fontSize: 16),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "We believe in the phenomenon of life, until the heart beats, a person lives; similarly at DealsAbaad we try to live everyday by re-inventing our processes conducting research, adapting change, tapping creative platforms, bringing-in technological novelties and 	finding out innovative marketing solutions to all our clients.",
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.montserrat(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Our objective doesn’t revolve around offering or locking a fancy deal or marketing a only.With diversified services that we offer we try our best to provide the optimum solution to your problem and recommend something of value. We strongly believe that it is immense to 		have a personal approach when interacting with target market, as it gives a comprehensive	understanding of how well we can serve them in choosing a offering by our clients, either	commercial or residential.",
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.montserrat(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Image.asset("assets/aboutimg/about-us.jpg"),
                  const SizedBox(height: 40),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xffF2F5F7),
              ),
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 40),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              'Vision',
                              style: GoogleFonts.ubuntu(
                                fontSize: 34,
                                height: 1,
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          // Text(
                          //   "Our vision is to lead the real estate marketing industry by leveraging modern media strategies and offering affordable, cost-effective deals. We aim to redefine how people buy and sell properties. By prioritizing accessibility, we empower individuals from 	diverse backgrounds ",
                          //   textAlign: TextAlign.justify,
                          //   style: GoogleFonts.montserrat(fontSize: 16),
                          // ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      "Our vision is to lead the real estate marketing industry by leveraging modern media strategies and offering affordable, cost-effective deals. We aim to redefine how people buy and sell properties.By prioritizing accessibility, we empower individuals from diverse backgrounds.",
                                  style: GoogleFonts.montserrat(fontSize: 16),
                                ),
                                const TextSpan(
                                  text: "to achieve homeownership goals",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      ". Our firm will be known for social media-driven, offer ",
                                  style: GoogleFonts.montserrat(fontSize: 16),
                                ),
                                const TextSpan(
                                  text: "affordable deals",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: ", transforming lives and ",
                                  style: GoogleFonts.montserrat(fontSize: 16),
                                ),
                                const TextSpan(
                                  text: "shaping the future of real estate",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                              style: const TextStyle(color: Colors.black),
                            ),
                            textAlign: TextAlign.justify,
                          ),

                          const SizedBox(height: 20),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              'Mission',
                              style: GoogleFonts.ubuntu(
                                fontSize: 34,
                                height: 1,
                                color: Colors.black,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),

                          Text(
                            "Our mission is to provide exceptional real estate marketing and construction services that leverage the power of social media and introduce affordable and cost-effective deals. We	are dedicated to helping individuals and families achieve their homeownership dreams by	connecting them with the right properties at the right prices. Our mission is to make a	positive impact on the real estate market by promoting accessibility, affordability, and customer satisfaction.",
                            style: GoogleFonts.montserrat(fontSize: 16),
                          ),
                          const SizedBox(
                            height: 20,
                          ),

                          Image.asset("assets/aboutimg/vision-mission.jpg"),
                          const SizedBox(
                            height: 20,
                          ),
                          // ListView.builder(
                          //     shrinkWrap: true,
                          //     physics: ScrollPhysics(),
                          //     itemCount: 5,
                          //     itemBuilder: (context, index) {
                          //       return Card(
                          //         shape: RoundedRectangleBorder(
                          //           borderRadius: BorderRadius.circular(
                          //               10), // Adjust the value according to your preference
                          //           side: const BorderSide(
                          //               color: Colors.black,
                          //               width:
                          //                   1), // Adjust the color and width of the outline
                          //         ),
                          //         child: Padding(
                          //           padding: const EdgeInsets.symmetric(
                          //               horizontal: 14, vertical: 30),
                          //           child: Column(
                          //             children: [
                          //               const SizedBox(
                          //                 height: 30,
                          //               ),
                          //               Container(
                          //                 child: Image.asset(
                          //                     "assets/aboutimg/core_values.png"),
                          //               ),
                          //               Text(
                          //                 "Core Values",
                          //                 style: GoogleFonts.montserrat(
                          //                     fontSize: 18,
                          //                     fontWeight: FontWeight.bold),
                          //               ),
                          //               const SizedBox(height: 20),
                          //               Padding(
                          //                 padding: const EdgeInsets.symmetric(
                          //                     horizontal: 10),
                          //                 child: Text(
                          //                   "Our core values are less corporate and more personal as we believe that services are always provided to rule the hearts rather than making money",
                          //                   textAlign: TextAlign.center,
                          //                   style: GoogleFonts.montserrat(
                          //                       fontSize: 16),
                          //                 ),
                          //               ),
                          //             ],
                          //           ),
                          //         ),
                          //       );
                          //     })

                          ListView.builder(
                            shrinkWrap: true,
                            physics: ScrollPhysics(),
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return Center(
                                // Wrap Card with Center widget
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: const BorderSide(
                                          color: Colors.black, width: 1),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 14, vertical: 30),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment
                                            .center, // Align content vertically to the center
                                        children: [
                                          const SizedBox(height: 30),
                                          Container(
                                            child: Image.asset(
                                                "assets/aboutimg/core_values.png"),
                                          ),
                                          const SizedBox(height: 10),
                                          Text(
                                            "Core Values",
                                            style: GoogleFonts.montserrat(
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(height: 20),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Text(
                                              "Our core values are less corporate and more personal as we believe that services are always provided to rule the hearts rather than making money",
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 16),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          )

                          // Card(
                          //   shape: RoundedRectangleBorder(
                          //     borderRadius: BorderRadius.circular(
                          //         10), // Adjust the value according to your preference
                          //     side: const BorderSide(
                          //         color: Colors.black,
                          //         width:
                          //             1), // Adjust the color and width of the outline
                          //   ),
                          //   child: Padding(
                          //     padding: const EdgeInsets.symmetric(
                          //         horizontal: 14, vertical: 30),
                          //     child: Column(
                          //       children: [
                          //         const SizedBox(
                          //           height: 30,
                          //         ),
                          //         Container(
                          //           child: Image.asset(
                          //               "assets/aboutimg/core_values.png"),
                          //         ),
                          //         Text(
                          //           "Core Values",
                          //           style: GoogleFonts.montserrat(
                          //               fontSize: 18,
                          //               fontWeight: FontWeight.bold),
                          //         ),
                          //         const SizedBox(height: 20),
                          //         Padding(
                          //           padding: const EdgeInsets.symmetric(
                          //               horizontal: 10),
                          //           child: Text(
                          //             "Our core values are less corporate and more personal as we believe that services are always provided to rule the hearts rather than making money",
                          //             textAlign: TextAlign.center,
                          //             style:
                          //                 GoogleFonts.montserrat(fontSize: 16),
                          //           ),
                          //         ),
                          //       ],
                          //     ),
                          //   ),
                          // ),
                        ],
                      )),
                  // Card(
                  //   child: Container(
                  //     child: Image.asset("assets/aboutimg/core_values.png"),
                  //   ),
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
