# Lista de recomendaciones, recordatorios y otras directrices
- teléfonos y demás en *agenda.html*, oculto
- https://docs.couchdb.org/en/stable/ (Apache CouchDB® 3.4.3 Documentation)
- https://www.rhs.org.uk/vegetables/growing-in-greenhouse
- https://www.faunaiberica.org/
- https://www.mckinsey.com/industries/life-sciences/our-insights/the-bio-revolution-innovations-transforming-economies-societies-and-our-lives
- https://www.mckinsey.com/industries/life-sciences/our-insights/exploring-the-disruptive-potential-of-synthetic-biology

- https://en.wikipedia.org/wiki/Valkey
- https://valkey.io/
- https://github.com/valkey-io/valkey

- https://www.ecologistasenaccion.org/revista/
- https://www.ecologistasenaccion.org/315826/editorial-turistificacion-un-modelo-contra-el-medioambiente-y-las-personas/

- https://psiquiatria.com/glosario/

- https://universaldependencies.org/u/feat/Case.html

- MagicWorld.xml | Nature | Farming

- https://www.pdfdrive.com/

- https://www.tsemrinpoche.com/free-downloads-texts

- https://libretexts.org/

- `file:///home/francisco/audiobooks/ePUB_mobi_PDF/Documentation/Boost_1.80_documentation_356MB/doc/libs/1_80_0/index.html` while `file:///usr/share/doc/libboost1.83-doc/doc/html/index.html` seems incomplete

# Lista de tareas por hacer (seguida de secciones sobre procedimientos informáticos de gestión de este sitio)

[ ] escribir *informatica.directrices.html*
<dl>
  <strong>salvar</strong>
  <strong>gratuidad</strong>
  <strong>continuidad</strong>
  <strong>formatos de archivo compatibles o convertibles</strong>
</dl>
<p>Los objetivos segundo y tercero (gratuidad y continuidad) se alcanzan mejor mediante Software Libre y Abierto.</p>

[ ] enlazar a *ruderales.html*



[ ] mover los enlaces a cultivos
    (tales como  <p><a            href="okra.es.html">La okra (verdura)</a></p> en *agricultura.html*)
    a un futuro *cultivos.html*

[ ] write   *succulents.html*, on Succulent plants
[ ] link to *succulents.html*, from        *plants.html*

[x] write   *Portulaca-oleracea.en.html* on Portulaca oleracea (Purslane)
[x] link to *Portulaca-oleracea.en.html* from *plants.html*
[ ] link to *Portulaca-oleracea.en.html* from *photosynthesis.html*
[ ] link to *Portulaca-oleracea.en.html* from *succulents.html*

[ ] MongoDB Shell (Command Line)
<p>To install the latest stable version of mongosh with the included OpenSSL libraries:</p>
<pre>sudo apt-get install -y mongodb-mongosh</pre>
<section>
<h3>Connect to Atlas via <code>mongosh</code></h3>
<p>My password is a55MIz2hOWLBvuE9</p>

<p>If you want to check your database size you can use <code>db.stats()</code> command the command returns storage statistics for a given database.</p>
<p>

[ ]
<section id="insert">
  <h2>Insert Document(s)</h2>
  <aside><b>Important</b> Inserting documents is not permitted in MongoDB Compass Readonly Edition.</aside>
  <p>Compass provides two ways to insert documents into your collections: JSON Mode and a Field-by-Field Editor.</p>
  <dl>
    <dt>JSON Mode</dt>
    <dd>Allows you to write or paste JSON documents in the editor. Use this mode to insert multiple documents at once as an array.</dd>
    <dt>Field-by-Field Editor</dt>
    <dd>Provides a more interactive experience to create documents, allowing you to select individual field values and types. This mode only supports inserting one document at a time.</dd>
  </dl>
  <h4 class="bridgehead">Procedure</h4>
  <p>To insert documents into your collection:</p>
  <ol>
    <li>
      <p>Click the Add Data dropdown and select Insert Document</p>
    </li>
    <li>
      <p>Select the appropriate view based on how you would like to insert documents.</p>
      <ul>
        <li>Click the <code>{ }</code> brackets for JSON view. This is the default view.</li>
        <li>Click the list icon for Field-by-Field mode.</li>
      </ul>
    </li>
    <li>
      <p>In JSON format, type or paste the document(s) you want to insert into the collection. To insert multiple documents, enter a comma-separated array of JSON documents.</p>
      <p>If you do not provide an ObjectId in your document, Compass automatically generates an ObjectId.</p>
    </li>
    <li>Click <code>Insert</code></li>
  </ol>
</section>

<section id="query">
  <h2>Query Your Data</h2>
  <p>You can type MongoDB filter documents into the query bar to display only documents which match the specified criteria. To learn more about querying documents, see <cite><a target="_blank" href="https://www.mongodb.com/docs/manual/tutorial/query-documents/">Query Documents</a></cite> in the MongoDB manual.</p>
  <ol>
    <li>
      <p>In the <strong>Filter</strong> field, enter a filter document between the curly braces. You can use all the MongoDB query operators except the <code>$text</code> and <code>$expr</code> operators.</p>
      <p>The following filter returns documents that have a <var>title</var> value of <q>Jurassic Park</q>:</p>
      <pre>{ "title": "Jurassic Park" }</pre>
    </li>
    <li>
      <p>Click <strong>Find</strong> to run the query and view the updated results.</p>
    </li>
  </ol>
  <section>
    <h3>Match with Comparison Operators</h3>
    <p>The following query filter uses the <code>$lte</code> operator to find all documents where version is less than or equal to 4:</p>
    <pre>{ version: { $lte: 4 } }</pre>
  </section>

</section>

[ ] write *mooc.html*
on Massive Open Online Courses (MOOCs)
visit: https://www.mooc.org/
<h1>Massive Open Online Courses (MOOCs)</h1>
<p>Massive Open Online Courses (MOOCs) are free online courses available for anyone to enroll. MOOCs provide an affordable and flexible way to learn new skills, advance your career and deliver quality educational experiences at scale.</p>
<p>Millions of people around the world use MOOCs to learn for a variety of reasons, including: career development, changing careers, college preparations, supplemental learning, lifelong learning, corporate eLearning &amp; training, and more.</p>



[ ] Madrid: moneda social
<p>Desde hace más de tres años en Madrid se puede pagar en boniatos, una nueva moneda social que persigue el consumo responsable. 1 boniato=1 euro. Solo se puede usar en las empresas que integran el mercado social y existen varios métodos de pago, con tarjeta, a través de la web o mediante una aplicación móvil.</p>

[ ] Madrid:
[ ] Madrid:

[ ] write *mongodb.compass.html*
<p>[Seems to be] a graphic interface to MongoDB.</p>
https://www.mongodb.com/docs/compass/current/
https://www.mongodb.com/docs/compass/current/query/filter/

[ ] escribir *mongodb.es.html*
<p>He creado una cuenta gratuita de Atlas:</p>
<ul>
  <li><strong>dirección web</strong>: <a target="_blank" href="https://cloud.mongodb.com/user/detectSession"><code>https://cloud.mongodb.com/user/detectSession</code></a></li>
  <li><strong>usuario</strong>: <code>franciscofvh</code></li>
  <li><strong>contraseña</strong>: <code>shambhalatlas</code></li>
