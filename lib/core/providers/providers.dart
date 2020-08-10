import 'package:calculator/UI/theme/dark_mode.dart';
import 'package:calculator/UI/view/home_view_model.dart';
import 'package:provider/provider.dart';

class AppProviders {
  static final providers = <SingleChildCloneableWidget>[
    ChangeNotifierProvider(create: (_) => DarkModeModel()),
    ChangeNotifierProvider(create: (_) => HomeViewModel()),
  ];
}
