; Functions
;		OleInitialize()			Initialize COM
;		ShellContextMenu()	Show the Shell Context Menu on right click
;		InvokeCommand()			Open the file or folder on double click
;		NewWindowProc()			New window procedure
;		OleUninitialize()		Terminate COM
;		CloseDlls()					Close Dynamic Link Libraries opened with DllOpen()

#include-once

#include <MenuConstants.au3>
#include <APIConstants.au3>
#include <WinAPI.au3>

Global $idCmdFirst   = 0x0001
Global $idCmdLast    = 0x6FFF
Global $IContextMenu, $IContextMenu2, $IContextMenu3
Global $pIContextMenu = 0, $pIContextMenu2 = 0, $pIContextMenu3 = 0

Global $hNewWinProc, $hOldWinProc

Global Const $NULL = 0x0000

Global Const $CMF_NORMAL = 0x00000000
Global Const $CMF_DEFAULTONLY = 0x00000001
Global Const $CMF_EXTENDEDVERBS = 0x00000100
Global Const $CMF_EXPLORE = 0x00000004

Global Const $CMIC_MASK_UNICODE = 0x00004000
Global Const $CMIC_MASK_PTINVOKE = 0x20000000
Global Const $CMIC_MASK_SHIFT_DOWN = 0x10000000
Global Const $CMIC_MASK_CONTROL_DOWN = 0x40000000

Global Const $GCS_HELPTEXT = 0x00000005
Global Const $GCS_UNICODE = 0x00000004
Global Const $GCS_VERB = 0x00000004

Global Const $SW_SHOWNORMAL = 1

; CMINVOKECOMMANDINFO structure
Global Const $tagCMINVOKECOMMANDINFO = "dword cbSize;dword fMask;hwnd hWnd;ptr lpVerb;ptr lpParameters;" & _
																			 "ptr lpDirectory;int nShow;dword dwHotKey;handle hIcon"

; CMINVOKECOMMANDINFOEX structure
Global Const $tagCMINVOKECOMMANDINFOEX = "dword cbSize;dword fMask;hwnd hWnd;ptr lpVerb;ptr lpParameters;" & _
																				 "ptr lpDirectory;int nShow;dword dwHotKey;handle hIcon;ptr lpTitle;" & _
																				 "ptr lpVerbW;ptr lpParametersW;ptr lpDirectoryW;ptr lpTitleW;long X;long Y"

; Dynamic Link Libraries
Global Const $dllOle32   = DllOpen( "ole32.dll" )
Global Const $dllShell32 = DllOpen( "shell32.dll" )
Global Const $dllUser32  = DllOpen( "user32.dll" )

; IShellFolder Interface
Global Const $sIID_IShellFolder = "{000214E6-0000-0000-C000-000000000046}"
Global Const $tRIID_IShellFolder = CLSIDFromString( $sIID_IShellFolder )
Global Const $dtagIShellFolder = _
	"ParseDisplayName hresult(hwnd;ptr;wstr;dword*;ptr*;dword*);" & _
	"EnumObjects hresult(hwnd;dword;ptr*);" & _
	"BindToObject hresult(ptr;ptr;struct*;ptr*);" & _
	"BindToStorage hresult(ptr;ptr;ptr;ptr*);" & _
	"CompareIDs hresult(lparam;ptr;ptr);" & _
	"CreateViewObject hresult(hwnd;struct*;ptr*);" & _
	"GetAttributesOf hresult(uint;struct*;ulong*);" & _
	"GetUIObjectOf hresult(hwnd;uint;struct*;struct*;uint*;ptr*);" & _
	"GetDisplayNameOf hresult(ptr;uint;struct*);" & _
	"SetNameOf hresult(hwnd;ptr;wstr;dword;ptr*);"

