module About exposing (viewAbout)

import Html exposing (Html)
import Html.Attributes exposing (class)
import Markdown exposing (toHtml)

import Helpers exposing
  ( viewHomeLink
  , viewMainContentTitle
  , viewParagraph
  , viewPhoto
  , viewSection
  )


viewAbout : List (Html msg)
viewAbout =
  [ viewMainContentTitle "Where it all went wrong"
  , toHtml [ class "section" ] """
# Bugs vs Features

What's the difference between a bug and a feature? A bug is something that "shouldn't"
happen, while a feature is something that "should" happen. But this immediately begs the
question: according to whom? You might think I'm talking about software. Given that I've
spent most of my life writing and maintaining software, that is probably a reasonable
assumption. I'm not, though. Well, I sort of am, but it goes much deeper than that. The
first problem is that to most people who are not software developers, software is
essentially magic. The second problem is that, to most people who are software
developers, software is just whatever their mental model of software happens to be -
which is usually not particularly far removed from being essentially magic. To summarize:
the difference between people who understand software and the people who don't understand
software is not usually the presence or absence of some sort of categorically complete
"understanding", but rather the degree to which they can reason about things they
fundamentally don't understand. This is true not only of software, but with regards to
virtually everything. The third and perhaps most fundamental challenge is that I am
attempting to explain to you what reality is and how it works using words. This poses two
major problems. First: reality is not made of words. Second: I have no idea what reality
is or how it works.

# Authority and Faith

Why should you believe me? That's easy: you shouldn't. But then why should you believe
anyone? About anything? There seem to be two different kinds of people. Actually there
seem to be around 8 billion different kinds of people, but I haven't met them all and
even if I had, describing them all would make this unreadable. Reality seems to be
somewhat complicated and at least as far as I can tell, none of us have encountered all
of it. In an attempt to make navigating it somewhat manageable, evolution seems to have
developed a rather nifty trick. It's called "modeling". You probably "understand" what a
model is, but since I've (hopefully) already established that nobody actually understands
anything, allow me to try to explain it anyway. A model is a thing which is somewhat like
another thing while not actually being that other thing. Mathematicians would call it an
"abstraction". Linguists might call it an "analogy". These are all the same thing. Or at
least... these are all models attempting to represent the same thing. Which is ultimately
the point: models represent things. But I digress. Back to my original point: there seem
to be two different kinds of people. Or rather: it is in some sense useful to model
people as belonging to one of two potentially interesting categories: "nerds" and "normal
people".

What's the difference between "nerds" and "normal people" you ask? Well, there are
probably a myriad of different answers one could give there. Nerds are often seen as
having autistic traits and one somewhat prevalent autistic tendency is known as
"pathological demand avoidance". We ("nerds", for I tend to count myself among these
weird and wonderful social pariahs) don't like being told what to do. This often extends
to being told what to believe. As such, we tend to progress into life's later stages
while never completely getting over the childlike obsession with constantly asking
"why?". This can be either enlightening or debilitating. Usually both.

But what is the alternative? The alternative (at least as far as I can tell) is to adopt
and subscribe to some system of epistemological authority. It has long been debated to
what extent hierarchy is a "natural" phenomenon or a social construct. While I have no
real interest in delving into that particular debate at this precise moment, it is
perhaps worth briefly asking "what's the difference?" before immediately moving on
without answering that question in any particularly interesting or compelling fashion.
What is a system of epistemological authority, you ask? Well, "epistemology" is the study
of how we "know" things; but since I don't really believe anyone knows anything, we can
perhaps just call it the study of why people believe things. With all that rambling out
of the way, I can now get to what may or may not be my penultimate point: "nerds" believe
things because they seem to be "true" while "normal people" believe things because people
who are "smarter" than them do (or if you don't base your system of epistemological
authority on "intelligence", then perhaps you prefer more "faithful", "enlightened",
"authoritative", "knowledgeable", "experienced", or whatever particular adjective you'd
like to describe someone whose aura or social standing or whatever does it for you
conveys the general sense that the things they believe should probably also be believed
by you).

# Antiquity: Gods and Kings

The ancient Mesopotamian city-state of Babylon once held an annual festival called
'Akitu'. This was a spring festival of rebirth. The details are a bit lost to history but
as far as I understand it, it was essentially a way of re-establishing the legitimacy of
the authority of both the religious caste and the political caste. Every year the
priests and political leaders would throw a big celebration to remind everyone of the
extent to which they depended on the Gods for their well-being. During the festival, the
people would be given time off work and ceremonies would be held during which the priests
would offer prayers to Marduk, the chief God of the pantheon worshipped by Babylonians.
These prayers would reinforce how little anyone knew about anything and the extent to
which everyone depended on the benevolence of Marduk to ensure everything would work out.
Since the priests were the representatives of Marduk and the other Gods, this more or
less ensured their legitimacy. During the festival, the King would make a big deal of
showing off how much he feared and respected Marduk (and by extension the religious
leaders who represented him) and the religious leaders would then "sanctify" the King,
conveying to the people that the King respected Marduk (and by extension them, his
representatives) and the people would be left with the general impression that if they
wanted to be on good terms with Marduk and the other Gods, then being on good terms with
the religious and political authorities would likely be a pretty good place to start.

Fast-forwarding and shifting geographical contexts, we arrive at what is often considered
the foundation of Western civilization: the Greeks. Many things haven't changed much:
there are Gods, there is a pantheon, Kings rule by some form of divine right and the
religious caste still (arguably) holds most of the power through their ability to shape
the overarching narrative. In some ways things may be getting a bit more interesting,
though. The standard narrative surrounding the Greeks is they laid a lot of the
groundwork for the Roman Empire which preceded the Monarchies of the Middle Ages which
preceded the Liberal Democracies of the present day. What I find most interesting about
the Greeks is that some of the most influential ancient Greek dudes who we learn about
and study did not believe in the prevailing orthodoxy of their day. Socrates (who is
sometimes credited as the founder of Western philosophy) was forced to drink hemlock
poison by the political elite for being an atheist and "corrupting the youth" of Athens.
It is perhaps not entirely false to state that in ancient Greece we find what may be
described as the beginning of a long and drawn-out "revenge of the nerds". Though this
would not come to full fruition until much later during the Enlightenment... and perhaps
not even then.

The early phases of the Roman Empire mirror the Greeks (and the Babylonians, the
Persians, the Assyrians, etc.) to the extent that it is not particularly interesting to
dwell on them too much. Again: Gods, Kings, divine rights, big/sharp sticks, the usual
deal. Where it gets a bit more interesting is around year 0. As the story goes: a Jewish
carpenter married a virgin who gave birth to a guy who said it would be great if we would
be a bit nicer to each other and maybe not invest quite so much time and effort into
bashing and poking each other with big/sharp sticks. This idea proved to be quite
popular. So popular, in fact, that within a couple hundred years this guy's followers
represented a substantial political challenge to the authority of the Roman Empire. Not
to be outdone: the Roman Empire quickly reoriented themselves around the theology of
being nice to people and not poking people with sharp sticks. Not unless they disagreed
with the exact specificities of the doctrine surrounding how and why people should not be
poked with sharp sticks. In that case... well it was only natural that they must be poked
with sharp sticks.

Eventually the Roman Empire got a bit too big to be politically managed by a single
central authority using the communications and transportation technologies of the day.
The theological centre of power remained vested in the Roman Catholic Church while the
political centres of power fractured into a myriad of more local monarchies. This lasted
a while. Eventually a guy named Martin Luther got somewhat annoyed at how mean people
were being to each other in the name of being nice to each other and an English king got
a bit annoyed at not being allowed to get a divorce. While this didn't exactly mark an
end of the theological power of the Roman Catholic Church, it definitely put a bit of a
damper on it.

# Modernity: Accuracy and Predictability

It's hard to say exactly when the Enlightenment started or what or who started it. After
all, nerds have sort of always been around. Sometime around the 17th century they started
to feel like the political atmosphere was such that they might be able to get away with
being a bit more vocal about their ideas without being poked with sharp sticks or forced
to drink hemlock poison. Suffice it to say that it was around this time that the general
notion that the universe might progress according to certain identifiable patterns and
may not actually be entirely governed by the whims of divine/mythical beings started to
gain a bit more traction. This led to a bit of an explosion in the discovery and sharing
of said identifiable patterns. Science was on the way in, religion was on the way out. It
began with nerds showing kings that "science" and "rational thought" led to discoveries
like gunpowder (which led to far more effective ways of taking and holding onto power
than poking people with sharp sticks). It ended with Nietzsche proclaiming "God is dead"
and largely getting away with it.

Nietzsche's proclamation (and concurrent developments in philosophy and science) weren't
entirely devoid of consequence, though. With the notion of divine will having had its
legitimacy quite thoroughly deconstructed, dismantled, and undermined: alternative
explanations for power became necessary. With rationalism taking center stage and
knowledge and intelligence ranking chief among its virtues, Adam Smith proposed that
power must be held by those who are more rational. That is to say: those who are better
able to model and predict the future. I'm paraphrasing of course, but this is essentially
the core premise of capitalism: accurately predict what the market demands and be the one
to supply it and you will hold power.

This is all well and good. In France people started to get a bit angry with the overall
arbitrariness of Kings and their divine right and a few people got poked with sharp
sticks or had their heads lopped off before they eventually settled back on having an
emperor. Not so much on the basis of his divine right but largely because he had proven
to be the most competent at getting people who liked him to poke people who didn't like
him with sharp sticks. Some things never really change. This was enough to scare most of
the rest of the Kings into largely putting an end to saying they were in charge "because
God says so" and either instituting Democracy (because "you the people" say so) or overt
authoritarianism (because I'll poke you with a sharp stick if you don't like it).

# Post-Modernity: Nature and Ideology

There is one teensy little problem with basing our social order on the ability of
rational and intelligent humans to model and predict reality. Reality includes humans.
This leads to a clever little trick: once you start making accurate predictions and
getting rewarded for them, you can then use those rewards to incentivize other humans to
help you. This, of course, means that going forward your predictions are far more likely
to be accurate. Not so much because you're necessarily "smarter" or "more rational"; but
because you have a lot of power and the other humans that inhabit reality have some
pretty compelling reasons to work fairly hard to make reality conform to your
"predictions". This can lead to certain kinds of "prophecies" (made by certain kinds of
people) becoming self-fulfilling.

Around the turn of the 20th century things were going well. Rationalism was in full force
and had just carried out an industrial revolution that had birthed factories and steam
engines and all manner of fancy new ways of making the lives of people who you like and
who like you rather pleasant while bringing about a swift and untimely end to the lives
of people who you don't like and who presumably don't like you. Things are never uniform,
though. European powers were entrenched in large-scale colonial wars in an attempt to
divvy up the world. This meant that things were going well if you were aligned with a
powerful European colonial power who you liked and who thought well enough of you. If you
weren't: things were probably not all that great.

The European colonial powers were of course not monolithic. Each wielded its rationalism,
industrial power, and colonial might to further its own ends. Winners gained the benefits
of an enlarged pool of resources. Losers dwindled further and further into historical
insignificance. Since everyone was ultimately out for themselves and the world was small
enough to be colonised but large enough to preclude any sense of pervasive unity,
eventually the situation came to a head. The Great War officially broke out in 1914. Four
years later, with 30-40 million people dead, it concluded. The Allies "won", the Central
Powers "lost". But as the events of the next few decades would make clear: nothing was
really resolved.

Following the Great War the winners basked in their victory while the losers wallowed in
their defeat. Explanations were as plentiful as they were incomplete. This era saw the
birth of both Fascism and Communism. While these ideologies are certainly interesting and
worthy of further exploration, I won't delve into them here. Suffice it to say that if
humanity learned any lessons whatsoever from the Great War, it's that we simply hadn't
warred hard enough. Naturally, this led to a sequel. The sequel brought about the deaths
of 75-80 million more people and concluded with the invention of nuclear annihilation.
Arguably, we still hadn't really learned anything.

Though perhaps I've been a bit cynical. The period that followed World War II - "The
Great Moderation" - has been an era of unprecedented development and growth. Immediately
following World War II, the victorious Allies set about helping each other and even the
nations of the former Axis rebuild. The United States and its allied nations invested
heavily in the reconstruction of territories that had hitherto waged war against them,
leading to great prosperity not just for the victors but for much of the developed world.
Another rather nifty invention was that of the welfare state. This was a system of social
security that provided for the basic needs of all citizens, regardless of their present
ability to work or contribute to the economy. As it turns out, this was a pretty good
idea. Devoting a relatively substantial amount of resources to helping people unable to
contribute to the economy figure out whatever problems they might be having that were
preventing them from contributing to the economy in a particularly meaningful sense led
to a lot of people being able to contribute to the economy rather more than they had
previously been able to. However briefly the lesson might last, humanity seemed to have
finally learned that cooperative construction was in most cases preferable to competitive
destruction for most of the people involved.

Though it must be mentioned that the time since World War II has not been entirely devoid
of conflict. Almost immediately following the conclusion of World War II, relationships
with the Soviet Union soured rather considerably. Despite the wild successes of science
and rationalism when compared with the old ways of knowing things (faith and religion),
science had never quite gotten a firm grasp on how exactly time works. While it was
generally understood that the past happened a little bit ago, the present was happening
now, and the future would be occurring in a short while; there remained a bit of a rather
puzzling conundrum. While this somehow always seemed to be the case, the details of
exactly what had happened, what was currently happening, and what might yet happen in the
future had a persistent and rather annoying tendency to shift quite considerably.

For the most part, things that happened in the past stayed there. There are of course a
few important details: there is rather a lot of the past, and it took place in quite a
few different places; so while we can be relatively sure that things happened, there
remains pervasive disagreement about what exactly happened when and where and which parts
of it are most worth discussing. The present is the present and while we are perpetually
living in it, it never seems to last long enough to be particularly worthy of discussion.
The future, on the other hand, is both perpetually out of reach and the topic of the most
vehement disagreements.

With God largely out of the picture (as Nietzsche had pointed out), this left nature with
the final say on what exactly would occur in the future. Darwin and many others spilt a
great deal of ink on the topic of how exactly nature went about deciding how the future
would unfold. To the astute reader the conclusion they came to is by this point probably
somewhat obvious: those with the biggest and sharpest sticks get to decide. There was
only one small issue with Darwin's theory of evolution: it wasn't very good at making
predictions. You see, science and rationalism had developed a bit of a preference for one
particular tool with which to build their models to make predictions about things:
Mathematics. Thankfully, a little less than a century or so later, Darwin's ideas on the
inevitability of winners winning were transcribed from biology to economics and rewritten
in much more Mathematical terms by the likes of Friedrich Hayek and Milton Friedman
(among others).

# The Neoliberal Present: Information and Influence

The failures and eventual collapse of the Soviet Union marked the end of any perceived
need felt by the "winners" to give anything at all to the "losers". Individualism had
clearly won, after all. Collectivism had clearly lost and winners winning was only
natural. Capitalism was no longer ideology. It was reality. This was made evident by the
likes of Margaret Thatcher (the British prime minister during the 1980s) constantly
reiterating her slogan "there is no alternative" right as she, her friend Ronald Reagan,
and other early neoliberal political leaders began their decades-long project of
gradually dismantling any and all paths to anything that might resemble an alternative.

For a long time this worked rather well. The peace and prosperity of the Great Moderation
combined with the post-war demographic trends had produced an unusually large population
of unusually wealthy baby boomers. Everyone was educated. Everyone had a well-paying job.
Everyone could afford a fairly nice house and a couple of vehicles. Well... not quite
everyone. Everyone who mattered, though. Certainly all of the "winners"... and there were
an unusually large number of winners. It was perhaps not unreasonable for many of the
baby boomers to have believed (and by and large still believe) that capitalism could and
would let everyone - or at least an increasingly large share of an increasingly large
population - be "winners".

Mathematically there is one small problem: for an increasingly large share of an
increasingly large population to be increasingly prosperous... a lot of things have to
keep increasing. From a very naive viewpoint this makes a certain amount of sense: many
things seem to have been increasing for quite a long time, therefore one ought to expect
that they are likely to keep increasing for quite some time to come. The two quantities
that the kinds of economists who like to paint rosy pictures of a prosperous future tend
to focus on are populations and wealth. These quantities are rather important for a
rather important reason. Before we get to that, though, we need to discuss a rather
pernicious little detail about money that many people are not aware of (or at least don't
really like to think about). There isn't really any money. On one hand this is obviously
not true: you may have money in your bank account, you may get paid money for working,
and many if not most people seem to be able to procure enough money to cover most of
their needs and many of their desires. Money seems to be everywhere. Except when you ask
"what is money?", the answer (at least in the present age) is usually debt. So, when I
say "there isn't really any money" - what I actually mean is there isn't really any money
that someone has and is able to use and spend to satisfy their needs and/or desires that
is not elsewhere represented as an obligation for someone to pay someone else back for
something. Usually with interest.

Back to population and wealth. Assuming there is an ever-increasing population with an
ever-increasing quantity of wealth then there's a possibility that more people can just
acquire more wealth (or equivalently: debt) to pay off the old loans. On and on the cycle
goes, each generation going further into debt (or getting richer, depending on which side
of the ledger you prefer to focus on) to pay off the loans of the last generation. There
are two small problems. First: the population in most countries has already (or will
soon) plateau. An ever-increasing population doesn't seem to be in the cards. Second:
while there is some debate as to the extent to which wealth accumulation corresponds with
energy usage, it is widely (if not universally) accepted that to do economically
worthwhile activities in the vast majority of cases requires using some form of energy.
The cheapest and most abundant sources of energy remain coal, oil, and gas. An
ever-increasing amount of wealth generation is very, very likely to correspond to an
ever-increasing quantity of energy consumption. The planet is already starting to take
issue with our current levels of energy consumption - let alone the vastly increased
quantities of energy consumption that continuing this trend would demand in the future.

So what happens next? I sure as hell don't know. The orthodox view is a rather dogmatic
certainty in fundamental and quantifiable uncertainty. What the hell does that mean? Glad
you asked. It means the "experts" are extremely confident they can predict certain things
extremely well and rather confident that they have a pretty good handle on what they
can't predict and the extent to which they can't predict it. Translation? They think they
know everything. Or at least everything worth knowing. They certainly acknowledge there
are things they can't predict (or at least not with absolute certainty and precision);
but in general they believe with all the faith of the ancient priests of Babylon that
Marduk (or in this case Mathematics) is on their side and whatever they don't know, no
one else knows either. Pretty typical "pride before the fall" hubris (if you ask me). The
big issue I see is there are a fair number of them and as usual they aren't particularly
well aligned with one another. In all likelihood they will get along less and less well
as time goes on. That's what happens when more and more people become "losers" and the
fewer and fewer remaining "winners" are forced to compete with each other rather than
continue siphoning off the dwindling resources of an increasingly indebted and
immiserated population of "losers". If I were to hazard a guess, we seem to be heading in
the usual direction things go when the winners have "won" and the losers have "lost":
blame the immigrants and foreigners and start building up your military as everyone
prepares to reset the game board.
"""
  , viewHomeLink
  ]
