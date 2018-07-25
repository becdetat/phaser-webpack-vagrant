import Phaser from 'phaser'
import SimpleScene from '../scenes/simple-scene'

const game = new Phaser.Game({
  width: 800,
  height: 600,
  physics: {
    default: 'arcade',
    arcade: {
      gravity: { y: 300 },
      debug: false
    }
  },
  scene: SimpleScene
})
