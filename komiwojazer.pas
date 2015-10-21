program komiwojazer;

var
	x, i, j, odl : Integer;
	odleglosc : array[1..10, 1..10] of Integer;
    miasto : array[1..10] of String;

begin
	
//zerowanie tablic i integerów
    x := 0;
    i := 0;

    for i := 1 to 10 do
      begin
        odleglosc[i, i] := 0;
        miasto[i] := '';
      end;


//początek
	writeln('Ten program znajdzie optymalna trase.');
    writeln('Przez ile miast musisz przejechac? Maksymalnie 10:');
    readln(x);   


//wczytywanie kolejnych miast do tablicy
    for i := 1 to x do
      begin
	      writeln('Podaj miasto numer ', i);
	      readln(miasto[i]); // zapisuje na tablicy kolejne miasta
      end;


  
//wczytywanie odległości
    writeln('Podaj odleglosc:');
 
    for j :=1 to x do
	    begin
	    for i := 1 to x do
		  begin
		 	writeln(miasto[i], ' - ', miasto[j]);
		    readln(odl);
            odleglosc[i, j] := odl;
		  end;
	    end;
    

            


//test
     writeln('test ', odleglosc[1, 2]);

      // Zderz każde miasto z każdym i wynik wpisz do tabeli. 
      // Gdy pytasz o miasto "a" i "b", sprawdź czy pytałeś już o "b" i "a", jeśli tak, to pomiń i przepisz wynik z poprzedniego pytania. 
      // Nie pytaj o "a" i "a", tylko wpisz 0.


//od którego zacząć
    writeln('Od ktorego miasta chcesz zaczac? Podaj numer:');
    for i := 1 to x do writeln(i, ') ', miasto[i]);
    readln;


//LICZENIE METODĄ GREEDY, czyli najbliższe miasto
	// 	for i := 1 to x do:
	//      
	// 		wyklucz miejsca gdzie byłeś
	// 		sprawdź najmniejsze odległości do innych 
	// 		wybierz najmniejszą i do niej przejdź. 
	// 		zaznacz, że tu byłeś (visited := true) || wywal z tablicy?
	//      zapisz do kolejności odwiedzania, trasy (dodaj do tablicy = droga?)
	//      dodaj liczbę przebytych kilometrów



//po obliczeniach
   // wróć do miasta początkowego i dodaj go do statystyk


//WYNIKI
  writeln('Optymalna trasa to: '); //Pokaż trasę

//ewentualnie także: Pokaż liczbę kilometrów


end.


// pytania:
// - co gdy pozostają dwie odległości i są takie same?
