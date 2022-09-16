import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hello_world/screens/ticket_view.dart';
import 'package:hello_world/utils/app_info_list.dart';
import 'package:hello_world/utils/app_layout.dart';
import 'package:hello_world/widgets/column_layout.dart';
import 'package:hello_world/widgets/ticket_tabs.dart';
import 'package:barcode_widget/barcode_widget.dart';

import '../utils/app_styles.dart';
import '../widgets/layout_builder_widget.dart';

class TicketsScreen extends StatelessWidget {
  const TicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(children: [
        ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            // HEADING
            Text(
              'Tickets',
              style: Styles.headlineStyle1.copyWith(
                fontSize: AppLayout.getWidth(35),
              ),
            ),
            Gap(AppLayout.getHeight(20)),
            // TABS
            const AppTicketTabs(firstTab: 'Upcoming', secondTab: 'Previous'),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
              child: TicketView(ticket: ticketList[0], isColor: true),
            ),
            const SizedBox(height: 1),
            Container(
              margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(15),
                  vertical: AppLayout.getHeight(20)),
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AppColumnLayout(
                        firstText: 'Flutter DB',
                        secondText: 'Passenger',
                        alignment: CrossAxisAlignment.start,
                        isColor: true,
                      ),
                      AppColumnLayout(
                        firstText: '5221 478566',
                        secondText: 'Passport',
                        alignment: CrossAxisAlignment.end,
                        isColor: true,
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  const AppLayourBuilderWidget(
                    sections: 16,
                    isColor: true,
                    width: 5,
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AppColumnLayout(
                        firstText: '0055 444 77147',
                        secondText: 'Number of E-ticket',
                        alignment: CrossAxisAlignment.start,
                        isColor: true,
                      ),
                      AppColumnLayout(
                        firstText: 'B2SG28',
                        secondText: 'Booking code',
                        alignment: CrossAxisAlignment.end,
                        isColor: true,
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  const AppLayourBuilderWidget(
                    sections: 16,
                    isColor: true,
                    width: 5,
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/visa.png",
                                scale: 11,
                              ),
                              Text(
                                ' *** 2462',
                                style: Styles.headlineStyle3,
                              )
                            ],
                          ),
                          Gap(AppLayout.getHeight(5)),
                          Text(
                            'Payment method',
                            style: Styles.headlineStyle4,
                          )
                        ],
                      ),
                      const AppColumnLayout(
                        firstText: '\$249.99',
                        secondText: 'Price',
                        alignment: CrossAxisAlignment.end,
                        isColor: true,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 1),
            // BAR CODE
            Container(
              margin: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15)),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                    bottomRight: Radius.circular(AppLayout.getHeight(21))),
              ),
              child: Container(
                padding:
                    EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                  child: BarcodeWidget(
                    barcode: Barcode.code128(),
                    data: 'https://github.com.martinovovo',
                    drawText: false,
                    color: Styles.textColor,
                    width: double.infinity,
                    height: 70,
                  ),
                ),
              ),
            ),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
              child: TicketView(ticket: ticketList[0]),
            ),
          ],
        ),
        Positioned(
          left: AppLayout.getWidth(22),
          top: AppLayout.getHeight(295),
          child: Container(
            padding: EdgeInsets.all(AppLayout.getHeight(3)),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Styles.textColor, width: 3),
            ),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: Styles.textColor,
            ),
          ),
        ),
        Positioned(
          right: AppLayout.getWidth(22),
          top: AppLayout.getHeight(295),
          child: Container(
            padding: EdgeInsets.all(AppLayout.getHeight(3)),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Styles.textColor, width: 3),
            ),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: Styles.textColor,
            ),
          ),
        ),
      ]),
    );
  }
}
