-- Selección de libros cuyo título comienza con "H".

/**
select * from libro where titulo regexp '^H';

No devuelve nada porque ningún título comienza con "H".
**/


-- Libros escritos por autores cuyos nombres terminan con "ing".

/**
select * from libro INNER JOIN autor where autor.nombre regexp 'ing$';

┌────────┬───────────────────────────────────┬──────────┬─────────────────────────────────────────────┬────────┬────┬──────────────┐
│ codigo │              titulo               │ autor_id │                  editorial                  │ precio │ id │    nombre    │
├────────┼───────────────────────────────────┼──────────┼─────────────────────────────────────────────┼────────┼────┼──────────────┤
│ 1      │ The Great Gatsby                  │ 6        │ Charles Scribner's Sons                     │ 20.99  │ 1  │ J.K. Rowling │
│ 2      │ To Kill a Mockingbird             │ 7        │ J.B. Lippincott & Co.                       │ 15.95  │ 1  │ J.K. Rowling │
│ 3      │ The Catcher in the Rye            │ 8        │ Little, Brown and Company                   │ 18.75  │ 1  │ J.K. Rowling │
│ 4      │ One Hundred Years of Solitude     │ 9        │ Harper & Row                                │ 22.5   │ 1  │ J.K. Rowling │
│ 5      │ Brave New World                   │ 3        │ Chatto & Windus                             │ 17.99  │ 1  │ J.K. Rowling │
│ 6      │ The Hobbit                        │ 10       │ George Allen & Unwin                        │ 24.99  │ 1  │ J.K. Rowling │
│ 7      │ The Lord of the Rings             │ 10       │ George Allen & Unwin                        │ 35.5   │ 1  │ J.K. Rowling │
│ 8      │ The Chronicles of Narnia          │ 11       │ Geoffrey Bles                               │ 28.99  │ 1  │ J.K. Rowling │
│ 9      │ The Odyssey                       │ 12       │ Homer                                       │ 14.95  │ 1  │ J.K. Rowling │
│ 10     │ The Iliad                         │ 12       │ Homer                                       │ 14.95  │ 1  │ J.K. Rowling │
│ 11     │ Moby-Dick                         │ 13       │ Harper & Brothers                           │ 19.99  │ 1  │ J.K. Rowling │
│ 12     │ The Road                          │ 14       │ Alfred A. Knopf                             │ 16.75  │ 1  │ J.K. Rowling │
│ 13     │ The Grapes of Wrath               │ 15       │ The Viking Press                            │ 21.5   │ 1  │ J.K. Rowling │
│ 14     │ Wuthering Heights                 │ 16       │ Emily Brontë                                │ 12.99  │ 1  │ J.K. Rowling │
│ 15     │ The Old Man and the Sea           │ 17       │ Charles Scribner's Sons                     │ 18.95  │ 1  │ J.K. Rowling │
│ 16     │ The Count of Monte Cristo         │ 18       │ Pétion                                      │ 27.99  │ 1  │ J.K. Rowling │
│ 17     │ The Picture of Dorian Gray        │ 19       │ Ward, Lock, and Company                     │ 14.5   │ 1  │ J.K. Rowling │
│ 18     │ The Adventures of Sherlock Holmes │ 20       │ George Newnes                               │ 16.99  │ 1  │ J.K. Rowling │
│ 19     │ Frankenstein                      │ 21       │ Lackington, Hughes, Harding, Mavor, & Jones │ 13.25  │ 1  │ J.K. Rowling │
│ 20     │ Alice's Adventures in Wonderland  │ 22       │ Macmillan                                   │ 11.5   │ 1  │ J.K. Rowling │
│ 21     │ The Prince                        │ 23       │ Niccolò Machiavelli                         │ 10.99  │ 1  │ J.K. Rowling │
│ 22     │ Don Quixote                       │ 24       │ Francisco de Robles                         │ 26.75  │ 1  │ J.K. Rowling │
│ 23     │ The Divine Comedy                 │ 25       │ Dante Alighieri                             │ 20.5   │ 1  │ J.K. Rowling │
│ 24     │ Anna Karenina                     │ 26       │ The Russian Messenger                       │ 23.99  │ 1  │ J.K. Rowling │
│ 25     │ Les Misérables                    │ 27       │ A. Lacroix, Verboeckhoven & Cie.            │ 29.75  │ 1  │ J.K. Rowling │
│ 26     │ The Jungle Book                   │ 28       │ Macmillan Publishers                        │ 14.99  │ 1  │ J.K. Rowling │
│ 27     │ The Wind in the Willows           │ 29       │ Methuen & Co.                               │ 17.5   │ 1  │ J.K. Rowling │
│ 28     │ War and Peace                     │ 26       │ The Russian Messenger                       │ 33.25  │ 1  │ J.K. Rowling │
│ 29     │ Crime and Punishment              │ 30       │ The Russian Messenger                       │ 19.99  │ 1  │ J.K. Rowling │
│ 1      │ The Great Gatsby                  │ 6        │ Charles Scribner's Sons                     │ 20.99  │ 2  │ Stephen King │
│ 2      │ To Kill a Mockingbird             │ 7        │ J.B. Lippincott & Co.                       │ 15.95  │ 2  │ Stephen King │
│ 3      │ The Catcher in the Rye            │ 8        │ Little, Brown and Company                   │ 18.75  │ 2  │ Stephen King │
│ 4      │ One Hundred Years of Solitude     │ 9        │ Harper & Row                                │ 22.5   │ 2  │ Stephen King │
│ 5      │ Brave New World                   │ 3        │ Chatto & Windus                             │ 17.99  │ 2  │ Stephen King │
│ 6      │ The Hobbit                        │ 10       │ George Allen & Unwin                        │ 24.99  │ 2  │ Stephen King │
│ 7      │ The Lord of the Rings             │ 10       │ George Allen & Unwin                        │ 35.5   │ 2  │ Stephen King │
│ 8      │ The Chronicles of Narnia          │ 11       │ Geoffrey Bles                               │ 28.99  │ 2  │ Stephen King │
│ 9      │ The Odyssey                       │ 12       │ Homer                                       │ 14.95  │ 2  │ Stephen King │
│ 10     │ The Iliad                         │ 12       │ Homer                                       │ 14.95  │ 2  │ Stephen King │
│ 11     │ Moby-Dick                         │ 13       │ Harper & Brothers                           │ 19.99  │ 2  │ Stephen King │
│ 12     │ The Road                          │ 14       │ Alfred A. Knopf                             │ 16.75  │ 2  │ Stephen King │
│ 13     │ The Grapes of Wrath               │ 15       │ The Viking Press                            │ 21.5   │ 2  │ Stephen King │
│ 14     │ Wuthering Heights                 │ 16       │ Emily Brontë                                │ 12.99  │ 2  │ Stephen King │
│ 15     │ The Old Man and the Sea           │ 17       │ Charles Scribner's Sons                     │ 18.95  │ 2  │ Stephen King │
│ 16     │ The Count of Monte Cristo         │ 18       │ Pétion                                      │ 27.99  │ 2  │ Stephen King │
│ 17     │ The Picture of Dorian Gray        │ 19       │ Ward, Lock, and Company                     │ 14.5   │ 2  │ Stephen King │
│ 18     │ The Adventures of Sherlock Holmes │ 20       │ George Newnes                               │ 16.99  │ 2  │ Stephen King │
│ 19     │ Frankenstein                      │ 21       │ Lackington, Hughes, Harding, Mavor, & Jones │ 13.25  │ 2  │ Stephen King │
│ 20     │ Alice's Adventures in Wonderland  │ 22       │ Macmillan                                   │ 11.5   │ 2  │ Stephen King │
│ 21     │ The Prince                        │ 23       │ Niccolò Machiavelli                         │ 10.99  │ 2  │ Stephen King │
│ 22     │ Don Quixote                       │ 24       │ Francisco de Robles                         │ 26.75  │ 2  │ Stephen King │
│ 23     │ The Divine Comedy                 │ 25       │ Dante Alighieri                             │ 20.5   │ 2  │ Stephen King │
│ 24     │ Anna Karenina                     │ 26       │ The Russian Messenger                       │ 23.99  │ 2  │ Stephen King │
│ 25     │ Les Misérables                    │ 27       │ A. Lacroix, Verboeckhoven & Cie.            │ 29.75  │ 2  │ Stephen King │
│ 26     │ The Jungle Book                   │ 28       │ Macmillan Publishers                        │ 14.99  │ 2  │ Stephen King │
│ 27     │ The Wind in the Willows           │ 29       │ Methuen & Co.                               │ 17.5   │ 2  │ Stephen King │
│ 28     │ War and Peace                     │ 26       │ The Russian Messenger                       │ 33.25  │ 2  │ Stephen King │
│ 29     │ Crime and Punishment              │ 30       │ The Russian Messenger                       │ 19.99  │ 2  │ Stephen King │
└────────┴───────────────────────────────────┴──────────┴─────────────────────────────────────────────┴────────┴────┴──────────────┘
**/


