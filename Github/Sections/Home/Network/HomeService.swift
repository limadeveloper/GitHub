//
//  HomeService.swift
//  Github
//
//  Created by John Lima on 14/04/19.
//  Copyright © 2019 limadeveloper. All rights reserved.
//

import BaseNetworkKit
import Foundation

class HomeService: NKBaseService<HomeAPI> {
  func fetchData(with page: Int, completion: @escaping NKCommon.Completion<HomeModel>) {
    fetch(.fetch(page), dataType: HomeModel.self) { model, _, error in
      completion(model, error)
    }
  }
}
