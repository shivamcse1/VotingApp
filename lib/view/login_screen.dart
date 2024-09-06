import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/view/reset_password_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: SingleChildScrollView(
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
           
              SizedBox(height: 44.h,) ,
              Container(
              margin: EdgeInsets.only(top: 10.h),  
              height:38.h ,
              width: 312.w,
              child:Center(
                child: TextField(
                decoration: InputDecoration(
                prefixIcon: Container(
                  alignment: Alignment.center,  
                  child: const Text(
                    'vote.org.my',
                    style: TextStyle(color:Color(0xFF64748B,),fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center, 
                  ),
                ),
                suffixIcon: IconButton(
                iconSize: 15.h,
                onPressed: (){
           
                },  
                icon:const Icon(Icons.share_outlined) ,), 
                border: OutlineInputBorder(
                 borderSide: BorderSide.none, 
                 borderRadius: BorderRadius.circular(16.r),
                ),  
                
                filled: true,
                fillColor: const Color(0xFFEDEDED),
                  
                ),
                ),
               )
              ),
           
              const Divider(
                thickness: 3,
              ),
              
              SizedBox(height: 22.h,),
           
              SizedBox(
              width: double.infinity,
              height: 178.h,  
                child: Image.asset("assets/images/login_image.png"),
              ),
           
              SizedBox(height: 12.h,),
           
              SizedBox(
                width: 311.w,
                height: 28.h,
                child: Center(
                  child: Text("Welcome to Julius and Tintin",style: TextStyle(
                    fontSize: 22.sp,fontWeight: FontWeight.w500,
                  ),)
                ),
               ),
           
               SizedBox(height: 23.h,),
           
               SizedBox(
                width: 311.w,
                height: 24.h,
                child: Center(
                  child: Text("Login to your account",style: TextStyle(
                    fontSize: 18.sp,fontWeight: FontWeight.w500,
                  ),)
                ),
               ),
           
               SizedBox(height: 29.h,),
           
           
               SizedBox(
                width: 312.w,
                height: 50.h,
                 child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 22.w,top: 14.sp,bottom: 14.sp),
                    hintText: "Email address",
                    hintStyle: TextStyle(fontSize: 14.sp,
                    color: const Color(0xFF64748B),
                    ),
                    filled: true,
                    fillColor: const Color(0x00ffffff),
                    border: OutlineInputBorder(
                     borderSide: const BorderSide(
                      width: 0,
                      color: Color(0xFFD6DDE1)
                     ), 
                     borderRadius: BorderRadius.circular(8.r)
                    )
                  ),
                 ),
               ),
               SizedBox(height: 20.h,),
               
               SizedBox(
                width: 312.w,
                height: 50.h,
                 child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      
                      style: IconButton.styleFrom(
                        minimumSize: const Size(0, 0),
                        padding: EdgeInsets.zero,
                      ),
                      onPressed: (){

                      },
                      icon: const Icon(Icons.remove_red_eye,color: Color(0xFF64748B,),
                      size: 21,
                      ),
                    ),
                    contentPadding: EdgeInsets.only(left: 22.w,top: 14.sp,bottom: 14.sp),
                    hintText: "Password",
                    hintStyle: TextStyle(fontSize: 14.sp,
                    color: const Color(0xFF64748B),
                    ),
                    filled: true,
                    fillColor: const Color(0x00ffffff),
                    border: OutlineInputBorder(
                     borderSide: const BorderSide(
                      width: 0,
                      color: Color(0xFFD6DDE1)
                     ), 
                     borderRadius: BorderRadius.circular(8.r)
                    )
                  ),
                 ),
               ),
               SizedBox(height: 12.h,),

               Container(
                margin: const EdgeInsets.only(left: 230),
                height: 22.h,
                width: 133.h,
                 child: TextButton(
                 style: TextButton.styleFrom(
                  minimumSize: const Size(0, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)
                  ),
                 padding: EdgeInsets.zero,
                 ),
                 onPressed: (){
                 
                 },
                 child: Text("Forgot Password?",
                 style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500,
                 color: const Color(0xFF64748B)
                 ),)),
               ),

               SizedBox(
                height: 67.h,
               ),

                ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF274757),
                  fixedSize: Size(312.w, 50.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.sp)
                  )
                ),
                onPressed: (){
               
                },
                child:Text("Login",
                style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500,color: Colors.white),) 
               ,),

               SizedBox(
                height: 71.h,
               ),

               const Divider(thickness: 1,
                height: 1,
               ),
               SizedBox(
               height: 30.h,
               width: double.infinity,
               child:SizedBox(
                width: 99.w,
                height: 22.h,
                child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   const Icon(Icons.lock_clock_outlined,color: Color(0xFF64748B),),
                   SizedBox(width: 12.w,),
                   Text("lorem.org.my",
                   style: TextStyle(fontSize: 10.sp,color: const Color(0xFF64748B)),
                   ),
            ]
           ),
           )
          ), 
         ]
       )
      )
    );
  }
}