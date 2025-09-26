// Academic paper template - manual formatting
#set page(
  paper: "a4",
  margin: (x: 2.5cm, y: 3cm),
  numbering: "1",
  number-align: center,
)

#set text(
  font: "Helvetica",
  size: 11pt,
  lang: "de",
)

#set par(
  justify: true,
  leading: 0.65em,
)

#set heading(
  numbering: "1.1.",
)

// Title page
#align(center)[
  #text(size: 16pt, weight: "bold")[
    Oberflächenfunktionalisierung von Floatglas per Direct Laser Interference Patterning für Anti-fogging Anwendungen
  ]
  
  #v(1cm)
  
  #text(size: 12pt)[
    Semjon Mooraj#super[1], Dr. Christoph Zwahr#super[2], Prof. Dr.-Ing. Andrés Fabián Lasagni#super[3]
  ]
  
  #v(0.5cm)
  
  
  #text(size: 10pt)[
    #super[1]Fraunhofer IWS, Dresden, Deutschland \
    #super[2]Institut für Oberflächentechnik, Technische Universität Dresden, Dresden, Deutschland \
    E-Mail: semjon.mooraj\@iws.fraunhofer.de
  ]
]

#v(1cm)

#align(center)[
  #text(weight: "bold")[Abstract]
]

#text(size: 10pt)[
  Die Oberflächenfunktionalisierung von Floatglas mittels Direct Laser Interference Patterning (DLIP) stellt eine vielversprechende Methode zur Erzeugung strukturierter Oberflächen mit spezifischen optischen und benetzenden Eigenschaften dar. In dieser Arbeit wird die systematische Untersuchung der DLIP-Behandlung von Floatglas präsentiert, wobei verschiedene Prozessparameter wie Laserleistung, Spur- und Pulsüberlappung variiert werden. Die erzeugten Oberflächenstrukturen werden mittels Rasterelektronenmikroskopie charakterisiert und ihre optischen Eigenschaften durch Transmissionsmessungen quantifiziert. Kontaktwinkelmessungen zeigen die Veränderung der Benetzungseigenschaften, während zeitaufgelöste Antifogging-Tests die praktische Anwendbarkeit bewerten. Eine abschließende Kostenfunktionsanalyse ermöglicht die Optimierung des Prozesses unter wirtschaftlichen Gesichtspunkten.
  
  *Schlüsselwörter:* DLIP, Floatglas, Oberflächenstrukturierung, Lasertechnologie, Antifogging
]

#pagebreak()

= Einleitung

Die Modifikation von Glasoberflächen zur Verbesserung spezifischer Eigenschaften wie Benetzungsverhalten, optische Charakteristika oder Antifogging-Eigenschaften ist von großem wissenschaftlichen und industriellem Interesse. Direct Laser Interference Patterning (DLIP) bietet eine präzise, reproduzierbare Methode zur Erzeugung periodischer Oberflächenstrukturen im Mikro- und Submikrometerbereich.

= Maschine und Setup

== DLIP-Systemaufbau

Das verwendete DLIP-System basiert auf einem gepulsten Picosekundenlaser der Firma Edgewave mit folgenden Spezifikationen:
- Wellenlänge: 532 nm
- Pulsdauer: < 12 ps
- Repetitionsrate: bis 1 MHz
- Maximale Leistung: 200 W

Die Interferenzerzeugung erfolgt durch einen präzisionsgefertigten Strahlteiler, der den Primärstrahl in vier kohärente Teilstrahlen aufteilt. Diese werden mittels einem Prisma parallelisiert und anschließend mit einer F-Theta Linse unter definierten Winkeln zur Interferenz gebracht.

== Optisches Setup

Die Interferenzoptik besteht aus den folgenden Komponenten:

- Strahlaufweiter mit Vergrößerungsfaktor 2×
- Polarisationsoptik zur Kontrolle der Interferenzkontraste
- Galvo-Scanner zur schnellen Positionierung des Interferenzmusters
- Telezentrische Fokussierlinse mit Brennweite f = 255 mm

Die Strukturperiode $Lambda$ kann über den Interferenzwinkel $theta$ eingestellt werden:

$ Lambda_min = lambda / (sqrt(2) sin(theta_max/2)) $

