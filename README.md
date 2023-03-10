# Veterinary-Cabinet-Database-Application
Proiectul presupune construirea unei baze de date in SQL pentru a tine evidenta unui cabinet veterinar, avand o interfata individuala sub forma unui site.

Baza de date a fost proiectata folosind phpMyAdmin si hostata de pe site-ul Hostinger ce utilizeaza MariaDB. Site-ul a fost realizat prin intermediul aplicatiei Bootstrap Studio, utilizand ca limbaje de programare, HTML, CSS, JS si PHP. Am folosit XAMPP pentru a hosta site-ul local.

Site-ul este accesat prin intermediul tabelei Login, asadar e necesar o logare cu username si parola. Contul propriu-zis este gestionat de doctor, asadar fiecare doctor are cate un user. Acesta isi va face cont de doctor si se logheaza pe pagina principala, ‘succes.HTML’. Mai departe, acesta are acces la un meniu format din butoanele “Pacienti”, “Doctori”, “Asistenti” si “Medicamente”.

Accesand pagina “Pacienti”, poate vedea lista cu toti pacientii inregistrati si toate atributele. In continuare, pagina are 2 butoane, “Proprietari” si “Cauta”. Acestea duc la informatii despre animale, respectiv despre proprietari. Aici sunt executate unele dintre interogarile implementate in SQL asupra bazei de date, atat simple cat si complexe.

Pagina “Doctori” contine informatii despre tabela Doctor, unde sunt afisate niste tabele populate cu datele returnate in urma executarii interogarilor. Paginile “Asistenti” si “Medicamente” sunt gandite dupa acelasi principiu. 

Fiecare pagina are implementat un buton de “Home”, ce permite utilizatorului sa se intoarca pe pagina principala, acolo unde se afla si butonul de Disconnect ce il redirectioneaza pe utilizator pe pagina de logare in cont.

Pagina de Login te poate redirectiona cu butonul de “Register” sa iti creezi un nou cont de utilizator, urmand ca apoi intrand in platforma sa fii nevoit sa te loghezi ca un doctor.
