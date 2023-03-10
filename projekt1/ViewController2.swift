import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var wynik: UILabel!
    @IBOutlet weak var waga: UITextField!
    @IBOutlet weak var wzrost: UITextField!
    @IBOutlet weak var oblicz: UIButton!
    
    @IBOutlet weak var images: UIImageView!
    var bmi = 0.0
    
    @IBAction func click(_ sender: Any) {
        
        let waga_liczba = Double(waga.text!) ?? 0
        let wzrost_liczba = Double(wzrost.text!) ?? 0
        
        if(waga_liczba == 0 || wzrost_liczba == 0)
        {
            wynik.text = "Nieprawidłowe wartości!"
            images.image = UIImage(named: "Image")
        }
        else{
            bmi = waga_liczba / wzrost_liczba / wzrost_liczba * 10000
            let bmi_wynik = Double(round(10 * bmi) / 10)
            wynik.text="BMI: " + String(bmi_wynik)
            if(bmi<18.5)
            {
                images.image = UIImage(named: "malo")
            }
            else if(bmi>=25.0){
                images.image = UIImage(named: "duzo")
            }
            else{
                images.image = UIImage(named: "srednio")
            }
        }
        
        
    }
   
    override func viewDidLoad() {
        
        
        
        super.viewDidLoad()
        
        
        waga.text="waga"
        wzrost.text="wzrost"

    }

}