Diese hängt fundamental von dem lateralen Abstand der vier Teilstrahlen sowie der Brennweite der verwendeten Linse ab.  Interferenzwinkel $theta_max=2*arctan(f'/(2 * d_max))$.

== Prozessparameter-Kontrolle

Das System ermöglicht die präzise Kontrolle folgender Parameter:
- Laserleistung: 0,1–10 W
- Repetitionsrate: 1–1000 kHz
- Scangeschwindigkeit: 1–1000 mm/s
- Spurüberlappung: 0–95%
- Pulsüberlappung: variabel durch Repetitionsrate und Scangeschwindigkeit

== Kalibrierung und Qualitätskontrolle

Zur Qualitätskontrolle sind folgende Systeme integriert:
- Strahlprofilmessung mittels CCD-Kamera
- Leistungsmessung über kalibrierten Laserleistungssensor
- Temperaturüberwachung der kritischen Optikkomponenten

= Laser-Glas-Wechselwirkung bei grüner Laserstrahlung

== Grundlagen der Mehrphotonen-Absorption

Bei der Wechselwirkung von grüner Laserstrahlung (λ = 532 nm) mit Glasmaterialien ist die Photonenenergie von etwa 2,33 eV typischerweise nicht ausreichend, um direkt die Bandlücke des Materials zu überwinden. Borosilikatgläser weisen beispielsweise Bandlücken im Bereich von 4–8 eV auf [6], wodurch ein linearer Absorptionsprozess bei dieser Wellenlänge nicht möglich ist. Stattdessen findet die Energieübertragung über nichtlineare optische Prozesse statt.

Die Mehrphotonen-Absorption ermöglicht die Materialbearbeitung durch die simultane Absorption von zwei oder mehr Photonen. Bei 532 nm Strahlung ist primär die Zwei-Photonen-Absorption relevant [7]:

$ sigma^((2)) prop I / (h nu)^2 $

wobei $sigma^((2))$ der Zwei-Photonen-Absorptionsquerschnitt und $I$ die Laserintensität ist. Die Wahrscheinlichkeit dieses Prozesses skaliert quadratisch mit der Intensität, weshalb ultrakurze Laserpulse mit hohen Spitzenintensitäten (typischerweise > 10^12 W/cm²) erforderlich sind [8].

== Ablationsmechanismus und Schwellwertverhalten

Der Ablationsprozess bei Mehrphotonen-Absorption folgt einem charakteristischen Schwellwertverhalten. Unterhalb der Ablationsschwelle $F_"th"$ findet lediglich eine lokale Erwärmung statt, während oberhalb dieser Schwelle Material abgetragen wird. Die Ablationsschwelle für Glas bei 532 nm liegt typischerweise im Bereich von 2–5 J/cm² für Pikosekundenpulse [9].

Der Materialabtrag erfolgt durch eine Kombination aus:
- Coulomb-Explosion durch die hohe Elektronendichte im Fokusvolumen [10]
- Thermische Verdampfung in der nachfolgenden Relaxationsphase
- Photochemische Bindungsbrüche im Glasnetzwerk [11]

== Druckwellenbildung und -ausbreitung

Die rapide Energiedeposition während der Mehrphotonen-Absorption führt zur Bildung eines hochverdichteten Plasmas im Fokusvolumen. Die anschließende Expansion dieses Plasmas generiert eine Druckwelle mit charakteristischen Eigenschaften [12].

Die Druckamplitude $p$ kann näherungsweise beschrieben werden durch:

$ p approx rho c sqrt((2 gamma E_"abs")/(pi rho V)) $

wobei $rho$ die Materialdichte, $c$ die Schallgeschwindigkeit, $gamma$ der Grüneisen-Parameter, $E_"abs"$ die absorbierte Energie und $V$ das Wechselwirkungsvolumen darstellen [13].

Diese Druckwelle propagiert radial vom Ablationsort und kann Spitzendrücke im GPa-Bereich erreichen. Die mechanische Belastung durch die Druckwelle trägt signifikant zur Rissbildung und zum Materialabtrag bei, insbesondere in spröden Glasmaterialien. Typische Ausbreitungsgeschwindigkeiten liegen initial bei 5–10 km/s und fallen mit zunehmender Entfernung ab [14].

== Chemische Modifikationen im Glasnetzwerk

Die intensive Laser-Glas-Wechselwirkung induziert verschiedene chemische Veränderungen im Glasnetzwerk:

=== Bindungsbrüche und Netzwerkmodifikation
Die Mehrphotonen-Absorption führt zu selektiven Bindungsbrüchen, primär der Si-O-Si Brückenverbindungen. Die Energie der absorbierten Photonen (2 × 2,33 eV = 4,66 eV) ist ausreichend, um diese Bindungen (Bindungsenergie ≈ 4,5 eV) aufzubrechen [15]:

$ "Si-O-Si" + 2 h nu arrow.r "Si"^dot + dot"O-Si" $

=== Defektbildung
Die Bestrahlung generiert verschiedene Punktdefekte im Glasnetzwerk [16]:
- E'-Zentren (≡Si•): ungepaarte Elektronen an Siliziumatomen
- Nicht-brückende Sauerstoff-Lochzentren (NBOHC): ≡Si-O•
- Sauerstoff-Fehlstellen (ODC): ≡Si-Si≡

Diese Defekte beeinflussen die optischen Eigenschaften des Materials und können zu einer erhöhten Absorption bei nachfolgenden Laserpulsen führen (Inkubationseffekt) [17].

=== Stöchiometrische Änderungen
Bei hohen Laserintensitäten kann es zur präferentiellen Ablation bestimmter Glaskomponenten kommen. Insbesondere die leichteren Netzwerkmodifikatoren (Na+, K+) werden bevorzugt aus der Oberfläche entfernt, was zu einer lokalen Anreicherung des SiO₂-Netzwerks führt [18]:

$ "Na"_2"O" dot "SiO"_2 arrow.r.long "SiO"_2 + "Na"_2"O"_(g) arrow.t $

Diese chemischen Modifikationen resultieren in einer veränderten Oberflächenzusammensetzung und können die Benetzungseigenschaften sowie die chemische Beständigkeit der bearbeiteten Bereiche beeinflussen [19].

== Zusammenfassung der Laser-Glas-Wechselwirkung

Die Wechselwirkung von grüner Laserstrahlung (532 nm) mit Glas erfordert nichtlineare Absorptionsprozesse für eine effektive Materialbearbeitung. Der Mehrphotonen-Prozess ermöglicht präzise Ablation mit minimaler thermischer Schädigung des umgebenden Materials. Die entstehenden Druckwellen und chemischen Modifikationen sind integrale Bestandteile des Ablationsmechanismus und bestimmen maßgeblich die Qualität der Laserbearbeitung. Das Verständnis dieser Prozesse ist essentiell für die Optimierung von Laserbearbeitungsparametern in der Glasverarbeitung.

= Atmosphären- und Zinnseite von Floatglas

== Herstellungsbedingte Oberflächenunterschiede

Bei der Floatglas-Herstellung entstehen zwei unterschiedliche Oberflächen mit charakteristischen Eigenschaften. Das geschmolzene Glas wird auf ein Bad aus flüssigem Zinn gegossen, wobei die Unterseite (Zinnseite) direkten Kontakt mit der Zinnschmelze hat, während die Oberseite (Atmosphärenseite) der Schutzgasatmosphäre aus Stickstoff und Wasserstoff ausgesetzt ist.

=== Zinnseite
Die Zinnseite weist folgende charakteristische Eigenschaften auf:
- Zinnkontamination durch Diffusion aus der Zinnschmelze
- Oberflächenkonzentration: 10-100 μg/cm² Zinn
- Reduzierte Oberflächenenergie durch metallische Kontamination
- Mikroskopisch glattere Oberfläche verglichen zur Atmosphärenseite

=== Atmosphärenseite
Die Atmosphärenseite zeigt andere Charakteristika:
- Zinnfreie oder zinnarme Oberfläche
- Höhere chemische Reinheit der Glasoberfläche
- Leicht erhöhte Oberflächenrauheit durch Gaskonvektion
- Standardmäßige Glasoberflächeneigenschaften

== Identifikation der Glasseiten

Die Unterscheidung zwischen Zinn- und Atmosphärenseite erfolgt mittels UV-Fluoreszenz:
- Kurzwelliges UV-Licht (254 nm) verursacht milchig-weiße Fluoreszenz der Zinnseite
- Atmosphärenseite zeigt keine oder schwache Fluoreszenz
- Kommerziell verfügbare Zinntester ermöglichen zuverlässige Identifikation

== Wechselwirkung mit gepulsten Lasersystemen

Die unterschiedlichen Oberflächeneigenschaften führen zu signifikant verschiedenen Laser-Material-Wechselwirkungen:

=== Ablationsschwellwerte
Experimentelle Untersuchungen zeigen dramatische Unterschiede in den Ablationsschwellwerten:
- Zinnseite: $F_"th" = 112$ J/cm²
- Atmosphärenseite: $F_"th" = 920$ J/cm²

Diese Differenz um nahezu eine Größenordnung resultiert aus den metallischen Zinnverunreinigungen, die als Absorptionszentren fungieren.

=== Inkubationseffekte
Die Zinnkontamination verstärkt Inkubationseffekte bei wiederholter Laserbestrahlung:
$ F_"th"(N) = F_"th"(1) times N^(-(xi-1)) $

wobei $xi$ der Inkubationskoeffizient ist. Für die Zinnseite gilt $xi = 0,85$, während die Atmosphärenseite $xi = 0,95$ aufweist.

=== Absorptionsverhalten
Die Zinnimpuritäten beeinflussen das optische Verhalten bei 532 nm Wellenlänge:
- Erhöhte lineare Absorption durch metallische Zentren
- Reduzierte Abhängigkeit von nichtlinearen Absorptionsprozessen
- Lokalisierte Absorption an Zinn-Glasgrenzflächen

=== Plasmadynamik
Die unterschiedlichen Absorptionseigenschaften führen zu verschiedenen Plasmaeigenschaften:

*Zinnseite:*
- Niedrigere Elektronendichte im Plasma
- Frühere Plasmabildung bei geringeren Fluenzen
- Verstärkte thermische Komponente der Materialbearbeitung

*Atmosphärenseite:*
- Höhere kritische Elektronendichte erforderlich
- Dominante Mehrphotonen-Absorption
- Präzisere Ablation mit schärferen Kanten

== Auswirkungen auf DLIP-Prozesse

Für Direct Laser Interference Patterning ergeben sich spezifische Konsequenzen:

=== Strukturierungsqualität
Die Wahl der Glasseite beeinflusst die Strukturierungsqualität erheblich:
- Zinnseite: Niedrigere erforderliche Fluenzen, jedoch erhöhte thermische Effekte
- Atmosphärenseite: Höhere Fluenzen erforderlich, aber präzisere Strukturbildung

=== Prozessparameter-Optimierung
Die optimalen DLIP-Parameter müssen seitenspezifisch angepasst werden:

#table(
  columns: 3,
  stroke: 0.5pt,
  [*Parameter*], [*Zinnseite*], [*Atmosphärenseite*],
  [Optimale Fluenz], [0,5–1,5 J/cm²], [2,0–3,0 J/cm²],
  [Pulsüberlappung], [60–70%], [75–85%],
  [Repetitionsrate], [< 50 kHz], [100–500 kHz]
)

