library simplemoba_server;

import 'dart:io';
import 'dart:convert';
import 'dart:async';
import 'dart:math' as math;
import 'dart:collection';

import 'package:entity_component/entity_component_common.dart';
import 'package:entity_component/entity_component_server.dart';

part 'src/components.dart';

part 'src/systems/TestSystem.dart';
part 'src/systems/NetworkSystem.dart';



ServerWorld create_server_world() {
  ServerWorld world = new ServerWorld();

  world.register_system(new TestSystem(world));
  world.register_system(new NetworkSystem(world));

  return world;
}
