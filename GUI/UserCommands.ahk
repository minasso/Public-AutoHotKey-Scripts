#NoEnv  						; 
#Warn  							; Enable warnings to assist with detecting common errors.
SendMode Input  				; use relative coordinates for clicks
SetWorkingDir %A_ScriptDir%     ; Ensures a consistent starting directory.
#SingleInstance force
 
;-------------------------------------------------------------------------------------------------------------------------------------
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;          MOOC SEARCH          ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;-------------------------------------------------------------------------------------------------------------------------------------

if Pedersen = mooc1
{
	gui_search_title = Mooc Search
	send ^c
	sleep 200 
	gui_search("https://www.coursera.org/courses?languages=en&query=REPLACEME")
	gui_search("https://www.edx.org/course?search_query=REPLACEME")
	gui_search("https://www.udacity.com/courses/all")  
}

else if Pedersen = mooc2
{
    gui_search_title = Mooc Search
	gui_search("https://learn.saylor.org/course/search.php?search=REPLACEME")
	gui_search("https://legacy.saylor.org/#courselist")
	gui_search("http://myeducationpath.com/search/REPLACEME.htm?")
}

;-------------------------------------------------------------------------------------------------------------------------------------
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;        EBOOKS SEARCH          ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;-------------------------------------------------------------------------------------------------------------------------------------
else if Pedersen = bk%A_Space%
{
    gui_destroy()
    send ^c
	sleep 300
    run http://bookzz.org/s/?q=%clipboard%&yearFrom=&yearTo=&language=&extension=&t=0
	return
}
else if Pedersen = book%A_Space%
{
    gui_search_title = Ebook Search
	gui_search("http://bookzz.org/s/?q=REPLACEME&yearFrom=&yearTo=&language=&extension=&t=0")
	gui_search("http://en.bookfi.net/s/?q=REPLACEME&t=0")
    gui_search("http://b-ok.org/s/?q=REPLACEME&yearFrom=&yearTo=&language=&extension=&t=0")

}

else if Pedersen = book1
{
    gui_search_title = Ebook Search
	gui_search("https://www.google.com/search?q=REPLACEME+.pdf")
    gui_search("http://b-ok.org/s/?q=REPLACEME&yearFrom=&yearTo=&language=&extension=&t=0")
	gui_search("http://bookzz.org/s/?q=REPLACEME&yearFrom=&yearTo=&language=&extension=&t=0")
	gui_search("http://en.bookfi.net/s/?q=REPLACEME&t=0")
}

	else if Pedersen = bookz
{
    gui_search_title = Ebook Search
	gui_search("https://www.google.com/search?q=REPLACEME+.pdf")
	gui_search("http://bookzz.org/s/?q=REPLACEME&yearFrom=&yearTo=&language=&extension=&t=0")
	gui_search("http://en.bookfi.net/s/?q=REPLACEME&t=0")
    gui_search_title = Ebook Search	
	gui_search("http://libgen.io/search.php?req=REPLACEME")
	gui_search("http://golibgen.io/search.php?search_type=magic&search_text=REPLACEME&submit=Dig+for")
	gui_search("http://gen.lib.rus.ec/search.php?req=REPLACEME")
    gui_search("http://b-ok.org/s/?q=REPLACEME&yearFrom=&yearTo=&language=&extension=&t=0")
    
}	

;-------------------------------------------------------------------------------------------------------------------------------------
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;        OTHER SEARCH         ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;-------------------------------------------------------------------------------------------------------------------------------------
else if Pedersen = span ; Translate English to Spanish
{
    gui_search_title = English to Spanish
    gui_search("https://translate.google.com/#en/es/REPLACEME")
}

