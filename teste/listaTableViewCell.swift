//
//  listaTableViewCell.swift
//  teste
//
//  Created by william jose pires on 28/10/2018.
//  Copyright © 2018 william jose pires. All rights reserved.
//

import UIKit

class listaTableViewCell: UITableViewCell {

    @IBOutlet weak var contatosTxt: UILabel!
    @IBOutlet weak var nomeTxt: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
