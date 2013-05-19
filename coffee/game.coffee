enchant()
class Sample_Map3d extends Game
  config:{
    WIDTH: 320,
    HEIGHT: 320,
    FPS: 30,
    IMAGES:[
      "image/graphic.png"
    ],
  }
  constructor:->
    super(@config.WIDTH, @config.HEIGHT)
    #for i in @config.IMAGES
    #  @preload i
    #Sample_Map3d.game = @
    @onload = =>
      scene = new Scene3D()
      #sprite = new Cube()
      #sprite = new Sphere()
      #sprite = new PlaneXY()
      sprite = new Map3D()
      #sprite.mesh.setBaseColor('#ff0000')
      console.log sprite.mesh
      scene.addChild sprite
      #@rootScene.onenterframe = =>
      #  rotate_num = Math.PI/180 * 0.005
      #  sprite.rotateYaw(rotate_num)
      #return
      theta = 0
      matrix = mat4.create()
      @rootScene.onenterframe = =>
        if @input.up then theta = 0
        if @input.right then theta += 0.05
        if @input.left then theta -= 0.05
        #mat4.identity(matrix)
        #mat4.rotateY(matrix, theta)
        #sprite.rotation = matrix
        sprite.rotateYaw(theta)
      #return
    @start()

window.onload = ->
  new Sample_Map3d

