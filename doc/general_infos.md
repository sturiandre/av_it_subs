# General info for long video subtitling

Here are some infos on how subtitle for long videos are made by the
Italian AV team. These notes were written as of 2021-05-25, after
completing subtitles for workshop 2.0 (2:40 hours long) and almost all
Gary's mix (3:40 hours).

## Software and services
We use:
- GitHub for repository and subs translation (our repo is going to move
  [here](https://github.com/av-italia/subs))
- Aegisub for readability stats and final revisions (any other software with
  statisics such as CPS is fine)
- custom developed software for project management: currently we're
  using [this](https://github.com/lbraglia/lbav2) R package, but we're
  porting (and generalizing) it to Python
  [here](https://github.com/av-italia/pyavsubs)

## Comunication
We use Telegram for subs (translation/revision) allocation, progress
monitoring and so on.

## Profiles and translator selection
The team is currently composed by three type of figures:

- 10+ translator: linguistic skills, basic computer skills (browser)
- three revisors: linguistic skills, intermediate computer skills (browser, editing srt with ad hoc software)
- one repository admin: some programming skills

The repository admin and three revisors were already available:
translators were found asking for help to all Italian
organizers. Here's a template similar to what we use today (a Telegram
message in the activists resources channel)

```
Hear ye, hear ye!!!

Would you like to contribute to translations for AV materials?

We are looking for translators for our team!

No formal certificates in linguistic studies are needed (a quick translation test 
will be asked), only just some computer skills (using a browser). 
We'll use Telegram for communication

If you're interested, send your application following the instructions reported below

[Link to a google drive doc with which short video to translate and e-mail address for submission]
  
Come join us!
```

New aspiring translators are evaluated by our revisors and, if ok,
admitted to the telegram groups involving language localization.


## Attachments

Once added to the groups all the partecipants have links to the
relevant doc: a translation of the italian manuals are
[here](https://github.com/lbraglia/av_it_subs/blob/main/doc/translate_en.md)
(for translators) and
[here](https://github.com/lbraglia/av_it_subs/blob/main/doc/revise_en.md)
(for revisors).

## Other strategies

We start from the YT english speech-to-text generated subs; our
translators read the subs, listen to the video and then translate from
"machine english" to current italian. For long videos, a team is
needed since it's quite an heavy workload.

Otherwise YT sometime (not always) give the automatic
translated/generated subs (eg currently are unfortunately not
available for Gary's mix, because no subs are available at all as
source probably).
BTW, FYI, once uploaded the italian version, automatic generated subs
in your language should be available for sure (`Settings -> Subtitles
-> Automatic translation`): you may be interested in downloading (eg
using [downsub](www.downsub.com) by giving the YT url of the video,
and selecting say "Italian" from Auto-translate from) and editing them
(say with Aegisub or another `srt` editor). This should hopefully
speed up the process.
