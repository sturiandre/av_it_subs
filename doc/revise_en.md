# Instructions for reviewers


**Resources**: [[Language Guidelines]](https://drive.google.com/file/d/1GuYx3r637srhyxY2QYfKYO9Jbka-_gKd/view?usp=sharing), [[Aegisub]](http://www.aegisub.org/).
**Recommended**: [[Telegram Web]](https://web.telegram.org), [[Telegram Desktop]](https://desktop.telegram.org/)

## Introduction
The review takes place in two stages:

1. the first is linguistic and it occurs during the translation;

2. the second concerns aspects of readability and starts at the end of
   translation / linguistic revision.

## First phase

### Setup
In order to make revisions for a given video, after reading the
[linguistic guidelines](https://drive.google.com/file/d/1GuYx3r637srhyxY2QYfKYO9Jbka-_gKd/view?usp=sharing)
you need to:

1. create (for free) an account on [GitHub](https://www.github.com) ("Sign Up" and follow the procedure up to email verification);
   
2. tell me the GitHub username for
   [authentication](../data/users.csv).

	A test file name will be prepared: review and submit the revision, *as illustrated* in the procedure described for [translators](translate.md).

	Once done, if you feel reasonably comfortable with the modification / submission procedure can be passed to step next, alternatively you can ask

	```
	@lucailgarb #rev1-sandbox
	```
	for the preparation of another test file.


### Step by step process

During the revision activity, follow the
[rules](translate.md#guidelines-readability-for-translators) for
translators. To carry out the linguistic revision:

* as soon as a translator communicates "translated" to his own piece, the reviewer are notified by tag;

* one of the reviewers responds with **under review** to self-assign it;

* after the review (with the same methods adopted by translators), the cases are:

	- no changes needed: respond to the file name with  **completed**;

	- minor changes are enough and done by the revisor: then respond with **completed**;

	- changes are required by the translator: please report them as a comment (always editing the file on GitHub) as follows:

	```
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
	```

	Note that the comment goes after *2 hashes*, as *last line*
	and making sure there is always **at least one blank line at the end of the sub	**.

	Then communicate to the translator (via Telegram) that his/her
	fixes are needed; the interaction will continue until the
	translation will be ok, after which the reviewer will reply
	**completed** to file name.


A screenshot below:

<img src = "../img/completato.jpg" alt = "completato" width = "400" />



## Second phase

### Setup
To be able to review the readability of sub it is necessary:
1. install [Aegisub](http://www.aegisub.org/), the program it will come with
   checked your clip.
   
2. as a test, send me (Telegram or to lbraglia@gmail.com) a corrected version the file
   [`subs/sandbox/template_revisori2.srt`](https://raw.githubusercontent.com/lbraglia/av_it_subs/main/subs/sandbox/template_revisori2.srt)
   (as explained below) which is based on [this
   video](https://drive.google.com/file/d/1sCzIOzn6hRy0mvu3zgorERCDX_3IwRH0/view?usp=sharing)
   (to be downloaded);

3. Once enabled, download the video (without
   subtitles) we are working on: the link is on the [main page](../ README.md), for example (for hnva2) here:

	![video-original-download](../img/video_original_download.png)

4. periodically (when available) in the Telegram group "AV:
   Translations and Sub YouTube "will be notified of the availability of files
   for readability review. An assignment can be requested
   by:
   
   ```
   @lucailgarb #revise
   ```


### The step-by-step process

To work on reviews:

1. periodically in the Telegram group "AV:
   Translations and Sub YouTube" the availability of files will be notified . An assignment can be requested by:
   
   ```
   @lucailgarb #revise
   ```

	A message will be replied (as soon as possible) with the location of the
	file, like this:

	```
	subs/hnva2/revs_000000_002500_lbraglia.srt
	```
	which means: you have been assigned on the file

	* `revs_000000_002500_lbraglia.srt` (one segment of subtitles that includes from those beginning a `00:00:00` to those starting at` 00:25:00`)
	* located in the `hnva2` folder (which contains subtitles for "Holding Non-Vegans Accountable 2.0")
    * located in the `subs` folder (which contains all subtitles of all videos).


2. open [this](https://github.com/lbraglia/av_it_subs) page;

3. Then click on the `subs` folder

   ![subs dir](../img/subs_dir.png)

4. click on the video folder (`hnva2` in the example)

	![hnva2 dir](../img/hnva2_dir.png)

5. at this point it is better **to save this page in bookmarks** (for
   easier access the next time).

   Then click on the name of the file that has been assigned to you
   (`revs_000000_002500_lbraglia.srt` in the example);

   ![subs file_select](../img/revs_file_select.png)

6. Click on `Raw` to get the file;

   ![subs file_select](../img/revs_raw.png)

7. Now to download the file:

	* in Firefox: right click, select "Save page as" or something linguistically similar
	* in Chrome: right click, select "Save As ..." or something linguistically similar

Then **delete** any `.txt` extensions if proposed by your browser (while the" Save as" is irrelevant)


   ![subs file_select](../img/firefox_chrome_rightclick.png)


   ![subs file_select](../img/firefox_chrome_filesave.png)


8. At this point you should have both the video and the subs to be
   edited in a suitable folder (or on the Desktop):

   ![hnva2_folder](../img/hnva2_folder.png)

9. Double click on the `.srt` file to edit it with Aegisub.

	If a message like "Aegisub cannot restrict the character set "choose` UTF-8`.

	We arrive at a similar screen:

   ![doppio_click](../img/doppio_click_sub.png)

10. To load the video click `Video -> Open video`, then select it:

   ![apri_video](../img/apri_video.png)

11. once the file has been imported you can tweek the visual setup
	(maximizing the window, set A to 100%), then you can edit the
	subtitles in box B

   ![post_importazione](../img/post_importazione.png)

12. start checking / editing as recommended [more below](revise.md#editing-with-aegisub);

13. Important: **save** your work and **backup** the `.srt` edited;

14. once you have finished editing, send me the file (by Telegram or lbraglia@gmail.com) for archive and production of the overall `srt`.

15. *repeat* from 1.


### Editing with Aegisub

A minimal *workflow*:
1. click on the first line (sub);
2. press `r` to play its audio;
3. check the translation and fix it by editing in the appropriate box.
      
   In particular, check:
   * **correct translation** of what is said in English, following the [linguistic guidelines](https://drive.google.com/file/d/1IACZxWdk84rs81ElQ9OWws-aroQZDtxZ/view?usp=sharing);
   * **readability** of the sub, referring to the guidelines by referred to below.

   Avoid modifying:
   * formatting (eg do not add bolds etc, for compatibility);
   * *timing* of subtitles.

   If necessary break lines by inserting / moving `\N` ;

4. if you have made any changes, save with `Ctrl + S`;
5. move to the next subtitle by clicking the respective line with left mouse button;
6. *repeat* from 2;
7. Once all the subtitles have been edited, you can check them
   overall by double clicking on the first sub and commanding
   `Ctrl + P` to play the video with revised subtitles.


### Readability Guidelines

At this stage, the guidelines for the review are:

Issue | Rule and / or example
------ | ---------------
\# lines for sub | max 2 (`A` in the figure below)
Line length | max 42 characters (`B` in the figure below); [here](https://translations.ted.com/How_to_break_lines) advice on how to "break"
CPS | max 30 chars / sec (`C` in the figure below)

### Readability statistics in Aegisub

A for number of lines, B for line length (maximum) and C the CPS for the sub considered (the second).

![stat_leggibilita_aegisub](../img/stat_leggibilita_aegisub.png)
