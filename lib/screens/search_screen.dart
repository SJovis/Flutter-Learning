import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hello_world/utils/app_layout.dart';
import 'package:hello_world/widgets/icon_text_widget.dart';

import '../utils/app_styles.dart';
import '../widgets/Double_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          // HEADING
          Text(
            'What are\nyou looking for?',
            style: Styles.headlineStyle1.copyWith(
              fontSize: AppLayout.getWidth(35),
            ),
          ),
          Gap(AppLayout.getHeight(20)),
          //  TOP TICKETS/HOTELS TABS
          FittedBox(
            child: Container(
              padding: EdgeInsets.all(AppLayout.getHeight(3.5)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
                color: const Color(0xFFF4F6FD),
              ),
              child: Row(
                children: [
                  // AIRLINE TICKETS
                  Container(
                    width: size.width * .44,
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(
                          AppLayout.getHeight(50),
                        ),
                      ),
                      color: Colors.white,
                    ),
                    child: const Center(
                      child: Text('Airline tickets'),
                    ),
                  ),
                  // HOTELS
                  Container(
                    width: size.width * .44,
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(
                          AppLayout.getHeight(50),
                        ),
                      ),
                      color: Colors.transparent,
                    ),
                    child: const Center(
                      child: Text('Hotels'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Gap(AppLayout.getHeight(25)),
          // DEPARTURED BOX
          const AppIconText(
              icon: Icons.flight_takeoff_rounded, text: 'Departured'),
          Gap(AppLayout.getHeight(20)),
          // ARRIVAL BOX
          const AppIconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
          Gap(AppLayout.getHeight(25)),
          // Find Tickets BUTTON
          Container(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getHeight(18),
                horizontal: AppLayout.getWidth(15)),
            decoration: BoxDecoration(
              color: const Color(0xD91136CE),
              borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
            ),
            child: Center(
              child: Text(
                'find tickets',
                style: Styles.textStyle.copyWith(color: Colors.white),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(40)),
          // Upcoming Flights
          const AppDoubleTextWidget(
            bigText: 'Upcoming Flights',
            smallText: 'View all',
          ),
          Gap(AppLayout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // LEFT CARD
              Container(
                height: AppLayout.getHeight(400),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(15),
                    vertical: AppLayout.getHeight(15)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 1),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          AppLayout.getHeight(12),
                        ),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/sit.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Text(
                      "20% discount on the early booking of this flight. Don't miss out this chance.",
                      style: Styles.headlineStyle2,
                    ),
                  ],
                ),
              ),
              // RIGHT CARDS
              Column(
                children: [
                  // TOP RIGHT CYAN CARD
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(185),
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(15),
                            horizontal: AppLayout.getWidth(15)),
                        decoration: BoxDecoration(
                          color: Color(0xFF3AB8B8),
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(18)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount \nfor survey',
                              style: Styles.headlineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Gap(AppLayout.getHeight(18)),
                            Text(
                              'Take the survey about our services and get a discount.',
                              style: Styles.headlineStyle2.copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 18, color: const Color(0xFF189999)),
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  // BOTTOM RIGHT ORANGE CARD
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(200),
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(15),
                        horizontal: AppLayout.getWidth(15)),
                    decoration: BoxDecoration(
                      color: Styles.orangeColor,
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(18)),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Take love',
                          style: Styles.headlineStyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Gap(AppLayout.getHeight(10)),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 30),
                              ),
                              TextSpan(
                                text: '🥰',
                                style: TextStyle(fontSize: 40),
                              ),
                              TextSpan(
                                text: '😘',
                                style: TextStyle(fontSize: 30),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
