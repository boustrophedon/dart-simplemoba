part of simplemoba_client;

class DefenseRenderer extends Renderer {
  DefenseRenderer(CanvasElement canv, CanvasRenderingContext2D ctx) : super(canv, ctx);

  void render_entity(Entity e) {
    Position pos = e.get_component(Position);

    context.fillStyle = '#0000FF';
    // draw square
    context.fillRect(pos.x, pos.y, 20,20); 
  }
}
