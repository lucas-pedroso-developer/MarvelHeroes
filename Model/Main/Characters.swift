import Foundation

public struct Characters: Model {
    public var code: Int?
    public var status: String?
    public var data: DataList?

    public init(code : Int?, status : String?, data : DataList?) throws {
        self.code = code
        self.status = status
        self.data = data
    }
}
