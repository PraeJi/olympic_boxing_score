import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _input1 = '';
  var _input2 = '';
  //int count = 0;

  void _handleClickButton1(){
    //count++;
    setState(() {
      _input1 = '10';
      _input2 = '9';
    });
  }
  // Widget _buildNumberButton(int num){
  //   return Padding(
  //     padding: EdgeInsets.all(8.0),
  //     child: InkWell(
  //       onTap: (){
  //
  //       },
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OLYMPIC BOXING SCORING'),
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/olympic_logo.png',
                  width: 90.0,
                ),
                Text(
                  'TOKYO 2020',
                  style: GoogleFonts.roboto(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            Material(
              color: Colors.black,
              child: Center(
                child: Text(
                  'Womens Light (57-60kg) Semi-final',
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 17.0,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Material(
                  child: Icon(
                    Icons.person,
                    color: Color(0xFFA00000),
                    size: 80.0,
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'images/flag_ireland.png',
                          width: 40.0,
                        ),
                        Text('    '),
                        Text(
                          'IRELAND',
                          style: GoogleFonts.roboto(
                            fontSize: 27.0,
                          ),
                        ),
                      ],
                    ),
                    Text('HARRINGTON Kellie Anne'),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Material(
                  child: Icon(
                    Icons.person,
                    color: Color(0xFF0000A0),
                    size: 80.0,
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'images/flag_thailand.png',
                          width: 40.0,
                        ),
                        Text('    '),
                        Text(
                          'THAILAND',
                          style: GoogleFonts.roboto(
                            fontSize: 27.0,
                          ),
                        )
                      ],
                    ),
                    Text('SEESONDEE Sudaporn'),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  color: Color(0xFFA00000),
                  height: 8.0,
                )),
                Expanded(
                    child: Container(
                  color: Color(0xFF0000A0),
                  height: 8.0,
                )),
              ],
            ),
            // Row(
            //   children: [
            //     for(var i =0 ;i<3;i++) _buildNumberButton(i),
            //   ],
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //       Text('$_input1',style: GoogleFonts.roboto(fontSize: 40),),
            //       Text('$_input2',style: GoogleFonts.roboto(fontSize: 40),),
            //   ],
            // ),
            Text(' '),
            Text('ROUND 1'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '9',
                  style: GoogleFonts.roboto(
                    fontSize: 50.0,
                  ),
                ),
                Text(
                    '10',
                  style: GoogleFonts.roboto(
                    fontSize: 50.0,
                  ),
                ),
              ],
            ),
            Text('ROUND 2'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '10',
                  style: GoogleFonts.roboto(
                    fontSize: 50.0,
                  ),
                ),
                Text(
                  '9',
                  style: GoogleFonts.roboto(
                    fontSize: 50.0,
                  ),
                ),
              ],
            ),
            Text('ROUND 3'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '9',
                  style: GoogleFonts.roboto(
                    fontSize: 50.0,
                  ),
                ),
                Text(
                  '10',
                  style: GoogleFonts.roboto(
                    fontSize: 50.0,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                _input1.length == 3 ? Expanded(
                  child: ElevatedButton(
                    onPressed: () {  },
                    child: Icon(Icons.clear,color: Colors.white,),

                  ),
                )
                : Expanded(
                  child: RaisedButton(
                    onPressed: () {
                      _handleClickButton1();
                      // setState(() {
                      //   _input1 = '10';
                      //   _input2 = '9';
                      // });
                    },
                    color: Color(0xFFA00000),
                    child: Icon(Icons.person,color: Colors.white,),
                  ),
                ),
                Text('  '),
                Expanded(
                  child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        _input1 = '9';
                        _input2 = '10';
                      });
                    },
                    color: Color(0xFF0000A0),
                    child: Icon(Icons.person,color: Colors.white,),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
