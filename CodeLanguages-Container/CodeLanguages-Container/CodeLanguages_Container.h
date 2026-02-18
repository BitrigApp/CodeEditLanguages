//
//  CodeLanguages_Container.h
//  CodeLanguages-Container
//
//  Created by Lukas Pistrol on 28.10.22.
//

#import <Foundation/Foundation.h>

//! Project version number for CodeLanguages_Container.
FOUNDATION_EXPORT double CodeLanguages_ContainerVersionNumber;

//! Project version string for CodeLanguages_Container.
FOUNDATION_EXPORT const unsigned char CodeLanguages_ContainerVersionString[];

typedef struct TSLanguage TSLanguage;

#ifdef __cplusplus
extern "C" {
#endif

// A collection of pointers to supported tree-sitter languages

extern TSLanguage *tree_sitter_bash();
extern TSLanguage *tree_sitter_c();
extern TSLanguage *tree_sitter_json();
extern TSLanguage *tree_sitter_markdown();
extern TSLanguage *tree_sitter_markdown_inline();
extern TSLanguage *tree_sitter_objc();
extern TSLanguage *tree_sitter_swift();

#ifdef __cplusplus
}
#endif
