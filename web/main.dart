import 'package:simplemoba/simplemoba_client.dart';

import 'package:entity_component/entity_component_client.dart';

import 'dart:html';

void main() {
  ClientWorld w = create_client_world();

  CanvasElement canvas = querySelector("#area");
  canvas.height = 800;
  canvas.width = 800;

  w.globaldata['canvas'] = canvas;

  w.start();
}
