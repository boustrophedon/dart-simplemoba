part of simplemoba_client;

class Whatever extends Component {
  String s = "Hello.";
  Whatever();
}

class Renderable extends Component {
  String type;
  Renderable(this.type);
}

class Position extends Component {
  int x;
  int y;
  Position(this.x, this.y);
}
