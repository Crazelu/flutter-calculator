import 'package:calculator/UI/theme/app_theme.dart';
import 'package:calculator/UI/theme/dark_mode.dart';
import 'package:calculator/core/providers/providers.dart';
import 'package:calculator/core/routes/route_generator.dart';
import 'package:calculator/core/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  runApp(MYAPP());
}

class MYAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: AppProviders.providers,
      child: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    Provider.of<DarkModeModel>(context, listen: false).setAppTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: Provider.of<DarkModeModel>(context).isDarkMode
          ? appThemeDark
          : appTheme,
      routes: RouteNames.routes,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
