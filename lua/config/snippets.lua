local ls = require("luasnip")

ls.snippets = {
    lua = {
        -- 当输入 `for` 时展开为一个 `for` 循环
        ls.parser.parse_snippet("for", "for ${1:i} = 1, ${2:10} do\n    ${0:-- body}\nend"),
    },
}
