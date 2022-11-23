
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shlogin/screens/login_screen.dart';
import 'package:shlogin/utils/constants.dart';
import 'package:shlogin/widgets/custombuton.dart';
import 'package:shlogin/widgets/widgets.dart';

class StartingScreen extends StatefulWidget {
  const StartingScreen({Key? key}) : super(key: key);

  @override
  State<StartingScreen> createState() => _StartingScreenState();
}

class _StartingScreenState extends State<StartingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 450.h,
            width: double.infinity,
            color: Colors.white,
            child: Stack(
              children: [
                Positioned(
                  bottom: 50.h,
                  right: 70.w,
                  child: Container(
                    height: 250.h,
                    width: 150.w,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(80),
                        image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDwogG4dSs8ade9OYCeGod-CLDbu_0usi2DQ&usqp=CAU",),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(Colors.red.withOpacity(0.7), BlendMode.dstATop)
                        )
                    ),
                  ),
                ),
                Positioned(
                  top: 80.h,
                  left: 75.w,
                  child: Container(
                    height: 250.h,
                    width: 150.w,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(80),
                        image: DecorationImage(image: NetworkImage("https://cdn.create.vista.com/api/media/small/241898176/stock-photo-handsome-man-studing-digital-tablet",),
                          fit: BoxFit.cover, )
                    ),
                  ),
                ),
                Positioned(
                    top: 70.h,
                    left: 65.w,
                    child: Container(
                      height: 50.h,
                      width: 50.w,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30), bottomLeft: Radius.circular(30)),
                      ),
                      child: Center( child: Icon(Icons.camera_rounded, color: Colors.white,),),
                    )),
                Positioned(
                    bottom: 100.h,
                    right: 95.w,
                    child: Container(
                      height: 70.h,
                      width: 80.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(30), topRight: Radius.circular(30), bottomLeft: Radius.circular(30)),
                      ),
                      child: Center(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.library_music_rounded, color: Colors.red, size: 15,),
                          Text("\$500", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),),
                          Text("Wow!", style: TextStyle(color: Colors.black),),
                        ],
                      )),
                    )),
              ],
            ),
          ),
          SizedBox(height: 20.h,),
          BoldText(text: "Translate & Earn."),
          SizedBox(height: 10.h,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: SimpleText(text: "Now it is easy to earn money, just use the translator and collect the points",),
          ),
          SizedBox(height: 50.h,),
          InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage(),));
              },
              child: CustomButton(text: "Get Started", widthbutton: 200)),
          SizedBox(height: 50.h,),
          Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage(),));
                      },
                      child: Text("Login", style: TextStyle(color: BackgroundColor),))
                ],
              )),
        ],
      ),
    );
  }
}
