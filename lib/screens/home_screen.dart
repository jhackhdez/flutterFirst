import 'package:flutter/material.dart';
import 'package:flutter_components/routes/app_routes.dart';
import 'package:flutter_components/themes/app_theme.dart';
// import 'package:flutter_components/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes en Flutter'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading:
                      Icon(menuOptions[index].icon, color: AppTheme.primary),
                  title: Text(menuOptions[index].name),
                  onTap: () {
                    // final route = MaterialPageRoute(
                    // builder: (context) => const Listview1Screen());
                    //Navigator.push(context, route);
                    // el pushReplacement destruye el histórico de la ruta, y no te pemite regresar atrás. Se usa para navegar ej desde pantala de login
                    // Navigator.pushReplacement(context, route);

                    Navigator.pushNamed(context, menuOptions[index].route);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: menuOptions.length));
  }
}
