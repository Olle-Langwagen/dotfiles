local keymap = vim.keymap
-- Compile/run command, automatically based on file extension
keymap.set('n', '<F5>', function()
    vim.cmd('w') 
    local file = vim.fn.expand('%')
    local file_no_ext = vim.fn.expand('%:r')
    local filetype = vim.bo.filetype
    local cmd = ""

    if filetype == 'python' then
        cmd = 'python ' .. file
    elseif filetype == 'c' then
        cmd = 'gcc ' .. file .. ' -o ' .. file_no_ext .. ' && ./' .. file_no_ext
    elseif filetype == 'cpp' then
        cmd = 'g++ ' .. file .. ' -o ' .. file_no_ext .. ' && ./' .. file_no_ext
    elseif filetype == 'cs' or filetype == 'fsharp' then
        cmd = 'dotnet run' 
    elseif filetype == 'java' then
        cmd = 'javac ' .. file .. ' && java ' .. file_no_ext
    elseif filetype == 'javascript' then
        cmd = 'node ' .. file
    elseif filetype == 'rust' then
        cmd = 'rustc ' .. file .. ' && ./' .. file_no_ext
    elseif filetype == 'go' then
        cmd = 'go run ' .. file
    elseif filetype == 'sh' then
        cmd = 'bash ' .. file
    else
        print("No build configured (runner.lua): " .. filetype)
        return
    end

    -- Toggleterm
    vim.cmd('TermExec cmd="' .. cmd .. '" direction=float')
end, { desc = "Save and run" })
