//
//  GFError.swift
//  GHFolowers
//
//  Created by Marcelo de Araújo on 30/12/2023.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "This username crate an ivalid request. Please try again"
    case unableToComplete = "Unable to complete your request. Please check your internet connection."
    case invalidResponse = "Invalid response from the server. Please try again."
    case invalidData = "The data receive from the server was invalid. Please try again"
    case unableToFavorite = "There was an error favoriting this user. Please try again."
    case alreadyInFavorites = "You've already favorited this user. You must REALLY like them!"
}
