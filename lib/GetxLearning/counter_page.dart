import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controller/increment_controller.dart';
import '../Model/record_model.dart';





class CounterPage extends StatefulWidget {
  const CounterPage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  final counterController = Get.find<CounterController>();

  @override
  Widget build(BuildContext context) {


    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body:GetBuilder<CounterController>(
        builder: (_) =>
            Center(
              child: FutureBuilder<Album>(
                future: counterController.futureAlbum,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'You have pushed the button this many times:',
                        ),
                        Text(
                          counterController.count.toString(),
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        Text(snapshot.data!.title),
                      ],
                    );

                  } else if (snapshot.hasError) {
                    return Text('${snapshot.error}');
                  }

                  // By default, show a loading spinner.
                  return const CircularProgressIndicator();
                },
              ),
            ),
      ),











        //////////////////////////////////////////////////
    /*        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                counterController.count.toString(),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),*/



      floatingActionButton: FloatingActionButton(
        onPressed: (){
          counterController.increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
