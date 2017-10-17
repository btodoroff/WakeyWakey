"Wakey Wakey! Eggs and Bacy!" by Brian Todoroff

Release along with an interpreter. 

The story description is
"It's Tuesday morning, your clock radio is pumping out the latest Taylor Swift, and school awaits."

Include Underside by Eric Eve

After printing the banner text:
	say "[line break]";
	say "You crawl out of bed to Taylor Swift's new song.  It's another Tuesday morning and you smell waffles calling to you from downstairs.";
	say "[line break]";
	try helping.
	

Chapter 1 - Setup

Section 1 - Kinds

A bed is a kind of container. A bed is always enterable. A bed is usually scenery. The description of a bed is usually "A rumpled but cozy collection of pillows and sheets." Understand "sheets" or "sheet" or "pillow" or "pillows" as the bed.

A toilet is a kind of supporter. Understand "john" as a toilet. A toilet is usually fixed in place and enterable and scenery.

Understand "flush [toilet]" or "use [toilet]" as flushing.

Flushing is an action applying to one thing.

Check an actor flushing a toilet (this is the block flushing toilets rule):
	if the player can see the actor:
		say "The toilet flushes dramatically." instead;
	stop the action.

Check an actor flushing something (this is the block flushing non-toilets rule):
	if the player is the actor:
		say "[The noun] doesn't flush." instead;
	stop the action.
	
Section 2 - Player

Tooth#thing is a kind of thing.  Tooth#thing can be brushed or unbrushed.
The teeth is a Tooth#thing .  The teeth are part of the player.  The teeth are unbrushed.  Description of the teeth is "[if brushed]Fresh and sparkly![else]Whoa! That breath makes your own eyes water![end if]!"
Hair#thing is a kind of thing.  Hair#thing can be brushed or unbrushed.
The hair is a Hair#thing.  Hair is part of the player.  Hair is unbrushed. Description of the hair is "It is [if brushed]looking quite nice.[else]a bit of a wild sight![end if]"

Understand "brush [something]" as brushing.

Brushing is an action applying to one thing.

Check the player brushing hair:
	if the hairbrush is not carried: 
		say "You could try it with your fingers, but really, you need a brush." instead;
	otherwise:
		if the hair is brushed:
			say "It's beautiful, but your losing time now!";
		otherwise:
			say "Fabulous! Just fabulous!";
			now the hair is brushed;
	stop the action.
	
Check the player brushing teeth:
	if toothbrush is not carried:
		say "You rub your fingers back and forth across your teeth with out much effect." instead;
	otherwise:
		if teeth are brushed:
			say "They are sure to dazzel your teacher, so there isn't much to improve." instead;
		otherwise: 
			say "You scrub away.  Top, bottom, inside, outside, and even scrub your tounge.  Sooo much better!";
			now Teeth are brushed;
		stop the action.
		
Check the player brushing something:
	say "There really isn't much point." instead.
	
The player is wearing yesterday's clothes.

Check wearing clean clothes when the player is wearing yesterday's clothes: 
	say "You have a tough time getting the new outfit over yesterday's outfit and give up." instead.
	
After taking off yesterday's clothes:
	try silently dropping yesterday's clothes;
	say "Yesterday's clothes fall to the floor.".

	
Section 3 - Win Conditions

Before going through Stairs:
	if Hair is unbrushed:
		say "Just as you take the first step down, Mom's voice rings out 'Not with that crazy, unbrushed hair!'" instead;
	otherwise if Teeth are unbrushed:
		say "You start to head down, but then catch a wiff of your own breath and almost pass out." instead;
	otherwise if the player wears yesterday's clothes:
		say "You look down and think someone will probably notice you're wearing the same clothes as yesterday." instead;
	otherwise unless the player wears the clean clothes:
		say "Ummm.... maybe you should put some clothes on first." instead;
	otherwise if yesterday's clothes are carried:
		say "You probably don't need to bring yesterday's clothes too school." instead;
	otherwise if toothbrush is carried:
		say "The toothbrush in your hand seems a bit of over kill for school." instead;
	otherwise unless toothbrush is on the counter:
		say "You rember leaving the toothbrush somewhere it shouldn't be." instead;
	otherwise unless hairbrush is on the counter:
		say "You should probably put the hairbrush away on the bathroom counter so it doesn't end up under the bed again." instead.
		
