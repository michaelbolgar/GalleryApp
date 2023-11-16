import UIKit

class PainterCatalogVC: UIViewController {

    private let painterView = PainterCatalogView()

    // MARK: Init

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupView()
    }

    private func setupView() {

        view.addSubview(painterView)

        NSLayoutConstraint.activate([

            painterView.topAnchor.constraint(equalTo: view.topAnchor),
            painterView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            painterView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            painterView.bottomAnchor.constraint(equalTo: view.bottomAnchor)

        ])
    }
}

