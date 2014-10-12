import 'package:simplemoba/server/simplemoba_server.dart';

import 'package:entity_component/entity_component_server.dart';

import 'dart:io';

void main() {
  ServerWorld w = create_server_world();

  w.start();
}
