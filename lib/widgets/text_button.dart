import 'package:flutter/material.dart';
import 'package:fashion_style_mobile/utils/constants.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onpressed;
  final String text;
  final double? textSize;
  final IconData? prefixIcon;
  final Color? bgColor;
  final Color? textColor;

  const CustomButton(
      {Key? key,
      required this.text,
      required this.onpressed,
      this.textSize,
      this.prefixIcon,
      this.bgColor,
      this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: this.onpressed,
        child: Stack(
          children: [
            Center(
                child: Text(
              text,
              style: TextStyle(
                  fontSize: textSize,
                  color: this.textColor != null ? this.textColor : Colors.white,
                  fontWeight: FontWeight.bold),
            )),
            if (this.prefixIcon != null)
              Positioned(
                  left: 20,
                  child: Icon(
                    this.prefixIcon,
                    color: MyConstants.of(context)!.primaryColor,
                  ))
          ],
          fit: StackFit.expand,
          alignment: AlignmentDirectional.center,
        ),
        style: ButtonStyle(
            side: MaterialStateProperty.all(
                BorderSide(color: Colors.grey, width: 0.5)),
            backgroundColor: MaterialStateProperty.all<Color>(
                this.bgColor != null
                    ? this.bgColor!
                    : MyConstants.of(context)!.primaryColor)));
  }
}
