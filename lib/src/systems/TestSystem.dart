part of simplemoba_client;

class TestSystem extends System {
  TestSystem(World world) : super(world) {
    components_wanted = new Set.from([Position,]);
  }
  void initialize() {

    Entity e1 = world.new_entity();
    e1.add_component(new Renderable("attack"));
    e1.add_component(new Position(100,200));
    e1.add_to_world();

    Entity e2 = world.new_entity();
    e2.add_component(new Renderable("defense"));
    e2.add_component(new Position(100+40,200));
    e2.add_to_world();

    Entity e3 = world.new_entity();
    e3.add_component(new Renderable("support"));
    e3.add_component(new Position(100+80,200));
    e3.add_to_world();
  }

  void process_entity(Entity entity) {
  }
  void remove_entity(Entity e) {}
}
