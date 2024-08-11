import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/style/app_styles.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';

import '../../base/utils/all_json.dart';
import '../../base/widgets/app_colum_text_layout.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        children: [
          const SizedBox(height: 40),
          Text("Tickets",style: AppStyles.headLineStyle1),
          const SizedBox(height: 20,),
          const AppTicketTabs(firstTab: "Upcoming",secondTab: "Previous"),
          const SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.only(left: 16),
              child: TicketView(ticket: ticketList[0],isColor: true,)
          ),
          const SizedBox(height: 1,),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15), //to match the top potion of ticket
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            color: AppStyles.ticketColor,
            child: const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(
                      topText: "Flutter DB",
                      bottomText: "Passenger",
                      alignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    AppColumnTextLayout(
                      topText: "5221 36486",
                      bottomText: "Passport",
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
