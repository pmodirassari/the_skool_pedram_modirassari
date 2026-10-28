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





