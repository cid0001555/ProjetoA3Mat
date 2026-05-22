pokemon(scorbunny).
pokemon(torchic).
pokemon(cramorant).
pokemon(staraptor).
pokemon(kakuna).
pokemon(feraligatr).
pokemon(arrokuda).
pokemon(wurmple).

habitat(savana):- pais(brasil).
habitat(savana):- pais(australia).
habitat(savana):- pais(camboja).
habitat(savana):- pais(liberia).
habitat(savana):- pais(etiopia).
%-----------------
habitat(floresta_tropical):- pais(brasil).
habitat(floresta_tropical):- pais(indonesia).
habitat(floresta_tropical):- pais(rdc).
%-----------------
habitat(litoral):- pais(brasil).
habitat(litoral):- pais(canada).
habitat(litoral):- pais(japao).
habitat(litoral):- pais(russia).
habitat(litoral):- pais(china).
%-----------------
habitat(pantano):- pais(brasil).
%-----------------
habitat(mata_densa):- pais(china).
habitat(mata_densa):- pais(indonesia).
habitat(mata_densa):- pais(peru).
habitat(mata_densa):- pais(cuba).
%-----------------
habitat(tundra):- pais(russia).
habitat(tundra):- pais(canada).
habitat(tundra):- pais(islandia).
habitat(tundra):- pais(groenlandia).
%-----------------
habitat(rio).
%-----------------
habitat(oceano).

comida(cenoura).
comida(milho).

digerindo().


habitatNatural(scorbunny, savana).
habitatNatural(torchic, floresta_tropical).
habitatNatural(cramorant,litoral).
habitatNatural(kakuna,mata_densa).
habitatNatural(feraligatr,pantano).
habitatNatural(arrokuda,rio).
habitatNatural(wurmple,mata_densa).

habitatAtual(scorbunny, savana).
habitatAtual(torchic, tundra).
habitatAtual(cramorant,savana).
habitatAtual(kakuna,mata_densa).
habitatAtual(feraligatr,mata_densa).
habitatAtual(arrokuda,rio).
habitatAtual(wurmple,rio).





feliz(Pokemon) :-
    habitatNatural(Pokemon, Habitat),
    habitatAtual(Pokemon, Habitat).

status(Pokemon, saudavel) :-
    feliz(Pokemon).

status(Pokemon, estresse) :-
    \+ feliz(Pokemon).

recomendacao(Pokemon, manterhabitat) :-
    feliz(Pokemon).

recomendacao(Pokemon, transferir(HabitatAtual)) :-
  feliz(Pokemon).

recomendacao(Pokemon, transferir(HabitatIdeal)) :-
    \+ feliz(Pokemon),
    habitatNatural(Pokemon, HabitatIdeal).


