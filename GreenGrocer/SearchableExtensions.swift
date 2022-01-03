//
//  SearchableExtensions.swift
//  GreenGrocer
//
//  Created by MyMacBook on 02.01.2022.
//  Copyright © 2022 Razeware. All rights reserved.
//

import UIKit
import CoreSpotlight
import MobileCoreServices

extension Product {
  var searchableAttributeSet: CSSearchableItemAttributeSet {
    
    let attributeSet = CSSearchableItemAttributeSet(itemContentType: kUTTypeContent as String)
    attributeSet.contentDescription = details
    attributeSet.title = name
    attributeSet.displayName = name
    attributeSet.keywords = [name, "fruit", "shopping", "greengrocer"]
    if let thumbnail = UIImage(named: "\(photoName)_thumb") {
      attributeSet.thumbnailData = thumbnail.jpegData(compressionQuality: 0.7)
    }
    return attributeSet
  }
}
