<?php

/**
 *  2Moons
 *  Copyright (C) 2012 Jan Kröpke
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 * @package 2Moons
 * @author Jan Kröpke <info@2moons.cc>
 * @copyright 2012 Jan Kröpke <info@2moons.cc>
 * @license http://www.gnu.org/licenses/gpl.html GNU GPLv3 License
 * @version 1.7.3 (2013-05-19)
 * @info $Id: TECH.php 2632 2013-03-18 19:05:14Z slaver7 $
 * @link http://2moons.cc/
 */

//SHORT NAMES FOR COMBAT REPORTS

$LNG['shortNames'] = array (
	202 => 'Kl. Transporter',
	203 => 'Gr. Transporter',
	204 => 'L. Jäger',
	205 => 'S. Jäger',
	206 => 'Kreuzer',
	207 => 'Schlachtschiff',
	208 => 'Kolonieschiff',
	209 => 'Recycler',
	210 => 'Spionagesonde',
	211 => 'Bomber',
	212 => 'Solarsatellit',
	213 => 'Zerstörer',
	214 => 'Todesstern',
	215 => 'Schlachtkreuzer',
	216 => 'Lune Noire',
	217 => 'Evo. Transporter',
	218 => 'Avatar',
	219 => 'Gigarecycler',
	220 => 'Inter. DM-Sammler',
	221 => 'Battleship class ONill',
222 => 'Flying death',
223 => 'Scrappy',
224 => 'M19',
225 => 'Galleon',
226 => 'Destroyer',
227 => 'Frigate',
228 => 'Black Wanderer',
229 => 'M7',
230 => 'M32',

	401 => 'Raketenwerfer',
	402 => 'L. Lasergeschütz',
	403 => 'S. Lasergeschütz',
	404 => 'Gaußkanone',
	405 => 'Ionengeschütz',
	406 => 'Plasmawerfer',
	407 => 'Kl. Schildkuppel',
	408 => 'Gr. Schildkuppel',
	409 => 'Gig. Schildkuppel',
	410 => 'Gravitonenkanone',
	411 => 'Orb. VerPla',
	412 => 'Lepton Gun',
413 => 'Proton Gun',
414 => 'Canyon',
415 => 'Quantum Gun',
416 => 'Hydrogen Gun',
417 => 'Dora gun',
418 => 'Photon Cannon',
419 => 'Particle Emitter',
420 => 'Mehador Slim',
421 => 'Iron Mehador',
422 => 'Grand Mehador',
);

$LNG['bonus'] = array(
	'Attack'			=> 'Angriff',
	'Defensive'			=> 'Verteidigung',
	'Shield'			=> 'Schild',
	'BuildTime'			=> 'Bauzeit',
	'ResearchTime'		=> 'Forschungszeit',
	'ShipTime'			=> 'Schiffbauzeit',
	'DefensiveTime'		=> 'Verteidungsbauzeit',
	'Resource'			=> 'Mienenertrag',
	'Energy'			=> 'Energieerzeugung',
	'ResourceStorage'	=> 'Speicher',
	'ShipStorage'		=> 'Flottenkapazität',
	'FlyTime'			=> 'Flugzeit',
	'FleetSlots'		=> 'Flottenslots',
	'Planets'			=> 'Planeten',
	'SpyPower'			=> 'Spionagepower',
	'Expedition'		=> 'Expeditionen',
	'GateCoolTime'		=> 'Sprungtoraufladungszeit',
	'MoreFound'			=> 'Expeditionsfund',
);
					
$LNG['tech'] = array(
	0 => 'Gebäude',
	1 => 'Metallmine',
	2 => 'Kristallmine',
	3 => 'Deuteriumsynthetisierer',
	4 => 'Solarkraftwerk',
	6 => 'TechnoDome',
	12 => 'Atomkraftwerk',
	14 => 'Roboterfabrik',
	15 => 'Nanitenfabrik',
	21 => 'Raumschiffwerft',
	22 => 'Metallspeicher',
	23 => 'Kristallspeicher',
	24 => 'Deuteriumtank',
	31 => 'Forschungslabor',
	33 => 'Terraformer',
	34 => 'Allianzdepot',
	44 => 'Raketensilo',
	40 => 'Mondgebäude',
	41 => 'Basisstützpunkt',
	42 => 'Sensorenphalax',
	43 => 'Sprungtor',
	5 => 'Searcher',
	45 => 'Planetarium',
	46 => 'Sensor Module',
	47 => 'Research Center',
	48 => 'Collider',

	100 => 'Forschungen',
	106 => 'Spionagetechnik',
	108 => 'Computertechnik',
	109 => 'Waffentechnik',
	110 => 'Schildtechnik',
	111 => 'Raumschiffpanzerung',
	113 => 'Energietechnik',
	114 => 'Hyperraumtechnik',
	115 => 'Verbrennungstriebwerk',
	117 => 'Impulstriebwerk',
	118 => 'Hyperraumantrieb',
	120 => 'Lasertechnik',
	121 => 'Ionentechnik',
	122 => 'Plasmatechnik',
	123 => 'Intergalaktisches Forschungsnetzwerk',
	124 => 'Astrophysik',
	125 => 'Brother Hood',
	131 => 'Produktionsmaximierung Metall',
	132 => 'Produktionsmaximierung Kristall',
	133 => 'Produktionsmaximierung Deuterium',
	199 => 'Gravitonforschung',

	200 => 'Schiffe',
	202 => 'Kleiner Transporter',
	203 => 'Großer Transporter',
	204 => 'Leichter Jäger',
	205 => 'Schwerer Jäger',
	206 => 'Kreuzer',
	207 => 'Schlachtschiff',
	208 => 'Kolonieschiff',
	209 => 'Recycler',
	210 => 'Spionagesonde',
	211 => 'Bomber',
	212 => 'Solarsatellit',
	213 => 'Zerstörer',
	214 => 'Todesstern',
	215 => 'Schlachtkreuzer',
	216 => 'Lune Noire',
	217 => 'Evolution Transporter',
	218 => 'Avatar',
	219 => 'Gigarecycler',
	220 => 'Intergalaktischer D. Materiensammler',
	221 => 'Battleship class ONill',
222 => 'Flying death',
223 => 'Scrappy',
224 => 'M19',
225 => 'Galleon',
226 => 'Destroyer',
227 => 'Frigate',
228 => 'Black Wanderer',
229 => 'M7',
230 => 'M32',

	400 => 'Verteidigungsanlagen',
	401 => 'Raketenwerfer',
	402 => 'Leichtes Lasergeschütz',
	403 => 'Schweres Lasergeschütz',
	404 => 'Gaußkanone',
	405 => 'Ionengeschütz',
	406 => 'Plasmawerfer',
	407 => 'Kleine Schildkuppel',
	408 => 'Große Schildkuppel',
	409 => 'Gigantische Schildkuppel',
	410 => 'Gravitonkanone',
	411 => 'Orbitale Verteidigungsplattform',
	412 => 'Lepton Gun',
413 => 'Proton Gun',
414 => 'Canyon',
415 => 'Quantum Gun',
416 => 'Hydrogen Gun',
417 => 'Dora gun',
418 => 'Photon Cannon',
419 => 'Particle Emitter',
420 => 'Mehador Slim',
421 => 'Iron Mehador',
422 => 'Grand Mehador',
	
	500 => 'Raketen',
	502 => 'Abfangrakete',
	503 => 'Interplanetarrakete',

	600 => 'Offiziere',
	601 => 'Geologe',
	602 => 'Admiral',
	603 => 'Ingenieur',
	604 => 'Technokrat',
	605 => 'Konstrukteur',
	606 => 'Wissenschaftler',
	607 => 'Lagermeister',
	608 => 'Verteidigungsminister',
	609 => 'Bunker',
	610 => 'Spion',
	611 => 'Commander',
	612 => 'Zerstörer',
	613 => 'General',
	614 => 'Eroberer',
	615 => 'Imperator',

	700 => 'Premium Feature',
	701 => 'Waffenoptimierung',
	702 => 'Schildoptimierung',
	703 => 'Baukoordinierung',
	704 => 'Rohstoffoptimierung',
	705 => 'Energieoptimierung',
	706 => 'Forschungsoptimierung',
	707 => 'Flottenkoordinierung',

	900 => 'Rohstoffe',
	901 => 'Metall',
	902 => 'Kristall',
	903 => 'Deuterium',
	911 => 'Energie',
	921 => 'Dunkle Materie',
	922 => 'Anti Materie',
);

