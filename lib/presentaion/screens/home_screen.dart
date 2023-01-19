//using cubit

// import 'package:apihendling/logic/cubits/product_cubit/product_cubit.dart';
// import 'package:apihendling/logic/cubits/product_cubit/product_state.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           centerTitle: true,
//           title: const Text(
//             "Api Handing",
//             style: TextStyle(fontSize: 24),
//           )),
//       body: BlocBuilder<ProductCubit, ProductState>(
//         builder: (context, state) {
//           if (state is ProductLoadingState) {
//             return const Center(child: CircularProgressIndicator());
//           } else if (state is ProductLoadedState) {
//             return ListView.builder(
//                 itemCount: state.data.length,
//                 itemBuilder: (context, index) {
//                   return SizedBox(
//                       height: 50,
//                       child: Padding(
//                         padding: const EdgeInsets.only(
//                           left: 10,
//                         ),
//                         child: Row(
//                           children: [
//                             Container(
//                                 height: 40,
//                                 width: 40,
//                                 decoration: BoxDecoration(
//                                     color: state.data[index].completed!
//                                         ? Colors.green
//                                         : Colors.red,
//                                     borderRadius: BorderRadius.circular(5)),
//                                 child: Center(
//                                   child: Text(state.data[index].id.toString(),
//                                       style: const TextStyle(
//                                           fontSize: 20,
//                                           color: Colors.white,
//                                           fontWeight: FontWeight.w700)),
//                                 )),
//                             const SizedBox(width: 15),
//                             SizedBox(
//                               width: 340,
//                               child: Text(state.data[index].title.toString(),
//                                   maxLines: 1,
//                                   overflow: TextOverflow.ellipsis,
//                                   style: const TextStyle(
//                                       fontSize: 18,
//                                       color: Colors.black,
//                                       fontWeight: FontWeight.w500)),
//                             ),
//                           ],
//                         ),
//                       ));
//                 });
//           }
//           return const Center(child: Text("An error"));
//         },
//       ),
//     );
//   }
// }

//using bloc

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/blocs/product_bloc/product_bloc.dart';
import '../../logic/blocs/product_bloc/product_events.dart';
import '../../logic/blocs/product_bloc/product_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    BlocProvider.of<ProductBloc>(context).add(ProductFetchEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Api Handing",
            style: TextStyle(fontSize: 24),
          )),
      body: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          if (state is ProductLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is ProductLoadedState) {
            return ListView.builder(
                itemCount: state.data.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: state.data[index].completed!
                                        ? Colors.green
                                        : Colors.red,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Center(
                                  child: Text(state.data[index].id.toString(),
                                      style: const TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700)),
                                )),
                            const SizedBox(width: 15),
                            SizedBox(
                              width: 340,
                              child: Text(state.data[index].title.toString(),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500)),
                            ),
                          ],
                        ),
                      ));
                });
          }
          return const Center(child: Text("An error"));
        },
      ),
    );
  }
}
