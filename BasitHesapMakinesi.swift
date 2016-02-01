//
//  ViewController.swift
//  Hesapla Arda !
//
//  Created by Arda Mavi on 1.02.2016.
//  Copyright © 2016 Arda Mavi. All rights reserved.

// Bu uygulama Arda Mavi tarafından tasarlanmış ve programlanmıştır.

import UIKit

class BasitHesapMakinesi: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var noktabtnoutlet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lbl.text = ""
        noktabtnoutlet.hidden = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Atama işlemleri :
    
    var op =  ""
    var sayi1 = ""
    var sayi2 = ""
    var sonuç = 0.0
    var sonuçint = 0
    var sonuçinttodouble = 0.0
    var s1 = 0.0
    var s2 = 0.0
    var işlem = ""
    
    // Sıfırla buton :
    
    @IBAction func sıfırlabtn(sender: AnyObject) {
        // Sayfayı yeniden yükle :
        self.viewDidLoad()
    }
    
    // Sayılar :

    @IBAction func btn0(sender: AnyObject) {
        lbl.text = lbl.text! + "0"
    }
    @IBAction func btn1(sender: AnyObject) {
        lbl.text = lbl.text! + "1"
    }
    @IBAction func btn2(sender: AnyObject) {
        lbl.text = lbl.text! + "2"
    }
    @IBAction func btn3(sender: AnyObject) {
        lbl.text = lbl.text! + "3"
    }
    @IBAction func btn4(sender: AnyObject) {
        lbl.text = lbl.text! + "4"
    }
    @IBAction func btn5(sender: AnyObject) {
        lbl.text = lbl.text! + "5"
    }
    @IBAction func btn6(sender: AnyObject) {
        lbl.text = lbl.text! + "6"
    }
    @IBAction func btn7(sender: AnyObject) {
        lbl.text = lbl.text! + "7"
    }
    @IBAction func btn8(sender: AnyObject) {
        lbl.text = lbl.text! + "8"
    }
    @IBAction func btn9(sender: AnyObject) {
        lbl.text = lbl.text! + "9"
    }
    @IBAction func btNokta(sender: AnyObject) {
        lbl.text = lbl.text! + "."
        noktabtnoutlet.hidden = true
    }
    
    
    // Operatörler :
    
    @IBAction func btnx(sender: AnyObject) {
        sayi1 = lbl.text!
        işlem = "*"
        lbl.text = ""
        noktabtnoutlet.hidden = false
    }
    @IBAction func btnbölü(sender: AnyObject) {
        sayi1 = lbl.text!
        işlem = "/"
        lbl.text = ""
        noktabtnoutlet.hidden = false
    }
    @IBAction func btntop(sender: AnyObject) {
        sayi1 = lbl.text!
        işlem = "+"
        lbl.text = ""
        noktabtnoutlet.hidden = false
    }
    @IBAction func btnçıkar(sender: AnyObject) {
        sayi1 = lbl.text!
        işlem = "-"
        lbl.text = ""
        noktabtnoutlet.hidden = false
    }
    
    // İşlem yapma :
    
    @IBAction func btneşittir(sender: AnyObject) {
        sayi2 = lbl.text!
        
        s1 = Double(sayi1)!
        s2 = Double(sayi2)!
        
        switch işlem {
        
            case "*":
            sonuç = s1 * s2
            case "/":
            sonuç = s1 / s2
            case "+":
            sonuç = s1 + s2
        default:
            sonuç = s1 - s2
        
        }
        
        // Sonuç int mi double mı bakmak için bir algoritma geliştiriyorum.
        // Bu şekilde sonucu ekrana eğer int 'se, virgülden sonrasını yazmaz.
        
        sonuçint = Int(sonuç)
        
        sonuçinttodouble = Double(sonuçint)
        
        if (sonuç == sonuçinttodouble){
        
            // Ekrana yazdıralım
            lbl.text = String(sonuçint)
        
        }else {
        // Ekrana yazdıralım
        lbl.text = String(sonuç)
        }
    }
    
}
