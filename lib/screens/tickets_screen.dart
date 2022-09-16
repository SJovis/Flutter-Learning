import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hello_world/screens/ticket_view.dart';
import 'package:hello_world/utils/app_info_list.dart';
import 'package:hello_world/utils/app_layout.dart';
import 'package:hello_world/widgets/ticket_tabs.dart';

import '../utils/app_styles.dart';

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
            Container(
              margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Flutter DB',
                            style: Styles.headlineStyle3,
                          ),
                          Gap(AppLayout.getHeight(5)),
                          Text(
                            'Passenger',
                            style: Styles.headlineStyle4,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ]),
    );
  }
}
