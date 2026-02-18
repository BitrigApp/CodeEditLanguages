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
        .go,
        .goMod,
        .json,
        .markdown,
        .markdownInline,
        .objc,
        .regex,
        .ruby,
        .rust,
        .sql,
        .swift,
        .toml,
        .yaml
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

    /// A language structure for `Go`
    static let go: CodeLanguage = .init(
        id: .go,
        tsName: "go",
        extensions: ["go"],
        lineCommentString: "//",
        rangeCommentStrings: ("/*", "*/"),
        highlights: ["folds", "indents", "injections", "locals", "tags"]
    )

    /// A language structure for `GoMod`
    static let goMod: CodeLanguage = .init(
        id: .goMod,
        tsName: "go-mod",
        extensions: ["mod"],
        lineCommentString: "//",
        rangeCommentStrings: ("/*", "*/")
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

    /// A language structure for `Regex`
    static let regex: CodeLanguage = .init(
        id: .regex,
        tsName: "regex",
        extensions: [],
        lineCommentString: "",
        rangeCommentStrings: ("", "")
    )

    /// A language structure for `Ruby`
    static let ruby: CodeLanguage = .init(
        id: .ruby,
        tsName: "ruby",
        extensions: ["rb"],
        lineCommentString: "#",
        rangeCommentStrings: ("=begin", "=end"),
        highlights: ["folds", "indents", "injections", "locals", "tags"]
    )

    /// A language structure for `Rust`
    static let rust: CodeLanguage = .init(
        id: .rust,
        tsName: "rust",
        extensions: ["rs"],
        lineCommentString: "//",
        rangeCommentStrings: ("/*", "*/"),
        documentationCommentStrings: [
            .single("///"),
            .single("//!"),
            .pair(("/**", "*/")),
            .pair(("/*!", "*/"))
        ],
        highlights: ["folds", "indents", "injections", "locals", "tags"]
    )

    /// A language structure for `SQL`
    static let sql: CodeLanguage = .init(
        id: .sql,
        tsName: "sql",
        extensions: ["sql"],
        lineCommentString: "--",
        rangeCommentStrings: ("/*", "*/"),
        highlights: ["folds", "indents", "injections"]
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

    /// A language structure for `TOML`
    static let toml: CodeLanguage = .init(
        id: .toml,
        tsName: "toml",
        extensions: ["toml"],
        lineCommentString: "#",
        rangeCommentStrings: ("", ""),
        highlights: ["folds", "indents", "injections", "locals"]
    )

    /// A language structure for `YAML`
    static let yaml: CodeLanguage = .init(
        id: .yaml,
        tsName: "yaml",
        extensions: ["yml", "yaml"],
        lineCommentString: "#",
        rangeCommentStrings: ("", ""),
        highlights: ["folds", "indents", "injections", "locals"]
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
