import Foundation

public struct Characters: Model {
    public let code: Int?
    public let status: String?
    public let data: DataList?

    public init(code : Int?, status : String?, data : DataList?) throws {
        self.code = code
        self.status = status
        self.data = data
    }
}