$LNG['shortDescription'] = array(
	1 => 'Hauptrohstofflieferanten für den Bau tragender Strukturen von Bauwerken und Schiffen.',
	2 => 'Hauptrohstofflieferanten für elektronische Bauteile und Legierungen.',
	3 => 'Entziehen dem Wasser eines Planeten den geringen Deuteriumanteil.',
	4 => 'Solarkraftwerke gewinnen Energie aus Sonneneinstrahlung. Einige Gebäude benötigen Energie für ihren Betrieb.',
	5 => 'Searcher',
	6 => 'Sie verkürzt pro Stufe die Forschungszeit um 8%.',
	12 => 'Das Atomkraftwerk gewinnt Energie aus Brennstäben die aus Deuterium gefertigt werden.',
	14 => 'Roboterfabriken stellen einfache Arbeitskräfte zur Verfügung, die beim Bau der planetaren Infrastruktur eingesetzt werden. Jede Stufe erhöht damit die Geschwindigkeit des Ausbaus von Gebäuden.',
	15 => 'Stellt die Krönung der Robotertechnik dar. Jede Stufe halbiert die Bauzeit von Gebäuden, Schiffen und Verteidigung.',
	21 => 'In der planetaren Werft werden alle Arten von Schiffen und Verteidigungsanlagen gebaut.',
	22 => 'Lagerstätte für unbearbeitete Metallerze bevor sie weiter verarbeitet werden.',
	23 => 'Lagerstätte für unbearbeitetes Kristall bevor es weiter verarbeitet wird.',
	24 => 'Riesige Tanks zur Lagerung des neu gewonnenen Deuteriums.',
	31 => 'Um neue Technologien zu erforschen, ist der Betrieb einer Forschungsstation notwendig.',
	33 => 'Der Terraformer vergrößert die nutzbare Fläche auf Planeten.',
	34 => 'Das Allianzdepot bietet die Möglichkeit, befreundete Flotten, die bei der Verteidigung helfen und im Orbit stehen, mit Treibstoff zu versorgen.',
	41 => 'Ein Mond verfügt über keinerlei Atmosphäre, deshalb muss vor der Besiedlung eine Mondbasis errichtet werden.',
	42 => 'Die Sensorphalanx erlaubt es, Flottenbewegungen zu beobachten. Je höher die Ausbaustufe, desto größer ist die Reichweite der Phalanx.',
	43 => 'Sprungtore sind riesige Transmitter, die in der Lage sind, selbst riesige Flotten ohne Zeitverlust durch das Universum zu versenden.',
	44 => 'Raketensilos dienen zum Einlagern von Raketen.',
	45 => 'Each level increases the probability of finding the Stardust.',
46 => 'The sensor module displays all the fleets movement of enemy moons.',
47 => 'Eeach level of technology accelerates your research with 3% and reduces with 1% the required amount of deuterium consumption.',
48 => 'After years of study of antimatter, scientists have finally invented a way to create dark matter. It consists in breaking up antimatter collider. But the work of the collider prevent the planet\'s atmosphere, so it was decided to build it on the moon, where the atmosphere does not exist.',


	106 => 'Mit Hilfe dieser Technik lassen sich Informationen über andere Planeten und Monde gewinnen.',
	108 => 'Mit der Erhöhung der Computerkapazitäten lassen sich immer mehr Flotten befehligen. Jede Stufe Computertechnik erhöht dabei die maximale Flottenanzahl um eins.',
	109 => 'Waffentechnik macht Waffensysteme effizienter. Jede Stufe der Waffentechnik erhöht die Waffenstärke der Einheiten um 10% des Grundwertes.',
	110 => 'Schildtechnik macht die Schilde der Schiffe und Verteidigungsanlagen effizienter. Jede Stufe der Schildtechnik steigert die Effizienz der Schilde um 10% des Grundwertes.',
	111 => 'Spezielle Legierungen machen die Panzerung der Raumschiffe immer besser. Die Wirksamkeit der Panzerung kann so pro Stufe um 10% gesteigert werden.',
	113 => 'Die Beherrschung der unterschiedlichen Arten von Energie ist für viele neue Technologien notwendig.',
	114 => 'Durch die Einbindung der 4. und 5. Dimension ist es nun möglich einen neuartigen Antrieb zu erforschen, welcher sparsamer und leistungsfähiger ist.',
	115 => 'Die Weiterentwicklung dieser Triebwerke macht einige Schiffe schneller, allerdings steigert jede Stufe die Geschwindigkeit nur um 10% des Grundwertes.',
	117 => 'Das Impulstriebwerk basiert auf dem Rückstoßprinzip. Die Weiterentwicklung dieser Triebwerke macht einige Schiffe schneller, allerdings steigert jede Stufe die Geschwindigkeit nur um 20% des Grundwertes.',
	118 => 'Krümmt den Raum um ein Schiff. Die Weiterentwicklung dieser Triebwerke macht einige Schiffe schneller, allerdings steigert jede Stufe die Geschwindigkeit nur um 30% des Grundwertes.',
	120 => 'Durch Bündelung des Lichtes entsteht ein Strahl der beim Auftreffen auf ein Objekt Schaden anrichtet.',
	121 => 'Wahrhaft tödlicher Richtstrahl aus beschleunigten Ionen. Diese richten beim Auftreffen auf ein Objekt einen riesigen Schaden an.',
	122 => 'Eine Weiterentwicklung der Ionentechnik, die nicht Ionen beschleunigt, sondern hochenergetisches Plasma. Dieses hat eine verheerende Wirkung beim Auftreffen auf ein Objekt.',
	123 => 'Forscher verschiedener Planeten kommunizieren über dieses Netzwerk miteinander. Durch das Zusammenschalten der Labore wird die Forschungszeit verkürzt, jede Stufe schaltet die Labore eines Planeten dazu.',
	124 => 'Weitere Erkenntnisse in der Astrophysik ermöglichen den Bau von Laboren, mit denen immer mehr Schiffe ausgestattet werden können. Dadurch werden weite Expeditionsreisen in noch unerforschte Gebiete möglich. Zudem erlauben die Fortschritte die weitere Kolonisation des Weltraumes. Pro zwei Stufen dieser Technologie kann so ein weiterer Planet nutzbar gemacht werden.',
	125 => 'Brotherhood - a unique technology of mutual assistance between the members of the alliance. With the increase in the level of technology, it is possible to increase the contribution of resources.',
	131 => 'Erhöht die Produktion der Metallmine um 2%',
	132 => 'Erhöht die Produktion der Kristallmine um 2%',
	133 => 'Erhöht die Produktion der Deuteriumsynthetisierer um 2%',
	199 => 'Durch Abschuss einer konzentrierten Ladung von Gravitonpartikeln kann ein künstliches Gravitationsfeld errichtet werden, wodurch Schiffe oder auch Monde vernichtet werden können.',

	202 => 'Der kleine Transporter ist ein wendiges Schiff, welches Rohstoffe schnell zu anderen Planeten transportieren kann.',
	203 => 'Die Weiterentwicklung des kleinen Transporters hat ein größeres Ladevermögen und kann sich dank weiterentwickeltem Antrieb noch schneller fortbewegen als der kleine Transporter.',
	204 => 'Der leichte Jäger ist ein wendiges Schiff, das auf fast jedem Planeten vorgefunden wird. Die Kosten sind nicht besonders hoch, Schildstärke und Ladekapazität sind allerdings sehr gering.',
	205 => 'Die Weiterentwicklung des leichten Jägers ist besser gepanzert und hat eine höhere Angriffsstärke.',
	206 => 'Kreuzer sind fast dreimal so stark gepanzert wie schwere Jäger und verfügen über mehr als die doppelte Schusskraft. Zudem sind sie sehr schnell.',
	207 => 'Schlachtschiffe bilden meist das Rückgrat einer Flotte. Ihre schweren Geschütze, die hohe Geschwindigkeit und der große Frachtraum machen sie zu ernst zu nehmenden Gegnern.',
	208 => 'Fremde Planeten können mit diesem Schiff kolonisiert werden.',
	209 => 'Mit dem Recycler lassen sich Rohstoffe aus Trümmerfeldern gewinnen.',
	210 => 'Spionagesonden sind kleine wendige Drohnen, welche über weite Entfernungen hinweg Daten über Flotten und Planeten liefern.',
	211 => 'Der Bomber wurde extra entwickelt, um die Verteidigung eines Planeten zu zerstören.',
	212 => 'Solarsatelliten sind einfache Plattformen aus Solarzellen, die sich in einem hohen stationären Orbit befinden. Sie sammeln das Sonnenlicht und geben es per Laser an die Bodenstation weiter.',
	213 => 'Der Zerstörer ist der König unter den Kriegsschiffen.',
	214 => 'Die Zerstörungskraft des Todessterns ist unübertroffen und er kann als einziges Schiff Monde zerstören.',
	215 => 'Der Schlachtkreuzer ist auf das Abfangen feindlicher Flotten spezialisiert.',
	216 => 'Der Nachfolger des beliebten Todessterns, etwas schneller und stärker.',
	217 => 'Ist der eine Weiterentwicklung des großen Transporters. Er hat mehr Ladevermögen und fliegt schneller.',
	218 => 'Der Supergau schlechthin, allerdings sehr langsam.',
	219 => 'Ist eine gigantische Weltraumrecycleanlage und hyperschnell.',
	220 => 'Mit diesem Schiff ist es nach jahrelangem Forschen möglich, Dunkle Materie an seinem Mond zu sammeln.',
	221 => 'Designers who developed Avatar continued to improve your project. After some time, they introduced a whole new class of ship as well as used for innovation. Killer fleets - so nicknamed inhabitants of the world of this monster.',
222 => 'Increase defenses, as well as the presence of planets in orbits orbital bases and fleets, forcing scientists to create the Flying Death. The basis of the construction of this ship were put proven technologies that have been used in Avtar and ONille.',
223 => 'Designed for fleet and saves resources for a long time, is the slowest ship of the universe',
224 => 'M-19 ship using technology of extraterrestrial intelligence is only available during the holidays and bonuses.',
225 => 'Galleon - Part fleet support. Has good offensive and defensive qualities with a relatively low price. As part of the main fleet atakueschego irreplaceable and gives the enemy a lot of trouble.',
226 => 'Destroyer - Improved model of the standard bomber. Smaller due to the increased mobility of the hull strength and additional weapons. As part of good defensive fleet - will turn into dust heavy enemy defenses',
227 => 'Frigate - A powerful warship. In connection with the new advances in science, defense and the enemy fleet, has become much stronger. Therefore, the researchers decided to create a more powerful ship, based on the old. Thus was coined Frigate. By a powerful voouruzheniya reinforced armor, shields and powerful low speed, it has become a serious problem for all types of fleets and defense.',
228 => 'Black Wanderer - Leading the development of the space fleet. Multi-platform tools and modular housing sector, reduce the chance of penetration and increase the effectiveness of maneuvers in combat. In battle, he has no equal in the destruction of lung fleet.',
229 => 'M-7 ship using technology of extraterrestrial intelligence is only available during the holidays and bonuses.',
230 => 'M-32 ship using technology of extraterrestrial intelligence is only available during the holidays and bonuses.',

	401 => 'Der Raketenwerfer ist eine einfache aber kostengünstige Verteidigungsmöglichkeit.',
	402 => 'Durch den konzentrierten Beschuss eines Ziels mit Photonen kann eine wesentlich größere Schadenswirkung erzielt werden, als mit gewöhnlichen ballistischen Waffen.',
	403 => 'Der schwere Laser stellt die konsequente Weiterentwicklung des leichten Lasers dar.',
	404 => 'Die Gaußkanone beschleunigt tonnenschwere Geschosse unter gigantischem elektrischen Aufwand.',
	405 => 'Das Ionengeschütz schleudert eine Welle von Ionen auf das Ziel, welche Schilde destabilisiert und die Elektronik beschädigt.',
	406 => 'Plasmageschütze setzen die Kraft einer Sonneneruption frei und übertreffen in ihrer zerstörerischen Wirkung sogar den Zerstörer.',
	407 => 'Die kleine Schildkuppel umhüllt den ganzen Planeten mit einem Feld, welches ungeheure Mengen an Energie absorbieren kann.',
	408 => 'Die Weiterentwicklung der Kleinen Schildkuppel kann wesentlich mehr Energie einsetzen um Angriffe abzuhalten.',
	409 => 'Die Weiterentwicklung der Großen Schildkuppel ist die Krönung der Schildtechnik sie kann wesentlich mehr Energie einsetzen um Angriffe abzuhalten als alle anderen Schildkuppeln.',
	410 => 'Nach jahrelangen forschen an der Gravitationskraft ist es Forschern gelungen, eine Gravitonenkanone zu entwickeln, die kleine konzentrierte Gravitationsfelder erzeugen kann und sie auf die Gegner schießen lässt.',
	411 => 'Es ist eine unbewegliche defensive Plattform. Sie besitzt keinen direkten Antrieb und wird durch Gravitonforschung in einer stabilen Umlaufbahn des Planeten gehalten. Das starten dieses Vorgangs erfordert hohe Massen an Energie.',
	412 => 'Lepton planned to create an instrument as a technical device that is designed to influence the minds of people against their will. But at the last minute additions to the project introduced as a result of which the gun has turned into a formidable means of defense against possible aggression planets. Charged particles leptons in contact with a view to produce great destruction in the boards and armor fleets.',
413 => 'Proton gun when fired uses inversion proton shell. Instrument requires long and bulky accelerators, which limits its occupancy large stationary installations. Particle beams represent a radiation hazard for all living beings and not radiation resistant electronics near the point of defeat and in the atmosphere, as well as near the beam path.',
414 => 'The "Canyon" was launched to improve the graviton guns and was a complete success. Instrument requires a lot of energy and material costs, as well as highly gravitational technology.',
415 => 'Quantum gun purposefully created to destroy the enemy fleet flagships, namely basic heavy vehicles. The principle of operation is based on guns transition of a substance from one phase to another thermodynamic when the magnetic field from the paramagnetic state to a weak ferromagnetic state.',
416 => 'Scientists, not so long ago proved that it is possible to use deuterium as a weapon. After some time, there Hydrogen gun. During contact with the skin or shields ship, there is the impulse that undermines deuterium.',
417 => 'Dora gun, is the most powerful defense of the middle class. Blyagodarya its power, it can destroy enemy armadas by an electromagnetic pulse, but because of him, the gun overheats very quickly and requires a lot of energy, so they are placed in the mountains and close to them, there is always power.',
418 => 'Photon cannon prototype was Proton gun. Photon Cannon, with its comparatively low price and powerful volley fire, it has become indispensable for global defense.',
419 => 'Particle emitter - is the result of long, hard work of scientists and engineers to create this type of defense. This is not one of those many kinds of multipurpose protect the planet or moon that can repel almost all known types of ships. Its strength lies in the combination of the plasma, graviton and ion guns, into one powerful beam which when hit, ship splits particles.',
420 => 'Mehador Slim - Self Defense uses technology of extraterrestrial intelligence is only available during the holidays and bonuses.',
421 => 'Mehador Iron - Self Defense uses technology of extraterrestrial intelligence is only available during the holidays and bonuses.',
422 => 'Mehador Grand - Self Defense uses technology of extraterrestrial intelligence is only available during the holidays and bonuses.',

	502 => 'Abfangraketen zerstören angreifende Interplanetarraketen.',
	503 => 'Interplanetarraketen zerstören die gegnerische Verteidigung.',

	601 => 'Der Geologe ist ein Experte bekannt in der Gesteinsphysiologie und der Kristallographie. Mit seinem Expertenteam bestehend aus Metall-Ingenieuren und Chemikern, assistiert er den interplanetaren Regierungen in der Recherche nach neuen Quellen und diese sicher gewinnen zu können.',
	602 => 'Der Flottenadmiral ist ein Kriegsveteran und ein gefürchteter Stratege. Sogar wenn die Schlacht aussichtslos scheint, bewahrt er einen kühlen Kopf, um Herr der Lage zu bleiben und den Kontakt zu seinen unterstellten Flottenkommandeuren aufrecht zu erhalten. Ein Imperator sollte sich den Flottenadmiral leisten um seine Angriffe zu koordinieren und um mehr Flotten in den Kampf ziehen zu lassen.',
	603 => 'Der Ingenieur ist ein Spezialist der energietechnischen Betriebsführung. Er optimiert die Effektivität der Energiereserven der Kolonie und steigert somit die tatsächliche Energieproduktion.',
	604 => 'Die Gilde der Technokraten sind die Wissenschaftler der bekannten Genies. Man findet sie dort wo die Technik ihre Grenzen erreicht. Niemand versteht die Dechiffrierung der Kryptographie eines Technokraten, seine alleinige Präsenz inspiriert die Kontrukteure des ganzen Imperiums.',
	605 => 'Der Konstrukteur ist ein Meister in der Planung von Gebäuden.',
	606 => 'Die Gilde der Wissenschaftler ist ein Zusammenschluss der erfolgreichsten Wissenschaftler des Imperiums. Sie sind die Spezialisten in der Verbesserung der Technologie.',
	607 => 'Der Lagerist beherrscht wertvolle Lagerungs- und Sortierkenntnisse. Durch hochentwickelte Lagertechniken und strukturelle Anpassungen, kann er das nutzbare Volumen eines Lagerraumes deutlich erhöhen.',
	608 => 'Der Verteidigungsminister ist Mitglied der imperialen Armee. Sein Elan und Ehrgeiz ermöglichen es jede Kolonie in Rekordzeit zu einen stark befestigtem Stützpunkt auszubauen.',
	609 => 'Der Bunker sah die beeindruckende Arbeit, die Sie in seinem Königreich gefertigt haben. Um Ihnen zu danken, eröffnet er Ihnen die Chance Bunker zu werden. Der Bunker ist die höchste Auszeichnung der Lagerstättenbranche der Imperialen Armee.',
	610 => 'Der Spion ist eine rätselhafte Person. Niemand kennt jemals sein wirkliches Gesicht, und noch weniger ob er schon tot ist.',
	611 => 'Der Commander der imperialen Armee ist Meister im Umgang mit der Flotte. Seine jahrelangen Erfahrungen mit Flotten, mit vielen strategischen Einsätzen, sind eine Bereicherung für jeden Herrscher.',
	612 => 'Der Zerstörer ist ein Offizier ohne Mitleid. Er hat Planeten nur zum Vergnügen dem Erdboden gleich gemacht. Er entdeckt momentan eine neue Methode um Massenvernichtungswaffen herzustellen.',
	613 => 'Der General ist eine ehrwürdige Person, der seit vielen Jahren in der Armee dient. Durch unzählige Manöver hat der General Strategien entwickelt, um die Flottengeschwindigkeiten in sämtlichen Konstellationen, verschiedenster Shiffstypen, zu optimieren.',
	614 => 'Der Imperator bemerkte bei Ihnen die unleugbaren Qualitäten des Eroberns. Er schlägt Ihnen vor Eroberer zu werden. Der Eroberer ist der Grad der höchsten Ausbildung der Eroberer der imperialen Armee.',
	615 => 'Sie haben gezeigt, dass Sie der größte Eroberer des Universums sind. Es ist Ihrer, solange Sie diesen Platz halten, den Sie bekommen haben.',

	701 => 'Der Bonus ist nur temporär.',
	702 => 'Der Bonus ist nur temporär.',
	703 => 'Der Bonus ist nur temporär.',
	704 => 'Der Bonus ist nur temporär.',
	705 => 'Der Bonus ist nur temporär.',
	706 => 'Der Bonus ist nur temporär.',
	707 => 'Der Bonus ist nur temporär.',
);

