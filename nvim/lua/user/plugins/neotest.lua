return {
  "nvim-neotest/neotest",
    dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    "V13Axel/neotest-pest"
  },
    config = function()
        require('neotest').setup({
            adapters = {
                require('neotest-pest')({
                     ignore_dirs = { "vendor", "node_modules" }
                    -- Ignore any projects containing "phpunit-only.tests"
                    -- -- Default: {}
                    root_ignore_files = { "phpunit-only.tests" },
                    -- Specify suffixes for files that should be considered tests
                    -- -- Default: { "Test.php" }
                    test_file_suffixes = { "Test.php", "_test.php", "PestTest.php" },
                    -- Sail not properly detected? Explicitly enable it.
                    -- -- Default: function() that checks for sail presence
                    sail_enabled = function() return false end,
                    -- Custom sail executable. Not running in Sail, but running bare Docker?
                    -- Set `sail_enabled` = true and `sail_executable` to { "docker", "exec", "[somecontainer]" }
                    -- -- Default: "vendor/bin/sail"
                    sail_executable = "vendor/bin/sail",
                    -- Custom sail project root path.
                    -- -- Default: "/var/www/html"
                    sail_project_path = "/var/www/html",
                    -- Custom pest binary.
                    -- -- Default: function that checks for sail presence
                    pest_cmd = "vendor/bin/pest",
                    -- Run N tests in parallel, <=1 doesn't pass --parallel to pest at all
                    -- -- Default: 0
                    parallel = 16
                    -- Enable ["compact" output printer](https://pestphp.com/docs/optimizing-tests#content-compact-printer)
                    -- -- Default: false
                    compact = false,

                    -- Set a custom path for the results XML file, parsed by this adapter
                    --
                    ------------------------------------------------------------------------------------
                    -- NOTE: This must be a path accessible by both your test runner AND your editor! --
                    ------------------------------------------------------------------------------------
                    --
                    -- -- Default: function that checks for sail presence.
                    -- --      - If no sail: Numbered file in randomized /tmp/ directory (using async.fn.tempname())
                    -- --      - If sail: "storage/app/" .. os.date("junit-%Y%m%d-%H%M%S")
                    results_path = function() "storage/app/" end,
            })
        }
    })
}
