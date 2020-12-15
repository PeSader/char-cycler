let fromstr = join(['cç', 'aáàãâ', 'eéê', 'ií', 'oóõô', 'uú'], '')
let fromstr = fromstr . toupper(fromstr)

let tostr = join(['çc', 'áàãâa', 'éêe', 'íi', 'óõôo', 'úu'], '')
let tostr = tostr . toupper(tostr)

nnoremap <silent> <CR> s<C-r>=tr(@", 'cçaáàãâeéêiíoóõôuúCÇAÁÀÃÂEÉÊIÍOÓÕÔUÚ', 'çcáàãâaéêeíióõôoúuÇCÁÀÃÂAÉÊEÍIÓÕÔOÚU')<CR><Esc>

"caeiou
"CAEIOU
