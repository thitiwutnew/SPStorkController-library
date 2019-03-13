
import UIKit
import  SPStorkController
class ViewController: UIViewController {
    
    let button = UIButton.init(type: .system)
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.button.setTitle("กดเพื่อ เปิดอ่านข้อความ", for: .normal)
        self.button.sizeToFit()
        self.button.frame = CGRect(x: 80, y: 450, width: self.view.frame.width / 2 ,height: 50)
        self.button.backgroundColor = UIColor.green
        self.button.setTitleColor(UIColor.black, for: .normal)
        self.button.addTarget(self, action: #selector(self.tapButton), for: .touchUpInside)
        self.view.addSubview(self.button)
    
    }

    @objc func tapButton() {
        
        let controller = ModalController()
        let transitionDelegate = SPStorkTransitioningDelegate()
        controller.transitioningDelegate = transitionDelegate
        controller.modalPresentationStyle = .custom
        self.present(controller, animated: true, completion: nil)
        let textView = UITextView(frame: CGRect(x: 20.0, y: 90.0, width: 250.0, height: 100.0))
        self.automaticallyAdjustsScrollViewInsets = false
        
        textView.center = self.view.center
        textView.textAlignment = NSTextAlignment.justified
        textView.textColor = UIColor.blue
        textView.backgroundColor = UIColor.lightGray
    }

}

