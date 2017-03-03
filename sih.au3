#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=2.ico
#AutoIt3Wrapper_Outfile=sih.3.1.0.0.exe
#AutoIt3Wrapper_Run_AU3Check=n
#AutoIt3Wrapper_Tidy_Stop_OnError=n
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <Array.au3>
#include <ComboConstants.au3>
#include <Date.au3>
#include <File.au3>
#include <GUIConstantsEx.au3>
#include <GUIListBox.au3>
#include <GUIListView.au3>
#include <GUIStatusBar.au3>
#include <ListBoxConstants.au3>
#include <ListViewConstants.au3>
#include <WindowsConstants.au3>
#include <String.au3>
#include <ITaskBarList.au3>
#include <WinAPIEx.au3>
#include <GuiComboBox.au3>
#include <FontConstants.au3>
#include "ShellContextMenu.au3"
Opt("TrayIconHide", 1)

Switch @OSLang
	Case 0419 To 0423
		$1 = "О программе"
		$2 = "Файл|Инсталятор|Размер Мб|Имя и версия приложения|Дата|Содержит нежелательное ПО|Пользовательськая команда установки|Симуляция последовательности клавиатурных нажатий|Путь для извлечения|Команды до установки|Команды после установки|Создание ярлыков"
		$3 = "Запуск"
		$4 = "Удалить"
		$5 = "Показать в Проводнике"
		$6 = "Копировать путь"
		$7 = "Копировать команду тихой установки"
		$8 = "Начать установку"
		$9 = "Добавить папку"
		$10 = "Выбрать все"
		$11 = "Снять все"
		$12 = "Очистить список"
		$13 = "Удалить выбранное"
		$14 = "Добавить Файлы"
		$15 = "Сохранить"
		$16 = "Открыть"
		$17 = "Пользовательськая команда установки"
		$18 = "Введите команду или ключ для запуска этого инсталятора. Примеры:" & @CRLF & "/s" & @CRLF & "-y" & @CRLF & "d:\soft\myapp.exe"
		$19 = "Копировать пользовательськую команду установки"
		$20 = "После выполнения:"
		$21 = "Показать сообщение"
		$22 = "Нет действия|Гибернация|Сон|Откл.|Перезагрузка|Закрытие программы"
		$23 = "Папка с файлами инсталяторов"
		$24 = "Остановить"
		$25 = "Установка "
		$026 = "&Файл"
		$27 = "Домашная страница"
		$28 = "Руслан Белашевский"
		$29 = "Файлов списке :"
		$30 = "Анализ файлов:"
		$31 = "Остановить анализ"
		$32 = "Установка в эту папку (Inno,NSIS,7z\RAR\Free Arc, SFXs,Actual\Smart\Excelsior\Installbuilder Installer, SSE Setup):"
		$33 = "Создать cmd-файл"
		$34 = "Использование дисков"
		$35 = "Диск|Файловая система|Всего Mb|Свободно Мб|% Свободно"
		$36 = "Отменить?"
		$37 = "Мб"
		$38 = "Свойства"
		$39 = "Выбрано: "
		$40 = "Неивестный установщик"
		$41 = "Открыть"
		$42 = "Установка завершена"
		$43 = "Инструменты"
		$44 = "Файл создан. Хотите посмотреть его содержимое?"
		$45 = "Список"
		$46 = "Программы и компоненты"
		$47 = "Нежелательное ПО"
		$48 = "Автоматически завершать процесы:"
		$49 = "Процесc:"
		$50 = "Общее время установки"
		$51 = "Заголовок окна"
		$52 = "Текст в окне"
		$53 = "Обновить"
		$54 = "Автоматически закрывать окна:"
		$55 = "Окна:"
		$56 = "Да"
		$57 = "Содержит"
		$58 = "Выйти?"
		$59 = "Проверять файлы на наличие нежелательного ПО"
		$60 = "Создать файл конфигурации для WPI 8.x(config.js)"
		$61 = "Добавте окна или процесы в соответсвующие списки для блокировки установки ненужного вам ПО." & @CRLF & "Добавленые окна и процесы будут автоматически закрыватся во время установки ПО."
		$62 = "Изменить"
		$63 = "Симулировать последовательность клавиатурных нажатий"
		$64 = "Примеры:" & @CRLF & "{enter}-нажать Enter" & @CRLF & "{enter 3}{tab 2}-нажать Enter 3 раза и Tab 2 раза" & @CRLF & "d:\soft-послать в окно текст " & """" & "d:\soft" & """" & @CRLF & "Окно инсталятора будет автоматически закрыто после установки."
		$65 = "Завершить процесс"
		$065 = "В&ыход"
		$066 = "&Установщик"
		;$067 = "&New"
		;$068 = "Save &As..."
		$069 = "Помощь"
		$66 = "Закрыть окно"
		$67 = "Путь для извлечения (для архивов)"
		$68 = "Выбрать"
		$69 = "Команды до установки"
		$70 = "Команды после установки"
		$71 = "Введите команды разделенные запятой"
		$72 = "Создание ярлыков"
		$73 = "Введите пути к файлам, для которых требуется создать ярлыки." & "Используйте запятую в качестве разделителя." & "Для указания пути распаковки архивов можно использовать переменную %extpth%."
		$74 = "Режим совместимости"
		$75 = "Путь|Значение"
		$76 = "Имя Продукта|Версия|Компания|Сайт|Дата установки|Строка удаления|Строка изменения|Ключ реестра|Установщик|Размер|Папка|Строка тихого удаления"
		$77 = "Изменить"
		$78 = "Тихая деинсталяция"
		$79 = "Добавлять подпапки"
		$080="Меню Windows"
		;$081="Начать закачку"
		;$082="Folder for downloads"
		;$082="Папка для загрузок"
		;$083="Внимание! Если приложение не может загрузить файл, URL откроетcя в браузере. Некоторые ссылки могут не работать."&@CRLF& "Если у вас медленное или нестабильное интернет соединение рекомендуется использовать менеджер загрузок."&@CRLF&"Использовано данные сайта DDownloads.net"
		;$084="Добавлять загруженые файлы в список Установка"
		;$085="Другие программы автора"
		$086 = "Процесс|Командая строка|Имя Продукта|"
		$087 = "Командные строки процессов"
		$088 = "Копировать коммандною строку"
		;$089="Если вы считаете эту программу полезной, можете поддержать автора с помощью пожертвований."&@CRLF& "С вашей помошью я смогу и дальше работать над программой."
		$090 = "Автозагрузка"
	Case Else
		$1 = "About"
		$2 = "File|Installer Type|Size (MB)|App name & version|Date|Contains Unwanted Software?|User Command Or Switch|Sends Simulated Keystrokes|Path for extracting|Commands before instaling|Commands after instaling|Сreation a shortcuts"
		$3 = "Execute"
		$4 = "Delete"
		$5 = "Show in Explorer"
		$6 = "Copy path"
		$7 = "Copy Silent Installation Command"
		$8 = "Start"
		$9 = "Add Folder of Installers"
		$10 = "Select all"
		$11 = "Deselect all"
		$12 = "Clear list"
		$13 = "Delete selected"
		$14 = "Add Installers"
		$15 = "&Save"
		$16 = "&Open"
		$17 = "User Installation Command"
		$18 = "Enter the command or key to start this installer. Examples:" & @CRLF & "/s" & @CRLF & "-y" & @CRLF & "d:\soft\myapp.exe"
		$19 = "Copy " & $17
		$20 = "When complete:"
		$21 = "Show message"
		$22 = "No actions|Hibernation|Stand by|Shutdown|Reboot|Close program"
		$23 = "Installer Source Folder"
		$24 = "Stop"
		$25 = "Installing "
		$026 = "&File"
		$27 = "Home page"
		$28 = "Ruslan Belashevskuy"
		$29 = "Files in list: "
		$30 = "Scanning:"
		$31 = "Stop scan"
		$32 = "Installing in this folder(Inno,NSIS,7z\RAR\Free Arc, SFXs,Actual\Smart\Excelsior\ Installer, SSE Setup):"
		$33 = "Create *.cmd file"
		$34 = "Disks usage"
		$35 = "Drive|File system|Total Mb|Free Mb|% Free"
		$36 = "Cancel?"
		$37 = "Mb"
		$38 = "Properties"
		$39 = "Selected: "
		$40 = "Unknown installer"
		$41 = "&Open"
		$42 = "Installation completed"
		$43 = "Tools"
		$44 = "File created. View contents now?"
		$45 = "List"
		$46 = "Programs and Features"
		$47 = "Unwanted software"
		$48 = "Close these processes:"
		$49 = "Current Processes"
		$50 = "Total installation time"
		$51 = "Window Title"
		$52 = "Window Text"
		$53 = "Refresh"
		$54 = "Close these windows:"
		$55 = "Windows"
		$56 = "Yes"
		$57 = "Contains"
		$58 = "Exit?"
		$59 = "Сheck files for " & $47
		$60 = "Create WPI Config 8.x(Config.js)"
		$61 = "Choose windows and/or processes from these lists which may prevent the installation from completing and can be safely closed." & @CRLF & "Add them to this list to automatically close them before the installation."
		$62 = "&Edit"
		$63 = "Sends simulated keystrokes"
		$64 = "Examples:" & @CRLF & "{enter}-press Enter" & @CRLF & "{enter 3}{tab 2}-press Enter 3 times and Tab 2 times" & @CRLF & "d:\soft-send text in window: " & """" & "d:\soft" & """" & @CRLF & "Setup window will automatically closed after installing."
		$65 = "Kill process"
		$065 = "E&xit"
		$066 = "&Installer"
		;$067 = "&New"
		$068 = "Save &As..."
		$069 = "Help"
		;$070 = "Save a &Copy..."
		$66 = "Close window"
		$67 = "Path for extracting (for arhives)"
		$68 = "Select"
		$69 = "Commands before instaling"
		$70 = "Commands after instaling"
		$71 = "Will Enter commands prepared comma"
		$72 = "Сreation a shortcuts"
		$73 = "Enter patch to a files, for which is required create the shortcuts." & "Use comma as separator." & "For instructions of the patch of the unpacking archive you may use variable %extpth%."
		$74 = "Compatibility mode"
		$75 = "Path|Value"
		$76 = "Produkt|Version|Company|Site|Installation date|Uninstall string|Modify string|Registry key|Installer|Size|Folder|Quiet Uninstall String"
		$77 = "Change"
		$78 = "Quiet Uninstall"
		$79 = "Add subfolders"
		$080="Shell Context Menu"
		;$081="Start download"
		;$082="Folder for downloads"
		;$083 = "Warning: If the application can not download the file, URL will open in the browser. Some links may not work." & @CRLF & "If you have a slow or unstable Internet connection is recommended to use a download manager." & @CRLF & "Uses data of site DDownloads.net"
		;$084="Add downloaded files to Instaling list"
		;$085="Other programs of author"
		$086 = "Process|Command line|ProductName"
		$087 = "Proceses commad line"
		$088 = "Copy command line"
		;$089="If You find this app helpful  You can support the author by donation."&@CRLF& "With Your help I can to make this app better."
		$090 = "Autorun"
EndSwitch
Global $time, $Secs, $Mins, $Hour, $Time0, $adware, $items[1], $names[1], $subfolder, $ListView_process, $keydown, $seleded_item = -1, $sfirstcall = 1, $hLV,$hLVfont, $hLVfontBold, $aColors[1][1], $Pause = False, $source_type, $Source, $ptch, $appname, $subfolders
Global $idLVrightClick, $idLVdoubleClick, $tLVpoint, $iLVidx
Global $MainFormWidth = 1600 ; Original value = 760
Global $MainFormHeight = 620
Global $MainFormLeft = (@DesktopWidth / 2) - ($MainFormWidth / 2)
Global $MainFormTop = (@DesktopHeight / 2) - ($MainFormHeight / 2) - 50
If $MainFormLeft < 1 Then $MainFormLeft = 1
If $MainFormTop < 1 Then $MainFormTop = 1
If $MainFormHeight > @DesktopHeight Then $MainFormHeight = @DesktopHeight
If $MainFormWidth > @DesktopWidth Then $MainFormWidth = @DesktopWidth
Dim $cancel, $file, $sel, $start_process_count, $arar
Global $SafeProcessesArray[11] = ["services.exe", "msiexec.exe", "csrss.exe", "smss.exe", "svchost.exe", "explorer.exe", "lsass.exe", "System", "winlogon.exe", "wininit.exe", "[System Process]"]
_ArraySort($SafeProcessesArray)
Local $a_PartsText[1] = [""]
Local $a_PartsRightEdge[1] = [$MainFormWidth]
$ck = "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers"
;$uk="HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\"
If RegRead("HKEY_CURRENT_USER\Software\PEiD", "StayOnTop") = Not 0 Then RegWrite("HKEY_CURRENT_USER\Software\PEiD", "StayOnTop", "REG_DWORD", 0)
FileInstall("peid.exe", "peid.exe")
FileInstall("adware.txt", "adware.txt")
if not FileExists(@ScriptDir & "\scripts") Then DirCreate(@ScriptDir & "\scripts")
FileInstall("scripts\qt-installer-noninteractive.qs", @ScriptDir & "\scripts\qt-installer-noninteractive.qs")

_FileReadToArray("adware.txt", $adware)

$Form1_1 = GUICreate("Silent Install Helper", $MainFormWidth, $MainFormHeight, $MainFormLeft, $MainFormTop, BitOR($WS_MAXIMIZEBOX, $WS_MINIMIZEBOX, $WS_SIZEBOX), $WS_EX_ACCEPTFILES) ; Main Form

GUISetBkColor(8750469)

GUISetIcon("2.ico")
$File_menu = GUICtrlCreateMenu($026)
;	$File_New = GUICtrlCreateMenuItem($067, $File_menu)
$File_Open = GUICtrlCreateMenuItem($16, $File_menu)
$File_Save = GUICtrlCreateMenuItem($15, $File_menu)
;	$File_SaveAs = GUICtrlCreateMenuItem($068, $File_menu)
;	$File_SaveACopy = GUICtrlCreateMenuItem($070, $File_menu)
GUICtrlCreateMenuItem("", $File_menu)
$File_Exit = GUICtrlCreateMenuItem($065, $File_menu)
$Edit_menu = GUICtrlCreateMenu($62)
$Edit_DeleteSelected = GUICtrlCreateMenuItem($13, $Edit_menu)
$Edit_SelectAll = GUICtrlCreateMenuItem($10, $Edit_menu)
$Edit_DeselectAll = GUICtrlCreateMenuItem($11, $Edit_menu)
GUICtrlCreateMenuItem("", $Edit_menu)
$Edit_ClearList = GUICtrlCreateMenuItem($12, $Edit_menu)
$Installer_menu = GUICtrlCreateMenu($066)
$InstallerAddFile = GUICtrlCreateMenuItem($14, $Installer_menu)
$InstallerAddFolder = GUICtrlCreateMenuItem($9, $Installer_menu)
$Tools_menu = GUICtrlCreateMenu($43)
$cmd = GUICtrlCreateMenuItem($33, $Tools_menu)
$wpi = GUICtrlCreateMenuItem($60, $Tools_menu)
GUICtrlCreateMenuItem("", $Tools_menu)
$disks = GUICtrlCreateMenuItem($34, $Tools_menu)
$viev_proceses = GUICtrlCreateMenuItem($087, $Tools_menu)
$Help_menu = GUICtrlCreateMenu($069)
$Help_About = GUICtrlCreateMenuItem($1, $Help_menu)
$tab = GUICtrlCreateTab(0, 0, 545, 20)
$tab_install=GUICtrlCreateTabItem($25)
;GUICtrlSetImage(-1,"shell32.dll",271)
$ListView1 = GUICtrlCreateListView($2, 0, 30, $MainFormWidth, 340, "", BitOR($LVS_EX_CHECKBOXES, $LVS_EX_GRIDLINES, $LVS_EX_FULLROWSELECT, $LVS_EX_HEADERDRAGDROP))
$hLV_install = ControlGetHandle($Form1_1, "", $ListView1)

GUICtrlSetBkColor(-1, 11842740)
_GUICtrlListView_SetColumnWidth(-1, 0, 360)
_WinAPI_SetWindowTheme(GUICtrlGetHandle($ListView1), 'Explorer')
;$idLVrightClick = GUICtrlCreateDummy()
;$idLVdoubleClick = GUICtrlCreateDummy()
GUICtrlSetResizing($ListView1, $GUI_DOCKTOP)
$TrreView = GUICtrlCreateTreeViewItem("", $ListView1)
;$subfolders=GUICtrlCreateCheckbox($79,0,480)
$Context = GUICtrlCreateContextMenu($ListView1)
$run = GUICtrlCreateMenuItem($3, $ListView1)
$del = GUICtrlCreateMenuItem($4, $ListView1)
$exp = GUICtrlCreateMenuItem($5, $ListView1)
$prop = GUICtrlCreateMenuItem($38, $ListView1)
$system_context_menu = GUICtrlCreateMenuItem($080, $ListView1)
$itaw = GUICtrlCreateMenuItem($57 & " " & $47, $ListView1)
GUICtrlCreateMenuItem("", $ListView1)
$copy = GUICtrlCreateMenuItem($6, $ListView1)
$copyp = GUICtrlCreateMenuItem($7, $ListView1)
$copyus = GUICtrlCreateMenuItem($19, $ListView1)
GUICtrlCreateMenuItem("", $ListView1)
$setswitch = GUICtrlCreateMenuItem($17, $ListView1)
$setsend = GUICtrlCreateMenuItem($63, $ListView1)
$submenu = GUICtrlCreateMenu($67, $Context)
$extemp = GUICtrlCreateMenuItem(@TempDir, $submenu)
$expf = GUICtrlCreateMenuItem(@ProgramFilesDir, $submenu)
$exd = GUICtrlCreateMenuItem(@DesktopDir, $submenu)
$exhd = GUICtrlCreateMenuItem(@HomeDrive, $submenu)
$up = GUICtrlCreateMenuItem(@UserProfileDir, $submenu)
$exs = GUICtrlCreateMenuItem($68, $submenu)
$comamb = GUICtrlCreateMenuItem($69, $ListView1)
$comaft = GUICtrlCreateMenuItem($70, $ListView1)
$shorcrt = GUICtrlCreateMenuItem($72, $ListView1)
$Button2 = GUICtrlCreateButton($8, 590, 450, 145, 30)
GUICtrlCreateGroup($50, 580, 380, 150, 60)
$af = GUICtrlCreateCheckbox($32, 0, 500)
$inp = GUICtrlCreateInput(@ScriptDir, 590, 500, 200, 20)
$brs = GUICtrlCreateButton("...", 790, 500, 40, 20)
$open = GUICtrlCreateButton($41, 830, 500, 60, 20)
GUICtrlCreateLabel($20, 280, 470)
$pm = GUICtrlCreateCombo($21, 400, 470, 150, 20, $CBS_DROPDOWNLIST)
GUICtrlSetData(-1, $22)
$timer = GUICtrlCreateLabel("00:00:00", 620, 400, 100, 30)
GUICtrlSetFont(-1, 20, "", "", "DS-Digital")
GUICtrlSetBkColor($timer, 0)
GUICtrlSetColor($timer, 0x00FF00)
$prog = GUICtrlCreateProgress(0, 530, $MainFormWidth, 20)
$StatusBar1 = _GUICtrlStatusBar_Create($Form1_1, $a_PartsRightEdge, $a_PartsText)
;tab P&F
$tab_unistall = GUICtrlCreateTabItem($46)
Global $computer = ""
Global $osArch = ""
Global $uninst = ""
Global $iComp = GUICtrlCreateCombo("", 10, 40, 100, 21)
Global $bConnect = GUICtrlCreateButton("Connect", 115, 40, 50, 28)
Global $iSrch = GUICtrlCreateCombo("", 177, 40, 100, 21)
Global $bFilter = GUICtrlCreateButton("Filter", 283, 40, 50, 28)
Global $cHideMSUpdates = GUICtrlCreateCheckbox("Hide Microsoft Updates", 352, 40, 137, 20)
Global $csyscomponent = GUICtrlCreateCombo("Show all", 70, 80, 180, 20, $CBS_DROPDOWNLIST)
GUICtrlSetData(-1, "Hide System Components|Show System Components only")
Global $cbydatefilter = GUICtrlCreateCheckbox("Install Date filter", 352, 80, 100, 20)
Global $nontodayfilter = GUICtrlCreateCheckbox("Installed before today only", 600, 80, 150, 20)
Global $cufilter = GUICtrlCreateCheckbox("Installed for current user only", 800, 80, 150, 20)
$g_hDTP = GUICtrlCreateDate("", 460, 80, 100, 20, $DTS_SHORTDATEFORMAT)
Global $rAll = GUICtrlCreateRadio("All", 505, 40, 35, 20)
Global $r32 = GUICtrlCreateRadio("x86", 540, 40, 35, 20)
Global $r64 = GUICtrlCreateRadio("x64", 580, 40, 35, 20)
$bunistall = GUICtrlCreateButton("Uninstall", 700, 40, 90, 28)
$bsilentunistall = GUICtrlCreateButton("Silent Uninstall", 800, 40, 90, 28)
$bmodify = GUICtrlCreateButton("Modify", 900, 40, 90, 28)
$bsite = GUICtrlCreateButton("Site", 1000, 40, 90, 28)
;$brefresh= GUICtrlCreateButton("Refresh", 1100, 40, 90, 28)
Global $bExport = GUICtrlCreateButton("Export to CSV", 1300, 40, 90, 28)
GUICtrlSetState($cHideMSUpdates, $GUI_CHECKED)
GUICtrlSetState($rAll, $GUI_CHECKED)
GUICtrlSetState($g_hDTP, $GUI_DISABLE)
Global $lResults = GUICtrlCreateLabel("", 8, 485, 500, 20)
Global $ListView_unistall = GUICtrlCreateListView("", 0, 110, $MainFormWidth, 445, -1, BitOR($LVS_EX_GRIDLINES, $LVS_EX_HEADERDRAGDROP, $LVS_EX_FULLROWSELECT, $WS_EX_CLIENTEDGE, $LVS_EX_CHECKBOXES))
GUICtrlSetBkColor(-1, 11842740)
$hLV = ControlGetHandle($Form1_1, "", $ListView_unistall)
_WinAPI_SetWindowTheme(GUICtrlGetHandle($ListView_unistall), 'Explorer')
_GUICtrlListView_AddColumn($ListView_unistall, "Name", 170)
_GUICtrlListView_AddColumn($ListView_unistall, "Version", 65)
_GUICtrlListView_AddColumn($ListView_unistall, "Publisher", 105)
_GUICtrlListView_AddColumn($ListView_unistall, "Arch", 40, 2)
_GUICtrlListView_AddColumn($ListView_unistall, "MSI", 35, 2)
_GUICtrlListView_AddColumn($ListView_unistall, "GUID", 85)
_GUICtrlListView_AddColumn($ListView_unistall, "Uninstall String", 95)
_GUICtrlListView_AddColumn($ListView_unistall, "Install Date", 70)
_GUICtrlListView_AddColumn($ListView_unistall, "Install Location", 100)
_GUICtrlListView_AddColumn($ListView_unistall, "Install Source", 85)
_GUICtrlListView_AddColumn($ListView_unistall, "Uninstall Key", 125)
_GUICtrlListView_AddColumn($ListView_unistall, "Silent Uninstall String", 125)
_GUICtrlListView_AddColumn($ListView_unistall, "Size (MB)", 125)
_GUICtrlListView_AddColumn($ListView_unistall, "Modify string", 125)
_GUICtrlListView_AddColumn($ListView_unistall, "Site", 125)
_GUICtrlListView_AddColumn($ListView_unistall, "Installer", 125)
Global $rcMenu = GUICtrlCreateContextMenu($ListView_unistall)
Global $rcCopy = GUICtrlCreateMenu("Copy", $rcMenu)
Global $rcCopyLine = GUICtrlCreateMenuItem("Line", $rcCopy)
Global $rcCopyName = GUICtrlCreateMenuItem("Name", $rcCopy)
Global $rcCopyVer = GUICtrlCreateMenuItem("Version", $rcCopy)
Global $rcCopyPub = GUICtrlCreateMenuItem("Publisher", $rcCopy)
Global $rcCopyGUID = GUICtrlCreateMenuItem("GUID", $rcCopy)
Global $rcCopyUninst = GUICtrlCreateMenuItem("Uninstall String", $rcCopy)
Global $rcCopyLoc = GUICtrlCreateMenuItem("Install Location", $rcCopy)
Global $rcCopySrc = GUICtrlCreateMenuItem("Install Source", $rcCopy)

