import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LiveVoteScreen extends StatefulWidget {
  const LiveVoteScreen({super.key});

  @override
  State<LiveVoteScreen> createState() => LiveVoteScreenState();
}

class LiveVoteScreenState extends State<LiveVoteScreen> {
  
  int totalVotes = 560;
  int totalVotePercentage = 50;
  List<int>votesPercentage =[
       35,10,5,
  ];
   List<Color> colorList=[
    // const Color(0xFFF5A1A1),
    const Color(0xFFA1D2F5),
    const Color(0xFFA1F5D3),
    const Color(0xFFBBF5A1),
  ];
  List<String> nameList=[
    // "Omar D. Regalado",
    "Chester Cheng",
    "Robert Soliman",
    "Kristine Lim",
  ] ;
  List<String> imageList=[
  //  "assets/images/listimage1.png",
   "assets/images/listimage2.png",
   "assets/images/listimage3.png",
   "assets/images/listimage4.png",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           body: SingleChildScrollView(
            // physics: NeverScrollableScrollPhysics(),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
               //!------Top Section---------/// 
              SizedBox(height: 44.h,) ,
              Container(
              margin: EdgeInsets.only(top: 10.h,left: 24.w,right: 24.w),  
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
           
             
              SizedBox(height: 10.h,),


               //!------Main body Section---------/// 

              Image.asset("assets/images/header_image.png",
              height: 142.h,
              width: double.infinity,
              fit: BoxFit.cover
              ),
              
              SizedBox(height: 22.h,),

              Container(
                margin: EdgeInsets.only(left: 24.w),
                child: Text("Live Vote Results",
                
                style: TextStyle(fontSize: 22.sp,fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: 11.h,),
              Container(
                margin: EdgeInsets.only(left: 24.w),
                child: Text("Winner Contestant",
                
                style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500,color: Color(0xFFF8B64C)),
                ),
              ),
             SizedBox(height: 14.h,), 
             
             Stack(
                    children: [
                    Card(
                    color: Color(0xFFF5A1A1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r)
                    ),
                     margin: EdgeInsets.only(left: 24.w,right: 30.w,bottom: 22.h),
                     child: SizedBox(
                     height: 114.h,
                     width: 306.w,
                     child: Row(
                      children: [
                         
                         Container(
                          margin: EdgeInsets.only(left: 20.w),
                           height: 114.h,
                           width: 77.w,
                           child: Image.asset("assets/images/listimage1.png"),
                         ),
                         SizedBox(width: 16.w,),
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Container(
                              margin: EdgeInsets.only(bottom: 12.h,top: 33.h),
                              child: Text("Omar D. Regalado",
                              style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500),
                              ),
                             ),
                             Text("Lorem ipsum loremipsum",
                             style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w500),
                             )
                           ],
                         ),
                        
                        ],
                       ),
                      ),
                     ),
                    Positioned(
                       right: 22.w,
                       bottom: 100.h,
                       child:Image.asset("assets/logo/badgelogo.png",
                        height: 40.h,
                        width: 40.w,
                      ),
                    ),
                  
                    ],
                  ),

               SizedBox(height: 22.h,),


               Container(
                margin: EdgeInsets.only(left: 26.w,right: 27.w),
                 child: Row(
                  
                  children: [
                 
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF0497FF),
                        border: Border.all(
                          color:  Color(0xFF0497FF),
                        ),
                        borderRadius: BorderRadius.circular(12.r)
                      ),
                      height: 114.h,
                      width: 146.w,
                      child: Column(
                       
                        children: [
                          
                            Container(
                              margin: EdgeInsets.only(top: 25.h),
                              child: Text("Total Votes",
                                  style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16.sp,
                                  color: Colors.white,
                                  ),
                                ),
                            ),
                 
                           Text("560",
                              style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25.sp,
                              color: Colors.white,
                            ),
                           ),
                        ],
                        
                      ),
                    ),
                    
                    SizedBox(width: 15.w,),
                 
                      Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF7CADBF),
                        border: Border.all(
                        color: Color(0xFF7CADBF),

                        ),
                        borderRadius: BorderRadius.circular(12.r)
                      ),
                      height: 114.h,
                      width: 146.w,
                      child: Column(
                       
                        children: [
                          
                            Container(
                              margin: EdgeInsets.only(top: 25.h),
                              child: Text("Total Votes",
                                  style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16.sp,
                                  color: Colors.white,
                                  ),
                                ),
                            ),
                 
                           Text("50%",
                              style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25.sp,
                              color: Colors.white,
                            ),
                           ),
                        ],
                        
                      ),
                    ),
                   
                  ],
                
                 ),
               ),

              SizedBox(height: 17.h,),
                Container(
                
                margin: EdgeInsets.only(left: 39.w),
                child: Text("Others Contestant  ",
                
                style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500),
                ),
              ),
             
              
               ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context ,index){
               
                  return Card(
                  color: colorList[index],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r)
                  ),
                   margin: EdgeInsets.only(left: 39.w,right: 39.w,bottom: 20.h),
                   child: SizedBox(
                   height: 70.h,
                   width: 282.w,
                   child: Row(
                    children: [
                       
                       Container(
                        margin: EdgeInsets.only(left: 20.w),
                         height: 70.h,
                         width: 47.w,
                         child: Image.asset(imageList[index]),
                       ),
                       SizedBox(width: 16.w,),
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Container(
                            margin: EdgeInsets.only(bottom: 8.h,top: 16.h),
                            child: Text(nameList[index],
                            style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500),
                            ),
                           ),
                           Text("160 votes",
                           style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w500),
                           )
                           
                         ],
                       ),
                      
                       SizedBox(width: 35.w,),

                       Text("35%",
                       style: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w500
                       ),)
                      ],
                     ),
                    ),
                   );
                
                 },
                itemCount: imageList.length,
               
               ),

               SizedBox(height: 28.h,),
               Container(
                margin: EdgeInsets.only(left: 39.w),
                child: Text("Contest Videos",
                
                style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: 6.h,),

              Container(
                margin: EdgeInsets.only(left: 39.w),
                height: 13.h,
                child: TextButton(
                 style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  minimumSize: Size(0, 0),
                  padding: EdgeInsets.zero,
                 ), 
                onPressed: (){

                }, 
                child: Text("https://www.youtube.com/watch?v=aLtXzKyNxkY",
                style: TextStyle(fontSize: 10.sp,fontWeight: FontWeight.w500),
                )
                
                ),
              ),

              SizedBox(height: 36.h,),
              
              Container(
                margin: EdgeInsets.only(left: 24.w),
                child: Text("Upcoming Events",
                
                style: TextStyle(fontSize: 22.sp,fontWeight: FontWeight.w500),
                ),
              ),
               SizedBox(height: 31.h,),
             
               Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r)
                  ),
                   margin: EdgeInsets.only(left: 24.w,right: 24.w,bottom: 20.h),
                   child: SizedBox(
                   height: 70.h,
                   width: 312.w,
                   child: Row(
                    children: [
                       
                       Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r)
                        ),
                         margin: EdgeInsets.only(left: 20.w),
                         height: 70.h,
                         width: 65.68.w,
                         child: Image.asset("assets/images/eventimage1.png"),
                       ),
                       SizedBox(width: 12.52.w,),
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Container(
                            margin: EdgeInsets.only(bottom: 11.h,top: 14.h),
                            child: Text("Music Festivals",
                            style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500),
                            ),
                           ),
                           Text("Date : 30/09/2024",
                           style: TextStyle(fontSize: 10.sp,fontWeight: FontWeight.w500),
                           )
                           
                         ],
                       ),
                      
                       Spacer(),

                       Container(
                        margin: EdgeInsets.only(right: 20.w),
                        height: 40.h,
                        width: 40.w,
                        child: Image.asset("assets/logo/nextlogo.png",
                      
                        fit: BoxFit.cover,
                        ),
                       )
                      ],
                     ),
                    ),
                   ),

                  Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r)
                  ),
                   margin: EdgeInsets.only(left: 24.w,right: 24.w,bottom: 20.h),
                   child: SizedBox(
                   height: 70.h,
                   width: 312.w,
                   child: Row(
                    children: [
                       
                       Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r)
                        ),
                         margin: EdgeInsets.only(left: 20.w),
                         height: 70.h,
                         width: 65.68.w,
                         child: Image.asset("assets/images/eventimage2.png"),
                       ),
                       SizedBox(width: 12.52.w,),
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Container(
                            margin: EdgeInsets.only(bottom: 11.h,top: 14.h),
                            child: Text("Sports Events",
                            style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500),
                            ),
                           ),
                           Text("Date : 30/09/2024",
                           style: TextStyle(fontSize: 10.sp,fontWeight: FontWeight.w500),
                           )
                           
                         ],
                       ),
                      
                       Spacer(),

                       Container(
                       margin: EdgeInsets.only(right: 20.w),
                        height: 40.h,
                        width: 40.w,
                        child: Image.asset("assets/logo/nextlogo.png",
                      
                        fit: BoxFit.cover,
                        ),
                       )
                      ],
                     ),
                    ),
                   ),

                  SizedBox(height: 130.h,),
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
           ),
        )
    );
  }

  // int votesCalculator(int percentage){
    
  //   double a =(totalVotes*percentage)/100;
  //   int result = a.toInt();

  //   return result;
  // }
}