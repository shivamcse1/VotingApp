import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voting_app/view/login_screen.dart';

class EmailOtpVerificationScreen extends StatefulWidget {
  const EmailOtpVerificationScreen({super.key});

  @override
  State<EmailOtpVerificationScreen> createState() => EmailOtpVerificationScreenState();
}

class EmailOtpVerificationScreenState extends State<EmailOtpVerificationScreen> {
  TextEditingController c1 = TextEditingController();
  TextEditingController c2 = TextEditingController();
  TextEditingController c3 = TextEditingController();
  TextEditingController c4 = TextEditingController();
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

                //!------Main body Section---------/// 
              SizedBox(height: 22.h,),
              
              SizedBox(
              width: double.infinity,
              height: 189.h,  
                child: Image.asset("assets/images/otp_verify_image.png"),
              ),

              SizedBox(height: 12.h,),
              Text("Verify Your Account",style: TextStyle(fontSize: 22.sp,fontWeight: FontWeight.w500),),

              SizedBox(height: 17.h,),

              Container(
                margin: const EdgeInsets.only(left: 21,right: 21),
                child: Text("Enter the 4 digit code that you received on your Email.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500,color: const Color(0xFF64748B))),
              ),
              SizedBox(height: 38.h,),
               
              Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                Container(
                margin:EdgeInsets.only(left: 38.w) ,
                height: 58.h,
                width: 58.w,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(8.r)
                ),
                child:TextField(
                controller:c1,
                maxLength: 1,
                obscureText: false,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 22),
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  counterText: "",
                  border: InputBorder.none
                ),
                onChanged: (value){
                 if(value.length==1){
                  FocusScope.of(context).nextFocus();
                  }
                }, 
               ),
              ),
               
                Container(
                height: 58.h,
                width: 58.w,
                decoration: BoxDecoration(
                  
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(8.r)
                ),
                child:TextField(
                controller:c2,
                maxLength: 1,
                obscureText: false,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 22),
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  counterText: "",
                  border: InputBorder.none
                ),
                onChanged: (value){
                 if(value.length==1){
                  FocusScope.of(context).nextFocus();
                  }
                }, 
               ),
              ),
                
                Container(
                height: 58.h,
                width: 58.w,
                decoration: BoxDecoration(
                  
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(8.r)
                ),
                child:TextField(
                controller:c3,
                maxLength: 1,
                obscureText: false,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 22),
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  counterText: "",
                  border: InputBorder.none
                ),
                onChanged: (value){
                 if(value.length==1){
                  FocusScope.of(context).nextFocus();
                  }
                }, 
               ),
              ),
               
                Container(
                margin:EdgeInsets.only(right: 38.w) ,
                height: 58.h,
                width: 58.w,
                decoration: BoxDecoration(
                  
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(8.r)
                ),
                child:TextField(
                controller:c4,
                maxLength: 1,
                obscureText: false,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 22),
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  counterText: "",
                  border: InputBorder.none
                ),
                onChanged: (value){
                 if(value.length==1){
                  FocusScope.of(context).nextFocus();
                  }
                }, 
               ),
              ),
      
              ],
             ),

             SizedBox(height: 20.h,),
             Text("Didn’t receive the code?",
             style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500,color: Color(0xFF64748B))
             ),
            
             TextButton(
             style: TextButton.styleFrom(
              shape: const RoundedRectangleBorder(),
              minimumSize: Size.zero,
              padding: EdgeInsets.zero,
             ), 
             onPressed: (){

             }, 
             child: Text("Resend",
             style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500,color: Color(0xFF64748B)),)
             
             ),

             SizedBox(height: 30.h,),
             
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
                  return const LoginScreen();
                }));
                },
                child:Text("Submit",
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
            ]
           )
         )
   
    );
  }
}