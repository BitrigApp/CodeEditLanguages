//
//  TreeSitterModel.swift
//  CodeEditTextView/CodeLanguage
//
//  Created by Lukas Pistrol on 25.05.22.
//

import Foundation
import SwiftTreeSitter

/// A singleton class to manage `tree-sitter` queries and keep them in memory.
public class TreeSitterModel {

    /// The singleton/shared instance of ``TreeSitterModel``.
    public static let shared: TreeSitterModel = .init()

    /// Get a query for a specific language
    /// - Parameter language: The language to request the query for.
    /// - Returns: A Query if available. Returns `nil` for not implemented languages
    public func query(for language: TreeSitterLanguage) -> Query? {
        switch language {
        case .bash:
            return bashQuery
        case .c:
            return cQuery
        case .json:
            return jsonQuery
        case .markdown:
            return markdownQuery
        case .markdownInline:
            return markdownInlineQuery
        case .objc:
            return objcQuery
        case .swift:
            return swiftQuery
        case .plainText:
            return nil
        }
    }

    /// Query for `Bash` files.
    public private(set) lazy var bashQuery: Query? = {
        return queryFor(.bash)
    }()

    /// Query for `C` files.
    public private(set) lazy var cQuery: Query? = {
        return queryFor(.c)
    }()

    /// Query for `JSON` files.
    public private(set) lazy var jsonQuery: Query? = {
        return queryFor(.json)
    }()

    /// Query for `Markdown` files.
    public private(set) lazy var markdownQuery: Query? = {
        return queryFor(.markdown)
    }()

    /// Query for `Markdown Inline` files.
    public private(set) lazy var markdownInlineQuery: Query? = {
        return queryFor(.markdownInline)
    }()

    /// Query for `Objective C` files.
    public private(set) lazy var objcQuery: Query? = {
        return queryFor(.objc)
    }()

    /// Query for `Swift` files.
    public private(set) lazy var swiftQuery: Query? = {
        return queryFor(.swift)
    }()

    private func queryFor(_ codeLanguage: CodeLanguage) -> Query? {
        // get the tree-sitter language and query url if available
        guard let language = codeLanguage.language,
              let url = codeLanguage.queryURL else { return nil }

        // 1. if the language depends on another language combine the query files
        // 2. if the language has additional query files combine them with the main one
        // 3. otherwise return the query file
        if let parentURL = codeLanguage.parentQueryURL,
           let data = combinedQueryData(for: [url, parentURL]) {
            return try? Query(language: language, data: data)
        } else if let additionalHighlights = codeLanguage.additionalHighlights {
            var addURLs = additionalHighlights.compactMap({ codeLanguage.queryURL(for: $0) })
            addURLs.append(url)
            guard let data = combinedQueryData(for: addURLs) else { return nil }
            return try? Query(language: language, data: data)
        } else {
            return try? language.query(contentsOf: url)
        }
    }

    private func combinedQueryData(for fileURLs: [URL]) -> Data? {
        let rawQuery = fileURLs.compactMap { try? String(contentsOf: $0) }.joined(separator: "\n")
        if !rawQuery.isEmpty {
            return rawQuery.data(using: .utf8)
        } else {
            return nil
        }
    }

    private init() {}
}
