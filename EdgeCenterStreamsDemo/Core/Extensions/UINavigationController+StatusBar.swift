import UIKit

extension UINavigationController {
    func setStatusBar(backgroundColor: UIColor) {

        let statusBarFrame: CGRect
        if #available(iOS 13.0, *) {
            statusBarFrame = view.window?.windowScene?.statusBarManager?.statusBarFrame ?? CGRect.zero
        } else {
            statusBarFrame = UIApplication.shared.statusBarFrame
        }
        view.subviews.forEach {
            if $0.frame == statusBarFrame {
                $0.removeFromSuperview()
            }
        }
        let statusBarView = UIView(frame: statusBarFrame)
        statusBarView.backgroundColor = backgroundColor
        view.addSubview(statusBarView)
    }
}
