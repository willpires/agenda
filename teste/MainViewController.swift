//
//  MainViewController.swift
//  teste
//
//  Created by william jose pires on 27/10/2018.
//  Copyright © 2018 william jose pires. All rights reserved.
//

import UIKit

class MainViewController: UIViewController{
    
    
    

    @IBOutlet weak var tableView: UITableView!
    
    var lista = Array<String>()
    override func viewDidLoad() {
        
        lista = ViewController().getContatos()
        print("teste lista\(lista)")

        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        }

//
//}
//
//
//    func testes(sucesso:@escaping(_ sucesso:Array<String>)->Void){
//
//        let lista = ViewController()
//
//
//        lista.retornaUsuario(sucesso: { (resposta) in
//            sucesso(resposta)
//        }) { (erro) in
//            print("teste")
//        }
//
//    }

}
extension MainViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        return lista.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? listaTableViewCell
        cell?.contatosTxt.text = lista[indexPath.row]
        return cell!
    }
    


}


extension MainViewController: UITableViewDelegate{

}


