import 'package:counter_bloc/logic/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) {
                return Text(
                  state.counter.toString(),
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  heroTag: 'first',
                  onPressed: () =>
                      BlocProvider.of<CounterCubit>(context).increment(),
                  tooltip: 'Increment',
                  child: Icon(Icons.add),
                ),
                FloatingActionButton(
                  heroTag: 'second',
                  onPressed: () =>
                      BlocProvider.of<CounterCubit>(context).decrement(),
                  tooltip: 'Decrement',
                  child: Icon(Icons.remove),
                ),
              ],
            ),
            MaterialButton(
              onPressed: () => Navigator.pushNamed(context, "/second"),
              child: Text("Go to Second Screen"),
            ),
            MaterialButton(
              onPressed: () => Navigator.pushNamed(context, "/third"),
              child: Text("Go to Third Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
