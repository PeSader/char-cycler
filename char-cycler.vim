let subs = [
\           'cç',
\           'aáàãâ',
\           'eéê',  
\           'ií',
\           'oóõô',
\           'uú'
\          ]

let lower-fromstr = join(subs, '')
let upper-fromstr = toupper(join(subs, ''))
let fromstr = lower-fromstr . upper-fromstr 

let lower-tostr = lower-fromstr[1:] . lower-fromstr[0]
let upper-tostr = upper-fromstr[1:] . upper-fromstr[0]
let tostr = lower-tostr . upper-fromstr

nnoremap <silent> <CR> s<C-r>=tr(@', fromstr, tostr)<CR><Esc>
