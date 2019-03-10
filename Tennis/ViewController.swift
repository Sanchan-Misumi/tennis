//
//  ViewController.swift
//  Tennis
//
//  Created by Maho Misumi on 2019/03/08.
//  Copyright © 2019年 Maho Misumi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var point1: Int = 0
    var gamePoint1 : Int = 0
    var point2: Int = 0
    var gamePoint2: Int = 0
    
    @IBOutlet var playerPoint1: UILabel!
    @IBOutlet var playerGamePoint1: UILabel!
    @IBOutlet var playerPoint2: UILabel!
    @IBOutlet var playerGamePoint2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    func  tieBreak1(){
        if point1 != 6 {
            point1 = point1 + 1
            playerPoint1.text = String(point1)
        } else if point1 == 6 && point2 != 6{
            playerPoint1.text = "Winner"
            playerPoint2.text = "looser"
            playerGamePoint1.text = ""
            playerGamePoint2.text = ""
        } else if point1 >= 6 && point2 >= 6 {
            
            if point1 - point2 == 1 {
                playerPoint1.text = "Winner"
                playerPoint2.text = "looser"
                playerGamePoint1.text = ""
                playerGamePoint2.text = ""
            } else if point1 - point2 == 0{
            point1 = point1 + 1
            playerPoint1.text = String(point1)
        }
        
    }
    }
    
    
    func  tieBreak2(){
        if point1 != 6 {
            point2 = point2 + 1
            playerPoint2.text = String(point2)
        } else if point2 == 6 && point1 != 6{
            playerPoint2.text = "Winner"
            playerPoint1.text = "looser"
            playerGamePoint2.text = ""
            playerGamePoint1.text = ""
        } else if point2 >= 6 && point1 >= 6 {
            
            if point2 - point1 == 1 {
                playerPoint2.text = "Winner"
                playerPoint1.text = "looser"
                playerGamePoint2.text = ""
                playerGamePoint1.text = ""
            } else if point2 - point1 == 0{
                point2 = point2 + 1
                playerPoint2.text = String(point2)
            }
        }
    }
    
//
//    func  deuce1(){
//        point1 = 60
//        playerPoint1.text = "Ad"
//    }
//
//    func deuce2(){
//
//    }
    
    
    
    @IBAction func player1(){
        
        if point1 == 0 {
            point1 = 15
            playerPoint1.text = "15"
        } else if point1 == 15 {
            point1 = 30
            playerPoint1.text = "30"
        } else if point1 == 30 {
            point1 = 40
            if  point1 == 40 && point2 == 40{
                playerPoint1.text = "deuce"
                playerPoint2.text = "deuce"
            } else {
            playerPoint1.text = "40"
            }
        }  else if point1 == 40 {
            if point2 != 40 {
                if gamePoint1 != 5{
                point1 = 0
                point2 = 0
                gamePoint1 = gamePoint1 + 1
                playerPoint1.text = "0"
                playerPoint2.text = "0"
                playerGamePoint1.text = String(gamePoint1)
                } else if gamePoint1 == 5 && gamePoint2 != 5 && gamePoint2 != 6{
                    playerPoint1.text = "Winner"
                    playerPoint2.text = "looser"
                    playerGamePoint1.text = ""
                    playerGamePoint2.text = ""
                } else if gamePoint1 == 5 && gamePoint2 == 5{
                    point1 = 0
                    gamePoint1 = gamePoint1 + 1
                    playerGamePoint1.text = String(gamePoint1)
                } else if gamePoint1 == 5 && gamePoint2 == 6{
                    gamePoint1 = 6
                    playerGamePoint1.text = "6"
                } else if gamePoint1 == 6 && gamePoint2 != 6 {
                    playerPoint1.text = "Winner"
                    playerPoint2.text = "looser"
                    playerGamePoint1.text = ""
                    playerGamePoint2.text = ""
                } else if gamePoint1 == 6 && gamePoint2 == 6 {
                    point1 = 0
                    playerPoint1.text = String(point1)
                    point2 = 0
                    playerPoint2.text = String(point2)
                    
                    tieBreak1()
                }
            } else if point2 == 40 {
                point1 = 60
                playerPoint1.text = "Ad"
                playerPoint2.text = String(point2)
            } else if point2 == 60 {
                point2 = 40
                playerPoint1.text = "Ad"
            } else if playerPoint2.text == "Ad"{
                point2 = 40
                playerPoint2.text = String(point2)
                point1 = 60
                playerPoint1.text = "Ad"
            }
        } else if point1 == 60 && point2 == 40 {
            point1 = 0
            point2 = 0
            gamePoint1 = gamePoint1 + 1
            playerGamePoint1.text = String(gamePoint1)
            playerPoint1.text = String(point1)
            playerPoint2.text = String(point2)
        }
        
    }
    
    
    
    @IBAction func player2(){
        
        if point2 == 0 {
            point2 = 15
            playerPoint2.text = "15"
        } else if point2 == 15 {
            point2 = 30
            playerPoint2.text = "30"
        } else if point2 == 30 {
            point2 = 40
            if  point2 == 40 && point1 == 40{
                playerPoint1.text = "deuce"
                playerPoint2.text = "deuce"
            } else {
                playerPoint2.text = "40"
            }
        }
   else if point2 == 40 {
            if point1 != 40 {
                if gamePoint2 != 5{
                    point1 = 0
                    point2 = 0
                    gamePoint2 = gamePoint2 + 1
                    playerPoint2.text = "0"
                    playerPoint1.text = "0"
                    playerGamePoint2.text = String(gamePoint2)
                } else if gamePoint2 == 5 && gamePoint1 != 5 && gamePoint1 != 6{
                    playerPoint2.text = "Winner"
                    playerPoint1.text = "looser"
                    playerGamePoint2.text = ""
                    playerGamePoint1.text = ""
                } else if gamePoint2 == 5 && gamePoint1 == 5{
                    point2 = 0
                    gamePoint2 = gamePoint2 + 1
                    playerGamePoint2.text = String(gamePoint2)
                } else if gamePoint2 == 5 && gamePoint1 == 6{
                        gamePoint2 = 6
                        playerGamePoint2.text = "6"
                } else if gamePoint2 == 6 && gamePoint1 != 6 {
                    playerPoint2.text = "Winner"
                    playerPoint1.text = "looser"
                    playerGamePoint2.text = ""
                    playerGamePoint1.text = ""
                } else if gamePoint2 == 6 && gamePoint1 == 6 {
                    point2 = 0
                    playerPoint2.text = String(point2)
                    point1 = 0
                    playerPoint1.text = String(point1)
                    
                    tieBreak2()
                }
            } else if point1 == 40 {
                point2 = 60
                playerPoint2.text = "Ad"
                playerPoint1.text = String(point1)
            } else if point1 == 60 {
                point1 = 40
                playerPoint2.text = "Ad"
            } else if playerPoint1.text == "Ad"{
            point1 = 40
            playerPoint1.text = String(point2)
            point2 = 60
            playerPoint2.text = "Ad"
        }
        } else if point2 == 60 && point1 == 40 {
            point1 = 0
            point2 = 0
            gamePoint2 = gamePoint2 + 1
            playerGamePoint2.text = String(gamePoint2)
            playerPoint1.text = String(point1)
            playerPoint2.text = String(point2)
            
        }
    }
    

    @IBAction func reset(){
        
        
        point1 = 0
        gamePoint1 = 0
        point2 = 0
        gamePoint2 = 0
        
        playerPoint1.text = ""
        playerGamePoint1.text = ""
        playerPoint2.text = ""
        playerGamePoint2.text = ""
        
    }

}

