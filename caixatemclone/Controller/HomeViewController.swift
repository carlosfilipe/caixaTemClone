//
//  ViewController.swift
//  caixatemclone
//
//  Created by retina on 15/06/21.
//

import UIKit


struct homeOptions {
    let image: String
    let title: String
    let subTitle: String
    let timeAgo: String
}


class HomeViewController: UIViewController {

    let tableView: UITableView = {
        let tv = UITableView()
        tv.register(HomeTableViewCell.self, forCellReuseIdentifier: HomeTableViewCell.idenfier)
        return tv
        
    }()
    
    let listOfOptions = [
        homeOptions(
            image: "transferencia",
            title: "Transferir dinheiro",
            subTitle: "Transferências até 600 reais",
            timeAgo: "08:24"
        ),
        homeOptions(
            image: "cartaodebito",
            title: "Cartão de Débito Virtual",
            subTitle: "Compras em sites e aplicativos",
            timeAgo: "08:21"
        ),
        homeOptions(
            image: "pix",
            title: "Pagar na maquininha",
            subTitle: "Compre no comércio sem cartão",
            timeAgo: "08:24"
        ),
        homeOptions(
            image: "pagamentos",
            title: "Pagar suas contas",
            subTitle: "Boletos, água, luz e telefone",
            timeAgo: "08:24"
        ),
        homeOptions(
            image: "recarga",
            title: "Recarga de Telefone",
            subTitle: "Coloque créditos sem sair de casa",
            timeAgo: "08:24"
        ),
        homeOptions(
            image: "extrato",
            title: "Pagar na Lotérica",
            subTitle: "Pague suas contas sem cartão",
            timeAgo: "08:24"
        ),
        homeOptions(
            image: "pix",
            title: "Pix",
            subTitle: "Pagamentos instantâneos",
            timeAgo: "08:24"
        ),
        homeOptions(
            image: "extrato",
            title: "Extrato",
            subTitle: "Verifique seu extrato",
            timeAgo: "08:24"
        ),
        homeOptions(
            image: "transferencia",
            title: "Dicas Financeiras",
            subTitle: "Dicas para cuidar do seu dinheiro",
            timeAgo: "08:24"
        ),
        homeOptions(
            image: "transferencia",
            title: "Seguro Desemprego",
            subTitle: "consulte já",
            timeAgo: "08:24"
        ),
        homeOptions(
            image: "transferencia",
            title: "Bolsa Família",
            subTitle: "Consulte seu benefício",
            timeAgo: "08:24"
        ),
        homeOptions(
            image: "transferencia",
            title: "Seguro Apoio Família",
            subTitle: "Com assitência funeral R$30 único",
            timeAgo: "08:24"
        ),
        homeOptions(
            image: "transferencia",
            title: "Informe de Rendimentos",
            subTitle: "Consulte seu informe anual de rendimentos",
            timeAgo: "08:24"
        ),
        

    ]
    
    let titleView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "navLogo")
        imageView.contentMode = .scaleAspectFit
//        imageView.backgroundColor = .green
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let titleViewConstraints = [
            titleView.heightAnchor.constraint(equalToConstant: 20),
            titleView.widthAnchor.constraint(equalToConstant: 137),
        ]
        
        NSLayoutConstraint.activate(titleViewConstraints)
        
        navigationItem.leftBarButtonItems = [UIBarButtonItem.init(customView: titleView) ]
        
        view.backgroundColor = .white
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.tableFooterView = UIView()
        setupViews()
       
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    private func setupViews() {
        view.addSubview(tableView)
//        tableView.rowHeight = UITableView.automaticDimension;

    }

    @objc func navigate() {
            
    }

}



extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfOptions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: HomeTableViewCell.idenfier,for: indexPath) as! HomeTableViewCell
        
        cell.title.text = listOfOptions[indexPath.item].title
        cell.subTitle.text = listOfOptions[indexPath.item].subTitle
        cell.timeAgo.text = listOfOptions[indexPath.item].timeAgo
        cell.image.image = UIImage(named:listOfOptions[indexPath.item].image)

        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
}

