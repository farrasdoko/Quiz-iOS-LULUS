//
//  ViewController.swift
//  Quiz iOS Lulus
//
//  Created by Gw on 19/01/18.
//  Copyright © 2018 Gw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var etmtk: UITextField!
    @IBOutlet weak var etquran: UITextField!
    @IBOutlet weak var etcom: UITextField!
    @IBOutlet weak var etbah: UITextField!
    @IBOutlet weak var etaga: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btn(_ sender: Any) {
        var mtk : Int? = Int(etmtk.text!)
        var qrn : Int? = Int(etquran.text!)
        var com : Int? = Int(etcom.text!)
        var bhs : Int? = Int(etbah.text!)
        var dnh : Int? = Int(etaga.text!)
        
        let rumus : Double = Double((mtk! + qrn! + com! + bhs! + dnh!) / (5))
        
        if(rumus < 70){
            score.text! = "Anda Tidak LULUS WKWK, Rata - rata: +\(rumus)"
        }else if(rumus >= 70){
            score.text! = "Anda LULUS SELAMAT!!!, Rata - rata: + \(rumus)"
        }else{
            score.text! = "Isi Dulu"
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

