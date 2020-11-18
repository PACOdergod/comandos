import 'dart:io';

import 'package:comandos/analizar.dart' as analizar;

void main(List<String> arguments) {
  stdout.write('Ingrese su comando: ');
  final comando = stdin.readLineSync();

  analizar.analizar_comando(comando);
}
