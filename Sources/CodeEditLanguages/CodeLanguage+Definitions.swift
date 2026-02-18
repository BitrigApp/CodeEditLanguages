//
//  CodeLanguage+Definitions.swift
//
//
//  Created by Lukas Pistrol on 15.01.23.
//

import Foundation

public extension CodeLanguage {

    /// An array of all language structures.
    static let allLanguages: [CodeLanguage] = [
        .bash,
        .c,
        .json,
        .markdown,
        .markdownInline,
        .objc,
        .swift
    ]

    /// A language structure for `Bash`
    static let bash: CodeLanguage = .init(
        id: .bash,
        tsName: "bash",
        extensions: ["sh", "bash"],
        lineCommentString: "#",
        rangeCommentStrings: (":'", "'"),
        highlights: ["folds", "injections", "locals"]
    )

    /// A language structure for `C`
    static let c: CodeLanguage = .init(
        id: .c,
        tsName: "c",
        extensions: ["c", "h"],
        lineCommentString: "//",
        rangeCommentStrings: ("/*", "*/"),
        highlights: ["folds", "indents", "injections", "locals", "tags"]
    )

    /// A language structure for `JSON`
    static let json: CodeLanguage = .init(
        id: .json,
        tsName: "json",
        extensions: ["json"],
        lineCommentString: "//",
        rangeCommentStrings: ("/*", "*/"),
        highlights: ["folds", "indents", "locals"]
    )

    /// A language structure for `Markdown`
    static let markdown: CodeLanguage = .init(
        id: .markdown,
        tsName: "markdown",
        extensions: ["md", "mkd", "mkdn", "mdwn", "mdown", "markdown"],
        lineCommentString: "[comment]: #",
        rangeCommentStrings: ("", ""),
        highlights: ["folds", "indents", "injections"]
    )

    /// A language structure for `Markdown Inline`
    static let markdownInline: CodeLanguage = .init(
        id: .markdownInline,
        tsName: "markdown-inline",
        extensions: [],
        lineCommentString: "",
        rangeCommentStrings: ("", ""),
        highlights: ["injections"]
    )

    /// A language structure for `Objective C`
    static let objc: CodeLanguage = .init(
        id: .objc,
        tsName: "objc",
        extensions: ["m"],
        lineCommentString: "//",
        rangeCommentStrings: ("/*", "*/"),
        parentURL: CodeLanguage.c.queryURL,
        highlights: ["folds", "indents", "injections", "locals"]
    )

    /// A language structure for `Swift`
    static let swift: CodeLanguage = .init(
        id: .swift,
        tsName: "swift",
        extensions: ["swift"],
        lineCommentString: "//",
        rangeCommentStrings: ("/*", "*/"),
        documentationCommentStrings: [.single("///"), .pair(("/**", "*/"))],
        highlights: ["folds", "indents", "injections", "locals", "tags"]
    )

    /// The default language (plain text)
    static let `default`: CodeLanguage = .init(
        id: .plainText,
        tsName: "PlainText",
        extensions: ["txt"],
        lineCommentString: "",
        rangeCommentStrings: ("", "")
    )
}
