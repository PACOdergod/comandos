import 'package:comandos/operaciones.dart' as operaciones;
import 'package:comandos/variables.dart';

void analizar_comando(String comando) {
  if (comando.startsWith('VAR')) crearVariable(comando);
  if (comando.startsWith('CONS')) print('constante');
  if (comando.contains('+')) operaciones.analizar_operacion(comando);
  if (comando.contains('-')) operaciones.analizar_operacion(comando);
  if (comando.contains('*')) operaciones.analizar_operacion(comando);
  if (comando.contains('/')) operaciones.analizar_operacion(comando);
  if (comando.contains('%')) operaciones.analizar_operacion(comando);
}

void crearVariable(String comando) {
  //final variable = new variables();
}

String obtenerNombre(String comando) {}
