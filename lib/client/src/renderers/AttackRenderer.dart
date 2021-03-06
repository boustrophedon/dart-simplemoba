part of simplemoba_client;

class AttackRenderer extends Renderer {
  AttackRenderer(CanvasElement canv, CanvasRenderingContext2D ctx) : super(canv, ctx);

  void render_entity(Entity e) {
    Position pos = e.get_component(Position);
    Renderable rend = e.get_component(Renderable);

    context.fillStyle = '#FF0000';
    // draw square
    context.fillRect(pos.x, pos.y, 20,20); 
  }
}
