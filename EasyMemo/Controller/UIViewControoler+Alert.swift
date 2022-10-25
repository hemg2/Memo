//
//  UIViewControoler+Alert.swift
//  EasyMemo
//
//  Created by 1 on 2022/10/09.
//

import UIKit

extension UIViewController {
    //경고창 생성
    func alert (title: String = "알림", message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "확인", style: .default, handler: nil)
        alert.addAction(okAction)
        
        
        present(alert, animated: true, completion: nil)
    }
}
