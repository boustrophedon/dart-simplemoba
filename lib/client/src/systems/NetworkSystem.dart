part of simplemoba_client;

class NetworkSystem extends System {
  String server = 'ws://localhost:5634/';
  WebSocket ws;
  NetworkSystem(World world) : super(world) {
    components_wanted = null;
  }
  // network code adapted from http://jamesslocum.com/post/74731227156
  void initialize() {
    ws = new WebSocket(server);
    ws.onOpen.listen( (e) => print("connected to server") );
    ws.onMessage.listen( (e) => print("${e.data}") );
    ws.onClose.listen( (e) => print("connection to server lost") );

    world.subscribe_event('KeyDown', handle_keydown);
  }

  void handle_keydown(Map event) {
    KeyboardEvent kbe = event['KeyboardEvent'];
    ws.send(kbe.keyCode.toString());
  }

  void process_entity(Entity entity) {
  }
  void remove_entity(Entity e) {}
}
