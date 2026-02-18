//
//  TreeSitterLanguage.swift
//  CodeEditTextView/CodeLanguage
//
//  Created by Lukas Pistrol on 25.05.22.
//

import Foundation

/// A collection of languages that are supported by `tree-sitter`
public enum TreeSitterLanguage: String {
    case bash
    case c
    case json
    case markdown
    case markdownInline
    case objc
    case swift
    case plainText
}
