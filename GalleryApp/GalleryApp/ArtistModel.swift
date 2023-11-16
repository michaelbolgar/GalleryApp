import UIKit

struct ArtistModel {
    let artistName: String
    let artistBio: String
    let artistImage: UIImage

    static func makeArtistGallery() -> [ArtistModel] {

        var gallery = [ArtistModel]()

        gallery.append(ArtistModel(artistName: "Picasso",
                                   artistBio: "Born, worked, dead", artistImage: UIImage(named: "Picasso") ?? UIImage()))

        return gallery
    }
}
