

import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value){
        print(value);
      },
      validator: (value){
        if(value == null){
          return 'Campo requerido';
        }
        if(value.isEmpty){
          return 'Campo requerido';
        }
        if (value.trim().isEmpty){
          return 'Campo requerido';
        }
        return null;
      },

      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}