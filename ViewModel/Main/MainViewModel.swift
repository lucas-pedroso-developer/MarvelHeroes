import Foundation
import Model
import Http
import UIKit
import RxSwift

public class MainViewModel {
        
    public var resultsArray: [DataList]?
    public var characterToSearch: String = ""
    public var characters: Characters?
        
    public init() { }
    
    public func getCharacterId(indexPath: Int) -> Int {
        if let id = self.characters?.data?.results![indexPath].id {
            return id
        }
        return 0
    }
    
    public func getCharacterName(indexPath: Int) -> String {
        if let title = self.characters?.data?.results![indexPath].name {
            return title
        }
        return "No name"
    }
    
    public func getImage(indexPath: Int) -> URL? {
        if let thumbnail = self.characters?.data?.results![indexPath].thumbnail {
            print("\(thumbnail.path!)/portrait_xlarge.\(thumbnail.imageExtension!)")
            if let url = URL(string:  "\(thumbnail.path!)/portrait_xlarge.\(thumbnail.imageExtension!)") {
                return url
            }
        }
        return nil
    }
    
    public func get(url: URL) -> Observable<(Result<Characters?, HttpError>)> {
        return Observable.create { observer in
            HttpService.shared.get(url: url) { result in
                switch result {
                case .success(let data):
                    if data != nil {
                        do {
                            let results = try JSONDecoder().decode(Characters.self, from: data!)
                            print(results)
                            if self.characters == nil {
                                self.characters = results
                                observer.onNext(.success(self.characters))
                            } else {
                                self.characters?.data?.results!.append(contentsOf: (results.data?.results)!)
                                observer.onNext(.success(self.characters))
                            }
                        } catch(let error) {
                            observer.onNext(.failure(.noConnectivity))
                        }
                    } else {
                        observer.onNext(.failure(.noConnectivity))
                    }
                case .failure(let error):
                    observer.onNext(.failure(.noConnectivity))
                }
            }
            return Disposables.create()
        }
    }
     
}
