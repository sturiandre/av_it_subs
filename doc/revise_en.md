# Instructions for reviewers


Resources | Link
-------- |: ----:
Mandatory | [[Language Guidelines]] (https://drive.google.com/file/d/1GuYx3r637srhyxY2QYfKYO9Jbka-_gKd/view?usp=sharing), [[Aegisub]] (http://www.aegisub.org/)
Recommended | [[Telegram Web]] (https://web.telegram.org), [[Telegram Desktop]] (https://desktop.telegram.org/)

## Introduction
The review takes place in two stages:

1. the first is linguistic and takes place during the translation;

2. the second concerns aspects of readability and occurs at the end of
   language translation / revision.

## First phase

### Setup
In order to make revisions for a given video, after reading the
[linguistic guidelines] (https://drive.google.com/file/d/1GuYx3r637srhyxY2QYfKYO9Jbka-_gKd/view?usp=sharing)
you need:

1. create (for free) an account on
   [GitHub] (https://www.github.com) ("Sign Up" and follow the procedure
   up to verify the email);
   
2. tell me the GitHub username you intend to collaborate with, for
   [enable] (../ data / users.csv).

A test file name will be answered: review and submit
the revision, * as illustrated * in the procedure set out for
[translators] (translate.md).

Once done, if you feel reasonably comfortable with it
    the modification / submission procedure can be passed to step
    next, alternatively you can ask

``
@lucailgarb # rev1-sandbox
``
for the preparation of another test file.


### Step by step process

In the revision activity, all the
[rules] (translate.md # guidelines-readability-for-translators) for i
translators. To materially carry out the linguistic revision:

* as soon as a translator communicates "translated" to his own piece
  the auditors are notified by tags;

* one of the reviewers responds with ** under review ** to self-assign it
  segment according to your availability;

* after which the reviewer reviews the file available on GitHub (with the
      same methods adopted by translators). Self:

- no changes needed responds to the file name with
      **completed**;

- minor changes are enough, then it responds
**completed**;

- changes are required by the translator, please report them
comment (always editing the file on GitHub) as follows:

``
3
00: 00: 33,000 -> 00: 00: 49,000
## Line 1 in English
## Line 2 in English
Translated text
translated text
## Comment for translators
## comment for translators

  
4
...
``

Note that the comment goes after * 2 hashs *, as * last line *
and making sure there is always ** at least one blank line of after
separation**.

Then it communicates to the translator (via Telegram) the need for
review the translation; the interaction will continue until
the translation will be ok, after which the reviewer will reply
** completed ** to file name.


A concise screenshot below:

<img src = "../ img / completed.jpg" alt = "completed" width = "400" />



## Second phase

### Setup
To be able to review the readability of sub it is necessary:
1. install [Aegisub] (http://www.aegisub.org/), the program it will come with
   checked your clip.
   
   As for Windows, you can possibly opt for the
   portable version (which does not require installation and therefore i
   administrator permissions on the machine).

2. to qualify for revision requests, correct and send me
   (Telegram or to lbraglia@gmail.com) the test file
   [`subs / sandbox / template_revisori2.srt`] (https://raw.githubusercontent.com/lbraglia/av_it_subs/main/subs/sandbox/template_revisori2.srt)
   (as explained below) which is based on [this
   video] (https://drive.google.com/file/d/1sCzIOzn6hRy0mvu3zgorERCDX_3IwRH0/view?usp=sharing)
   (to download);

3. Once enabled, download the video without
   subtitles we are working on: the link is on the [page
   main] (../ README.md), for example (for hnva2) here:

! [video-original-download] (../ img / video_original_download.png)

4. periodically (when available) in the Telegram group "AV:
   Translations and Sub YouTube "will be notified of the availability of files
   for readability review. An assignment can be requested
   by:
   
``
 @lucailgarb #revise
 ``


<! - ### The file we are working on ->

<! - The file we need to operate on through Aegisub: ->

<! - * was created during the translation / revision process ->
<! - linguistics and is the collage of several sequential files produced by ->
<! - different translators / proofreaders; ->

<! - * includes only the revised translation in Italian, since for ->
<! - English original audio is available (through upload ->
<! - of the video); ->
  
<! - * presents any comments left to reviewers as the last line ->
<! - by subtitle, preceded by `# REVIEWERS: ...`. For example ->
<! - if there is a comment on the screen, the following will be displayed: ->
  
<! - `` `` ->
<! - Translated text ->
<! - Translated text 2 ->
<! - # REVIEWERS: here when in doubt we opted for XYZ because ... ->
<! - `` `` ->
<! - Obviously, once the point is resolved, the reviewer comment ->
<! - will be deleted. Incidentally, the presence of comments will tend to ->
<! - be flagged by character metrics, for obvious reasons; ->

<! - * in correspondence with the sub at the beginning of the segment the -> has been placed
<! - comment `# REVIEWERS: first sub of piece`, to signal ->
<! - the need for continuity between what precedes and what follows ->
<! - (produced by different translators / proofreaders / independently). ->


### The step-by-step process

To work on reviews:

1. periodically (when available) in the Telegram group "AV:
   Translations and Sub YouTube "will be notified of the availability of files
   for readability review. An assignment can be requested
   by:
   
``
@lucailgarb #revise
``

A message will be replied (as soon as possible) with the location of the
file, of the type:

``
subs / hnva2 / revs_000000_002500_lbraglia.srt
``
which means: it has been assigned to you

* the file `revs_000000_002500_lbraglia.srt` (one
segment of subtitles that includes from those beginning a
`00: 00: 00` to those starting at` 00: 25: 00`)
* located in the `hnva2` folder (which contains subtitles
for "Holding Non-Vegans Accountable 2.0")
* located in the `subs` folder (which contains all
subtitles of all videos).


2. open [this] (https://github.com/lbraglia/av_it_subs) page, where I am
   keep the translations;

3. Then click on the `subs` folder

   ! [subs dir] (../ img / subs_dir.png)

4. click on the video folder (`hnva2` in the example)

! [hnva2 dir] (../ img / hnva2_dir.png)

5. at this point it is better ** to save this page in
   favorites ** (for easy access to upcoming sessions)
   because all the files of a given video are here and there
   will speed up access to the assigned file.

   Then click on the name of the file that has been assigned to us
   (`revs_000000_002500_lbraglia.srt` in the example);

   ! [subs file_select] (../ img / revs_file_select.png)

6. Click on `Raw` to get the file;

   ! [subs file_select] (../ img / revs_raw.png)

7. Now to download the file:

* in Firefox: right click, select "Save page as" or something linguistically similar
* in Chrome: right click, select "Save As ..." or something linguistically similar

Then ** delete ** any `.txt` extensions if proposed by your browser (while the" Save as "is irrelevant)


   ! [subs file_select] (../ img / firefox_chrome_rightclick.png)


   ! [subs file_select] (../ img / firefox_chrome_filesave.png)


8. At this point we should have both the video and the subs to edit
   in a suitable folder (or on the Desktop):

   ! [hnva2_folder] (../ img / hnva2_folder.png)

9. Double click on the `.srt` file to make Aegisub do it
    start editing.

If a message like "Aegisub cannot restrict the
character set "choose` UTF-8`.

We arrive at a similar screen:

   ! [double_click] (../ img / double_click_sub.png)

10. To upload the video click `Video -> Open video`, then
select it:

   ! [open_video] (../ img / open_video.png)

11. once the file has been imported we are in a situation of
generally, where maximizing the window at all is recommended
screen, set A to 100% and you can edit the subtitles
in box B

   ! [post_import] (../ img / post_import.png)

12. start checking / editing as recommended [more
below] (revise.md # editing-con-aegisub);

13. Important: ** save ** your work and ** backup ** the file
    `.srt` edited;

14. once you have finished editing your clip, send me the
    file (as you prefer, Telegram or lbraglia@gmail.com) for
    archiving and production of the overall `srt`.

15. * repeat * from 1.


### Editing with Aegisub

A minimal * workflow *:
1. click on the first line (sub);
2. press `r` to play the sub audio;
3. check the translation and fix it if necessary by editing
   in the appropriate box.
      
   In particular, check:
   * ** correct rendering in Italian ** of what is said in
English, following the [linguistic guidelines] (https://drive.google.com/file/d/1IACZxWdk84rs81ElQ9OWws-aroQZDtxZ/view?usp=sharing);
   * ** readability ** of the sub, referring to the relative
[guidelines] (revise.md # guidelines-readability-for-reviewers) by
referred to below.

   Avoid modifying:
   * formatting (eg do not add bolds etc, for compatibility);
   * * timing * of subtitles.

   If necessary break lines insert / move `\ N` (obtainable
   also, in the edit box B, using `Shift + Enter`);

4. if you have made any changes, save with `Ctrl + S`;
5. move to the next subtitle by clicking the respective line col
   left mouse button;
6. * repeat * from 2;
7. Once all the subtitles have been edited, you can check them
   overall by double clicking on the first sub and commanding
   `Ctrl + P` to play the video with revised subtitles.


### Readability Guidelines

At this stage, the guidelines for the review are:

Issue | Rule and / or example
------ | ---------------
\ # lines for sub | max 2 (`A` in the figure below)
Line length | max 42 characters (`B` in the figure below); [here] (https://translations.ted.com/How_to_break_lines) advice on how to "break"
CPS | max 30 chars / sec (`C` in the figure below)

<! - Minimum duration | Subtitles should be at least 0.7 seconds. ->
<! - Maximum duration | Split subtitles longer than 7 seconds. ->

<! - Speaker identification Identify off-screen and unclear speakers in parentheses. ->
<! - ex: (Michael) Wait for me! ->
<! - Foreign language Identify relevant speech in foreign language. ->
<! - ex: (Russian): Thank you. ->

### Readability statistics in Aegisub

A for number of lines, B for line length (maximum) and C the CPS for the sub
considered (the second).

! [stat_leggibilita_aegisub] (../ img / stat_leggibilita_aegisub.png)
