//
//  ViewController.swift
//  ios_calculator_snapKit
//
//  Created by Ramin Akhmad on 06.08.2020.
//  Copyright © 2020 Ramin Akhmad. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let textField =  UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        setTextField()
        
        var buttonAC = UIButton()
        createButton(button: &buttonAC, text: "AC", selector: #selector(ViewController.pressAC),marginX: 0, marginY: 0)
        
        var buttonPlusMinus = UIButton()
        createButton(button: &buttonPlusMinus, text: "+/-", selector: #selector(ViewController.pressAC),marginX: 1, marginY: 0)
        
        var buttonPersentage = UIButton()
        createButton(button: &buttonPersentage, text: "%", selector: #selector(ViewController.pressAC),marginX: 2, marginY: 0)
        
        var buttonDivision = UIButton()
        createButton(button: &buttonDivision, text: "/", selector: #selector(ViewController.pressAC),marginX: 3, marginY: 0)
        
        var button7 = UIButton()
        createButton(button: &button7, text: "7", selector: #selector(ViewController.pressAC),marginX: 0, marginY: 1)
        
        var button8 = UIButton()
        createButton(button: &button8, text: "8", selector: #selector(ViewController.pressAC),marginX: 1, marginY: 1)
        
        var button9 = UIButton()
        createButton(button: &button9, text: "9", selector: #selector(ViewController.pressAC),marginX: 2, marginY: 1)
        
        var buttonMultipl = UIButton()
        createButton(button: &buttonMultipl, text: "*", selector: #selector(ViewController.pressAC),marginX: 3, marginY: 1)
        
        var button4 = UIButton()
        createButton(button: &button4, text: "4", selector: #selector(ViewController.pressAC),marginX: 0, marginY: 2)
        
        var button5 = UIButton()
        createButton(button: &button5, text: "5", selector: #selector(ViewController.pressAC),marginX: 1, marginY: 2)
        
        var button6 = UIButton()
        createButton(button: &button6, text: "6", selector: #selector(ViewController.pressAC),marginX: 2, marginY: 2)
        
        var buttonMinus = UIButton()
        createButton(button: &buttonMinus, text: "-", selector: #selector(ViewController.pressAC),marginX: 3, marginY: 2)
        
        var button1 = UIButton()
        createButton(button: &button1, text: "1", selector: #selector(ViewController.pressAC),marginX: 0, marginY: 3)
        
        var button2 = UIButton()
        createButton(button: &button2, text: "2", selector: #selector(ViewController.pressAC),marginX: 1, marginY: 3)
        
        var button3 = UIButton()
        createButton(button: &button3, text: "3", selector: #selector(ViewController.pressAC),marginX: 2, marginY: 3)
        
        var buttonPlus = UIButton()
        createButton(button: &buttonPlus, text: "+", selector: #selector(ViewController.pressAC),marginX: 3, marginY: 3)
        
        var buttonComma = UIButton()
        createButton(button: &buttonComma, text: ",", selector: #selector(ViewController.pressAC),marginX: 2, marginY: 4)
        
        var buttonEquall = UIButton()
        createButton(button: &buttonEquall, text: "=", selector: #selector(ViewController.pressAC),marginX: 3, marginY: 4)
        
        var buttonZero = UIButton()
        createButton(button: &buttonZero, text: "0", selector: #selector(ViewController.pressAC),marginX: 0, marginY: 4)
        
    }
    
    private func createButton( button: inout UIButton, text: String, selector: Selector, marginX: Int, marginY: Int) {
        self.view.addSubview(button)
        if marginX <= 2, marginY == 0 {
            button.backgroundColor = .gray
        } else if  marginX == 3{
            button.backgroundColor = .systemOrange
        } else {
            button.backgroundColor = .darkGray
        }
        button.setTitle(text, for: .normal)
        button.addTarget(self, action: selector, for: .touchUpInside)
        
        if text == "0" {
            button.snp.makeConstraints { make in
                make.left.equalTo(view).offset(10)
                make.height.equalTo(view.frame.width / 5)
                //                make.width.equalTo(view.frame.width * 5/2)
                make.width.equalTo(view.frame.width / 5 * 2 + 15)
                make.top.equalTo(textField).offset(100 + Int(view.frame.height/8) * marginY)
            }
        } else {
            button.snp.makeConstraints { make in
                make.left.equalTo(view).offset(10 + (marginX * 90))
                make.width.height.equalTo(view.frame.width / 5)
                make.top.equalTo(textField).offset(100 + Int(view.frame.height/8) * marginY)
            }
        }
    }
    
    private func setTextField()  {
        view.addSubview(textField)
        textField.snp.makeConstraints { make in
            make.top.equalTo(60)
            make.left.equalTo(30)
            make.right.equalTo(-30)
            make.height.equalTo(80)
        }
        textField.text = "ТУТ ЦИФРЫ"
        textField.textAlignment = .right
        textField.textColor = .white
    }
}


extension ViewController {
    
    @objc func pressAC() {
        print("ТЫ обнулился")
    }
}