; IContextMenu Interface
Global Const $sIID_IContextMenu = "{000214E4-0000-0000-C000-000000000046}"
Global Const $tRIID_IContextMenu = CLSIDFromString( $sIID_IContextMenu )
Global Const $dtagIContextMenu = _
	"QueryContextMenu hresult(handle;uint;uint;uint;uint);" & _
	"InvokeCommand hresult(struct*);" & _
	"GetCommandString hresult(uint;uint;uint*;ptr;uint);"

; IContextMenu2 Interface
Global Const $sIID_IContextMenu2 = "{000214F4-0000-0000-C000-000000000046}"
Global Const $tRIID_IContextMenu2 = CLSIDFromString( $sIID_IContextMenu2 )
Global Const $dtagIContextMenu2 = _
	"QueryContextMenu hresult(handle;uint;uint;uint;uint);" & _
	"InvokeCommand hresult(struct*);" & _
	"GetCommandString hresult(uint;uint;uint*;ptr;uint);" & _
	"HandleMenuMsg hresult(uint;wparam;lparam);"

; IContextMenu3 Interface
Global Const $sIID_IContextMenu3 = "{BCFCE0A0-EC17-11D0-8D10-00A0C90F2719}"
Global Const $tRIID_IContextMenu3 = CLSIDFromString( $sIID_IContextMenu3 )
Global Const $dtagIContextMenu3 = _
	"QueryContextMenu hresult(handle;uint;uint;uint;uint);" & _
	"InvokeCommand hresult(struct*);" & _
	"GetCommandString hresult(uint;uint;uint*;ptr;uint);" & _
	"HandleMenuMsg hresult(uint;wparam;lparam);" & _
	"HandleMenuMsg2 hresult(uint;wparam;lparam;lresult*);"

Func CloseDlls()
	DllClose( $dllOle32 )
	DllClose( $dllShell32 )
	DllClose( $dllUser32 )
EndFunc

Func OleInitialize()
	Local $aRet = DllCall($dllOle32, "long", "OleInitialize", "ptr", 0)
	If @error Then Return SetError(1, 0, 0)
	Return $aRet[0]
EndFunc

Func OleUninitialize()
	DllCall($dllOle32, "none", "OleUninitialize")
	If @error Then Return SetError(1, 0, 0)
	Return 0
EndFunc

; Copied from AutoItObject.au3 by
; the AutoItObject team / Prog@ndy.
Func CLSIDFromString($sString)
	Local $tCLSID = DllStructCreate("dword;word;word;byte[8]")
	Local $aRet = DllCall($dllOle32, "long", "CLSIDFromString", "wstr", $sString, "ptr", DllStructGetPtr($tCLSID))
	If @error Then Return SetError(1, @error, 0)
	If $aRet[0] <> 0 Then Return SetError(2, $aRet[0], 0)
	Return $tCLSID
EndFunc

Func ILCreateFromPath( $sFullPath )
	Local $aRet = DllCall($dllShell32, "ptr", "ILCreateFromPathW", "wstr", $sFullPath)
	If @error Then Return SetError(1, 0, 0)
	Return $aRet[0]
EndFunc

Func ILFindChild( $pidlParent, $pidlChild )
	Local $aRet = DllCall( $dllShell32, "ptr", "ILFindChild", "ptr", $pidlParent, "ptr", $pidlChild )
	If @error Then Return SetError(1, 0, 0)
	Return $aRet[0]
EndFunc

Func CoTaskMemFree($pMem)
	Local $aRet = DllCall($dllOle32, "none", "CoTaskMemFree", "ptr", $pMem)
	If @error Then Return SetError(1, 0, 0)
EndFunc

Func SHBindToParent( $pidl, $riid, ByRef $pIShellFolder, ByRef $pidlRel )
	Local $aRet = DllCall($dllShell32, "long", "SHBindToParent", "ptr", $pidl, "ptr", $riid, "ptr*", 0, "ptr*", 0)
	If @error Then Return SetError(1, 0, 0)
	$pIShellFolder = $aRet[3]
	$pidlRel = $aRet[4]
	Return $aRet[0]
EndFunc

