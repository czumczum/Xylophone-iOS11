import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        playSound(note: sender.tag)
    }

    func playSound(note: Int) {
        let url = Bundle.main.url(forResource: "note\(note)", withExtension: "wav")
        
        do {
            player = try AVAudioPlayer(contentsOf: url!)
            guard let player = player else {return}
            
            player.prepareToPlay()
            player.play()
        }
        catch let error as NSError {
            print(error)
        }
    }
}
