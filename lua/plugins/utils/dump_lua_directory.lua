local M = {}

M.dump_lua_directory = function(dir)
    local uv = vim.loop
    local output_file = dir .. "/directory.txt"
    local fd = assert(io.open(output_file, "w"))

    for name in vim.fs.dir(dir) do
        if name:match("%.lua$") and name ~= "directory.txt" then
            local filepath = dir .. "/" .. name
            local file = io.open(filepath, "r")
            if file then
                fd:write("===== " .. name .. " =====\n")
                fd:write(file:read("*a") .. "\n\n")
                file:close()
            end
        end
    end

    fd:close()
    print("Wrote Lua file dump to: " .. output_file)
end

return M
