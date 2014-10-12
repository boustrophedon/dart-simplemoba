part of simplemoba_client;

class AttackRenderer extends Renderer {
  AttackRenderer(CanvasElement canv, CanvasRenderingContext2D ctx) : super(canv, ctx);

  void render_entity(Entity e) {
    Position pos = e.get_component(Position);

    context.fillStyle = '#FF0000';
    // draw square
    context.rect(pos.x, pos.y, 20,20); 
    context.fill();
  }
}
