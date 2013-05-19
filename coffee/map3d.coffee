class Map3D extends Sprite3D
  constructor:()->
    super()
    mesh = new enchant.gl.Mesh()
    mesh.vertices = [
        1.0, 1.0, 1.0,
        -1.0, 1.0, 1.0,
        -1.0, -1.0, 0.0,
        1.0, -1.0, 0.0,
    ]
    #    1.0, 1.0, 0.0,
    #    -1.0, 1.0, 0.0,
    #    -1.0, -1.0, 0.0,
    #    1.0, -1.0, 0.0
    #]
    mesh.normals = [
        0.0, 0.0, 1.0,
        0.0, 0.0, 1.0,
        0.0, 0.0, 1.0,
        0.0, 0.0, 1.0,
    ]
    #    0.0, 0.0, -1.0,
    #    0.0, 0.0, -1.0,
    #    0.0, 0.0, -1.0,
    #    0.0, 0.0, -1.0
    #]
    mesh.colors = [
        1.0, 1.0, 1.0, 1.0,
        1.0, 0.0, 0.0, 1.0,
        1.0, 0.0, 0.0, 1.0,
        1.0, 0.0, 0.0, 1.0,
    ]
    #    1.0, 1.0, 1.0, 1.0,
    #    1.0, 1.0, 1.0, 1.0,
    #    1.0, 1.0, 1.0, 1.0,
    #    1.0, 1.0, 1.0, 1.0
    #]
    mesh.texCoords = [
        1.0, 1.0,
        0.0, 1.0,
        0.0, 0.0,
        1.0, 0.0,
    ]
    #    1.0, 1.0,
    #    0.0, 1.0,
    #    0.0, 0.0,
    #    1.0, 0.0
    #]
    mesh.indices = [
        0, 1, 2,
        2, 3, 0,
    ]
    #    6, 5, 4,
    #    4, 7, 6
    #]

    @mesh = mesh
    #@mesh.setBaseColor('#ff0000')

    #super 16, 16
    #@x = x
    #@y = y
    #@frame = 0
    #Sample_Shooting.game.rootScene.addEventListener 'touchstart', (e)=>
    #  @y = e.y
    #Sample_Shooting.game.rootScene.addEventListener 'touchmove', (e)=>
    #  @y = e.y
    #@addEventListener 'enterframe', ->
    #  if (Sample_Shooting.game.frame % 3) is 0
    #    s = new PlayerShoot(@x, @y)
    #Sample_Shooting.game.rootScene.addChild @

#/**
# * @fileOverview
# * primitive.gl.enchant.js
# * @version 0.3.5
# * @require gl.enchant.js v0.3.5+
# * @author Ubiquitous Entertainment Inc.
# *
# * @description
# * Primitive objects for gl.enchant.js
# */
#if (enchant.gl !== undefined) {
#    (function() {
#        enchant.gl.primitive = {};
#        enchant.gl.primitive.Plane = enchant.Class.create(enchant.gl.Sprite3D, {
#            initialize: function(scale) {
#                enchant.gl.Sprite3D.call(this);
#                this.mesh = enchant.gl.Mesh.createPlane(scale);
#            }
#        });
#        enchant.gl.primitive.PlaneXY = enchant.Class.create(enchant.gl.Sprite3D, {
#            initialize: function(scale) {
#                enchant.gl.Sprite3D.call(this);
#                this.mesh = enchant.gl.Mesh.createPlaneXY(scale);
#            }
#        });
#        var proto = Object.getPrototypeOf(enchant.gl.Mesh);
#        proto._createPlane = function(type, scale) {
#            if (typeof scale === 'undefined') {
#                scale = 0.5;
#            }
#            var mesh = new enchant.gl.Mesh();
#            var vertices;
#            if (type === 'yz') {
#                vertices = [
#                    0.0, 1.0, 1.0,
#                    0.0, -1.0, 1.0,
#                    0.0, -1.0, -1.0,
#                    0.0, 1.0, -1.0,
#
#                    0.0, 1.0, 1.0,
#                    0.0, -1.0, 1.0,
#                    0.0, -1.0, -1.0,
#                    0.0, 1.0, -1.0
#                ];
#                mesh.normals = [
#                    1.0, 0.0, 0.0,
#                    1.0, 0.0, 0.0,
#                    1.0, 0.0, 0.0,
#                    1.0, 0.0, 0.0,
#
#                    -1.0, 0.0, 0.0,
#                    -1.0, 0.0, 0.0,
#                    -1.0, 0.0, 0.0,
#                    -1.0, 0.0, 0.0
#                ];
#            } else if (type === 'xz') {
#                vertices = [
#                    1.0, 0.0, 1.0,
#                    -1.0, 0.0, 1.0,
#                    -1.0, 0.0, -1.0,
#                    1.0, 0.0, -1.0,
#
#                    1.0, 0.0, 1.0,
#                    -1.0, 0.0, 1.0,
#                    -1.0, 0.0, -1.0,
#                    1.0, 0.0, -1.0
#                ];
#                mesh.normals = [
#                    0.0, -1.0, 0.0,
#                    0.0, -1.0, 0.0,
#                    0.0, -1.0, 0.0,
#                    0.0, -1.0, 0.0,
#
#                    0.0, 1.0, 0.0,
#                    0.0, 1.0, 0.0,
#                    0.0, 1.0, 0.0,
#                    0.0, 1.0, 0.0
#                ];
#            } else {
#                vertices = [
#                    1.0, 1.0, 0.0,
#                    -1.0, 1.0, 0.0,
#                    -1.0, -1.0, 0.0,
#                    1.0, -1.0, 0.0,
#
#                    1.0, 1.0, 0.0,
#                    -1.0, 1.0, 0.0,
#                    -1.0, -1.0, 0.0,
#                    1.0, -1.0, 0.0
#                ];
#                mesh.normals = [
#                    0.0, 0.0, 1.0,
#                    0.0, 0.0, 1.0,
#                    0.0, 0.0, 1.0,
#                    0.0, 0.0, 1.0,
#
#                    0.0, 0.0, -1.0,
#                    0.0, 0.0, -1.0,
#                    0.0, 0.0, -1.0,
#                    0.0, 0.0, -1.0
#                ];
#            }
#            for (var i = 0, l = vertices.length; i < l; i++) {
#                vertices[i] *= scale;
#            }
#            mesh.vertices = vertices;
#            mesh.colors = [
#                1.0, 1.0, 1.0, 1.0,
#                1.0, 1.0, 1.0, 1.0,
#                1.0, 1.0, 1.0, 1.0,
#                1.0, 1.0, 1.0, 1.0,
#
#                1.0, 1.0, 1.0, 1.0,
#                1.0, 1.0, 1.0, 1.0,
#                1.0, 1.0, 1.0, 1.0,
#                1.0, 1.0, 1.0, 1.0
#            ];
#            mesh.texCoords = [
#                1.0, 1.0,
#                0.0, 1.0,
#                0.0, 0.0,
#                1.0, 0.0,
#
#                1.0, 1.0,
#                0.0, 1.0,
#                0.0, 0.0,
#                1.0, 0.0
#            ];
#            mesh.indices = [
#                0, 1, 2,
#                2, 3, 0,
#                6, 5, 4,
#                4, 7, 6
#            ];
#            return mesh;
#        };
#        proto.createPlane = function(scale) {
#            return this._createPlane('xy', scale);
#        };
#        proto.createPlaneXY = function(scale) {
#            return this._createPlane('xy', scale);
#        };