else if Pedersen = wiki 
{
    gui_search_title = Wiki Search
    gui_search("https://www.wikiwand.com/en/REPLACEME")
}
;;;;;;;;;;; FOOD ;;;;;;;;;;;;;;;;;;;;;
else if Pedersen = food
{
    gui_search_title = Food Search
	gui_search("https://www.grubhub.com/search?orderMethod=delivery&locationMode=DELIVERY&facetSet=umamiV2&pageSize=20&hideHateos&queryText=REPLACEME&latitude=40.72567749&longitude=-73.46258545&facet=open_now:true&sortSetId=umamiV2&countOmittingTimes")
	gui_search("https://www.seamless.com/search?orderMethod=delivery&locationMode=DELIVERY&facetSet=umamiV2&pageSize=20&hideHateos&queryText=REPLACEME&latitude=40.72567749&longitude=-73.46258545&facet=open_now:true&sortSetId=umamiV2&countOmittingTimes")
}	
;-------------------------------------------------------------------------------------------------------------------------------------
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;        SEARCH SPACE         ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;-------------------------------------------------------------------------------------------------------------------------------------
else if Pedersen = g%A_Space% ; Search Google
{
    gui_search_title = LMGTFY
    gui_search("https://www.google.com/search?num=50&safe=off&site=&source=hp&q=REPLACEME&btnG=Search&oq=&gs_l=")
}
else if Pedersen = url
{
    gui_search_title = Type in URL
    gui_search("REPLACEME")   ;use REPLACEME to insert search keyword
}
else if Pedersen = u%A_space%  
{
    gui_search_title = Type in URL
    gui_search("REPLACEME")   ;use REPLACEME to insert search keyword
}
else if Pedersen = ig%A_Space% ; Search Instagram
{
    gui_search_title = Instagram
    gui_search("https://www.instagram.com/REPLACEME")
}
else if Pedersen = ahk%A_Space% ; Search Google for AutoHotkey related stuff
{
    gui_search_title = Autohotkey Google Search
    gui_search("https://www.google.com/search?num=50&safe=off&site=&source=hp&q=autohotkey%20REPLACEME&btnG=Search&oq=&gs_l=")
}
else if Pedersen = dic%A_Space% ; Search dictionary 
{
    gui_search_title = Dictionary Search
    gui_search("http://www.dictionary.com/browse/REPLACEME")
}
else if Pedersen = incog ; Search Google as Incognito
;   A note on how this works:
;   The function name "gui_search()" is poorly chosen.
;   What you actually specify as the parameter value is a command to run. It does not have to be a URL.
;   Before the command is run, the word REPLACEME is replaced by your input.
;   It does not have to be a search url, that was just the application I had in mind when I originally wrote it.
;   So what this does is that it runs chrome with the arguments "-incognito" and the google search URL where REPLACEME in the URL has been 
;	replaced by your input.
{
    gui_search_title = Google Search as Incognito
    gui_search("C:\Program Files (x86)\Google\Chrome\Application\chrome.exe -incognito https://www.google.com/search?safe=off&q=REPLACEME")
}
else if Pedersen = f%A_Space% 
{
    gui_search_title = Search Facebook
    gui_search("https://www.facebook.com/search/results.php?q=REPLACEME")
}
else if Pedersen = y%A_Space% ; Search Youtube
{
    gui_search_title = Search Youtube
    gui_search("https://www.youtube.com/results?search_query=REPLACEME")
}
else if Pedersen = m%A_space%
{
    gui_search_title = Search
    gui_search("https://www.google.com/maps/search/REPLACEME")   ;use REPLACEME to insert search keyword
}
else if Pedersen = thes
{
    gui_search_title = Search
    gui_search ("http://www.thesaurus.com/browse/REPLACEME")   ;use REPLACEME to insert search keyword
}
else if Pedersen = clist
{
    gui_search_title = search craigslist
    gui_search("https://newyork.craigslist.org/search/que/sss?query=REPLACEME&hasPic=1")
}
else if Pedersen = sr  ; Go to subreddit. This is a quick way to navigate to a specific URL.
{
    gui_search_title := "/r/"
    gui_search("https://www.reddit.com/r/REPLACEME")
}
;-------------------------------------------------------------------------------------------------------------------------------------
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;      LAUNCH WEBSITES     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;-------------------------------------------------------------------------------------------------------------------------------------

