//
//  ViewController.swift
//  appCongTru
//
//  Created by Admin on 3/7/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit


    class ViewController: UIViewController {
    
    
    
    
        @IBOutlet weak var kqBtnright: UIButton!
        @IBOutlet weak var kgBtncen: UIButton!
        @IBOutlet weak var kqBtn: UIButton!
        @IBOutlet weak var lableff: UILabel!
        @IBOutlet weak var labcen: UILabel!
    
        override func viewDidLoad() {
            super.viewDidLoad()
            setRandom()
        }
        func setRandom() {
            let random1 = arc4random_uniform(4) + 1
            let a = arc4random_uniform(6) + 1

    
            lableff.text = String(random1)
            labcen.text = String(a)
            setResult(randomA: Int(random1), randomB: Int(a))
    
        }

    
        func setResult(randomA:Int, randomB:Int) {
            let allSum = randomA + randomB
//            kqBtn.setTitle(String(randomA), for: .normal)
//            kgBtncen.setTitle(String(randomB), for: .normal)
//            kqBtnright.setTitle(String(allSum), for: .normal)
            // check vi tri
            let rd = arc4random_uniform(2)
            var ran = arc4random_uniform(9)
            var rum = arc4random_uniform(9)
            
            if ran == rum {
                ran = ran + 1
            } else if ran == allSum {
                ran = ran + 1
            }else if rum == allSum {
                rum = rum + 1
                
            }
            
            
            
            if rd == 0 {
                kqBtn.setTitle(String(allSum), for: .normal)
                kgBtncen.setTitle(String(ran), for: .normal)
                kqBtnright.setTitle(String(rum), for: .normal)
            }
            else if rd == 1 {
                kgBtncen.setTitle(String(allSum), for: .normal)
                kqBtn.setTitle(String(ran), for: .normal)
                kqBtnright.setTitle(String(rum), for: .normal)
            }else {
                kqBtnright.setTitle(String(allSum), for: .normal)
                kqBtn.setTitle(String(ran), for: .normal)
                kgBtncen.setTitle(String(rum), for: .normal)
            }
    
        }
    
        @IBAction func btnleff(_ sender: Any) {
            setRandom()
        }
    
        @IBAction func btncen(_ sender: Any) {
//            setRandom()
        }
    
        @IBAction func btnright(_ sender: Any) {
//            setRandom()
        }
    
    }

