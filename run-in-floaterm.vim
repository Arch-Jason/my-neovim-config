if &filetype == 'cpp'
    let pathfile = expand('%:p')
    let filename = @%
    let command = "FloatermNew g++ " . pathfile . " -o /tmp/" . filename . ".out;/tmp/" . filename . ".out;read \\?\"Press enter to continue...\";exit"
    echo command
    execute (command)
endif

if &filetype == 'c'
    let pathfile = expand('%:p')
    let filename = @%
    let command = "FloatermNew gcc " . pathfile . " -o /tmp/" . filename . ".out;/tmp/" . filename . ".out;read \\?\"Press enter to continue...\";exit"
    execute (command)
endif

if &filetype == 'go'
    let pathfile = expand('%:p')
    let filename = @%
    let command = "FloatermNew go run " . pathfile . ";read \\?\"Press enter to continue...\";exit"
    execute (command)
endif

if &filetype == 'sh'
    let pathfile = expand('%:p')
    let filename = @%
    let command = "FloatermNew bash " . pathfile . ";read \\?\"Press enter to continue...\";exit"
    execute (command)
endif