</ul>
<p>Tan sencillo como:</p>
<ol>
  <li>ir a la página indicada (<a target="_blank" href="https://cloud.mongodb.com/user/detectSession"><code>https://cloud.mongodb.com/user/detectSession</code></a>)</li>
  <li>añadir tu IP / <i lang="en">add your IP address</i> </li>
  <li>teclear usuario y contraseña</li>
</ol>
<hr/>
<p>He creado una base de datos, <cite>ffvh</cite>, y dentro de ella varias colecciones (<i lang="en">collections</i>), por ahora:</p>
<ul>
  <li><cite>farming</cite>: sobre Agricultura, en inglés</li>
  <li><cite>antropologia</cite>: sobre Antropología, en castellano</li>
</ul>


[ ] escribir *perro-recluido.html*
<h1>Perro recluído/encerrado</h1>
<p>A veces la familia iba a un chalet de las afueras. Si hacía bueno por la mañana, el perrito no podía salir temprano porque <q>tiene que descansar</q>. Y si a lo largo de un día frío había mejorado hacia pasadas las dos, pues ya había llegado la hora de acostarse la siesta. Si le dábamos un paseo largo, al regresar directo al cuarto oscuro, para compensar.</p>
<p>Nadie de su familia reconocía el egoísmo y maldad con que lo trataba.</p>
<p>La una le daba la razón, <q>¡quién mejor que ella iba a saber cómo cuidarlo!</q>, mientras que el progre argumentaba que las personas
son más importantes que los animales.</p>
<p>Nadie veía nada o bien no reconocía ver nada.</p>
<p>Esto me ha llevado a preguntarme si los que ordenan la vida pública en un país del Sur no actuarán igual, con análoga crueldad y afán represivo.</p>


[ ] escribir *autoridad.html* o *prestigio.html*
<p>Solemos hacer caso y creer al que habla de algo en que posee autoridad o prestio.</p>

[ ] <cite>Causalidad y Correlación</cite>

[ ] escribir *complejidad.html*
<blockquote>
  <p>Make it simple, but not too simple.</p>
  <p style="text-align: right">(Albert Einstein)</p>
</blockquote>
- comparar el Derecho y la Ingeniería de Software
- pasado un umbral se convierte en complejidad de <a target="_blank" href="informacion.html">información</a>

[ ] write *symmetry.html*

[ ]
On the relationship between symbols and integers
Sobre la relación que guardan símbolos y enteros, enteros no usados para contar ni cuantificar sino para... <q>simbolizar</q>

[ ] write *mature-tech.html*

[x] write *dry-composting-toilet.html* (Dry Composting Toilets)</a>

[ ] review/trim links in nav element in *panpsychism.html* (Panpsychism)

[ ] write *Teilhard-de-Chardin.html* (Teilhard de Chardin), as it is linked to from *panpsychism.html*

[ ]
<p>Somos al fin y a la postre <a target="_blank" href="agentes.html">agentes</a> que discurren por <a target="_blank" href="caminos.html">caminos</a>, principales, secundarios, terciarios, hasta penetrar todo un vasto territorio de naturaleza humanizada.</p>
<p>A lo largo de los cuales encontramos hogares y <a target="_blank" href="taller.html">talleres</a>.</p>

[ ] write *gprolog.sockets.html*

[ ] escribir *Seis aes* (Apreciar - Aceptar - Apoyar - Ayudar - Auxiliar) en *amor.html*

[ ] write     *panpsychism.html*, as it is pointed to in *morphic-resonance.html*
[ ] write *implicate-order.html*, as it is pointed to in *morphic-resonance.html*

[ ] escribir *juego-y-deber.html*
<p>Dos aspectos que alternan en toda tarea, y que deben coordinarse a lo largo de una vida, un período, una jornada, un rato de trabajo.</p>

[ ] escribir *espiritismo.html*

[ ] escribir
<h2>La gran cuestión del trabajo</h2>
<p>La gran cuestión del trabajo consiste en utilizar las capacidades humanas al máximo.</p>
<p>Ello se relaciona íntimamente con la <strong>dignidad</strong>.</p>
<p>Realizar nuestra naturaleza.</p>

[x] *sirvientes.html* sobre Sirvientes (domésticos)

[ ] write and link to *georgism.html*

[ ] write *blockchain.en.html*
[ ] link to *blockchain.en.html* from *cryptography.html*
[ ] link to *blockchain.en.html* from *computing.html*
[ ] link to *blockchain.en.html* from  elsewhere

[ ] in an XML-to-JSON transformation, we need to count how many elements of a given kind there are, such as paragraphs, sections, in order to transform all the elements of one kind into an array.

[ ] escribir *agenda2030.es.html*
<p>La Asamblea General adopta la Agenda 2030 para el Desarrollo Sostenible
La Asamblea General de la ONU adoptó hoy la Agenda 2030 para el Desarrollo Sostenible, un plan de acción a favor de las personas, el planeta y la prosperidad, que también tiene la intención de fortalecer la paz universal y el acceso a la justicia.</p>
<p>Los Estados miembros de la Naciones Unidas aprobaron una resolución en la que reconocen que el mayor desafío del mundo actual es la erradicación de la pobreza y afirman que sin lograrla no puede haber desarrollo sostenible.</p>
<p>La Agenda plantea 17 Objetivos con 169 metas de carácter integrado e indivisible que abarcan las esferas económica, social y ambiental.</p>
<p>La nueva estrategia regirá los programas de desarrollo mundiales durante los próximos 15 años. Al adoptarla, los Estados se comprometieron a movilizar los medios necesarios para su implementación mediante alianzas centradas especialmente en las necesidades de los más pobres y vulnerables.</p>
<blockquote>Estamos resueltos a poner fin a la pobreza y el hambre en todo el mundo de aquí a 2030, a combatir las desigualdades dentro de los países y entre ellos, a construir sociedades pacíficas, justas e inclusivas, a proteger los derechos humanos y promover la igualdad entre los géneros y el empoderamiento de las mujeres y las niñas, y a garantizar una protección duradera del planeta y sus recursos naturales”, señalaron los Estados en la resolución.</blockquote>
<p>Los 17 Objetivos de la Agenda se elaboraron en más de dos años de consultas públicas, interacción con la sociedad civil y negociaciones entre los países.</p>
<p>La Agenda implica un compromiso común y universal, no obstante, puesto que cada país enfrenta retos específicos en su búsqueda del desarrollo sostenible, los Estados tienen soberanía plena sobre su riqueza, recursos y actividad económica, y cada uno fijará sus propias metas nacionales, apegándose a los Objetivos de Desarrollo Sostenible (ODS), dispone el texto aprobado por la Asamblea General.</p>
<p>Además de poner fin a la pobreza en el mundo, los ODS incluyen, entre otros puntos, erradicar el hambre y lograr la seguridad alimentaria; garantizar una vida sana y una educación de calidad; lograr la igualdad de género; asegurar el acceso al agua y la energía; promover el crecimiento económico sostenido; adoptar medidas urgentes contra el cambio climático; promover la paz y facilitar el acceso a la justicia.</p>
[ ] Escribir sobre <h2>Coronavirus y agenda 2030</h2>

[ ] write    *agenda2030.en.html*

[ ] write *sustainable.html*
[ ] escribir *sostenible.html*

[ ] write    *VitalikButerin.en.html*
[ ] escribir *VitalikButerin.es.html*

[ ] write *tipos-de-conocimientos* o <i lang="la">memorabilia</i>
- lógicos (la lógica y la matemática)
- naturales (ciencias naturales como la física, química y matemática)
- convencionales (lenguajes, leyes, cualquier otra convención)

[ ] escribir *permacultura-indirecta.html*
<p>Tuve una finca de regadío, pero el proyecto, que en sus últimas fases bauticé <cite>Proyecto Edén - Tres Esferas</cite> fracasó. Más adelante explico por qué y qué hacer.</p>
<p>Prepararse para practicar la permacultura:</p>
<ul>
  <li>ejercicio físico</li>
  <li>insolación</li>
  <li>estudio</li>
  <li>trabajar todas las esferas en todos los aspectos, en especial la mental/espiritual</li>
  <li>elaboración de documentos (textos, glosarios y bases de datos)</li>
</ul>

[ ] write *sedges.html*

[x] link to *mapping-texts.html* from *computing.html*
[ ] link to *mapping-texts.html* from  elsewhere

[ ] write *MichioKaku.html*

[ ] write *saving-seed.html* from MagicWorld.xml#saving_seed

[ ] write and link *pollination.html* from MagicWorld.xml#pollination

[ ] write and link *composting.html* from MagicWorld.xml#composting

[ ] escribir *recetas.html*
Relacionar las recetas con la falta de iniciativa y (la esencia de) la mentalidad conservadora, que rehúsa aplicar principios generales (casuística) y gramáticas de conceptos

[ ] escribir *regimen-animal.html*
<ul>
  <li>malestar de los animales de las macrogranjas</li>
  <li>perros y gatos domésticos, siempre encerrados</li>
</ul>

[ ] write *ARIA.html* (Accesible Rich Internet Application)

[ ] write *backlinks.html*
<p>Backlinks are links on websites other than your own that go back to a page on your website. Backlinks are also called inbound links because they represent another website&apos;s traffic coming to your own site.</p>

[ ] escribir *retroenlace.html*
https://www.google.com/url?sa=t&source=web&rct=j&opi=89978449&url=https://es.wikipedia.org/wiki/Retroenlace&ved=2ahUKEwi5zLbjsueMAxUeR_EDHTg0K30QFnoECD8QAQ&usg=AOvVaw11zwNlag_QiODs-qQ_kaRX
<p>En informática, un retroenlace (del inglés: backlink) es un hiperenlace que conecta un sitio web con otro. Los usuarios del sitio web pueden, de esta manera ...</p>
<p style="text-align: right">Wikipedia</p>

[ ] write *three-kayas.html* - The Doctrine of the Three Bodies (<i lang="sa">Kaya</i>) of the Buddha
[ ] write *yab-yum.html*
[ ] write *fri-luft-liv.html*

[ ] revisar *jerarquias-de-saberes.html*
[x] enlazar a *jerarquias-de-saberes.html* desde *informacion.html*
[ ] enlazar a *jerarquias-de-saberes.html* desde *ciencia.html*
[ ] enlazar a *jerarquias-de-saberes.html* desde ???

[ ] escribir *dependencias.html* (Relaciones de dependencia)

[ ] revisar *arboles-o-jerarquias.html* (Árboles o jerarquías)
[x] enlazar a *arboles-o-jerarquias.html* desde *elementos.html*
[x] enlazar a    *espacios-y-grafos.html* desde *elementos.html*
[ ] enlazar a             *sistemas.html* desde *elementos.html*
[ ] enlazar a *jerarquias-de-saberes.html* desde *arboles-o-jerarquias.html*
[ ] revisar *agentes.html*

[ ] escribir  *prioridades.html* (Prioridades)
[ ] enlazar a *prioridades.html* (Prioridades) desde *elementos.html*
[ ] enlazar a *prioridades.html* (Prioridades) desde *politica.html*
<p>Las personas o agentes deciden qué <strong>prioridad</strong> tiene una tarea. (Las personas y agentes en esencia realizan tareas.)</p>
<p>Imaginemos un padre que una mañana se entera que su hija se ha perdido en un bosque cercano. Tardará unas diez horas en recorrerlo todo y encontrarla con certeza. Un padre irracional empezaría a reducir ese tiempo de búsqueda. Se diría a sí mismo, mmm, a las cuatro de la tarde televisan un partido en el que juega mi equipo. O, mi mujer me ha pedido que haga croquetas con la masa que ha dejado en la nevera. ¡Qué hay de malo en que dedique unas horas del largo día a tal o a cuál! Y así, entre lo uno y lo otro, podría acabar no encontrando a su hija. O encontrarla cerca del anochecer, cuando estuviera muerta de miedo por la noche que se echaba encima.</p>
<p>No de otro modo actúan nuestros políticos. Hay tareas urgentes que demandan muchos <a target="_blank" href="recursos.html">recursos</a> y que de dedicárselos se conseguiría cumplir. Sin embargo también hay otras partidas de gasto menores que acaban acaparando gran parte del presupuesto.</p>
<p>Típicas tareas prioritarias:</p>
<ul>
  <li>la salud</li>
  <li>la pobreza</li>
  <li>el medio ambiente</li>
</ul>
<p>Típicas tareas menores:</p>
<ul>
  <li>el deporte</li>
  <li>los espectáculos</li>
  <li>la investigación chorra</li>
  <li>construcciones públicas</li>
</ul>
<p>Un agente racional diría: bien, primero voy a solucionar los problemas graves, y si sobran recursos ya veremos. Y no, como discurriría uno irracional, bueno, a las tareas no urgentes no les voy a dedicar la mayor parte de los recursos, tal vez sólo un cuarenta por ciento. O sólo un diez por ciento a cada una. Igual así acaba dedicando a las tareas no vitales la mayoría de los recursos.</p>


[ ] escribir *protocolos.html*
[ ] enlazar a *protocolos.html* desde *elementos.html*
[ ] enlazar a *protocolos.html* desde *sociedad.html*
[ ] enlazar a *protocolos.html* desde *lenguajes-informaticos.html*



[ ] complete *finnish-values.html*
[x] link to *finnish-values.html* from *society.html*
[ ] link to *finnish-values.html* from elsewhere


[ ] incluir
<li>
  <strong>sabiduría</strong>
  <ul>
    <li><strong>caridad</strong></li>
    <li><strong>protocolo</strong></li>
    <li><strong>conciencia meditativa</strong></li>
  </ul>
</li>

[ ] escribir *estetica.html*

[ ] look into *vajravarahi.html*

[x] *onedrive.html*

[x] write and link to *c.NULL.html*

[ ] write
<h2>A Safer Method</h2>

Create a sh file eg. refresh.sh and save the following code.

echo "" > /var/log/kern.log
echo "" > /var/log/syslog
service syslog restart
journalctl --vacuum-size=50M
run it as root eg. sudo sh refresh.sh

It will clear the logs from

/var/log/syslog
/var/log/kern.log
/run/log/journal



<h2>Lubuntu Partition Keeps Filling Up</h2>
<blockquote>
  <p>So, how do I find out what is using my disk space, and how do I prevent it from filling up my root partition? This is a huge problem, please help! Thank you in advance :)</p>
  <p>EDIT 2: As posted in the answer section, <code>sudo lsof / | awk '{if(\$7 > 1048576) print \$7/1048576 \"MB\" \" \" \$9 }' | sort -n -u</code> returns:</p>
  <pre>11222.7MB /var/log/kern.log 11222.9MB /var/log/syslog</pre>
  <p>However, I can't seem to figure out how to delete these files, and additionally, I would like to figure out how I can permanently prevent these files from growing this large. This answer to another question suggested that I look into the logs and see what's filling them up, so ideally I'd like some way to read the contents of these mystery files.</p>
  <!--<p>EDIT 3: I have temporarily fixed this issue by mounting <cite>/var/log</cite> on a separate partition.</p>-->
