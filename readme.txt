Upravený plugin pro odběr příspěvků z Twitteru
===============================================

Plugin "Twitter for Wordpress" má problém, že korektně nekešuje, takže při každém zobrazení titulky
Mozilla.cz se znovu načítá RSS kanál Twitteru. Vyřešil jsem to tak, že jsem do db přidal tabulku
wp_twitter, kam se příspěvky kešují a navíc se do tabulky wp_options ukládá klíč "twitter_last_check",
kam se ukládá poslední timestamp, kdy došlo k načtení RSS zdroje. Ten se obnovuje nejdříve jednou za
hodinu a to přímo při requestu uživatele na titulku Mozilla.cz. V tom okamžiku se RSS zdroj načte
a uloží se do db, odkud je další hodinu načítán.

Jak nainstalovat upravený plugin
---------------------------------
1) V db spustit přiložený create.sql.
2) Nahradit v pluginu soubor twitter.php přiloženou variantou.

Délka kešování lze nastavit v proměnné TWITTER_CACHE.

Modifikovaný kód se nachází ve funkci twitter_messages(), řádek 50.

Upravil: Pavel Cvrček <pcvrcek@mozilla.cz>.