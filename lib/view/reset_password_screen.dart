import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => ResetPasswordScreenState();
}

class ResetPasswordScreenState extends State<ResetPasswordScreen> {
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

              SizedBox(
                height: 43.h,
              ),

              Container(
              margin:const EdgeInsets.only(left: 100,right: 100) ,
              width: 159.w,
              height: 102.h,  
                child: Image.asset("assets/images/reset_password_image.png"),
              ),

              SizedBox(
                height: 38.h,
              ),

              Container(
                margin: EdgeInsets.only(left: 94.w,right: 94.w),
                height: 28.h,
                width: 172.w,
                child: Text("Reset Password",
                style: TextStyle(fontWeight: FontWeight.w500,fontSize: 22.sp),)),

              SizedBox(
                height: 17.h,
              ),  
              
              Container(
                height: 23.h,
                width: 314.w,
                child: Text("Set the new password for your account.",
                style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17.sp,
                color: const Color(0xFF64748B)
                ),)),


              SizedBox(
                height: 27.h,
               ), 

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
                    hintText: "Enter New Password",
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
                    hintText: "Confirm Password",
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

             SizedBox(height: 151.h,),  

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
                child:Text("Reset Password",
                style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500,color: Colors.white),) 
               ,),

                SizedBox(
                height: 60.h,
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