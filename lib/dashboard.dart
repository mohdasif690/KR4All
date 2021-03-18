import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;
  void onTappedBar(int index)
  {
    setState(() {
      _currentIndex = index;
    });
  }
  int _current = 0;
  int index1 = 0;
  //PageController _pageController = new PageController();

  @override
  Widget build(BuildContext context) {
    int index;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: DropdownButton(
            hint: Text('Banglore Urban'), onChanged: null,
            icon: Icon(Icons.keyboard_arrow_down),
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                height: 50,
                width: 90,
                child:
                SvgPicture.asset('assets/images/logo_dark.svg',
                  color: Color(0xff4829b2),),
              ),
            )],

        ),
        bottomNavigationBar: new BottomNavigationBar(
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            //fixedColor: Color(0xff4829b2),
            selectedIconTheme: IconThemeData(color: Color(0xff4829b2)),
            selectedItemColor: Color(0xff4829b2),
            items: [
              BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/home.svg',
                width: 20,height: 20),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/medicine.svg',
              ),
                  title: Text('Medicines')),
              BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/clinic.svg'),
                  title: Text('Clinics')),
              BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/microscope.svg',
                height: 20,width: 20,),
                  title: Text('Labs')),
              BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/user.svg',
                width: 20,height: 20,),
                  title: Text('Account'))
            ],
            onTap: (index){
              setState(() {
                _currentIndex = index;
              }
              );
            }
        ),
        body:SingleChildScrollView(dragStartBehavior: DragStartBehavior.start,
          //child: ConstrainedBox(
          //constraints: BoxConstraints(),
          child:
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            //mainAxisSize: MainAxisSize.max,
            children: [
              // Container(
              //   width: MediaQuery.of(context).size.width,
              //   height: MediaQuery.of(context).size.height*0.55,
              //child:
              Container(
                //height: 450,
                child: GridView.count(
                  crossAxisSpacing: 20,
                  crossAxisCount: 2,
                  childAspectRatio: 1.5,
                  shrinkWrap: true,
                  controller: new ScrollController(
                    keepScrollOffset: false,
                  ),
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green.shade500,
                        // image: DecorationImage(
                        //   image: AssetImage('lab-test-bg.png')
                        // )
                        //image: SvgPicture.asset(''),
                      ),
                      child:
                      Stack(
                          children:[ Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8,left: 8),
                                child: Text('Call Clinics',style: TextStyle(
                                    color: Colors.white,fontSize: 20
                                ),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 3,left: 8),
                                child: Text("Best Doctors",style: TextStyle(
                                    color: Colors.white,fontSize: 15
                                ),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15,left: 8),
                                child: Icon(Icons.exit_to_app_rounded,
                                  color: Colors.white,),
                              ),
                            ],
                          ),
                            Positioned(child:
                            Image(image: AssetImage('assets/images/visit.png')),
                              width: 120,height: 100,bottom: -1,right: -19,)
                          ]
                      ),

                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.deepOrangeAccent,
                        // image: DecorationImage(
                        //   image: AssetImage('lab-test-bg.png')
                        // )
                        //image: SvgPicture.asset(''),
                      ),
                      child:
                      Stack(
                          children:[ Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8,left: 8),
                                child: Text('Order Medicines',style: TextStyle(
                                    color: Colors.white,fontSize: 20
                                ),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 3,left: 8),
                                child: Text("Free Delivery , Best Price",style: TextStyle(
                                    color: Colors.white,fontSize: 15
                                ),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15,left: 8),
                                child: Icon(Icons.exit_to_app_rounded,
                                  color: Colors.white,),
                              ),
                            ],
                          ),
                            Positioned(child:
                            Image(image: AssetImage('assets/images/order.png',)),
                              width: 150,height: 120,bottom: -20,right: 20,)
                          ]
                      ),

                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.redAccent.shade200,

                        // image: DecorationImage(
                        //   image: AssetImage('lab-test-bg.png')
                        // )
                        //image: SvgPicture.asset(''),
                      ),
                      child:
                      Stack(
                          children:[ Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8,left: 8),
                                child: Text('Book Tests',style: TextStyle(
                                    color: Colors.white,fontSize: 20
                                ),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 3,left: 8),
                                child: Text("Certified Labs",style: TextStyle(
                                    color: Colors.white,fontSize: 15
                                ),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15,left: 8),
                                child: Icon(Icons.exit_to_app_rounded,
                                  color: Colors.white,),
                              ),
                            ],
                          ),
                            Positioned(child:
                            Container(decoration: BoxDecoration(image: DecorationImage(
                              image: AssetImage('assets/images/labtest.png'),fit: BoxFit.cover
                            ),borderRadius: BorderRadius.circular(10)),
                                ),
                              width: 110,height: 80,bottom: -2,right: 0,)
                          ]
                      ),

                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.pink.shade300,
                        // image: DecorationImage(
                        //   image: AssetImage('lab-test-bg.png')
                        // )
                        //image: SvgPicture.asset(''),
                      ),
                      child:
                      Stack(
                          children:[ Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8,left: 8),
                                child: Text('Book Ambulance',style: TextStyle(
                                    color: Colors.white,fontSize: 20
                                ),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 3,left: 8),
                                child: Text("Trusted Partners",style: TextStyle(
                                    color: Colors.white,fontSize: 15
                                ),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15,left: 8),
                                child: Icon(Icons.exit_to_app_rounded,
                                  color: Colors.white,),
                              ),
                            ],
                          ),
                            Positioned(child:
                            SvgPicture.asset('assets/images/ambulance.svg'),
                              width: 80,height: 80,bottom: 0,right: 0,)
                          ]
                      ),

                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.pinkAccent.shade700,
                        // image: DecorationImage(
                        //   image: AssetImage('lab-test-bg.png')
                        // )
                        //image: SvgPicture.asset(''),
                      ),
                      child:
                      Stack(
                          children:[ Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8,left: 8),
                                child: Text('Save Lives',style: TextStyle(
                                    color: Colors.white,fontSize: 20
                                ),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 3,left: 8),
                                child: Text("Donate Blood",style: TextStyle(
                                    color: Colors.white,fontSize: 15
                                ),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15,left: 8),
                                child: Icon(Icons.exit_to_app_rounded,
                                  color: Colors.white,),
                              ),
                            ],
                          ),
                            Positioned(child:
                            Image(image: AssetImage('assets/images/ublood.png'),height: 90,
                              width: 140,),
                              bottom: 0,right: 0,)
                          ]
                      ),

                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.deepPurple.shade400,
                        // image: DecorationImage(
                        //   image: AssetImage('lab-test-bg.png')
                        // )
                        //image: SvgPicture.asset(''),
                      ),
                      child:
                      Stack(
                          children:[ Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8,left: 8),
                                child: Text('Support a Cause',style: TextStyle(
                                    color: Colors.white,fontSize: 20
                                ),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 3,left: 8),
                                child: Text("USaver Foundation",style: TextStyle(
                                    color: Colors.white,fontSize: 15
                                ),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15,left: 8),
                                child: Icon(Icons.exit_to_app_rounded,
                                  color: Colors.white,),
                              ),
                            ],
                          ),
                            Positioned(child:
                            SvgPicture.asset('assets/images/crowds.svg'),
                              width: 80,height: 80,bottom: 0,right: 0,)
                          ]
                      ),

                    ),
                  ],
                  padding: EdgeInsets.only(top: 10,left: 8,right: 8,bottom: 8),
                      mainAxisSpacing: 20
                  ),
                ),
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 15,bottom: 10),
                child: Align(alignment: Alignment.centerLeft,
                  child: Text('Offers',style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.bold),),),
              ),
              // CarouselSlider(options:
              // CarouselOptions(height: 150 ,enableInfiniteScroll: false,
              //   aspectRatio: 2.0,
              //   scrollDirection: Axis.horizontal,
              //   onPageChanged: (index, reason) {
              //     setState(() {
              //       _current = index;
              //     });
              //   },
              // ),
              //     items: [
              //       Container(
              //         width: MediaQuery.of(context).size.width,
              //         height: 70,
              //         //margin: EdgeInsets.symmetric(horizontal: 10.0),
              //         decoration: BoxDecoration(
              //           //color: i,
              //             borderRadius: BorderRadius.circular(5),
              //             image: DecorationImage(
              //                 image: AssetImage('assets/images/offer1.png'),
              //                 fit: BoxFit.fill
              //             )
              //         ),
              //       ),
              //       Container(margin: EdgeInsets.symmetric(horizontal: 5.0),
              //         decoration: BoxDecoration(
              //           //color: i,
              //             borderRadius: BorderRadius.circular(5),
              //             image: DecorationImage(
              //                 image: AssetImage('assets/images/offer2.jpg'),
              //                 fit: BoxFit.fill
              //             )
              //         ),)
              //     ]
              // ),
              CarouselSlider(
                items: [

                  //1st Image of Slider
                  Container(
                    margin: EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage('assets/images/offer1.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),

                  //2nd Image of Slider
                  Container(
                    margin: EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage('assets/images/offer2.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage('assets/images/offer3.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),


                ],
                options: CarouselOptions(
                    height: 180.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    }
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                    width: 8.0,
                    height: 8.0,
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == index1
                          ? Color.fromRGBO(0, 0, 0, 0.9)
                          : Color.fromRGBO(0, 0, 0, 0.4),
                    ),
                  ),
                    Container(
                      width: 8.0,
                      height: 8.0,
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _current == index1
                            ? Color.fromRGBO(0, 0, 0, 0.9)
                            : Color.fromRGBO(0, 0, 0, 0.4),
                      ),
                    )
                    //}).toList(),
                  ]),
          Padding(
            padding: const EdgeInsets.only(left: 15,bottom: 20),
            child: Align(alignment: Alignment.centerLeft,
              child: Text('Popular clinics around you',style: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.bold),),),
          ),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15,bottom: 15),
                child: Container(
                  //height: 100,
                child: GridView.count(
                  crossAxisCount: 2,
                childAspectRatio: 1.3,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                controller: new ScrollController(keepScrollOffset: false),
                shrinkWrap: true,
                children: [
                  Container(
                    padding: EdgeInsets.only(),

                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1,
                      color: Colors.grey[350],style: BorderStyle.solid),
                      image: DecorationImage(
                        image: AssetImage('assets/images/manipal.jpg'),
                        fit: BoxFit.contain
                      )
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1,
                          color: Colors.grey[350],style: BorderStyle.solid),
                        image: DecorationImage(
                            image: AssetImage('assets/images/nh.png'),
                            fit: BoxFit.contain
                        ),//color: Colors.black
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1,
                            color: Colors.grey[350],style: BorderStyle.solid),
                        image: DecorationImage(
                            image: AssetImage('assets/images/fortis.jpg'),
                            fit: BoxFit.contain
                        )
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1,
                            color: Colors.grey[350],style: BorderStyle.solid),
                        image: DecorationImage(
                            image: AssetImage('assets/images/fortis.jpg'),
                            fit: BoxFit.contain
                        )
                    ),
                  )
                ],)
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,bottom: 20),
                child: Align(alignment: Alignment.centerLeft,
                  child: Text('Popular doctors around you',style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.bold),),),
              ),
              ListView(
                shrinkWrap: true,padding: EdgeInsets.only(left: 20),
                controller: new ScrollController(keepScrollOffset: false),

                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.black,
                          image: DecorationImage(
                            image: AssetImage('assets/images/doctor1.jpg')
                          )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('DR. A. NAGA SRINIVAAS',style: TextStyle(
                                color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400
                              ),),
                              Text('Consultant - Interventional Cardiology',style: TextStyle(
                                color: Colors.grey[600]
                              ),)
                            ],
                          ),
                        )
                      ],
                    ),

                  ),
                  SizedBox(
                    height: 20,
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.black,
                              image: DecorationImage(
                                  image: AssetImage('assets/images/doctor1.jpg')
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15,),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('DR. Abdul Aleem',style: TextStyle(
                                  color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400
                              ),),
                              Text('Internal Medicine',style: TextStyle(
                                  color: Colors.grey[600]
                              ),)
                            ],
                          ),
                        )
                      ],
                    ),

                  ),
                  SizedBox(
                    height: 20,
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.black,
                              image: DecorationImage(
                                  image: AssetImage('assets/images/doctor1.jpg')
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15,),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('DR. Mohan Keshavamurthy',style: TextStyle(
                                  color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400
                              ),),
                              Text('Urologist, Urological Surgeon, Andrologist',style: TextStyle(
                                  color: Colors.grey[600]
                              ),)
                            ],
                          ),
                        )
                      ],
                    ),

                  ),
                  SizedBox(
                    height: 20,
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.black,
                              image: DecorationImage(
                                  image: AssetImage('assets/images/doctor1.jpg')
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15,),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('DR. Sudheendra Udbalker',style: TextStyle(
                                  color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400
                              ),),
                              Text('Dermatologist, Cosmetologist, Venereologist',style: TextStyle(
                                  color: Colors.grey[600]
                              ),)
                            ],
                          ),
                        )
                      ],
                    ),

                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                ],
              ),
              FlatButton(onPressed: (){}, 
                  child: Text('View All Doctors',style: TextStyle(
                    color: Color(0xff4829b2)
                  ),)),
              Padding(
                padding: const EdgeInsets.only(left: 15,bottom: 20),
                child: Align(alignment: Alignment.centerLeft,
                  child: Text('Safety Assured',style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.bold),),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15,bottom: 15),
                child: Container(
                    //height: 100,
                     child: GridView.count(
                         crossAxisCount: 2,
                         childAspectRatio: 2.2,
                         crossAxisSpacing: 20,
                         mainAxisSpacing: 20,
                         controller: new ScrollController(keepScrollOffset: false),
                         shrinkWrap: true,
                         children: [
                           Container(
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                               //color: Colors.redAccent.shade200,
                               image: DecorationImage(
                                 image: AssetImage('assets/images/temp.png'),
                                   fit: BoxFit.cover
                               ),
                             ),
                             child: Center(
                               child: Padding(
                                 padding: const EdgeInsets.only(left: 70,top: 10),
                                 child: Text('Temprature \ncheck',style:
                                   TextStyle(fontSize: 17),),
                               ),
                             ),
                           ),
                           Container(
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                               //color: Colors.redAccent.shade200,
                               image: DecorationImage(
                                   image: AssetImage('assets/images/package.png'),
                                   fit: BoxFit.cover
                               ),
                             ),
                             child: Padding(
                               padding: const EdgeInsets.only(left: 10,top: 27),
                               child: Text('Secure \npackaging',style:
                               TextStyle(fontSize: 17),),
                             ),
                           ),
                         ]
                     ),
                ),
              )


            ],
          ),
        )
    );
  }
//final List _source = [Colors.red,Colors.Black];
}