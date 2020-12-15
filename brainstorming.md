Inspired by [Luc Hermitte](https://vi.stackexchange.com/users/626/luc-hermitte) answer on [Stack Overflow](https://vi.stackexchange.com/questions/12988/how-to-add-accent-to-letters-in-normal-mode)

nnoremap <silent> <CR> s<C-r>=tr(@', 'aeioucnAEIOUCNáéíóúçñÁÉÍÓÚÇÑ', 'áéíóúçñÁÉÍÓUÇÑaeioucnAEIOUCN')<CR><Esc>

---------------------------------------------------------------------
* Conclusion 1: to generate the substitution string, you only need to remove the first element ('a' in the example below) and append it to the string.

nnoremap <silent> <CR> s<C-r>=tr(@', 'aáãà', 'áãàa')<CR><Esc>

---------------------------------------------------------------------
* Conclusion 2: to map upper case letters, append a copy of what you have so far in each argument but with an upper case.

nnoremap <silent> <CR> s<C-r>=tr(@', 'aáãàAÁÃÀ', 'áãàaÁÃÀA')<CR><Esc>

---------------------------------------------------------------------
* Conclusion 3: to map another letter, simply follow the steps from the previous conclusions and append to the mappings you already have

nnoremap <silent> <CR> s<C-r>=tr(@', 'aáãàAÁÃÀcçCÇ', 'áãàaÁÃÀAçCÇc')<CR><Esc>

---------------------------------------------------------------------
Pseudo Code

let csubs = 'cç'
let asubs = 'aáàãâ'
let esubs = 'eéê'
let isubs = 'ií'
let osubs = 'oóõô'
let usubs = 'uú'

let subs = [csubs, asubs, ...]

let lower-fromstr = join(subs, '')
let upper-fromstr = toupper(join(subs, ''))
let fromstr = lower-fromstr . upper-fromstr 

let lower-tostr = lower-fromstr[1:] .= lower-fromstr[0]
let upper-tostr = upper-fromstr[1:] .= upper-fromstr[0]
let tostr = lower-tostr . upper-fromstr

nnoremap <silent> <CR> s<C-r>=tr(@', fromstr, tostr)<CR><Esc>