Func CreatePopupMenu()
	Local $aRet = DllCall( $dllUser32, "handle", "CreatePopupMenu" )
	If @error Then Return SetError(@error, @extended, 0)
	If $aRet[0] = 0 Then Return SetError(1, 0, 0)
	Return $aRet[0]
EndFunc

Func TrackPopupMenuEx( $hMenu, $fuFlags, $x, $y, $hWnd )
	Local $aRet = DllCall( $dllUser32, "bool", "TrackPopupMenuEx", "handle", $hMenu, "uint", $fuFlags, "int", $x, "int", $y, "hwnd", $hWnd, "ptr", $NULL )
	If @error Then Return SetError(@error, @extended, 0)
	Return $aRet[0]
EndFunc

Func GetMenuItemID( $hMenu, $iPos )
	Local $aRet = DllCall( $dllUser32, "uint", "GetMenuItemID", "handle", $hMenu, "int", $iPos )
	If @error Then Return SetError(1, 0, 0)
	Return $aRet[0]
EndFunc

Func DestroyMenu($hMenu)
	Local $aRet = DllCall($dllUser32, "bool", "DestroyMenu", "handle", $hMenu)
	If @error Then Return SetError(@error, @extended, False)
	Return $aRet[0]
EndFunc

Func GetKeyState($vKey)
	Local $aRet = DllCall($dllUser32, "int", "GetKeyState", "int", $vKey)
	If @error Then Return SetError(1, 0, 0)
	Return $aRet[0]
EndFunc