else if Pedersen = fb ; facebook.com
{
    gui_destroy()
    run www.facebook.com
}
else if Pedersen = red ; reddit.com
{
    gui_destroy()
    run www.reddit.com
}
else if Pedersen = map ; Google Maps 
{
    gui_destroy()
    run "https://www.google.com/maps"
}
else if Pedersen = gm ; Open google inbox
{
    gui_destroy()
    ;run https://inbox.google.com/u/0/
    run https://mail.google.com/mail/u/0/#inbox  ; Maybe you prefer the old gmail
}
else if Pedersen = mess ; Opens Facebook unread messages
{
    gui_destroy()
    run https://www.facebook.com/messages?filter=unread&action=recent-messages
}
else if Pedersen = rx
{
    gui_destroy()
    run http://regexr.com/ge
}

else if Pedersen = git
{
    gui_destroy()
    run https://github.com/minasso
}

;-------------------------------------------------------------------------------------------------------------------------------------
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;      RUN PROGRAMS     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;-------------------------------------------------------------------------------------------------------------------------------------

else if Pedersen = touch
{
    gui_destroy()
    run "C:\Users\andrew\AppData\Local\Microsoft\Windows\Application Shortcuts\47445Rumor.TouchMeGestureStudio_qzbdzynm6aght"
}

else if Pedersen = env
{
    gui_destroy()
    run "C:\Windows\System32\SystemPropertiesComputerName.exe" 
    ; run "C:\Windows\System32\rundll32.exe"

}
else if Pedersen = spy 
{
	gui_destroy()
	run AU3_Spy.exe
}
else if Pedersen = bat
{
    gui_destroy()
    run "C:\Program Files (x86)\OneNoteGem\NoteBatch2016\NoteBatchProcessor.exe"
}

else if Pedersen = ar
{
    gui_destroy()
    run C:\Program Files (x86)\Advanced Renamer\ARen.exe
}
else if Pedersen = ev 
{
	gui_destroy()
	run C:\Program Files\Everything\everything.exe
}
else if Pedersen = npp ; notepad++
{
    gui_destroy()
    Run notepad++ 
}
else if Pedersen = mac
{
    gui_destroy()
    run "C:\Program Files\MacroCreator\MacroCreator.exe"
}
else if Pedersen = kodi
{
    gui_destroy()
    run C:\Program Files (x86)\Kodi\kodi.exe
} 
else if Pedersen = 4k
{
    gui_destroy()
    run "C:\Program Files (x86)\4KDownload\4kvideodownloader\4kvideodownloader.exe"
}

else if Pedersen = sub
{
    gui_destroy()
    run C:/Users/andrew/Desktop/subway_map.pdf  
}
else if Pedersen = ppt
{
    gui_destroy()
    run "C:\Program Files (x86)\Microsoft Office\root\Office16\POWERPNT.EXE"
}
else if Pedersen = word
{
    gui_destroy()
    run "C:\Program Files (x86)\Microsoft Office\root\Office16\WINWORD.EXE"
}
else if Pedersen = vlc
{
    gui_destroy()
    run "C:\Program Files\VideoLAN\VLC\vlc.exe"
}
else if Pedersen = spot
{
    gui_destroy()
    run C:\Users\andrew\AppData\Roaming\Spotify\Spotify.exe
}
else if Pedersen = sky
{
    gui_destroy()
    run "C:\Program Files (x86)\Skype\Phone\Skype.exe"
}
else if Pedersen = calc
{
    gui_destroy()
    run "C:\Users\andrew\Desktop\JUNK FOLDER\vti-Folder\vti Folder\Vti.exe"
}
else if Pedersen = my
{
    gui_destroy()
    run "C:\Program Files (x86)\Enounce\MySpeed\MySpeed.exe"
}
else if Pedersen = epic
{
    gui_destroy()
    run "C:\Program Files (x86)\Epic Pen\EpicPen.exe"
}
else if Pedersen = ever
{
    gui_destroy()
    run "C:\Program Files (x86)\Evernote\Evernote\Evernote.exe"
}
else if Pedersen = ice
{
    gui_destroy()
    run "C:\Program Files (x86)\Icecream Screen Recorder\recorder.exe"
}
else if Pedersen = aud
{
    gui_destroy()
    run "C:\Program Files (x86)\Audacity\audacity.exe"
}
;-------------------------------------------------------------------------------------------------------------------------------------
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;      INTERACT W AHK SCRIPT    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;-------------------------------------------------------------------------------------------------------------------------------------
else if Pedersen = re 
{
    gui_destroy() ; removes the GUI even when the reload fails
    Reload
}
else if Pedersen = dir ; Open the directory for this script
{
    gui_destroy()
    Run, %A_ScriptDir%
}
else if Pedersen = host ; Edit host script
{
    gui_destroy()
    run, subl.exe "%A_ScriptFullPath%"
}
else if Pedersen = user ; Edit GUI user commands
{
    gui_destroy()
    run, subl.exe "%A_ScriptDir%\GUI\UserCommands.ahk"
}