$LNG['longDescription'] = array(
	1 => 'Hauptrohstofflieferanten für den Bau tragender Strukturen von Bauwerken und Schiffen. Metall ist der billigste Rohstoff, dafür wird er mehr benötigt als die anderen. Metall braucht zur Herstellung am wenigsten Energie. Je größer die Minen ausgebaut sind, desto tiefer sind sie. Bei den meisten Planeten befindet sich das Metall in großer Tiefe, durch diese tieferen Minen können mehr Metalle abgebaut werden, die Produktion steigt. Gleichzeitig muss für die größere Metallmine mehr Energie zur Verfügung gestellt werden.',
	2 => 'Baut Mineralien ab, die für die Feinelektronik benötigt werden. Sie benötigt jedoch mehr, da sie die Mineralien gleich in nötige Legierungen verarbeitet.',
	3 => 'Deuterium ist schwerer Wasserstoff. Daher sind ähnlich wie bei den Minen die grössten Vorräte auf dem Grund des Meeres. Der Ausbau des Synthetisierers sorgt ebenfalls für die Erschließung dieser Deuterium-Tiefenlagerstätten. Deuterium wird als Treibstoff für die Schiffe, für fast alle Forschungen, für einen Blick in die Galaxie sowie für den Sensorphalanx-Scan benötigt.',
	4 => 'Um die Energie zur Versorgung der Minen und Synthetisierern zu gewährleisten, sind riesige Solarkraftwerkanlagen von Nöten. Je größer die Anlagen ausgebaut sind, desto mehr Oberfläche ist mit photovoltaischen Zellen bedeckt, welche Lichtenergie in elektrische Energie umwandeln. Solarkraftwerke stellen den Grundstock der planetaren Energieversorgung dar.',
	5 => 'The searcher will help you gradualy to find more colonies of your ennemies in the whole galaxy<br><br>
	<font color="#3399CC"><span style=" margin-left:0px; margin-right:4px; cursor:default; float:left;" class="interrogation">i</span>	Helpful information:</font>
	<br>
    <font color="#00FF00"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span>each 2 levels of the searcher give you access to 1 more planet in the search menu.</font>',
	6 => 'Aufgrund der immer zeitaufwendigeren Forschungen, haben sich die klügsten Köpfe der intergalaktischen Forschungsnetzwerke zusammengetan und den TechnoDome entwickelt. Es verkürzt die Forschungszeiten um 8%',
	12 => 'Im Atomkraftwerk werden Atome gespalten, umso mehr Energie zu erzeugen als in dem Solarkraftwerk, allerdings ist es teurer im Bau.',
	14 => 'Roboterfabriken stellen einfache Arbeitskräfte zur Verfügung, die beim Bau der planetaren Infrastruktur eingesetzt werden können. Jede Stufe erhöht damit die Geschwindigkeit des Ausbaus von Gebäuden.',
	15 => 'Die Nanitenfabrik ist die Krönung der Robotertechnik. Naniten sind nanometergroße Roboter, die durch Vernetzung zu außerordentlichen Leistungen im Stande sind. Einmal erforscht erhöhen sie die Produktivität in fast allen Bereichen. Die Nanitenfabrik halbiert pro Stufe die Bauzeit von Gebäuden, Schiffen und Verteidigungsanlagen.',
	21 => 'In der planetaren Werft werden alle Arten von Schiffen und Verteidigungsanlagen gebaut. Je größer sie ist, desto schneller können aufwändigere und größere Schiffe und Verteidigungsanlagen gebaut werden. Durch Anbau einer Nanitenfabrik werden winzige Roboter erstellt, die den Arbeitern helfen, schneller zu arbeiten.',
	22 => 'Riesige Lagerstätte für abgebautes Metallerz. Je größer der Speicher, desto mehr Metall kann in ihm gelagert werden. Ist das Lager voll, wird kein Metall mehr abgebaut.',
	23 => 'Das noch unbearbeitete Kristall wird in diesen riesigen Lagerhallen zwischengespeichert. Je größer das Lager, desto mehr Kristall kann in ihm eingelagert werden. Sind die Kristalllager voll, wird kein weiteres Kristall abgebaut.',
	24 => 'Riesige Tanks zur Lagerung des neu gewonnenen Deuteriums. Diese Lager findet man meistens in der Nähe von Raumhäfen. Je größer sie sind, desto mehr Deuterium kann in ihnen gelagert werden. Sind sie gefüllt, wird kein Deuterium mehr abgebaut.',
	31 => 'Um neue Technologien zu erforschen, ist der Betrieb einer Forschungsstation notwendig. Die Ausbaustufe einer Forschungsstation ist ausschlaggebend dafür, wie schnell eine neue Technologie erforscht werden kann. Je höher die Ausbaustufe des Labors, umso mehr neue Technologien können erforscht werden. Um die Forschungsarbeiten möglichst schnell zum Abschluss zu bringen, werden, wenn auf einem Planeten geforscht wird, automatisch alle verfügbaren Forscher in diese Forschungsstation geschickt und stehen somit auf anderen Planeten nicht mehr zur Verfügung. Sobald eine Technologie einmal erforscht ist, kehren die Forscher auf ihre Heimatplaneten zurück und bringen das Wissen um sie mit. So kann man die Technologie auf all seinen Planeten einsetzen.',
	33 => 'Mit zunehmendem Ausbau der Planeten, wurde die Frage des begrenzten Lebensraums auf Kolonien immer wichtiger. Traditionelle Methoden wie Hoch- und Tiefbau erwiesen sich zunehmend als unzureichend. Eine kleine Gruppe von Hochenergiephysikern und Nanotechnikern fand schließlich die Lösung: Das Terraforming. Unter Aufwand riesiger Energiemengen kann der Terraformer ganze Landstriche oder gar Kontinente urbar machen. In diesem Gebäude werden fortwährend eigens dafür konstruierte Naniten produziert, die für eine konstante Qualität des Bodens sorgen. Einmal gebaut kann der Terraformer nicht wieder abgerissen werden.',
	34 => 'Das Allianzdepot bietet die Möglichkeit, befreundete Flotten, die bei der Verteidigung helfen und im Orbit stehen, mit Treibstoff zu versorgen. Für jeden Ausbaulevel des Allianzdepots können 10.000 Einheiten Deuterium pro Stunde an die zu versorgenden Flotten im Orbit geschickt werden.',
	41 => 'Ein Mond verfügt über keinerlei Atmosphäre, deshalb muss vor der Besiedlung eine Mondbasis errichtet werden. Diese sorgt für die nötige Atemluft, Gravitation und Wärme. Je höher die Ausbaustufe der Mondbasis ist, umso größer ist die Fläche die mit einer Biosphäre versorgt wird. Pro Mondbasislevel können 3 Felder bebaut werden bis zum Maximum der Mondgröße. Diese beträgt (Durchmesser des Mondes/1000)^2, wobei jede Stufe der Mondbasis selbst auch ein Feld belegt Einmal gebaut kann die Mondbasis nicht wieder abgerissen werden.',
	42 => 'Hochauflösende Sensoren scannen das vollständige Frequenzspektrum aller auf die Phalanx auftreffenden Strahlungen. Hochleistungscomputer kombinieren winzige Energieschwankungen und gewinnen so Informationen über Schiffsbewegungen auf entfernten Planeten. Für den Scan muss Energie in Form von Deuterium (5.000) auf dem Mond bereitgestellt werden. Man scannt, indem man vom Mond aus ins Galaxiemenü wechselt und auf einen feindlichen Planeten in Sensorenreichweite (Phalanxstufe)^2 - 1 klickt.',
	43 => 'Sprungtore sind riesige Transmitter, die in der Lage sind, selbst große Flotten ohne Zeitverlust durch das Universum zu versenden. Diese Transmitter verbrauchen kein Deuterium, jedoch muss zwischen 2 Sprüngen eine Stunde vergehen, da sich die Tore sonst überhitzen würden. Auch ist ein Mitschicken von Ressourcen nicht möglich. Der ganze Vorgang erfordert eine ungeheuer hoch entwickelte Technologie.',
	44 => 'Raketensilos dienen zum Einlagern von Raketen. Pro ausgebauter Stufe kann man fünf Interplanetar- oder zehn Abfangraketen einlagern. Eine Interplanetarrakete benötigt so viel Platz wie zwei Abfangraketen. Unterschiedliche Raketentypen können beliebig kombiniert werden.',
	45 => 'Each level increases the probability of finding the Stardust.<br><br>
	<font color="#3399CC"><span style=" margin-left:0px; margin-right:4px; cursor:default; float:left;" class="interrogation">i</span>	Helpful information:</font>
	<br>
    <font color="#00FF00"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span>Each level increases the chance of finding Stardust by 1%.</font> ',
46 => 'The sensor module displays all the fleets movement on enemy moons.<br><br>
	<font color="#3399CC"><span style=" margin-left:0px; margin-right:4px; cursor:default; float:left;" class="interrogation">i</span>	Helpful information:</font>
	<br>
    <font color="#00FF00"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span>With each level ranius scanning is increased by 3 system.</font> ',
47 => 'Eeach level of technology accelerates your research with 3% and reduces with 1% the required amount of deuterium consumption. ',

48 => 'After years of study of antimatter, scientists have finally invented a way to create dark matter. It consists in breaking up antimatter collider. But the work of the collider prevent the planet\'s atmosphere, so it was decided to build it on the moon, where the atmosphere does not exist.<br><br>
	<font color="#3399CC"><span style=" margin-left:0px; margin-right:4px; cursor:default; float:left;" class="interrogation">i</span>	Helpful information:</font>
	<br>
    <font color="#00FF00"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span>Produces dark matter on the basis of the mine. </font> 
	<br><font color="#BC8F8F"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span> With the destruction of the moon, Collider destroyed along with it.</font>',
	
	106 => 'Die Spionagetechnik befasst sich in erster Linie mit der Erforschung neuer und effizienterer Sensoren. Je höher diese Technik entwickelt ist, um so mehr Informationen stehen dem Nutzer über Vorgänge in seiner Umgebung zur Verfügung. Für Sonden ist die Differenz des eigenen und des gegnerischen Spionagelevels entscheidend. Je weiter die eigene Spionagetechnik erforscht ist, desto mehr Informationen enthält der Bericht und um so kleiner ist die Chance , dass man beim Spionieren entdeckt wird. Je mehr Sonden man schickt, desto mehr Details erfährt man von seinem Gegner, gleichzeitig steigt aber auch die Gefahr einer Entdeckung. Die Spionagetechnik verbessert ebenfalls die Ortung fremder Flotten. Dabei ist nur der eigene Spionagelevel entscheidend. Ab Level 2 wird zusätzlich zur reinen Angriffsmeldung auch die Gesamtanzahl der angreifenden Schiffe angezeigt. Ab Level 4 sieht man die Art der angreifenden Schiffe, sowie die Gesamtanzahl und ab Level 8 die genaue Anzahl der verschiedenen Schiffs-Typen. Für Raider ist diese Technik unverzichtbar, da sie Auskunft darüber gibt, ob das Opfer Flotte und/oder Verteidigung stationiert hat oder nicht. Deshalb sollte diese Technik schon sehr früh erforscht werden. Am besten sofort nach der Erforschung von kleinen Transportern.',
	108 => 'Die Computertechnik befasst sich mit der Erweiterung der vorhandenen Computerkapazitäten. Immer leistungsfähigere und effizientere Computersysteme werden entwickelt. Die Rechenleistung steigt immer weiter und die Geschwindigkeit, mit denen Rechenprozesse ablaufen, wird ebenfalls erhöht. Mit der Erhöhung der Computerkapazitäten lassen sich immer mehr Flotten gleichzeitig befehligen. Jede Stufe Computertechnik erhöht dabei die maximale Flottenanzahl um eins. Je mehr Flotten man gleichzeitig verschicken kann, desto mehr kann man raiden und desto mehr Rohstoffe kann man einnehmen. Natürlich nutzt diese Technik auch Händlern, denn sie können dann ebenfalls mehr Handelsflotten gleichzeitig losschicken. Aus diesem Grund sollte die Computertechnik kontinuierlich über das gesamte Spiel hinweg ausgebaut werden.',
	109 => 'Die Waffentechnik beschäftigt sich vor allem mit der Weiterentwicklung bestehender Waffensysteme. Dabei wird insbesondere darauf Wert gelegt, die vorhandenen Systeme mit mehr Energie auszustatten und diese Energie punktgenau zu kanalisieren. Dadurch werden die Waffensysteme effizienter und Waffen richten mehr Schaden an. Jede Stufe der Waffentechnik erhöht die Waffenstärke der Einheiten um 10% des Grundwertes. Die Waffentechnik ist wichtig, um später die eigenen Einheiten konkurrenzfähig zu halten. Deshalb sollte sie kontinuierlich das ganze Spiel hindurch entwickelt werden.',
	110 => 'Die Schildtechnik beschäftigt sich mit der Erforschung immer neuer Möglichkeiten, die Schilde mit mehr Energie zu versorgen und sie so effizienter und belastbarer zu machen. Dadurch steigt mit jeder erforschten Stufe die Effizienz der Schilde um 10% des Grundwertes.',
	111 => 'Spezielle Legierungen machen die Panzerung der Raumschiffe immer besser. Ist einmal eine sehr widerstandsfähige Legierung gefunden, wird durch spezielle Strahlungen die molekulare Struktur des Raumschiffes verändert und auf den Stand der besten erforschten Legierung gebracht. Die Wirksamkeit der Panzerung kann so pro Stufe um 10% des Grundwertes gesteigert werden.',
	113 => 'Die Energietechnik beschäftigt sich mit der Weiterentwicklung der Energieleitsysteme und Energiespeicher, welche für viele neue Technologien benötigt wird.',
	114 => 'Durch die Einbindung der 4. und 5. Dimension ist es nun möglich einen neuartigen Antrieb zu erforschen, welcher sparsamer und leistungsfähiger ist.',
	115 => 'Verbrennungstriebwerke basieren auf dem uralten Prinzip des Rückstoßes. Hocherhitzte Materie wird weggeschleudert und treibt das Schiff in die entgegengesetzte Richtung. Der Wirkungsgrad dieser Triebwerke ist eher gering, aber sie sind billig und zuverlässig und benötigen kaum Wartung. Außerdem verbrauchen sie weniger Raum und sind deshalb gerade auf kleineren Schiffen immer wieder zu finden. Da Verbrennungstriebwerke die Grundlage jeder Raumfahrt sind, sollten sie so früh wie möglich erforscht werden. Die Weiterentwicklung dieser Triebwerke macht folgende Schiffe um 10% des Grundwertes pro Stufe schneller: Kleine und große Transporter, Leichte Jäger, Recycler und Spionagesonden.',
	117 => 'Das Impulstriebwerk basiert auf dem Rückstoßprinzip, wobei die Strahlmasse zum Großteil als Abfallprodukt der zur Energiegewinnung verwendeten Kernfusion entsteht. Zusätzlich kann weitere Masse eingespritzt werden. Die Weiterentwicklung dieser Triebwerke macht folgende Schiffe um 20% des Grundwertes pro Stufe schneller: Bomber, Kreuzer, Schwere Jäger und Kolonieschiffe. Interplanetarraketen können pro Stufe weiter fliegen.',
	118 => 'Durch eine Raumzeitverkrümmung wird in unmittelbarer Umgebung eines Schiffes der Raum komprimiert, womit sich weite Strecken sehr schnell zurücklegen lassen. Je höher der Hyperraumantrieb entwickelt ist, desto höher wird die Kompression des Raumes, wodurch sich pro Stufe die Geschwindigkeit der Schiffe die damit ausgestattet sind (Schlachtkreuzer, Schlachtschiffe, Zerstörer und Todessterne) um 30% erhöht. Voraussetzungen: Hyperraumtechnik (Stufe 3) Forschungslabor (Stufe 7).',
	120 => 'Laser (Lichtverstärkung durch induzierte Strahlungsemission) erzeugen einen intensiven, energiereichen Strahl von kohärentem Licht. Diese Geräte finden in allen möglichen Bereichen ihre Bewerbung, von optischen Computern bis hin zu schweren Laserwaffen, die mühelos durch Raumschiffpanzerungen schneiden. Die Lasertechnik bildet einen wichtigen Grundstein für die Erforschung weiterer Waffentechnologien. Voraussetzungen: Forschungslabor (Stufe 1) Energietechnik (Stufe 2).',
	121 => 'Wahrhaft tödlicher Richtstrahl aus beschleunigten Ionen. Die beschleunigten Ionen richten beim Auftreffen auf ein Objekt einen riesigen Schaden an.',
	122 => 'Eine Weiterentwicklung der Ionentechnik, die nicht Ionen beschleunigt, sondern hochenergetisches Plasma. Das hochenergetische Plasma hat eine verheerende Wirkung beim Auftreffen auf ein Objekt.',
	123 => 'Forscher verschiedener Planeten kommunizieren über dieses Netzwerk miteinander. Pro erforschtes Level, wird ein Forschungslabor vernetzt. Dabei werden immer die Labors der höchsten Stufe dazugeschaltet. Das vernetzte Labor muss ausreichend ausgebaut sein um die anstehende Forschung selbständig durchführen zu können. Die Ausbaustufen aller beteiligten Labors werden im intergalaktischen Forschungsnetzwerk zusammen gezählt.',
	124 => 'Weitere Erkenntnisse in der Astrophysik ermöglichen den Bau von Laboren, mit denen immer mehr Schiffe ausgestattet werden können. Dadurch werden weite Expeditionsreisen in noch unerforschte Gebiete möglich. Zudem erlauben die Fortschritte die weitere Kolonisation des Weltraumes. Pro zwei Stufen dieser Technologie kann so ein weiterer Planet nutzbar gemacht werden.',
	125 => 'Brotherhood - a unique technology of mutual assistance between the members of the alliance. With the increase in the level of technology, it is possible to increase the contribution of resources. <br><br>
	<font color="#3399CC"><span style=" margin-left:0px; margin-right:4px; cursor:default; float:left;" class="interrogation">i</span>	helpful information:</font><br>
	<font color="#00FF00"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span>	Each level increases the maximum amount of the deposit to the bank alliance 2 times.</font>',
	131 => 'Erhöht die Produktion der Metallmine um 2%',
	132 => 'Erhöht die Produktion der Kristallmine um 2%',
	133 => 'Erhöht die Produktion der Deuteriumsynthetisierer um 2%',
	199 => 'Ein Graviton ist ein Partikel, das keine Masse und keine Ladung besitzt, welche die Gravitationskraft bestimmt. Durch Abschuss einer konzentrierten Ladung von Gravitonen kann ein künstliches Gravitationsfeld errichtet werden, welches ähnlich einem schwarzen Loch, Masse in sich hineinzieht, wodurch Schiffe oder auch Monde vernichtet werden können. Um eine ausreichende Menge Gravitonen herzustellen benötigt es riesige Mengen an Energie. Voraussetzungen: Forschungslabor (Stufe 12).',
	
	202 => 'Transporter haben ungefähr die gleiche Größe wie Jäger, verzichten aber auf leistungsfähige Antriebe und Bordwaffen, um Platz für Frachtraum zu schaffen. Der kleine Transporter verfügt über eine Ladekapazität von 5.000 Ressourceneinheiten. Aufgrund ihrer geringen Feuerkraft werden Transporter oft von anderen Schiffen eskortiert.',
	203 => 'Dieses Schiff hat kaum Waffen oder andere Technologien an Bord. Aus diesem Grunde sollten sie nie alleine losgeschickt werden. Der große Transporter dient durch sein hochentwickeltes Verbrennungstriebwerk als schneller Ressourcenlieferant zwischen den Planeten und natürlich begleitet er die Flotten auf ihren Überfällen feindlicher Planeten, um möglichst viele Ressourcen zu erobern, der große Transporter verfügt über eine Ladekapazität von 25.000 Ressourceneinheiten.',
	204 => 'Der leichte Jäger ist ein wendiges Schiff, das auf fast jedem Planeten vorgefunden wird. Die Kosten sind nicht besonders hoch, Schildstärke und Ladekapazität sind allerdings sehr gering.',
	205 => 'Bei der Weiterentwicklung des leichten Jägers kamen die Forscher zu einem Punkt, bei welchem der konventionelle Antrieb nicht mehr ausreichend Leistungen erbrachte. Um das neue Schiff optimal fortbewegen zu können wurde zum ersten Mal der Impulsantrieb genutzt. Dieses erhöhte zwar die Kosten, eröffnete aber auch neue Möglichkeiten. Durch die Einsetzung dieses Antriebes blieb mehr Energie für Waffen und Schilde übrig, ausserdem wurden für diese neue Jägergattung auch qualitativ hochwertigere Materialien verwendet. Dies führte zu einer verbesserten strukturellen Integrität und einer höheren Feuerkraft, was ihn im Kampf zu einer immens größeren Bedrohung macht als sein leichtes Pendant. Durch diese Änderungen stellt der schwere Jäger eine neue Ära der Schiffstechnologie dar, welche die Grundlage für die Kreuzertechnologie ist.',
	206 => 'Mit der Entwicklung der schweren Laser und der Ionenkanonen kamen die Jäger immer mehr in Bedrängnis. Trotz vieler Modifikationen konnte die Waffenstärke und die Panzerung nicht so weit gesteigert werden, um diesen Verteidigungsgeschützen wirksam begegnen zu können. Deshalb entschied man sich, eine neue Schiffsklasse zu konstruieren, die mehr Panzerung und mehr Feuerkraft in sich vereinte. Der Kreuzer war geboren. Kreuzer sind fast dreimal so stark gepanzert wie schwere Jäger und verfügen über mehr als die doppelte Schusskraft. Zudem sind sie sehr schnell. Gegen mittlere Verteidigung gibt es keine bessere Waffe. Kreuzer beherrschten fast ein Jahrhundert lang unumschränkt das All. Mit dem Aufkommen der Gaußgeschütze und Plasmawerfer endete ihre Vorherrschaft. Jedoch werden sie auch heute noch gerne gegen Jägerverbände eingesetzt.',
	207 => 'Schlachtschiffe bilden meist das Rückrat einer Flotte. Ihre schweren Geschütze, die hohe Geschwindigkeit und der große Frachtraum, machen sie zu ernst zu nehmenden Gegnern.',
	208 => 'Dieses gut gepanzerte Schiff dient der Eroberung neuer Planeten, was für ein aufstrebendes Imperium unerlässlich ist. Das Schiff wird auf der neuen Kolonie als Rohstofflieferant genutzt, in dem es wieder auseinander gebaut wird und alles wiederverwertbare Material für die Erschliessung der neuen Welt genutzt wird. Pro Imperium können inklusive Hauptplanet maximal 9 Planeten kolonisiert werden.',
	209 => 'Die Weltraumgefechte nahmen immer größere Ausmaße an. Tausende Schiffe wurden zerstört, aber die dadurch entstehenden Trümmerfelder schienen für immer verloren. Normale Transporter konnten sich nicht nahe genug an diese Felder heran bewegen, ohne durch kleinere Trümmer riesigen Schaden zu nehmen. Mit einer neuen Entwicklung im Bereich der Schildtechnologie konnte dieses Problem effizient beseitigt werden, es entstand eine neue Schiffsklasse, ähnlich dem großen Transporter, der Recycler . Mit dessen Hilfe konnten die scheinbar verlorenen Ressourcen doch noch verwertet werden. Die kleinen Trümmer stellten aufgrund der neuen Schilde auch keine Gefahr mehr dar. Durch spezielle mehr Dimensionale Ladefelder ist seine Ladekapazität auf 2.000.000 erweitert.',
	210 => 'Spionagesonden sind kleine wendige Drohnen, welche über weite Entfernungen hinweg Daten über Flotten und Planeten liefern. Ihr Hochleistungstriebwerk ermöglicht ihnen weite Strecken in wenigen Sekunden zurück zu legen. Einmal in der Umlaufbahn eines Planeten angekommen verweilen sie dort kurz um Daten zu sammeln. Während dieser Zeit sind sie vom Feind relativ leicht entdeck- und angreifbar. Um Platz zu sparen wurde auf Panzerung, Schilde und Waffen verzichtet, was die Sonden, wenn sie einmal entdeckt wurden, zu leichten Zielen macht.',
	211 => 'Der Bomber wurde speziell entwickelt um die Verteidigung eines Planeten zu zerstören. Mit Hilfe einer lasergesteuerten Zielvorrichtung wirft er zielgenau Plasmabomben auf die Planetenoberfläche und richtet so einen verheerenden Schaden bei Verteidigungsanlagen an.',
	212 => 'Solarsatelliten werden in eine geostationäre Umlaufbahn um einen Planeten geschossen. Sie bündeln Sonnenenergie und transferieren sie zu einer Bodenstation. Die Effizienz der Solarsatelliten hängt von der Stärke der Sonneneinstrahlung ab. Grundsätzlich ist die Energieausbeute auf sonnennahen Orbits größer als auf Planeten mit sonnenfernen Orbit. Durch ihr gutes Preis/Leistungsverhältnis lösen Solarsatelliten die Energieprobleme vieler Welten. Aber Vorsicht: Solarsatelliten können im Kampf zerstört werden.',
	213 => 'Der Zerstörer ist der König unter den Kriegsschiffen. Seine Multiphalanx Ionen-, Plasma- und Gaußgeschütztürme können durch ihre verbesserten Anpeilungssensoren fast 99% der verteidigenden leichten Laser treffen. Da der Zerstörer sehr groß ist, ist seine Manövrierfähigkeit stark eingeschränkt, wodurch er im Kampf eher einer Kampfstation gleicht, als einem Kampfschiff. So hoch wie seine Kampfkraft ist auch sein Verbrauch an Deuterium.',
	214 => 'Der Todesstern ist mit einer riesigen Gravitonkanone bewaffnet, die Schiffe so groß wie Zerstörer oder sogar Monde zerstören kann. Da dafür eine hohe Menge an Energie benötigt wird, besteht er fast nur aus Generatoren. Lediglich riesige Sternenreiche können überhaupt die Ressourcen und Arbeiter aufbringen, um dieses mondgroße Schiff zu Bauen.',
	215 => 'Dieses filigrane Schiff eignet sich hervorragend zum Zerstören feindlicher Flottenverbände. Mit seinen hochentwickelten Lasergeschützen ist es in der Lage, eine große Zahl angreifender Schiffe gleichzeitig zu bekämpfen. Durch seine schlanke Bauform und die starken Bewaffnung ist die Ladekapazität begrenzt. Dies wird jedoch durch den verbrauchsarmen Hyperraumantrieb wieder ausgeglichen.',
	216 => 'Dieses monströse Schiff ist eine Weiterentwicklung des Todessternes, die an Geschwindigkeit zugenommen hat, doch an Stärke verloren.	',
	217 => 'Dieser Transporter ist zwar langsamer aber dafür kann er jetzt mehr aufladen. Doch wenn man die richtige Forschung hat ist er fast so schnell wie der große Transporter.',
	218 => 'Dieses Schiff ist eine Verbesserung mehrerer Schiffe gleichzeitig und der Kaiser der Kampfsterne.',
	219 => 'Dieses Schiff ist eine wahrhaft gigantische Recycelanlage im Weltraum mit Atemberaubender Geschwindigkeit und riesigem Lagerraum! Geschaffen für große Imperien.',
	220 => 'Mit diesem Schiff ist es nach jahrelangem Forschen möglich, Dunkle Materie an seinem Mond zu sammeln.',
	221 => 'Designers who developed Avatar continued to improve your project. After some time, they introduced a whole new class of ship as well as used for innovation. Killer fleets - so nicknamed inhabitants of the world of this monster.<br><br>
	<font color="#3399CC"><span style=" margin-left:0px; margin-right:4px; cursor:default; float:left;" class="interrogation">i</span>	helpful information:</font><br>
	<font color="#00FF00"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span>Used to attack the enemy. </font>
	<br>
	<font color="#00FF00"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span>With the destruction of the fleet, 50% of the resources used falls in the debris.</font>',
222 => 'Increase defenses, as well as the presence of planets in orbits orbital bases and fleets, forcing scientists to create the Flying Death. The basis of the construction of this ship were put proven technologies that have been used in Avtar and ONille.<br><br>
	<font color="#3399CC"><span style=" margin-left:0px; margin-right:4px; cursor:default; float:left;" class="interrogation">i</span>	helpful information:</font><br>
	<font color="#00FF00"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span>Used to attack the enemy. </font>
	<br>
	<font color="#00FF00"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span>With the destruction of the fleet, 50% of the resources used falls in the debris.</font>',
223 => 'Designed for fleet and saves resources for a long time, is the slowest ship of the universe<br><br>
	<font color="#3399CC"><span style=" margin-left:0px; margin-right:4px; cursor:default; float:left;" class="interrogation">i</span>	helpful information:</font><br>
	<font color="#00FF00"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span>Used for a long time fleet save.</font>
	<br>
	<font color="#00FF00"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span>Has the lowest speed rate.</font>
<br>
	<font color="#BC8F8F"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span>Has the lowest speed rate.</font>',
224 => 'M-19 ship using technology of extraterrestrial intelligence is only available during the holidays and bonuses.<br><br>
	<font color="#3399CC"><span style=" margin-left:0px; margin-right:4px; cursor:default; float:left;" class="interrogation">i</span>	helpful information:</font><br>
	<font color="#00FF00"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span>Used to attack the enemy. </font>
	<br>
	<font color="#00FF00"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span>With the destruction of the fleet, 50% of the resources used falls in the debris.</font><br>
	<font color="#BC8F8F"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span>available only during events.</font>',



225 => 'Galleon - Part fleet support. Has good offensive and defensive qualities with a relatively low price. As part of the main fleet atakueschego irreplaceable and gives the enemy a lot of trouble.<br><br>
	<font color="#3399CC"><span style=" margin-left:0px; margin-right:4px; cursor:default; float:left;" class="interrogation">i</span>	helpful information:</font><br>
	<font color="#00FF00"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span>Used to attack the enemy. </font>
	<br>
	<font color="#00FF00"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span>With the destruction of the fleet, 50% of the resources used falls in the debris.</font>',
226 => 'Destroyer - Improved model of the standard bomber. Smaller due to the increased mobility of the hull strength and additional weapons. As part of good defensive fleet - will turn into dust heavy enemy defenses<br><br>
	<font color="#3399CC"><span style=" margin-left:0px; margin-right:4px; cursor:default; float:left;" class="interrogation">i</span>	helpful information:</font><br>
	<font color="#00FF00"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span>Used to attack the enemy. </font>
	<br>
	<font color="#00FF00"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span>With the destruction of the fleet, 50% of the resources used falls in the debris.</font>',
227 => 'Frigate - A powerful warship. In connection with the new advances in science, defense and the enemy fleet, has become much stronger. Therefore, the researchers decided to create a more powerful ship, based on the old. Thus was coined Frigate. By a powerful voouruzheniya reinforced armor, shields and powerful low speed, it has become a serious problem for all types of fleets and defense.<br><br>
	<font color="#3399CC"><span style=" margin-left:0px; margin-right:4px; cursor:default; float:left;" class="interrogation">i</span>	helpful information:</font><br><br>
	<font color="#00FF00"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span>Used to attack the enemy. </font>
	<br>
	<font color="#00FF00"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span>With the destruction of the fleet, 50% of the resources used falls in the debris.</font>',
228 => 'Black Wanderer - Leading the development of the space fleet. Multi-platform tools and modular housing sector, reduce the chance of penetration and increase the effectiveness of maneuvers in combat. In battle, he has no equal in the destruction of lung fleet.<br><br>
	<font color="#3399CC"><span style=" margin-left:0px; margin-right:4px; cursor:default; float:left;" class="interrogation">i</span>	helpful information:</font><br><br>
	<font color="#00FF00"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span>Used to attack the enemy. </font>
	<br>
	<font color="#00FF00"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span>With the destruction of the fleet, 50% of the resources used falls in the debris.</font>',
	
229 => 'M-7 ship using technology of extraterrestrial intelligence is only available during the holidays and bonuses.<br><br>
	<font color="#3399CC"><span style=" margin-left:0px; margin-right:4px; cursor:default; float:left;" class="interrogation">i</span>	helpful information:</font><br><br>
	<font color="#00FF00"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span>Used to attack the enemy. </font>
	<br>
	<font color="#00FF00"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span>With the destruction of the fleet, 50% of the resources used falls in the debris.</font>
<br><font color="#BC8F8F"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span> Available during the Campaign.</font>',
230 => 'M-32 ship using technology of extraterrestrial intelligence is only available during the holidays and bonuses.<br><br>
	<font color="#3399CC"><span style=" margin-left:0px; margin-right:4px; cursor:default; float:left;" class="interrogation">i</span>	helpful information:</font><br><br>
	<font color="#00FF00"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span>Used to attack the enemy. </font>
	<br>
	<font color="#00FF00"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span>With the destruction of the fleet, 50% of the resources used falls in the debris.</font>
<br><font color="#BC8F8F"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span> Available during the Campaign.</font>',
	
	401 => 'Der Raketenwerfer ist eine einfache aber kostengünstige Verteidigungsmöglichkeit. Da er nur eine Weiterentwicklung gewöhnlicher ballistischer Feuerwaffen ist, benötigt er keine weitere Forschung. Seine geringen Herstellungskosten rechtfertigen seinen Einsatz gegen kleinere Flotten, er verliert aber mit der Zeit an Bedeutung. Später wird er nur noch als Schussfang hinter großen Geschützen eingesetzt. Verteidigungsanlagen deaktivieren sich, sobald sie zu stark beschädigt sind. Nach einer Schlacht beträgt die Chance bis zu 70%, dass sich ausgefallene Verteidigungsanlagen wieder Instand setzen lassen.',
	402 => 'Um die enormen Fortschritte im Bereich der Raumschifftechnologie kompensieren zu können, mussten die Forscher eine Verteidigungsanlage entwickeln, welche auch mit größeren und besser ausgerüsteten Schiffen bzw. Flotten zurechtkommt. Dies war die Geburtsstunde des leichten Lasers. Durch den konzentrierten Beschuss eines Ziels mit Photonen konnte eine wesentlich größere Schadenswirkung erzielt werden als mit gewöhnlichen ballistischen Waffen. Um der größeren Feuerkraft der neuen Schiffstypen widerstehen zu können wurde er ausserdem mit verbesserten Schilden ausgestattet. Damit die Produktionskosten dennoch gering gehalten werden konnten wurde die Struktur nicht weiter verstärkt. Der leichte Laser besitzt das beste Preis-/Leistungsverhältnis überhaupt und ist dadurch auch für weiter fortgeschrittene Zivilisationen interessant. Verteidigungsanlagen deaktivieren sich, sobald sie zu stark beschädigt sind. Nach einer Schlacht beträgt die Chance bis zu 70%, dass sich die zerstörten Verteidigungsanlagen wieder Instand setzen lassen.',
	403 => 'Der schwere Laser stellt die konsequente Weiterentwicklung des Designs des leichten Lasers dar. Die Struktur wurde verstärkt und mit neuen Materialien verbessert. Die Hülle konnte so wesentlich widerstandsfähiger gemacht werden. Gleichzeitig wurden auch das Energiesystem und der Zielcomputer verbessert, so dass ein schwerer Laser wesentlich mehr Energie auf ein Ziel konzentrieren kann. Verteidigungsanlagen deaktivieren sich, sobald sie zu stark beschädigt sind. Nach einer Schlacht beträgt die Chance bis zu 70%, dass sich ausgefallene Verteidigungsanlagen wieder Instand setzen lassen.',
	404 => 'Projektilwaffen galten lange Zeit neben der moderneren Kernfusions- und Energietechnik, der Entwicklung des Hyperraumantriebs und immer besserer Panzerungen als antiquiert, bis eben genau die Energietechnik, die sie einst verdrängt hatte, ihr wieder zu ihrem angestammten Platz verhalf. Das Prinzip war eigentlich schon aus dem 20. und 21. Jahrhundert der Erde bekannt - der Teilchenbeschleuniger. Eine Gaußkanone ist eigentlich nichts anderes als eine erheblich größere Version dieser Konstruktion. Tonnenschwere Geschosse werden unter gigantischem elektrischem Aufwand magnetisch beschleunigt und haben Mündungsgeschwindigkeiten, die die Schmutzteilchen in der Luft um das Geschoss verbrennen lassen und der Rückstoss bringt die Erde zum Beben. Dieser Durchschlagskraft können auch aktuelle Panzerungen und Schilde nur schwer widerstehen, und es kommt nicht selten vor, dass das Ziel einfach durchschlagen wird. Verteidigungsanlagen deaktivieren sich, sobald sie zu stark beschädigt sind. Nach einer Schlacht beträgt die Chance bis zu 70%, dass sich ausgefallene Verteidigungsanlagen wieder Instand setzen lassen.',
	405 => 'Im 21. Jahrhundert der Erde gab es etwas, das allgemein als EMP bekannt war. EMP steht für Elektromagnetischer Puls, der die Eigenschaft hat, in alle Schaltkreise zusätzliche Spannungen zu induzieren und somit massenhafte Störungen zu verursachen, die alle empfindlichen Geräte zerstören können. Damals waren EMP - Waffen meistens noch auf Raketen- und Bombenbasis, auch in Verbindung mit Nuklearwaffen. Mittlerweile wurde der EMP ständig weiterentwickelt, da man in ihm ein großes Potential sah, Ziele nicht zu zerstören, aber kampf- und manövrierunfähig zu machen, so dass einer Übernahme nichts mehr im Wege stand. Die bisher höchste Form einer EMP - Waffe stellt das Ionengeschütz dar. Es schleudert eine Welle von Ionen (elektrisch geladene Teilchen) auf das Ziel, welche die Schilde destabilisiert und alle Elektronik - sofern diese nicht massiv abgeschirmt ist - beschädigt, was nicht selten einer völligen Zerstörung gleichkommt. Die kinetische Durchschlagskraft kann vernachlässigt werden. Die Ionentechnik wird auch auf Kreuzern eingesetzt, jedoch auf keinem anderen Schiffstyp, da der Energieverbrauch der Ionengeschütze enorm ist und es in einem Gefecht häufig darauf ankommt, das Ziel zu zerstören und nicht nur zu paralysieren. Verteidigungsanlagen deaktivieren sich, sobald sie zu stark beschädigt sind. Nach einer Schlacht beträgt die Chance bis zu 70%, dass sich ausgefallene Verteidigungsanlagen wieder Instand setzen lassen.',
	406 => 'Die Lasertechnik war mittlerweile nahezu perfektioniert, die Ionentechnik hatte ein Endstadium erreicht und es galt mittlerweile als praktisch unmöglich, auch aus nur einem Waffensystem qualitativ gesehen noch mehr Effektivität herauszubekommen. Doch all dies sollte sich ändern, als man auf die Idee kam, beide Systeme miteinander zu kombinieren. Schon aus der Kernfusionstechnik bekannt, erhitzen Laser Teilchen ( meistens Deuterium ) auf extrem hohe Temperaturen, die schon einmal in die Millionen Grad gehen. Die Ionentechnik trägt ihren Teil in Form von elektrischer Aufladung, Stabilisierungsfeldern und Beschleunigern bei. Wird die abzufeuernde Ladung genügend erhitzt, unter Druck gesetzt und ionisiert, jagt man sie mittels Beschleunigern in die Weiten des Alls Richtung Ziel hinaus. Der grünlich glühende Plasmastrahl bietet einen imposanten Anblick, es fragt sich aber, ob die Crew des Zielschiffes lange an ihm Gefallen haben wird, wenn in wenigen Sekunden die Hülle zerfetzt und die Elektronik geschmort wird... Der Plasmawerfer gilt als eine der gefürchtetsten Waffen überhaupt, und diese Technik hat auch ihren Preis. Verteidigungsanlagen deaktivieren sich, sobald sie zu stark beschädigt sind. Nach einer Schlacht beträgt die Chance bis zu 70%, dass sich ausgefallene Verteidigungsanlagen wieder Instand setzen lassen.',
	407 => 'Lange bevor die Schildgeneratoren klein genug waren, um auf Schiffen Einsatz zu finden, existierten bereits riesige Generatoren auf der Oberfläche von Planeten. Diese umhüllen den ganzen Planeten mit einem Kraftfeld, welches ungeheure Mengen an Energie absorbieren kann, bevor es zusammenbricht. Kleinere Angriffsflotten scheitern immer wieder an diesen Schildkuppeln. Mit zunehmender technologischer Entwicklung können diese Schilde noch verstärkt werden. Später kann man sogar eine große Schildkuppel bauen, die noch stärker ist. Pro Planet kann nur eine einzige kleine Schildkuppel gebaut werden.',
	408 => 'Die Weiterentwicklung der kleinen Schildkuppel. Sie basiert auf den gleichen Technologien kann aber wesentlich mehr Energie einsetzen um feindliche Angriffe abzuhalten.',
	409 => 'Die Weiterentwicklung der Großen Schildkuppel. Sie basiert auf den gleichen Technologien kann aber wesentlich mehr Energie einsetzen um feindliche Angriffe abzuhalten.',
	410 => 'Sie basiert, wie der Name schon sagt, auf einer Gravitonkraft, bekannt aus dem Todesstern und aus besseren Schiffen.',
	411 => 'Diese Plattform, mit gigantischem Ausmaß, ist das Größte was das Universum je gesehen hat. Es ist eine unbewegliche defensive Plattform. Sie besitzt keinen direkten Antrieb und wird durch Gravitonforschung in einer stabilen Umlaufbahn des Planeten gehalten. Das Starten dieses Vorgangs erfordert hohe Massen an Energie. Die Forscher arbeiten an einer Möglichkeit, auf dieser Plattform Schiffe zu bauen, um sie als einen äusseren Verteidigungsring zu nutzen, der es dem Gegner erschwert zur Planetaren Verteidigung durchzubrechen. Durch das gigantische Ausmaß ist es nur möglich einer dieser Monster zu besitzen.',
	412 => 'Lepton planned to create an instrument as a technical device that is designed to influence the minds of people against their will. But at the last minute additions to the project introduced as a result of which the gun has turned into a formidable means of defense against possible aggression planets. Charged particles leptons in contact with a view to produce great destruction in the boards and armor fleets.<br><br>
	<font color="#3399CC"><span style=" margin-left:0px; margin-right:4px; cursor:default; float:left;" class="interrogation">i</span>	helpful information:</font><br><br>
	<font color="#00FF00"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span>After the battle, recovering 50-70% losses. Percentage can be increased skill has circulated "Mechanic" in the academy.  </font>',
413 => 'Proton gun when fired uses inversion proton shell. Instrument requires long and bulky accelerators, which limits its occupancy large stationary installations. Particle beams represent a radiation hazard for all living beings and not radiation resistant electronics near the point of defeat and in the atmosphere, as well as near the beam path. <br><br>
	<font color="#3399CC"><span style=" margin-left:0px; margin-right:4px; cursor:default; float:left;" class="interrogation">i</span>	helpful information:</font><br><br>
	<font color="#00FF00"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span>After the battle, recovering 50-70% losses. Percentage can be increased skill has circulated "Mechanic" in the academy.  </font>',
414 => 'The "Canyon" was launched to improve the graviton guns and was a complete success. Instrument requires a lot of energy and material costs, as well as highly gravitational technology.<br><br>
	<font color="#3399CC"><span style=" margin-left:0px; margin-right:4px; cursor:default; float:left;" class="interrogation">i</span>	helpful information:</font><br><br>
	<font color="#00FF00"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span>After the battle, recovering 50-70% losses. Percentage can be increased skill has circulated "Mechanic" in the academy.  </font>',
415 => 'Quantum gun purposefully created to destroy the enemy fleet flagships, namely basic heavy vehicles. The principle of operation is based on guns transition of a substance from one phase to another thermodynamic when the magnetic field from the paramagnetic state to a weak ferromagnetic state.<br><br>
	<font color="#3399CC"><span style=" margin-left:0px; margin-right:4px; cursor:default; float:left;" class="interrogation">i</span>	helpful information:</font><br><br>
	<font color="#00FF00"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span>After the battle, recovering 50-70% losses. Percentage can be increased skill has circulated "Mechanic" in the academy.  </font>',
416 => 'Scientists, not so long ago proved that it is possible to use deuterium as a weapon. After some time, there Hydrogen gun. During contact with the skin or shields ship, there is the impulse that undermines deuterium.<br><br>
	<font color="#3399CC"><span style=" margin-left:0px; margin-right:4px; cursor:default; float:left;" class="interrogation">i</span>	helpful information:</font><br><br>
	<font color="#00FF00"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span>After the battle, recovering 50-70% losses. Percentage can be increased skill has circulated "Mechanic" in the academy.  </font>',
417 => 'Dora gun, is the most powerful defense of the middle class. Blyagodarya its power, it can destroy enemy armadas by an electromagnetic pulse, but because of him, the gun overheats very quickly and requires a lot of energy, so they are placed in the mountains and close to them, there is always power.<br><br>
	<font color="#3399CC"><span style=" margin-left:0px; margin-right:4px; cursor:default; float:left;" class="interrogation">i</span>	helpful information:</font><br><br>
	<font color="#00FF00"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span>After the battle, recovering 50-70% losses. Percentage can be increased skill has circulated "Mechanic" in the academy.  </font>',
418 => 'Photon cannon prototype was Proton gun. Photon Cannon, with its comparatively low price and powerful volley fire, it has become indispensable for global defense.<br><br>
	<font color="#3399CC"><span style=" margin-left:0px; margin-right:4px; cursor:default; float:left;" class="interrogation">i</span>	helpful information:</font><br><br>
	<font color="#00FF00"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span>After the battle, recovering 50-70% losses. Percentage can be increased skill has circulated "Mechanic" in the academy.  </font>',
419 => 'Particle emitter - is the result of long, hard work of scientists and engineers to create this type of defense. This is not one of those many kinds of multipurpose protect the planet or moon that can repel almost all known types of ships. Its strength lies in the combination of the plasma, graviton and ion guns, into one powerful beam which when hit, ship splits particles.<br><br>
	<font color="#3399CC"><span style=" margin-left:0px; margin-right:4px; cursor:default; float:left;" class="interrogation">i</span>	helpful information:</font><br><br>
	<font color="#00FF00"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span>After the battle, recovering 50-70% losses. Percentage can be increased skill has circulated "Mechanic" in the academy.  </font>',
420 => 'Mehador Slim - Self Defense uses technology of extraterrestrial intelligence is only available during the holidays and bonuses.<br><br>
	<font color="#3399CC"><span style=" margin-left:0px; margin-right:4px; cursor:default; float:left;" class="interrogation">i</span>	helpful information:</font><br><br>
	<font color="#00FF00"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span>After the battle, recovering 50-70% losses. Percentage can be increased skill has circulated "Mechanic" in the academy.  </font>
	<br>
	<font color="#00FF00"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span>Receives 10% damage when attacking interplanetary missiles. </font>
<br><font color="#BC8F8F"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span> Available during the Campaign.</font>',

421 => 'Mehador Iron - Self Defense uses technology of extraterrestrial intelligence is only available during the holidays and bonuses.<br><br>
	<font color="#3399CC"><span style=" margin-left:0px; margin-right:4px; cursor:default; float:left;" class="interrogation">i</span>	helpful information:</font><br><br>
	<font color="#00FF00"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span>After the battle, recovering 50-70% losses. Percentage can be increased skill has circulated "Mechanic" in the academy.  </font>
	<br>
	<font color="#00FF00"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span>Receives 15% damage when attacking interplanetary missiles. </font>
<br><font color="#BC8F8F"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span> Available during the Campaign.</font>',
422 => 'Mehador Grand - Self Defense uses technology of extraterrestrial intelligence is only available during the holidays and bonuses.<br><br>
	<font color="#3399CC"><span style=" margin-left:0px; margin-right:4px; cursor:default; float:left;" class="interrogation">i</span>	helpful information:</font><br><br>
	<font color="#00FF00"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span>After the battle, recovering 50-70% losses. Percentage can be increased skill has circulated "Mechanic" in the academy.  </font>
	<br>
	<font color="#00FF00"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span>Receives 15% damage when attacking interplanetary missiles. </font>
<br><font color="#BC8F8F"><span style=" margin-left:9px; margin-right:4px; cursor:default; float:left;">•</span> Available during the Campaign.</font>',
	
	
	
	
	
	
	
	502 => 'Abfangraketen zerstören angreifende Interplanetarraketen. Jede Bodenluftrakete zerstört eine Interplanetarrakete.',
	503 => 'Intercontinentalraketen zerstören die gegnerische Verteidigung, können allerdings durch Abfangraketen zerstört werden! Von Interplanetarraketen zerstörte Verteidigungsanlagen bauen sich nicht wieder auf.',

	601 => 'Der Geologe ist ein Experte bekannt in der Gesteinsphysiologie und der Kristallographie. Mit seinem Expertenteam bestehend aus Metall-Ingenieuren und Chemikern, assistiert er den interplanetaren Regierungen in der Recherche nach neuen Quellen und diese sicher gewinnen zu können.',
	602 => 'Der Flottenadmiral ist ein Kriegsveteran und ein gefürchteter Stratege. Sogar wenn die Schlacht aussichtslos scheint, bewahrt er einen kühlen Kopf, um Herr der Lage zu bleiben und den Kontakt zu seinen unterstellten Flottenkommandeuren aufrecht zu erhalten. Ein Imperator sollte sich den Flottenadmiral leisten um seine Angriffe zu koordinieren und um mehr Flotten in den Kampf ziehen zu lassen.',
	603 => 'Der Ingenieur ist ein Spezialist der energietechnischen Betriebsführung. Er optimiert die Effektivität der Energiereserven der Kolonie und steigert somit die tatsächliche Energieproduktion.',
	604 => 'Die Gilde der Technokraten sind die Wissenschaftler der bekannten Genies. Man findet sie dort wo die Technik ihre Grenzen erreicht. Niemand versteht die Dechiffrierung der Kryptographie eines Technokraten, seine alleinige Präsenz inspiriert die Kontrukteure des ganzen Imperiums.',
	605 => 'Der Konstrukteur ist ein Meister in der Planung von Gebäuden.',
	606 => 'Die Gilde der Wissenschaftler ist ein Zusammenschluss der erfolgreichsten Wissenschaftler des Imperiums. Sie sind die Spezialisten in der Verbesserung der Technologie.',
	607 => 'Der Lagerist beherrscht wertvolle Lagerungs- und Sortierkenntnisse. Durch hochentwickelte Lagertechniken und strukturelle Anpassungen, kann er das nutzbare Volumen eines Lagerraumes deutlich erhöhen.',
	608 => 'Der Verteidigungsminister ist Mitglied der imperialen Armee. Sein Elan und Ehrgeiz ermöglichen es jede Kolonie in Rekordzeit zu einen stark befestigtem Stützpunkt auszubauen.',
	609 => 'Der Bunker sah die beeindruckende Arbeit, die Sie in seinem Königreich gefertigt haben. Um Ihnen zu danken, eröffnet er Ihnen die Chance Bunker zu werden. Der Bunker ist die höchste Auszeichnung der Lagerstättenbranche der Imperialen Armee.',
	610 => 'Der Spion ist eine rätselhafte Person. Niemand kennt jemals sein wirkliches Gesicht, und noch weniger ob er schon tot ist.',
	611 => 'Der Commander der imperialen Armee ist Meister im Umgang mit der Flotte. Seine jahrelangen Erfahrungen mit Flotten, mit vielen strategischen Einsätzen, sind eine Bereicherung für jeden Herrscher.',
	612 => 'Der Zerstörer ist ein Offizier ohne Mitleid. Er hat Planeten nur zum Vergnügen dem Erdboden gleich gemacht. Er entdeckt momentan eine neue Methode um Massenvernichtungswaffen herzustellen.',
	613 => 'Der General ist eine ehrwürdige Person, der seit vielen Jahren in der Armee dient. Durch unzählige Manöver hat der General Strategien entwickelt, um die Flottengeschwindigkeiten in sämtlichen Konstellationen, verschiedenster Shiffstypen, zu optimieren.',
	614 => 'Der Imperator bemerkte bei Ihnen die unleugbaren Qualitäten des Eroberns. Er schlägt Ihnen vor Eroberer zu werden. Der Eroberer ist der Grad der höchsten Ausbildung der Eroberer der imperialen Armee.',
	615 => 'Sie haben gezeigt, dass Sie der größte Eroberer des Universums sind. Es ist Ihrer, solange Sie diesen Platz halten, den Sie bekommen haben.',

	701 => 'Der Bonus ist nur temporär.',
	702 => 'Der Bonus ist nur temporär.',
	703 => 'Der Bonus ist nur temporär.',
	704 => 'Der Bonus ist nur temporär.',
	705 => 'Der Bonus ist nur temporär.',
	706 => 'Der Bonus ist nur temporär.',
	707 => 'Der Bonus ist nur temporär.',	
);