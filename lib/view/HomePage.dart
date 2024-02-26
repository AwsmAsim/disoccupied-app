import 'package:disoccupied/utils/ColorConstants.dart';
import 'package:disoccupied/utils/TextConstants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double pgWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.backgroundColot,
        elevation: 0,
        title: Center(
          child: Container(
            child: SvgPicture.asset(
                "assets/svg/disoccupied-logo.svg",
                width: pgWidth/2,
                semanticsLabel: 'A red up arrow'
            ),
          ),
        ),
      ),
      backgroundColor: ColorConstants.backgroundColot,
      body: Column(
        children: [

          // Line Seaprator
          Container(
            width: double.infinity,
            height: 2.0,
            color: Colors.grey[300],
          ),

          // Rest of the body
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
              child: ListView(
                children: [

                  // Search Bar
                  // Container contains the search bar decoration
                  Container(
                    width: double.infinity,
                    height: 55.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.55),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    // Row of - search button, text field, camera
                    child: Row(
                      children: [

                        // search icon
                        AspectRatio(
                            aspectRatio: 1,
                            child: Container(
                              child: Icon(
                                Icons.search,
                                size: 30.0,
                                color: ColorConstants.secondaryColor,
                              ),
                            ),
                        ),

                        //Text field
                        Expanded(child: Container(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none
                            ),
                          ),
                        ),),

                        // camera icon
                        AspectRatio(
                            aspectRatio: 1,
                            child: Container(
                              child: Icon(
                                Icons.camera_alt,
                                color: ColorConstants.secondaryColor,
                                size: 30.0,
                              ),
                              margin: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                                color: ColorConstants.backgroundColot,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.55),
                                    spreadRadius: 0,
                                    blurRadius: 10,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                              ),
                            ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 16.0,
                  ),

                  // Search instruction text
                  Container(
                    width: double.infinity,
                    child: Text(
                      "Search brands or take a photo of any product logo to get a quick answer on whether they support the ongoing occupation.",
                      style: GoogleFonts.poppins(
                        fontSize: TextConstants.fontSizeH4,
                        color: Colors.grey[500]
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 32.0,
                  ),

                  // Search where you spend your money
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("WHERE YOU SPEND YOUR MONEY MATTERS",
                          style: GoogleFonts.staatliches(
                            fontSize: TextConstants.fontSizeH1,
                            color: ColorConstants.primaryColor,
                            fontWeight: FontWeight.w600
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text("KNOW YOUR ALTERNATIVES",
                          style: GoogleFonts.staatliches(
                            fontSize: TextConstants.fontSizeH1,
                            fontWeight: FontWeight.w600,
                            color: ColorConstants.secondaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),


                  SizedBox(height: 32.0,),
                  // Ranking text
                  Container(
                    child: Text(
                      "WE'RE RANKING thousands of global brands based on their support of equality and justice.".toUpperCase(),
                      textAlign: TextAlign.center,
                      style: GoogleFonts.staatliches(
                        fontSize: TextConstants.fontSizeH2,
                        fontWeight: FontWeight.w100
                      ),
                    ),
                  ),

                  SizedBox(height: 8.0,),
                  // submitting text
                  Container(
                    width: double.infinity,
                    child: Text(
                      "Help us by sumbitting the brands where YOU live",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontSize: TextConstants.fontSizeH3,
                          color: Colors.grey[500]
                      ),
                    ),
                  ),


                  SizedBox(height: 32.0,),
                  //Follow on social media
                  Text("Follow us on social media".toUpperCase(),
                    textAlign: TextAlign.center,
                    style: GoogleFonts.staatliches(
                      fontSize: TextConstants.fontSizeH2,
                      letterSpacing: 1.0
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.facebook,
                        color: ColorConstants.secondaryColor,
                      ),
                      SizedBox(width: 4.0,),
                      Icon(Icons.copy,
                        color: ColorConstants.secondaryColor,
                      )
                    ],
                  ),

                  // Donation appeal
                  SizedBox(height: 32.0,),
                  // Ranking text
                  Container(
                    child: Text(
                      "TO HELP THIS EFFORT, PLEASE CONSIDER SUPPORTING DISOCCUPIED THROUGH A MONTHLY OR ONE-TIME CONTRIBUTION AT THE LINK BELOW.".toUpperCase(),
                      textAlign: TextAlign.center,
                      style: GoogleFonts.staatliches(
                          fontSize: TextConstants.fontSizeH2,
                          fontWeight: FontWeight.w100
                      ),
                    ),
                  ),

                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                        decoration: BoxDecoration(
                          color: Color(0xffffc439),
                          borderRadius: BorderRadius.circular(100.0)
                        ),
                        child: Text("Donate",
                          style: GoogleFonts.poppins(

                          ),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
