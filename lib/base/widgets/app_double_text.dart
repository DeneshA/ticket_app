import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/style/app_styles.dart';



class AppDoubleText extends StatelessWidget {
  //const AppDoubleText({super.key});
  const AppDoubleText(
      {super.key, required this.bigText, required this.smallText, required this.func});
  final String bigText;
  final String smallText;
  final VoidCallback func; // Passing Function

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style:AppStyles.headLineStyle2),
        InkWell(
          //if you click on this it will respond
          onTap: func, // func is an function already therefore you don't need to declare ()
          // onTap: () {
          //   Navigator.pushNamed(context, "all_tickets");
          //     },
            //Refactor the code
            // Navigator.push(
            //     context,
            //   MaterialPageRoute(
            //       builder: (BuildContext context) => const AllTickets(),
            //   ),
            //     );
          // },
          child: Text(smallText, style: AppStyles.textStyle.copyWith(
            color: AppStyles.primaryColor
          )),
        )
      ],
    );
  }
}
