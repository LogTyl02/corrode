"Corrode" by Dogleaf

Include Small Kindnesses by Aaron Reed.
Include Keyword Interface by Aaron Reed.
Include Extended Grammar by Aaron Reed.
Include Default Messages by David Fisher.



The release number is 1.
Release along with a website and the source text.
Release along with the "Quixe" interpreter.
The story headline is "An Autumn Fable".
Use no scoring.
Use American Dialect.
Use the serial comma.

The story description is "Where is it? You know it has to be here somewhere. The storm is getting worse."
The story genre is "Fiction".
The story creation year is 2013.

Release along with a website, an interpreter, and the source text.

Part - Mechanics

Chapter - Customization

[Instead of taking something:
	if the noun is scenery or the noun is fixed in place:
		say "You don't need to be carrying that around with you.";
	otherwise:
		say "You grab [the noun] and shove it into your pockets."
		now the player carries the noun;]

[ Using Default Messages by David Fisher]
When play begins:
	set LibMsg <Inventory initial text> to "You've got";
	set LibMsg <block attacking> to "Dude. Chill.";

Chapter - Lighting

[Brightness is a kind of value. The brightnesses are guttering, weak, radiant, and blazing.

A brightness can be adequate or inadequate. A brightness is usually adequate. Guttering is inadequate.

Temperature is a kind of value. 100C specifies a temperature.

A brightness has a temperature. The temperature of a brightness is usually 700C. The temperature of blazing is 1400C.
The temperature of radiant is 1100C.]

Chapter - Regions and Backdrops

The sky is a backdrop. The sky is everywhere.

Around The Workshed is a region.
	Workshed Entrance is in Around the Workshed.
	Pine trees are a backdrop in Around the Workshed. "WOOSH"


Part - Game

Chapter  - Workshed

Workshed Entrance is a room. "It's as dark and loud as a [o]coffin[x]. Rain crashes against the metal roof; rain pours down the small windows, and you can barely see the wind whipping the [o]pine trees[x] in the garden. Your old work area lies to the west."

	There is a storm lantern in workshed entrance. "An old [o]storm lantern[x] hangs on a peg."
		The description of the lantern is "You can't remember how long you've had this thing. It's proven a worthwhile companion on every adventure you've been on. Its wick [if the lantern has been lit] is partially burnt[otherwise]is still in perfect condition[end if]."
		Instead of examining the lit lantern, say "It glows like a hundred fireflies."
		
	Instead of burning the lantern:
	if the player carries the matchbox:
		say "You light the lantern.";
		say "You discard the empty matchbox.";
		now the lantern is lit.;
		remove the matchbox from play;
	otherwise:
		say "You don't have anything to light it with.";
			
		The storm lantern is unlit.
		Understand "lamp" as the storm lantern.
		Instead of taking the lantern when the player is carrying a matchbox:
			say "You light the matches, and grab the lantern.";
			now the lantern is lit;
			move the lantern to the player;
			say "You discard the empty matchbox.";
			remove the matchbox from play;
			
		
Cluttered Work Area is west of Workshed Entrance. "You had a reputable work space here, once. Now the [bench] is covered in [milk crates] and unorganized [tools]. Your little black [toolbox] sits in the corner, open from the last time you used it. The workshop extends to the north, against the back wall. The entrance is to the east."

	Instead of going north from Cluttered Work Area:
	if the player carries the lit lantern:
		say "You venture into the bleakness...";
		move the player to Dark Workshop.;
	otherwise:
		say "The light from the windows doesn't reach back there. You need some source of light to see.";
		

	A work bench, some milk crates, some tools, and a toolbox are scenery and undescribed in Cluttered Work Area.
	The toolbox is fixed in place.
	The description of the work bench is "A work bench."
	The description of the crates is "Some milk crates."
	The description of the tools is "Some old tools you inherited over time. Most of them are useless; broken, uncommon sizes, rusted."
	The description of the toolbox is "Lovely little thing."
		Understand "box", "chest", and "toolchest" as the toolbox.
		The toolbox is an open, openable, container. It contains a matchbox.
		
			The description of the matchbox is "Only a few left, and they're damp."
			
Dark Workshop is north of Cluttered Work Area.

Chapter - Homestead

Rain-slicked Bricks is south of Workshed Entrance. "Rain rain rain."

Backdoor is east of Rain-slicked Bricks. "The back door to your cabin."

Beneath the pine trees is west of Rain-slicked Bricks. "The learning tree. Ash god mammoth. Blood."