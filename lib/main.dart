import 'package:aryatest/bloc/counter_bloc.dart';
import 'package:aryatest/listtt.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';


void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<CounterBloc>(
        create: (BuildContext context) => CounterBloc(),
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  Scaffold(body: Homepage()),

    );
  }
}
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var count=3;
    var  widthFactor= .5;
    void change(){
      setState(() {
        count=6;
        widthFactor=1;
      });
    }
    print(width);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Test'),
          backgroundColor: Colors.black,
        ),
        body: BlocBuilder<CounterBloc, CounterState>(
  builder: (context, state) {
    return Container(
          color: Colors.black,
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              Positioned(
                left: 25,
                child: Container(height: 100,
                  width: 100,
                  child: Stack(children: [
                    Positioned(
                      bottom:0,
                      child: Container(height: 50,
                        padding: EdgeInsets.only(top: 5),
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width:1,
                              color: Colors.white
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(children: [
                          Text("Tom Hanks",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,color: Colors.white),),
                          Text("father",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w200,fontStyle:FontStyle.italic,color: Colors.white),),
                        ],),),
                    ),

                    Positioned(
                        top: 10,
                        left: 25,
                        child: Image.asset(
                          'assets/images/img_image.png',
                          height: 50,
                          width: 50,
                          fit: BoxFit.fill,
                        ))

                  ],),
                ),
              ),
              Positioned(
                right: 25,
                child: Container(height: 100,
                  width: 100,
                  child: Stack(children: [
                    Positioned(
                      bottom:0,
                      child: Container(height: 50,
                        padding: EdgeInsets.only(top: 5),
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width:1,
                              color: Colors.white
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(children: [
                          Text(maxLines: 1,"Victoria Tom",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,color: Colors.white),),
                          Text("mother",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w200,fontStyle:FontStyle.italic,color: Colors.white),),
                        ],),),
                    ),

                    Positioned(
                        top: 10,
                        left: 25,
                        child: Image.asset(
                          'assets/images/mom.png',
                          height: 50,
                          width: 50,
                          fit: BoxFit.fill,
                        ))

                  ],),
                ),
              ),

              Positioned(
                  top: 50,
                  left: width/2-12,
                  child: Icon(Icons.favorite,color: Colors.amber,)),
              Positioned(
                  top: 62,
                  left: width/2,
                  child: Container(
                    width: 1,
                    height: 100,
                    color: Colors.amber,
                  )),
              Positioned(
                  top: 162,
                  left: 50,
                  right: 50,
                  child: Container(

                    height: 1,
                    color: Colors.amber,
                  )),
              Positioned(
                  top: 162,
                  right: 50,
                  child: Container(

                    width: 1,
                    height: 50,
                    color: Colors.amber,
                  )),
              Positioned(
                            top: 150,
                            right: 50,
                            left: state.left,
              
                            child: Container(
                              height: 110,
                              child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: state.widthFactor==.5?3:state.count,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 8,
                                  horizontal: 8,
                                ),
                                itemBuilder: (context, index) => !(index==state.count-1)?
                                InkWell( onTap: (){
                                  context.read<CounterBloc>().add(Increment(count1: items.length, widthFactor1: .8,left1: 180.0));
                                },

                                  child: Align(
                                    widthFactor: .5,
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Container(
                                          height: 100,
                                          width: 50,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                  top: 0,
                                                  left: 0,
                                                  right: 0,
                                                  child: Container(
                                                    height: 1,
                                                    color: Colors.amber,
                                                  )),
                                              Positioned(
                                                  top: 0,
                                                  left: 30,

                                                  child: Container(
                                                    width: 1,
                                                    height: 50,
                                                    color: Colors.amber,
                                                  )),
                                              Positioned(
                                                  bottom: 0,
                                                  child: Image.asset(
                                                    'assets/images/img_image_1.png',
                                                    height: 50,
                                                    width: 50,
                                                    fit: BoxFit.fill,
                                                  )),
                                            ],
                                          )),
                                    ),
                                  ),
                                ):
                                InkWell(
                                  onTap: (){

                                    context.read<CounterBloc>().add(Increment(count1: items.length, widthFactor1: .8,left1: 180.0));
                                  },
                                  child: Align(
                                    widthFactor: widthFactor,
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Container(
                                          height: 100,
                                          width: 50,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                  top: 0,
                                                  left: 0,
                                                  right: 0,
                                                  child: Container(
                                                    height: 1,
                                                    color: Colors.amber,
                                                  )),
                                              Positioned(
                                                  top: 0,
                                                  left: 30,

                                                  child: Container(
                                                    width: 1,
                                                    height: 50,
                                                    color: Colors.amber,
                                                  )),
                                              Positioned(
                                                  bottom: 0,
                                                  child: Image.asset(
                                                    'assets/images/img.png',
                                                    height: 50,
                                                    width: 50,
                                                    fit: BoxFit.fill,
                                                  )),
                                              Positioned(
                                                  bottom: 15,
                                                  left: 15,
                                                  child: Text("${items.length-(state.count)}+",style: TextStyle(fontWeight: FontWeight.w900),)),
                                            ],
                                          )),
                                    ),
                                  ),
                                ),
                              ),
              
                            )),
              Positioned(
                  top: 162,
                  left: 120,

                  child: Container(
                    width: 1,
                    height: 48,
                    color: Colors.amber,

                  )),
              Positioned(
                  top: 200,
                  left: 70,

                  child:  Container(height: 100,
                    width: 100,
                    child: Stack(children: [
                      Positioned(
                        bottom:0,
                        child: Container(height: 50,
                          padding: EdgeInsets.only(top: 5),
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width:1,
                                color: Colors.white
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(children: [
                            Text("Ancy Tom",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,color: Colors.white),),
                            Text("sibling",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w200,fontStyle:FontStyle.italic,color: Colors.white),),
                          ],),),
                      ),

                      Positioned(
                          top: 10,
                          left: 25,
                          child: Image.asset(
                            'assets/images/img_image_1.png',
                            height: 50,
                            width: 50,
                            fit: BoxFit.fill,
                          ))

                    ],),
                  )),
              Positioned(
                  top: 162,
                  left: 50,

                  child: Container(
                    width: 1,
                    height: 200,
                    color: Colors.amber,

                  )),
              Positioned(
                  top: 352,
                  left: 10,

                  child:  Container(height: 100,
                    width: 100,
                    child: Stack(children: [
                      Positioned(
                        bottom:0,
                        child: Container(height: 50,
                          padding: EdgeInsets.only(top: 5),
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width:1,
                                color: Colors.white
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Me",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,color: Colors.white),),

                            ],),),
                      ),

                      Positioned(
                          top: 10,
                          left: 25,
                          child: Image.asset(
                            'assets/images/img_image_1.png',
                            height: 50,
                            width: 50,
                            fit: BoxFit.fill,
                          ))

                    ],),
                  )),
              Positioned(
                  top: 380,
                  left: 85,
                  right: 85,
                  child: Container(

                    height: 1,

                    color: Colors.amber,

                  ) ),
              Positioned(
                  top: 352,
                  right: 10,

                  child:  Container(height: 100,
                    width: 100,
                    child: Stack(children: [
                      Positioned(
                        bottom:0,
                        child: Container(height: 50,
                          padding: EdgeInsets.only(top: 5),
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width:1,
                                color: Colors.white
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(children: [
                            Text("Charles Ja..",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,color: Colors.white),),
                            Text("spouse",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w200,fontStyle:FontStyle.italic,color: Colors.white),),
                          ],),),
                      ),

                      Positioned(
                          top: 10,
                          left: 25,
                          child: Image.asset(
                            'assets/images/img_image_2.png',
                            height: 50,
                            width: 50,
                            fit: BoxFit.fill,
                          ))

                    ],),
                  )),
              Positioned(
                  top: 380,
                  left: 185,

                  child: Container(

                    height: 100,
                    width: 1,
                    color: Colors.amber,

                  ) ),
              Positioned(
                  top: 470,
                  left: 135,

                  child:  Container(height: 100,
                    width: 100,
                    child: Stack(children: [
                      Positioned(
                        bottom:0,
                        child: Container(height: 50,
                          padding: EdgeInsets.only(top: 5),
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width:1,
                                color: Colors.white
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(children: [
                            Text("Zera Charl...",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w800,color: Colors.white),),
                            Text("child",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w200,fontStyle:FontStyle.italic,color: Colors.white),),
                          ],),),
                      ),

                      Positioned(
                          top: 10,
                          left: 25,
                          child: Image.asset(
                            'assets/images/img_image_3.png',
                            height: 50,
                            width: 50,
                            fit: BoxFit.fill,
                          ))

                    ],),
                  )),
            ],

          ),);
  },
)


    );
  }
}