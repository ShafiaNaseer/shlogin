
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shlogin/utils/constants.dart';
import 'package:shlogin/widgets/custombuton.dart';
import 'package:shlogin/widgets/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400.h,
              width: double.infinity,
              // color: Colors.white,
              child: Stack(
                children: [
                  Positioned(
                    top: 80.h,
                    left: 95.w,
                    child: Container(
                      height: 220.h,
                      width: 120.w,
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
                    bottom: 50.h,
                    right: 90.w,
                    child: Container(
                      height: 220.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(80),
                        image: DecorationImage(image: NetworkImage("https://quotesprince.com/wp-content/uploads/2022/07/New-Girls-DP.webp",),
                            fit: BoxFit.cover, )
                      ),
                    ),
                  ),
                  Positioned(
                    top: 140.h,
                    left: 70.w,
                      child: Container(
                          height: 90.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(50),
                  ),
                      child: Center(child: Text("Wow!", style: TextStyle(color: Colors.white),)),
                      ))
                ],
              ),
            ),
            SizedBox(height: 20.h,),
            BoldText(text: "Login Now"),
            SizedBox(height: 10.h,),
            SimpleText(text: "Please enter the details below to continue"),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
              child: TextFormField(
                controller: emailController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Email is Required";
                    } else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                      return "Please enter a valid email address";
                    }
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: customInputDecoration("Email")),
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 25.w,
                ),
                child: TextFormField(
                    controller: passwordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password is Required";
                      } else if (value.length <= 4) {
                        return "Password should be greater than 4 latter";
                      }
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    obscureText: isVisible,

                    decoration: InputDecoration(
                      filled: true,
                      fillColor: TextfieldColor,
                      hintText: "Password",
                      suffixIcon: isVisible == false
                          ? GestureDetector(
                          onTap: () {
                            setState(() {
                              isVisible = true;
                            });
                          },
                          child: Icon(Icons.visibility_off))
                          : GestureDetector(
                          onTap: () {
                            setState(() {
                              isVisible = false;
                            });
                          },
                          child: Icon(Icons.visibility)),
                      contentPadding: EdgeInsets.all(15),
                      labelStyle: TextStyle(color: Colors.black45),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.transparent)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.transparent)
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.transparent)
                      ),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.transparent)
                      ),)
                )
            ),
            SizedBox(height: 15.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Forgot Password?",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: BackgroundColor,
                  ),),
                ],
              ),
            ),
            SizedBox(height: 20.h,),
            CustomButton(text: "Login", widthbutton: 320),
          //  Spacer(),
            SizedBox(height: 50.h,),
            SizedBox(
              width: 257.w,
              child: Center(
                child: RichText(
                    text: TextSpan(
                        text:
                        "Don't have an account? ",
                        style: TextStyle(
                            fontSize: 15.sp,
                            color: Colors.black),
                        children: [
                          TextSpan(
                            text: "Register",
                            style: TextStyle(
                                fontSize: 15.sp,
                                color: BackgroundColor),
                          )
                        ])),
              ),
            ),
           // SizedBox(height: 20.h,),
          ],
        ),
      ),
    );
  }
}
