//using cubit

// import 'package:apihendling/logic/cubits/product_cubit/product_cubit.dart';
// import 'package:apihendling/presentaion/screens/home_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => ProductCubit(),
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'Api Handeling',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         home: const HomeScreen(),
//       ),
//     );
//   }
// }

//using bloc

import 'package:apihendling/presentaion/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'logic/blocs/product_bloc/product_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Api Handeling',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
