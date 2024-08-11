import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/style/app_styles.dart';
import 'package:ticket_app/base/widgets/app_colum_text_layout.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  final bool? isColor; // By default its null,

  const TicketView(
      {super.key,
      required this.ticket,
      this.wholeScreen = false,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    // Find the screen size
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16),
        child: Column(
          children: [
            // Blue part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: isColor == null
                      ? AppStyles.ticketBlue
                      : AppStyles.ticketColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              child: Column(
                children: [
                  //Show departure and destination with icon first line
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextStyleThird(
                        text: ticket["from"]['code'],
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      BigDot(
                        isColor: isColor,
                      ),
                      //ticket flying icon
                      //Stack  widget uses for over lapping items
                      Expanded(
                          child: Stack(children: [
                        //LayoutBuilder() - to get the width / available space between 2 widgets
                        //Flex() - leave space between 2 widget / '--'
                        //List.generate() - generate No. of widget/ '-'
                        //SizeBox() - either use sizedBox or Container to display widget/'-'
                        const SizedBox(
                            height: 24,
                            child: AppLayoutbuilderWidget(
                              randomDivider: 6,
                            )),
                        Center(
                          child: Transform.rotate(
                              angle: 1.57,
                              child: Icon(
                                Icons.local_airport_rounded,
                                color: isColor == null
                                    ? Colors.white
                                    : AppStyles.planeSecondColor,
                              )),
                        )
                      ])),
                      BigDot(
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      TextStyleThird(
                        text: ticket["to"]["code"],
                        isColor: isColor,
                      ),
                    ],
                  ),
                  const SizedBox(height: 3),
                  //Show departure and destination names with time
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: ticket["from"]["name"],
                          isColor: isColor,
                        ),
                      ),
                      Expanded(child: Container()),
                      TextStyleFourth(
                        text: ticket["flying_time"],
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: ticket["to"]["name"],
                          align: TextAlign.end,
                          isColor: isColor,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            //Circles and Dots
            Container(
              // height: 20,
              color: isColor == null ? AppStyles.ticketOrange : AppStyles.ticketColor,
              child: Row(
                children: [
                  BigCircle(isRight: false,isColor: isColor),
                  Expanded(
                      child: AppLayoutbuilderWidget(
                    randomDivider: 16,
                    width: 6,
                        isColor: isColor,
                  )),
                  BigCircle(isRight: true,isColor: isColor)
                ],
              ),
            ),
            // Orange part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: isColor == null ? AppStyles.ticketOrange : AppStyles.ticketColor,
                  borderRadius:  BorderRadius.only(
                      bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                      bottomRight: Radius.circular(isColor == null ? 21 : 0))),
              child: Column(
                children: [
                  //Show departure and destination with icon first line
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(
                        topText: ticket["date"],
                        bottomText: "DATE",
                        alignment: CrossAxisAlignment.start,
                        isColor: isColor,
                      ),
                      AppColumnTextLayout(
                        topText: ticket["departure_time"],
                        bottomText: "Departure time",
                        alignment: CrossAxisAlignment.center,
                        isColor: isColor,
                      ),
                      AppColumnTextLayout(
                        topText: ticket["number"].toString(),
                        bottomText: "Number",
                        alignment: CrossAxisAlignment.end,
                        isColor: isColor,
                      )
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
