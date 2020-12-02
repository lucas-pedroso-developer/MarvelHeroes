import Foundation
import UIKit
import ViewModel
import RxSwift

class DetailViewController: UIViewController {
    
    var id: Int?
    var detailViewModel = DetailViewModel()
    var mainViewModel = MainViewModel()
    var disposeBag = DisposeBag()
        
    @IBOutlet weak var navigationBar: UINavigationBar!
    @IBOutlet weak var characterImageView: UIImageView!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var collectionView: UICollectionView!
        
    override func viewDidLoad() {
        super.viewDidLoad()
                
        self.getCharacter(url: URL(string: "http://gateway.marvel.com/v1/public/characters/\(self.id!)?ts=1&apikey=c99a0bfa90957bf174792400a359a7dd&hash=da0e3c9ea128303172e7fe65eed2e63d")!)
    } 
    
    func getCharacter(url: URL) {
        self.detailViewModel.get(url: url).subscribe(
            onNext: { result in
                self.navigationBar.topItem?.title = self.detailViewModel.character?.data?.results?[0].name!
                self.descriptionTextView.text = self.detailViewModel.character?.data?.results?[0].description!
                                
                if let thumbnail = self.detailViewModel.character?.data?.results?[0].thumbnail {
                    print("\(thumbnail.path!)/portrait_xlarge.\(thumbnail.imageExtension!)")
                    if let url = URL(string:  "\(thumbnail.path!)/portrait_xlarge.\(thumbnail.imageExtension!)") {
                        self.characterImageView.kf.setImage(with: url)
                    }
                }                                
            },
            onError: { error in
                //self.showAlert(title: "Erro", message: "Ocorreu o seguinte erro - \(error.localizedDescription) ")
                
            },
            onCompleted: { }
        ).disposed(by: disposeBag)
    }
    
}
