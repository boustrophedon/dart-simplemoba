part of simplemoba_client;

class SupportRenderer extends Renderer {
  SupportRenderer(CanvasElement canv, CanvasRenderingContext2D ctx) : super(canv, ctx);

  void render_entity(Entity e) {
    Position pos = e.get_component(Position);

    context.fillStyle = '#00FF00';
    // draw square
    context.fillRect(pos.x, pos.y, 20,20); 
  }
}
