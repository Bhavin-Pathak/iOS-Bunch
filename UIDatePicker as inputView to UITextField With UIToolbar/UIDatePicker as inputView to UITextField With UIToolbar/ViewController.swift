//
//  ViewController.swift
//  UIDatePicker as inputView to UITextField With UIToolbar
//
//  Created by MacBookPro on 02/02/1946 Saka.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfDate: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    //MARK: Call Deligate When View Load
        tfDate.delegate = self
    }


}

extension ViewController: UITextFieldDelegate{
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.openDatePiker()
    }
}

//MARK: Make Extenction For Date Picker FOR VC
extension ViewController{
    //MARK: Function That Open DATEPICKER
    func openDatePiker()  {
        let datePicker = UIDatePicker()
        datePicker.preferredDatePickerStyle = .wheels
        datePicker.datePickerMode = .date
        datePicker.addTarget(self, action: #selector(dpHendler(datePicker: )), for: .valueChanged)
        
        
        tfDate.inputView = datePicker //MARK: KEYBORD
        //MARK: Keybord Toolbar Frame
        let toolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 40))
        //MARK: Calcel Button Property
        let cancleButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancleBtnClick))
        //MARK: Ok Button Property
        let okButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(okBtnClick))
        //MARK: Flixible Space On Buttons According To Screen Size
        let flexibleButtons = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        //MARK: Setitems On Toolbar
        toolbar.setItems([cancleButton, flexibleButtons, okButton], animated: true)
        tfDate.inputAccessoryView = toolbar
    }
    
    @objc
    func cancleBtnClick(){
        //MARK: Hide Date Picker When User Click Cancel Button
        tfDate.resignFirstResponder()
        
    }
    
    @objc
    func okBtnClick(){
        //MARK: Get Date From DatePicker In TFFIELD
        if let datePicker = tfDate.inputView as? UIDatePicker{
            //MARK: Date Formate
            let formateDate = DateFormatter()
            formateDate.dateStyle = .medium
            tfDate.text = formateDate.string(from: datePicker.date)
            
            print(datePicker.date)
        }
        tfDate.resignFirstResponder()
    }
    
    @objc
    func dpHendler(datePicker: UIDatePicker){
        print(datePicker.date)
    }
}
