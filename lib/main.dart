import 'package:flutter/material.dart';
import 'package:petakovaproject/widget_functions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Petakova Aplikace',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => const MyHomePage()
      },
    );
    // return CupertinoApp(
    //   initialRoute: '/',
    //   routes: {
    //     '/' : (context) => const MyHomePageIOS(),
    //     '/priklad' : (context) => const PrikladTab(),
    //   },
    // );
  }
}


class MyHomePage extends StatelessWidget {
  const  MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: MainScreen(),
      ),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({ Key? key }) : super(key: key);

  @override
  State<MainScreen> createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData theme = Theme.of(context);
    return Container(
      child: Column(
        children: [
          PageHeader(),
        ],
      )
    );
  }
}

class PageHeader extends StatelessWidget {
  const PageHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Back'),
          addHorizontalSpace(25),
          Container(
            child: Text('Zdraví tě Petáková', style: TextStyle(
              fontFamily: 'Inter',
            ),),
          ),
          addHorizontalSpace(25),
          Text('Next'),
        ],
      ),
    );
  }
}

// class MyHomePageIOS extends StatelessWidget {
//   const MyHomePageIOS({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
    
//     final height = MediaQuery.of(context).size.height;
//     return CupertinoPageScaffold(
//       navigationBar: const CupertinoNavigationBar(
//         middle: Text('Petakova Random Generator'),
//       ),
//       child: Center(
//         child: Container(
//           height: 1920,
//           padding: const EdgeInsets.only(top: 100),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 CupertinoButton.filled(
//                   onPressed: () {
//                     Navigator.pushNamed(context, '/priklad');
//                   },
//                   child: const Text('Dej mi priklad !'),
//                 ),
//               ],
//             ),
//         ),
//       ),
//     );
//   }
// }


// class PrikladTab extends StatelessWidget {
//   const PrikladTab({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return CupertinoPageScaffold(
//       child: Container(
//         child: Card(
//           child: Container(
//             child: Column(
//               children: [
                
//               ],
//             ),
//           ),
//         ),

//       ),
//     );
//   }
// }