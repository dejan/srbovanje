srbovanje
=========

Ruby gem za transliteraciju ćirilice na latinicu i tzv. ASCII latinicu


## Instaliranje

    gem install srbovanje


## Korišćenje

    >> "Ђурђевак".recode_sr_latin
    => "Đurđevak"

    >> "Железница Србије".recode_sr_ascii_latin
    => "Zeleznica Srbije"

    >> "Железница Србије".slugify
    => "zeleznica-srbije"

    >> String.abeceda
    => ["A", "B", "C", "Č", "Ć", "D", "DŽ", "Đ", "E", "F", "G", "H", "I", "J", "K", "L", "LJ", "M", "N", "NJ", "O", "P", "R", "S", "Š", "T", "U", "V", "Z", "Ž"]

## Zašto "recode_sr_latin" kao naziv metode?

Zbog <http://man.he.net/man1/recode-sr-latin>


## Autor

[Dejan Simić](http://github.com/dejan)
