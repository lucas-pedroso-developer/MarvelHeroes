import Foundation

public struct Character: Model {
    public let code: Int?
    public let status: String?
    public let copyright: String?
    public let attributionText: String?
    public let attributionHTML: String?
    public let etag: String?
    public let data: DataList?
    
    public init(code : Int?, status: String?, copyright: String?, attributionText: String?, attributionHTML: String?, etag: String?, data: DataList?) {
        self.code = code
        self.status = status
        self.copyright = copyright
        self.attributionText = attributionText
        self.attributionHTML = attributionHTML
        self.etag = etag
        self.data = data
    }

}
