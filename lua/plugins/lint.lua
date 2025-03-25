return {
    'mfussenegger/nvim-lint',
    config = function ()
        require("plugins.lint").linters_by_ft = {
            python = {"isort", "ruff", "mypy"},
            rust = {"clippy"},
        }
        end
}
