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
 
    for j := 1 to x do

	    begin

  	    for i := 1 to x do
  		  begin
  		  
              if (i = j) then
                begin
                  odleglosc[i, j] := 0;
                  odleglosc[j, i] := 0;              	
                end

              else
                  if (odleglosc[i, j] > 0) then odleglosc[i, j] := odleglosc[j, i] //gwarancja, że nie zapyta o ten sam dystans tylko w drugą stronę
                  // if (odleglosc[j, i] > 0) then odleglosc[j, i] := odleglosc[i, j];
                  else
            			 	begin
            				 	writeln(miasto[i], ' - ', miasto[j]);
            				  readln(odl);
            		      odleglosc[i, j] := odl;
            		      odleglosc[j, i] := odl;
            		    end;
  		  end;
	    end;
       

//test
     Writeln('test miasta: ', miasto[1], ' - ', miasto[2], ' - ', miasto[3]);
     writeln('test 1-2: ', odleglosc[1, 2]);
     writeln('test 2-1: ', odleglosc[2, 1]);
     writeln('test 1-1: ', odleglosc[1, 1]);


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
	//    zapisz do kolejności odwiedzania, trasy (dodaj do tablicy = droga?)
	//    dodaj liczbę przebytych kilometrów


//po obliczeniach
   // wróć do miasta początkowego i dodaj go do statystyk


//WYNIKI
  // writeln('Optymalna trasa to: '); //Pokaż trasę

//ewentualnie także: Pokaż liczbę kilometrów


end.


// pytania:
// - co gdy pozostają dwie odległości i są takie same?