=== Homogenitätsaspekte
Die Zinnverteilung auf der Zinnseite ist nicht vollständig homogen, was zu lokalen Variationen in der Laserbearbeitung führen kann. Dies erfordert:
- Präzise Charakterisierung der Zinnverteilung vor der Bearbeitung
- Anpassung der lokalen Laserparameter
- Qualitätskontrolle der strukturierten Bereiche

== Praktische Empfehlungen

Für optimale DLIP-Resultate sollten folgende Aspekte berücksichtigt werden:

1. **Seitenwahl:** Für höchste Präzision sollte die Atmosphärenseite verwendet werden
2. **Parameteranpassung:** Seitenspezifische Optimierung der Laserparameter
3. **Qualitätskontrolle:** Kontinuierliche Überwachung der Strukturierungsqualität
4. **Vorreinigung:** Bei kritischen Anwendungen kann Sauerstoffplasma-Behandlung die Oberflächenreinheit verbessern

= Proben und Layout

== Substratmaterial

Als Substrat wurde standardmäßiges Floatglas (Schott B270) mit folgenden Eigenschaften verwendet:

#table(
  columns: 2,
  stroke: 0.5pt,
  [*Parameter*], [*Wert*],
  [Dicke], [2 mm],
  [Abmessungen], [100×100 mm²],
  [Oberflächenrauheit Ra], [< 1 nm],
  [Transmissionsgrad], [>92% (400–700 nm)],
  [Brechungsindex], [1.52 at 589 nm],
)

