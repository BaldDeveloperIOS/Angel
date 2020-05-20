//
//  Extensions.swift
//  Angel
//
//  Created by helenepetitjean on 20/05/2020.
//  Copyright © 2020 chauveau. All rights reserved.
//

import Foundation

extension Date
{
    func toString( dateFormat format  : String ) -> String
    {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }

}