</blockquote>
<p>One solution:</p>
<blockquote>
  <p>As root, do cd /proc/$(pidof rsyslogd)/fd ; ls -l | grep /var/log/kern.log. Look at the number to the left of the -> . Run tail -200 thatnumber. Fix the problem (could be a bad piece of hardware).</p>
  <p>– Mark Plotnick</p>
  <p>CommentedNov 21, 2016 at 21:52</p>
  <p>Rebuilding the /var/log hierarchy that you removed will be harder, as there are a few dozen files and directories there that need to have specific owners and permissions. Do you have backups? </p>
</blockquote>
<p>Another:</p>
<blockquote>
  <p>You can use this command to find big files:</p>
  <pre>sudo find /var -xdev -type f -size +500000k -exec ls -lh {} \;\
| awk '{ print $9 ": " $5 }'</pre>
  <p>of course you can adjust the size (500000k in this sample).</p>
  <p>After that, you can remove or...</p>
</blockquote>

[ ] *emule.html*
<h2>Is eMule Still a Thing?</h2>
<p>As of October 2023, it is the fifth most downloaded project on SourceForge, with over 693 million downloads. Development was later restarted by the community as eMule Community.</p>

[ ] escribir *etica.html*
[ ] enlazar  *etica.html* a *amor.html* y a *m-k.html* (Maitri y Karuna)

[ ] write *docbook.html*
[ ] write *docbook.article.html*
[ ] write *article-to-html.xsl*

[ ] write   *sed.html*
[ ] link to *sed.html*
[ ] write   *bash.html*
[ ] link to *bash.html*

[ ] *rasgos-distintivos.html* (Rasgos distintivos)

[ ] Escribir *obras.html*
<a href="actuadores-y-creadores.html">Actuadores y creadores</a>
<p>Los seres humanos producimos <dfn>obras</dfn> y realizamos acciones.</p>
<p>Una obra puede estar terminada (conclusa) o quedar inconclusa.</p>

[ ] escribir  *lenguaje.html*
[ ] escribir  *gramatica.html*
[ ] enlazar a *gramatica.html* desde *lengua.html*

[ ] complete "HTML.meta.html" (Metadata in HTML: the &lt;meta&gt; Element)
    with a fuller list of values for attribute <code>name</code>

[ ] nuevas clases de CSS: sociedad filosofia espanya poem buddhism robotics health

[ ] escribir *imaginacion.html* (Imaginación)

[ ] *posibilidad-teorica-y-practica.html* (Posibilidad teórica y posibilidad práctica): tosco, polaridad varón-mujer
[x] enlazar a *posibilidad-teorica-y-practica.html* desde *imaginacion.html*
[ ] enlazar a *posibilidad-teorica-y-practica.html* desde *aristoteles.html#acto-y-potencia*

[ ] llenar *fisolosofia.html*
[x] enlazar a *fisolosofia.html* desde *pensamientos.html*
[x] enlazar a *aristoteles.html* desde *filosofia.html*

[ ] escribir *michiu-kaku.html*

[ ] escribir *guerra.html*
<p>Hasta ahora la victoria en la guerra ha dependido del número de combatientes.</p>
<ul>
  <li>defensiva</li>
  <li>ofensiva</li>
</ul>
<p>La guerra es uno de los <cite>Cuatro Jinetes del Apocalipsis</cite>, uno de los cuatro grandes males que se ciernen sobre la Humanidald.</p>
<p>Las consecuencias de la guerra son:</p>
<ul>
  <li>bajas: muertos y heridos, algunos de ellos incurables (lisiados)</li>
  <li>hambre: por pérdida de fuerza laboral, por abandono de la agricultura, por destrucción material (infraestructuras, campos etc.)</li>
  <li>violaciones</li>
</ul>
<section>
  <h2>Bombas</h2>
  <p>Para tirar una bomba se necesita:</p>
  <ul>
    <li>Una bomba</li>
    <li>Algo o alguien que lleve y coloque la bomba donde ha de explotar</li>
  </ul>
</section>


<section>
  <h2>Armas nucleares</h2>
  <p>Se trata de bombas, y por tanto para utilizarlas se requiere (1) la bomba en sí y (2) un vehículo que la coloque sobre el blanco enemigo.</p>
  <p>Poco se habla, escribe ni debate sobre las armas nucleares.</p>
  <p>Se las suele considerar armas defensivas en un sentido muy especial: el de la <dfn>disuasión</dfn>.</p>
</section>
<p>EEUU construyó dos reactores nucleares para producir plutonio para usos militares. Éste plutonio se caracterizaba por una combinacion de isótopos diferente: predominaban los de número másico impar, los menos radioactivos y que con menos probabilidad provocarían una <dfn>predetonación</dfn>.</p>
<p>Pronto se vio que el rendimiento (cuánto material fisible reaccionaba) y la potencia de las armas nucleares de fisión estaban limitados.</p>
<hr/>
<p>En seguida se barajó la posibilidad de conseguir fusionar hidrógeno, mucho más barato que el uranio enriquecido o el plutonio militar. Al principio se utilizó hidrógeno líquido. Después se utilizó hidruro de litio-6, un sólido, con la ventaja adicional de que durante la explosión el litio-6 se transformaba en deuterio y litio.</p>
<p>En la segunda detonación termonuclear se midió una potencia de más de diez megatones. Los ingenieros dedujeron que se había fisionado el uranio inerte que en principio sólo servía para frenar la expansión del secundario y conseguir que de este modo se fusionase todo el hidruro de litio-6.</p>


[ ] escribir *indices.html*
<p>Un <dfn>índice</dfn> es (1) cualquier mecanismo o medio que nos permite encontrar un fragmento de información o entrada de entre muchas dado algún campo (2) sin tener que mirar todos los fragmentos o entradas hasta encontrar el que nos interesa. Por ejemplo, dado el nombre de una persona, localizar el resto de sus datos en un fichero.</p>
<p>Uno elabora un índice para encontrar entradas (capítulos, secciones, filas de una tabla, documentos) por algún campo o combinación de campos.</p>
<p>En todo sistema de <a target="_blank" href="representacion-del-conocimiento.html">representación del conocimiento</a>, y especialmente en una base de datos, puede requerirse o convenir elabora un índice.</p>
<p>Algunos campos con los que se elabora un índice:</p>
<ul>
  <li>título</li>
  <li>nombre (en el caso de una tabla de personas)</li>
  <li>palabras, definiciones, etc.</li>
  <li>fecha (de creación, de última modificación, de publicación etc.)</li>
</ul>
<p>En un fichero físico, al colocar las fichas según algún orden, ya se dispone de un índice. Por ejemplo si en un fichero de libros las ordenamos por título, podemos encontrar rápidamente cualquier libro si conocemos su título.</p>
<p>En un fichero informático, los índices se confeccionan con una de dos estructuras de datos:</p>
<ul>
  <li>arbol binario, o</li>
  <li>tabla <i lang="en">hash</i></li>
</ul>

[ ] enlazar a *indices.html* desde *informacion.html*
[ ] enlazar a *indices.html* desde *representacion-del-conocimiento.html*



[ ] Escribir *michio-kaku.html*
<p>Considera que la Humanidad ha de esforzarse por colonizar otros planetas porque tarde o temprano nos golpeará un meteorito suficientemente grande para destruir la biosfera. Y también por superpoblación...</p>
<p>En libros posteriores propone que los problemas de la Humanidad se solucionarán:</p>
<ul>
  <li>si descubrimos una fuente infinita de energía (fisión controlada), o</li>
  <li>si desarrollamos la computación cuántica, es decir si accedemos a ordenadores infinitamente rapidos.</li>
</ul>
[ ] enlazar a *michio-kaku.html* desde *tecnologia.html*, *tres-esferas.html*...

[ ] progresión: (1) par nombre-valor, (2) tabla, (3) nota estructurada (JSON), y (4) texto
[ ] una nota o ficha es <q>unívoca</q>, plasma una sola idea, suceso, obra, persona etc.

[x] link to *agricultural-sciences.html* from *farming.html*
[ ] link to *agricultural-sciences.html* from *science.html*
[ ] link to *green-revolution.html* from *bio-revolution.html*
[ ] link to *bio-revolution.html* from *green-revolution.html*

[ ] link to *insects-and-other-beasties.html* (Insects and Other Beasties)
from 36281 to 36362

[ ] write *gestalt-psychology.html* (Gestalt Psychology)

[ ] Escribir *terminos-primitivos.html*
<p>Distinción entre los términos que se emplean en una teoría, en especial las que se estructuran axiomáticamente. Ya Aristóteles llamó <dfn>términos primitivos</dfn> a los que no se definen (los llama también <i lang="he">arkhai</i> o <i lang="he">prota</i>), y <dfn>términos derivados</dfn> a los que se definen a partir de los primitivos. En los sistemas axiomáticos, o las teorías axiomáticas, se distinguen igualmente términos primitivos, introducidos sin definición, y términos derivados, o términos definidos a partir de los primitivos.</p>
[ ] Enlazar a *terminos-primitivos.html* desde *ciencia.html*, *logica.html* *razon.html* etc


[ ] Write *paradoja-democracia.html* "La paradoja de la democracia"
<p>¿Por qué la mayoría no elige un gobierno que los haga tan ricos como los más ricos?</p>
<p>¿Porque la clase obrera vota con falsa conciencia de clase?</p>
<p>¿Porque ello violaría el principio de derecho a la propiedad privada?</p>
<p>Analogía de alguien que pisa el acelerador creyendo que ello va a aumentar la velocidad de su vehículo, cuando quiera. Tal vez el motor no dé más potencia. O no haya una conexión directa entre pedal de aceleración y carburador...</p>


[ ] write stylesheet for *SSPW.html* and *GlimpsesOfAbhidharma_ChogyamTrungpa.html*
[ ] look into          bulky (217k)    *GlimpsesOfAbhidharma_ChogyamTrungpa.html*
[ ] turn some `div` elements in        *GlimpsesOfAbhidharma_ChogyamTrungpa.html* into `section`s
[ ] worry: quoting the whole (217k) of *GlimpsesOfAbhidharma_ChogyamTrungpa.html* infringes copyright law
    You should either
    - split it up into several files
    - hide it somehow, refrain from referencing it
    - reference an abridged version of it