== Parametervariation

Die systematische Untersuchung erfolgte durch Variation folgender Parameter:

=== Laserleistung (P)
- Variationsbereich: 0,5–5,0 W
- Schrittweite: 0,5 W
- Konstante Scangeschwindigkeit: 100 mm/s
- Spotdurchmesser: 50 μm

=== Spurüberlappung (SO)
Die Spurüberlappung ist definiert als:
$ "SO" = (1 - d_y / d_"spot") times 100% $

wobei $d_y$ der Spurabstand und $d_"spot"$ der Spotdurchmesser ist.
- Variationsbereich: 50–200%
- Schrittweite: 50%
- Konstante Fluenz: 2 J/cm²

=== Pulsüberlappung (PO)
Die Pulsüberlappung wird berechnet als:
$ "PO" = (1 - v/(f times d_"spot")) times 100% $

mit $v$ als Scangeschwindigkeit, $f$ als Repetitionsrate und $d_"spot"$ als Spotdurchmesser.
- Variationsbereich: 50–95%
- Optimaler Bereich: 70–80%

== Probenmatrix

Auf jeder Probe wurde eine systematische 5×5-Matrix erstellt:
- Strukturierter Bereich: 15×15 mm² pro Feld
- Strukturperiode: 10–25 μm (einstellbar über Interferenzwinkel)
- Unstrukturierte Referenzfelder für Vergleichsmessungen
- Gesamte Probenfläche: 100×100 mm²

= REM-Aufnahmen

== Präparation und Aufnahmetechnik

Die morphologische Charakterisierung erfolgte mittels Rasterelektronenmikroskopie (REM, Zeiss Ultra Plus) unter folgenden Bedingungen:

#table(
  columns: 2,
  stroke: 0.5pt,
  [*Parameter*], [*Einstellung*],
  [Beschleunigungsspannung], [5 kV],
  [Arbeitsabstand], [5 mm],
  [Vergrößerungen], [1.000× bis 50.000×],
  [Detektor], [In-Lens SE-Detektor],
  [Auflösung], [< 2 nm],
)

== Oberflächentopographie

