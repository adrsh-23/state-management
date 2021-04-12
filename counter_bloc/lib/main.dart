import 'package:counter_bloc/presentation/router/approuter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // CounterCubit _counterCubit = CounterCubit();
  // @override
  // void dispose() {
  //   _counterCubit.close();
  //   super.dispose();
  // }
  final AppRouter _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // ! Traditional way
      // home: BlocProvider<CounterCubit>(
      //   create: (context) => CounterCubit(),
      //   child: MyHomePage(title: 'Flutter Demo Home Page'),
      // ),
      // ! Way 2 using named routes and a single bloc provider for every page
      // routes: {
      //   "/": (context) => BlocProvider.value(
      //         value: _counterCubit,
      //         child: MyHomePage(
      //           title: 'Home Page',
      //         ),
      //       ),
      //   "/second": (context) => BlocProvider.value(
      //       value: _counterCubit,
      //       child: SecondScreen(
      //         title: 'Second Screen',
      //       )),
      //   "/third": (context) => BlocProvider.value(
      //       value: _counterCubit,
      //       child: ThirdScreen(
      //         title: 'Third Screen',
      //       )),
      // },
      // initialRoute: "/",
      // ! Way 3 using OnGenerateRoute
      onGenerateRoute: _appRouter.onGenerateRoute,
    );
  }
}
