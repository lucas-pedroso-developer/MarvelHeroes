import Foundation

struct ComicsResults : Codable {
    let id : Int?
    let title : String?
    let thumbnail : ComicsThumbnail?
    
    init(id: Int?, title: String?, thumbnail: ComicsThumbnail?) {
        self.id = id
        self.title = title
        self.thumbnail = thumbnail
    }

}
