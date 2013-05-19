(function() {
  var Map3D, Sample_Map3d,
    __hasProp = Object.prototype.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor; child.__super__ = parent.prototype; return child; };

  enchant();

  Sample_Map3d = (function(_super) {

    __extends(Sample_Map3d, _super);

    Sample_Map3d.prototype.config = {
      WIDTH: 320,
      HEIGHT: 320,
      FPS: 30,
      IMAGES: ["image/graphic.png"]
    };

    function Sample_Map3d() {
      var _this = this;
      Sample_Map3d.__super__.constructor.call(this, this.config.WIDTH, this.config.HEIGHT);
      this.onload = function() {
        var matrix, scene, sprite, theta;
        scene = new Scene3D();
        sprite = new Map3D();
        console.log(sprite.mesh);
        scene.addChild(sprite);
        theta = 0;
        matrix = mat4.create();
        return _this.rootScene.onenterframe = function() {
          if (_this.input.up) theta = 0;
          if (_this.input.right) theta += 0.05;
          if (_this.input.left) theta -= 0.05;
          return sprite.rotateYaw(theta);
        };
      };
      this.start();
    }

    return Sample_Map3d;

  })(Game);

  window.onload = function() {
    return new Sample_Map3d;
  };

  Map3D = (function(_super) {

    __extends(Map3D, _super);

    function Map3D() {
      var mesh;
      Map3D.__super__.constructor.call(this);
      mesh = new enchant.gl.Mesh();
      mesh.vertices = [1.0, 1.0, 1.0, -1.0, 1.0, 1.0, -1.0, -1.0, 0.0, 1.0, -1.0, 0.0];
      mesh.normals = [0.0, 0.0, 1.0, 0.0, 0.0, 1.0, 0.0, 0.0, 1.0, 0.0, 0.0, 1.0];
      mesh.colors = [1.0, 1.0, 1.0, 1.0, 1.0, 0.0, 0.0, 1.0, 1.0, 0.0, 0.0, 1.0, 1.0, 0.0, 0.0, 1.0];
      mesh.texCoords = [1.0, 1.0, 0.0, 1.0, 0.0, 0.0, 1.0, 0.0];
      mesh.indices = [0, 1, 2, 2, 3, 0];
      this.mesh = mesh;
    }

    return Map3D;

  })(Sprite3D);

}).call(this);
