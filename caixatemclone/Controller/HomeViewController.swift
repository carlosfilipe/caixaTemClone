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
    
    let accountInfoContainer: UIView = {
        let container = UIView();
        container.translatesAutoresizingMaskIntoConstraints = false
        container.backgroundColor = UIColor(red: 5/255, green: 140/255, blue: 255/255, alpha: 1)
        
        return container;
    }()
    
    let accountInfoTable:UIView = {
        let viewContainer = UIView()
        viewContainer.translatesAutoresizingMaskIntoConstraints = false
        viewContainer.layer.borderWidth = 1
        viewContainer.layer.borderColor = CGColor(red: 1, green: 1, blue: 1, alpha: 0.25)
        viewContainer.layer.cornerRadius = 5
//        viewContainer.backgroundColor = .green
        return viewContainer
    }()
    
    let moneyLabel:UILabel = {
        let label = UILabel()
        label.text = "Mostrar Saldo"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textAlignment = .center
        label.textColor = .white
        
        
        return label
    }()
    
    let account:UILabel = {
        let label = UILabel()
        label.text = "0000 0000 000000000-0"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.textAlignment = .center
        label.textColor = .white
        
        
        return label
    }()

    let tableView: UITableView = {
        let tv = UITableView()
        tv.translatesAutoresizingMaskIntoConstraints = false
       
        tv.register(HomeTableViewCell.self, forCellReuseIdentifier: HomeTableViewCell.idenfier)
        return tv
        
    }()
    
    let listOfOptions = [
        homeOptions(
            image: "transferencia",
            title: "Transferir dinheiro",
            subTitle: "Transfer??ncias at?? 600 reais",
            timeAgo: "08:24"
        ),
        homeOptions(
            image: "cartaodebito",
            title: "Cart??o de D??bito Virtual",
            subTitle: "Compras em sites e aplicativos",
            timeAgo: "08:21"
        ),
        homeOptions(
            image: "pix",
            title: "Pagar na maquininha",
            subTitle: "Compre no com??rcio sem cart??o",
            timeAgo: "08:24"
        ),
        homeOptions(
            image: "pagamentos",
            title: "Pagar suas contas",
            subTitle: "Boletos, ??gua, luz e telefone",
            timeAgo: "08:24"
        ),
        homeOptions(
            image: "recarga",
            title: "Recarga de Telefone",
            subTitle: "Coloque cr??ditos sem sair de casa",
            timeAgo: "08:24"
        ),
        homeOptions(
            image: "extrato",
            title: "Pagar na Lot??rica",
            subTitle: "Pague suas contas sem cart??o",
            timeAgo: "08:24"
        ),
        homeOptions(
            image: "pix",
            title: "Pix",
            subTitle: "Pagamentos instant??neos",
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
            subTitle: "consulte j??",
            timeAgo: "08:24"
        ),
        homeOptions(
            image: "transferencia",
            title: "Bolsa Fam??lia",
            subTitle: "Consulte seu benef??cio",
            timeAgo: "08:24"
        ),
        homeOptions(
            image: "transferencia",
            title: "Seguro Apoio Fam??lia",
            subTitle: "Com assit??ncia funeral R$30 ??nico",
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
        
        //get rid of black bar underneath navbar
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        
        navigationItem.leftBarButtonItems = [UIBarButtonItem.init(customView: titleView) ]
        
        view.backgroundColor = .white
        tableView.dataSource = self
        tableView.delegate = self
        
        
        
        tableView.tableFooterView = UIView()
        setupViews()
       
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
//        tableView.frame = view.bounds
    }
    
    private func setupViews() {
        view.addSubview(tableView)
        view.addSubview(accountInfoContainer)
        
        accountInfoContainer.addSu bview(accountInfoTable)
        
        accountInfoTable.addSubview(moneyLabel)
        accountInfoTable.addSubview(account)
        
        let accountConstraints = [
//            accountInfoTable.topAnchor.constraint(equalTo: view.topAnchor),
            account.trailingAnchor.constraint(equalTo: accountInfoTable.trailingAnchor),
//            moneyLabel.widthAnchor.constraint(equalToConstant: 50),

            account.widthAnchor.constraint(equalToConstant: (view.frame.width - 18 - 18)/2 ),
            
            account.heightAnchor.constraint(equalTo: accountInfoTable.heightAnchor),
        ]
        
        NSLayoutConstraint.activate(accountConstraints)

        
        let moneyLabelConstraints = [
//            accountInfoTable.topAnchor.constraint(equalTo: view.topAnchor),
            moneyLabel.leadingAnchor.constraint(equalTo: accountInfoTable.leadingAnchor),
//            moneyLabel.widthAnchor.constraint(equalToConstant: 50),

            moneyLabel.widthAnchor.constraint(equalToConstant: (view.frame.width - 18 - 18)/2 ),
            
            moneyLabel.heightAnchor.constraint(equalTo: accountInfoTable.heightAnchor),
        ]
        
        NSLayoutConstraint.activate(moneyLabelConstraints)
       
        
        let accountInfoTableConstraints = [
//            accountInfoTable.topAnchor.constraint(equalTo: view.topAnchor),
            accountInfoTable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 18),
            accountInfoTable.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -18),

            accountInfoTable.heightAnchor.constraint(equalToConstant: 80)
        ]
        
        NSLayoutConstraint.activate(accountInfoTableConstraints)
       
        let accountInfoContainerConstraints = [
            accountInfoContainer.topAnchor.constraint(equalTo: view.topAnchor),
            accountInfoContainer.widthAnchor.constraint(equalTo: view.widthAnchor),
            accountInfoContainer.heightAnchor.constraint(equalToConstant: 120)
        ]
        
        NSLayoutConstraint.activate(accountInfoContainerConstraints)
        
        //NAO VALE DE NADA
        let tableViewConstraints = [
            tableView.topAnchor.constraint(equalTo: accountInfoContainer.bottomAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.widthAnchor.constraint(equalTo: view.widthAnchor),
        ]

        NSLayoutConstraint.activate(tableViewConstraints)
        tableView.rowHeight = UITableView.automaticDimension;

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

