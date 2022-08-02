import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final IconData icon; //icono del campo
  final String placeholder; //escribe nombre en el input marca de agua
  final TextEditingController textController; //toma el valor de cada input
  final TextInputType keyboardType; // tipo de teclado
  final bool isPassword; //oculta valores escritos en el imput

  const CustomInput(
      {Key key,
      @required this.icon,
      @required this.placeholder,
      @required this.textController,
      this.keyboardType = TextInputType.text,
      this.isPassword = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5, left: 5, bottom: 5, right: 20),
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black.withOpacity(0.05),
                offset: Offset(0, 5),
                blurRadius: 5)
          ]),
      child: TextField(
        controller: this.textController,
        autocorrect: false,
        keyboardType: this.keyboardType,
        obscureText: this.isPassword, //obscureText true oculta el texto
        decoration: InputDecoration(
            prefixIcon: Icon(this.icon),
            focusedBorder: InputBorder.none, //borra la linea negra del inpút
            border: InputBorder.none,
            hintText: this.placeholder // escribe una palabra en el input
            ),
      ),
    );
  }
}
