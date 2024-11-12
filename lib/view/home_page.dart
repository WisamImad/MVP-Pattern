import 'package:flutter/material.dart';
import 'package:mvp_pattern/presenter/sample_presenter.dart';
import 'package:mvp_pattern/view/interface_class.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> implements InterfaceClass {
  double _result = 0;
  @override
  void updateViewResult(double result) {
    setState(() {
      _result = result;
    });
  }
  @override
  Widget build(BuildContext context) {
    SamplePresenter presenter = SamplePresenter(this);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('MVP Pattern'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$_result',style: Theme.of(context).textTheme.headlineMedium,),
            ElevatedButton(
              onPressed: () {
                presenter.add(45.0, 23.0);
              },
              child: const Text('Click here'),
            )
          ],
        ),
      ),
    );
  }

}
