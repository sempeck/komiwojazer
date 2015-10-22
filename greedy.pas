program greedy;

var
  
  x, i, j, odl : Integer;
     odleglosc : array[1..10, 1..10] of Integer;
        miasto : array[1..10] of String;

//metoda 1
   miasto_spr1 : array[1..10] of String;
        droga1 : array[1..10] of String;
         start : Integer;
            st : Integer;
           min : Integer;


begin
  
//dane do testów
  x := 5;
  miasto[1] := '1 Nysa';
  miasto[2] := '2 Wrocław';
  miasto[3] := '3 Kraków';
  miasto[4] := '4 Poznań';
  miasto[5] := '5 Warszawa';

for j := 1 to 5 do
  for i := 1 to 5 do
  begin
    if (i = j) then
     odleglosc[i,j] := 0
    else
     odleglosc[i,j] := random(100);
   end; 

for j := 1 to 5 do
  for i := 1 to 5 do
if (odleglosc[i, j] > 0) then odleglosc[i, j] := odleglosc[j, i];

for j := 1 to 5 do
  for i := 1 to 5 do writeln('*test ', j, ' - ', i, ': ', odleglosc[j, i]);
     
writeln(miasto[1], ' - ', miasto[2], ' - ', miasto[3], ' - ', miasto[4], ' - ', miasto[5]);   



 miasto_spr1 := miasto; //kopia listy miast do sprawdzania i zaznaczania na niej odwiedzonych miast
     st := start; //kopia miasta początkowego, w metodzie będzie zmieniany
//************************


           min := odleglosc[st,1]; //defaultowo na st:1
        
           for i := 1 to x do
             
             if (miasto_spr1[i] = 'odwiedzone') then // sprawdzanie czy tu byłem
                 // jeśli tak, to pomiń to miasto


             if (odleglosc[st, i] = 0) then //wykluczenie sprawdzania do samej siebie
                 // jeśli tak, to pomiń to miasto

  
             for i:= 1 to x do
               if (odleglosc[st, i] < min) then min := i; //znajdź najmniejszą
                          
        
             st := min;    // nowy zwycięzca, do którego trzeba przejść w następnym loopie

     //tablice
             miasto_spr1[i] := 'odwiedzone'; //zaznacza, że tu już był
             droga1[i] := miasto[st]; // kolejne numery......


end.