-- Libros con títulos que contienen la palabra "and" en cualquier posición.

/**
sqlite> select * from libro where titulo regexp 'and';
┌────────┬──────────────────────────────────┬──────────┬─────────────────────────┬────────┐
│ codigo │              titulo              │ autor_id │        editorial        │ precio │
├────────┼──────────────────────────────────┼──────────┼─────────────────────────┼────────┤
│ 15     │ The Old Man and the Sea          │ 17       │ Charles Scribner's Sons │ 18.95  │
│ 20     │ Alice's Adventures in Wonderland │ 22       │ Macmillan               │ 11.5   │
│ 28     │ War and Peace                    │ 26       │ The Russian Messenger   │ 33.25  │
│ 29     │ Crime and Punishment             │ 30       │ The Russian Messenger   │ 19.99  │
└────────┴──────────────────────────────────┴──────────┴─────────────────────────┴────────┘
**/


-- Libros cuyo título comienza con una vocal.

/**
sqlite> SELECT * FROM libro WHERE titulo REGEXP '^[aeiouAEIOU]';
┌────────┬──────────────────────────────────┬──────────┬───────────────────────┬────────┐
│ codigo │              titulo              │ autor_id │       editorial       │ precio │
├────────┼──────────────────────────────────┼──────────┼───────────────────────┼────────┤
│ 4      │ One Hundred Years of Solitude    │ 9        │ Harper & Row          │ 22.5   │
│ 20     │ Alice's Adventures in Wonderland │ 22       │ Macmillan             │ 11.5   │
│ 24     │ Anna Karenina                    │ 26       │ The Russian Messenger │ 23.99  │
└────────┴──────────────────────────────────┴──────────┴───────────────────────┴────────┘
**/