Global $rcCopyKey = GUICtrlCreateMenuItem("Uninstall Key", $rcCopy)
Global $rcCopySilentKey = GUICtrlCreateMenuItem("Silent Uninstall String", $rcCopy)
Global $rcJump = GUICtrlCreateMenu("Jump to", $rcMenu)
Global $rcJumpLoc = GUICtrlCreateMenuItem("Install Location", $rcJump)
Global $rcJumpSrc = GUICtrlCreateMenuItem("Install Source", $rcJump)
Global $rcJumpKey = GUICtrlCreateMenuItem("Uninstall Key", $rcJump)

Global $rcselect = GUICtrlCreateMenu("Select", $rcMenu)
Global $rcselectall = GUICtrlCreateMenuItem("All", $rcselect)
Global $rcselectnone = GUICtrlCreateMenuItem("Nothing", $rcselect)
Global $rcUninstall = GUICtrlCreateMenuItem("Uninstall", $rcMenu)
Global $rcSilentUninstall = GUICtrlCreateMenuItem("Silent Uninstall", $rcMenu)
Global $rcModify = GUICtrlCreateMenuItem("Modify", $rcMenu)
Global $rcCancel = 0
Global $first_open = 0
_GUICtrlListView_RegisterSortCallBack($ListView_unistall)

Global $nameCol = 0
Global $verCol = 1
Global $pubCol = 2
Global $archCol = 3
Global $msiCol = 4
Global $guidCol = 5
Global $uninstCol = 6
Global $dateCol = 7
Global $locCol = 8
Global $srcCol = 9
Global $keyCol = 10
Global $silkeyCol = 11
Global $sizekeyCol = 12
Global $modifyCol = 13
Global $siteCol = 14
Global $installerCol = 15
;end P&F

$tab_autorun = GUICtrlCreateTabItem($090)
GUICtrlCreateGroup("Add file to a startup", 180, 25, 1200, 65)
GUICtrlCreateLabel("Key:", 200, 60, 30, 20)
$combo_selectkey = GUICtrlCreateCombo("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run", 230, 60, 470, 20, $CBS_DROPDOWNLIST)
_GUICtrlComboBox_AddString(-1, "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce")
_GUICtrlComboBox_AddString(-1, "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOncEx")
_GUICtrlComboBox_AddString(-1, "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run")
_GUICtrlComboBox_AddString(-1, "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\RunOnce")
_GUICtrlComboBox_AddString(-1, 'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\ Windows\CurrentVersion\RunServices')
_GUICtrlComboBox_AddString(-1, 'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\ Windows\CurrentVersion\RunServicesOnce')
GUICtrlCreateLabel("Path:", 720, 60, 30, 20)
$input_file2autorun = GUICtrlCreateInput("", 770, 60, 200, 20)
$Button_select_file = GUICtrlCreateButton("...", 970, 60, 30, 20)
GUICtrlCreateLabel("Name:", 1040, 60, 30, 20)
$input_name = GUICtrlCreateInput("", 1100, 60, 200, 20)
$Button_add_file2autorun = GUICtrlCreateButton("Add", 1320, 35, 50, 50)
GUICtrlCreateLabel("Startup List:", 40, 80)
$ListView_autorun = GUICtrlCreateListView("Name|File|Key", 0, 100, $MainFormWidth, 200, "", BitOR($LVS_EX_GRIDLINES, $LVS_EX_FULLROWSELECT, $LVS_EX_HEADERDRAGDROP))
GUICtrlSetBkColor(-1, 11842740)
_GUICtrlListView_SetColumnWidth(-1, 0, 400)
_GUICtrlListView_SetColumnWidth(-1, 1, 400)
_GUICtrlListView_SetColumnWidth(-1, 2, 400)
$context_autoruns = GUICtrlCreateContextMenu($ListView_autorun)
_WinAPI_SetWindowTheme(GUICtrlGetHandle($ListView_autorun), 'Explorer')
$context_autoruns_remove = GUICtrlCreateMenuItem("Remove", $context_autoruns)
$context_autoruns_add2bl = GUICtrlCreateMenuItem("Add to Black List", $context_autoruns)
$context_autoruns_jump = GUICtrlCreateMenuItem("Jump to Key", $context_autoruns)
GUICtrlCreateLabel("Black List of Startup:", 40, 320)
$checkbox_del_bl_autoruns = GUICtrlCreateCheckbox("Delete this items from Startup List after installing:", 180, 320)
$Button_delete_now = GUICtrlCreateButton("Delete now", 470, 310)
$Button_save_bl = GUICtrlCreateButton("Save Black List", 540, 310)
$ListView_blacklist = GUICtrlCreateListView("Name|File|Key", 0, 340, $MainFormWidth, 200, "", BitOR($LVS_EX_GRIDLINES, $LVS_EX_FULLROWSELECT, $LVS_EX_HEADERDRAGDROP))
GUICtrlSetBkColor(-1, 11842740)
_WinAPI_SetWindowTheme(GUICtrlGetHandle($ListView_blacklist), 'Explorer')
_GUICtrlListView_SetColumnWidth(-1, 0, 400)
_GUICtrlListView_SetColumnWidth(-1, 1, 400)
_GUICtrlListView_SetColumnWidth(-1, 2, 400)
$context_bl = GUICtrlCreateContextMenu($ListView_blacklist)
$context_bl_remove = GUICtrlCreateMenuItem("Remove", $context_bl)
$context_bl_add2ar = GUICtrlCreateMenuItem("Add to Startup List", $context_bl)
$context_bl_jump = GUICtrlCreateMenuItem("Jump to Key", $context_bl)
GUICtrlCreateTabItem($74)
$ListView5 = GUICtrlCreateListView($75, 0, 30, $MainFormWidth, 500, "", $LVS_EX_GRIDLINES)
GUICtrlSetBkColor(-1, 11842740)
_GUICtrlListView_SetColumnWidth(-1, 0, 400)
_WinAPI_SetWindowTheme(GUICtrlGetHandle($ListView5), 'Explorer')
getck()
$Context2 = GUICtrlCreateContextMenu($ListView5)
$delck = GUICtrlCreateMenuItem($4, $ListView5)
$refresh2 = GUICtrlCreateMenuItem($53, $ListView5)
$prop2 = GUICtrlCreateMenuItem($38, $ListView5)

GUICtrlCreateTabItem($47)
$kill = GUICtrlCreateCheckbox($48, 250, 71, 210, 20) ; Label for list of processes chosen to close
$KillWin = GUICtrlCreateCheckbox($54, 920, 320, 210, 20)
GUICtrlCreateLabel($61, 20, 40)
GUICtrlCreateLabel($49, 20, 74, 100) ; Label for list of current processes to choose from
GUICtrlCreateLabel($55, 200, 320, 50)
$AddProcess = GUICtrlCreateButton(">", 190, 100, 30, 25) ; Move process from $ListBox1 to $ListBox2
$addinput = GUICtrlCreateButton("+", 420, 100, 50, 25)
$delitemprocess = GUICtrlCreateButton("-", 420, 130, 50, 25)
$Refresh_button = GUICtrlCreateButton($53, 800, 0, 70, 40)
$Save_button = GUICtrlCreateButton($15, 870, 0, 70, 40)
$killprocess = GUICtrlCreateButton($65, 20, 290, 150, 25)
$killwindow = GUICtrlCreateButton($66, 20, 320, 150, 25)
$WindowsMoveButtonWidth = 30
$WindowsMoveButtonLeft = ($MainFormWidth / 2) - ($WindowsMoveButtonWidth / 2)
$WindowsUserButtonWidth = 50
$WindowsUserButtonLeft = ($MainFormWidth / 2) - ($WindowsUserButtonWidth / 2)
$WindowMoveRight = GUICtrlCreateButton(">", $WindowsMoveButtonLeft, 370, $WindowsMoveButtonWidth, 25) ; ">" button moves Window from $ListView3 to $ListView4
$WindowMoveLeft = GUICtrlCreateButton("<", $WindowsMoveButtonLeft, 400, $WindowsMoveButtonWidth, 25) ; "<" button to the right of the 2 "Windows" ListViews
$WindowsUserAdd = GUICtrlCreateButton("+", $WindowsUserButtonLeft, 460, 50, 25) ; "+" button to the right of the 2 "Windows" ListViews | 1=text, 2=left, 3=top, 4=width, 5=height
$WindowsUserEdit = GUICtrlCreateButton($62, $WindowsUserButtonLeft, 490, 50, 25) ; "Edit" button to the right of the 2 "Windows" ListViews
Global $ListBox1 = GUICtrlCreateList("", 20, 90, 150, 201, BitOR($LBS_SORT, $WS_BORDER, $WS_VSCROLL, $LBS_NOTIFY, $LBS_EXTENDEDSEL))
GUICtrlSetBkColor(-1, 11842740)
$cfa = GUICtrlCreateCheckbox($59, 420, 180)
GUICtrlSetState(-1, $GUI_CHECKED)
GUICtrlSetState(-1, $GUI_CHECKED)
getprocesslist()
$ListBox2 = GUICtrlCreateList("", 250, 90, 150, 201)
GUICtrlSetBkColor(-1, 11842740)
$ListView3Left = 20
$ListView3Width = ($MainFormWidth / 2) - 55
$ListView3 = GUICtrlCreateListView($51 & "|" & $52, $ListView3Left, 350, $ListView3Width, 200) ; $ListView3 is the left-hand "Windows" list on the 2nd tab | 1=text, 2=left, 3=top, 4=width, 5=height
GUICtrlSetBkColor(-1, 11842740)
_WinAPI_SetWindowTheme(GUICtrlGetHandle($ListView3), 'Explorer')
getwin()
$ListView4Left = ($MainFormWidth / 2) + 35
$ListView4Width = ($MainFormWidth / 2) - 55
$ListView4 = GUICtrlCreateListView($51 & "|" & $52, $ListView4Left, 350, $ListView4Width, 200) ; $ListView4 is the right-hand "Windows" list on the 2nd tab
GUICtrlSetBkColor(-1, 11842740)
_GUICtrlListView_SetColumnWidth($ListView4, 0, ($ListView4Width * 0.35))
_GUICtrlListView_SetColumnWidth($ListView4, 1, ($ListView4Width * 0.64))
_WinAPI_SetWindowTheme(GUICtrlGetHandle($ListView4), 'Explorer')
getprocesslistfromfile()
GUICtrlCreateTabItem("")
GUISetState(@SW_SHOW)
$oTaskbar = _ITaskBar_CreateTaskBarObj()
dc()
GUIRegisterMsg($WM_DROPFILES, "WM_DROPFILES")
GUIRegisterMsg($WM_SIZE, "WM_SIZE")
ReDim $aColors[300][16]
Local $hDC = _WinAPI_GetDC($hLV)
Local $hFont = _SendMessage($hLV, $WM_GETFONT)
Local $hObject = _WinAPI_SelectObject($hDC, $hFont)
Local $lvLOGFONT = DllStructCreate($tagLOGFONT)
Local $aRet = DllCall('gdi32.dll', 'int', 'GetObjectW', 'ptr', $hFont, 'int', DllStructGetSize($lvLOGFONT), 'ptr', DllStructGetPtr($lvLOGFONT))
_WinAPI_SelectObject($hDC, $hObject)
_WinAPI_ReleaseDC($hLV, $hDC)
$hLVfont = _WinAPI_CreateFontIndirect($lvLOGFONT)
Local $iWeight = BitOR(DllStructGetData($lvLOGFONT, "Weight"), $FW_BOLD)
DllStructSetData($lvLOGFONT, "Weight", $iWeight)
$hLVfontBold = _WinAPI_CreateFontIndirect($lvLOGFONT)
For $i = 0 To 299
	$aColors[$i][0] = ColorConvert(0x8A2BE2)
	$aColors[$i][5] = ColorConvert(0x00FF00)
	$aColors[$i][6] = ColorConvert(0xFF0000)
	$aColors[$i][8] = ColorConvert(0x8080C0)
	$aColors[$i][11] = ColorConvert(0x0000FF)
	$aColors[$i][13] = ColorConvert(0x00FF00)
Next
GUIRegisterMsg($WM_NOTIFY, "WM_NOTIFY")
Dim $B_DESCENDING[_GUICtrlListView_GetColumnCount($ListView1)]
;_GUICtrlListView_RegisterSortCallBack($ListView_downloads)
Dim $s3
If $cmdline[0] > 0 Then
	For $i = 0 To $cmdline[0]
		mklist($cmdline[$i])
	Next
EndIf
While 1
	ReadGUI(GUIGetMsg())
WEnd
Func del()
	_GUICtrlListView_DeleteItem($ListView1, _GUICtrlListView_GetSelectedIndices($ListView1))
	getsizes()
EndFunc   ;==>del
Func rn()
	$pipe = Int(_GUICtrlListView_GetSelectedIndices($ListView1))
	If $pipe > -1 Then ShellExecute(_GUICtrlListView_GetItemText($ListView1, $pipe, 0))
EndFunc   ;==>rn
Func mklist($ptch)
	Dim $ar
	_FileReadToArray($ptch, $ar)
	If Not @error Then
		For $i = 1 To $ar[0]
			If $ar[$i] = "" Then ContinueLoop
			GUICtrlCreateListViewItem($ar[$i], $ListView1)
			$it = _GUICtrlListView_GetItemText($ListView1, _GUICtrlListView_GetItemCount($ListView1) - 1, 0)
			GUICtrlSetImage(-1, $it, 0)
			If StringInStr($it, ".msi") Or StringInStr($it, ".msu") Then GUICtrlSetImage(-1, "shell32.dll", 271)
		Next
		$ar = ""
		getsizes()
	EndIf
EndFunc   ;==>mklist
Func WM_DROPFILES($hwnd, $msg, $wParam, $lParam)
	$aCursorInfo = GUIGetCursorInfo($Form1_1)
	If Not @error And $aCursorInfo[4] = $ListView1 Then
		Local $aRet = DllCall("shell32.dll", "int", "DragQueryFile", "int", $wParam, "int", -1, "ptr", 0, "int", 0)
		Local $sDroppedFiles, $i, $tBuffer = DllStructCreate("char[256]")
		For $i = 0 To $aRet[0] - 1
			DllCall("shell32.dll", "int", "DragQueryFile", "int", $wParam, "int", $i, "ptr", DllStructGetPtr($tBuffer), "int", DllStructGetSize($tBuffer))
			$drop = DllStructGetData($tBuffer, 1)
			If FileGetSize($drop) = @error Then
				adfol($drop, $TrreView, 1)
				;If GUICtrlRead($subfolders)=1 Then adfol($drop,$TrreView)
			Else
				aditem($drop)
			EndIf
		Next
		$tBuffer = 0
	EndIf
	Return "GUI_RUNDEFMSG"
EndFunc   ;==>WM_DROPFILES
Func dc()
	GUICtrlSetState($inp, $GUI_DISABLE)
	GUICtrlSetState($brs, $GUI_DISABLE)
	GUICtrlSetState($open, $GUI_DISABLE)