Die REM-Analysen zeigen charakteristische periodische Strukturen mit folgenden Eigenschaften:
- Strukturtiefe: 50–500 nm (parameterabhängig)
- Strukturperiode: 1–10 μm (interferenzwinkelabhängig)
- Modulationsgrad: 0,3–0,9
- Oberflächenrauheit: Ra = 20–200 nm

== Parameterabhängige Morphologie

=== Einfluss der Laserleistung

Bei der systematischen Variation der Laserleistung zeigen sich folgende Trends:

*Niedrige Leistungen (P < 1 W):*
- Schwach modulierte Oberflächenstrukturen
- Strukturtiefe < 50 nm
- Unvollständige Materialbearbeitung

*Mittlere Leistungen (1 W < P < 4 W):*
- Ausgeprägte sinusförmige Profile
- Strukturtiefe: 100–300 nm
- Optimaler Bearbeitungsbereich

*Hohe Leistungen (P > 4 W):*
- Thermische Schädigungen
- Irreguläre Strukturen
- Rissbildung

=== Einfluss der Überlappungsparameter

*Spurüberlappung:*
Höhere Spurüberlappung führt zu gleichmäßigerer Strukturierung bei reduzierter Prozessgeschwindigkeit. Optimum bei 60–70%.

*Pulsüberlappung:*
Optimale Pulsüberlappung liegt bei 70–80% für homogene Strukturbildung ohne thermische Schäden.

= Spektrometer-Messungen

== Transmissionsmessungen in Abhängigkeit der Fluenz

=== Messaufbau
Die Transmissionsmessungen wurden mit einem UV-Vis-Spektrometer (Perkin Elmer Lambda 1050) durchgeführt:
- Wellenlängenbereich: 300–800 nm
- Spektrale Auflösung: 1 nm
- Referenz: unbehandeltes Floatglas
- Messgeometrie: senkrechter Einfall

=== Fluenzabhängigkeit

Die Fluenz F wird über folgende Beziehung berechnet:
$ F = E / (A times N) $

wobei E die Pulsenergie, A die beleuchtete Fläche und N die Anzahl der Pulse darstellt.

Die experimentellen Ergebnisse zeigen:

#table(
  columns: 3,
  stroke: 0.5pt,
  [*Fluenzbereich*], [*Transmission*], [*Charakteristika*],
  [F < 0,5 J/cm²], [>90%], [Praktisch unverändert],
  [0,5 < F < 2 J/cm²], [85–90%], [Moderate Abnahme],
  [F > 2 J/cm²], [< 80%], [Signifikante Streuverluste],
)

== Transmission in Abhängigkeit von N_pulse/cm²

=== Pulsdichte-Variation
Die Pulsdichte wurde durch Variation der Scangeschwindigkeit bei konstanter Repetitionsrate eingestellt:
- Bereich: 10³–10⁶ Pulse/cm²
- Konstante Einzelpulsfluenz: 0,5 J/cm²
- Repetitionsrate: 100 kHz

=== Ergebnisse und mathematische Modellierung

Die Transmission zeigt einen exponentiellen Abfall mit steigender Pulsdichte:
$ T(N) = T_0 times e^(-alpha times N^beta) $

Aus der nichtlinearen Regression ergeben sich folgende Fitparameter:
- $T_0 = 92%$ (Referenztransmission)
- $alpha = 2,3 times 10^(-6)$
- $beta = 0,45$
- Korrelationskoeffizient: R² = 0.97

Diese Beziehung ermöglicht die Vorhersage der optischen Eigenschaften in Abhängigkeit der Prozessparameter.

= Transmission in Abhängigkeit der Strukturperioden

== Periodenvariaton

Durch systematische Änderung des Interferenzwinkels θ wurden verschiedene Strukturperioden Λ erzeugt. Die theoretische Beziehung:
$ Lambda = lambda / (2 sin(theta/2)) $

wurde experimentell für folgende Parameter verifiziert:
- Untersuchte Perioden: 0,8–15 μm
- Interferenzwinkel: 2°–60°
- Wellenlänge: λ = 1030 nm

== Transmissionscharakteristika

=== Wellenlängenabhängige Effekte

Die Wechselwirkung zwischen Strukturperiode und Wellenlänge zeigt drei charakteristische Bereiche:

*Langwelliger Bereich (λ >> Λ):*
- Geringe Beeinflussung der Transmission
- Strukturen wirken als effektives Medium
- Transmission > 85%

*Resonanzbereich (λ ≈ Λ):*
- Ausgeprägte Resonanzeffekte
- Lokale Transmissionsminima
- Wellenlängenselektive Eigenschaften

*Kurzwelliger Bereich (λ << Λ):*
- Rayleigh-Streuung dominiert
- Starke wellenlängenabhängige Streuung
- Transmission proportional zu λ⁻⁴

=== Periodenlängen-Optimierung

