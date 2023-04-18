import 'package:flutter/cupertino.dart';

class custoClipperContainer extends StatelessWidget {
  const custoClipperContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 70,horizontal: 20),
      alignment: Alignment.center,
      height: 180,
      width: double.infinity,
      color: Color(0xff146C94),
      child: Align(
          alignment: Alignment.topLeft,
          child: Text('Weather',style: TextStyle(color: Color(0xffF6F1F1),fontSize: 25),)),
    );
  }
}