else if Pedersen = bash
{
    gui_destroy()
    run "C:\Program Files\Git\git-bash.exe"
}
else if Pedersen = cmd
{
    gui_destroy()
    run "C:\Windows\system32\cmd.exe"
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;work on
else if Pedersen = global
{
    gui_destroy()
    run subl.exe "C:\Users\andrew\Desktop\Ahk original scripts\globalhotkeys.ahk"
}
else if Pedersen = local
{
    gui_destroy()
    run subl.exe "C:\Users\andrew\Desktop\Ahk original scripts\localhotkeys.ahk"
} 
;-------------------------------------------------------------------------------------------------------------------------------------
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;      TYPE RAW TEXT AND SYMBOLS    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;-------------------------------------------------------------------------------------------------------------------------------------
else if Pedersen = logo ; 
{
    gui_destroy()
    Send ¯\_(ツ)_/¯
}
else if Pedersen = creep ;
{
    gui_destroy()
    Send ( ͡° ͜ʖ ͡°)﻿
}
else if Pedersen = clip ; Paste clipboard content without formatting
{
    gui_destroy()
    SendRaw, %ClipBoard%
}
;-------------------------------------------------------------------------------------------------------------------------------------
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;      OPEN FOLDERS   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;-------------------------------------------------------------------------------------------------------------------------------------
else if Pedersen = down ; Downloads
{
    gui_destroy()
    run C:\Users\%A_Username%\Downloads
}
else if Pedersen = st ; startup
{
    gui_destroy()
    run "C:\Users\andrew\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
}
else if Pedersen = work
{
    gui_destroy()
    run C:\Users\andrew\Desktop\WORK FOLDER
}

;-------------------------------------------------------------------------------------------------------------------------------------
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;     MISCELLANEOUS    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;-------------------------------------------------------------------------------------------------------------------------------------


else if Pedersen = ? ; Tooltip with list of commands
{
    GuiControl,, Pedersen, ; Clear the input box
    Gosub, gui_commandlibrary
}
else if Pedersen = speed
{
    gui_destroy()
    Run "http://www.speedtest.net/"
}
else if Pedersen = wl
{
    gui_destroy()
    Run "https://www.youtube.com/playlist?list=WL"
}
else if Pedersen = task
{
    gui_destroy()
    run %windir%\system32\taskmgr.exe /7
}
else if Pedersen = ie
{
    gui_destroy()
    run "C:\Program Files\Internet Explorer\iexplore.exe"
}
else if Pedersen = excel
{
    gui_destroy()
    run "C:\Program Files (x86)\Microsoft Office\root\Office16\EXCEL.EXE"
}
else if Pedersen = his
{
    gui_destroy()
    run "https://www.youtube.com/feed/history"
}

else if Pedersen = head          ;sound icon settings
{
    gui_destroy()
    sleep 500
		mousemove 2023, 1427 
		sleep 300
		click right
		sleep 500 ;
		mousemove 1877, 1296 
		sleep 300
		click
		sleep 500
		mousemove 400, 493
	return
}
else if Pedersen = h%A_space%
{
    gui_destroy()
    sleep 200
		mousemove 2023, 1427 
		sleep 300
		click right
		sleep 300 ;
		mousemove 1877, 1296 
		sleep 300
		click
		sleep 300
		mousemove 400, 493
	return
}
if Pedersen = bk%A_Space%
{
    send ^c
	sleep 300
    run http://bookzz.org/s/?q=%clipboard%&yearFrom=&yearTo=&language=&extension=&t=0
}
else if Pedersen = seek
{
    gui_destroy()
    run C:\Users\andrew\Desktop\Ahk non startup\Seek.ahk
}

else if Pedersen = touch
{
    gui_destroy()
    run "C:\Users\andrew\AppData\Roaming\AppsolutelyApps\TouchMe\TouchMe.exe"
}




;-------------------------------------------------------------------------------------------------------------------------------------
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;     ONENOTE    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;-------------------------------------------------------------------------------------------------------------------------------------


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;      ;create coordinate axes   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
else if Pedersen = axes
{
    gui_destroy()
		WinActivate ahk_class Framework::CFrame
		sleep 500
		send {alt} 
		sleep 200
		send 0
		sleep 300
		send A
		sleep 300
		send {down}{down}
		sleep 300
		send  {right} 
		sleep 300
		send {enter}
		return
}

else if Pedersen = tocp     ;;;;toc for subpages ;;;;
{
    gui_destroy()
		WinActivate ahk_class Framework::CFrame
		sleep 500
		send {alt} 
		sleep 200
		send y2
		sleep 300
		send yt
		sleep 300
		return
}
else if Pedersen = tocs     ;;;toc for section;;;;;
{
    gui_destroy()
		WinActivate ahk_class Framework::CFrame
		sleep 500
		send {alt} 
		sleep 200
		send y2
		sleep 300
		send ys
		sleep 300
		return
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;        set all pics as background        ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
else if Pedersen = bg    
{
    gui_destroy()
		WinActivate ahk_class Framework::CFrame
		sleep 500
		send {alt} 
		sleep 200
		send 0c
		sleep 200
		send {up 3} 
		send {enter}
		sleep 200
		return
}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;        set all pics not as background        ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

else if Pedersen = nbg
{
	gui_destroy()
		WinActivate ahk_class Framework::CFrame
		sleep 500
		send {alt} 
		sleep 200
		send 0c
		sleep 200
		send {up 2} {enter}
		sleep 200 
		return
}


/* ;from pmc crack
else if Pedersen = openlinks
{
    gui_destroy()
    Gosub, openlinks
}
	
else if Pedersen = kk
{
    gui_destroy()
    Gosub, all
}

	openlinks:
	WinActivate, ahk_class Chrome_WidgetWin_1
	Sleep, 333
	Loop
	{
		CoordMode, Pixel, Window
		ImageSearch, FoundX, FoundY, 631, 215, 1975, 1179, C:\Users\andrew\AppData\Roaming\MacroCreator\Screenshots\Screen_20161216031533.png
		CenterImgSrchCoords("C:\Users\andrew\AppData\Roaming\MacroCreator\Screenshots\Screen_20161216031533.png", FoundX, FoundY)
		If ErrorLevel = 0
			Click, %FoundX%, %FoundY% Left, 1
	}
	Until ErrorLevel = 0
	Loop
	{
		CoordMode, Pixel, Window
		ImageSearch, FoundX, FoundY, 649, 295, 1259, 699, C:\Users\andrew\AppData\Roaming\MacroCreator\Screenshots\Screen_20161216025715.png
		CenterImgSrchCoords("C:\Users\andrew\AppData\Roaming\MacroCreator\Screenshots\Screen_20161216025715.png", FoundX, FoundY)
		If ErrorLevel = 0
			Click, %FoundX%, %FoundY% Left, 1
	}
	Until ErrorLevel = 0
	Return

	print:
	WinActivate, New SAT Math Practice Questions-Applications of Quadratic and Advanced Equations.pdf - Google Drive - Google Chrome ahk_class Chrome_WidgetWin_1
	Sleep, 333
	Send, {LControl Down}{p}
	Sleep, 235
	WinActivate, Untitled - Google Chrome ahk_class Chrome_WidgetWin_1
	Send, {LControl Up}
	Sleep, 5265
	WinActivate, ACFrOgCq4IOl63ADoxgTLs7SWaLq3vZOVx7vbdBzgmMAaCn_01zq8_L43zGfiHdAJRbwL7d8-fePWZdQdcWyjRqEHXljGs7v11BeGYgZlveQIYdIFD4IoNoYLenM86M= - Google Chrome ahk_class Chrome_WidgetWin_1
	Loop
	{
		CoordMode, Pixel, Window
		ImageSearch, FoundX, FoundY, 54, 295, 527, 875, C:\Users\andrew\AppData\Roaming\MacroCreator\Screenshots\Screen_20161216024019.png
		If ErrorLevel = 0
			Click, %FoundX%, %FoundY% Left, 1
	}
	Until ErrorLevel = 0
	Sleep, 641
	SendRaw, 2-
	Sleep, 500
	Send, {Enter}
	WinWaitActive, ahk_class Framework::CFrame
	Sleep, 333
	Sleep, 200
	Send, {Enter}
	Sleep, 300
	CoordMode, Pixel, Window
	ImageSearch, FoundX, FoundY, 29, 62, 664, 718, C:\Users\andrew\AppData\Roaming\MacroCreator\Screenshots\Screen_20161216024609.png
	CenterImgSrchCoords("C:\Users\andrew\AppData\Roaming\MacroCreator\Screenshots\Screen_20161216024609.png", FoundX, FoundY)
	If ErrorLevel = 0
		Click, %FoundX%, %FoundY% Left, 1
	Sleep, 1000
	Send, ^+t
	Return

	close:
	WinActivate, ahk_class Chrome_WidgetWin_1
	Sleep, 333
	Send, ^w
	Sleep, 300
	Send, ^w
	Sleep, 300
	Send, ^w
	Return

	all:
	Gosub, openlinks
	Sleep, 3000
	Gosub, print
	Sleep, 3000
	Gosub, close
	Return


	CenterImgSrchCoords(File, ByRef CoordX, ByRef CoordY)
	{
		static LoadedPic
		LastEL := ErrorLevel
		Gui, Pict:Add, Pic, vLoadedPic, %File%
		GuiControlGet, LoadedPic, Pict:Pos
		Gui, Pict:Destroy
		CoordX += LoadedPicW // 2
		CoordY += LoadedPicH // 2
		ErrorLevel := LastEL
	}

*/

;-------------------------------------------------------------------------------------------------------------------------------------
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;     CHANGE CASE    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;-------------------------------------------------------------------------------------------------------------------------------------

else if Pedersen = upper
{
    gui_destroy()
	
 OldClipboard:= Clipboard
 Clipboard:= ""
 Send, ^c ;copies selected text
 ClipWait
 StringUpper Clipboard, Clipboard
 Send %Clipboard%
 Sleep 1000
 Clipboard:= OldClipboard
return
}

else if Pedersen = lower
{
    gui_destroy()

 OldClipboard:= Clipboard
 Clipboard:= ""
 Send, ^c ;copies selected text
 ClipWait
 StringLower Clipboard, Clipboard
 Send %Clipboard%
 Sleep 1000
 Clipboard:= OldClipboard
return
   
}

else if Pedersen = sc
{
 gui_destroy()

 OldClipboard:= Clipboard
 Clipboard:= ""
 Send, ^c 
 ClipWait
 StringUpper Clipboard, Clipboard, T
 Send %Clipboard%
 Sleep 1000
 Clipboard:= OldClipboard
return
}


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


