//
//  ComposeViewController.swift
//  EasyMemo
//
//  Created by 1 on 2022/10/09.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet weak var memoTextView: UITextView!
    
    @IBAction func CancelButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func SaveButton(_ sender: Any) {
        guard let memo = memoTextView.text,
              memo.count > 0 else {
            alert(message: "메모를 입력하세요")
            return
        }
        //저장
        let newMemo = Memo(content: memo)
        Memo.dummyMemoList.append(newMemo)
        //화면 닫기전에 노티전달
        NotificationCenter.default.post(name: ComposeViewController.newMemoDidInsert, object: nil)
        
        
        dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


extension ComposeViewController {
    static let newMemoDidInsert = Notification.Name(rawValue: "newMemoDidInsert")
}