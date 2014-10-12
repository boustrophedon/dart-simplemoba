library simplemoba_client;

import 'dart:html';
import 'dart:math' as math;
import 'dart:collection';

import 'package:entity_component/entity_component_common.dart';
import 'package:entity_component/entity_component_client.dart';

part 'src/components.dart';

part 'src/systems/TestSystem.dart';

part 'src/systems/NetworkSystem.dart';
part 'src/systems/InputSystem.dart';

part 'src/systems/RenderSystem.dart';

part 'src/renderers/Renderer.dart';
part 'src/renderers/AttackRenderer.dart';
part 'src/renderers/DefenseRenderer.dart';
part 'src/renderers/SupportRenderer.dart';

ClientWorld create_client_world() {
  ClientWorld world = new ClientWorld();

  world.register_system(new TestSystem(world));
  world.register_system(new RenderSystem(world));
  world.register_system(new NetworkSystem(world));
  world.register_system(new InputSystem(world));


  return world;
}