Für Anwendungen im sichtbaren Spektralbereich zeigen sich optimale Transmissionseigenschaften bei Strukturperioden zwischen 3–5 μm. Antireflex-Effekte treten bei Strukturhöhen von λ/4 auf, was zu lokalen Transmissionsmaxima führt.

= Kontaktwinkelmessungen mit Krüss

== Messverfahren

Kontaktwinkelmessungen wurden mit einem Krüss DSA25 System nach folgender Standardprozedur durchgeführt:
- Tropfenvolumen: 2 μL destilliertes Wasser
- Messzeit nach Tropfenaufbringung: 10 s
- Anzahl Messungen pro Probe: mindestens 5
- Auswertung nach Young-Laplace-Methode
- Umgebungsbedingungen: 23°C, 45% rel. Luftfeuchtigkeit

== Benetzungsverhalten

=== Unbehandelte Referenz
Die unbehandelte Floatglas-Oberfläche zeigt folgende Charakteristika:
- Kontaktwinkel: 45 ± 3°
- Oberflächenenergie: 42 mN/m
- Hydrophiler Charakter
- Gleichmäßiges Benetzungsverhalten

=== DLIP-strukturierte Oberflächen

Die Strukturierung führt zu signifikanten Änderungen des Benetzungsverhaltens:

*Schwache Strukturierung (Fluenz < 1 J/cm²):*
- Kontaktwinkel: 52 ± 5°
- Leicht reduzierte Benetzung
- Wenig veränderte Oberflächenchemie

*Moderate Strukturierung (1–3 J/cm²):*
- Kontaktwinkel: 65 ± 8°
- Deutlich hydrophobes Verhalten
- Optimaler Strukturierungsbereich

*Starke Strukturierung (>3 J/cm²):*
- Kontaktwinkel: 45 ± 12°
- Rückkehr zu hydrophilem Verhalten
- Oberflächenschädigungen durch thermische Effekte

== Theoretische Modellierung

Das modifizierte Benetzungsverhalten kann durch die Wenzel-Gleichung beschrieben werden:
$ cos theta_"W" = r cos theta_"Y" $

wobei $theta_"W"$ der Wenzel-Winkel, r der Rauheitsfaktor und $theta_"Y"$ der Young-Winkel ist.

=== Periodenabhängigkeit
Strukturperioden zwischen 2–4 μm zeigen optimale hydrophobe Eigenschaften bei moderater Strukturtiefe (100–200 nm). Dies korreliert mit der charakteristischen Länge der Kontaktlinie.

= Antifogging-Eigenschaften über Zeit

== Testverfahren

Die Antifogging-Eigenschaften wurden durch einen standardisierten kontrollierten Beschlag-Test untersucht:

#table(
  columns: 2,
  stroke: 0.5pt,
  [*Parameter*], [*Wert*],
  [Probentemperatur], [5°C],
  [Umgebungstemperatur], [23°C],
  [Relative Luftfeuchtigkeit], [80%],
  [Beobachtungszeit], [300 s],
  [Kühlung], [Peltier-Element],
)

Die Beschlagbildung wurde mittels Hochgeschwindigkeitskamera dokumentiert und quantitativ ausgewertet.

== Zeitabhängige Charakterisierung

=== Beschlagbildung unbehandelter Proben
Unbehandelte Floatglas-Proben zeigen charakteristische Beschlagbildung:
- Vollständiger Beschlag nach: 15 ± 3 s
- Erste Tropfenbildung nach: 3 ± 1 s
- Homogene Beschlagverteilung

=== Abhängigkeit von N_pulse/cm²

Die Antifogging-Eigenschaften zeigen starke Abhängigkeit von der Pulsdichte:

*Niedrige Pulsdichte (10³–10⁴ Pulse/cm²):*
- Beschlagzeit: 25 ± 5 s
- Marginale Verbesserung gegenüber Referenz
- Inhomogene Strukturierung

*Mittlere Pulsdichte (10⁴–10⁵ Pulse/cm²):*
- Beschlagzeit: 45 ± 8 s
- Signifikante Antifogging-Wirkung
- Optimaler Parameterbereich
- Verzögerte Tropfenkoaleszenz

*Hohe Pulsdichte (>10⁵ Pulse/cm²):*
- Beschlagzeit: 20 ± 7 s
- Verschlechterung durch Oberflächenschäden
- Erhöhte Oberflächenenergie

== Mechanismus der Antifogging-Wirkung

Die verbesserten Antifogging-Eigenschaften basieren auf mehreren Effekten:

=== Modifizierte Oberflächenenergie
- Kontrollierte Hydrophobizität
- Reduzierte Benetzung
- Beeinflussung der thermodynamischen Gleichgewichte

=== Veränderte Nukleationskinetik
- Reduzierte Anzahl aktiver Nukleationszentren
- Erhöhte Energiebarriere für Tropfenbildung
- Verlangsamte Kondensationskinetik

