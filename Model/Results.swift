import Foundation

public struct Results : Model {
    public let id : Int?
    public let name : String?
    public let description : String?
    public let modified : String?
    public let thumbnail : Thumbnail?
    public let resourceURI : String?
    public let comics : Comics?
    
    init(id : Int?, name : String?, description : String?, modified : String?, thumbnail : Thumbnail?, resourceURI : String?, comics : Comics?) throws {
        self.id = id
        self.name = name
        self.description = description
        self.modified = modified
        self.thumbnail = thumbnail
        self.resourceURI = resourceURI
        self.comics = comics
    }

}
