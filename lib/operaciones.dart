analizar(String comando) {
//En esta operacion se debe verificar que el comando
//tenga 2 numeros
// sino se tiene que dividir
}

double analizar_operacion(String comando) {
  //SUMA
  if (comando.contains('+')) {
    List nums = _remplazar_signo('+', comando);
    int laSuma = (nums[0] + nums[1]);
    //print(laSuma);

    return laSuma.toDouble();
  }

  //RESTA
  if (comando.contains('-')) {
    List nums = _remplazar_signo('-', comando);

    int laResta = (nums[0] + nums[1]);
    //print(laResta);
    return laResta.toDouble();
  }

  //MULTIPLICACION
  if (comando.contains('*')) {
    List nums = _remplazar_signo('*', comando);

    int laMulti = (nums[0] + nums[1]);
    //print(laMulti);
    return laMulti.toDouble();
  }

  //DIVIDIR
  if (comando.contains('/')) {
    List nums = _remplazar_signo('/', comando);

    double laDivi = (nums[0] / nums[1]);

    //print(laDivi);
    return laDivi;
  }

  //MODULO
  if (comando.contains('%')) {
    List nums = _remplazar_signo('%', comando);

    int elModulo = (nums[0] % nums[1]);

    print(elModulo);
    return elModulo.toDouble();
  }
}

List<int> _remplazar_signo(String signo, String comando) {
  comando = comando.replaceAll(signo, ',');
  var com = comando.split(',');
  List<int> nums = com.map((e) => int.parse(e)).toList();
  //print(nums);
  //print(nums.runtimeType);
  return nums;
}
