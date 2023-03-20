import UIKit

final class MainController: UITabBarController {
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        .portrait
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.backgroundColor = .white
        
        let strokeView = UIView()
        strokeView.translatesAutoresizingMaskIntoConstraints = false
        strokeView.backgroundColor = .grey800
        tabBar.addSubview(strokeView)
        tabBar.tintColor = .blue
        
        NSLayoutConstraint.activate([
            strokeView.widthAnchor.constraint(equalToConstant: ScreenSize.width),
            strokeView.heightAnchor.constraint(equalToConstant: 1),
            strokeView.topAnchor.constraint(equalTo: tabBar.topAnchor),
        ])
        
        let viewingVC = ViewingController()
        viewingVC.tabBarItem = .init(
            title: "Просмотр",
            image: .videosIcon, 
            selectedImage: .videosSelectedIcon
        )
        
        let streamingVC = StreamingController()
        let streamingNavVC = StreamingNavigationController(rootViewController: streamingVC)
        streamingNavVC.tabBarItem = .init(
            title: "Трансляции",
            image: .signalIcon, 
            selectedImage: .signalSelectedIcon
        )

        let profileVC = ProfileController()
        profileVC.tabBarItem = .init(
            title: "Учетная запись",
            image: .accountIcon, 
            selectedImage: .accountSelectedIcon.withRenderingMode(.alwaysOriginal)
        )

        viewControllers = [viewingVC, streamingNavVC, profileVC]
    }   
}
