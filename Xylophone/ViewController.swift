import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!


    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        let key =  sender.titleLabel?.text;
        
        sender.alpha = 0.5
        if(playSound(key: key! )){
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                sender.alpha = 1;
            }
        }

    }
    
    func playSound(key: String)-> Bool{
        let url = Bundle.main.url(forResource: key, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        return player.play()
                
    }
   
}

