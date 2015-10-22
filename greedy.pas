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
  start := 5;
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



// ****************************************************************************************************
// ****************************************************************************************************
// ****************************************************************************************************

 miasto_spr1 := miasto; //kopia listy miast do sprawdzania i zaznaczania na niej odwiedzonych miast
          st := start; //kopia miasta początkowego, w metodzie będzie zmieniany
//************************

// loop 

  // weź (st) miasto np. 4
  // sprawdź z każdym z tabeli
  //     jeśli to już odwiedzone (miasto_spr1[] = 'odwiedzone', pomiń
  //     jeśli takie samo (odległość = 0), pomiń
  
  // znajdź najmniejszy wynik
  // wyznacz nowego zwycięzcę (->st)
  // dopisz, że odwiedzone
  // dodaj do droga1 nazwę miasta

// powtarzaj x razy (albo aż wszystkie będą odwiedzone)

//end

  for i := 1 to x do //główny loop dla wszystkich miast
    begin
      
      //ustawianie default dla "min", musi być różne od zera
       if (odleglosc[st,1] = 0) then
          min := odleglosc[st,2]
       else
          min := odleglosc[st,1]; 
                 
    
       for j := 1 to x do //loop sprawdzający kolejne odległości
          begin 
             

           if (odleglosc[st, j] < min) and (odleglosc[st, j] > 0) then min := j; //znajdź najmniejszą
          
          end; 

     
        // if (miasto_spr1[j] = 'odwiedzone') then


    end;//koniec głównego loopa
        
             
writeln('*test min, najmniejsze dla ', st, ': ', min);          

              // sprawdzanie czy tu byłem i wykluczenie sprawdzania do samej siebie
                 // jeśli tak, to pomiń to miasto

  
             
                          
        
//              st := min;    // nowy zwycięzca, do którego trzeba przejść w następnym loopie

//      //tablice
//              miasto_spr1[i] := 'odwiedzone'; //zaznacza, że tu już był
//              droga1[i] := miasto[st]; // kolejne miasta dodawane do wyniku



// //WYNIKI
//   writeln('Optymalna trasa wedlug metody GREEDY to: '); //Pokaż trasę
//     for i := 1 to (x+1) do
//       writeln(droga1[i]);

end.