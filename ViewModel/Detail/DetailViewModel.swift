import Foundation
import Model
import Http
import UIKit
import RxSwift

public class DetailViewModel {
    
    public var character: Character?
    
    public init() { }
    
    public func get(url: URL) -> Observable<(Result<Character?, HttpError>)> {
        return Observable.create { observer in
            HttpService.shared.get(url: url) { result in
                switch result {
                case .success(let data):
                    if data != nil {
                        do {
                            let results = try JSONDecoder().decode(Character.self, from: data!)
                            self.character = results
                            observer.onNext(.success(self.character))
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
    
    public func getComics(url: URL) -> Observable<(Result<Character?, HttpError>)> {
        return Observable.create { observer in
            HttpService.shared.get(url: url) { result in
                switch result {
                case .success(let data):
                    if data != nil {
                        do {
                            let results = try JSONDecoder().decode(Character.self, from: data!)
                            self.character = results
                            observer.onNext(.success(self.character))
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