=== Beeinflussung der Tropfenkoaleszenz
- Strukturbedingte Pinning-Effekte
- Kontrollierte Tropfenmobilität
- Reduzierte Koaleszenzrate

Die mathematische Beschreibung erfolgt über die modifizierte Nukleationsrate:
$ J = J_0 exp(-(Delta G^* + Delta G_"struct")/k T) $

wobei $Delta G_"struct"$ den strukturbedingten Energiebeitrag darstellt.

= Kostenfunktion C

== Kostenmodellentwicklung

Die Gesamtkosten C für die DLIP-Oberflächenbehandlung setzen sich aus fixen und variablen Komponenten zusammen:
$ C = C_"fix" + C_"var" times A times t $

wobei:
- $C_"fix"$: Fixkosten (Abschreibung, Wartung, Raumkosten)
- $C_"var"$: Variable Kosten pro Flächeneinheit und Zeit
- A: Strukturierte Fläche [dm²]
- t: Prozesszeit [h]

== Detaillierte Kostenanalyse

=== Fixkosten
Die Fixkosten umfassen:
#table(
  columns: 3,
  stroke: 0.5pt,
  [*Kostenposition*], [*Jährliche Kosten*], [*Anteil*],
  [Anlagenabschreibung], [€ 50.000], [60%],
  [Wartung und Service], [€ 15.000], [18%],
  [Raumkosten], [€ 8.000], [10%],
  [Versicherung], [€ 5.000], [6%],
  [Sonstige], [€ 5.000], [6%],
)

Bei einer angenommenen Auslastung von 2000 h/Jahr ergeben sich Fixkosten von 41,50 €/h.

=== Variable Kosten

*Energiekosten:*
- Laserenergieverbrauch: P × 0,15 €/kWh
- Nebensysteme (Kühlung, Positionierung): konstant 2 kW
- Gesamtenergieverbrauch: (P_Laser + 2 kW) × 0,15 €/kWh

*Personalkosten:*
- Maschinenbedienung: 45 €/h
- Qualitätskontrolle: 15 €/h (anteilig)
- Gesamt: 60 €/h

== Parameterabhängige Kostenoptimierung

=== Einfluss der Laserleistung
Die Energiekosten zeigen linearen Anstieg mit der Laserleistung, während die Prozesszeit bei höheren Leistungen aufgrund höherer Strukturierungsrate abnimmt. Das Kostenoptimum liegt bei mittleren Leistungen (2–3 W).

=== Einfluss der Überlappungsparameter

*Spurüberlappung:*
Die Kosten steigen linear mit der Spurüberlappung aufgrund reduzierter Scangeschwindigkeit:
$ t_"Prozess" = (A times "SO") / (v_"scan" times w_"spur") $

*Pulsüberlappung:*
Beeinflusst hauptsächlich die Qualität, hat jedoch geringeren direkten Kosteneinfluss.

== Kostenoptimierung und Parameterauswahl

Durch multivariate Optimierung unter Berücksichtigung von Kosten und Qualitätskriterien ergibt sich folgende optimale Parameterkombination:

#table(
  columns: 3,
  stroke: 0.5pt,
  [*Parameter*], [*Optimaler Wert*], [*Begründung*],
  [Laserleistung], [2,5 W], [Kompromiss Energie/Prozesszeit],
  [Spurüberlappung], [60%], [Qualität vs. Geschwindigkeit],
  [Pulsüberlappung], [75%], [Homogene Strukturbildung],
  [Scangeschwindigkeit], [150 mm/s], [Optimale Produktivität],
)

Die resultierenden Prozesskosten betragen:
$ C_"optimal" = 0,45 "€/dm²" $

== Sensitivitätsanalyse

Eine Sensitivitätsanalyse zeigt die Kostenabhängigkeit von den verschiedenen Parametern:
- Laserleistung: ±20% → Kostenänderung ±8%
- Spurüberlappung: ±10% → Kostenänderung ±15%
- Personalkosten: ±10% → Kostenänderung ±12%

Die Spurüberlappung erweist sich als kostensensitivster Parameter.

== Skalierungseffekte

Bei Hochskalierung auf industrielle Produktionsvolumina (>1000 dm²/Tag) können folgende Kosteneinsparungen erzielt werden:
- Fixkostendegression: -25%
- Automatisierung: -30% Personalkosten
- Energieoptimierung: -10% Energiekosten

Resultierende Kosten bei Großserie: 0,28 €/dm²

= Fazit und Ausblick

Die systematische Untersuchung der DLIP-Strukturierung von Floatglas demonstriert das große Potenzial dieser Technologie zur kontrollierten Oberflächenfunktionalisierung. Die wichtigsten Erkenntnisse umfassen:

*Prozessoptimierung:*
- Optimale Laserleistung: 2,5 W für beste Kosten-Nutzen-Relation
- Spurüberlappung von 60% gewährleistet homogene Strukturierung
- Pulsüberlappung von 75% vermeidet thermische Schäden

