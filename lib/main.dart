import 'package:flutter/material.dart';
import 'package:flutter_examples/Stack%20DataStructure/pushNamed/home_page.dart';
// import 'package:flutter_examples/LifeCycle/StateFlutterApplication/login_page.dart';
// import 'package:flutter_examples/LifeCycle/DidChangeDependencies/sample_widget.dart';
// import 'package:flutter_examples/Array%20DataStructure/provider/list_item_provider.dart';
// import 'package:flutter_examples/implicit_animation_demo.dart';
// import 'package:flutter_examples/sliver/nested_scroll_view.dart';
// import 'package:flutter_examples/mounted_demo/home.dart';
// import 'package:flutter_examples/sliver/sliver_demo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// import 'LifeCycle/StateFlutterApplication/login_page.dart';

// import 'Array DataStructure/list_item.dart';
// import 'LifeCycle/DidUpdateWidget/parent_widget.dart';
import 'LifeCycle/Deactivate/animated_demo.dart';
import 'Stack DataStructure/pushNamed/display_page.dart';
// import 'Stack DataStructure/pushNamed/home_page.dart';
// import 'list_demo.dart';
// import 'package:flutter_examples/widget_binding.dart';

// import 'build_context_ex.dart';
// import 'memory_manage.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routes: {
      //   '/first': (context) => const FirstPage(),
      //   '/second': (context) => const SecondPage(),
      // },

      home: const HomePage(),
      routes: {
        'display': (context) => const DisplayPage(),
      },
      
    );
  }
}
