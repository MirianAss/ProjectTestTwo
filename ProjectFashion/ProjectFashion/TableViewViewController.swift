//
//  TableViewViewController.swift
//  ProjectFashion
//
//  Created by Mirian Santana on 08/03/23.
//

import UIKit

class TableViewViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var styleOne = FashionStyles(title: "Clássico", image: "classico", text: "O estilo clássico mistura sobriedade, elegância e qualidade. Geralmente, encontramos pessoas que se encaixam em tal estilo no mundo dos negócios, colocando em seus looks cores básicas, linhas retas e muita alfaiataria.", style: "Estilo Clássico")
    var styleTwo = FashionStyles(title: "Criativo", image: "criativo", text: "Podemos dizer que o estilo criativo é o extremo oposto do clássico. Em suas composições, encontramos uma enorme mistura de cores, texturas, estampas e formas. Geralmente, esse estilo vem acompanhado do famoso “animal print”, além de muito floral, geométrico e combinações com tênis. Na dúvida sobre qual moda atual utilizar, os criativos apostam em todas ao mesmo tempo.", style: "Estilo Criativo")
    var styleThree = FashionStyles(title: "Elegante", image: "elegante", text: "Sofisticado, não importa o preço ou a marca da roupa e do acessório: essa é, sem dúvida, a definição do estilo elegante. Embora seja muitas vezes confundido com o estilo clássico, o elegante tende a ser mais contemporâneo. Como identificá-lo? Procure por looks em preto e branco, discretos e por tecidos finos. Não tem erro.", style: "Estilo Elegante")
    var styleFour = FashionStyles(title: "Esportivo", image: "esportivo", text: "Aqui a palavra de lei é conforto. Com looks descontraídos e práticos, o estilo esportivo traz em sua composição muito algodão e peças frescas, que não atrapalhem os movimentos.", style: "Estilo Esportivo")
    var styleFive = FashionStyles(title: "Romântico", image: "romantico", text: "Repleto de peças com laços, rendas, tules, leves transparências, babados, pregas, tecidos fluídos e pedrarias, ele é simplesmente inconfundível, sendo o favorito de muitas mulheres de todas as idades.", style: "Estilo Romântico")
    
    var arrayStyles: [FashionStyles] = []
    
    func styles() {
        arrayStyles = [styleOne, styleTwo, styleThree, styleFour, styleFive]
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        let uiNib = UINib(nibName: "CustomCellXib", bundle: nil)
        tableView.register(uiNib, forCellReuseIdentifier: "cellXib")
        styles()
    }

}
extension TableViewViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayStyles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cellXib", for: indexPath) as? CustomCellXib {
            
            cell.setupFashion(fashion: arrayStyles[indexPath.row])
            
            return cell
        }
            return UITableViewCell()
    }
}
extension TableViewViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let screen = self.storyboard?.instantiateViewController(withIdentifier: "screenOne") as? ScreenOneViewController {
            
            screen.screenOne = arrayStyles[indexPath.row]
            
            self.navigationController?.pushViewController(screen, animated: true)
        }
    }
}
