program komiwojazer;

var
	x, i : Integer;

	odleglosc : array[1..10, 1..10] of Integer;
    
    miasto : array[1..10] of String;

	// AB, AC, AD, AE : Integer;
	// BA, BC, BD, BE : Integer;
	// CA, CB, CD, CE : Integer;
    // DA, DB, DC, DE : Integer;
    // EA, EB, EC, ED : Integer;


procedure droga();
  begin
// 	for i := 1 to x do:
// 		wyklucz miejsca gdzie byłeś
// 		sprawdź najmniejsze odległości do innych 
// 		wybierz najmniejszą i do niej przejdź. 
// 		zaznacz, że tu byłeś (visited := true)
//      zapisz do kolejności odwiedzania, trasy (dodaj do tablicy = droga?)
//      dodaj liczbę przebytych kilometrów

  end;


begin
	
//zerowanie tablic
    for i := 1 to 10 do
      begin
        odleglosc[i, i] := 0;
        miasto[i] := '';
    end;


//początek
	writeln('Ten program rozwiaze problem komiwojazera.');
    writeln('Przez ile miast musisz przejechac? Maksymalnie 10:');
    readln(x);   


//wczytywanie kolejnych miast
    for i := 1 to x do
      begin
	      writeln('Podaj miasto numer ', i);
	      readln(miasto[i]); // zapisuje na tablicy każde miasto....
          
      end;


    // ***** test czy miasta się wrzucają do tablicy ****
    // write('Podales: '); 
    // for i := 1 to x do write(miasto[i], ', ');
    // **************************************************


//wczytywanie odległości
    writeln(); //podawanie odległości
    readln();

      // podaj odległość AB AC AD AE ...
      //                 BC BD BE    ...
      //                 CD CE       ...
      //                 DE          ...

//od którego zacząć
    writeln('Od ktorego miasta chcesz zaczac?');
    writeln(); //rozpisanie case-ów A: .....

//wywołanie procedury x razy
droga;


//po procedurze
   // wróć do miasta początkowego


//WYNIKI
  writeln('Optymalna trasa to: '); //Pokaż trasę

//ewentualnie także: Pokaż liczbę kilometrów


end.


// pytania:
// - co gdy pozostają dwie odległości i są takie same?
