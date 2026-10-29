# the_skool_pedram_modirassari
Lab - SQL 1 DBAD26

*** Uppgift 0. a-f ***
Efter att ha skapat git-repo, klonat den och testast att pusha till den så laddade jag ned excelfilen, slängde alla flikar förutom tabell 3 och sparade den och överförde den till min VM. Detta fungerade inte först då jag inte har excel och jag hade råkat spara den i fel format (xlsx-filändelse, men egentligen en odf-fil), så jag fick göra om allt och nu när det va ren "äkta" xls-fil" så fungerade det att importera den och ladda den i oracle så att jag fick system.tabell3 på mitt VM.

*** Uppgift 1. a ***
Nu gav jag mig på uppgift 1a.  "Antal ansökningar per utbildningsområde, sorterat på flest ansökningar"
  Jag började med att testa DISTINCT-kommandot för att gruppera utbildningsområde, men kom snart fram till att jag borde använda mig av GROUP BY , jag fick även testa mig fram om huruvida man behövde ha "utbildningsområde" och "antal ansökningar" under två olika SELECT-rubriker eller om de kunde fungera under samma rubrik. Efter lite trial and error och bollande med LLM så kom jag slutligen fram till den version jag laddat upp i repot.
<img width="1433" height="774" alt="Screenshot 2026-10-28 135225" src="https://github.com/user-attachments/assets/096461b9-bd45-48fd-ba31-f981ab18386a" />


*** Uppgift 1. b *** 
Kopierade uppgift 1a och modifierade den, nu när jag kommit igång gick allt mycket smidigare. Trodde först att jag kunde ha COUNT som en separat command-line, men förstod sedan att det behövde vara under SELECT. Efter lite tweakande så verkar det fungera.
<img width="1430" height="762" alt="Screenshot 2026-10-28 145505" src="https://github.com/user-attachments/assets/c1437761-c07d-4e86-aa25-13c947d376fc" />


*** Uppgift 1. c ***
Här var det völ bara att byta ut 'Beviljad' mot "Avslag' och några rubriker till, annars samma uppgift som ovan.
<img width="1430" height="759" alt="Screenshot 2026-10-28 150934" src="https://github.com/user-attachments/assets/faa46fbb-ff27-4b42-8e97-9fe4d42c5601" />


*** Uppgift 1. d & e ***
Återigen bara små ändringar som behövdes. Behövde bl.a. en AND för vad som skulle uppfyllas under WHERE och det kändes inte längre relevant att sortera på antalet beviljade då alla förutom en utbildning var 1. Det var några till som i princip hade samma namn men de hamnade på olika poster eftersom namnen hade små skillnader (alltifrån versaler/gemener till formulering). I årincip samma sak när det gällde uppgift e. Många fler avslagna, men namnen skiljer sig oftast aningen så de hamnar på olika poster.
<img width="1428" height="753" alt="Screenshot 2026-10-28 152453" src="https://github.com/user-attachments/assets/a2f600e2-1b79-46b7-90c0-ad3ee2b5e2bd" />

<img width="1425" height="759" alt="Screenshot 2026-10-28 153452" src="https://github.com/user-attachments/assets/565f723e-e11f-487c-9626-f3a42581a2e5" />


*** Uppgift 1. f ***
Inte mycket att tillägga.
<img width="1657" height="757" alt="Screenshot 2026-10-28 163635" src="https://github.com/user-attachments/assets/23b50ccb-d5bb-4de7-9ae2-c7831bcf014c" />


*** Uppgift 1. g ***
Inget nytt här heller egentligen förutom "FETCH FIRST 5 ROWS ONLY". Jo, man hade kunnat ta bort "Flera kommuner", men det bör vara intressant information för en eventuell stakeholder, att flera kommuner som gått ihop ändå har fått många utbildningsansökningar beviljade. Så det fick vara kvar.
<img width="1651" height="758" alt="Screenshot 2026-10-28 165258" src="https://github.com/user-attachments/assets/6232e8ee-35e7-4e01-bcf9-276781c3c904" />


*** Uppgift 1. h ***
Nu blev det lite annat. Jag ville först räkna ut totalen AS total och sedan använda denna att dela summan av Distans respektive Bunden, men jag lyckades inte använda det i samma sats. Jag försökte därefter att ha två delar i skriften (En övre SELECT där jag räknade ut och en nedre SELECT där jag refererade till det ovan uträknade), men då visade det sig att inte heller det gick. Lösningen att räkna med hjälp av "THEN 1 ELSE 0 END"  fick jag av AI. Det är logiskt, men inget jag skulle ha kommit på själv och jag minns inte att det är nåot vi tagit upp i kursen. Jag antar att som med så mycket annat finns det myriader lösningar.
<img width="1775" height="784" alt="Screenshot 2026-10-29 104136" src="https://github.com/user-attachments/assets/ff3a0a3c-bb56-43c2-8a79-ff7e4e93129e" />


***

