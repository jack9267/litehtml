cmake_minimum_required(VERSION 2.8)

project(litehtml CXX)

add_subdirectory(src/gumbo)

set(SOURCE_LITEHTML
    src/background.cpp
    src/box.cpp
    src/context.cpp
    src/css_length.cpp
    src/css_selector.cpp
    src/document.cpp
    src/el_anchor.cpp
    src/el_base.cpp
    src/el_before_after.cpp
    src/el_body.cpp
    src/el_break.cpp
    src/el_cdata.cpp
    src/el_comment.cpp
    src/el_div.cpp
    src/element.cpp
    src/el_font.cpp
    src/el_image.cpp
    src/el_link.cpp
    src/el_li.cpp
    src/el_para.cpp
    src/el_script.cpp
    src/el_space.cpp
    src/el_style.cpp
    src/el_table.cpp
    src/el_td.cpp
    src/el_text.cpp
    src/el_title.cpp
    src/el_tr.cpp
    src/html.cpp
    src/html_tag.cpp
    src/iterators.cpp
    src/media_query.cpp
    src/style.cpp
    src/stylesheet.cpp
    src/table.cpp
    src/utf8_strings.cpp
    src/web_color.cpp
    src/num_cvt.cpp
)

set(HEADER_LITEHTML
    include/litehtml.h
    include/litehtml/attributes.h
    include/litehtml/background.h
    include/litehtml/borders.h
    include/litehtml/box.h
    include/litehtml/context.h
    include/litehtml/css_length.h
    include/litehtml/css_margins.h
    include/litehtml/css_offsets.h
    include/litehtml/css_position.h
    include/litehtml/css_selector.h
    include/litehtml/document.h
    include/litehtml/el_anchor.h
    include/litehtml/el_base.h
    include/litehtml/el_before_after.h
    include/litehtml/el_body.h
    include/litehtml/el_break.h
    include/litehtml/el_cdata.h
    include/litehtml/el_comment.h
    include/litehtml/el_div.h
    include/litehtml/el_font.h
    include/litehtml/el_image.h
    include/litehtml/el_link.h
    include/litehtml/el_para.h
    include/litehtml/el_script.h
    include/litehtml/el_space.h
    include/litehtml/el_style.h
    include/litehtml/el_table.h
    include/litehtml/el_td.h
    include/litehtml/el_text.h
    include/litehtml/el_title.h
    include/litehtml/el_tr.h
    include/litehtml/element.h
    include/litehtml/html.h
    include/litehtml/html_tag.h
    include/litehtml/iterators.h
    include/litehtml/media_query.h
    include/litehtml/os_types.h
    include/litehtml/style.h
    include/litehtml/stylesheet.h
    include/litehtml/table.h
    include/litehtml/types.h
    include/litehtml/utf8_strings.h
    include/litehtml/web_color.h
    include/litehtml/num_cvt.h
)

add_library(${PROJECT_NAME} ${SOURCE_LITEHTML})

set_target_properties(${PROJECT_NAME} PROPERTIES
    CXX_STANDARD 11
    C_STANDARD 99
)

#target_compile_definitions(${PROJECT_NAME} PUBLIC LITEHTML_UTF8)
