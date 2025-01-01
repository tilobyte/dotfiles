return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "folke/lazydev.nvim",
      ft = "lua",
      opts = {
        library = {
          -- See the configuration section for more details
          -- Load luvit types when the `vim.uv` word is found
          { path = "${3rd}/luv/library", words = { "vim%.uv" } },
        },
      },
    },
    config = function()
      require "lspconfig".lua_ls.setup {}
      require "lspconfig".clangd.setup {}

      local do_format = function(args)
        local format_args = args == nil
            and {}
            or { bufnr = args.buf, id = vim.lsp.get_client_by_id(args.data.client_id).id }
        vim.lsp.buf.format(format_args)
        -- for some reason diagnostics disapper for lua files after formatting. force re-enabling diagnostics fixes it
        -- https://www.reddit.com/r/neovim/comments/15dkzsu/help_needed_why_do_diagnostic_messages_disappear/
        if vim.bo.filetype == "lua" then
          vim.diagnostic.enable()
        end
      end

      vim.keymap.set("n", "<space>f", do_format)
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          if not client then return end
          if client.supports_method "textDocument/formatting" then
            -- format the current buffer on save
            vim.api.nvim_create_autocmd("BufWritePre", {
              buffer = args.buf,
              callback = function()
                do_format(args)
              end,
            })
          end

          local map = function(keys, func, desc)
            vim.keymap.set("n", keys, func, { buffer = args.buf, desc = "LSP: " .. desc })
          end
          map("rn", vim.lsp.buf.rename, "[r]e[n]ame")
          map("gr", require "telescope.builtin".lsp_references, "[g]oto [r]eferences")
          map("gd", require "telescope.builtin".lsp_definitions, "[g]oto [d]efinition")
          map("gD", require "telescope.builtin".lsp_type_definitions, "[g]oto type [D]efinition")
          map("<space>ds", require "telescope.builtin".lsp_document_symbols, "[d]ocument [s]ymbols")
          map("<space>ws", require "telescope.builtin".lsp_dynamic_workspace_symbols, "[w]orkspace [s]ymbols")
          map("<space>ca", vim.lsp.buf.code_action, "[c]ode [a]ction")
        end,
      })
    end,
  },
}
