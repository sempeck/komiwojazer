program komiwojazer;

var
	x : Integer;


procedure droga();
  begin
// 	x razy powtórz procedurę:
// 		wyklucz miejsca gdzie byłeś
// 		sprawdź najmniejsze odległości do innych 
// 		wybierz najmniejszą i do niej przejdź. 
// 		zaznacz, że tu byłeś (visited := true)
// ***     zapisz do kolejności odwiedzania, trasy (dodaj do tablicy = droga?)
//         dodaj liczbę przebytych kilometrów

  end;


begin
	writeln('Ten program rozwiaze problem komiwojazera.');
    writeln('Ile miast musisz odwiedzić?');
    readln(x);

//wczytywanie kolejnych miast
    for x := 1 to x do
      begin
	      writeln('Podaj miasto numer '); //numer miasta z pętli
	      readln(); //zapisz zmienną każdego miasta....
      end;

//wczytywanie odległości
    writeln(); //podawanie odległości
    readln();

      // podaj odległość AB AC AD ...
      //           BC BD    ...
      //           CD       ...
      //           ...

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