; Show the Shell Context Menu
; $sFullPath can be a string with the full path of the selected file/folder
; or an array of strings with the full paths of the selected files/folders.
Func ShellContextMenu( $hWnd, $hWndContext, $tPOINT, $sFullPath )
	Local $parPidl, $cidl, $apidl
	Local $pidlFQ, $pidlRel, $pIShellFolder, $IShellFolder
	Local $hPopup, $iX, $iY, $iCmd, $fMask, $KeyState, $uFlags

	If IsArray( $sFullPath ) Then
		$cidl = UBound( $sFullPath )																		; Number of entries in $apidl
		$apidl = DllStructCreate( "ptr[" & $cidl & "]" )								; $apidl is an array of child PIDLs
		$parPidl = _																										; Fully qualified PIDL for the parent folder
			ILCreateFromPath( StringLeft( $sFullPath[0], StringInStr( $sFullPath[0], "\", 0, -1 ) - 1 ) )
		For $i = 1 To $cidl - 1																					; Fill the $apidl array
			DllStructSetData( $apidl, 1, ILFindChild( $parPidl, ILCreateFromPath( $sFullPath[$i] ) ), $i+1 )
		Next																														; The first entry $pidlRel will be filled in below
		$sFullPath = $sFullPath[0]																			; Set $sFullPath to first entry in $sFullPath[]
	Else
		$cidl = 1
		$apidl = DllStructCreate( "ptr" )
	EndIf

	; Get the fully qualified PIDL associated with the file
	$pidlFQ = ILCreateFromPath( $sFullPath )

	; Get an IShellFolder interface pointer ($pIShellFolder) for the parent folder
	; and a PIDL ($pidlRel) associated with the file relative to the parent folder.
	SHBindToParent( $pidlFQ, DllStructGetPtr( $tRIID_IShellFolder ), $pIShellFolder, $pidlRel )

	; Create an IDispatch-Object for the IShellFolder Interface
	$IShellFolder = ObjCreateInterface( $pIShellFolder, $sIID_IShellFolder, $dtagIShellFolder )

	; Get a pointer to the IContextMenu Interface
	DllStructSetData( $apidl, 1, $pidlRel )
	If $IShellFolder.GetUIObjectOf( $NULL, $cidl, $apidl, $tRIID_IContextMenu, 0, $pIContextMenu ) = $S_OK Then

		; Create an IDispatch-Object for the IContextMenu Interface
		$IContextMenu = ObjCreateInterface( $pIContextMenu, $sIID_IContextMenu, $dtagIContextMenu )

		; Create a Popup menu
		$hPopup = CreatePopupMenu()

		; Add commands to the Popup menu
		$uFlags = $CMF_NORMAL
		$KeyState = GetKeyState( $VK_SHIFT )
		If $KeyState < 0 Or $KeyState > 32768 Then _
			$uFlags = BitOr( $uFlags, $CMF_EXTENDEDVERBS )
		$IContextMenu.QueryContextMenu( $hPopup, 0, $idCmdFirst, $idCmdLast, $uFlags )

		; Create an IDispatch-Object for the IContextMenu2 Interface
		$IContextMenu.QueryInterface( DllStructGetPtr( $tRIID_IContextMenu2 ), $pIContextMenu2 )
		$IContextMenu2 = ObjCreateInterface( $pIContextMenu2, $sIID_IContextMenu2, $dtagIContextMenu2 )

		; Create an IDispatch-Object for the IContextMenu3 Interface
		$IContextMenu.QueryInterface( DllStructGetPtr( $tRIID_IContextMenu3 ), $pIContextMenu3 )
		$IContextMenu3 = ObjCreateInterface( $pIContextMenu3, $sIID_IContextMenu3, $dtagIContextMenu3 )

		; Convert client coordinates to screen coordinates.
		; This is among other things used to place the upper left corner
		; of the Properties dialog box at the position of the mouse cursor.
		_WinAPI_ClientToScreen( $hWndContext, $tPoint )
		$iX = DllStructGetData( $tPoint, "X" )
		$iY = DllStructGetData( $tPoint, "Y" )

		; Show the Popup menu and track the selection
		$iCmd = TrackPopupMenuEx( $hPopup, $TPM_RETURNCMD, $iX, $iY, $hWnd )

		If $iCmd > 0 Then
			; Create and fill a $tagCMINVOKECOMMANDINFOEX structure
			Local $tCMINVOKECOMMANDINFOEX = DllStructCreate( $tagCMINVOKECOMMANDINFOEX )
			DllStructSetData( $tCMINVOKECOMMANDINFOEX, "cbSize", DllStructGetSize( $tCMINVOKECOMMANDINFOEX ) )
			$fMask = BitOr( $CMIC_MASK_UNICODE, $CMIC_MASK_PTINVOKE )
			$KeyState = GetKeyState( $VK_CONTROL )
			If $KeyState < 0 Or $KeyState > 32768 Then _
				$fMask = BitOr( $fMask, $CMIC_MASK_CONTROL_DOWN )
			$KeyState = GetKeyState( $VK_SHIFT )
			If $KeyState < 0 Or $KeyState > 32768 Then _
				$fMask = BitOr( $fMask, $CMIC_MASK_SHIFT_DOWN )
			DllStructSetData( $tCMINVOKECOMMANDINFOEX, "fMask", $fMask )
			DllStructSetData( $tCMINVOKECOMMANDINFOEX, "hWnd", $hWnd )
			DllStructSetData( $tCMINVOKECOMMANDINFOEX, "lpVerb", $iCmd - $idCmdFirst )
			DllStructSetData( $tCMINVOKECOMMANDINFOEX, "lpVerbW", $iCmd - $idCmdFirst )
			DllStructSetData( $tCMINVOKECOMMANDINFOEX, "nShow", $SW_SHOWNORMAL )
			DllStructSetData( $tCMINVOKECOMMANDINFOEX, "X", $iX )
			DllStructSetData( $tCMINVOKECOMMANDINFOEX, "Y", $iY )
			; Invoke the command
			$IContextMenu.InvokeCommand( $tCMINVOKECOMMANDINFOEX )
		EndIf

		; Free memory allocated by the PIDL
		CoTaskMemFree( $pidlFQ )

		; Destroy menu and free memory
		DestroyMenu( $hPopup )

		$pIContextMenu3 = 0
		$pIContextMenu2 = 0
		$pIContextMenu = 0
		$IContextMenu3 = 0
		$IContextMenu2 = 0
		$IContextMenu = 0
		$IShellFolder = 0
	EndIf
EndFunc

; Execute the default menu item
Func InvokeCommand( $hWnd, $sFullPath )
	Local $pidlFQ, $pidlRel, $pIShellFolder, $IShellFolder
	Local $pIContextMenu, $IContextMenu, $tArray = DllStructCreate( "ptr" )
	Local $hPopup, $aRet, $idMenu

	; Get the fully qualified PIDL associated with the file
	$pidlFQ = ILCreateFromPath( $sFullPath )

	; Get an IShellFolder interface pointer ($pIShellFolder) for the parent folder
	; and a PIDL ($pidlRel) associated with the file relative to the parent folder.
	SHBindToParent( $pidlFQ, DllStructGetPtr( $tRIID_IShellFolder ), $pIShellFolder, $pidlRel )

	; Create an IDispatch-Object for the IShellFolder Interface
	$IShellFolder = ObjCreateInterface( $pIShellFolder, $sIID_IShellFolder, $dtagIShellFolder )

	; Get a pointer to the IContextMenu Interface
	DllStructSetData( $tArray, 1, $pidlRel )
	If $IShellFolder.GetUIObjectOf( $NULL, 1, $tArray, $tRIID_IContextMenu, 0, $pIContextMenu ) = $S_OK Then

		; Create an IDispatch-Object for the IContextMenu Interface
		$IContextMenu = ObjCreateInterface( $pIContextMenu, $sIID_IContextMenu, $dtagIContextMenu )

		; Create a Popup menu
		$hPopup = CreatePopupMenu()

		; Add the default command to the Popup menu
		$aRet = $IContextMenu.QueryContextMenu( $hPopup, 0, $idCmdFirst, $idCmdLast, $CMF_DEFAULTONLY )

		If $aRet >= 0 Then
			; Get the menu item identifier
			Local $idMenu = GetMenuItemID( $hPopup, 0 )
			; Create and fill a $tagCMINVOKECOMMANDINFO structure
			Local $tCMINVOKECOMMANDINFO = DllStructCreate( $tagCMINVOKECOMMANDINFO )
			DllStructSetData( $tCMINVOKECOMMANDINFO, "cbSize", DllStructGetSize( $tCMINVOKECOMMANDINFO ) )
			DllStructSetData( $tCMINVOKECOMMANDINFO, "fMask", 0 )
			DllStructSetData( $tCMINVOKECOMMANDINFO, "hWnd", $hWnd )
			DllStructSetData( $tCMINVOKECOMMANDINFO, "lpVerb", $idMenu - $idCmdFirst )
			DllStructSetData( $tCMINVOKECOMMANDINFO, "nShow", $SW_SHOWNORMAL )
			; Invoke the command
			$IContextMenu.InvokeCommand( $tCMINVOKECOMMANDINFO )
		EndIf

		; Free memory allocated by the PIDL
		CoTaskMemFree( $pidlFQ )

		; Destroy menu and free memory
		DestroyMenu( $hPopup )

		$IContextMenu = 0
		$IShellFolder = 0
	EndIf
EndFunc

; New window procedure to be able to handle messages from the shell context menu
Func NewWindowProc( $hWnd, $iMsg, $iwParam, $ilParam )
	If $pIContextMenu3 Then
		If $IContextMenu3.HandleMenuMsg2( $iMsg, $iwParam, $ilParam, $NULL ) = $S_OK Then Return 0
	ElseIf $pIContextMenu2 Then
		If $IContextMenu2.HandleMenuMsg( $iMsg, $iwParam, $ilParam ) = $S_OK Then Return 0
	EndIf
	Local $aRet = DllCall( $dllUser32, "lresult", "CallWindowProc", "ptr", $hOldWinProc, "hwnd", $hWnd, "uint", $iMsg, "wparam", $iwParam, "lparam", $ilParam )
	Return $aRet[0]
EndFunc
