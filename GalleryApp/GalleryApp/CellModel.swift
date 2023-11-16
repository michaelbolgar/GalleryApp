import UIKit

final class CellModel: UITableViewCell {

    var artist: ArtistModel?

    // MARK: UI-Elements

    private var nameLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())

    private var bioLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())

    private var titelLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())

    private var workInfoLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())

    private var artistPicture: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIImageView())

    // MARK: Init

    override init (style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        layout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Default Methods

    override func prepareForReuse() {
        super.prepareForReuse()
        //
    }

    // MARK: Methods

    func cellSetup(artist: ArtistModel) {
        nameLabel.text = artist.artistName
        bioLabel.text = artist.artistBio
        artistPicture.image = artist.artistImage
    }

    private func layout() {


    }


}