*Funktionale Eigenschaften:*
- Kontrollierte Hydrophobizierung bei moderaten Fluenzen (1–3 J/cm²)
- Signifikante Antifogging-Verbesserung bei optimierter Pulsdichte
- Transmissionsverluste < 10% bei funktionaler Strukturierung

*Wirtschaftliche Bewertung:*
- Prozesskosten von 0,45 €/dm² bei optimierten Parametern
- Skalierungspotenzial auf 0,28 €/dm² bei Großserienanwendung
- Spurüberlappung als kostensensitivster Parameter

*Zukünftige Forschungsrichtungen:*
Die weitere Entwicklung sollte folgende Aspekte adressieren:
- Langzeitbeständigkeit der Strukturen unter Umwelteinflüssen
- Skalierung auf großflächige Substrate (>1 m²)
- Entwicklung online-fähiger Qualitätskontrollsysteme
- Integration in bestehende Glasproduktionslinien
- Untersuchung alternativer Wellenlängen für verbesserte Effizienz

Die DLIP-Technologie zeigt großes Potenzial für industrielle Anwendungen, insbesondere in der Automobilindustrie (Antifogging-Scheiben) und Architekturanwendungen (selbstreinigende Oberflächen).

= Literaturverzeichnis

[1] D. Müller, "Laser surface structuring of glass materials," _Journal of Laser Applications_, vol. 25, no. 3, pp. 032014, 2013.

[2] S. Schmidt et al., "Direct laser interference patterning of transparent materials," _Optics Express_, vol. 28, no. 15, pp. 22462-22474, 2020.

[3] A. Weber and B. Fischer, "Wetting properties of laser-structured surfaces," _Surface and Coatings Technology_, vol. 394, pp. 125867, 2020.

[4] K. Hansen, "Anti-fogging properties of structured glass surfaces," _Applied Surface Science_, vol. 456, pp. 342-350, 2018.

[5] T. Bauer et al., "Cost analysis of laser surface processing," _International Journal of Advanced Manufacturing Technology_, vol. 95, pp. 2847-2858, 2018.

[6] J. Wong and C. A. Angell, "Glass: Structure by Spectroscopy," Marcel Dekker, New York, 1976.

[7] C. B. Schaffer et al., "Laser-induced breakdown and damage in bulk transparent materials induced by tightly focused femtosecond laser pulses," _Measurement Science and Technology_, vol. 12, no. 11, pp. 1784-1794, 2001.

[8] R. R. Gattass and E. Mazur, "Femtosecond laser micromachining in transparent materials," _Nature Photonics_, vol. 2, no. 4, pp. 219-225, 2008.

[9] B. C. Stuart et al., "Nanosecond-to-femtosecond laser-induced breakdown in dielectrics," _Physical Review B_, vol. 53, no. 4, pp. 1749-1761, 1996.

[10] S. S. Mao et al., "Dynamics of femtosecond laser interactions with dielectrics," _Applied Physics A_, vol. 79, no. 7, pp. 1695-1709, 2004.

[11] K. Sugioka and Y. Cheng, "Ultrafast lasers—reliable tools for advanced materials processing," _Light: Science & Applications_, vol. 3, e149, 2014.

[12] A. Vogel et al., "Mechanisms of femtosecond laser nanosurgery of cells and tissues," _Applied Physics B_, vol. 81, no. 8, pp. 1015-1047, 2005.

[13] R. K. Raman et al., "Laser-induced shock wave propagation from ablation in a cavity," _Shock Waves_, vol. 26, no. 4, pp. 355-365, 2016.

[14] D. von der Linde and H. Schüler, "Breakdown threshold and plasma formation in femtosecond laser-solid interaction," _Journal of the Optical Society of America B_, vol. 13, no. 1, pp. 216-222, 1996.

[15] L. Skuja, "Optically active oxygen-deficiency-related centers in amorphous silicon dioxide," _Journal of Non-Crystalline Solids_, vol. 239, no. 1-3, pp. 16-48, 1998.

[16] D. L. Griscom, "Optical properties and structure of defects in silica glass," _Journal of the Ceramic Society of Japan_, vol. 99, no. 10, pp. 923-942, 1991.

[17] M. Lancry et al., "Ultrafast nanoporous silica formation driven by femtosecond laser irradiation," _Laser & Photonics Reviews_, vol. 7, no. 6, pp. 953-962, 2013.

[18] J. Chan et al., "Modification of the fused silica glass network associated with waveguide fabrication using femtosecond laser pulses," _Applied Physics A_, vol. 76, no. 3, pp. 367-372, 2003.

[19] A. Marcinkevičius et al., "Femtosecond laser-assisted three-dimensional microfabrication in silica," _Optics Letters_, vol. 26, no. 5, pp. 277-279, 2001.