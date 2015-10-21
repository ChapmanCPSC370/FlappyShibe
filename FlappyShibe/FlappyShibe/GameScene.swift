//
//  GameScene.swift
//  FlappyShibe
//
//  Created by Tae Hwan Lee on 10/20/15.
//  Copyright (c) 2015 ChapmanCPSC370. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var background = SKSpriteNode();
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        // Created texture
        let backgroundTexture = SKTexture(imageNamed: "Background.png");

        let moveBackground = SKAction.moveByX(-backgroundTexture.size().width, y: 0, duration: 9);
        let replaceBackground = SKAction.moveByX(backgroundTexture.size().width, y: 0, duration: 0);
        let moveBackgroundForever = SKAction.repeatActionForever(SKAction.sequence([moveBackground, replaceBackground]));
        
        for var i: CGFloat = 0; i < 3; i++ {
            
            // Applied Texture to that particular sprite node
            background = SKSpriteNode(texture: backgroundTexture);
            background.position = CGPoint(x: backgroundTexture.size().width / 2 + backgroundTexture.size().width * i, y: CGRectGetMidY(self.frame));
            // Set height equal to the height of the screen
            background.size.height = self.frame.height;
            background.runAction(moveBackgroundForever);
            self.addChild(background);
            
        }
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        
  
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