Remember your command line:
```
cp MagicWorld_files/GlimpsesOfAbhidharma_ChogyamTrungpa.html github_pages/
```
[ ] Copy ~/former/home/francisco/Documents/mis_escritos/precious/psimple/SSPW.html to GitHub dir...
Same caveats apply. Now it is a 352k file...


[ ] anglicismos: escenario, teatro de operaciones (son metáforas a la inglesa)


[ ] write *free-information.html* <blockquote>Information Wants to be Free</blockquote>

[ ] <blockquote>The Future is already here, it&apos;s just not evenly spread</blockquote>

[ ] escribir *int-med-ext.html* Interiores, talleres y exteriores
<p>

[ ] write *HTML.std.html* (Standardized HTML)
<li>Use semantic tags.</li>
<li>Meaningful <code>id</code> attributes (not computer-generated)</li>
<li>Avoid embedded <code>div</code> elements for, say, titles...</li>

[ ] terminar de escribir *antropologia.html* Antropología
[ ] escribir   *totem.es.html*
[x] enlazar a *totem.es.html* desde *antropologia.html*

[ ] escribir *totem.en.html*
<blockquote>
  <p>A totem (from Ojibwe: ᑑᑌᒼ or ᑑᑌᒻ doodem) is a spirit being, sacred object, or symbol that serves as an emblem of a group of people, such as a family, clan, lineage, or tribe, such as in the Anishinaabe clan system.</p>
  <p style="text-align: right">(From <cite>Wikipedia</cite>)</p>
