Srbovanje
=========

Ruby gem za preslovljavanje ćirilice na latinicu i tzv. "ošišanu" (ASCII) latinicu.

## Instaliranje

U Gemfile projekta dodajte:

```ruby
gem 'srbovanje'
```

Implementacija je u "čistom" Rubiju pa radi na svim platformama i verzijama Rubija.

## Korišćenje

String objekat je proširen metodama `latinicom` i `latinicom_ascii` koje vraćaju novi String, preslovljen na latinicu:

```ruby
>> "Љубав".latinicom
=> "Ljubav"

>> "ЉУБАВ".latinicom
=> "LJUBAV" # primetite drugačije preslovljavanje "Љ" u odnosu na prethodni primer: "LjUBAV" bi bilo pogrešno

>> "Đurđevak".latinicom_ascii
=> "Djurdjevak"

>> "ĐURĐEVAK".latinicom_ascii
=> "DJURDJEVAK"
```

Ako zatreba, tu je i niz sa slovima abecede:

```ruby
>> Srbovanje.abeceda
=> ["A", "B", "C", "Č", "Ć", "D", "Dž", "Đ", "E", "F", "G", "H", "I", "J", "K", "L", "Lj", "M", "N", "Nj", "O", "P", "R", "S", "Š", "T", "U", "V", "Z", "Ž"]
```

Ako koristite Srbovanje uz Rails dobićete setovana pravila za preslovljavanja
koje koristi i18n gem, tako da će npr. [parameterize](https://apidock.com/rails/ActiveSupport/Inflector/parameterize) raditi pravilnije:

```ruby
## bez Srbovanja

>> "Karađorđeva šnicla".parameterize
=> "karadordeva-snicla"

>> "Шабан Шаулић".parameterize
=> ""

## uz Srbovanje

>> "Karađorđeva šnicla".parameterize
=> "karadjordjeva-snicla"

>> "Шабан Шаулић".parameterize
=> "saban-saulic"
```

## MIT License

Copyright (c) 2009 Dejan Simic

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