-- Libros cuyo autor tiene al menos una vocal repetida.

/**
sqlite> SELECT * FROM libro INNER JOIN autor WHERE autor.nombre REGEXP '[aeiouAEIOU].*[aeiouAEIOU]';
┌────────┬───────────────────────────────────┬──────────┬─────────────────────────────────────────────┬────────┬────┬─────────────────┐
│ codigo │              titulo               │ autor_id │                  editorial                  │ precio │ id │     nombre      │
├────────┼───────────────────────────────────┼──────────┼─────────────────────────────────────────────┼────────┼────┼─────────────────┤
│ 1      │ The Great Gatsby                  │ 6        │ Charles Scribner's Sons                     │ 20.99  │ 1  │ J.K. Rowling    │
│ 2      │ To Kill a Mockingbird             │ 7        │ J.B. Lippincott & Co.                       │ 15.95  │ 1  │ J.K. Rowling    │
│ 3      │ The Catcher in the Rye            │ 8        │ Little, Brown and Company                   │ 18.75  │ 1  │ J.K. Rowling    │
│ 4      │ One Hundred Years of Solitude     │ 9        │ Harper & Row                                │ 22.5   │ 1  │ J.K. Rowling    │
│ 5      │ Brave New World                   │ 3        │ Chatto & Windus                             │ 17.99  │ 1  │ J.K. Rowling    │
│ 6      │ The Hobbit                        │ 10       │ George Allen & Unwin                        │ 24.99  │ 1  │ J.K. Rowling    │
│ 7      │ The Lord of the Rings             │ 10       │ George Allen & Unwin                        │ 35.5   │ 1  │ J.K. Rowling    │
│ 8      │ The Chronicles of Narnia          │ 11       │ Geoffrey Bles                               │ 28.99  │ 1  │ J.K. Rowling    │
│ 9      │ The Odyssey                       │ 12       │ Homer                                       │ 14.95  │ 1  │ J.K. Rowling    │
│ 10     │ The Iliad                         │ 12       │ Homer                                       │ 14.95  │ 1  │ J.K. Rowling    │
│ 11     │ Moby-Dick                         │ 13       │ Harper & Brothers                           │ 19.99  │ 1  │ J.K. Rowling    │
│ 12     │ The Road                          │ 14       │ Alfred A. Knopf                             │ 16.75  │ 1  │ J.K. Rowling    │
│ 13     │ The Grapes of Wrath               │ 15       │ The Viking Press                            │ 21.5   │ 1  │ J.K. Rowling    │
│ 14     │ Wuthering Heights                 │ 16       │ Emily Brontë                                │ 12.99  │ 1  │ J.K. Rowling    │
│ 15     │ The Old Man and the Sea           │ 17       │ Charles Scribner's Sons                     │ 18.95  │ 1  │ J.K. Rowling    │
│ 16     │ The Count of Monte Cristo         │ 18       │ Pétion                                      │ 27.99  │ 1  │ J.K. Rowling    │
│ 17     │ The Picture of Dorian Gray        │ 19       │ Ward, Lock, and Company                     │ 14.5   │ 1  │ J.K. Rowling    │
│ 18     │ The Adventures of Sherlock Holmes │ 20       │ George Newnes                               │ 16.99  │ 1  │ J.K. Rowling    │
│ 19     │ Frankenstein                      │ 21       │ Lackington, Hughes, Harding, Mavor, & Jones │ 13.25  │ 1  │ J.K. Rowling    │
│ 20     │ Alice's Adventures in Wonderland  │ 22       │ Macmillan                                   │ 11.5   │ 1  │ J.K. Rowling    │
│ 21     │ The Prince                        │ 23       │ Niccolò Machiavelli                         │ 10.99  │ 1  │ J.K. Rowling    │
│ 22     │ Don Quixote                       │ 24       │ Francisco de Robles                         │ 26.75  │ 1  │ J.K. Rowling    │
│ 23     │ The Divine Comedy                 │ 25       │ Dante Alighieri                             │ 20.5   │ 1  │ J.K. Rowling    │
│ 24     │ Anna Karenina                     │ 26       │ The Russian Messenger                       │ 23.99  │ 1  │ J.K. Rowling    │
│ 25     │ Les Misérables                    │ 27       │ A. Lacroix, Verboeckhoven & Cie.            │ 29.75  │ 1  │ J.K. Rowling    │
│ 26     │ The Jungle Book                   │ 28       │ Macmillan Publishers                        │ 14.99  │ 1  │ J.K. Rowling    │
│ 27     │ The Wind in the Willows           │ 29       │ Methuen & Co.                               │ 17.5   │ 1  │ J.K. Rowling    │
│ 28     │ War and Peace                     │ 26       │ The Russian Messenger                       │ 33.25  │ 1  │ J.K. Rowling    │
│ 29     │ Crime and Punishment              │ 30       │ The Russian Messenger                       │ 19.99  │ 1  │ J.K. Rowling    │
│ 1      │ The Great Gatsby                  │ 6        │ Charles Scribner's Sons                     │ 20.99  │ 2  │ Stephen King    │
│ 2      │ To Kill a Mockingbird             │ 7        │ J.B. Lippincott & Co.                       │ 15.95  │ 2  │ Stephen King    │
│ 3      │ The Catcher in the Rye            │ 8        │ Little, Brown and Company                   │ 18.75  │ 2  │ Stephen King    │
│ 4      │ One Hundred Years of Solitude     │ 9        │ Harper & Row                                │ 22.5   │ 2  │ Stephen King    │
│ 5      │ Brave New World                   │ 3        │ Chatto & Windus                             │ 17.99  │ 2  │ Stephen King    │
│ 6      │ The Hobbit                        │ 10       │ George Allen & Unwin                        │ 24.99  │ 2  │ Stephen King    │
│ 7      │ The Lord of the Rings             │ 10       │ George Allen & Unwin                        │ 35.5   │ 2  │ Stephen King    │
│ 8      │ The Chronicles of Narnia          │ 11       │ Geoffrey Bles                               │ 28.99  │ 2  │ Stephen King    │
│ 9      │ The Odyssey                       │ 12       │ Homer                                       │ 14.95  │ 2  │ Stephen King    │
│ 10     │ The Iliad                         │ 12       │ Homer                                       │ 14.95  │ 2  │ Stephen King    │
│ 11     │ Moby-Dick                         │ 13       │ Harper & Brothers                           │ 19.99  │ 2  │ Stephen King    │
│ 12     │ The Road                          │ 14       │ Alfred A. Knopf                             │ 16.75  │ 2  │ Stephen King    │
│ 13     │ The Grapes of Wrath               │ 15       │ The Viking Press                            │ 21.5   │ 2  │ Stephen King    │
│ 14     │ Wuthering Heights                 │ 16       │ Emily Brontë                                │ 12.99  │ 2  │ Stephen King    │
│ 15     │ The Old Man and the Sea           │ 17       │ Charles Scribner's Sons                     │ 18.95  │ 2  │ Stephen King    │
│ 16     │ The Count of Monte Cristo         │ 18       │ Pétion                                      │ 27.99  │ 2  │ Stephen King    │
│ 17     │ The Picture of Dorian Gray        │ 19       │ Ward, Lock, and Company                     │ 14.5   │ 2  │ Stephen King    │
│ 18     │ The Adventures of Sherlock Holmes │ 20       │ George Newnes                               │ 16.99  │ 2  │ Stephen King    │
│ 19     │ Frankenstein                      │ 21       │ Lackington, Hughes, Harding, Mavor, & Jones │ 13.25  │ 2  │ Stephen King    │
│ 20     │ Alice's Adventures in Wonderland  │ 22       │ Macmillan                                   │ 11.5   │ 2  │ Stephen King    │
│ 21     │ The Prince                        │ 23       │ Niccolò Machiavelli                         │ 10.99  │ 2  │ Stephen King    │
│ 22     │ Don Quixote                       │ 24       │ Francisco de Robles                         │ 26.75  │ 2  │ Stephen King    │
│ 23     │ The Divine Comedy                 │ 25       │ Dante Alighieri                             │ 20.5   │ 2  │ Stephen King    │
│ 24     │ Anna Karenina                     │ 26       │ The Russian Messenger                       │ 23.99  │ 2  │ Stephen King    │
│ 25     │ Les Misérables                    │ 27       │ A. Lacroix, Verboeckhoven & Cie.            │ 29.75  │ 2  │ Stephen King    │
│ 26     │ The Jungle Book                   │ 28       │ Macmillan Publishers                        │ 14.99  │ 2  │ Stephen King    │
│ 27     │ The Wind in the Willows           │ 29       │ Methuen & Co.                               │ 17.5   │ 2  │ Stephen King    │
│ 28     │ War and Peace                     │ 26       │ The Russian Messenger                       │ 33.25  │ 2  │ Stephen King    │
│ 29     │ Crime and Punishment              │ 30       │ The Russian Messenger                       │ 19.99  │ 2  │ Stephen King    │
│ 1      │ The Great Gatsby                  │ 6        │ Charles Scribner's Sons                     │ 20.99  │ 3  │ George Orwell   │
│ 2      │ To Kill a Mockingbird             │ 7        │ J.B. Lippincott & Co.                       │ 15.95  │ 3  │ George Orwell   │
│ 3      │ The Catcher in the Rye            │ 8        │ Little, Brown and Company                   │ 18.75  │ 3  │ George Orwell   │
│ 4      │ One Hundred Years of Solitude     │ 9        │ Harper & Row                                │ 22.5   │ 3  │ George Orwell   │
│ 5      │ Brave New World                   │ 3        │ Chatto & Windus                             │ 17.99  │ 3  │ George Orwell   │
│ 6      │ The Hobbit                        │ 10       │ George Allen & Unwin                        │ 24.99  │ 3  │ George Orwell   │
│ 7      │ The Lord of the Rings             │ 10       │ George Allen & Unwin                        │ 35.5   │ 3  │ George Orwell   │
│ 8      │ The Chronicles of Narnia          │ 11       │ Geoffrey Bles                               │ 28.99  │ 3  │ George Orwell   │
│ 9      │ The Odyssey                       │ 12       │ Homer                                       │ 14.95  │ 3  │ George Orwell   │
│ 10     │ The Iliad                         │ 12       │ Homer                                       │ 14.95  │ 3  │ George Orwell   │
│ 11     │ Moby-Dick                         │ 13       │ Harper & Brothers                           │ 19.99  │ 3  │ George Orwell   │
│ 12     │ The Road                          │ 14       │ Alfred A. Knopf                             │ 16.75  │ 3  │ George Orwell   │
│ 13     │ The Grapes of Wrath               │ 15       │ The Viking Press                            │ 21.5   │ 3  │ George Orwell   │
│ 14     │ Wuthering Heights                 │ 16       │ Emily Brontë                                │ 12.99  │ 3  │ George Orwell   │
│ 15     │ The Old Man and the Sea           │ 17       │ Charles Scribner's Sons                     │ 18.95  │ 3  │ George Orwell   │
│ 16     │ The Count of Monte Cristo         │ 18       │ Pétion                                      │ 27.99  │ 3  │ George Orwell   │
│ 17     │ The Picture of Dorian Gray        │ 19       │ Ward, Lock, and Company                     │ 14.5   │ 3  │ George Orwell   │
│ 18     │ The Adventures of Sherlock Holmes │ 20       │ George Newnes                               │ 16.99  │ 3  │ George Orwell   │
│ 19     │ Frankenstein                      │ 21       │ Lackington, Hughes, Harding, Mavor, & Jones │ 13.25  │ 3  │ George Orwell   │
│ 20     │ Alice's Adventures in Wonderland  │ 22       │ Macmillan                                   │ 11.5   │ 3  │ George Orwell   │
│ 21     │ The Prince                        │ 23       │ Niccolò Machiavelli                         │ 10.99  │ 3  │ George Orwell   │
│ 22     │ Don Quixote                       │ 24       │ Francisco de Robles                         │ 26.75  │ 3  │ George Orwell   │
│ 23     │ The Divine Comedy                 │ 25       │ Dante Alighieri                             │ 20.5   │ 3  │ George Orwell   │
│ 24     │ Anna Karenina                     │ 26       │ The Russian Messenger                       │ 23.99  │ 3  │ George Orwell   │
│ 25     │ Les Misérables                    │ 27       │ A. Lacroix, Verboeckhoven & Cie.            │ 29.75  │ 3  │ George Orwell   │
│ 26     │ The Jungle Book                   │ 28       │ Macmillan Publishers                        │ 14.99  │ 3  │ George Orwell   │
│ 27     │ The Wind in the Willows           │ 29       │ Methuen & Co.                               │ 17.5   │ 3  │ George Orwell   │
│ 28     │ War and Peace                     │ 26       │ The Russian Messenger                       │ 33.25  │ 3  │ George Orwell   │
│ 29     │ Crime and Punishment              │ 30       │ The Russian Messenger                       │ 19.99  │ 3  │ George Orwell   │
│ 1      │ The Great Gatsby                  │ 6        │ Charles Scribner's Sons                     │ 20.99  │ 4  │ Jane Austen     │
│ 2      │ To Kill a Mockingbird             │ 7        │ J.B. Lippincott & Co.                       │ 15.95  │ 4  │ Jane Austen     │
│ 3      │ The Catcher in the Rye            │ 8        │ Little, Brown and Company                   │ 18.75  │ 4  │ Jane Austen     │
│ 4      │ One Hundred Years of Solitude     │ 9        │ Harper & Row                                │ 22.5   │ 4  │ Jane Austen     │
│ 5      │ Brave New World                   │ 3        │ Chatto & Windus                             │ 17.99  │ 4  │ Jane Austen     │
│ 6      │ The Hobbit                        │ 10       │ George Allen & Unwin                        │ 24.99  │ 4  │ Jane Austen     │
│ 7      │ The Lord of the Rings             │ 10       │ George Allen & Unwin                        │ 35.5   │ 4  │ Jane Austen     │
│ 8      │ The Chronicles of Narnia          │ 11       │ Geoffrey Bles                               │ 28.99  │ 4  │ Jane Austen     │
│ 9      │ The Odyssey                       │ 12       │ Homer                                       │ 14.95  │ 4  │ Jane Austen     │
│ 10     │ The Iliad                         │ 12       │ Homer                                       │ 14.95  │ 4  │ Jane Austen     │
│ 11     │ Moby-Dick                         │ 13       │ Harper & Brothers                           │ 19.99  │ 4  │ Jane Austen     │
│ 12     │ The Road                          │ 14       │ Alfred A. Knopf                             │ 16.75  │ 4  │ Jane Austen     │
│ 13     │ The Grapes of Wrath               │ 15       │ The Viking Press                            │ 21.5   │ 4  │ Jane Austen     │
│ 14     │ Wuthering Heights                 │ 16       │ Emily Brontë                                │ 12.99  │ 4  │ Jane Austen     │
│ 15     │ The Old Man and the Sea           │ 17       │ Charles Scribner's Sons                     │ 18.95  │ 4  │ Jane Austen     │
│ 16     │ The Count of Monte Cristo         │ 18       │ Pétion                                      │ 27.99  │ 4  │ Jane Austen     │
│ 17     │ The Picture of Dorian Gray        │ 19       │ Ward, Lock, and Company                     │ 14.5   │ 4  │ Jane Austen     │
│ 18     │ The Adventures of Sherlock Holmes │ 20       │ George Newnes                               │ 16.99  │ 4  │ Jane Austen     │
│ 19     │ Frankenstein                      │ 21       │ Lackington, Hughes, Harding, Mavor, & Jones │ 13.25  │ 4  │ Jane Austen     │
│ 20     │ Alice's Adventures in Wonderland  │ 22       │ Macmillan                                   │ 11.5   │ 4  │ Jane Austen     │
│ 21     │ The Prince                        │ 23       │ Niccolò Machiavelli                         │ 10.99  │ 4  │ Jane Austen     │
│ 22     │ Don Quixote                       │ 24       │ Francisco de Robles                         │ 26.75  │ 4  │ Jane Austen     │
│ 23     │ The Divine Comedy                 │ 25       │ Dante Alighieri                             │ 20.5   │ 4  │ Jane Austen     │
│ 24     │ Anna Karenina                     │ 26       │ The Russian Messenger                       │ 23.99  │ 4  │ Jane Austen     │
│ 25     │ Les Misérables                    │ 27       │ A. Lacroix, Verboeckhoven & Cie.            │ 29.75  │ 4  │ Jane Austen     │
│ 26     │ The Jungle Book                   │ 28       │ Macmillan Publishers                        │ 14.99  │ 4  │ Jane Austen     │
│ 27     │ The Wind in the Willows           │ 29       │ Methuen & Co.                               │ 17.5   │ 4  │ Jane Austen     │
│ 28     │ War and Peace                     │ 26       │ The Russian Messenger                       │ 33.25  │ 4  │ Jane Austen     │
│ 29     │ Crime and Punishment              │ 30       │ The Russian Messenger                       │ 19.99  │ 4  │ Jane Austen     │
│ 1      │ The Great Gatsby                  │ 6        │ Charles Scribner's Sons                     │ 20.99  │ 5  │ Agatha Christie │
│ 2      │ To Kill a Mockingbird             │ 7        │ J.B. Lippincott & Co.                       │ 15.95  │ 5  │ Agatha Christie │
│ 3      │ The Catcher in the Rye            │ 8        │ Little, Brown and Company                   │ 18.75  │ 5  │ Agatha Christie │
│ 4      │ One Hundred Years of Solitude     │ 9        │ Harper & Row                                │ 22.5   │ 5  │ Agatha Christie │
│ 5      │ Brave New World                   │ 3        │ Chatto & Windus                             │ 17.99  │ 5  │ Agatha Christie │
│ 6      │ The Hobbit                        │ 10       │ George Allen & Unwin                        │ 24.99  │ 5  │ Agatha Christie │
│ 7      │ The Lord of the Rings             │ 10       │ George Allen & Unwin                        │ 35.5   │ 5  │ Agatha Christie │
│ 8      │ The Chronicles of Narnia          │ 11       │ Geoffrey Bles                               │ 28.99  │ 5  │ Agatha Christie │
│ 9      │ The Odyssey                       │ 12       │ Homer                                       │ 14.95  │ 5  │ Agatha Christie │
│ 10     │ The Iliad                         │ 12       │ Homer                                       │ 14.95  │ 5  │ Agatha Christie │
│ 11     │ Moby-Dick                         │ 13       │ Harper & Brothers                           │ 19.99  │ 5  │ Agatha Christie │
│ 12     │ The Road                          │ 14       │ Alfred A. Knopf                             │ 16.75  │ 5  │ Agatha Christie │
│ 13     │ The Grapes of Wrath               │ 15       │ The Viking Press                            │ 21.5   │ 5  │ Agatha Christie │
│ 14     │ Wuthering Heights                 │ 16       │ Emily Brontë                                │ 12.99  │ 5  │ Agatha Christie │
│ 15     │ The Old Man and the Sea           │ 17       │ Charles Scribner's Sons                     │ 18.95  │ 5  │ Agatha Christie │
│ 16     │ The Count of Monte Cristo         │ 18       │ Pétion                                      │ 27.99  │ 5  │ Agatha Christie │
│ 17     │ The Picture of Dorian Gray        │ 19       │ Ward, Lock, and Company                     │ 14.5   │ 5  │ Agatha Christie │
│ 18     │ The Adventures of Sherlock Holmes │ 20       │ George Newnes                               │ 16.99  │ 5  │ Agatha Christie │
│ 19     │ Frankenstein                      │ 21       │ Lackington, Hughes, Harding, Mavor, & Jones │ 13.25  │ 5  │ Agatha Christie │
│ 20     │ Alice's Adventures in Wonderland  │ 22       │ Macmillan                                   │ 11.5   │ 5  │ Agatha Christie │
│ 21     │ The Prince                        │ 23       │ Niccolò Machiavelli                         │ 10.99  │ 5  │ Agatha Christie │
│ 22     │ Don Quixote                       │ 24       │ Francisco de Robles                         │ 26.75  │ 5  │ Agatha Christie │
│ 23     │ The Divine Comedy                 │ 25       │ Dante Alighieri                             │ 20.5   │ 5  │ Agatha Christie │
│ 24     │ Anna Karenina                     │ 26       │ The Russian Messenger                       │ 23.99  │ 5  │ Agatha Christie │
│ 25     │ Les Misérables                    │ 27       │ A. Lacroix, Verboeckhoven & Cie.            │ 29.75  │ 5  │ Agatha Christie │
│ 26     │ The Jungle Book                   │ 28       │ Macmillan Publishers                        │ 14.99  │ 5  │ Agatha Christie │
│ 27     │ The Wind in the Willows           │ 29       │ Methuen & Co.                               │ 17.5   │ 5  │ Agatha Christie │
│ 28     │ War and Peace                     │ 26       │ The Russian Messenger                       │ 33.25  │ 5  │ Agatha Christie │
│ 29     │ Crime and Punishment              │ 30       │ The Russian Messenger                       │ 19.99  │ 5  │ Agatha Christie │
└────────┴───────────────────────────────────┴──────────┴─────────────────────────────────────────────┴────────┴────┴─────────────────┘
**/


