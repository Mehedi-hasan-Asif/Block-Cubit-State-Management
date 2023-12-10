import 'package:counterapp/cubit/counter_cubit_state.dart';
import 'package:counterapp/cubit/cubit_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:  Text("Counter App"),
        ),
        body:
            BlocBuilder<Counter, CounterCubitState>(builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                (state is CounterValue)
                    ? Text(
                        state.counter.toString(),
                        style: textStyle,
                      )
                    : Text(
                        "0",
                        style: textStyle,
                      ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FloatingActionButton(
                      onPressed: () {
                        context.read<Counter>().counterIncrease();
                      },
                      child: Icon(Icons.add),
                    ),
                    FloatingActionButton(
                      onPressed: () {
                        context.read<Counter>().counterDecrease();
                      },
                      child: Icon(Icons.remove),
                    )
                  ],
                )
              ],
            ),
          );
        }));
  }
}
