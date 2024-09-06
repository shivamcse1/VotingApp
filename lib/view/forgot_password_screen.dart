import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => ForgotPasswordScreenState();
}

class ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
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

              SizedBox(height: 22.h,) , 

              Container(
              width: 345.w,
              height: 189.h,  
                child: Image.asset("assets/images/forgot_password_image.png"),
              ),
              SizedBox(height: 11.h,) , 

              
              Container(
                margin: EdgeInsets.only(left: 94.w,right: 94.w),
                height: 30.h,
                width: 183.w,
                child: Text("Forgot Password",
                style: TextStyle(fontWeight: FontWeight.w500,fontSize: 22.sp),)),

              SizedBox(height: 19.h,) , 

               Container(
                
                height: 34.h,
                width: 308.w,
                child: Center(
                  child: Text(
                        "Enter your phone /email for the verification process,"
                        "we will send 4 digit code to your SMS.",
                        textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12.sp,
                  color: const Color(0xFF64748B)
                  ),),
                )),

               SizedBox(height: 26.h,) , 

               
              SizedBox(
                width: 312.w,
                height: 50.h,
                 child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 22.w,top: 14.sp,bottom: 14.sp),
                    hintText: "Phone/Email",
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

              SizedBox(height: 160.h,) , 

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
                child:Text("Fogot Password",
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