</blockquote>
<blockquote>
  <p>an object that is respected by a group of people, especially for religious reasons:</p>
  <p><q>Television could be seen as a totem of modern society.</q></p>
  <p style="text-align: right">(From <cite>https://dictionary.cambridge.org/dictionary/english/totem</cite>)</p>
</blockquote>

[ ] escribir *notacion.html* y
[x] enlazar a *notacion.html* desde           *kokoro-alt.html* (notación)
[x] enlazar a *notacion.html* desde           *lenguajes-informaticos.html*
[ ] enlazar a *notacion.html* desde un futuro *lenguajes.html*
<p><a            href="notacion.html">Notación: lenguajes específicos artificiales</a></p>

[ ] llenar *basuraleza.html*

[ ] write *information.html*
[ ] escribir *informacion.html* -> *.inform*.html
    que tal vez se solape con *materia-energia-informacion-y-mas-alla.html*

[ ] refinar   *ecologismo.html*
[ ] enlazar a *ecologismo.html* desde *tres-esferas.html*
[x] enlazar a *ecologismo.html* desde *valores.html*
[ ] enlazar a *ecologismo.html* desde *ideologia.html*
[ ] enlazar a *ecologismo.html* desde ...
<p><a            href="ecologismo.html">Ecologismo: la defensa del medio ambiente</a></p>


[ ] continuar *meta.html#metalenguajes*

[x] terminar/pulir *valores.html*
[x] enlazar a      *valores.html* desde *pensamientos.html*

[x] enlazar a *ecologia-profunda.eea.html* desde *ecologia-profunda.html*
[x] enlazar a *ecologia-profunda.html* desde *permacultura.html*
[ ] enlazar a *ecologia-profunda.html* desde *antropoceno.html*

[x] escribir  *representacion-del-conocimiento.html*
[ ] mejorar   *representacion-del-conocimiento.html*
[x] enlazar a *representacion-del-conocimiento.html* desde *ia.html*
[ ] enlazar a *representacion-del-conocimiento.html* desde ???


[ ] mejorar   *antropoceno.html*
[x] enlazar a *antropoceno.html* desde *sociedad.html*
[ ] enlazar a *antropoceno.html* desde ???

[ ] escribir *asumir.html*

[ ] write   *hugel-kultur.html* (Hugel Kultur: burying wood for fertility)
[ ] link to *hugel-kultur.html* from *permaculture.html* (just uncomment link)
[ ] link to *hugel-kultur.html* from elsewhere

[x] write    *orm.html*
[ ] complete *orm.html*
[x] link to *orm.html* from *database.html*
[ ] link to *orm.html* from elsewhere


[?] complete *mongoose.html*
[x] link to *mongoose.html* from *mongodb.html*


[ ] complete *js.objects.html* starting at https://www.w3schools.com/js/js_object_definition.asp
[x] link to  *js.objects.html* from *js.html*
[ ] link to  *js.objects.html* from elsewhere


[ ] añadir:
<p>No hay levadura en los supermercados del barrio, ni siquiera en un espacioso DIA, tampoco en La Plaza. Estos madrileños no gastan de eso. Sin embargo, en un pueblo de Cataluña, Artesa de Segre, ya conocí una mujer que se hacía hasta la levadura madre...</p>

[ ] add
<p>By default, MongoDB listens for connections from clients on port 27017 , and stores data in the <cite>/data/db</cite> directory.</p>

[x] link to *windows.html* from *os.html*
[ ] link to *windows.html* from elsewhere


[ ] add to *mongodb.html*
<p>Binaries get installed by default in <cite>C:\Program Files\MongoDB\Server\8.0\bin</cite>, whereas collections are written in <cite>\data\db</cite></p>
<p>Then you may start the server with a line like:</p>
<pre>"C:\Program Files\MongoDB\Server\8.0\bin\mongod.exe" --dbpath="c:\data\db"</pre>
<p>To start the MongoDB service, close all other command prompts, then invoke the following command:</p>
<pre>net start MongoDB</pre>

[ ] write *js.npm.html*

[ ] write   *find.html* (Unix <code>find</code> Utility)
[ ] link to *find.html* from *linux.html* and from *os.html*

[ ] write   *couchdb.js.html*
[ ] write   *database.aggregation.html* and
[ ] link to *database.aggregation.html* from *redis.html*

[ ] write *referencia-y-relacion.html*

[ ] write *gene-editing.html* (Gene Editing)

[ ] link to *bio-revolution.html*

[ ] write *growth.html*
[x] link to *growth.html* from *innovation.html*
[x] link to *growth.html* from *economy.html*
[x] link to *innovation.html* from *economy.html*
[ ] link to *innovation.html*

[x] escribir  *demasiada-informacion.html* (Demasiada información)
[x] enlazar a *demasiada-informacion.html* (Demasiada información) desde *pensamientos.html*
[x] enlazar a *demasiada-informacion.html* (Demasiada información) desde *representacion-del-conocimiento.html*

[x] enlazar "innovacion.html" (Innovación) desde *creatividad-y-maquinas.html*
[x] enlazar "innovacion.html" (Innovación) desde *creatividad.html*
[ ] enlazar "innovacion.html" (Innovación) desde otros

[ ] write *innovation.html*

<h1>Innovation</h1>
<p>When you think of innovation, what springs to mind? Maybe it&apos;s a flashy new gadget—but don&apos;t be mistaken. There&apos;s much more to the world of innovation, which extends far beyond new products and things you&apos;ll find on a store shelf.</p>
<p>If products alone aren&apos;t the full story, what is innovation? In a business context, <dfn>innovation</dfn> is the ability to conceive, develop, deliver, and scale new products, services, processes, and business models for customers.</p>
<p>Successful innovation delivers net new <a target="_blank" href="growth.html">growth</a> that is substantial. As McKinsey senior partner Laura Furstenthal notes in an episode of the <cite>Inside the Strategy Room</cite> podcast, <q>However you measure it, innovation has to increase value and drive growth.</q></p>



[ ] get/read "The Garden Against Time: In Search Of A Common Paradise", Olivia Laing
From one of our most original contemporary voices, The Garden Against Time is an inventive and deeply felt exploration of the long dream of a shared Eden, a common paradise."
Description
‘What a wonderful book this is. I loved the enchanting and beautifully written story but also the fascinating and thoughtful excursions along the way.’ – Nigel Slater
‘A garden contains secrets, we all know that: buried elements that might put on strange growth or germinate in unexpected places. The garden that I chose had walls, but like every garden it was interconnected, wide open to the world . . .’
In 2020, Olivia Laing began to restore a walled garden in Suffolk, an overgrown Eden of unusual plants. The work drew them into an exhilarating investigation of paradise and its long association with gardens.
Moving between real and imagined gardens, from Milton’s Paradise Lost to John Clare’s enclosure elegies, from a wartime sanctuary in Italy to a grotesque aristocratic pleasure ground funded by slavery, Laing interrogates the sometimes shocking cost of making paradise on earth.
But the story of the garden doesn’t always enact larger patterns of privilege and exclusion. It’s also a place of rebel outposts and communal dreams. From the improbable queer utopia conjured by Derek Jarman on the beach at Dungeness to the fertile vision of a common Eden propagated by William Morris. New modes of living can and have been attempted amidst the flower beds, experiments that could prove vital in the coming era of climate change.
The Garden Against Time is a beautiful and exacting account of the abundant pleasures and possibilities of gardens: not as a place to hide from the world but as a site of encounter and discovery, bee-loud and pollen-laden.

[ ] get/read "Afterglow: Climate Fiction For Future Ancestors" by Grist
Hopeful and forward-looking futuristic short stories that explore how the power of storytelling can help create the world we need.
Description
“This is a glorious book that challenges our conceptions of bookmaking as much as it questions our conceptions of world-building. We, as earthlings, will be better to the earth after experiencing this book. That is not hyperbole.”
–New York Times bestselling author Kiese Laymon
Afterglow is a stunning collection of original short stories in which writers from many different backgrounds envision a radically different climate future. Published in collaboration with Grist, a nonprofit media organization dedicated to telling stories of climate solutions, these stirring tales expand our ability to imagine a better world.
Inspired by cutting-edge literary movements, such as Afrofuturism, hopepunk, and solarpunk, Afterglow imagines intersectional worlds in which no one is left behind—where humanity prioritizes equitable climate solutions and continued service to one’s community. Whether through abundance or adaptation, reform, or a new understanding of survival, these stories offer flickers of hope, even joy, as they provide a springboard for exploring how fiction can help create a better reality.
Afterglow welcomes a diverse range of new voices into the climate conversation to envision the next 180 years of equitable climate progress. A creative work rooted in the realities of our present crisis, Afterglow presents a new way to think about the climate emergency—one that blazes a path to a clean, green, and more just future.

[ ] get/read "How To Build A Universe That Doesn’t Fall Apart Two Days Later", by Philip K. Dick
Against the surreal backdrop of Disneyland in 1978, visionary science fiction author Philip K. Dick delivers a mind-bending lecture on the fragile nature of reality and the quest for authentic human experience in an increasingly mediated world.

[ ] write *organic-techniques.html* (short for Organic Farming Techniques), and include
- *sheet-mulching.html*
- *seed-balls.html*

[ ] develop *seed-balls.html*
[ ] then link to *seed-balls.html* from *fukuoka-s-true-nature.html*, as F. developed this method
[ ] also link to *seed-balls.html* from *natural-farming.html*,       as F. developed this method

[ ] write *The Ultimate Guide to Sheet Mulching* in *sheet-mulching.html*, from https://punkmed.com/blog/sheet-mulching/

[ ] escribir *satisfaccion-laboral.html* (Satisfacción laboral / Contentos y realizados)
[ ] enlazar  *satisfaccion-laboral.html*

[ ] see about *knowledge.html* (incomplete, poor section on Knowledge Pyramid)

[ ] escribir  *signo-simbolo-senyal.html*
[ ] enlazar a *signo-simbolo-senyal.html* desde *lengua.html*

[ ] write *c.enum.html*           (points forward to *cpp.enum-class.html* and to *symbols.html*)
[ ] write *cpp.enum-class.html*   (points back    to *c.enum.html*         and to *symbols.html*)

[ ] escribir *especificadores.html*
<p>Un especificador es o está compuesto de uno o más símbolos que se utilizan para afinar o restringir la referencia que el hablante hace a un ente (persona, objeto, fenómeno etc.) de la realidad. Por ejemplo <q>monedas falsas</q> se refiere a un conjunto de monedas más restringido que <q>monedas</q>.</p>
<p>Cuando digo <q>el motor de mi coche rojo</q> las palabras <q>mi</q> y <q>rojo</q> sirver para especificar qué coche, y <q>mi coche rojo</q> me sirven para especificar qué motor (el motor de qué coche).</p>
<hr/>
<p>La especificación y la <a target="_blank" href="enumeraciones.html">enumeración</a> sirven para estructurar un lenguaje. Forman o debería considerarse que forman parte de la Lógica <i lang="la">lato sensu</i></p>
<section id="programacion">
  <h2>Especificación en programación</h2>
  <ul>
    <li>Mediante espacios de nombres, para lo que a menudo se utilizan dos puntos. Por ejemplo, si dentro del campo <code>Logica</code> quiero utilizar el concepto de <code>Clase</code>, escribiré <code>Logica::Clase</code>. Esto me permite emplear símbolos con significado distinto pero mismo nombre (Escuela::Clase, Morfologia::Clase etc.)</li>
    <li>por pertenencia a un objeto, a menudo mediante punto. Por ejemplo <q>el teléfono de Luis</q> se expresaría: <code>Luis.telefono</code></li>
  </ul>
</section>

[ ] write *butoh.html*

[ ] complete *fruits.html*,
[x] make  *fruits.html* point to *types-of-fruits.html*
[x] write *fruit-dispersal.html* <h1>Dispersal of Fruits</h1>
[x] link to *angiosperms.html* <h1>Angiosperms: Flowering Plants</h1> from *plants.html*

[ ] complete *MapReduce.html* (already linked to from *programming.html* and *couchdb.html*, by the by)

[ ] add
<h2>Self-Contained Data</h2>
<p>An invoice contains all the pertinent information about a single transaction—the seller, the buyer, the date, and a list of the items or services sold. There&apos;s no abstract reference on this piece of paper that points to some other piece of paper with the seller&apos;s name and address. Accountants appreciate the simplicity of having everything in one place. And given the choice, programmers appreciate that, too.</p>
<p>Yet using references is exactly how we model our data in a relational database! Each invoice is stored in a table as a row that refers to other rows in other tables—one row for seller information, one for the buyer, one row for each item billed, and more rows still to describe the item details, manufacturer details, and so on and so forth.</p>
<p>This isn&apos;t meant as a detraction of the relational model, which is widely applicable and extremely useful for a number of reasons. Hopefully, though, it illustrates the point that sometimes your model may not “fit” your data in the way it occurs in the real world.</p>
<p>Let&apos;s take a look at the humble contact database to illustrate a different way of modeling data, one that more closely “fits” its real-world counterpart—a pile of business cards. Much like our invoice example, a business card contains all the important information, right there on the cardstock. We call this <dfn>self-contained</dfn> data, and it&apos;s an important concept in understanding document databases like CouchDB.</p>


[x] link to *guerrilla-gardening.html* from *farming.html*
[ ] link to *guerrilla-gardening.html* from elsewhere


[ ] write *xquery.linux.html*

- https://www.reddit.com/user/benibela/ has `xidel` (https://github.com/benibela/xidel)

- `xqilla` Good question. xqilla is the best I've found that's open-source and not Java. It seems not very well-known either. Outside Java it might be the only lib with any Xpath2 support.

- You can run Saxon (XQuery) from the command line. You can do this by pointing to a file that has the XPath/XQuery using -q or you can pass the query string directly using -qs.
Here's an example of using -qs to process a simple XPath:
```
java -cp "saxon9he.jar" net.sf.saxon.Query -s:"input.xml" -qs:"/a/b[@id='x']" -o:"results.xml"
```

- Use `xmllint` with switch `--xpath` "XPath_expression" (Run an XPath expression given as argument and print the result. In case of a nodeset result, each node in the node set is serialized in full in the output. In case of an empty node set the "XPath set is empty" result will be shown and an error exit code will be returned.) Check out switch `--pattern`, too

- `eXist` (http://exist-db.org/exist/apps/homepage/index.html)

- `BaseX` (https://basex.org/)

- `galax` at https://galax.sourceforge.net/

[ ] finish *jq.html* from man page

[ ] complete section *Some Common / Rare Cases* in *grammatical-cases.html*

[x] *XSLT.html* <cite>eXtensible Stylesheet Language Transformations</cite>
[ ] review and complete section *XML Namespaces* in *xml.en.html*

[x] *conventional.CT.html* <cite><dfn>Conventional</dfn> according to Chögyam Trungpa</cite>
[x] *creating-a-drala-culture.CT.html* <cite>Creating a Drala Culture</cite>, by Chögyam Trungpa
[x] *the-four-foundations-of-mindfulness.CT.html* <cite>The Four Foundations of Mindfulness</cite> according to Chögyam Trungpa Rinpoche

[ ] move links in *computing.html*
      <div>
        <p><a href="svg.html">SVG: XML for Drawing</a></p>
        <p><a href="metapost.html">MetaPost: Drawing for PostScript</a></p>
        <p><a href="asymptote.html">Asymptote: The Vector Graphics Language</a></p>
      </div>
    somewhere else, such as
    [ ] would-be *computer-graphics.html*
    [x] *computational-geometry.html*

[ ] write section *Finno-Hungric Cases* in *grammatical-cases.html*
[ ] write section *Basque Cases* in *grammatical-cases.html*

[ ] write "open-closed-loop.html" (concerning systems)

[ ] revisar y mejorar *bases-de-datos-relacionales.html*

[x] escribir *mapas-conceptuales.html* con https://concepto.de/mapa-conceptual/

[ ] visitar https://concepto.de/concepto/

[x] escribir *teatro.html*

[ ] escribir *tradicion-convencion-transcendencia.html* o *tradi-conven-dencia.html*

[ ] escribir *projimo.html*

[x] escribir          *armas-nucleares.html*
[ ] revisar y ampliar *armas-nucleares.html*


[ ] write *agency.html*

[x] write *lisp.symbols.html* and link from *lisp.html*
[x] write *prolog.symbols.html* and link from *prolog.html*

[x] enlazar a *creatividad-y-maquinas.html* desde *creatividad.html*
[x] enlazar a *creatividad-y-maquinas.html* desde *herramientas.html*
[x] enlazar a *creatividad-y-maquinas.html* desde *ia.html*

[ ] write *heuristics.html* and link from *ai.html*

[ ] escribir *crecimiento-y-desarrollo.html*
[ ] enlazar  *crecimiento-y-desarrollo.html* con *cual-cal-cant.html*
[ ] escribir *hipercrecimiento.html*
De cosas en principio no perjudiciales.
- animales domésticos
- carreteras y vehículos privados
- leyes y normas
- licenciados
[ ] enlazar a *hipercrecimiento.html* desde *crecimiento-y-desarrollo.html*
[ ] enlazar a *hipercrecimiento.html* desde *poblacion.html*

[ ] write *mysql.json.html*


[ ] link to *how-to-make-coffee.html*

[ ] write content in *fungi.html*

[ ] enlazar a *vampiros.html* desde *autoritarismo.html*
[x] enlazar a *vampiros.html* desde *tiempo.html*
[x] escribir *vampiros.html*

[x] *mongodb.html*
[ ] run from cloud (as explained at w3schools)

[ ] escribir sobre nominalizaciones, pasivas con ser, registros etc en *lenguaje-artificioso.html*

[ ] insert into some sqlite page:
<h2>Getting Database File Information</h2>
<p>The primary means by which to obtain logical database information, such as table names, DDL statements, and so on, is using the <var>sqlite_master</var> view, which provides detailed information about all objects contained in a given database.</p>
<p>If you want information on the physical database structure, you can use a tool called SQLite Analyzer, which can be downloaded in binary form from the SQLite website( and is found in my current installation from standard reporsitories).</p>
<p>SQLite Analyzer provides detailed technical information about the on-disk structure of a SQLite database. This information includes a detailed breakdown of database, table, and index statistics for individual objects and in aggregate. It provides everything from database properties such as page size, number of tables, indexes, file size, and average page density (utilization) to detailed descriptions of individual database objects.</p>
<p>Following the report is a detailed list of definitions explaining all terms used within the report. A partial output of sqlite_analyzer is as follows:</p>
<pre>fuzzy@linux:/tmp$ sqlite3_analyzer test.db</pre>

[ ] escribir *obsolescencia.html*
- por cambio de normas (insuperable)
- programada           (insuperable)
- por moda             (  superable)
- por descatalogación  (insuperable)

[ ] escribir *politica.html* y no enlazar desde *sociedad.html* ni desde *pensamientos.html*
[ ] sino tal vez desde *queja.html*

[ ] escribir *medio-ambiente.html*

[ ] complete *plants.html#epiphytes* (a description is lacking)

[ ] develop subdivisions of geophytes (rhizome, stem-tuber, root-tuber, bulb and root geophytes) at *geophytes.html*


[x] escribir *geophytes.html*
[x] y enlazar desde *plants.html*
[ ] y desde otros

[ ] escribir *familia.html*
[x] enlazar desde *sociedad.html*
[ ] *paternalismo.html*


[x] escribir *narcisismo.html* y enlazar desde [x] *familia.html* y desde [x] *amor.html*

[ ] *hate-speech.html*


[x] enlazar a *consumismo.html* desde *economia.html*
[x] enlazar a *consumismo.html* desde *sociedad.html*
[x] enlazar a *consumismo.html* desde *recursos.html*
[?] terminar de escribir *consumismo.html*

[ ] write *inverted-tables* as a section of *special-relational-tables.html*
[ ] link to *inverted-tables.html* from *relational-database.html*

They are tables where the first column list features and might be named something like "feature", "trait", "characteristic" etc.

Conceptually "records" are realized as columns and are therefore limited, while their features are un-limited or growing.

These tables are often used for describing a comparison.

Example:

- Feature Plant Animal Fungi

What about tables that are un-limited both horizontally and vertically? The Relational Model fails to represent them...


[ ] write *tabular.html* and [ ] link from *knowledge-representation.html*


[ ] write *adventitious-roots.html* and link from [ ] *taproot.html*, [ ] *plants.html*, and [ ] elsewhere

## Único, útil y adelantado
[x] escribir *unico-y-util.html*
[x] y enlazar desde *creatividad.html* y
[x] desde *tecnologia.html*


[ ] write *beneficial-weeds.html* and link from
[x] *permaculture.html*,
[x] *how-to-grow.html* and
[ ] elsewhere
(https://en.wikipedia.org/wiki/List_of_beneficial_weeds)

[ ] write *pseudo-cereals.html*

[ ] write *camphor.html*,  then link from [ ] *how-to-grow.html* and [ ] elsewhere
[ ] write *rosemary.html*, then link from [ ] *how-to-grow.html* and [ ] elsewhere

[ ] change, edit *reed-beds.html*

[ ] escribir *falacia.html* y enlazar desde *razon.html*

[x] escribir y enlazar *urbano.html*
[x] escribir y enlazar *las-4-habs.html*


[ ] Escribir *vivir.html* y trasladar a un elemento nav varios enlaces (desde *pensamientos.html*)

[ ] write *c.string.html* and link to it from *cpp.strings.html* at id="c-string"

[ ] write *cpp.range.html*

[ ] So it's the old 80-20 rule (also called the law of diminishing returns)? 80% of the coverage is handled by 20% of the effort.

[ ] see to *morphology.html*

https://www.tutorialspoint.com/natural_language_processing/natural_language_processing_word_level_analysis.htm

https://web.stanford.edu/~jurafsky/slp3/old_dec21/ ()


[ ] escribir  *coche-electrico.html*
[ ] enlazar a *coche-electrico.html* desde *falsabilidad-ampliada.html#coche*

[ ] *morph-through-regexp.html* Morphology by dint of Regular Expressions

[ ] In *cpp.regexp.html* | "Different Regular Expression Grammars", finish writing section with id=basic (besides ECMAScript)
[ ] In *cpp.regexp.html* | "Different Regular Expression Grammars", finish writing section with id=extended (besides ECMAScript)
[ ] In *cpp.regexp.html* | "Different Regular Expression Grammars", finish writing section with id=awk (besides ECMAScript)
[ ] In *cpp.regexp.html* | "Different Regular Expression Grammars", finish writing section with id=grep (besides ECMAScript)
[ ] In *cpp.regexp.html* | "Different Regular Expression Grammars", finish writing section with id=egrep (besides ECMAScript)

[ ] write *muzak.html*
[ ] escribir *hilo-musical.html*

[ ] write *occams-razor.html*
[ ] escribir *navaja-de-occam.html*

[ ] terminar de escribir *falsabilidad-ampliada.html*
    añadiendo elementos dd (definition data)
[x] Enlazar a *falsabilidad-ampliada.html* desde *pensamientos.html*
[ ] Enlazar a *falsabilidad-ampliada.html* desde otros

[ ] write *lynx.html*, a Text-Mode Browser
[ ] link to *lynx.html* from *linux.html*, *HTML.html*,
[ ] link to *lynx.html* from *informatica.html*, *proceso-de-escribir.html*,

[x] write *phoneme-map.html*:


[x] link to *phoneme-map.html* from *linguistics.html*
[x] link to *phoneme-map.html* from *computing.html*
[x] link to *phoneme-map.html* from *regexp.html* etc.


[x] write *cpp.string_view.html*, already linked to from *cpp.span.html* and *cpp.strings.html*

[ ] write *c.decay.html*
When you invoke a function taking a C-array, <dfn>decay</dfn> occurs. The function takes the C- array via a pointer to its first element. The C-array to pointer conversion is error-prone because length information of the C-array is lost.

[x] link to *c.decay.html* from *c.html*

[x] link to *c.decay.html* from *cpp.span.html*


[ ] write *unicode.html*, and
[ ] provide a list of useful unicode characters, possibly therein
[ ] provide a model DOCTYPE section like:

```
!DOCTYPE book SYSTEM "/home/francisco/Documents/mis_escritos/precious/xml/DocBook/docbook.dtd" [
  <!ENTITY nbsp  "&#160;">
  ...

]>
```
possibly borrowed from *cyclopaedia.xml*, mmm?

Añadir nuevas oposiciones
[ ] empírico y teórico
[ ] figurativo y abstracto
[ ] restricción y expansión

[ ] Elaborar la teoría de textos opción o textos bifurcación...

[ ] escribir *merito.html* y enlazar (desde *arte.html* y *trabajo.html*)

[ ] escribir sección sobre mimo en *arte.html*

[ ] escribir *protocolos.html* y enlazar desde *trabajo.html* y *tipos-de-empleo.html*

[ ] escribir *algoritmos.html* y enlazar desde *programacion.html*

[ ] escribir *robots.es.html* y enlazar desde *ecs.html*, *trabajo.html*, *tipos-de-empleo.html* etc.

[ ] escribir *topologia-y-grafo.html*, sobre cómo conservando la topología o relaciones de adyacencia se generan apariencias diferentes
[ ] La topología matemática no asigna ni escalar (cantidad) ni cualidad a las relaciones de adyacencia. ¿Primitiva?
[ ] relacionar esto con la escritura

[ ] escribir *coste-de-transaccion.html*
[ ] write *transaction-cost.html*

[ ] develop *biodynamics.html*

[ ] write *svg.styling.html*

[x] *wetiko.es.html* desde *religion.html* y a *jung.html*
[ ] *wetiko.es.html* debería apuntar a un futuro *jung.es.html* todavía por redactar


[ ] *rdbms-comp-syntax.html* (Data Base Management Systems: Comparative Syntax)
     as tables for SQLite, MySQL, PostgreSQL
     for:
- `CREATE SCHEMA/DATABASE`
- `CREATE TABLE`
- `UPDATE TABLE`

[ ] negociar - escuchar - cumplir (*nec.html*), desde *capitalismo.html*

[ ] *fe-es-ca.html*
- podríamos empezar negando la fe,
- o podríamos partir de la caridad, continuar por la esperanza, y concluír en la fé
- según el orden, así negamos o afirmamos

[ ] *masa-individuo.html*
[x] relacionar con la empatía (*empatia.html*)
[ ] aclarar relación con *rebelion-de-las-masas.html*
[ ] añadir cuarto término, digital, en particular *ia.html*
[x] enlazar desde *dicotomia.html*
[ ] salida: minifundio

[ ] *tiempo-ordenador.html*: Papel, pantalla, ordenador
- Tricotomías o dicotomías
- internet time = tiempo internet/ordenador frente a tiempo analógico
- libro de papel, lector, leer de ordenador
- el ordenador aporta eficiencia, al tiempo que el tiempo se nos escurre entre las manos frente a él. Tiempo pasado tiempo no vivido.
[ ] enlazar con *tiempo.html* y con *ordenador.html*

[ ] Tiempo y Ahora


[ ] Teilhard de Charden
- Las Tres Intervenciones de Dios
  y el joven conservador (bordón defensivo, hábito, comunidad, anti-Francisco etc.)
- La Navaja de Occam


[ ] La Navaja de Occam


[ ] What is an `explicit constexpr` constructor in C++? As in
```
explicit constexpr Frequency(unsigned int h) : hertz(h) {};
```

[ ] dentro de *religion.html*, hablar de la heredabilidad (de la religión) de padres a hijos y de la correlación

[ ] write and link to *svg.styling.html*

[ ] write *psa.html* for Prostate-Specific Antigen
    Prostate-specific antigen, or PSA, is a protein produced by normal, as well as malignant, cells of the prostate gland. The PSA test measures the level of PSA in the blood. For this test, a blood sample is sent to a laboratory for analysis.

[ ] escribir *fija.html* (limpia, fija y da esplendor), enlazada desde *lengua.html* y *anglicismos.html*

[x] *health.html* should point to would-be *cyborg.html*

*health.html* already points to *implants.html*),

[ ] *cyborg.html* should point to  to *implants.html*

[ ] *imagined-communities.html*

[ ] ¿Podemos derivar una ética de la razón? Idea o concepto de "valor"

[ ] En *salud.html*: que la medicina moderna no atribuye las enfermedades a causas tales como
    el modo de vida y estados mentales
    sino más bien a la genética y a la edad.

[ ] continue writing *implants.html*, on Medical Implants, and
[ ] develop section/page "Neural Implants", currently *implants.html#neural*

[ ] write *emergence.html* on emergent properties

[ ] write *data-center.html*

[ ] write *platform-capitalism.html*

[ ] hablar sobre la somalí que se convirtió al cristianismo

[ ] escribir *traduccion.html*, enlazar desde *lengua.html* y apuntar a *interconectados.html*, inter alia

[ ] Makefile rule for generating FILE.mp3 from FILE.ssml
```
%.mp3: %.ssml
  espeak  -m -s 144 -ves -f %.ssml -w %.wav
  ffmpeg -i %.wav -acodec mp3 %.mp3
```

[ ] *contenido-y-referencia.html*

[ ] *ecoaldeas.con-cartas.html* está desenlazada o desconectada, pero contiene datos personales

[ ] write *vocoder.html* and link from *audio-sequencers.html*, or just restructure *audio-sequencers.html* into sections and add a top level one named "Vocoders"

[ ] write *espeak-mbrola.html* from local file */usr/share/doc/espeak/docs/mbrola.html*

[ ] move stuff about espeak into *espeak.html* and duly link, also link to *espeak-tags.html*

[ ] *digital.html* (en)

[ ] redactar y enlazar *alfabeto.html*

[ ] redactar y enlazar *ssml.html*

[ ] redactar *correlaciones.html* y enlazar desde *opuestos.html*, entre otros

[ ] redactar *individualismo.html* (sacándolo de cyclopaedia.xml#individualismo), actualmente sólo desde *ecoaldeas.html* y *sociedad.html*

[ ] relacionar *individualismo.html* con *interdependencia.html* a lo Karmapa

[ ] escribir y enlazar a *alternativo.html* (sacándolo de cyclopaedia.xml#individualismo), actualmente sólo desde *ecoaldeas.html*


[ ] enlazar desde *prolog.es.html* a *kokoro-alt.html#prolog* y viceversa

[ ] write into *cpp.type_traits.html*

[ ] *jung.four-functions-of-consciousness.html*

[x] rewrite *cpp.generics.concepts.html* to make it simpler.

List/recomend code like:
```
#include <concepts>
template<class CONT>
concept IndexAddressable = requires(CONT cont, const CONT ccont, std::size_t i)
{
  { cont[i]}     -> std::convertible_to<typename CONT::      reference>;
  {ccont[i]}     -> std::convertible_to<typename CONT::const_reference>;
};
```
Note:
- curly braces around expression
- arrow operator (->)
- `requires` clause: `requires(PARAMS) {CONSTRAINTS}`
- etc.

Then write a template class or function like:
```
template <typename F = double,
          IndexAddressable CONTAINER=std::vector<F> >
class MyContainer {
};
```

[ ] *c-and-cpp.html*

[ ] Unify *cpp.in-class-initializers.html* and *cpp.member-initializers.html*: they say much the same

[ ] Add content to largely empty *c99.html* and *c11.html*

[ ] write a bool section (in would-be *cpp.data-types.html*)
    - In C++ the boolean data type has no default value and contains garbage value (only in case of global variables, it will have default value as false).
    - an integer of value different from 0 matches `true`
    - to print boolean values as true or false insert `std::boolalpha`
    - you can set a starting value for each bool variable in a class or structure like this:
    ```
class Cpp11 {
  string s = "default";
  int i = 1;
  ...
    ```

[ ] añadir clase *arte* en hoja de estilo

[ ] link to "audio-sequencers.html"

[ ] write *work.html* and link to *specialization.html*, *rise-of-useless-class.html*, would-be *ai.html*

[ ] review *rise-of-useless-class.html*, already linked to from *society.html* and *population.html*
[ ] link *rise-of-useless-class.html* to would-be *art.html*

[ ] write *xml.xmllint.html* and link to it from *xml.html*, *xml.xinclude.html*, and either *linux.html* or would-be *linux.utils.html*
[ ] *linux.utils.html* and link to *xml.xmllint.html*

[ ] write *xml.entity.html*
[ ] include HTML-only entities such as &nbsp; and &mdash; and explain that `xmllint --html` does not acknowledge them

[ ] escribir *entropia.html* y relacionar con *orden.html*
[ ] write    *enthropy.html*

[ ] finish *regexp.html* (regular expressions)

[ ] further elaborate and link to *narratives.html*

[ ] write *symbols.html* and link from *thought.html*

[x] write *splines.html*, set its class and link from *computational-geometry.html*

[x] write *maths.html* and link to *splines.html*

[ ] write Mihaly Csikszentmihalyi *creativity_MCsikszentmihalyi.html* (MihalyCsikszentmihalyi_CreativityFlowAndThePsychologyOfDiscoveryAndInvention)

[ ] escribir *cerillera.html*, copiado de grafo_de_HTML.xml#eden.reconocer.cerillera

[ ] cambiar *intencion.y-eficacia.html* a *intencion-y-eficacia.html* (guión no punto)

[ ] escribir *sufrimiento-e-indignidad.html* y enlazar desde *religion.html*

[ ] enlazar *cristianismo.html*

[ ] rellenar *falacia.html*

[x] *dilema.html*

[x] referencia mutua entre *dilema.html* y *dicotomia.html*

[x] *subreinos-naturaleza.html*

[ ] *empirico-teorico.html*, desde *opuestos.html*

[ ] enlazar a *dicotomia.html*, desde *pensamientos.html*


[ ] *dichotomy.html*, desde *thought.html*

[ ] *dropbox.html*, linked to from *networking.html*

[ ] reguetón, memes, videojuegos ...

[ ] *interpretacion-e.html* R *traduccion.html* *neospanglish.html*

[ ] *funcionariado.html*, con vínculos desde *estado.html*

[ ] *estado.html*, con vínculos desde *sociedad.html*

[x] *sacrificio.html*

[x] escribir *esfuerzo-resultado.html*, a donde se apuntará desde *recursos.html*, ¿*salud.html*?

[ ] redactar/importar *tres-esferas.html* y enlazar desde *sociedad.html* inter alia

[ ] continuar *sectores.html*: hablar de administración-producción-especulación y de pirámides de necesidades (

[ ] link to would-be *thymus.html* from *zoology.html*, *health.html*

[ ] link to would-be *lymph.html* from *zoology.html*, *animal-ĥistology.html* etc.

[ ] finish *sqlite.sql.html* after *Transaction Types*

[ ] escribir *cual-int-cant-float.html* y enlazar desde *cual-cal-cant.html*, *espacios-y-grafos.html* (anota un arco) etc
    quality is an integer, quality is a float
[ ] escribir explicando *gestalt.html*

[ ] escribir *sin-naturaleza.html* y enlazar desde *naturaleza.html*. En él habría programas de entretenimiento (series, policíacas, etc), deporte, ciencia, matemáticas, literatura, informática

[ ] escribir *trigo-sarraceno.html* y enlazar desde *agricultura.html*

[ ] escribir *productividad-protagonismo-imprescindibilidad.html*

[ ] añadir: requisitos de la herramienta: normalizada, generalizada, abaratada (por economía de escala), sencilla de manejar, y útil

[ ] write *farming.moon.html* on the influence of the Moon and other heavenly bodies

[ ] escribir/write *piaget.html* sobre/about Jean J. Piaget

[ ] write/include  *jmuir.html*   sobre/about John Muir

[ ] escribir *espirulina.html* y enlazar desde *salud.html* etc

[ ] escribir y enlazar *tres-esferas.html*

[ ] escribir *dogma-separacion.html* y enlazar desde *salud.html*, *pensamientos.html* etc

[ ] relacionar *dogma-separacion.html* con monofuncionalidad

[ ] cambiar nombre de y vínculos a *chinpances-dialogo-filosofico.html*, que debería llamarse *chimpances-dialogo-filosofico.html*, con m no con n

[ ] recuerda que el subgrafo sobre sistemas está por pulir

[ ] escribir *git.html* y enlazar desde *libro-grafo.html*

[ ] añadir: Un tipo por desgracia frecuente de clasificabilidad es el de la cualidad de ser copia, o <dfn>fidedignidad</dfn>. Determinado público valora un dibujo o una pintura en la medida en que calca la realidad, por ejemplo una cara o un animal. Algo análogo ocurre con la música, muchos prefieren que lo tocado reproduzca fielmente determinada grabación

[ ] Redactar *the-best-in-the-world.html*

[ ] Redactar *orden-de-palabras.html*: dictado por la sintaxis o por la semántica

[ ] Redactar *empatia.html* y enlazar desde *recursos.html* y desde *opuestos.html* (recurso frente a empatía)

[ ] Further link *specialization.html*, already linked to from *society.html*

[ ] enlazar: *allan-savory.html"

[ ] enlazar: *mono-atrapado.html" (actualmente sólo desde *religion.html*)

[ ] Now, *people-of-the-lie.html* has become a large page. Plus it is linked to from *spirit.html*, why not from *thought.html*, too?

[ ] escribir: *caja-negra.html* y enlazar bidireccionalmente con *un-sma-es-una-caja-negra.html*

[ ] escribir: *palabras-sesgadas.html*
- estólido
- obstruccionismo
- radical
- progreso

[ ] revisar: *rebelion-de-las-masas.html*

[ ] write: *Sapir-Whorf-Hypothesis.html*, and possibly rename it, it is referenced from *thought.html*

[ ] complete: *CAP.html*

[ ] complete: *cpp.memory.html*

[ ] write: *cpp.unique_ptr.html*, *cpp.shared_ptr.html*, and *cpp.weak_ptr.html*, already linked to from *cpp.memory.html*

[x] write: *cpp.RAII.html*

[ ] escribir: *ver-cal-ext.html* sobre la veracidad, calidad (inteligibilidad, pedagogía) y extensión (cuánto abarca) de un libro

[ ] escribir: *dilema-demanda.html*: muchas profesiones requieren una demanda de sus servicios (relacionar con *demanda-intrinseca-y-extrinseca.html*), una carencia, falta o desgracia en el resto de la sociedad (por ejemplo los bomberos); las soluciones son la autoproducción y la innovación

[ ] escribir: *biblioteca.html*, como un conjunto de libros puede cubrir el conjunto de conocimientos... más o menos bien (especie frente a calidad)

[ ] enlaces a *libro-grafo.html* desde ¿*index.html*?

[ ] completar *presentarse-por-libre.html*, revisar ejemplo de Traductores Jurados y añadir el de los Electricistas

[x] escribir *postverdad.html*

[ ] write on *avidya.html*

[ ] write *erosion.html*, to be linked to from *weathering.html* and *soil.html*

[ ] discuss specific member functions in *cpp.strings.html*

[ ] terminar de redactar *prolog.es.html*

[x] write *weathering.html*, on Mineral Weathering, and link from *farming.html* and *biology.html*

[x] write *soil.html* and link to *weathering.html* and *farming.html*

[ ] añadir sección sobre almacenamiento en *produccion-y-distribucion.html* y enlazarlo con *mercantilismo.html*

[ ] write *climate-change.html*, and link to *food-security.html*, *farming.html*, *population.html*

[ ] write *HTML.tables.html*

[ ] write *science.html*, with class="science"

[ ] write *SMIL.html*

[x] redactar *mercantilismo.html*, actualmente sin contenido

[x] Add *Placer y capricho*

[?] Add *Ilusión, Apetencia y Capricho* from *cyclopaedia.xml*

[ ] `docbook:literal` elements should be translated into existing HTML elements in files *expert-system**.html*. Fortunately, no occurrences are found in *cpp**html*

[x] *ai.html*, on Artificial Intelligence, is incomplete. Specifically, it lacks an introduction (first paragraphs after h1 elements).

[x] *ai.html*, on Artificial Intelligence, also lacks a section on Statistical AI

[ ] Move general CSS attributes out of *svg.common-attributes.html* into *css.***attributes.html*

[x] Añadir atributo `lang="es"` en body of html files

```
sed --in-place 's/^(\s*)<body>/\1<body lang="es">/g' *.html
```

[ ] write CSS for class electronics

[ ] dividir "TheFourInmmeasurables.html" en archivos o en secciones


[ ] decidirnos por una hoja de estilo o por cómo nombrarla, teniendo en cuenta que se pueden incorporar una jerarquía de páginas ya enlazadas de "../zettelkasten_from_HTML/records/" que hacen uso de "stylesheet.css". Las opciones son:

1. Que las páginas en castellano referencien su propia hoja de estilo, o

2. Que el estilo venga dado por el atributo `lang`

(Me decanto por la primera opción. ¿Qué tal *stylesheet.es.css*? No obstante insisto en marcar el elemento `body` con atributos `lang` (`lang="es"`, por ejemplo) y `class` (`class="religion`, por ejemplo)


[ ] "computing science" or "computing science"?


[ ] retocar "poblacion.html"


[ ] añadir páginas sobre estafa piramidal...


[ ] redactar "equilibrio_dinamico.html", a que hace referencia...

[ ] write/redactar "transaction.html", in the context of databases and in interactions
[ ] possibly linked to by "database.html"

[x] Cambiar los enlaces a hojas de estilo con sed (Stream EDitor)



## Cómo cambiar los enlaces a hojas de estilo con sed (Stream EDitor)

Muchas páginas utilizan los siguientes códigos o etiquetas de enlace (no cerradas, por cierto)

1. `<link href="stylesheet.css" rel="stylesheet" title="stylesheet.css"/>`: la más frecuente, ¿qué función tiene el atributo `title`?

2. `<link rel='stylesheet' type="text/css" href="style.css">`: en muchas páginas de las más recientes

3. `<link rel=stylesheet href="style.css" type="text/css" media=screen>`: en *karma.html*, *mente.html*, mal XML si se fijan

4. `<link href="plain-stylesheet.css" rel="stylesheet" title="stylesheet.css"/>`: only in *javascript-skel-graph-of-text-objects.html*

Y la **etiqueta correcta** para todas las páginas en castellano sería:
```
<link rel='stylesheet' type="text/css" href="stylesheet.es.css"\/>
```
De modo que ejecutamos (obsérvese que hemos precedido de `\` todos los caracteres: . \ / que formaban parte del texto, no de la sintaxis de las expresiones regulares):

1. Para la mayoría:
```
sed --in-place 's/<link href="stylesheet\.css" rel="stylesheet" title="stylesheet\.css"\/>/<link rel="stylesheet" type="text\/css" href="stylesheet\.es\.css"\/>/g' *.html
```
2. Para el resto de páginas
```
sed --in-place 's/<link rel='stylesheet' type="text\/css" href="style.css">/<link rel="stylesheet" type="text\/css" href="stylesheet\.es\.css"\/>/g' *.html
```
y

3. Para un puñado (caso de karma.html* y *mente.html*):
```
sed --in-place 's/<link rel=stylesheet href="style\.css" type="text\/css" media=screen>/<link rel="stylesheet" type="text\/css" href="stylesheet\.es\.css"\/>/g' *.html
```


## English pages ( /records)

```
sed --in-place 's/<link href="stylesheet\.css" rel="stylesheet" title="stylesheet\.css"\/>/<link rel="stylesheet" type="text\/css" href="stylesheet\.css"\/>/g' *.html
```
and

```
sed --in-place 's/<link href="\.\.\/FILE_PATH\/FILE_NAME\.css" rel="stylesheet" title="stylesheet\.css"\/>/<link rel="stylesheet" type="text\/css" href="stylesheet\.css"\/>/g' *.html
```


## Por enlazar

[ ] *cyberpunk.en.html* from would-be *cyborg.html*
[ ] *cyberpunk.en.html* from elsewhere

[ ] *instituciones-y-hackers.html*

[x] *morphic-resonance.html* from *science.html*
[ ] *morphic-resonance.html* from elsewhere

[ ] *libretexts.html*

[x] link to *photosynthesis.html* from *plants.html*
[ ] link to *photosynthesis.html* from elsewhere

[x] *never-cry-wolf.html* from *dogs.html*
[ ] *saving-seed.html*

[ ] link to *explanation-and-prediction.html*

[ ] enlazar a *satan.es.html*

[ ] *informacion.html* = Información, desde

[x] enlazar a *tres-tiempos.html* desde *tiempo.html*
[x] enlazar a *tres-tiempos.html* desde *sociedad.html*
<p><a href="tres-tiempos.html">Los Tres Tiempos: primitivo, moderno y postmoderno</a></p>


[ ] *animismo.html*

[x] enlazar a *lenguajes-de-marcado.html* desde *xml.es.html*
[x] enlazar a *lenguajes-de-marcado.html* desde *informatica.html*
[ ] enlazar a *lenguajes-de-marcado.html* desde *lengua.html*
[ ] enlazar a *lenguajes-de-marcado.html* desde
<p><a href="lenguajes-de-marcado.html">Lenguajes de marcado</a></p>

[x] enlazar a *escribo-en-xml.html* desde *proceso-de-escribir.html*
[ ] enlazar a *escribo-en-xml.html* desde *xml.es.html*
[ ] enlazar a *escribo-en-xml.html* desde *como-escribir.html*
<p><a            href="escribo-en-xml.html">(Porqué) escribo en XML (eXtensible Mark-up Language)</a></p>

[ ] enlazar a *xml.es.html* (también existe *xml.en.html*)
<p><a            href="xml.es.html">Un lenguaje general sobre marcado: XML (eXtensible Mark-up Language)</a></p>

[ ] enlazar a *revolucion-verde.html* desde *agricultura.html*, *agriculturas.html* *poblacion.html*

[x] link to *wordnet.html* (WordNET: a large lexical database of English) from *linguistics.html*
[ ] link to *wordnet.html* (WordNET: a large lexical database of English) from would-be *semantics.html*
[ ] link to *wordnet.html* (WordNET: a large lexical database of English) from would-be *SemanticWeb.html*

[x] *streaming.html* from *networking.html*
[ ] *streaming.html* from elsewhere

[x] enlazar *libertad.html* desde *politica.html*
[ ] enlazar *libertad.html* desde *orden.html*


[ ] *mapas-conceptuales.html*, desde *conceptos.html*

[x] *conceptos.html*, desde *pensamientos.html*
[ ] *conceptos.html*, desde *logica.html*
[ ] *conceptos.html*, desde *razon.html*

[x] *lankavatarasutra.revulsion.html* from *buddhism.html*

[x] *catarsis.es.html*, desde *religion.html*
[ ] *catarsis.es.html*, desde ???
[ ] *catarsis.es.html*, desde ???

[ ] *invasion-de-ucrania.html*

[ ] *politica.html*, desde *pensamientos.html*
[x] *anarquismo.html*, desde *politica.html*
[ ] *anarquismo.html*, desde *?.html*

[x] *linkage-and-scope.html*, from *programming.html*
[x] *linkage-and-scope.html*, from *c.html*
[x] *linkage-and-scope.html*, from *cpp.html*

[ ] *memoria.html*

[ ] *knowledge-and-intelligence.html* from *knowledge-representation.html*

[x] *couchdb.html* from *json.html*
[ ] *couchdb.html* from *nosql.html*
[ ] *couchdb.html* from *mongodb.html*

[ ] *mongodb.atlas.html*

[ ] *potencias-del-alma.html*, después de escribir, vide "<para>MEMORIA, ENTENDIMIENTO y VOLUNTAD, son [...] </para>" en cyclopaedia.xml
[ ] *memoria.html*, después de escribir

[ ] *chelation.html*
[ ] *ferric-EDTA.html*, related to chelates
[x] *chlorosis.html* from *blight.html*
[ ] *chlorosis.html* from *plants.html*

[x] *agenda.html* (no enlazar)

[x] *okra.es.html* desde *agricultura.html*

[x] *taproot.html*, from *biology.html*
[ ] *taproot.html*, from elsewhere

[x] *libros-censurados.html* desde *literatura.html*
[ ] *libros-censurados.html* desde otras páginas

[x] *linguistics.classifier.html*

[x] to *linux.swap.html*, from *linux.html*
[ ] to *linux.swap.html*, from *os.html*

link to *tansy.html*,
[x] from *how-to-grow.html*
[ ] from elsewhere: ...
[ ] from elsewhere: ...
[ ] from elsewhere: ...

[x] link to *reed-beds.html* from *permaculture.html*
[ ] link to *reed-beds.html* from elsewhere


*cpp.regexp.html* from:
[x] *regexp.html*,
[x] *cpp.strings.html*, and
[x] *cpp.stl.html*

[x] *sqlite.vacuum.html* from *sqlite.sqlite3.html*, *sqlite.dump.html* etc.

[ ] *trabajo.html*, desde *pensamientos.html*

[ ] *gig-economy.html*, from *society.html*

[ ] *example2.sable*, *example1.sable* and any other DOCTYPE SABLE file should be linked to from festival pages

[x] *kokoro-alt.html*, desde *religion.html* y desde *arrepentimiento.html*

[ ] *musica.voyage.html*

[ ] *matrix.html*

[ ] *biophilia.html*, to be linked to from *biology.html*, would-be *ecology.html*

[ ] *tres-esferas.html* (del elemento con xml::id="tres_esferas" en grafo_de_HTML.xml)

[ ] *Year-of-No-Garbage_Eve-O-Schaub.html*: link and classify as nature (for example: class="nature")

[ ] *end-of-normal.html*

[x] *your-anti-cartesian-life.html*: from *thought.html*

- *y-mis-bajos.html*, que estaba en *index.html*

- *transhumanismo.html*

- *paradoja-del-jugador.html*

- *koyaanisqatsi.html*

- *exponencial.html*

- *black_box.html*

- *ai.black_box.html*

- *ai.why-ai-black-boxes-matter.html* is actually a follow up of *ai.black_box.html*, but before linking it as such its style should be edited to avoid charges of plagearism.

- *ic.html*, already linked from *black_box.html*

- *pensamientos.html* (only linked to by *hombre-eterno.html*)

- *generos-novela-contemporaneos.html* (sólo pergueñado)

- *fidelizacion.html*

- *hombre-eterno.html*

- *pma-tractores.html*

- *queja.2.html* (incomplete, from "grafo_de_HTML.xml", a veritable litany)

- *produccion-y-distribucion.html* (only linked from main in *origen-del-mal.html*)

- *cutoff-freq.html*, related to *electronics.cutoff-freq.html*

- *capitalismo.html*

- *situacion-tipo.html*

- *agregaciones.html*, actually it is linked to by *economia.html*

- *biology.html*


## Dentro de oposiciones, por crear o redactar (igual existe el archivo, pero sin párrafos)

- *oposiciones.html*
- *absoluto-relativo.html*
- *empirico-teorico.html*
- *religion-politica.html*
- *implicito-explicito.html*, como en función implícita
- *analisis-sintesis.html*
- *dionisiaco-apolineo.html*
- *intrinseco-y-extrinseco.html*
   [ ] hablar de semiconductores Intrínsecos y extrínsecos
   El silicio (Si) presenta cuatro electrones en su última capa, que en un cristal de silicio entran en enlace covalente con los de sus átomos vecinos de modo que no queda ningún electrón libre para la conducción salvo los generados térmicamente...

## Por escribir (igual existe el archivo, pero sin párrafos)

- *css.media-query.html*

- *ser-en-potencia-y-en-acto.html*

- *demanda-intrinseca-y-extrinseca.html* necesita lima y correcciones

- *aporofobia.html*

- *funciones.html*, y hablar de implícitas, analíticas...

- *funciones-analiticas.html*

- *relaciones-cualitativas-y-cuantitativas*

- *reacciones-en-cadena.html*

- *chain-reaction*

- *explosiones.html*

- *equilibrio_dinamico.html*

- *erradicar-la-pobreza.html*

- *fidelizacion-macroeconomica.html* tiende a ser demasiado politizada

- *oop.html*

- *cpp.cpp11.html* (onlye contains some links)

- *cpp.slicing.html*


### In-place Substitution

Use sed switch `--in-place`
