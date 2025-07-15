return {
    {
        "mason-org/mason.nvim",
        opts = {},
    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {
                "lua_ls",
                "pyright",
                "bashls",
                "clangd",
                "cmake",
                "cssls",
                "html",
                "hyprls",
                "markdown_oxide",
                "matlab_ls",
                "systemd_ls",
                "texlab",
            },
            automatic_enable = true,
        },
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require("lspconfig")
            -- start lsp vim.lsp.enable('lsp')
            -- config lsp vim.lsp.config('lsp', {
            -- 	cmd = { ... },
            -- })
            -- global keymaps
            vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {
                desc = "[g]oto [D]eclaration",
            })
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {
                desc = "[g]oto [d]efinition",
            })
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {
                desc = "show hover",
            })
            vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {
                desc = "[g]oto [i]mplementation",
            })
            vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, {
                desc = "signature help",
            })
            vim.keymap.set("n", "D", vim.lsp.buf.type_definition, {
                desc = "type [D]efinition",
            })
            vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, {
                desc = "[r]e[n]ame",
            })
            vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, {
                desc = "[c]ode [a]ctions",
            })
            vim.keymap.set("n", "gr", vim.lsp.buf.references, {
                desc = "[g]oto [r]eferences",
            })

            -- lsp configs
            vim.lsp.config("lua_ls", {
                capabilities = capabilities,
                diagnostics = { disable = { "missing-fields" } },
            })
            vim.lsp.config("pyright", {
                capabilities = capabilities,
            })
            vim.lsp.config("bashls", {
                capabilities = capabilities,
            })
            vim.lsp.config("clangd", {
                capabilities = capabilities,
                cmd = {
                    "clangd",
                    "--fallback-style=LLVM",
                },
            })
            vim.lsp.config("cmake", {
                capabilities = capabilities,
            })
            vim.lsp.config("cssls", {
                capabilities = capabilities,
            })
            vim.lsp.config("html", {
                capabilities = capabilities,
            })
            vim.lsp.config("hyprls", {
                capabilities = capabilities,
                name = "hyprlang",
                cmd = { "hyprls" },
                root_dir = vim.fn.getcwd(),
            })
            vim.lsp.config("markdown_oxide", {
                capabilities = capabilities,
            })
            vim.lsp.config("matlab_ls", {
                capabilities = capabilities,
            })
            vim.lsp.config("systemd-ls", {
                capabilities = capabilities,
            })
            vim.lsp.config("texlab", {
                capabilities = capabilities,
            })
        end,
    },
}
