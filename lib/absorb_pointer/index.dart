import 'package:flutter/material.dart';
import 'sample1.dart';
import 'sample3.dart';
import 'sample2.dart';
import 'disable_widget.dart';

class AbsorbPointApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Navigator(
        initialRoute: 'home',
        onGenerateRoute: (RouteSettings settings) {
          WidgetBuilder builder;
          switch (settings.name) {
            case "home":
              {
                builder = (context) => HomePage();
                break;
              }
            case "/diabled_widget":
              {
                builder = (context) => DisabledWidget();
                break;
              }
            case "/sample1":
              {
                builder = (context) => WillPopScope(child: SamplePage(), onWillPop: () async {return false;});
                break;
              }
            case "/sample2":
              {
                builder = (context) => Sample2Page();
                break;
              }
            case "/sample3":
              {
                builder = (context) => Sample3Page();
                break;
              }
            default:
              throw new Exception('Invalid route: ${settings.name}');
          }
          return new MaterialPageRoute(builder: builder, settings: settings);
        });
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AbsorbPointer'),
        ),
        body: SafeArea(
          child: ListView(children: <Widget>[
            _buildList(
                context, "Many widgets can be disabled", "/diabled_widget"),
            _buildList(context, "Sample1 (Without AbsorbPointer)", "/sample1"),
            _buildList(context, "Sample2 (With AbsorbPointer)", "/sample2"),
            _buildList(context, "Sample3 abdorbing", "/sample3"),
          ]),
        ));
  }

  Widget _buildList(BuildContext context, String title, String routeName) {
    return Card(
      child: ListTile(
        title: Text(title),
        onTap: () {
          Navigator.pushNamed(context, routeName);
        },
        trailing: Icon(Icons.chevron_right),
      ),
    );
  }
}
