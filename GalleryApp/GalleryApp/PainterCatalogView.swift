import Foundation
import UIKit

class PainterCatalogView: UIView {

    // MARK: Properties

    private var artists = ArtistModel.makeArtistGallery()

    // MARK: UI Elements

    private lazy var tableView: UITableView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .systemRed
//        $0.dataSource = self
//        $0.delegate = self
//        $0.register(CellModel.self, forCellReuseIdentifier: CellModel.identifier)
//        $0.sectionHeaderHeight = 0
        return $0
    }(UITableView())

    // MARK: Init

    override init (frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .systemGray3
        self.translatesAutoresizingMaskIntoConstraints = false
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Methods

    private func layout() {

        self.addSubview(tableView)

        NSLayoutConstraint.activate([

            tableView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 50),
            tableView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            tableView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            tableView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -30)

        ])

    }
}

extension PainterCatalogView: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return artists.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CellModel.identifier, for: indexPath) as? CellModel
        cell?.cellSetup(artist: artists[indexPath.row])
        cell?.delegate = self
        return cell ?? UITableViewCell()
    }

}

extension PainterCatalogView: UITableViewDelegate {

}
