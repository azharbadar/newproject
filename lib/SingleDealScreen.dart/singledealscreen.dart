import 'package:carousel_slider/carousel_slider.dart';
import 'package:dealsabaadproject/Controllers/CategoryController/categorycontroller.dart';
import 'package:dealsabaadproject/Controllers/HomeController/homecontroller.dart';
import 'package:dealsabaadproject/Controllers/SingleDealsController/singledealscontroller.dart';
import 'package:dealsabaadproject/Utilis/CustomWidget/customwidge.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:video_player/video_player.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class SingleDealScreen extends StatelessWidget {
  SingleDealScreen({super.key});
  SingleDealController singleDealController = Get.put(SingleDealController());
  @override
  Widget build(BuildContext context) {
    //  String imag = Get.arguments;
    Map<String, dynamic> args = Get.arguments;
    String idcheck = args['dealid'];
    String desc = args['desc'];
    String price = args['price'];

    // String imageUrl = args['imageUrl'];
    // String name = args['name'];
    final _webViewKey = UniqueKey();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const WebView(
            //   initialUrl:
            //       'https://www.google.com/maps/embed?pb=!1m17!1m12!1m3!1d3615.722852530518!2d67.30683631500581!3d25.009531683983855!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m2!1m1!2zMjXCsDAwJzM0LjMiTiA2N8KwMTgnMzIuNSJF!5e0!3m2!1sen!2s!4v1690797241363!5m2!1sen!2s',
            //   javascriptMode: JavascriptMode
            //       .unrestricted, // Ensure JavascriptMode is imported and used correctly
            // ),

            // Image.network("https://backend.dealsabaad.com/category/img/" +
            //     image.toString()),  skip

            // Image.network("https://backend.dealsabaad.com/category/img/" +
            //     bgimage.toString()),

            // future

            FutureBuilder(
                future: singleDealController.onSubmit(idcheck),
                // future: singleDealController.initializeVideoPlayerFuture,
                builder: ((context, snapshot) {
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
                        Image.network(
                            "https://backend.dealsabaad.com/category/img/$bgimage"),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 10,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Container(
                              //   width: double
                              //       .infinity, // Ensure WebView expands horizontally
                              //   height: 100, // Set the desired height
                              //   child: WebView(
                              //     key: _webViewKey,
                              //     initialUrl:
                              //         'https://www.google.com/maps/embed?pb=!1m17!1m12!1m3!1d3615.722852530518!2d67.30683631500581!3d25.009531683983855!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m2!1m1!2zMjXCsDAwJzM0LjMiTiA2N8KwMTgnMzIuNSJF!5e0!3m2!1sen!2s!4v1690797241363!5m2!1sen!2s',
                              //     javascriptMode: JavascriptMode.unrestricted,
                              //   ),
                              // ),

                              Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xffFFD624),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      singleDealController
                                          .singleDealsModel!.desc
                                          .toString(),
                                      style: GoogleFonts.montserrat(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )),
                              Container(
                                child: CarouselSlider(
                                  items: singleDealController
                                      .singleDealsModel!.dealImages!
                                      .map((item) {
                                    return Container(
                                      width: MediaQuery.of(context).size.width,
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 5.0),
                                      child: Center(
                                        child: Image.network(
                                          "https://backend.dealsabaad.com/deal/img/${item.imagePath.toString()}",
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                  options: CarouselOptions(
                                    autoPlay: true,
                                    height: 150.0,
                                    enlargeCenterPage: true,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                    color: Color(0xffF2F5F7)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 14),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: const Color(0xff4A6594),
                                              borderRadius:
                                                  BorderRadius.circular(8)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Text(
                                              "Apply Discount/Referral Code to Get Exclusive Discount!",
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Deal Ends in",
                                            style: GoogleFonts.montserrat(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(
                                            width: 30,
                                          ),
                                          Text.rich(
                                            TextSpan(
                                              text: "Hurry up only ",
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 20),
                                              children: <InlineSpan>[
                                                TextSpan(
                                                  text: singleDealController
                                                      .differenceInDays
                                                      .toString(),
                                                ),

                                                // Add a line break or separate Text widget for the last part
                                                const TextSpan(
                                                  text: '\n',
                                                ),
                                                const TextSpan(
                                                  text:
                                                      " days left!", // Or any other text for the last part
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 30),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            timewidget(time: "HOURS"),
                                            timewidget(time: "MIN"),
                                            timewidget(time: "SEC"),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 30,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Project Detials",
                                style: GoogleFonts.montserrat(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text.rich(
                                TextSpan(
                                  text: "Project Name: ",
                                  style: GoogleFonts.montserrat(fontSize: 16),
                                  children: <InlineSpan>[
                                    // Add a line break or separate Text widget for the last part

                                    TextSpan(
                                      text:
                                          desc, // Or any other text for the last part
                                    ),
                                  ],
                                ),
                              ),
                              Text.rich(
                                TextSpan(
                                  text: "Price: Rs.",
                                  style: GoogleFonts.montserrat(fontSize: 16),
                                  children: <InlineSpan>[
                                    // Add a line break or separate Text widget for the last part

                                    TextSpan(
                                      text:
                                          price, // Or any other text for the last part
                                    ),
                                  ],
                                ),
                              ),
                              const Divider(),
                              Text(
                                "Description",
                                style: GoogleFonts.montserrat(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                textAlign: TextAlign.justify,
                                singleDealController
                                    .singleDealsModel!.project!.description
                                    .toString(),
                                style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                ),
                              ),
                              const Divider(),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Features",
                                style: GoogleFonts.montserrat(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    singleDealController
                                        .singleDealsModel!
                                        .project!
                                        .projectsFeature![0]
                                        .feature!
                                        .name
                                        .toString(),
                                    style: GoogleFonts.montserrat(fontSize: 16),
                                  ),
                                  Text(
                                      singleDealController
                                          .singleDealsModel!
                                          .project!
                                          .projectsFeature![1]
                                          .feature!
                                          .name
                                          .toString(),
                                      style:
                                          GoogleFonts.montserrat(fontSize: 16)),
                                  Text(
                                      singleDealController
                                          .singleDealsModel!
                                          .project!
                                          .projectsFeature![2]
                                          .feature!
                                          .name
                                          .toString(),
                                      style:
                                          GoogleFonts.montserrat(fontSize: 16))
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    singleDealController
                                        .singleDealsModel!
                                        .project!
                                        .projectsFeature![2]
                                        .feature!
                                        .name
                                        .toString(),
                                    style: GoogleFonts.montserrat(fontSize: 16),
                                  ),
                                  const SizedBox(width: 20),
                                  Text(
                                      singleDealController
                                          .singleDealsModel!
                                          .project!
                                          .projectsFeature![4]
                                          .feature!
                                          .name
                                          .toString(),
                                      style:
                                          GoogleFonts.montserrat(fontSize: 16)),
                                ],
                              ),
                              const SizedBox(width: 10),
                              const Divider(),
                              const SizedBox(width: 10),
                              Text(
                                "Address :",
                                style: GoogleFonts.montserrat(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              LocationRichText(
                                  address: "Address : ",
                                  text: singleDealController
                                      .singleDealsModel!.project!.cities!.name),
                              const SizedBox(
                                height: 8,
                              ),
                              LocationRichText(
                                  address: "Location : ",
                                  text: singleDealController.singleDealsModel!
                                      .project!.location!.name),
                              const SizedBox(
                                height: 8,
                              ),
                              LocationRichText(
                                  address: "Property Type : ",
                                  text: singleDealController.singleDealsModel!
                                      .project!.propertylocation!.name),
                              const SizedBox(
                                height: 8,
                              ),
                              const Divider(),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Other Details :",
                                style: GoogleFonts.montserrat(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              LocationRichText(
                                  address: "Property Type : ",
                                  text: singleDealController.singleDealsModel!
                                      .project!.propertylocation!.name),
                              const Divider(),
                              const SizedBox(
                                height: 16,
                              ),
                              Text.rich(
                                TextSpan(
                                  text: singleDealController
                                      .singleDealsModel!.project!.totalsize
                                      .toString(),
                                  style: GoogleFonts.montserrat(fontSize: 16),
                                  children: <InlineSpan>[
                                    const TextSpan(text: " "),
                                    TextSpan(
                                      text: singleDealController
                                          .singleDealsModel!.project!.sizestype
                                          .toString(),
                                      style: GoogleFonts.montserrat(
                                          fontSize: 16), // O
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Divider(),
                              const SizedBox(height: 10),
                              Text(
                                "Location",
                                style: GoogleFonts.montserrat(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10),
                              // Container(
                              //   decoration: BoxDecoration(
                              //       borderRadius: BorderRadius.circular(100)),
                              //   height: 400,
                              //   child: GoogleMap(
                              //     initialCameraPosition:
                              //         SingleDealController.kGoogLePlex,
                              //   ),
                              // ),
                              Container(
                                height: 400,
                                child: WebView(
                                  initialUrl: 'about:blank',
                                  javascriptMode: JavascriptMode.unrestricted,
                                  onWebViewCreated:
                                      (WebViewController webViewController) {
                                    String mapUrl =
                                        'https://www.google.com/maps/embed?pb=!1m17!1m12!1m3!1d3615.722852530518!2d67.30683631500581!3d25.009531683983855!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m2!1m1!2zMjXCsDAwJzM0LjMiTiA2N8KwMTgnMzIuNSJF!5e0!3m2!1sen!2s!4v1690797241363!5m2!1sen!2s';
                                    String html =
                                        '<iframe src="$mapUrl" width="100%" height="100%" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>';
                                    webViewController.loadUrl(
                                        Uri.dataFromString(html,
                                                mimeType: 'text/html')
                                            .toString());
                                  },
                                ),
                              ),
                              const SizedBox(height: 18),
                              Center(
                                child: YoutubePlayer(
                                  controller: singleDealController.controller,
                                  showVideoProgressIndicator: true,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: const Color(0xffF2F5F7),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 12),
                                      Center(
                                        child: Container(
                                          width: Get.width,
                                          decoration: BoxDecoration(
                                              color: const Color(0xff4A6594),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              "Select Your Unit",
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 12,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: const Color(0xffFFD624),
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "View Floor Plan",
                                            style: GoogleFonts.montserrat(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 12,
                                      ),
                                      Text(
                                        "Select Floor Number",
                                        style: GoogleFonts.montserrat(
                                            color: Colors.black),
                                      ),
                                      const SizedBox(
                                        height: 12,
                                      ),
                                      Obx(() => Container(
                                            width: Get.width,
                                            height: 50,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            child: DropdownButtonHideUnderline(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10),
                                                child: DropdownButton(
                                                  value: singleDealController
                                                      .selectflorOption.value,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      color: Colors.black),
                                                  onChanged: (newValue) {
                                                    singleDealController
                                                        .changefloorOption(
                                                            newValue!);
                                                    // singleDealController
                                                    //     .newfun(newValue!);
                                                  },
                                                  items: singleDealController
                                                      .selectflorDropdown
                                                      .map<
                                                          DropdownMenuItem<
                                                              String>>((value) {
                                                    return DropdownMenuItem<
                                                        String>(
                                                      value: value,
                                                      child: Text(value),
                                                    );
                                                  }).toList(),
                                                ),
                                              ),
                                            ),
                                          )),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        "Select Unit Number",
                                        style: GoogleFonts.montserrat(
                                            color: Colors.black),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Obx(() => Container(
                                            width: Get.width,
                                            height: 50,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                            child: DropdownButtonHideUnderline(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10),
                                                child: DropdownButton(
                                                  value: singleDealController
                                                      .selectunitOption.value,
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      color: Colors.black),
                                                  onChanged: (newValue) {
                                                    print(newValue);
                                                    singleDealController
                                                        .changeunitOption(
                                                            newValue!);
                                                  },
                                                  items: singleDealController
                                                      .selectunitDropdown
                                                      .map<
                                                          DropdownMenuItem<
                                                              String>>((value) {
                                                    return DropdownMenuItem<
                                                        String>(
                                                      value: value,
                                                      child: Text(value),
                                                    );
                                                  }).toList(),
                                                ),
                                              ),
                                            ),
                                          )),
                                      const SizedBox(height: 10),
                                      Text(
                                        "Apply Voucher / Referral Code",
                                        style: GoogleFonts.montserrat(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        "Standard Price",
                                        style: GoogleFonts.montserrat(
                                          fontSize: 16,
                                        ),
                                      ),
                                      Obx(
                                        () => Text(
                                          singleDealController.standardprice
                                              .toString(),
                                          style: GoogleFonts.montserrat(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Obx(
                                        () => Text(
                                          "Discount (${singleDealController.percentage.toString()})",
                                          style: GoogleFonts.montserrat(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                      Obx(
                                        () => Text(
                                          // "Rs.0/",
                                          singleDealController.totalsaleprice
                                              .toString(),
                                          style: GoogleFonts.montserrat(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        "Referral Discount",
                                        style: GoogleFonts.montserrat(
                                          fontSize: 16,
                                        ),
                                      ),
                                      Text(
                                        "Rs.0/",
                                        style: GoogleFonts.montserrat(
                                          fontSize: 16,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        width: Get.width,
                                        decoration: BoxDecoration(
                                            color: const Color(0xffFFD624),
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Center(
                                            child: Text(
                                              "Get The Deal",
                                              style: GoogleFonts.montserrat(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 12),
                                      Center(
                                        child: Text(
                                          "Select payment schedule on next page",
                                          style: GoogleFonts.montserrat(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 12),
                                    ],
                                  ),
                                ),
                              ),
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
                          height: 20,
                        ),
                        Container(
                          height: 100,
                          color: const Color(0xff181c2c),
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
                                Center(
                                  child: YoutubePlayer(
                                    controller:
                                        singleDealController.controllertwo,
                                    showVideoProgressIndicator: true,
                                  ),
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
                      ],
                    );
                  }
                })),
          ],
        ),
      ),
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

  Container LocationRichText({address, text}) {
    return Container(
      child: Text.rich(
        TextSpan(
          text: address,
          style: GoogleFonts.montserrat(fontSize: 16),
          children: <InlineSpan>[
            // Add a line break or separate Text widget for the last part

            TextSpan(
              // text: singleDealControllerx`
              //     .singleDealsModel!
              //     .project!
              //     .cities!
              //     .name
              //     .toString() // Or any other text for the last part
              text: text.toString(),
              style: GoogleFonts.montserrat(fontSize: 16), // O
            ),
          ],
        ),
      ),
    );
  }
}
