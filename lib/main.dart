import 'package:flutter/material.dart';
import './layout/row/base.dart';
import './layout/Row/demo1.dart';
import './layout/container/demo1.dart';
import './layout/text/text.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: 'Welcome to Flutter',
     home: new TextEmp());
  }
}

class RowApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Row Study'),
      ),
      body: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Text('你好'),
          const Text('你好'),
          const Text('你好'),
        ],
        
      ),
    );
  }
}

//

// class FlexLayoutTestRoute extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: 'Welcome to Flutter',
//       home: new Scaffold(
//         appBar: new AppBar(
//           title: new Text('Welcome to Flutter'),
//         ),
//         body: Center(
//             child: Column(
//           children: <Widget>[
//             //Flex的两个子widget按1：2来占据水平空间
//             Flex(
//               direction: Axis.horizontal,
//               children: <Widget>[
//                 Expanded(
//                   flex: 1,
//                   child: Container(
//                     height: 40.0,
//                     color: Colors.red,
                    
//                   ),
//                 ),
//                 Expanded(
//                   flex: 2,
//                   child: Container(
//                     height: 30.0,
//                     color: Colors.green,
//                   ),
//                 ),
//               ],
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 20.0),
//               child: SizedBox(
//                 height: 100.0,
//                 //Flex的三个子widget，在垂直方向按2：1：1来占用100像素的空间
//                 child: Flex(
//                   direction: Axis.vertical,
//                   children: <Widget>[
//                     Expanded(
//                       flex: 2,
//                       child: Container(
//                         height: 30.0,
//                         color: Colors.red,
//                       ),
//                     ),
//                     Spacer(
//                       flex: 1,
//                     ),
//                     Expanded(
//                       flex: 1,
//                       child: Container(
//                         height: 30.0,
//                         color: Colors.green,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         )),
//       ),
//     );
//   }
// }
