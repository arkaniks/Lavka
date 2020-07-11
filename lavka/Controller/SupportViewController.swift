//
//  SupportViewController.swift
//  lavka
//
//  Created by Владислав on 24.06.2020.
//  Copyright © 2020 Владислав. All rights reserved.
//

import UIKit
import MessageUI

class SupportViewController: UIViewController {

    @IBOutlet weak var TextSupport: UITextView!
    
    @IBOutlet weak var ButtonSupport: UIButton!
    
    
    @IBOutlet weak var SupportView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SupportView.overrideUserInterfaceStyle = .light
        ButtonSupport.layer.cornerRadius = 10
        TextSupport.layer.cornerRadius = 8
        TextSupport.delegate = self
        TextSupport.text = "Расскажите о своей проблеме или же о своем предложении..."
        
    }
    func ChekAlert(title:String, message:String?) -> Void {
        let alert = UIAlertController(title:title , message: message, preferredStyle:  .alert) // само оповещение
 
        let cansel = UIAlertAction(title: "Понятно", style: .cancel, handler: nil) // вторая кнопка и закрытие приложения
        
        alert.addAction(cansel)
        present(alert, animated: true, completion: nil)
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.TextSupport.resignFirstResponder()
    }
    

    
    @IBAction func PressButtonSupport(_ sender: Any) {
        //let TextInTextView:String = TextSupport.text
        //print(TextInTextView as Any)
        let mailComposeControllerView = ConfigMail()
        //print(mailComposeControllerView)
        if  MFMailComposeViewController.canSendMail(){
            self.present(mailComposeControllerView, animated: true, completion: nil)
        } else {
            ChekAlert(title: "Произошла критическая ошибка", message: "Нет связи с почтовой службой вашего ICloud'a. Eror №2")
        }
        TextSupport.text = ""
        //ChekAlert(title: "Сообщение отправлено", message: "Спасибо за внимание к приложению")
        
    }
    
    func ConfigMail() -> MFMailComposeViewController {
        let MailViewConroller = MFMailComposeViewController()
        MailViewConroller.mailComposeDelegate = self
        MailViewConroller.setBccRecipients(["arkaniks@icloud.com"])
        MailViewConroller.setSubject("FeedBack")
        let TextInTextView:String = TextSupport.text
        MailViewConroller.setMessageBody(TextInTextView, isHTML: true)
        return MailViewConroller
    }
    
    
}

extension SupportViewController:UITextViewDelegate{
    
    func textViewDidBeginEditing(_ textView: UITextView){
        
    }

    
    func textViewDidEndEditing(_ textView: UITextView){
        
    }
    
    
}
extension SupportViewController:MFMailComposeViewControllerDelegate{
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
    
    
    
}
