import 'dart:io';
import 'dart:convert';
import 'package:calculater_app/funcoesPrint.dart';
import 'package:calculater_app/funcaOperacao.dart';

void main(List<String> arguments) {
  print(printTexto('Digite o seu primeiro número'));
  var line = stdin.readLineSync(encoding: utf8);

  if (line == null || line.trim().isEmpty) {
    print(printTexto('Entrada inválida. Por favor, insira um número válido.'));
    return;
  }

  double? n1 = double.tryParse(line);
  if (n1 == null) {
    print(
      printTexto(
        'Entrada: ${line} inválida. Por favor, insira um número válido.',
      ),
    );
    return;
  }

  print(printTexto('Digite o seu segundo número'));
  line = stdin.readLineSync(encoding: utf8);

  if (line == null || line.trim().isEmpty) {
    print(printTexto('Entrada inválida. Por favor, insira um número válido.'));
    return;
  }

  double? n2 = double.tryParse(line);
  if (n2 == null) {
    print(
      printTexto(
        'Entrada: ${line} inválida. Por favor, insira um número válido.',
      ),
    );
    return;
  }

  print(printTexto('Digite o operador (+, -, *, /)'));
  String? op = stdin.readLineSync(encoding: utf8);

  if (op == null || op.trim().isEmpty) {
    print(
      printTexto('Operador inválido. Por favor, insira um operador válido.'),
    );
    return;
  }

  var resultado;
  try {
    resultado = operador(op.trim(), n1, n2);
  } catch (e) {
    print(printTexto(e.toString()));
    return;
  }

  print(printTexto('O resultado da operação entre $n1 e $n2 é: $resultado'));
}
