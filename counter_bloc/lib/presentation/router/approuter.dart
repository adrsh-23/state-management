import 'package:counter_bloc/logic/cubit/counter_cubit.dart';
import 'package:counter_bloc/presentation/screens/home_screen.dart';
import 'package:counter_bloc/presentation/screens/second_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  CounterCubit _counterCubit = CounterCubit();
  onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _counterCubit,
                  child: MyHomePage(
                    title: 'HomePage',
                  ),
                ));
        break;
      case '/second':
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _counterCubit,
                  child: SecondScreen(
                    title: 'Second Screen',
                  ),
                ));
        break;
      case '/third':
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _counterCubit,
                  child: SecondScreen(
                    title: 'Second Screen',
                  ),
                ));
        break;
      default:
        return null;
    }
  }

  void dispose() {
    _counterCubit.close();
  }
}
