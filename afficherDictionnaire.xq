xquery version "3.1";

declare option output:method "html";

let $entries := doc("bdd.xml")//entry
return
<html>
    <head>
        <title>Dictionnaire en ligne</title>
        <link rel="stylesheet" type="text/css" href="/css/styles.css"/>
    </head>
    <body>
        <h1>Dictionnaire en ligne</h1>
        <table>
            <tr>
                <th>Lemme (Phonétique)</th>
                <th>Lemme (Orthographe)</th>
                <th>Définition</th>
            </tr>
            {
                for $entry in $entries
                return
                <tr>
                    <td>{data($entry/lemma[@n="phon"])}</td>
                    <td>{data($entry/lemma[@n="orth"])}</td>
                    <td>{data($entry/def)}</td>
                </tr>
            }
        </table>
    </body>
</html>