-- Libros con precios que tienen dos dígitos decimales exactos.

/**

**/


-- Libros cuyos títulos tienen al menos tres palabras.

/**

**/


-- Obtener todos los autores cuyo nombre empieza con la letra "A":

/**

**/


-- Seleccionar los libros cuyo título contiene la palabra "SQL":

/**

**/


-- Obtener todos los autores cuyo nombre termina con "ez":

/**

**/


-- Obtener todos los autores cuyo nombre tiene al menos 5 caracteres:

/**

**/


-- Seleccionar los libros cuya editorial es diferente de "EditorialX":

/**

**/


-- Obtener todos los autores cuyo nombre contiene al menos una vocal:

/**

**/


-- Seleccionar los libros cuyo título comienza con una letra mayúscula:

/**

**/


-- Obtener todos los autores cuyo nombre no contiene la letra "r":

/**

**/


-- Seleccionar los libros cuya editorial empieza con la letra "P":

/**

**/


-- Obtener todos los autores cuyo nombre tiene exactamente 6 caracteres:

/**

**/


-- Seleccionar los libros cuyo título contiene al menos un número:

/**

**/


-- Obtener todos los autores cuyo nombre inicia con una vocal:

/**

**/


-- Obtener todos los autores cuyo nombre no contiene espacios en blanco:

/**

**/


-- Seleccionar los libros cuyo título termina con una vocal:

/**

**/


-- Obtener todos los autores cuyo nombre contiene la secuencia "er":

/**

**/


-- Seleccionar los libros cuyo título empieza con la palabra "The":

/**

**/


-- Obtener todos los autores cuyo nombre tiene al menos una letra mayúscula:

/**

**/


-- Seleccionar los libros cuyo precio es un número decimal con exactamente dos decimales:

/**

**/


-- Obtener todos los autores cuyo nombre no contiene números:

/**

**/


-- Seleccionar los libros cuyo título contiene al menos tres vocales:

/**

**/


-- Obtener todos los autores cuyo nombre inicia con una consonante:

/**

**/


-- Seleccionar los libros cuyo título no contiene la palabra "Science":

/**

**/


-- Obtener todos los autores cuyo nombre tiene al menos una letra repetida consecutivamente:

/**

**/


-- Obtener todos los autores cuyo nombre empieza con "M" o termina con "n":

/**

**/


-- Obtener todos los autores cuyo nombre no contiene caracteres especiales:

/**

**/