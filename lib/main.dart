import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/ticker.dart';
import 'bloc/timer_bloc.dart';
import 'pages/timer_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Timer Demo',
      theme: ThemeData.dark(),
      home: BlocProvider(
        create: (context) => TimerBloc(ticker: Ticker()),
        child: Timer(),
      ),
    );
  }
}
