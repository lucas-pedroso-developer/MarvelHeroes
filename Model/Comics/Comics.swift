import Foundation

struct Comics : Model {
    let code : Int?
    let status : String?
    let data : ComicsData?

    init(code : Int?, status : String?, data : ComicsData?) {
        self.code = code
        self.status = status
        self.data = data
    }

}
