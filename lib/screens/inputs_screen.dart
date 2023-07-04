import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'first_name': 'Jorge',
      'last_name': 'Hernandez',
      'email': 'jhackhdez@gmail.com',
      'password': '123456',
      'role': 'Admin'
    };
    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs y Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Form(
                key: myFormKey,
                child: Column(
                  children: [
                    CustomInputField(
                        labelText: 'Nombre',
                        hintText: 'Nombre del usuario',
                        formProperty: 'first_name',
                        formValues: formValues),
                    const SizedBox(height: 30),
                    CustomInputField(
                        labelText: 'Apellido',
                        hintText: 'Apellido del usuario',
                        formProperty: 'last_name',
                        formValues: formValues),
                    const SizedBox(height: 30),
                    CustomInputField(
                      labelText: 'Correo',
                      hintText: 'Correo del usuario',
                      formProperty: 'email',
                      formValues: formValues,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 30),
                    CustomInputField(
                        labelText: 'Contrasenna',
                        hintText: 'Contrasenna del usuario',
                        formProperty: 'password',
                        formValues: formValues,
                        obscureText: true),
                    const SizedBox(height: 30),
                    DropdownButtonFormField(
                        items: const [
                          DropdownMenuItem(
                              value: 'Admin', child: Text('Admin')),
                          DropdownMenuItem(
                              value: 'Superuser', child: Text('Superuser')),
                          DropdownMenuItem(
                              value: 'Developer', child: Text('Developer')),
                          DropdownMenuItem(
                              value: 'Jr. Developer',
                              child: Text('Jr. Developer'))
                        ],
                        onChanged: (value) {
                          print(value);
                          formValues['role'] = value ?? 'Admin';
                        }),
                    const SizedBox(height: 30),
                    ElevatedButton(
                        onPressed: () {
                          FocusScope.of(context).requestFocus(FocusNode());
                          if (!myFormKey.currentState!.validate()) {
                            return;
                          }
                          print(formValues);
                        },
                        child: const SizedBox(
                            width: double.infinity,
                            child: Center(child: Text('Guardar'))))
                  ],
                ),
              )),
        ));
  }
}