EndFunc   ;==>dc
Func type($i)
	$ufo = ""
	$type = _GUICtrlListView_GetItemText($ListView1, $i, 1)
	$appname = StringReplace(_GUICtrlListView_GetItemText($ListView1, $i, 3), "  ", "")
	If StringInStr($type, "Inno") Then
		$od = ""
		If GUICtrlRead($af) = 1 Then $od = " /DIR=" & GUICtrlRead($inp) & "\" & $appname
		Return (" /SILENT /SUPPRESSMSGBOXES /NORESTART /SP-" & $od)
		$ufo = 1
	EndIf
	If StringInStr($type, "RAR SFX") Or StringInStr($type, "ZIP SFX") Then
		Return (" /s /d" & """" & @ProgramFilesDir & """" & "\" & $appname & """")
	EndIf
	If StringInStr($type, "Wise") Or StringInStr($type, "Nullsoft") Or StringInStr($type, "Smart Installer") Or StringInStr($type, "Ghost Installer Wizard") Or StringInStr($type, "Setup Factory") Or StringInStr($type, "InstallAware Wizard") Or StringInStr($type, "InstallShield") Or StringInStr($type, "FEAD Optimizer") Or StringInStr($type, "OpenAL Installer") Or StringInStr($type, "Driver Genius Driver Installer") Or StringInStr($type, "VMware Software Installer") Or StringInStr($type, "Kaspersky Installer") Or StringInStr($type, "RSD SFX") Or StringInStr($type, "Java Installer") Or StringInStr($type, "360 Total Security Installer") Or StringInStr($type, "WPS Office Installer") Or StringInStr($type, "DriveTheLife Installer") Or StringInStr($type, "SetupBuilder 8.0") Or StringInStr($type, "WPS Office Installer") Or StringInStr($type, "DriveTheLife Installer") Or StringInStr($type, "KZ SFX") Then
		$od = ""
		If StringInStr($type, "Nullsoft") And GUICtrlRead($af) = 1 Then $od = " /D=" & GUICtrlRead($inp) & "\" & $appname
		If Not StringInStr($type, "Java") Then
			Return (" /S" & $od)
		Else
			Return (" /s")
		EndIf
		$ufo = 1
	EndIf
	If StringInStr($type, "MSI") Then
		Return (" /qn")
		$ufo = 1
	EndIf
	If StringInStr($type, "MSU") Then
		Return (" /quiet /norestart")
		$ufo = 1
	EndIf
	If StringInStr($type, "Microsoft CAB SFX") Or StringInStr($type, "Microsoft Visual C++ 6.0 SPx") Or StringInStr($type, "Sony Windows Installer Preloader") Or StringInStr($type, "InstallMate Setup") Or StringInStr($type, "DNI") Then
		Return (" /q")
		$ufo = 1
	EndIf
	If StringInStr($type, "Nothing found [CAB SFX] *") Then
		Return (" /passive")
		$ufo = 1
	EndIf
	If StringInStr($type, "7z SFX") Or StringInStr($type, "7z Setup SFX") Then
		Return (" -y")
		$ufo = 1
	EndIf
	If StringInStr($type, "Adobe Self Extractor") Then
		Return (" /sall")
		$ufo = 1
	EndIf
	If StringInStr($type, "SPTD installer") Or StringInStr($type, "Adobe Installer") Or StringInStr($type, "HitmanPro.Alert Installer") Then
		Return (" /install")
		$ufo = 1
	EndIf
	If StringInStr($type, "Systrecer Installer") Then
		Return (" -intall -quiet")
		$ufo = 1
	EndIf
	If StringInStr($type, "DirectX installer") Or StringInStr($type, "DeployMaster Setup") Or StringInStr($type, "Opera Installer") Or StringInStr($type, "Avast Installer") Or StringInStr($type, "SUPERAntiSpyware Professional Setup") Then
		Return (" /Silent")
		$ufo = 1
	EndIf
	If StringInStr($type, "IrfanView Installer") Or StringInStr($type, "K7 Installer") Then
		Return (" /silent")
		$ufo = 1
	EndIf
	If StringInStr($type, "AIMP Installer") Then
		Return (" /AUTO")
		$ufo = 1
	EndIf
	If StringInStr($type, "Excelsior Installer") Then
		If GUICtrlRead($af) = 1 Then $od = " /dest " & GUICtrlRead($inp) & "\" & $appname
		Return (" /batch" & $od)
		$ufo = 1
	EndIf
	If StringInStr($type, "SSE Setup") Then
		$od = ""
		If GUICtrlRead($af) = 1 Then $od = " /D=" & GUICtrlRead($inp) & "\" & $appname
		Return (" /passive" & $od)
		$ufo = 1
	EndIf
	If StringInStr($type, "Advanced Installer") Then
		Return (" /i // /passive")
		$ufo = 1
	EndIf
	If StringInStr($type, "Actual installer") Then
		If GUICtrlRead($af) = 1 Then $od = " /d " & GUICtrlRead($inp) & "\" & $appname
		Return (" /s" & $od)
		$ufo = 1
	EndIf
	If StringInStr($type, "Free Arc SFX") Then
		$od = @ProgramFilesDir
		If GUICtrlRead($af) = 1 Then $od = GUICtrlRead($inp)
		Return (" -s -d" & """" & $od & "\" & $appname & """")
		$ufo = 1
	EndIf
	If StringInStr($type, "Install4j") Then
		Return (" -q")
		$ufo = 1
	EndIf
	If StringInStr($type, "INF") Then
		Return ("rundll32.exe setupapi,InstallHinfSection DefaultInstall 132 " & $ptch)
		$ufo = 1
	EndIf
	If StringInStr($type, "Oracle VirtualBox Installer") Or StringInStr($type, "Spoon Installer") Then
		Return (" --silent")
		$ufo = 1
	EndIf
	If StringInStr($type, "Nokia Installer") Then
		Return (" /silent=" & """" & "1" & """")
		$ufo = 1
	EndIf
	If StringInStr($type, "CreateInstall Setup") Then
		Return (" -silent")
		$ufo = 1
	EndIf
	If StringInStr($type, "Installbuilder Installer") Then
		$od = ""
		If GUICtrlRead($af) = 1 Then $od = " --prefix " & GUICtrlRead($inp) & "\" & $appname
		Return (" --mode unattended --unattendedmodeui minimal" & $od)
		$ufo = 1
	EndIf
	If StringInStr($type, "Nero Self Extractor") Then
		Return (" /S /v/qn")
		$ufo = 1
	EndIf
	If StringInStr($type, "Skype Installer") Then
		Return (" /VERYSILENT /NOLAUNCH /NOSTARTUP /NOPLUGINS")
		$ufo = 1
	EndIf
	If StringInStr($type, "Unchecky Installer") Then
		Return (" -install")
		$ufo = 1
	EndIf
	If StringInStr($type, "ConEmu Installer") Then
		$osArch = StringLower(@OSArch)
		Return (" /p:" & $osArch & ",adm /qr")
		$ufo = 1
	EndIf
	If StringInStr($type, "Qt Installer") Then
		Return (" --script " & """" & @ScriptDir & "\scripts\qt-installer-noninteractive.qs" & """")
		$ufo = 1
	EndIf
	If StringInStr($type, "Mozilla Installer") Then
		return ($ptch & " -ms")
		$ufo = 1
	EndIf
	;---antivirus---
	If StringInStr($type, "AVG Antivirus Installer") Then
		Return (" /Silent=true /Langid=1049 /InstallToolbar=false /ChangeBrowserSearchProvider=false /InstallSidebar=false /ParticipateProductImprovement=false /DontRestart /DisableScan /KillProcessesIfNeeded /FEG")
		$ufo = 1
	EndIf
	If StringInStr($type, "Norton Installer") Then
		Return (" /qb")
		$ufo = 1
	EndIf
	If StringInStr($type, "MSI-based Installer") Then
		Return (" /qn")
		$ufo = 1
	EndIf
	If StringInStr($type, "Panda Security SelfExtractor") Then
		Return (' -s -sp"/quiet"')
		$ufo = 1
	EndIf
	;---antivirus---
	If $ufo = "" Then MsgBox(0, "", $40)
EndFunc   ;==>type
Func getsizes()
	$listcount = _GUICtrlListView_GetItemCount($ListView1)
	If $listcount > 0 Then
		Local $rnd[$listcount]
		Local $rnd2[$listcount]
		Local $rnd3[$listcount]
		For $i = 0 To $listcount - 1
			$rnd[$i] = _GUICtrlListView_GetItemText($ListView1, $i, 2)
			If _GUICtrlListView_GetItemChecked($ListView1, $i) = 1 Then
				$rnd2[$i] = _GUICtrlListView_GetItemText($ListView1, $i, 2)
				$rnd3[$i] = 1
			EndIf
		Next
		$s = 0
		$s2 = 0
		$s3 = 0
		For $i = 0 To $listcount - 1
			$s += $rnd[$i]
			$s2 += $rnd2[$i]
			$s3 += $rnd3[$i]
		Next
		_GUICtrlStatusBar_SetText($StatusBar1, $29 & $listcount & "(" & $s & $37 & ") " & $39 & $s3 & "(" & $s2 & $37 & ")")
	Else
		_GUICtrlStatusBar_SetText($StatusBar1, "")
	EndIf
EndFunc   ;==>getsizes
Func _FileDisplayProperties($sCallFile)
	Local $iReturn = DllCall("shell32.dll", "int", "SHObjectProperties", "hwnd", 0, "dword", 0x00000002, "wstr", $sCallFile, "wstr", 0)
EndFunc   ;==>_FileDisplayProperties
Func Timer()
	_TicksToTime(Int(TimerDiff($time)), $Hour, $Mins, $Secs)
	Local $sTime = $Time0
	$Time0 = StringFormat("%02i:%02i:%02i", $Hour, $Mins, $Secs)
	If $sTime <> $Time0 Then GUICtrlSetData($timer, $Time0)
	If StringRight(GUICtrlRead($timer), 2) = "59" Then Send("{alt}")
EndFunc   ;==>Timer
Func aditem($ptch)
	If $ptch = Not "" Then
		$t = FileGetTime($ptch)
		If StringRight($ptch, 3) = "exe" Then
			$hesad = ""
			If GUICtrlRead($cfa) = 1 Then
				For $i = 1 To $adware[0]
					If StringInStr(getfileinstring($ptch), $adware[$i]) Then $hesad = $56
				Next
			EndIf
			$appname = FileGetVersion($ptch, "productname")
			If $appname = "" Then $appname = getfileinstring($ptch)
			GUICtrlCreateListViewItem($ptch & "|" & gettype($ptch) & "|" & Round(FileGetSize($ptch) / 1024000, 2) & "|" & $appname & " " & FileGetVersion($ptch) & "|" & $t[2] & "." & $t[1] & "." & $t[0] & " " & $t[3] & ":" & $t[4] & "|" & $hesad, $ListView1)
			GUICtrlSetImage(-1, $ptch, 0)
		ElseIf StringRight($ptch, 3) = "msi" Then
			GUICtrlCreateListViewItem($ptch & "|" & "MSI" & "|" & Round(FileGetSize($ptch) / 1024000, 2) & "|" & "|" & $t[2] & "." & $t[1] & "." & $t[0] & " " & $t[3] & ":" & $t[4], $ListView1)
			GUICtrlSetImage(-1, "shell32.dll", 271)
		ElseIf StringRight($ptch, 3) = "msu" Then
			GUICtrlCreateListViewItem($ptch & "|" & "MSU" & "|" & Round(FileGetSize($ptch) / 1024000, 2) & "|" & "|" & $t[2] & "." & $t[1] & "." & $t[0] & " " & $t[3] & ":" & $t[4], $ListView1)
			GUICtrlSetImage(-1, "shell32.dll", 271)
		ElseIf StringRight($ptch, 3) = "zip" Then
			GUICtrlCreateListViewItem($ptch & "|" & "ZIP" & "|" & Round(FileGetSize($ptch) / 1024000, 2) & "|" & "|" & $t[2] & "." & $t[1] & "." & $t[0] & " " & $t[3] & ":" & $t[4] & "||||" & @ProgramFilesDir, $ListView1)
		ElseIf StringRight($ptch, 3) = "rar" Then
			GUICtrlCreateListViewItem($ptch & "|" & "RAR" & "|" & Round(FileGetSize($ptch) / 1024000, 2) & "|" & "|" & $t[2] & "." & $t[1] & "." & $t[0] & " " & $t[3] & ":" & $t[4] & "||||" & @ProgramFilesDir, $ListView1)
		ElseIf StringRight($ptch, 2) = "7z" Then
			GUICtrlCreateListViewItem($ptch & "|" & "7z" & "|" & Round(FileGetSize($ptch) / 1024000, 2) & "|" & "|" & $t[2] & "." & $t[1] & "." & $t[0] & " " & $t[3] & ":" & $t[4] & "||||" & @ProgramFilesDir, $ListView1)
		ElseIf StringRight($ptch, 3) = "inf" Then
			GUICtrlCreateListViewItem($ptch & "|" & "INF" & "|" & Round(FileGetSize($ptch) / 1024000, 2) & "|" & "|" & $t[2] & "." & $t[1] & "." & $t[0] & " " & $t[3] & ":" & $t[4], $ListView1)
			GUICtrlSetImage(-1, "shell32.dll", 151)
		EndIf
	EndIf
	getsizes()
EndFunc   ;==>aditem
Func getprocesslist()
	Local $Processarray = ProcessList()
	Local $TempArray[1]
	Local $AddString
	$TempArray[0] = 1
	_GUICtrlListBox_BeginUpdate($ListBox1)
	For $i = 1 To $Processarray[0][0]
		Local $ProcSearch = _ArrayBinarySearch($SafeProcessesArray, $Processarray[$i][0])
		If Not @error Then
			ContinueLoop
		EndIf
		Local $ProcSearch = _ArraySearch($TempArray, $Processarray[$i][0])
		If Not @error Then
			ContinueLoop
		EndIf
		ReDim $TempArray[$TempArray[0] + 1]
		$TempArray[0] = $TempArray[0] + 1
		_ArrayAdd($TempArray, $Processarray[$i][0])
		GUICtrlSetData($ListBox1, $Processarray[$i][0])
	Next
	_GUICtrlListBox_EndUpdate($ListBox1)
EndFunc   ;==>getprocesslist
Func getfileinstring($prm)
	$v = StringInStr($prm, "\", 0, -1)
	Return StringMid($prm, $v + 1)
EndFunc   ;==>getfileinstring
Func getprocesslistfromfile()
	Dim $array, $array3
	_FileReadToArray("blacklistprocesses.txt", $array)
	If Not @error Then
		For $i = 1 To $array[0]
			If $array[$i] = "" Then ContinueLoop
			_GUICtrlListBox_AddString($ListBox2, $array[$i])
		Next
	EndIf
	_FileReadToArray("blacklistwindows.txt", $array3)
	If Not @error Then
		For $i = 1 To $array3[0]
			If $array3[$i] = "" Then ContinueLoop
			GUICtrlCreateListViewItem($array3[$i], $ListView4)
		Next
	EndIf
EndFunc   ;==>getprocesslistfromfile
Func killprcesses()
	For $i = 0 To _GUICtrlListBox_GetCount($ListBox2) - 1
		ProcessClose(_GUICtrlListBox_GetText($ListBox2, $i))
	Next
EndFunc   ;==>killprcesses
Func IsVisible($handle)
	If BitAND(WinGetState($handle), 2) Then
		Return 1
	Else
		Return 0
	EndIf
EndFunc   ;==>IsVisible
Func getwin()
	_GUICtrlListView_DeleteAllItems($ListView3)
	$var = WinList()
	For $i = 1 To $var[0][0]
		If $var[$i][0] <> "" And IsVisible($var[$i][1]) Then
			If $var[$i][0] = "Program manager" Or $var[$i][0] = "Рабочий стол" Or $var[$i][0] = "Desktop" Then ContinueLoop
			GUICtrlCreateListViewItem($var[$i][0] & "|" & StringMid(WinGetText($var[$i][0], ""), 1, 10), $ListView3)
		EndIf
	Next
EndFunc   ;==>getwin
Func killwin()
	For $i = 0 To _GUICtrlListView_GetItemCount($ListView4) - 1
		$wintitle = _GUICtrlListView_GetItemText($ListView4, $i, 0)
		$wintext = _GUICtrlListView_GetItemText($ListView4, $i, 1)
		If $wintitle & $wintext <> "" Then WinClose($wintitle, $wintext)
	Next
EndFunc   ;==>killwin
Func Refresh()
	_GUICtrlListBox_ResetContent($ListBox1)
	_GUICtrlListView_DeleteAllItems($ListView3)
	getwin()
	getprocesslist()
EndFunc   ;==>Refresh
Func gettype($ptch)
	Run(@ScriptDir & "\peid.exe -hard " & '"' & $ptch & '"', "", @SW_HIDE)
	WinWait("PEiD v0.9")
	$IDString = ControlGetText("PEiD v0.9", "", "Edit2")
	$IDString3 = ControlGetText("PEiD v0.9", "", "Edit3")
	While ($IDString = "Scanning...") Or ($IDString = "")
		$IDString = ControlGetText("PEiD v0.9", "", "Edit2")
	WEnd
	WinClose("PEiD v0.9")
	Switch $IDString3
		Case "000170D4", "00019B64"
			$IDString = "Smart Installer"
		Case "00047AC7","000681F8", "0000B1CC", "00093C20", "0003D64F", "00022D69", "00007B43", "00022A29", "000024B5", "0006984B", "00048417", "0000CC61", "00022094", "00028171", "000073A5", "0003EAF0", "00056683"
			$IDString = "InstallShield"
		Case "00005A45", "000063FF", "000191C6", "00005972", "00006B72", "000195BA", "00005892", "000067CC"
			$IDString = "Microsoft CAB SFX"
		Case "000111D6", "000137DF", "00010FB6", "00010FB6", "000232E0", "000146FF", "0001818F", "00011DE6", "00011FE4", "000106AF", "00011F3F", "00012C8F", "0001373C", "00007274"
			$IDString = "7z Setup SFX"
		Case "000135BD", "00055E85"
			$IDString = "Adobe Self Extractor"
		Case "0001E3AC"
			$IDString = "Adobe Installer"
		Case "00350A70", "0018EFC0", "000012D4"
			$IDString = "Free Arc SFX"
		Case "000039E3", "00003A10", "000068E2", "000069B7", "000038AF"
			$IDString = "Nullsoft"
		Case "00012DDF", "0001D152", "0002234A", "00021D00"
			$IDString = "7z SFX"
		Case "00002889", "00001D9D", "00002FB9", "000029E1", "00011DEF", "000029E1"
			$IDString = "Setup Factory"
		Case "0003DAF0"
			$IDString = "VMware Software Installer"
		Case "000080BC"
			$IDString = "DeployMaster Setup"
		Case "00001495", "000014DB"
			$IDString = "InstallMate Setup"
		Case "00001C70", "00001CF0"
			$IDString = "SetupBuilder 8.0"
		Case "000BD2A0"
			$IDString = "Ghost Installer Wizard"
		Case "000C96BC", "0007969C", "000246E1", "00014C7B", "000C94CC"
			$IDString = "Advanced Installer"
		Case "0003F7F4"
			$IDString = "KZ SFX"
		Case "0000C36E"
			$IDString = "Spoon Installer"
			Case "008CDB7C", "00BCAE60"
			$IDString = "Qt Installer"
		Case "00BCAE60", "002C42A0"
			$IDString = "Installbuilder Installer"
		Case "00003AC0", "000177CD" ; 000177CD=install time setup wizard
			$IDString = "MSI-based Installer"
	EndSwitch
	If StringInStr($IDString, "Borland D") Then $IDString = "Inno Setup"
	If StringInStr($IDString, "UPX 0.89.6 - 1.02 / 1.05 - 2.90 (Delphi) stub -> Markus & Laszlo [CAB SFX]") Then $IDString = "Ghost Installer Wizard"
	If $IDString3 = "00001000" Then $IDString = "RAR SFX"
	If $IDString3 = "00012A70" Then $IDString = "InstallAware Wizard"
	If $IDString3 = "00025426" Then $IDString = "FEAD Optimizer"
	If $IDString3 = "00006C41" Then $IDString = "OpenAL Installer"
	If $IDString3 = "000011F8" Then $IDString = "Install4j"
	If $IDString3 = "0000169F" Then $IDString = "Driver Genius Driver Installer"
	If $IDString3 = "000E9599" Then $IDString = "Sony Windows Installer Preloader"
	If $IDString3 = "00001814" Then $IDString = "Excelsior Installer"
	If $IDString3 = "00028D10" Then $IDString = "SSE Setup"
	If $IDString3 = "00001D20" Then $IDString = "CreateInstall Setup"
	If $IDString3 = "00121E37" Then $IDString = "Nero Self Extractor"
	If $IDString3 = "0000277E" Then $IDString = "Vivaldi Installer"
	If $IDString3 = "00014EDB" Then $IDString = "RSD SFX"
	If $IDString3 = "0008D103" Then $IDString = "dotNet Installer (DNI)"
	If $IDString3 = "0007067C" Then $IDString = "Norton Installer"
	If $IDString = "UPX 0.89.6 - 1.02 / 1.05 - 2.90 -> Markus & Laszlo [Overlay]" And StringInStr(FileGetVersion($ptch, "ProductName"), "Firefox") Or StringInStr(FileGetVersion($ptch, "ProductName"), "Thunderbird") Then $IDString = "Mozilla Installer"
	If $IDString = "Nothing found [Overlay] *" And StringInStr($ptch, "sptd") Then $IDString = "SPTD installer"
	If $IDString = "Nothing found [Overlay] *" And StringInStr($ptch, "dxsetup") Then $IDString = "DirectX installer"
	If $IDString = "Microsoft Visual C++ 6.0 [Overlay]" And StringInStr(FileGetVersion($ptch, "ProductName"), "aimp") Then $IDString = "AIMP Installer"
	If $IDString = "Nothing found [Overlay] *" Or $IDString = "Microsoft Visual C++ 7.0 [Debug] [Overlay]" And StringInStr($ptch, "VirtualBox") Then $IDString = "Oracle VirtualBox Installer"
	If $IDString = "Nothing found [Overlay] *" And StringInStr($ptch, "Opera") Then $IDString = "Opera Installer"
	If $IDString = "UPX 0.89.6 - 1.02 / 1.05 - 2.90 -> Markus & Laszlo [Overlay]" Or $IDString = "Microsoft Visual C++ 6.0 [Overlay]" And StringInStr($ptch, "Nokia") Then $IDString = "Nokia Installer"
	If $IDString = "Nothing found [Overlay] *" Or $IDString = "Not a valid PE file" And StringInStr(FileGetVersion($ptch, "ProductName"), "Java") Then $IDString = "Java Installer"
	If $IDString = "Nothing found [Overlay] *" And StringInStr(FileGetVersion($ptch, "ProductName"), "Skype") Then $IDString = "Skype Installer"
	If $IDString = "Nothing found [Overlay] *" And StringInStr(FileGetVersion($ptch, "ProductName"), "WPS Office") Then $IDString = "WPS Office Installer"
	If $IDString = "UPX 0.89.6 - 1.02 / 1.05 - 2.90 -> Markus & Laszlo" And StringInStr(FileGetVersion($ptch, "ProductName"), "IrfanView") Then $IDString = "IrfanView Installer"
	If $IDString = "Not a valid PE file" And StringInStr(FileGetVersion($ptch, "ProductName"), "Vivaldi Installer") Then $IDString = "Vivaldi Installer"
	If $IDString = "Not a valid PE file" Or $IDString = "Nothing found *" And StringInStr(FileGetVersion($ptch, "ProductName"), "SysTracer") Then $IDString = "SysTracer Installer"
	If $IDString = "Not a valid PE file" And StringInStr(FileGetVersion($ptch, "ProductName"), "Sony Windows Installer Preloader") Then $IDString = "Sony Windows Installer Preloader"
	If $IDString = "Microsoft Visual C++ 6.0 [Overlay]" And StringInStr(FileGetVersion($ptch, "ProductName"), "7-Zip") Then $IDString = "7z SFX"
	If $IDString = "Nothing found [Overlay] *" And StringInStr(FileGetVersion($ptch, "ProductName"), "ConEmu") Then $IDString = "ConEmu Installer"
	If $IDString = "Nothing found [Overlay] *" And StringInStr(FileGetVersion($ptch, "ProductName"), "Adobe AIR ") Or StringInStr(FileGetVersion($ptch, "ProductName"), "Adobe® Flash®") Then $IDString = "Adobe Installer"
	If $IDString = "UPX 0.89.6 - 1.02 / 1.05 - 2.90 -> Markus & Laszlo [Overlay]" And StringInStr(FileGetVersion($ptch, "ProductName"), "Unchecky")  Then $IDString = "Unchecky Installer"
	If StringInStr($IDString, "Nothing ") And StringInStr($ptch, "qt-") Or StringInStr($ptch, "-opensource-") Or StringInStr($ptch, "QtInstallerFramework") Then $IDString = "QT Installer"
	If StringInStr($IDString, "UPX 0.89.6 - 1.02 / 1.05 - 2.90 -> Markus & Laszlo [Overlay]") And StringInStr(FileGetVersion($ptch, "ProductName"), "DriveTheLife") Then $IDString = "DriveTheLife Installer"

	;---antivirus
	If $IDString = "Nothing found [Overlay] *" And StringInStr($ptch, "AVG_Antivirus") Then $IDString = "AVG Antivirus Installer"
	If $IDString = "Nothing found [Overlay] *" And StringInStr($ptch, "avast") Then $IDString = "Avast Installer"
	If $IDString = "Nothing found [Overlay] *" And StringInStr($ptch, "kis16") or StringInStr(FileGetVersion($ptch, "ProductName"), "Kaspersky") Then $IDString = "Kaspersky Installer"
	If $IDString = "Nothing found [Overlay] *" And StringInStr($ptch, "SUPERAntiSpywarePro.exe") Then $IDString = "SUPERAntiSpyware Professional Setup"
	If $IDString = "Nothing found [Overlay] *" And StringInStr(FileGetVersion($ptch, "ProductName"), "360 Total Security") Then $IDString = "360 Total Security Installer"
	If StringInStr($IDString, "Nothing ") And StringInStr(FileGetVersion($ptch, "ProductName"), "K7TotalSecurity") Then $IDString = "K7 Installer"
	If $IDString = "Nothing found [Overlay] *" And StringInStr(FileGetVersion($ptch, "ProductName"), "Panda Security") Then $IDString = "Panda Security SelfExtractor"
	If $IDString = "Nothing found [Overlay] *" And StringInStr(FileGetVersion($ptch, "ProductName"), "HitmanPro.Alert") Then $IDString = "HitmanPro.Alert Installer"
	Return ($IDString)
EndFunc   ;==>gettype
Func getck()
	For $i = 1 To 1000
		Local $enum = RegEnumVal($ck, $i)
		$val = RegRead($ck, $enum)
		If @error <> 0 Then ExitLoop
		GUICtrlCreateListViewItem($enum & "|" & $val, $ListView5)
		GUICtrlSetImage(-1, $enum)
	Next
EndFunc   ;==>getck
Func setck($param)
	$pipe = _GUICtrlListView_GetSelectedIndices($ListView5)
	If $pipe > -1 Then
		_GUICtrlListView_SetItemText($ListView5, $pipe, 1, $param)
		RegWrite($ck, _GUICtrlListView_GetItemText($ListView5, $pipe, 0), "REG_SZ", $param)
	EndIf
EndFunc   ;==>setck
Func adfol($dir, $parent, $mode = 0)
	FileChangeDir($dir)
	$search = FileFindFirstFile("*")
	While 1
		$file = FileFindNextFile($search)
		If @error Then ExitLoop
		$GetExt = GetExt($dir & "\" & $file)
		If $GetExt <> "folder" And $mode = 1 Then
			$buffer = BinaryToString($file)
			_ArrayAdd($items, GUICtrlCreateTreeViewItem($buffer, $parent))
			_ArrayAdd($names, @WorkingDir & "\" & $file)
			Switch GetExt(@WorkingDir & "\" & $file)
				Case "exe", "msi", "zip", "rar", "7z", "msu", "inf"
					If getfileinstring(@WorkingDir & "\" & $file) = "autorun.exe" Or getfileinstring(@WorkingDir & "\" & $file) = "autorun.inf" Then ContinueCase
					aditem(@WorkingDir & "\" & $file)
			EndSwitch
			GUICtrlSetColor($items[UBound($items) - 1], 0xff8800)
		Else
			If $GetExt = "folder" And $mode = 0 Then
				$buffer = BinaryToString($file)
				_ArrayAdd($items, GUICtrlCreateTreeViewItem($buffer, $parent))
				_ArrayAdd($names, @WorkingDir & "\" & $file)
				GUICtrlSetColor($items[UBound($items) - 1], 0xffcc00)
				adfol($dir & "\" & $file, $items[UBound($items) - 1], 0)
				adfol($dir & "\" & $file, $items[UBound($items) - 1], 1)
			EndIf
		EndIf
	WEnd
	FileClose($search)
EndFunc   ;==>adfol
Func GetExt($file)
	If StringInStr(FileGetAttrib($file), "D") Then Return "folder"
	Return StringUpper(StringTrimLeft($file, StringInStr($file, ".", 0, -1)))
EndFunc   ;==>GetExt

Func Get_Proces_list()
	$array_proceses = ProcessList()
	$start_process_count = $array_proceses
	_GUICtrlListView_DeleteAllItems($ListView_process)
	For $i = 2 To $array_proceses[0][0]
		$pcocess_filename = _WinAPI_GetProcessFileName($array_proceses[$i][1])
		$cmd_process = _WinAPI_GetProcessCommandLine($array_proceses[$i][1])
		GUICtrlCreateListViewItem($array_proceses[$i][0] & "|" & $pcocess_filename & " " & $cmd_process & "|" & FileGetVersion($pcocess_filename, "ProductName"), $ListView_process)
		GUICtrlSetImage(-1, $pcocess_filename)
	Next
EndFunc   ;==>Get_Proces_list
Func Refresh_proceses()
	$array_proceses = ProcessList()
	If $array_proceses[0][0] <> $start_process_count[0][0] Then
		Get_Proces_list()
	EndIf
EndFunc   ;==>Refresh_proceses
Func FillListView()
	Local $i = 0, $c = 0
	Local $key = "", $value = "", $name = ""
	Local $regArch = "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment"
	If GUICtrlRead($cufilter) = 4 Then
		Local $regRoot = "HKLM64\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall"
		Local $regRoot32 = "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall"
	Else
		Local $regRoot = "HKCU64\Software\Microsoft\Windows\CurrentVersion\Uninstall"
		Local $regRoot32 = "HKCU\Software\Microsoft\Windows\CurrentVersion\Uninstall"
	EndIf
	$computer = GUICtrlRead($iComp)
	Local $srchTrm = GUICtrlRead($iSrch)
	ToggleControlAvailability(0)
	_GUICtrlListView_DeleteAllItems($ListView_unistall)
	_GUICtrlListView_BeginUpdate($ListView_unistall)
	Local $pingErr = 0
	If $computer <> "" And StringCompare($computer, @ComputerName) <> 0 And StringCompare($computer, "localhost") <> 0 And $computer <> "127.0.0.1" Then
		$regRoot = "\\" & $computer & "\" & $regRoot
		$regRoot32 = "\\" & $computer & "\" & $regRoot32
		$regArch = "\\" & $computer & "\" & $regArch
		_GUICtrlStatusBar_SetText($StatusBar1, "Connecting to " & $computer & "...")
		Ping($computer, 1000)
		$pingErr = @error
	Else
		_GUICtrlStatusBar_SetText($StatusBar1, "")
	EndIf
	Local $dataBlob = ""
	ToggleRcMenus(1)
	If $pingErr <> 0 Then
		_GUICtrlStatusBar_SetText($StatusBar1, "Unable to connect to " & $computer & ".")
	Else
		$osArch = StringUpper(RegRead($regArch, "PROCESSOR_ARCHITECTURE"))
		If $osArch == "AMD64" And GUICtrlRead($r32) == $GUI_CHECKED Then
			$regRoot = $regRoot32
		ElseIf $osArch <> "AMD64" And GUICtrlRead($r64) == $GUI_CHECKED Then
			GUICtrlSetState($rAll, $GUI_CHECKED)
		EndIf
		_GUICtrlStatusBar_SetText($StatusBar1, "Searching...")
		Local $hideUpdates = 0
		If GUICtrlRead($cHideMSUpdates) == $GUI_CHECKED Then
			$hideUpdates = 1
		EndIf
		$systemcomponent = 0
		If _GUICtrlComboBox_GetCurSel($csyscomponent) = 2 Then
			$systemcomponent = 1
		EndIf
		If _GUICtrlComboBox_GetCurSel($csyscomponent) = 1 Then
			$systemcomponent = 2
		EndIf
		Local $filterbydate = 0
		If GUICtrlRead($cbydatefilter) == $GUI_CHECKED Then
			$filterbydate = 1
		EndIf
		While 1
			If ReadGUI(GUIGetMsg($Form1_1)) == False Then
				_GUICtrlStatusBar_SetText($StatusBar1, $c & " results found (Search cancelled)")
				ExitLoop
			EndIf
			$i += 1
			$key = $regRoot & "\" & RegEnumKey($regRoot, $i)
			Switch @error
				Case 0
					$name = RegRead($key, "DisplayName")
					If @error == 0 Then Local $pub = RegRead($key, "Publisher")
					$uninst = RegRead($key, "UninstallString")
					$modifypath = RegRead($key, "ModifyPath")
					$SystemComponentvar = RegRead($key, "SystemComponent")
					$installer = ""
					If StringInStr($uninst, "RunDll32") Then
						$installer = "InstallShield"
					ElseIf StringInStr($uninst, "msiexec") Or StringInStr($modifypath, "msiexec") Then
						$installer = "MSI"
					ElseIf RegRead($key, "Inno Setup: App Path") Then
						$installer = "Inno Setup"
					ElseIf RegRead($key, "NSIS:Language") Then
						$installer = "NSIS"
					ElseIf StringInStr($uninst, "UNWISE") Then
						$installer = "WISE"
					ElseIf $installer = "" And StringReplace(getfileinstring($uninst), """", "") = "Uninstall.exe" Or StringReplace(getfileinstring($uninst), """", "") = "Uninst.exe" Then
						$installer = "NSIS"
					EndIf
					$installdate = RegRead($key, "InstallDate")
					If $installdate = "" And $installer = "NSIS" Then
						$installdate = StringMid(FileGetTime(StringReplace($uninst, """", ""), 0, 1), 1, 8)
					EndIf
					If $installdate <> "" Then
						$installdate = _StringInsert($installdate, "/", 4)
						$installdate = _StringInsert($installdate, "/", 7)
						$installdate = _DateTimeFormat($installdate, 2)
					EndIf
					$silentunistallstring = RegRead($key, "QuietUninstallString")
					If $silentunistallstring = "" And $installer = "MSI" Then $silentunistallstring = StringReplace($uninst, "/I", "/X") & " /qn"
					If $silentunistallstring = "" And $installer = "InstallShield" Or $installer = "NSIS" Or $installer = "WISE" Then $silentunistallstring = $uninst & " /S"
					If $name <> "" And ($srchTrm == "" Or StringInStr($name, $srchTrm, 0, 1) Or StringInStr($pub, $srchTrm, 0, 1) Or StringInStr($uninst, $srchTrm, 0, -1)) Then
						If $hideUpdates And Not $systemcomponent Then
							If $filterbydate = 1 And $installdate <> GUICtrlRead($g_hDTP) And GUICtrlRead($nontodayfilter) = 4 Then ContinueLoop
							If GUICtrlRead($nontodayfilter) = 1 And $installdate = @MDAY & "." & @MON & "." & @YEAR Then ContinueLoop
							If Not (StringInStr($pub, "Microsoft", 0, 1) And (StringInStr($name, "Update", 0, 1) Or StringInStr($name, "Hotfix", 0, 1))) Then
								$dataBlob &= BuildLine($ListView_unistall, $key, $name, RegRead($key, "DisplayVersion"), $pub, $uninst, $installdate, RegRead($key, "InstallLocation"), RegRead($key, "InstallSource"), $silentunistallstring, RegRead($key, "EstimatedSize"), $modifypath, RegRead($key, "HelpLink"), $installer)
								If $computer <> "" Then AddListEntry($computer, $dataBlob)
								$c += 1
							EndIf
						ElseIf $systemcomponent = 1 Then
							If $SystemComponentvar = 1 Then
								If $filterbydate = 1 Then
									If GUICtrlRead($g_hDTP) <> $installdate Then ContinueLoop
								EndIf
								If Not (StringInStr($pub, "Microsoft", 0, 1) And (StringInStr($name, "Update", 0, 1) Or StringInStr($name, "Hotfix", 0, 1))) Then

									$dataBlob &= BuildLine($ListView_unistall, $key, $name, RegRead($key, "DisplayVersion"), $pub, $uninst, $installdate, RegRead($key, "InstallLocation"), RegRead($key, "InstallSource"), $silentunistallstring, RegRead($key, "EstimatedSize"), $modifypath, RegRead($key, "HelpLink"), $installer)
									If $computer <> "" Then AddListEntry($computer, $dataBlob)
									$c += 1

								EndIf

							EndIf
						ElseIf Not $systemcomponent And Not $hideUpdates Then
							If $filterbydate = 1 And $installdate <> GUICtrlRead($g_hDTP) Then ContinueLoop
							If Not (StringInStr($pub, "Microsoft", 0, 1) And (StringInStr($name, "Update", 0, 1) Or StringInStr($name, "Hotfix", 0, 1))) Then
								$dataBlob &= BuildLine($ListView_unistall, $key, $name, RegRead($key, "DisplayVersion"), $pub, $uninst, $installdate, RegRead($key, "InstallLocation"), RegRead($key, "InstallSource"), $silentunistallstring, RegRead($key, "EstimatedSize"), $modifypath, RegRead($key, "HelpLink"), $installer)
								If $computer <> "" Then AddListEntry($computer, $dataBlob)
								$c += 1
							EndIf
						Else

							If $systemcomponent = 2 Then
								If $SystemComponentvar = 1 Then ContinueLoop
								If $filterbydate = 1 And $installdate <> GUICtrlRead($g_hDTP) Then ContinueLoop
								If Not (StringInStr($pub, "Microsoft", 0, 1) And (StringInStr($name, "Update", 0, 1) Or StringInStr($name, "Hotfix", 0, 1))) Then
									$dataBlob &= BuildLine($ListView_unistall, $key, $name, RegRead($key, "DisplayVersion"), $pub, $uninst, $installdate, RegRead($key, "InstallLocation"), RegRead($key, "InstallSource"), $silentunistallstring, RegRead($key, "EstimatedSize"), $modifypath, RegRead($key, "HelpLink"), $installer)
									If $computer <> "" Then AddListEntry($computer, $dataBlob)
									$c += 1
								EndIf
							EndIf
						EndIf
					EndIf
				Case -1
					If $osArch == "AMD64" And $regRoot <> $regRoot32 And GUICtrlRead($r64) <> $GUI_CHECKED Then
						$regRoot = $regRoot32
						$i = 0
					Else
						_GUICtrlStatusBar_SetText($StatusBar1, $c & " result(s) found")
						ExitLoop
					EndIf
				Case 3
					_GUICtrlStatusBar_SetText($StatusBar1, "Unable to connect to remote registry.")
					ExitLoop
			EndSwitch
		WEnd
	EndIf
	If $computer == "" Then
		$dataBlob = StringStripWS($dataBlob, $STR_STRIPTRAILING)
		Local $lines = StringSplit($dataBlob, @CRLF, $STR_ENTIRESPLIT + $STR_NOCOUNT)
		If $dataBlob <> "" Then
			_ArraySort($lines)
			Local $listArray[UBound($lines)][_GUICtrlListView_GetColumnCount($ListView_unistall)]
			For $i = 0 To UBound($lines) - 1
				Local $temp = StringSplit($lines[$i], "|", $STR_NOCOUNT)
				For $j = 0 To UBound($temp) - 1
					$listArray[$i][$j] = $temp[$j]
				Next
			Next
			_GUICtrlListView_DeleteAllItems($ListView_unistall)
			_GUICtrlListView_AddArray($ListView_unistall, $listArray)
			_GUICtrlListView_SetColumnWidth($ListView_unistall, 0, 170)
		EndIf
	Else
		Local $sortSense = False
		_GUICtrlListView_SimpleSort($ListView_unistall, $sortSense, 0)
	EndIf
	_GUICtrlListView_EndUpdate($ListView_unistall)
	ToggleRcMenus(0)
	ToggleControlAvailability(1)
EndFunc   ;==>FillListView
Func ToggleRcMenus($inProgress)
	If $inProgress Then
		GUICtrlDelete($rcMenu)
		$rcMenu = GUICtrlCreateContextMenu($ListView_unistall)
		$rcCancel = GUICtrlCreateMenuItem("Cancel Search", $rcMenu)
	Else
		GUICtrlDelete($rcMenu)
		$rcMenu = GUICtrlCreateContextMenu($ListView_unistall)
		Global $rcselect = GUICtrlCreateMenu("Select", $rcMenu)
		Global $rcselectall = GUICtrlCreateMenuItem("All", $rcselect)
		Global $rcselectnone = GUICtrlCreateMenuItem("Nothing", $rcselect)
		$rcCopy = GUICtrlCreateMenu("Copy", $rcMenu)
		$rcCopyLine = GUICtrlCreateMenuItem("Line", $rcCopy)
		$rcCopyName = GUICtrlCreateMenuItem("Name", $rcCopy)
		$rcCopyVer = GUICtrlCreateMenuItem("Version", $rcCopy)
		$rcCopyPub = GUICtrlCreateMenuItem("Publisher", $rcCopy)
		$rcCopyGUID = GUICtrlCreateMenuItem("GUID", $rcCopy)
		$rcCopyUninst = GUICtrlCreateMenuItem("Uninstall String", $rcCopy)
		$rcCopyLoc = GUICtrlCreateMenuItem("Install Location", $rcCopy)
		$rcCopySrc = GUICtrlCreateMenuItem("Install Source", $rcCopy)
		$rcCopyKey = GUICtrlCreateMenuItem("Uninstall Key", $rcCopy)
		$rcCopySilentKey = GUICtrlCreateMenuItem("Silent Uninstall String", $rcCopy)
		$rcJump = GUICtrlCreateMenu("Jump to", $rcMenu)
		$rcJumpLoc = GUICtrlCreateMenuItem("Install Location", $rcJump)
		$rcJumpSrc = GUICtrlCreateMenuItem("Install Source", $rcJump)
		$rcJumpKey = GUICtrlCreateMenuItem("Uninstall Key", $rcJump)
		$rcUninstall = GUICtrlCreateMenuItem("Uninstall", $rcMenu)
		$rcSilentUninstall = GUICtrlCreateMenuItem("Silent Uninstall", $rcMenu)
		Global $rcModify = GUICtrlCreateMenuItem("Modify", $rcMenu)
		Global $rcCancel = 0
		Global $first_open = 0
	EndIf
EndFunc   ;==>ToggleRcMenus
Func ToggleControlAvailability($enable)
	If $enable Then
		GUICtrlSetState($iComp, $GUI_ENABLE)
		GUICtrlSetState($iSrch, $GUI_ENABLE)
		GUICtrlSetState($bConnect, $GUI_ENABLE)
		GUICtrlSetState($bFilter, $GUI_ENABLE)
		GUICtrlSetState($cHideMSUpdates, $GUI_ENABLE)
		GUICtrlSetState($csyscomponent, $GUI_ENABLE)
		GUICtrlSetState($rAll, $GUI_ENABLE)
		GUICtrlSetState($r32, $GUI_ENABLE)
		GUICtrlSetState($r64, $GUI_ENABLE)
		GUICtrlSetState($bExport, $GUI_ENABLE)
		GUICtrlSetState($bunistall, $GUI_ENABLE)
		GUICtrlSetState($bsilentunistall, $GUI_ENABLE)
		GUICtrlSetState($bmodify, $GUI_ENABLE)
		GUICtrlSetState($bsite, $GUI_ENABLE)
	Else
		GUICtrlSetState($iComp, $GUI_DISABLE)
		GUICtrlSetState($iSrch, $GUI_DISABLE)
		GUICtrlSetState($bConnect, $GUI_DISABLE)
		GUICtrlSetState($bFilter, $GUI_DISABLE)
		GUICtrlSetState($cHideMSUpdates, $GUI_DISABLE)
		GUICtrlSetState($csyscomponent, $GUI_DISABLE)
		GUICtrlSetState($rAll, $GUI_DISABLE)
		GUICtrlSetState($r32, $GUI_DISABLE)
		GUICtrlSetState($r64, $GUI_DISABLE)
		GUICtrlSetState($bExport, $GUI_DISABLE)
		GUICtrlSetState($bunistall, $GUI_DISABLE)
		GUICtrlSetState($bsilentunistall, $GUI_DISABLE)
		GUICtrlSetState($bmodify, $GUI_DISABLE)
		GUICtrlSetState($bsite, $GUI_DISABLE)
	EndIf
EndFunc   ;==>ToggleControlAvailability
Func ReadGUI($guiMsg)
	Switch $guiMsg
		Case $GUI_EVENT_RESIZED
			_GUICtrlStatusBar_Resize($StatusBar1)
		Case $GUI_EVENT_MAXIMIZE
			_GUICtrlStatusBar_Resize($StatusBar1)
		Case $GUI_EVENT_restore
			_GUICtrlStatusBar_Resize($StatusBar1)
		Case $GUI_EVENT_CLOSE, $File_Exit
			Exit
		Case $Save_button
			FileDelete("blacklistprocesses.txt")
			For $i = 0 To _GUICtrlListBox_GetCount($ListBox2) - 1
				FileWriteLine(@ScriptDir & "\blacklistprocesses.txt", _GUICtrlListBox_GetText($ListBox2, $i))
			Next
			FileDelete("blacklistwindows.txt")
			For $i = 0 To _GUICtrlListView_GetItemCount($ListView4)
				$string = _GUICtrlListView_GetItemTextString($ListView4, $i)
				If $string = "|" Then ContinueLoop
				FileWriteLine("blacklistwindows.txt", $string)
			Next
		Case $GUI_EVENT_PRIMARYDOWN
			$pos = GUIGetCursorInfo()
			If Not @error Then
				If $pos[4] = $ListView1 Then getsizes()
			EndIf
		Case $InstallerAddFolder
			$sofolder = FileSelectFolder($23, "")
			If Not @error Then
				_ITaskBar_SetProgressState($Form1_1, 1)
				adfol($sofolder, $TrreView, 1)
				If GUICtrlRead($subfolders) = 1 Then adfol($sofolder, $TrreView)
				getsizes()
				_ITaskBar_SetProgressState($Form1_1, 0)
			EndIf
		Case $Button2
			$time = TimerInit()
			$listcount = _GUICtrlListView_GetItemCount($ListView1) - 1
			If $s3 > 0 And $listcount > -1 Then
				Local $rnd[$listcount + 1]
				$s = 0
				$cancel = ""
				For $i = 0 To $listcount
					GUICtrlSetData($Button2, $24)
					$comb = _GUICtrlListView_GetItemText($ListView1, $i, 9)
					If _GUICtrlListView_GetItemChecked($ListView1, $i) = 1 Then
						If $comb = Not "" Then
							$string = StringSplit($comb, ",")
							For $ii = 1 To $string[0]
								ShellExecuteWait($string[$ii])
							Next
						EndIf
						$rnd[$i] = 1
						$ptch = _GUICtrlListView_GetItemText($ListView1, $i, 0)
						$type = _GUICtrlListView_GetItemText($ListView1, $i, 1)
						$switsh = _GUICtrlListView_GetItemText($ListView1, $i, 6)
						$send = _GUICtrlListView_GetItemText($ListView1, $i, 7)
						$s += $rnd[$i]
						$progpr = $s * 100 / $s3
						GUICtrlSetData($prog, $progpr)
						_ITaskBar_SetProgressValue($Form1_1, $progpr)
						_GUICtrlStatusBar_SetText($StatusBar1, $25 & " [" & $s & "/" & $s3 & "] " & Round($progpr) & "% " & $ptch)
						$ufo = ""
						$sendmode = ""
						If $send = "" Then
							If $switsh = "" Then
								If StringInStr($type, "Inno") Then
									$od = ""
									If GUICtrlRead($af) = 1 Then $od = " /DIR=" & """" & GUICtrlRead($inp) & """" & "\" & StringReplace(StringReplace(_GUICtrlListView_GetItemText($ListView1, $i, 3), "  ", ""), "  ", " ")
									$pid = Run($ptch & type($i) & $od)
									$od = ""
									$ufo = 1
								EndIf
								If StringInStr($type, "Wise") Or StringInStr($type, "Nullsoft") Then
									$od = ""
									If StringInStr($type, "Nullsoft") And GUICtrlRead($af) = 1 Then $od = " /D=" & GUICtrlRead($inp) & StringReplace(StringReplace(_GUICtrlListView_GetItemText($ListView1, $i, 3), "  ", ""), "  ", " ")
									$pid = Run($ptch & " /S" & $od)
									$ufo = 1
								EndIf
								If StringInStr($type, "Smart Installer") Or StringInStr($type, "Ghost Installer Wizard") Or StringInStr($type, "Setup Factory") Or StringInStr($type, "InstallAware Wizard") Or StringInStr($type, "InstallShield") Or StringInStr($type, "FEAD Optimizer") Or StringInStr($type, "OpenAL Installer") Or StringInStr($type, "Driver Genius Driver Installer") Or StringInStr($type, "VMware Software Installer") Or StringInStr($type, "Kaspersky Installer") Or StringInStr($type, "RDS SFX") Or StringInStr($type, "Java Installer") Or StringInStr($type, "360 Total Security Installer") Or StringInStr($type, "SetupBuilder 8.0") Or StringInStr($type, "WPS Office Installer") Or StringInStr($type, "DriveTheLife Installer") Or StringInStr($type, "KZ SFX") Then
									$od = ""
									If GUICtrlRead($af) = 1 Then
										$od = " /p=" & GUICtrlRead($inp)
										If Not FileExists(GUICtrlRead($inp)) Then DirCreate(GUICtrlRead($inp))
									EndIf
									If Not StringInStr($type, "Java") Then
										$pid = Run($ptch & " /S " & $od)
									Else
										$pid = Run($ptch & " /s")
									EndIf
									;If WinExists("", "OK") Then Send("{enter}")
									$od = ""
									$ufo = 1
								EndIf
								If StringInStr($type, "RAR SFX") Or StringInStr($type, "ZIP SFX") Then
									$od = @ProgramFilesDir
									If GUICtrlRead($af) = 1 Then $od = GUICtrlRead($inp)
									$pid = Run($ptch & " /s /d" & """" & $od & "\" & StringReplace(StringReplace(_GUICtrlListView_GetItemText($ListView1, $i, 3), "  ", ""), "  ", " ") & """")
									$od = ""
									$ufo = 1
								EndIf
								If StringInStr($type, "Nothing found [CAB SFX] *") Then
									$pid = Run($ptch & " /passive")
									$ufo = 1
								EndIf
								If StringInStr($type, "Microsoft CAB SFX") Or StringInStr($type, "Microsoft Visual C++ 6.0 SPx") Or StringInStr($type, "Sony Windows Installer Preloader") Or StringInStr($type, "InstallMate Setup") Or StringInStr($type, "DNI") Then
									$pid = Run($ptch & " /q")
									$ufo = 1
								EndIf
								If StringInStr($type, "MSI") Then
									$pid = Run("msiexec.exe " & " /i " & """" & $ptch & """" & " /passive")
									$ufo = 1
								EndIf
								If StringInStr($type, "MSU") Then
									$pid = Run("wusa.exe " & """" & $ptch & """" & " /quiet /norestart")
									$ufo = 1
								EndIf
								If StringInStr($type, "INF") Then
									$pid = Run("rundll32.exe setupapi,InstallHinfSection DefaultInstall 132 " & $ptch)
									$ufo = 1
								EndIf
								If StringInStr($type, "7z SFX") Then
									$ufo = 1
									If GUICtrlRead($af) = 1 Then
										$pid = Run($ptch)
										WinWait("7-Zip self-extracting", "")
										Send(GUICtrlRead($inp))
										Send("{enter}")
									Else
										$pid = Run($ptch & " -y")
									EndIf
								EndIf
								If StringInStr($type, "7z Setup SFX") Then
									$ufo = 1
									$pid = Run($ptch & " -y")
								EndIf
								If StringInStr($type, "Adobe Self Extractor") Then
									$pid = Run($ptch & " /sall")
									$ufo = 1
								EndIf
								If StringInStr($type, "Free Arc SFX") Then
									$od = @ProgramFilesDir
									If GUICtrlRead($af) = 1 Then $od = GUICtrlRead($inp)
									$pid = Run("""" & $ptch & """" & " -s -d" & """" & $od & """" & "\" & StringReplace(StringReplace(_GUICtrlListView_GetItemText($ListView1, $i, 3), "  ", ""), "  ", " "))
									$ufo = 1
								EndIf
								If StringInStr($type, "Install4j") Then
									$pid = Run($ptch & " -q")
									$ufo = 1
								EndIf
								If $type = "ZIP" Or $type = "RAR" Or $type = "7z" Then
									$od = _GUICtrlListView_GetItemText($ListView1, $i, 8)
									If GUICtrlRead($af) = 1 Then $od = GUICtrlRead($inp)
									$pid = Run("""" & @ScriptDir & "\7z.exe" & """" & " e " & """" & $ptch & """" & " -o" & """" & $od & "\" & Random(100, 9000, 1) & """")
									$ufo = 1
								EndIf
								If StringInStr($type, "SPTD installer") Or StringInStr($type, "Adobe Installer") Or StringInStr($type, "HitmanPro.Alert Installer") Then
									$pid = Run($ptch & " /install")
									$ufo = 1
								EndIf
								If StringInStr($type, "Systracer Installer") Then
									$pid = Run($ptch & " -install -quiet")
									$ufo = 1
								EndIf
								If StringInStr($type, "DirectX installer") Or StringInStr($type, "DeployMaster Setup") Or StringInStr($type, "Opera Installer") Or StringInStr($type, "Avast Installer") Or StringInStr($type, "SUPERAntiSpyware Professional Setup") Then
									$pid = Run($ptch & " /Silent")
									$ufo = 1
								EndIf
								If StringInStr($type, "IrfanView Installer") Or StringInStr($type, "K7 Installer") Then
									$pid = Run($ptch & " /silent")
									$ufo = 1
								EndIf
								If StringInStr($type, "AIMP Installer") Then
									$pid = Run($ptch & " /AUTO")
									$ufo = 1
								EndIf
								If StringInStr($type, "Mozilla Installer") Then
									$pid = Run($ptch & " -ms")
									$ufo = 1
								EndIf
								If StringInStr($type, "Advanced Installer") Then
									$pid = Run($ptch & " /i // /passive")
									$ufo = 1
								EndIf
								If StringInStr($type, "Actual installer") Then
									$od = ""
									If GUICtrlRead($af) = 1 Then $od = " /d " & GUICtrlRead($inp)
									$pid = Run($ptch & " /s" & $od)
									$ufo = 1
								EndIf
								If StringInStr($type, "Excelsior Installer") Then
									$od = ""
									If GUICtrlRead($af) = 1 Then $od = " /dest " & GUICtrlRead($inp)
									$pid = Run($ptch & " /batch " & $od)
									$ufo = 1
								EndIf
								If StringInStr($type, "SSE Setup") Then
									$od = ""
									If GUICtrlRead($af) = 1 Then $od = " /D=" & GUICtrlRead($inp)
									$pid = Run($ptch & " /passive " & $od)
									$ufo = 1
								EndIf
								If StringInStr($type, "Oracle VirtualBox Installer") Or StringInStr($type, "Spoon Installer") Then
									$pid = Run($ptch & " --silent")
									$ufo = 1
								EndIf
								If StringInStr($type, "Nokia Installer") Then
									$pid = Run($ptch & " /silent=" & """" & "1" & """")
									$ufo = 1
								EndIf
								If StringInStr($type, "CreateInstall Setup") Then
									$pid = Run($ptch & " -silent")
									$ufo = 1
								EndIf
								If StringInStr($type, "Installbuilder Installer") Then
									$od = ""
									If GUICtrlRead($af) = 1 Then $od = " --prefix " & GUICtrlRead($inp) & "\"
									$pid = Run($ptch & " --mode unattended --unattendedmodeui minimal" & $od)
									$ufo = 1
								EndIf
								If StringInStr($type, "Nero Self Extractor") Then
									$pid = Run($ptch & " /S /v/qn")
									$ufo = 1
								EndIf
								If StringInStr($type, "Skype Installer") Then
									$pid = Run($ptch & " /VERYSILENT /NOLAUNCH /NOSTARTUP /NOPLUGINS")
									$ufo = 1
								EndIf
								If StringInStr($type, "Vivaldi Installer") Then
									$pid = Run($ptch)
									WinWait("Install Vivaldi", "By clicking")
									ControlClick("Install Vivaldi", "By clicking", "Button5")
									$ufo = 1
								EndIf
								If StringInStr($type, "ConEmu Installer") Then
									$osArch = StringLower(@OSArch)
									$pid = Run($ptch & "/p:" & $osArch & ",adm /qr")
									$ufo = 1
								EndIf
								If StringInStr($type, "Unchecky Installer") Then
									$pid = Run($ptch & " -install")
									$ufo = 1
								EndIf
								If StringInStr($type, "Qt Installer") Then
									;if FileExists("c:\Qt") Then DirMove("c:\Qt", "c:\Qt.old"&Random(1,99,1))
									$pid = Run($ptch & " --script " & """" & @ScriptDir & "\scripts\qt-installer-noninteractive.qs" & """")
									$ufo = 1
								EndIf
								;----antivirus instalers-----
								If StringInStr($type, "AVG Antivirus Installer") Then
									$pid = Run($ptch & " /Silent=true /Langid=1049 /InstallToolbar=false /ChangeBrowserSearchProvider=false /InstallSidebar=false /ParticipateProductImprovement=false /DontRestart /DisableScan /KillProcessesIfNeeded /FEG")
									$ufo = 1
								EndIf
								If StringInStr($type, "Norton Installer") Then
									$pid = Run($ptch & " /qb")
									$ufo = 1
								EndIf
								If StringInStr($type, "MSI-based Installer") Then
									$pid = Run($ptch & " /qn")
									$ufo = 1
								EndIf
								If StringInStr($type, "Panda Security SelfExtractor") Then
									$pid = Run($ptch & '-s -sp"/quiet"')
									$ufo = 1
								EndIf

								;----antivirus instalers-----
								If $ufo = "" Then $pid = Run($ptch)
							Else
								If StringLeft($switsh, 1) = "/" Or StringLeft($switsh, 1) = "-" Then
									$pid = Run($ptch & " " & $switsh)
								Else
									$pid = Run($switsh)
								EndIf
							EndIf
						Else
							$ufo = 1
							$wincount = WinList()
							$pid = Run($ptch)
							$sendmode = 1
							Do
								$wincount2 = WinList()
								Sleep(500)
							Until $wincount2[0][0] > $wincount[0][0]
							$string = StringSplit($send, ",")
							For $ii = 1 To $string[0]
								Send($string[$ii])
							Next
						EndIf
						Do
							If $sendmode = 1 Then
								If WinExists("", "Го&тово") Or WinExists("", "&Готово") Or WinExists("", "Done") Or WinExists("", "&Finish") Or WinExists("", "E&xit") Or WinExists("", "&Завершить") Then Send("{enter}")
							EndIf
							$nMsg = GUIGetMsg()
							Timer()
							If GUICtrlRead($kill) = 1 Then killprcesses()
							If GUICtrlRead($KillWin) = 1 Then killwin()
							Sleep(70)
							If $nMsg = $GUI_EVENT_CLOSE Or $nMsg = $File_Exit Then
								$cancelm = MsgBox(4, "", $58)
								If $cancelm = 6 Then Exit
							EndIf
							If $nMsg = $Button2 Then
								$cancelm = MsgBox(4, "", $36)
								If $cancelm = 6 Then
									ProcessClose($pid)
									$cancel = 1
									ExitLoop 2
								EndIf
							EndIf
						Until Not ProcessExists($pid)
						If $cancel = "" Then
							$short = _GUICtrlListView_GetItemText($ListView1, $i, 11)
							$coma = _GUICtrlListView_GetItemText($ListView1, $i, 10)
							If $coma = Not "" Then
								$string = StringSplit($coma, ",")
								For $i3 = 1 To $string[0]
									ShellExecuteWait($string[$i3])
								Next
							EndIf
							If $short = Not "" Then
								$string = StringSplit($short, ",")
								For $i3 = 1 To $string[0]
									$link = StringReplace($string[$i3], "%extpth%", _GUICtrlListView_GetItemText($ListView1, $i, 8))
									FileCreateShortcut($link, @ProgramsCommonDir & "\" & getfileinstring($link) & ".lnk")
								Next
							EndIf
						EndIf
					EndIf
				Next
				If GUICtrlRead($checkbox_del_bl_autoruns) = 1 Then del_bl()
				GUICtrlSetData($prog, 0)
				_ITaskBar_SetProgressValue($Form1_1, 0)
				If TimerDiff($time) > 10000 And $cancel = "" Then
					Switch _GUICtrlComboBox_GetCurSel($pm)
						Case 0
							MsgBox(64, "", $42)
						Case 2
							Shutdown(64)
						Case 3
							Shutdown(32)
						Case 4
							Shutdown(1)
						Case 5
							Shutdown(2)
						Case 6
							Exit
					EndSwitch
				EndIf
				getsizes()
				GUICtrlSetData($Button2, $8)
			EndIf
		Case $Edit_SelectAll
			_GUICtrlListView_SetItemChecked($ListView1, -1, 1)
			getsizes()
		Case $Edit_DeselectAll
			_GUICtrlListView_SetItemChecked($ListView1, -1, 0)
			getsizes()
		Case $Edit_ClearList
			_GUICtrlListView_DeleteAllItems($ListView1)
			_GUICtrlStatusBar_SetText($StatusBar1, "")
		Case $Edit_DeleteSelected
			_GUICtrlListView_DeleteItemsSelected($ListView1)
			getsizes()
		Case $InstallerAddFile
			$file_to_add = FileOpenDialog("", "", "(*.exe;*.msi;*.msu;*.zip;*.rar;*.7z;*.inf)", 4)
			If Not @error Then
				$files_array = StringSplit($file_to_add, "|")
				If $files_array[0] = 1 Then
					aditem($files_array[1])
				Else
					For $i = 2 To $files_array[0]
						aditem($files_array[1] & "\" & $files_array[$i])
					Next
				EndIf
				getsizes()
			EndIf
		Case $ListView1
			_GUICtrlListView_SimpleSort($ListView1, $B_DESCENDING, GUICtrlGetState($ListView1))
		Case $run
			rn()
		Case $del
			del()
			getsizes()
		Case $exp
			$pipe = Int(_GUICtrlListView_GetSelectedIndices($ListView1))
			If $pipe > -1 Then Run("explorer /select," & _GUICtrlListView_GetItemText($ListView1, Int(_GUICtrlListView_GetSelectedIndices($ListView1), 1), 0))
		Case $copy
			$txt = _GUICtrlListView_GetItemText($ListView1, Int(_GUICtrlListView_GetSelectedIndices($ListView1)), 0)
			If $txt = Not "" Then ClipPut($txt)
		Case $copyp
			$pipe = Int(_GUICtrlListView_GetSelectedIndices($ListView1))
			$ptch = _GUICtrlListView_GetItemText($ListView1, $pipe, 0)
			$type = _GUICtrlListView_GetItemText($ListView1, $pipe, 1)
			$od = _GUICtrlListView_GetItemText($ListView1, $pipe, 8)
			If GUICtrlRead($af) = 1 Then $od = GUICtrlRead($inp)
			If $type = Not "" Then
				If $type = "ZIP" Or $type = "RAR" Or $type = "7z" Then
					ClipPut("""" & @ScriptDir & "\7z.exe" & """" & " e " & """" & $ptch & """" & " -o" & """" & $od & "\" & Random(100, 9000, 1) & """")
				Else
					ClipPut($ptch & type($pipe))
				EndIf
			EndIf
		Case $copyus
			If _GUICtrlListView_GetItemText($ListView1, Int(_GUICtrlListView_GetSelectedIndices($ListView1)), 6) = Not "" Then ClipPut(_GUICtrlListView_GetItemText($ListView1, Int(_GUICtrlListView_GetSelectedIndices($ListView1)), 6))
		Case $File_Save
			$count = _GUICtrlListView_GetItemCount($ListView1)
			If $count > 0 Then
				$list = FileSaveDialog("", @ScriptDir, "(*.txt)", 16, "programs.txt")
				FileDelete($list)
				For $i1 = 1 To $count
					$a_Item = _GUICtrlListView_GetItemTextArray($ListView1, $i1 - 1)
					FileWriteLine($list, $a_Item[1] & "|" & $a_Item[2] & "|" & $a_Item[3] & "|" & $a_Item[4] & "|" & $a_Item[5] & "|" & $a_Item[6] & "|" & $a_Item[7] & "|" & $a_Item[8] & "|" & $a_Item[9] & "|" & $a_Item[10] & "|" & $a_Item[11] & "|" & $a_Item[12])
				Next
			EndIf
		Case $File_Open
			mklist(FileOpenDialog("", "", " (*.txt)|(*.*)"))
		Case $Refresh_button
			Refresh()
		Case $killprocess
			ProcessClose(_GUICtrlListBox_GetText($ListBox1, _GUICtrlListBox_GetCurSel($ListBox1)))
			If Not @error Then Refresh()
		Case $killwindow
			$pipe = Int(_GUICtrlListView_GetSelectedIndices($ListView3))
			WinClose(_GUICtrlListView_GetItemText($ListView3, $pipe, 0), _GUICtrlListView_GetItemText($ListView3, $pipe, 1))
			If Not @error Then Refresh()
		Case $Help_About
			GUICreate("", 340, 150, 302, 218)
			GUISetIcon("2.ico")
			GUICtrlCreateLabel("Silent Install Helper 3.1.0.0", 40, 0, 310, 20)
			GUICtrlSetFont(-1, 15, 400, 2)
			$Button12 = GUICtrlCreateButton($27, 20, 100, 120, 20)
			;$Button13=GUICtrlCreateButton("Paypal donate",160,140,120,20)
			$mail = GUICtrlCreateButton("rbilsheskuy@gmail.com", 140, 100, 150, 20)
			GUICtrlCreateLabel($28 & ". 2013-2017. GPL v3" & @CRLF & "Special thanks to David Alvarez for the great help." & @CRLF & "SIH uses:PeID,7-zip", 20, 30, 360, 60)
			;GUICtrlCreateEdit($089& @CRLF & "WebMoney WMID: 260610480647" & @CRLF & "Purses numbers:"&@CRLF&"(WMZ): Z393402069048"&@CRLF&"(WME): E598492383514"&@CRLF&"(WMU): U237453912339"&@CRLF&"(WMR): R199470527033", 0, 120, 370, 200,0x0800)
			GUISetState(@SW_SHOW)
			While 1
				$nMsg = GUIGetMsg()
				Switch $nMsg
					Case $GUI_EVENT_CLOSE, $File_Exit
						GUIDelete()
						ExitLoop
					Case $mail
						ShellExecute("mailto:rbilsheskuy@gmail.com")
					Case $Button12
						ShellExecute("http://sourceforge.net/projects/sih")
				EndSwitch
			WEnd
		Case $af
			If GUICtrlRead($af) = 1 Then
				GUICtrlSetState($inp, $GUI_enable)
				GUICtrlSetState($brs, $GUI_enable)
				GUICtrlSetState($open, $GUI_enable)
			Else
				dc()
			EndIf
		Case $brs
			$bri = FileSelectFolder("", "", 1)
			If $bri = Not "" Then GUICtrlSetData($inp, $bri)
		Case $itaw
			$pipe = Int(_GUICtrlListView_GetSelectedIndices($ListView1), 1)
			$ins = _GUICtrlListView_GetItemText($ListView1, $pipe, 0)
			If $pipe > -1 And StringRight($ins, 3) = "exe" Then
				$a = MsgBox(4, "", $57 & " " & $47 & "?")
				If $a = 6 Then
					FileWriteLine(@ScriptDir & "\adware.txt", getfileinstring($ins))
					_GUICtrlListView_SetItemText($ListView1, $pipe, $56, 5)
					_ArrayInsert($adware, $adware[0], getfileinstring($ins))
				ElseIf $a = 7 Then
					_GUICtrlListView_SetItemText($ListView1, $pipe, "", 5)
					For $i = 1 To $adware[0]
						If FileReadLine(@ScriptDir & "\adware.txt", $i) = getfileinstring($ins) Then
							_ArrayDelete($adware, $i)
							_FileWriteFromArray(@ScriptDir & "\adware.txt", $adware, 1)
							ExitLoop
						EndIf
					Next
				EndIf
			EndIf
		Case $system_context_menu
			$pipe = Int(_GUICtrlListView_GetSelectedIndices($ListView1))
			$ins = _GUICtrlListView_GetItemText($ListView1, $pipe, 0)
			If $pipe > -1 Then
			ShellContextMenu( $Form1_1, $hLV_install, $tLVpoint,$ins )
			EndIf

		Case $setswitch
			$pipe = Int(_GUICtrlListView_GetSelectedIndices($ListView1))
			$ins = _GUICtrlListView_GetItemText($ListView1, $pipe, 6)
			If $pipe > -1 Then
				$input = InputBox($17, $18, $ins)
				If Not @error Then _GUICtrlListView_SetItemText($ListView1, $pipe, $input, 6)
			EndIf
		Case $setsend
			$pipe = Int(_GUICtrlListView_GetSelectedIndices($ListView1))
			$ins = _GUICtrlListView_GetItemText($ListView1, $pipe, 7)
			If $pipe > -1 Then
				$input = InputBox($63, $64, $ins, "", 300, 300)
				If Not @error Then _GUICtrlListView_SetItemText($ListView1, $pipe, $input, 7)
			EndIf
		Case $exd
			$pipe = Int(_GUICtrlListView_GetSelectedIndices($ListView1))
			$ins = _GUICtrlListView_GetItemText($ListView1, $pipe, 1)
			If $pipe > -1 Then
				If $ins = "ZIP" Or $ins = "RAR" Or $ins = "7z" Then _GUICtrlListView_SetItemText($ListView1, $pipe, @DesktopDir, 8)
			EndIf
		Case $exhd
			$pipe = Int(_GUICtrlListView_GetSelectedIndices($ListView1))
			$ins = _GUICtrlListView_GetItemText($ListView1, $pipe, 1)
			If $pipe > -1 Then
				If $ins = "ZIP" Or $ins = "RAR" Or $ins = "7z" Then _GUICtrlListView_SetItemText($ListView1, $pipe, @HomeDrive, 8)
			EndIf
		Case $up
			$pipe = Int(_GUICtrlListView_GetSelectedIndices($ListView1))
			$ins = _GUICtrlListView_GetItemText($ListView1, $pipe, 1)
			If $pipe > -1 Then
				If $ins = "ZIP" Or $ins = "RAR" Or $ins = "7z" Then _GUICtrlListView_SetItemText($ListView1, $pipe, @UserProfileDir, 8)
			EndIf
		Case $expf
			$pipe = Int(_GUICtrlListView_GetSelectedIndices($ListView1))
			$ins = _GUICtrlListView_GetItemText($ListView1, $pipe, 1)
			If $pipe > -1 Then
				If $ins = "ZIP" Or $ins = "RAR" Or $ins = "7z" Then _GUICtrlListView_SetItemText($ListView1, $pipe, @ProgramFilesDir, 8)
			EndIf
		Case $exs
			$pipe = Int(_GUICtrlListView_GetSelectedIndices($ListView1))
			$ins = _GUICtrlListView_GetItemText($ListView1, $pipe, 1)
			If $pipe > -1 Then
				If $ins = "ZIP" Or $ins = "RAR" Or $ins = "7z" Then _GUICtrlListView_SetItemText($ListView1, $pipe, FileSelectFolder("", "", 1), 8)
			EndIf
		Case $extemp
			$pipe = Int(_GUICtrlListView_GetSelectedIndices($ListView1))
			$ins = _GUICtrlListView_GetItemText($ListView1, $pipe, 1)
			If $pipe > -1 Then
				If $ins = "ZIP" Or $ins = "RAR" Or $ins = "7z" Then _GUICtrlListView_SetItemText($ListView1, $pipe, @TempDir, 8)
			EndIf
		Case $cmd
			$listcount = _GUICtrlListView_GetItemCount($ListView1) - 1
			If $listcount > -1 Then
				$cmdfile = FileSaveDialog("", "", "(*.cmd)", 16, "setup.cmd")
				If Not @error Then
					FileDelete($cmdfile)
					FileWriteLine($cmdfile, "pause")
					For $i = 0 To $listcount
						If _GUICtrlListView_GetItemChecked($ListView1, $i) = True Then
							$ptch = _GUICtrlListView_GetItemText($ListView1, $i, 0)
							$type = _GUICtrlListView_GetItemText($ListView1, $i, 1)
							$switsh = _GUICtrlListView_GetItemText($ListView1, $i, 6)
							$ufo = ""
							If $switsh = "" Then
								$appname_cmd = StringReplace(_GUICtrlListView_GetItemText($ListView1, $i, 3), "  ", "")
								If StringInStr($type, "Smart Installer") Then
									$od = ""
									If GUICtrlRead($af) = 1 Then $od = "/p=" & GUICtrlRead($inp) & "\" & $appname_cmd
									FileWriteLine($cmdfile, "mkdir " & GUICtrlRead($inp) & "\" & $appname_cmd)
									FileWriteLine($cmdfile, $ptch & type($i) & " " & $od)
									$ufo = 1
								EndIf
								If StringInStr($type, "Inno") Then
									$od = ""
									If GUICtrlRead($af) = 1 Then $od = " /DIR=" & """" & GUICtrlRead($inp) & "\" & $appname_cmd & """" & "\"
									FileWriteLine($cmdfile, $ptch & type($i) & $od)
									$ufo = 1
								EndIf
								If StringInStr($type, "Wise") Or StringInStr($type, "Nullsoft") Then
									$od = ""
									If StringInStr($type, "Nullsoft") And GUICtrlRead($af) = 1 Then $od = " /D=" & GUICtrlRead($inp) & "\" & $appname_cmd
									FileWriteLine($cmdfile, $ptch & " /S" & $od)
									$ufo = 1
								EndIf
								If StringInStr($type, "RAR SFX") Or StringInStr($type, "ZIP SFX") Then
									$od = @ProgramFilesDir & "\" & $appname_cmd
									If GUICtrlRead($af) = 1 Then $od = GUICtrlRead($inp) & "\" & $appname_cmd
									FileWriteLine($cmdfile, $ptch & " /s /d" & """" & $od & "\" & """")
									$ufo = 1
								EndIf
								If StringInStr($type, "Microsoft CAB SFX") Or StringInStr($type, "Microsoft Visual C++ 6.0 SPx") Or StringInStr($type, "Sony Windows Installer Preloader") Or StringInStr($type, "InstallMate Setup") Or StringInStr($type, "DNI") Then
									FileWriteLine($cmdfile, $ptch & " /q")
									$ufo = 1
								EndIf
								If StringInStr($type, "MSI") Then
									FileWriteLine($cmdfile, "msiexec.exe " & " /i " & """" & $ptch & """" & " /passive")
									$ufo = 1
								EndIf
								If StringInStr($type, "MSU") Then
									FileWriteLine($cmdfile, "wusa.exe " & """" & $ptch & """" & " /quiet /norestart")
									$ufo = 1
								EndIf
								If StringInStr($type, "7z SFX") Or StringInStr($type, "7z Setup SFX") Then
									FileWriteLine($cmdfile, $ptch & " -y")
									$ufo = 1
								EndIf
								If StringInStr($type, "Ghost Installer Wizard") Or StringInStr($type, "Setup Factory") Or StringInStr($type, "InstallAware Wizard") Or StringInStr($type, "InstallShield") Or StringInStr($type, "FEAD Optimizer") Or StringInStr($type, "OpenAL Installer") Or StringInStr($type, "VMware Software Installer") Or StringInStr($type, "Kaspersky Installer") Or StringInStr($type, "RDS SFX") Or StringInStr($type, "Java Installer") Or StringInStr($type, "360 Total Security Installer") Or StringInStr($type, "SetupBuilder 8.0") Or StringInStr($type, "WPS Office Installer") Or StringInStr($type, "DriveTheLife Installer") Or StringInStr($type, "KZ SFX") Then
									If Not StringInStr($type, "Java") Then
										FileWriteLine($cmdfile, $ptch & " /s")
									Else
										FileWriteLine($cmdfile, $ptch & " /S")
									EndIf
									$ufo = 1
								EndIf
								If StringInStr($type, "Adobe Self Extractor") Then
									FileWriteLine($cmdfile, $ptch & " /sall")
									$ufo = 1
								EndIf
								If StringInStr($type, "Free Arc SFX") Then
									$od = @ProgramFilesDir
									If GUICtrlRead($af) = 1 Then $od = GUICtrlRead($inp)
									FileWriteLine($cmdfile, """" & $ptch & """" & " -s -d" & """" & $od & "\" & $appname_cmd & """")
									$ufo = 1
								EndIf
								If StringInStr($type, "Install4j") Then
									FileWriteLine($cmdfile, $ptch & " -q")
									$ufo = 1
								EndIf
								If StringInStr($type, "INF") Then
									FileWriteLine($cmdfile, "rundll32.exe setupapi,InstallHinfSection DefaultInstall 132 " & $ptch)
									$ufo = 1
								EndIf
								If StringInStr($type, "Systracer Installer") Then
									FileWriteLine($cmdfile, $ptch & " -install -quiet")
									$ufo = 1
								EndIf
								If StringInStr($type, "DirectX installer") Or StringInStr($type, "DeployMaster Setup") Or StringInStr($type, "Opera Installer") Or StringInStr($type, "Avast Installer") Or StringInStr($type, "SUPERAntiSpyware Professional Setup") Then
									FileWriteLine($cmdfile, $ptch & " /Silent")
									$ufo = 1
								EndIf
								If StringInStr($type, "IrfanView Installer") Or StringInStr($type, "K7 Installer") Then
									FileWriteLine($cmdfile, $ptch & " /silent")
									$ufo = 1
								EndIf
								If StringInStr($type, "AIMP Installer") Then
									FileWriteLine($cmdfile, $ptch & " /AUTO")
									$ufo = 1
								EndIf
								If StringInStr($type, "Mozilla Installer") Then
									FileWriteLine($cmdfile, $ptch & " -ms")
									$ufo = 1
								EndIf
								If StringInStr($type, "Actual installer") Then
									$od = ""
									If GUICtrlRead($af) = 1 Then $od = " /d " & GUICtrlRead($inp) & "\" & $appname_cmd
									FileWriteLine($cmdfile, $ptch & " /s" & $od)
									$ufo = 1
								EndIf
								If StringInStr($type, "Advanced Installer") Then
									FileWriteLine($cmdfile, $ptch & " /i // /passive")
									$ufo = 1
								EndIf
								If StringInStr($type, "Excelsior Installer") Then
									$od = ""
									If GUICtrlRead($af) = 1 Then $od = " /dest " & GUICtrlRead($inp) & "\" & $appname_cmd
									FileWriteLine($cmdfile, $ptch & " /batch " & $od)
									$ufo = 1
								EndIf
								If StringInStr($type, "SSE Setup") Then
									$od = ""
									If GUICtrlRead($af) = 1 Then $od = " /D=" & GUICtrlRead($inp) & "\" & $appname_cmd
									FileWriteLine($cmdfile, $ptch & " /passive " & $od)
									$ufo = 1
								EndIf
								If StringInStr($type, "Nokia Installer") Then
									FileWriteLine($cmdfile, $ptch & " /silent=" & """" & "1" & """")
									$ufo = 1
								EndIf
								If StringInStr($type, "Unchecky Installer") Then
									FileWriteLine($cmdfile, $ptch & " -install")
									$ufo = 1
								EndIf
								If StringInStr($type, "ConEmu Installer") Then
									$osArch = StringLower(@OSArch)
									FileWriteLine($cmdfile, $ptch & "/p:" & $osArch & ",adm /qr")
									$ufo = 1
								EndIf
								If StringInStr($type, "Qt Installer") Then
									FileWriteLine($cmdfile, $ptch & " --script " & """" & @ScriptDir & "\scripts\qt-installer-noninteractive.qs" & """")
									$ufo = 1
								EndIf
								If StringInStr($type, "AVG Antivirus Installer") Then
									FileWriteLine($cmdfile, $ptch & " /Silent=true /Langid=1049 /InstallToolbar=false /ChangeBrowserSearchProvider=false /InstallSidebar=false /ParticipateProductImprovement=false /DontRestart /DisableScan /KillProcessesIfNeeded /FEG")
									$ufo = 1
								EndIf
								If $type = "ZIP" Or $type = "RAR" Or $type = "7z" Then
									$od = _GUICtrlListView_GetItemText($ListView1, $i, 8)
									If GUICtrlRead($af) = 1 Then $od = GUICtrlRead($inp)
									FileWriteLine($cmdfile, """" & @ScriptDir & "\7z.exe" & """" & " e " & $ptch & " -o" & $od)
									$ufo = 1
								EndIf
								If StringInStr($type, "Oracle VirtualBox Installer") Or StringInStr($type, "Spoon Installer") Then
									FileWriteLine($cmdfile, $ptch & " --silent")
									$ufo = 1
								EndIf
								If StringInStr($type, "CreateInstall Setup") Then
									FileWriteLine($cmdfile, $ptch & " -silent")
									$ufo = 1
								EndIf
								If StringInStr($type, "Installbuilder Installer") Then
									$od = ""
									If GUICtrlRead($af) = 1 Then $od = " --prefix " & GUICtrlRead($inp) & "\" & $appname_cmd
									FileWriteLine($cmdfile, $ptch & " --mode unattended --unattendedmodeui minimal" & $od)
									$ufo = 1
								EndIf
								If StringInStr($type, "Nero Self Extractor") Then
									FileWriteLine($cmdfile, $ptch & " /S /v/qn")
									$ufo = 1
								EndIf
								If StringInStr($type, "Skype Installer") Then
									FileWriteLine($cmdfile, $ptch & " /VERYSILENT /NOLAUNCH /NOSTARTUP /NOPLUGINS")
									$ufo = 1
								EndIf
								If StringInStr($type, "Norton Installer") Then
									FileWriteLine($cmdfile, $ptch & " /qb")
									$ufo = 1
								EndIf
								If StringInStr($type, "MSI-based Installer") Then
									FileWriteLine($cmdfile, $ptch & " /qn")
									$ufo = 1
								EndIf
								If StringInStr($type, "Panda Security SelfExtractor") Then
									FileWriteLine($cmdfile, $ptch & '-s -sp"/quiet"')
									$ufo = 1
								EndIf

								If $ufo = "" Then FileWriteLine($cmdfile, $ptch)
							Else
								If StringLeft($switsh, 1) = "/" Or StringLeft($switsh, 1) = "-" Then
									FileWriteLine($cmdfile, $ptch & " " & $switsh)
								Else
									FileWriteLine($cmdfile, $switsh)
								EndIf
							EndIf
						EndIf
					Next
					FileWriteLine($cmdfile, "pause")
					$ans = MsgBox(36, "", $44, 10)
					If $ans = 6 Then Run("notepad.exe " & $cmdfile)
				EndIf
			EndIf
		Case $prop
			_FileDisplayProperties(_GUICtrlListView_GetItemText($ListView1, Int(_GUICtrlListView_GetSelectedIndices($ListView1), 1), 0))
			;Case $prop2
			;_FileDisplayProperties(_GUICtrlListView_GetItemText($ListView5, Int(_GUICtrlListView_GetSelectedIndices($ListView5),1), 0))
		Case $open
			Run("explorer.exe " & GUICtrlRead($inp))
		Case $disks
			GUICreate("", 350, 200)
			GUISetIcon("2.ico")
			$ListView2 = GUICtrlCreateListView($35, 0, 0, 350, 200) ; Drive Space ListView Dialog
			$drives = DriveGetDrive("all")
			GUISetState(@SW_SHOW)
			For $i = 1 To $drives[0]
				$DriveLetter = $drives[$i]
				$FileSystem = DriveGetFileSystem($drives[$i])
				If $FileSystem = "" Then $FileSystem = "no disk"
				$DriveTotalMB = Round(DriveSpaceTotal($drives[$i]))
				If $DriveTotalMB = "0" Then $DriveTotalMB = "-"
				$DriveFreeMB = Round(DriveSpaceFree($drives[$i]))
				If $DriveFreeMB = "0" Then $DriveFreeMB = "-"
				$DrivePercentFree = Round(DriveSpaceFree($drives[$i]) * 100 / DriveSpaceTotal($drives[$i]))
				If $DrivePercentFree < 0 Then $DrivePercentFree = "-"
				GUICtrlCreateListViewItem($DriveLetter & "|" & $FileSystem & "|" & $DriveTotalMB & "|" & $DriveFreeMB & "|" & $DrivePercentFree, $ListView2)
				Switch DriveGetType($drives[$i])
					Case "Unknown"
						GUICtrlSetImage(-1, "shell32.dll", 54)
					Case "Removable"
						GUICtrlSetImage(-1, "shell32.dll", 27)
					Case "Fixed"
						GUICtrlSetImage(-1, "shell32.dll", 166)
					Case "Network"
						GUICtrlSetImage(-1, "shell32.dll", 16779)
					Case "CDROM"
						GUICtrlSetImage(-1, "shell32.dll", 165)
					Case "RAMDisk"
						GUICtrlSetImage(-1, "shell32.dll", 13)
				EndSwitch
			Next
			While 1
				$m = GUIGetMsg()
				Switch $m
					Case $GUI_EVENT_CLOSE, $File_Exit
						GUIDelete()
						ExitLoop
				EndSwitch
			WEnd
		Case $AddProcess
			Dim $sel
			$sel = _GUICtrlListBox_GetCurSel($ListBox1)
			$text = _GUICtrlListBox_GetText($ListBox1, $sel)
			If Not 0 Then _GUICtrlListBox_AddString($ListBox2, $text)
		Case $comamb
			$pipe = Int(_GUICtrlListView_GetSelectedIndices($ListView1))
			If $pipe > -1 Then
				$input = InputBox($69, $71, _GUICtrlListView_GetItemText($ListView1, $pipe, 9))
				If Not @error Then _GUICtrlListView_SetItemText($ListView1, $pipe, $input, 9)
			EndIf
		Case $comaft
			$pipe = Int(_GUICtrlListView_GetSelectedIndices($ListView1))
			If $pipe > -1 Then
				$input = InputBox($70, $71, _GUICtrlListView_GetItemText($ListView1, $pipe, 10))
				If Not @error Then _GUICtrlListView_SetItemText($ListView1, $pipe, $input, 10)
			EndIf
		Case $delitemprocess
			$sel = _GUICtrlListBox_GetCurSel($ListBox2)
			If ($sel == $LB_ERR) Then
			Else
				_GUICtrlListBox_DeleteString($ListBox2, $sel)
			EndIf
		Case $addinput
			_GUICtrlListBox_AddString($ListBox2, InputBox($49, $49))
		Case $WindowMoveRight
			$ListView3SelectedIndex = Int(_GUICtrlListView_GetSelectedIndices($ListView3))
			$WindowText = _GUICtrlListView_GetItemTextString($ListView3, -1)
			If $WindowText <> "|" Then
				GUICtrlCreateListViewItem($WindowText, $ListView4)
				_GUICtrlListView_DeleteItem($ListView3, $ListView3SelectedIndex)
				$WindowText = 0
			EndIf
		Case $WindowMoveLeft
			$ListView4SelectedIndex = Int(_GUICtrlListView_GetSelectedIndices($ListView4))
			$WindowText = _GUICtrlListView_GetItemTextString($ListView4, -1)
			GUICtrlCreateListViewItem($WindowText, $ListView3)
			_GUICtrlListView_DeleteItem($ListView4, $ListView4SelectedIndex)
			$WindowText = 0
		Case $WindowsUserAdd
			GUICtrlCreateListViewItem(InputBox($51, $51) & "|" & InputBox($52, $52), $ListView4)
		Case $WindowsUserEdit
			$pipe = _GUICtrlListView_GetSelectedIndices($ListView4)
			If $pipe > -1 Then
				$sel = Int(_GUICtrlListView_GetSelectedIndices($ListView4))
				$input = InputBox($51, $51, _GUICtrlListView_GetItemText($ListView4, $sel, 0))
				If Not @error Then _GUICtrlListView_SetItemText($ListView4, $sel, $input, 0)
				$input = InputBox($52, $52, _GUICtrlListView_GetItemText($ListView4, $sel, 1))
				If Not @error Then _GUICtrlListView_SetItemText($ListView4, $sel, $input, 1)
			EndIf
		Case $wpi
			$listcount = _GUICtrlListView_GetItemCount($ListView1) - 1
			If $listcount > -1 Then
				$cmdfile = FileSaveDialog("", "", "(*.js)", 16, "config.js")
				If Not @error Then
					FileDelete($cmdfile)
					FileWriteLine($cmdfile, "// WPI Config 8.0.0" & @CRLF & "CheckOnLoad='default';" & @CRLF & "Configurations=[];" & @CRLF & "ShowMultiDefault=true;" & @CRLF & "SortOrder=['Applications'];" & @CRLF & "ConfigSortBy=undefined;" & @CRLF & "ConfigSortAscDes='undefined';")
					For $i = 0 To $listcount
						If _GUICtrlListView_GetItemChecked($ListView1, $i) = True Then
							$ptch = _GUICtrlListView_GetItemText($ListView1, $i, 0)
							$type = _GUICtrlListView_GetItemText($ListView1, $i, 1)
							$switsh = _GUICtrlListView_GetItemText($ListView1, $i, 6)
							$appname_wpi = StringReplace(_GUICtrlListView_GetItemText($ListView1, $i, 3), "  ", "")
							If $appname_wpi = "" Then $appname_wpi = getfileinstring($ptch)
							$ufo = ""
							FileWriteLine($cmdfile, "prog[pn]=['" & $appname_wpi & "'];")
							FileWriteLine($cmdfile, "uid[pn]=['" & $i & "'];")
							FileWriteLine($cmdfile, "dflt[pn]=['yes'];" & @CRLF & "forc[pn]=['no'];" & @CRLF & "bit64[pn]=['no'];" & @CRLF & "cat[pn]=['Applications'];" & @CRLF & "pfro[pn]=['no'];")
							$ptch = StringReplace("cmds[pn]=['" & """" & $ptch & """", "\", "\\")
							If $switsh = "" Then
								If StringInStr($type, "Smart Installer") Then
									$od = ""
									If GUICtrlRead($af) = 1 Then
										$od = "/p=" & StringReplace(GUICtrlRead($inp), "\", "\\")
										FileWriteLine($cmdfile, "cmds[pn]=['{MAKEDIR} " & StringReplace(GUICtrlRead($inp), "\", "\\") & "'," & StringMid($ptch & type($i) & " " & $od & $appname_wpi & "'];", 11))
									Else
										FileWriteLine($cmdfile, $ptch & type($i) & " " & $od & "'];")
									EndIf
									$ufo = 1
								EndIf
								If StringInStr($type, "Inno") Then
									$od = ""
									If GUICtrlRead($af) = 1 Then $od = " /DIR=" & """" & StringReplace(StringReplace(GUICtrlRead($inp), "/", "//"), "\", "\\") & """" & "\\" & $appname_wpi
									FileWriteLine($cmdfile, $ptch & type($i) & $od & "'];")
									$ufo = 1
								EndIf
								If StringInStr($type, "Wise") Or StringInStr($type, "Nullsoft") Then
									$od = ""
									If StringInStr($type, "Nullsoft") And GUICtrlRead($af) = 1 Then $od = " /D=" & StringReplace(StringReplace(GUICtrlRead($inp), "/", "//"), "\", "\\") & $appname_wpi
									FileWriteLine($cmdfile, $ptch & " /S " & $od & "'];")
									$ufo = 1
								EndIf
								If StringInStr($type, "RAR SFX") Or StringInStr($type, "ZIP SFX") Then
									$od = @ProgramFilesDir & "\\" & $appname_wpi
									If GUICtrlRead($af) = 1 Then $od = StringReplace(StringReplace(GUICtrlRead($inp), "/", "//"), "\", "\\")
									FileWriteLine($cmdfile, $ptch & " /s /d" & """" & $od & "\\" & $appname_wpi & """" & "'];")
									$ufo = 1
								EndIf
								If StringInStr($type, "Microsoft CAB SFX") Or StringInStr($type, "Microsoft Visual C++ 6.0 SPx") Or StringInStr($type, "Sony Windows Installer Preloader") Or StringInStr($type, "InstallMate Setup") Or StringInStr($type, "DNI") Then
									FileWriteLine($cmdfile, $ptch & " /q'];")
									$ufo = 1
								EndIf
								If StringInStr($type, "Nothing found [CAB SFX] *") Then
									FileWriteLine($cmdfile, $ptch & " /passive'];")
									$ufo = 1
								EndIf
								If StringInStr($type, "MSI") Then
									FileWriteLine($cmdfile, "cmds[pn]=['msiexec.exe " & " /i " & StringMid($ptch, 12) & " /passive'];")
									$ufo = 1
								EndIf
								If StringInStr($type, "MSU") Then
									FileWriteLine($cmdfile, "cmds[pn]=['wusa.exe " & """" & StringMid($ptch, 12) & """" & " /quiet /norestart'];")
									$ufo = 1
								EndIf
								If StringInStr($type, "INF") Then
									FileWriteLine($cmdfile, "cmds[pn]=['rundll32.exe setupapi  " & """" & StringMid($ptch, 12) & """" & "'];")
									$ufo = 1
								EndIf
								If StringInStr($type, "7z SFX") Or StringInStr($type, "7z Setup SFX") Then
									FileWriteLine($cmdfile, $ptch & " -y'];")
									$ufo = 1
								EndIf
								If StringInStr($type, "Ghost Installer Wizard") Or StringInStr($type, "Setup Factory") Or StringInStr($type, "InstallAware Wizard") Or StringInStr($type, "InstallShield") Or StringInStr($type, "FEAD Optimizer") Or StringInStr($type, "OpenAL Installer") Or StringInStr($type, "VMware Software Installer") Or StringInStr($type, "Kaspersky Installer") Or StringInStr($type, "RSD SFX") Or StringInStr($type, "Java Installer") Or StringInStr($type, "360 Total Security Installer") Or StringInStr($type, "SetupBuilder 8.0") Or StringInStr($type, "WPS Office Installer") Or StringInStr($type, "DriveTheLife Installer") Or StringInStr($type, "KZ SFX") Then
									FileWriteLine($cmdfile, $ptch & " /s'];")
									$ufo = 1
								EndIf
								If StringInStr($type, "Adobe Self Extractor") Then
									FileWriteLine($cmdfile, $ptch & " /sall'];")
									$ufo = 1
								EndIf
								If StringInStr($type, "Unchecky Installer") Then
									FileWriteLine($cmdfile, $ptch & " -install'];")
									$ufo = 1
								EndIf
								If StringInStr($type, "ConEmu Installer") Then
									$osArch = StringLower(@OSArch)
									FileWriteLine($cmdfile, $ptch & " /p:" & $osArch & ",adm /qr'];")
									$ufo = 1
								EndIf
								If StringInStr($type, "Qt Installer") Then
									FileWriteLine($cmdfile, $ptch & " --script " & """" & @ScriptDir & "\scripts\qt-installer-noninteractive.qs" & """"& "'];")
									$ufo = 1
								EndIf
								If StringInStr($type, "AVG Antivirus Installer") Then
									FileWriteLine($cmdfile, $ptch & " /Silent=true /Langid=1049 /InstallToolbar=false /ChangeBrowserSearchProvider=false /InstallSidebar=false /ParticipateProductImprovement=false /DontRestart /DisableScan /KillProcessesIfNeeded /FEG'];")
									$ufo = 1
								EndIf
								If StringInStr($type, "Free Arc SFX") Then
									$od = @ProgramFilesDir & "\\" & $appname_wpi
									If GUICtrlRead($af) = 1 Then $od = StringReplace(StringReplace(GUICtrlRead($inp), "/", "//"), "\", "\\")
									FileWriteLine($cmdfile, """" & $ptch & """" & " -s -d" & """" & $od & "\\" & StringReplace(_GUICtrlListView_GetItemText($ListView1, $i, 3) & $appname_wpi, "  ", "") & """" & "'];")
									$ufo = 1
								EndIf
								If $type = "ZIP" Or $type = "RAR" Or $type = "7z" Then
									$od = ""
									If GUICtrlRead($af) = 1 Then $od = GUICtrlRead($inp)
									FileWriteLine($cmdfile, StringReplace("cmds[pn]=['" & """" & @ScriptDir & "\7z.exe" & """" & " e ", "\", "\\") & StringTrimLeft($ptch, 11) & " -o" & StringReplace($od, "\", "\\") & "'];")
									$ufo = 1
								EndIf
								If StringInStr($type, "SPTD installer") Or StringInStr($type, "Adobe Installer") Or StringInStr($type, "HitmanPro.Alert Installer") Then
									FileWriteLine($cmdfile, $ptch & " /install'];")
									$ufo = 1
								EndIf
								If StringInStr($type, "SysTracer Installer") Then
									FileWriteLine($cmdfile, $ptch & " -install -quiet'];")
									$ufo = 1
								EndIf
								If StringInStr($type, "DirectX installer") Or StringInStr($type, "DeployMaster Setup") Or StringInStr($type, "Opera Installer") Then
									FileWriteLine($cmdfile, $ptch & " /Silent'];")
									$ufo = 1
								EndIf
								If StringInStr($type, "IrfanView Installer") Or StringInStr($type, "K7 Installer") Then
									FileWriteLine($cmdfile, $ptch & " /silent'];")
									$ufo = 1
								EndIf
								If StringInStr($type, "AIMP Installer") Then
									FileWriteLine($cmdfile, $ptch & " /AUTO'];")
									$ufo = 1
								EndIf
								If StringInStr($type, "Mozilla Installer") Then
									FileWriteLine($cmdfile, $ptch & " -ms'];")
									$ufo = 1
								EndIf
								If StringInStr($type, "Actual installer") Then
									$od = ""
									If GUICtrlRead($af) = 1 Then $od = " /d " & GUICtrlRead($inp)
									FileWriteLine($cmdfile, $ptch & " /s" & $od & "'];")
									$ufo = 1
								EndIf
								If StringInStr($type, "Install4j") Then
									FileWriteLine($cmdfile, $ptch & " -q'];")
									$ufo = 1
								EndIf
								If StringInStr($type, "Advanced Installer") Then
									FileWriteLine($cmdfile, $ptch & " /i // /passive'];")
									$ufo = 1
								EndIf
								If StringInStr($type, "SSE Setup") Then
									$od = ""
									If GUICtrlRead($af) = 1 Then $od = " /D=" & GUICtrlRead($inp) & "\" & $appname
									FileWriteLine($cmdfile, $ptch & " --silent'];")
									$ufo = 1
								EndIf
								If StringInStr($type, "CreateInstall Setup") Then
									FileWriteLine($cmdfile, $ptch & " -silent'];")
									$ufo = 1
								EndIf
								If StringInStr($type, "Oracle VirtualBox Installer") Or StringInStr($type, "Spoon Installer") Then
									FileWriteLine($cmdfile, $ptch & " --silent'];")
									$ufo = 1
								EndIf
								If StringInStr($type, "Nokia Installer") Then
									FileWriteLine($cmdfile, $ptch & " /silent=" & """" & "1" & """" & "'];")
									$ufo = 1
								EndIf
								If StringInStr($type, "Installbuilder Installer") Then
									$od = ""
									If GUICtrlRead($af) = 1 Then $od = " --prefix " & GUICtrlRead($inp) & "\" & $appname_cmd
									FileWriteLine($cmdfile, $ptch & "mode unattended --unattendedmodeui minimal " & $od & "'];")
									$ufo = 1
								EndIf
								If StringInStr($type, "Nero Self Extractor") Then
									FileWriteLine($cmdfile, $ptch & " /S /v/qn'];")
									$ufo = 1
								EndIf
								If StringInStr($type, "Skype Installer") Then
									FileWriteLine($cmdfile, $ptch & " /VERYSILENT /NOLAUNCH /NOSTARTUP /NOPLUGINS'];")
									$ufo = 1
								EndIf
								If StringInStr($type, "Norton Installer") Then
									FileWriteLine($cmdfile, $ptch & " /qb'];")
									$ufo = 1
								EndIf
								If StringInStr($type, "MSI-based Installer") Then
									FileWriteLine($cmdfile, $ptch & " /qn'];")
									$ufo = 1
								EndIf
								If StringInStr($type, "Panda Security SelfExtractor") Then
									FileWriteLine($cmdfile, $ptch & '-s -sp"/quiet"' & "'];")
									$ufo = 1
								EndIf
								If $ufo = "" Then FileWriteLine($cmdfile, $ptch & "'];")
							Else
								If StringLeft($switsh, 1) = "/" Or StringLeft($switsh, 1) = "-" Then
									FileWriteLine($cmdfile, $ptch & " " & $switsh & "'];")
								Else
									FileWriteLine($cmdfile, "cmds[pn]=['" & StringReplace(StringReplace($switsh, "\", "\\"), "\", "\\") & "'];")
								EndIf
							EndIf
						EndIf
						FileWriteLine($cmdfile, "pn++;")
					Next
					$ans = MsgBox(36, "", $44, 10)
					If $ans = 6 Then Run("notepad.exe " & $cmdfile)
				EndIf
			EndIf
		Case $shorcrt
			$pipe = Int(_GUICtrlListView_GetSelectedIndices($ListView1))
			If $pipe > -1 Then
				$input = InputBox($72, $73, _GUICtrlListView_GetItemText($ListView1, $pipe, 11))
				If Not @error Then _GUICtrlListView_SetItemText($ListView1, $pipe, $input, 11)
			EndIf
		Case $refresh2
			_GUICtrlListView_DeleteAllItems($ListView5)
			getck()
		Case $delck
			$pipe = _GUICtrlListView_GetSelectedIndices($ListView5)
			If $pipe > -1 Then
				RegDelete($ck, _GUICtrlListView_GetItemText($ListView5, Int(_GUICtrlListView_GetSelectedIndices($ListView5), 1), 0))
				_GUICtrlListView_DeleteItem($ListView5, $pipe)
			EndIf
		Case $tab
			If GUICtrlRead($tab) = 1 Then
				If $first_open = 0 Then
					FillListView()
					$first_open = 1
				EndIf
			EndIf
			If GUICtrlRead($tab) = 2 Then
				Call_autoruns()
			EndIf
		Case $Button_select_file
			$file_select = FileOpenDialog("", "", "(*.*)")
			If Not @error Then
				GUICtrlSetData($input_file2autorun, $file_select)
				GUICtrlSetData($input_name, StringReplace(getfileinstring($file_select), "." & GetExt($file_select), ""))
			EndIf
		Case $Button_add_file2autorun
			If GUICtrlRead($input_file2autorun) & GUICtrlRead($input_name) <> "" Then
				RegWrite(GUICtrlRead($combo_selectkey), GUICtrlRead($input_name), "REG_SZ", GUICtrlRead($input_file2autorun))
				Call_autoruns()
			EndIf
		Case $context_autoruns_remove
			$pipe = Int(_GUICtrlListView_GetSelectedIndices($ListView_autorun), 1)
			If $pipe > -1 Then
				RegDelete(_GUICtrlListView_GetItemText($ListView_autorun, $pipe, 2), _GUICtrlListView_GetItemText($ListView_autorun, $pipe, 0))
				_GUICtrlListView_DeleteItem($ListView_autorun, $pipe)
			EndIf
		Case $context_autoruns_jump
			_JumpRegistry(_GUICtrlListView_GetItemText($ListView_autorun, Int(_GUICtrlListView_GetSelectedIndices($ListView_autorun), 1), 2))
		Case $context_autoruns_add2bl
			$pipe = Int(_GUICtrlListView_GetSelectedIndices($ListView_autorun), 1)
			If $pipe > -1 Then
				If _GUICtrlListView_GetItemTextString($ListView_autorun, $pipe) <> "||" Then
					GUICtrlCreateListViewItem(_GUICtrlListView_GetItemTextString($ListView_autorun, $pipe), $ListView_blacklist)
					GUICtrlSetImage(-1, _GUICtrlListView_GetItemText($ListView_autorun, $pipe, 1))
				EndIf
			EndIf
		Case $context_bl_remove
			$pipe = Int(_GUICtrlListView_GetSelectedIndices($ListView_blacklist), 1)
			If $pipe > -1 Then
				_GUICtrlListView_DeleteItem($ListView_blacklist, $pipe)
			EndIf
		Case $context_bl_jump
			_JumpRegistry(_GUICtrlListView_GetItemText($ListView_blacklist, Int(_GUICtrlListView_GetSelectedIndices($ListView_blacklist), 1), 2))
		Case $context_bl_add2ar
			$pipe = Int(_GUICtrlListView_GetSelectedIndices($ListView_blacklist), 1)
			If _GUICtrlListView_GetItemTextString($ListView_blacklist, $pipe) <> "||" Then
				GUICtrlCreateListViewItem(_GUICtrlListView_GetItemTextString($ListView_blacklist, $pipe), $ListView_autorun)
				GUICtrlSetImage(-1, _GUICtrlListView_GetItemText($ListView_blacklist, $pipe, 1))
				RegWrite(_GUICtrlListView_GetItemText($ListView_blacklist, $pipe, 2), _GUICtrlListView_GetItemText($ListView_blacklist, $pipe, 0), "REG_SZ", _GUICtrlListView_GetItemText($ListView_blacklist, $pipe, 1))
				_GUICtrlListView_DeleteItem($ListView_blacklist, $pipe)
			EndIf
		Case $Button_save_bl
			save_bl()
		Case $Button_delete_now
			del_bl()

		Case $viev_proceses
			$Form1_proceses = GUICreate("", 616, 421, 199, 126, BitOR($WS_MAXIMIZEBOX, $WS_MINIMIZEBOX, $WS_SIZEBOX))
			$ListView_process = GUICtrlCreateListView("Process|Command line|ProductName|", 0, -8, 617, 393, -1, BitOR($WS_EX_CLIENTEDGE, $LVS_EX_GRIDLINES))
			GUICtrlSendMsg(-1, $LVM_SETCOLUMNWIDTH, 0, 150)
			GUICtrlSendMsg(-1, $LVM_SETCOLUMNWIDTH, 1, 350)
			GUICtrlCreateContextMenu($ListView_process)
			$copcmd = GUICtrlCreateMenuItem($088, $ListView_process)
			GUISetState(@SW_SHOW)
			Get_Proces_list()
			AdlibRegister("refresh_proceses", 1000)
			While 1
				$nMsg = GUIGetMsg()
				Switch $nMsg
					Case $GUI_EVENT_CLOSE
						GUIDelete()
						ExitLoop
					Case $copcmd
						$s = _GUICtrlListView_GetSelectedIndices($ListView_process, True)
						If $s[0] > 0 Then
							ClipPut(_GUICtrlListView_GetItemText($ListView_process, $s[1], 1))
						EndIf
				EndSwitch
			WEnd
		Case $bConnect
			FillListView()
			$string = GUICtrlRead($iComp)
			If $string <> "" Then _GUICtrlComboBox_AddString($iComp, $string)
		Case $bFilter
			FillListView()
			$string = GUICtrlRead($iSrch)
			If $string <> "" Then _GUICtrlComboBox_AddString($iSrch, $string)
		Case $cbydatefilter
			If GUICtrlRead($cbydatefilter) = 1 Then
				GUICtrlSetState($g_hDTP, $GUI_ENABLE)
				GUICtrlSetState($nontodayfilter, $GUI_UNCHECKED)
			Else
				GUICtrlSetState($g_hDTP, $GUI_DISABLE)
			EndIf
			FillListView()
		Case $nontodayfilter
			If GUICtrlRead($nontodayfilter) = 1 Then
				GUICtrlSetState($cbydatefilter, $GUI_UNCHECKED)
				GUICtrlSetState($g_hDTP, $GUI_DISABLE)
			ElseIf GUICtrlRead($cbydatefilter) = 1 Then
				GUICtrlSetState($g_hDTP, $GUI_enable)
			EndIf
			FillListView()
		Case $rAll To $r64
			FillListView()
		Case $cHideMSUpdates, $csyscomponent, $cufilter
			FillListView()
		Case $g_hDTP
			GUICtrlSetState($nontodayfilter, $GUI_UNCHECKED)
			FillListView()
		Case $bExport
			ExportCSV()
		Case $ListView_unistall
			_GUICtrlListView_SortItems($ListView_unistall, GUICtrlGetState($ListView_unistall))
		Case $rcCopyLine
			ClipPut(_GUICtrlListView_GetItemTextString($ListView_unistall, -1))
		Case $rcCopyName
			ClipPut(_GUICtrlListView_GetItemText($ListView_unistall, Int(_GUICtrlListView_GetSelectedIndices($ListView_unistall), 1), $nameCol))
		Case $rcCopyVer
			ClipPut(_GUICtrlListView_GetItemText($ListView_unistall, Int(_GUICtrlListView_GetSelectedIndices($ListView_unistall), 1), $verCol))
		Case $rcCopyPub
			ClipPut(_GUICtrlListView_GetItemText($ListView_unistall, Int(_GUICtrlListView_GetSelectedIndices($ListView_unistall), 1), $pubCol))
		Case $rcCopyGUID
			ClipPut(_GUICtrlListView_GetItemText($ListView_unistall, Int(_GUICtrlListView_GetSelectedIndices($ListView_unistall), 1), $guidCol))
		Case $rcCopyUninst
			ClipPut(_GUICtrlListView_GetItemText($ListView_unistall, Int(_GUICtrlListView_GetSelectedIndices($ListView_unistall), 1), $uninstCol))
		Case $rcCopyLoc
			ClipPut(_GUICtrlListView_GetItemText($ListView_unistall, Int(_GUICtrlListView_GetSelectedIndices($ListView_unistall), 1), $locCol))
		Case $rcCopySrc
			ClipPut(_GUICtrlListView_GetItemText($ListView_unistall, Int(_GUICtrlListView_GetSelectedIndices($ListView_unistall), 1), $srcCol))
		Case $rcCopyKey
			ClipPut(_GUICtrlListView_GetItemText($ListView_unistall, Int(_GUICtrlListView_GetSelectedIndices($ListView_unistall), 1), $keyCol))
		Case $rcCopySilentKey
			ClipPut(_GUICtrlListView_GetItemText($ListView_unistall, Int(_GUICtrlListView_GetSelectedIndices($ListView_unistall), 1), $silkeyCol))
		Case $rcJumpLoc
			JumpToDir(_GUICtrlListView_GetItemText($ListView_unistall, Int(_GUICtrlListView_GetSelectedIndices($ListView_unistall), 1), $locCol))
		Case $rcJumpSrc
			JumpToDir(_GUICtrlListView_GetItemText($ListView_unistall, Int(_GUICtrlListView_GetSelectedIndices($ListView_unistall), 1), $srcCol))
		Case $rcJumpKey
			_JumpRegistry(StringReplace(StringReplace(StringReplace(_GUICtrlListView_GetItemText($ListView_unistall, Int(_GUICtrlListView_GetSelectedIndices($ListView_unistall), 1), $keyCol), "HKLM", "HKEY_LOCAL_MACHINE"), "Wow6432Node\", ""), "HKCU", "HKEY_CURRENT_USER"))
		Case $rcselectall
			_GUICtrlListView_SetItemChecked($ListView_unistall, -1, True)
		Case $rcselectnone
			_GUICtrlListView_SetItemChecked($ListView_unistall, -1, False)
		Case $rcSilentUninstall, $bsilentunistall
			Uninstall(1)
			FillListView()
		Case $rcUninstall, $bunistall
			Uninstall(0)
			FillListView()
		Case $bmodify, $rcModify
			RunWait(_GUICtrlListView_GetItemText($ListView_unistall, Int(_GUICtrlListView_GetSelectedIndices($ListView_unistall), 1), $modifyCol))
		Case $bsite
			ShellExecute(_GUICtrlListView_GetItemText($ListView_unistall, Int(_GUICtrlListView_GetSelectedIndices($ListView_unistall), 1), $siteCol))


	EndSwitch
EndFunc   ;==>ReadGUI


Func JumpToDir($dir)
	If $computer <> "" And StringInStr($dir, ":\", 0, 1) Then
		$dir = StringReplace($dir, ":", "$", 1)
		$dir = "\\" & $computer & "\" & $dir
	EndIf
	If Not FileExists($dir) Then
		MsgBox($MB_ICONWARNING, "", "Unable to locate:" & @CRLF & @CRLF & $dir, 10)
	Else
		Run("explorer.exe """ & $dir & """", @SystemDir)
	EndIf
EndFunc   ;==>JumpToDir
Func ExpandKey($key)
	If StringLeft($key, 4) == "HKLM" Then
		$key = StringReplace($key, "HKLM", "HKEY_LOCAL_MACHINE", 1)
	ElseIf StringLeft($key, 4) == "HKCU" Then
		$key = StringReplace($key, "HKCU", "HKEY_CURRENT_USER", 1)
	ElseIf StringLeft($key, 3) == "HKU" Then
		$key = StringReplace($key, "HKU", "HKEY_USERS", 1)
	EndIf
	Return $key
EndFunc   ;==>ExpandKey
Func AddListEntry($computer, ByRef $dataBlob)
	If $dataBlob <> "" Then
		$dataBlob = StringStripWS($dataBlob, $STR_STRIPTRAILING)
		Local $temp = StringSplit($dataBlob, "|", $STR_NOCOUNT)
		Local $lineArray[1][UBound($temp)]
		For $i = 0 To UBound($temp) - 1
			$lineArray[0][$i] = $temp[$i]
		Next
		_GUICtrlListView_AddArray($ListView_unistall, $lineArray)
		$dataBlob = ""
	EndIf
EndFunc   ;==>AddListEntry
Func BuildLine($ListView_unistall, $key, $name, $ver, $pub, $uninst, $date, $loc, $src, $suk, $size, $modify, $site, $installer)
	Local $guid, $msi, $arch, $temp

	If StringInStr($uninst, "msiexec", 0) > 0 Then
		$temp = _StringBetween($uninst, "{", "}")
		$guid = "{" & $temp[0] & "}"
		$msi = "Y"
	Else
		$guid = ""
		$msi = "N"
	EndIf
	If $osArch == "AMD64" Then
		If StringInStr($key, "HKLM\SOFTWARE\WOW6432NODE") > 0 Or StringInStr($key, "HKCU64") = 0 Then
			$arch = "x86"
		Else
			$key = StringReplace($key, "HKLM64", "HKLM", 1)
			$arch = "x64"
		EndIf
	Else
		$key = StringReplace($key, "HKLM64", "HKLM", 1)
		$arch = "x86"
	EndIf
	If $computer <> "" Then
		$key = StringReplace($key, "\\" & $computer & "\", "", 1, 0)
	EndIf
	If $size <> "" Then $size = Ceiling($size / 1024)
	Return $name & "|" & $ver & "|" & $pub & "|" & $arch & "|" & $msi & "|" & $guid & "|" & $uninst & "|" & $date & "|" & $loc & "|" & $src & "|" & $key & "|" & $suk & "|" & $size & "|" & $modify & "|" & $site & "|" & $installer & @CRLF
EndFunc   ;==>BuildLine
Func ExportCSV()
	Local $filePath = FileSaveDialog("Specify Output File", @DesktopDir, "Comma-Separated Value(*.csv)", $FD_PROMPTOVERWRITE)
	If @error == 0 Then
		$compare = StringCompare(StringRight($filePath, 4), ".csv", 0)
		If $compare <> 0 Then
			$filePath &= ".csv"
		EndIf
		Local $lvColCount = _GUICtrlListView_GetColumnCount($ListView_unistall) - 1
		Local $lvRowCount = _GUICtrlListView_GetItemCount($ListView_unistall) - 1
		Local $csvString = ""
		For $i = 0 To $lvRowCount
			For $j = 0 To $lvColCount
				$csvString &= '"' & StringReplace(_GUICtrlListView_GetItemText($ListView_unistall, $i, $j), '"', '"' & '"') & '"'
				If $j < $lvColCount Then $csvString &= ','
			Next
			If $i < $lvRowCount Then $csvString &= @CRLF
		Next
		Local $fileHandle = FileOpen($filePath, 10)
		If $fileHandle <> -1 Then
			Local $header = "Name,Version,Publisher,Arch,MSI,GUID,Uninstall String,Install Date,Install Source,Install Location,Uninstall Key,Silent Uninstall String, Size(MB),Modify String, Site,Installer"
			FileWrite($fileHandle, $header & @CRLF & StringStripWS($csvString, $STR_STRIPTRAILING))
			FileClose($fileHandle)
			MsgBox($MB_ICONINFORMATION, "", "Export successful.", 10)
		Else
			MsgBox(16, "", "Export unsuccessful.", 10)
		EndIf
	EndIf
EndFunc   ;==>ExportCSV
Func Uninstall($unistall_type)
	If $unistall_type = 0 Then
		$uninstall_col = $uninstCol
	Else
		$uninstall_col = $silkeyCol
	EndIf
	If $computer <> "" Then
		MsgBox($MB_ICONWARNING, "", "Remote uninstall not supported.", 10)
	Else
		$cheked_items = 0
		For $i = 0 To _GUICtrlListView_GetItemCount($ListView_unistall)
			If _GUICtrlListView_GetItemChecked($ListView_unistall, $i) = True Then
				Local $uninstallStr = _GUICtrlListView_GetItemText($ListView_unistall, $i, $uninstall_col)
				$cheked_items = 1
				RunWait($uninstallStr)
			EndIf
		Next
	EndIf
	If $cheked_items = 0 Then
		Local $ans = MsgBox($MB_ICONQUESTION + $MB_YESNO + $MB_DEFBUTTON2, "", "Uninstall """ & _GUICtrlListView_GetItemText($ListView_unistall, Int(_GUICtrlListView_GetSelectedIndices($ListView_unistall), 1), $nameCol) & """", 10)
		If $ans == $IDYES Then
			Local $uninstallStr = _GUICtrlListView_GetItemText($ListView_unistall, Int(_GUICtrlListView_GetSelectedIndices($ListView_unistall), 1), $uninstall_col)
			RunWait($uninstallStr)
		EndIf
	EndIf
EndFunc   ;==>Uninstall
Func Togglebuttons()
	$uninstallStr = _GUICtrlListView_GetItemText($ListView_unistall, $seleded_item, $uninstCol)
	$silentuniststr = _GUICtrlListView_GetItemText($ListView_unistall, $seleded_item, $silkeyCol)
	$modifystr = _GUICtrlListView_GetItemText($ListView_unistall, $seleded_item, $modifyCol)
	$sitestr = _GUICtrlListView_GetItemText($ListView_unistall, $seleded_item, $siteCol)
	If $uninstallStr = "" Then
		GUICtrlSetState($bunistall, $GUI_DISABLE)
	Else
		GUICtrlSetState($bunistall, $GUI_ENABLE)
	EndIf
	If $silentuniststr = "" Then
		GUICtrlSetState($bsilentunistall, $GUI_DISABLE)
	Else
		GUICtrlSetState($bsilentunistall, $GUI_ENABLE)
	EndIf
	If $modifystr = "" Then
		GUICtrlSetState($bmodify, $GUI_DISABLE)
	Else
		GUICtrlSetState($bmodify, $GUI_ENABLE)
	EndIf
	If $sitestr = "" Then
		GUICtrlSetState($bsite, $GUI_DISABLE)
	Else
		GUICtrlSetState($bsite, $GUI_ENABLE)
	EndIf
EndFunc   ;==>Togglebuttons
Func _JumpRegistry($sKey)
	Local $hwnd, $hControl, $aKey, $i
	If Not ProcessExists("regedit.exe") Then
		Run(@WindowsDir & '\regedit.exe')
		If Not WinWaitActive('[CLASS:RegEdit_RegEdit]', '', 3) Then Return SetError(1, 1, 1)
	EndIf
	If Not WinActive('[CLASS:RegEdit_RegEdit]') Then WinActivate('[CLASS:RegEdit_RegEdit]')
	$hwnd = WinGetHandle("[CLASS:RegEdit_RegEdit]")
	$hControl = ControlGetHandle($hwnd, "", "[CLASS:SysTreeView32; INSTANCE:1]")
	$aKey = StringSplit($sKey, '\')
	$sKey = '#0'
	For $i = 1 To $aKey[0]
		ControlTreeView($hwnd, "", $hControl, "Expand", $sKey)
		$sKey &= '|' & $aKey[$i]
	Next
	ControlTreeView($hwnd, "", $hControl, "Expand", $sKey)
	ControlTreeView($hwnd, "", $hControl, "Select", $sKey)
EndFunc   ;==>_JumpRegistry
Func getautoruns($aKey)
	For $h = 1 To 50
		Local $enum = RegEnumVal($aKey, $h)
		$val_ar = RegRead($aKey, $enum)
		If @error <> 0 Then ExitLoop
		GUICtrlCreateListViewItem($enum & "|" & $val_ar & "|" & $aKey, $ListView_autorun)
		GUICtrlSetImage(-1, $val_ar)
	Next
EndFunc   ;==>getautoruns
Func getautoruns_bl()
	$sfirstcall = 0
	_GUICtrlListView_DeleteAllItems($ListView_blacklist)
	If FileExists("blacklistautoruns.txt") Then
		_FileReadToArray("blacklistautoruns.txt", $arar)
		For $i = 1 To $arar[0]
			GUICtrlCreateListViewItem($arar[$i], $ListView_blacklist)
			GUICtrlSetImage(-1, _GUICtrlListView_GetItemText($ListView_blacklist, $i - 1, 1))
		Next
	EndIf
EndFunc   ;==>getautoruns_bl
Func save_bl()
	FileDelete("blacklistautoruns.txt")
	For $i = 0 To _GUICtrlListView_GetItemCount($ListView_blacklist)
		If _GUICtrlListView_GetItemTextString($ListView_blacklist, $i) = "||" Then ContinueLoop
		FileWriteLine("blacklistautoruns.txt", _GUICtrlListView_GetItemTextString($ListView_blacklist, $i))
	Next
EndFunc   ;==>save_bl
Func Call_autoruns()
	_GUICtrlListView_DeleteAllItems($ListView_autorun)
	getautoruns("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run")
	getautoruns("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce")
	getautoruns("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOncEx")
	getautoruns("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run")
	getautoruns("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\RunOnce")
	getautoruns('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\ Windows\CurrentVersion\RunServices')
	getautoruns('HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\ Windows\CurrentVersion\RunServicesOnce')
	If $sfirstcall = 1 Then getautoruns_bl()
EndFunc   ;==>Call_autoruns
Func del_bl()
	For $i = 0 To _GUICtrlListView_GetItemCount($ListView_blacklist) - 1
		$black_item = _GUICtrlListView_GetItemText($ListView_blacklist, $i)
		For $i2 = 0 To _GUICtrlListView_GetItemCount($ListView_autorun) - 1
			If $black_item = _GUICtrlListView_GetItemText($ListView_autorun, $i2) Then
				RegDelete(_GUICtrlListView_GetItemText($ListView_autorun, $i2, 2), _GUICtrlListView_GetItemText($ListView_autorun, $i2, 0))
			EndIf
		Next
	Next
	Call_autoruns()
EndFunc   ;==>del_bl
Func WM_NOTIFY($hwnd, $iMsg, $wParam, $lParam)
	#forceref $hwnd, $iMsg, $wParam
	Local $tNMHDR, $hWndFrom, $iCode
	$tNMHDR = DllStructCreate($tagNMHDR, $lParam)
	$hWndFrom = HWnd(DllStructGetData($tNMHDR, "hWndFrom"))
	$iCode = DllStructGetData($tNMHDR, "Code")
	Switch $hWndFrom
		Case $hLV_install
			Switch $iCode
				Case $NM_DBLCLK
$pipe = Int(_GUICtrlListView_GetSelectedIndices($ListView1))
			$ins = _GUICtrlListView_GetItemText($ListView1, $pipe, 0)
			If $pipe > -1 Then
			ShellExecute($ins)
			EndIf
				Case $NM_RCLICK
$tLVpoint = _WinAPI_GetMousePos( True, $hLV_install )
					Local $iX = DllStructGetData( $tLVpoint, "X" )
					Local $iY = DllStructGetData( $tLVpoint, "Y" )
					Local $aHit = _GUICtrlListView_HitTest( $hLV_install, $iX, $iY )
				EndSwitch

		Case $hLV
			Switch $iCode

				Case $NM_CLICK
					$seleded_item = Int(_GUICtrlListView_GetHotItem($ListView_unistall), 1)
					$keydown = 0
					Togglebuttons()
				Case $LVN_KEYDOWN
					$tInfo = DllStructCreate($tagNMLVKEYDOWN, $lParam)
					Local $key = DllStructGetData($tInfo, "VKey")
					Switch $key
						Case 40
							$seleded_item = $seleded_item + 1
						Case 38
							$seleded_item = $seleded_item - 1
					EndSwitch
					Togglebuttons()
				Case $NM_DBLCLK
					Uninstall(0)
				Case $NM_CUSTOMDRAW
					Local $tNMLVCUSTOMDRAW = DllStructCreate($tagNMLVCUSTOMDRAW, $lParam)
					Local $dwDrawStage = DllStructGetData($tNMLVCUSTOMDRAW, "dwDrawStage")
					Switch $dwDrawStage ; Holds a value that specifies the drawing stage
						Case $CDDS_PREPAINT
							; Before the paint cycle begins
							Return $CDRF_NOTIFYITEMDRAW ; Notify the parent window of any item-related drawing operations
						Case $CDDS_ITEMPREPAINT
							; Before painting an item
							Return $CDRF_NOTIFYSUBITEMDRAW ; Notify the parent window of any subitem-related drawing operations
						Case BitOR($CDDS_ITEMPREPAINT, $CDDS_SUBITEM)
							; Before painting a subitem
							Local $dwItemSpec = DllStructGetData($tNMLVCUSTOMDRAW, "dwItemSpec") ; Item index
							Local $iSubItem = DllStructGetData($tNMLVCUSTOMDRAW, "iSubItem") ; Subitem index
							Local $hDC = DllStructGetData($tNMLVCUSTOMDRAW, "HDC")
							; Handle to the item's device context
							If $aColors[$dwItemSpec][$iSubItem] Then
								_WinAPI_SelectObject($hDC, $hLVfontBold) ; Bold font
							Else
								_WinAPI_SelectObject($hDC, $hLVfont) ; Normal font
							EndIf
							DllStructSetData($tNMLVCUSTOMDRAW, "ClrText", $aColors[$dwItemSpec][$iSubItem]) ; Forecolor of item text
							Return $CDRF_NEWFONT ; $CDRF_NEWFONT must be returned after changing font or colors
					EndSwitch
			EndSwitch
	EndSwitch
	Return $GUI_RUNDEFMSG
EndFunc   ;==>WM_NOTIFY
Func ColorConvert($iColor)
	Return BitOR(BitAND($iColor, 0x00FF00), BitShift(BitAND($iColor, 0x0000FF), -16), BitShift(BitAND($iColor, 0xFF0000), 16))
EndFunc   ;==>ColorConvert
Func WM_SIZE($hwnd, $iMsg, $wParam, $lParam)
	#forceref $hwnd, $iMsg, $wParam, $lParam
	_GUICtrlStatusBar_Resize($StatusBar1)
	;GUICtrlSetResizing($ListView1, $GUI_DOCKAUTO)
	Return $GUI_RUNDEFMSG
EndFunc   ;==>WM_SIZE