After going through Stairs:
	end the story finally saying "Mom looks you up and down and says 'You did a great job getting ready today! Grab a waffle and let's get in the car!'[if big dust bunny is carried] She looks at the big old dust bunny in your hand, but decides it's better not to ask.[end if]";
		
Section 3 - Help

Helping is an action applying to nothing.
Understand "help"  or "help me" as helping.

Carry out helping: 
	say "You can type 'look' to see what is around you.  'go' will let you go north, south, east, west, northwest, northeast, southwest, southeast, up, and down.  You can 'take' things, 'wear' things, 'drop' things, and a whole lot more.  Just give it a try.   Hurry up, Mom is waiting!".

Chapter 2 - House

Upstairs Hall is a room.

Lauren's Room is a room.

Caitlin's Room is a room.

Girl's Bathroom is a room.

The player is in Lauren's Room.

Section 1 - Lauren's Room

The description of Lauren's Room is "There as sooooo many things tucked into every nook and crany of this room.  Arts and crafts and projects cover the shelves and the bed is a rumpled pile of blankets and pillows." 

Lauren's Door is a door. "A door wearing a moustach and glasses is [if the player is in Lauren's Room]to the northwest[else]to the southeast[end if]." Lauren's Door is southeast of Upstairs Hall and northwest of Lauren's Room.  Lauren's Door is open.

Lauren's Bed is a bed. It is in Lauren's Room. "Warm and cozy, the bed calls to you, and random stuff peaks out from underneath it."  An underside called under#laurens#bed is part of Lauren's Bed.

Lauren's Closet is a room.

The Closet Door is a door. "The closet door[if the player is in Lauren's Closet or The Closet Door is open], complete with an array of fasionable footwear,[end if] is [if open]open[else]closed[end if] to the [if the player is in Lauren's Room]north[otherwise]south[end if]."  The Closet Door is north of Lauren's Room and south of Lauren's Closet. The Closet Door is open.

Lauren's Closet is a room. "Obviously a fasionista has stocked this closet!" The Dirty Clothes Basket is a container in Lauren's Closet. "A colorful dirty clothes basket sits in the middle of the closet and a few clothes have actually made it in!"  The clean clothes are in Lauren's Closet. "You clean outfit is ready to go."  Understand "outfit" or "clothes" or "clean outfit" or "today's outfite" as the clean clothes. The clean clothes are wearable.

The hairbrush is in under#laurens#bed.
A left shoe is in under#laurens#bed. "A lonely sneaker". Understand "shoe" or "sneaker" as the left shoe.
A big dust bunny is in under#laurens#bed.  Understand "dust bunny" or "dust" or "bunny" as Big Dust Bunny.

Section 2 - Caitlin's Room

The description of Caitlin's Room is "This is a very cute room with purple walls and a zoo's worth of stuffed animals.  The bed looks a bit like a fluffy tornado has been through.  Sounds like Caitlin has already made it downstairs." 
 
Caitlin's Door is a door. "A [if open]open[else]closed[end if] white door is [if the player is in Caitlin's Room]to the northeast[else]to the southwest[end if]." It is southwest of Upstairs Hall and northeast of Caitlin's Room.  It is open.

Caitlins's Bed is a bed. It is in Caitlin's Room. "The blankets are kicked every which way and pillows and stuffed animals are tossed around randomly."

Section 3 - Girl's Bathroom

The description of Girl's Bathroom is "A small bathroom complete with calming blue walls, a single granite sink, toilet, and shower with tub."

The bathroom door is a door. "The bathroom door is [if open]open[else]closed[end if] to the [if the player is in Girl's Bathroom]south[else]northeast[end if]."  Bathroom Door is northeast of the Upstairs Hall and south of Girl's Bathroom.  Bathroom Door is open.

The shower is a container in Girl's Bathroom.  Shower is enterable.  Shower is scenery. The description of Shower is "A tub with shower and glass doors is surrounded with white marble walls with streaks of blue that remind you of the waves at the beach."  Understand "tub" or "bathtub" as Shower.

The bathroom toilet  is a toilet in Girl's Bathroom.

The counter is a supporter in Girl's Bathroom.

The toothbrush is on the counter.

Section 4 - Downstairs

Stairs is a door. "The stairs lead down to breakfast once you are ready for the day."  Stairs is down from Upstairs Hall and up from Downstairs. Stairs is open.
