
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/view/emailotp_verification_screen.dart';

class RegisterationScreen extends StatefulWidget {
  const RegisterationScreen({super.key});

  @override
  State<RegisterationScreen> createState() => RegisterationScreenState();
}

class RegisterationScreenState extends State<RegisterationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

           
         body: SingleChildScrollView(
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //!------Top Section---------/// 
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
           
           //!------Main body Section---------/// 
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
                  child: Text("Register your account",style: TextStyle(
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
                    contentPadding: EdgeInsets.only(left: 22.w,top: 14.sp,bottom: 14.sp),
                    hintText: "Phone",
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
               SizedBox(height: 20.h,),
           
               SizedBox(
                width: 312.w,
                height: 50.h,
                 child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 22.w,top: 14.sp,bottom: 14.sp),
                    hintText: "Name",
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
                    contentPadding: EdgeInsets.only(left: 22.w,top: 14.sp,bottom: 14.sp),
                    hintText: "Gender",
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
                    contentPadding: EdgeInsets.only(left: 22.w,top: 14.sp,bottom: 14.sp),
                    hintText: "Age",
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

               ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF274757),
                  fixedSize: Size(312.w, 50.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.sp)
                  )
                ),
                onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const EmailOtpVerificationScreen();
                }));     
                },
                child:Text("Register",
                style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500,color: Colors.white),) 
               ,),

               SizedBox(height: 71.h,),

               
               //!------Bottom Section---------///  
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
                   Text("lorem.org.my",style: TextStyle(fontSize: 10.sp,color: const Color(0xFF64748B)),)
             
                  ],
                ),
               ),
               ),
            ],
           ),
         ),
      
    );
  }
}