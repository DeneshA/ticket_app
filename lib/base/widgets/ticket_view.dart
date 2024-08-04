import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/style/app_styles.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    // Find the screen size
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 179,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: AppStyles.ticketBlue,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(21), topRight: Radius.circular(21))),
        child: Column(
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "NYC",
                  style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                ),
                Expanded(child: Container()),
                const BigDot(),
                //Stack  widget uses for over lapping items
                const Expanded(child: Stack(children: [
                  //LayoutBuilder() - to get the width / available space between 2 widgets
                  //Flex() - leave space between 2 widget / '--'
                  //List.generate() - generate No. of widget/ '-'
                  //SizeBox() - either use sizedBox or Container to display widget/'-'
                    SizedBox(
                      height:24,
                      child: AppLayoutbuilderWidget(randomDivider: 6,),
                    ),
                  // Center(child: Text("Plane"),)
                ]
                )),
                const BigDot(),
                Expanded(child: Container()),
                Text(
                  "NYC",
                  style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
