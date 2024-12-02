XButton1::
Clipboard := "" ; Clear the clipboard
Send, ^c ; Simulate Ctrl+C to copy the selected text
Sleep, 300 ; Wait for clipboard to populate
if (Clipboard = "") {
    MsgBox, Clipboard is empty! Please copy a valid URL.
    return
}
FileDelete, C:\yt-dlp\youtube_url.txt ; Ensure the file doesn't already exist
FileAppend, %Clipboard%, C:\yt-dlp\youtube_url.txt ; Save clipboard content to a file
Run, C:\yt-dlp\download.bat C:\yt-dlp\youtube_url.txt
return