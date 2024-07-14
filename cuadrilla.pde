void cuadrilla() {
  for (int i = 0; i < tamCuadrilla; i++) {
    for (int j = 0; j < tamCuadrilla; j++) {
      int despX = width/2 + i * (width / (2 * tamCuadrilla));
      int despY = j * (height / tamCuadrilla);

      for (int k = 0; k < (height / tamCuadrilla) / lineasnum; k++) {
        if ((i + j) % 2 == 0) {
          //lineas horizontales
          int y = despY + k * lineasnum;
          strokeWeight(5);
          if (cambiarColor) {
            stroke(255);
          } else {
            stroke(0);
          }
          line(despX, y, despX + width / (2 * tamCuadrilla), y);
        } else {
          //lineas verticales
          int x = despX + k * lineasnum;
          if (cambiarColor) {
            stroke(0);
          } else {
            stroke(255);
          }
          line(x, despY, x, despY + height / tamCuadrilla);
        }
      }
    }
  }
}
