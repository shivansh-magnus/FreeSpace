import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hostel_allocation_ui/utils/themes.dart';
import 'package:flutter_hostel_allocation_ui/providers/theme_provider.dart';
import 'package:flutter_hostel_allocation_ui/free_space.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) => runApp(_setAllProviders()));
}

Widget _setAllProviders() {
  return MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => ThemeProvider(
          state: AppTheme.getThemeData,
        ),
      ),
    ],
    child: FreeSpaceApp(),
  );
}
