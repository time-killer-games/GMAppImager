function GetOpenFileName(lpFilter, lpFileName, lpDirName, lpTitle, bMultiSelect = false) {
	if (os_type == os_windows) ext = ".exe"; else if (os_type == os_macosx) ext = ".app"; else ext = ".elf";
	if (os_type != os_windows) execute_program("chmod", @'+x "' + working_directory + @'cmdlineutil/filedialog' + ext + @'"', true);
	dwDialogId = ProcessExecute(@'"' + working_directory + @'cmdlineutil/filedialog' + ext + @'" --get-open-filename' + ((bMultiSelect) ? 
		@'s-ext' : @'-ext' ) + @' "' + lpFilter + @'" "' + lpFileName + @'" "' + lpDirName + @'" "' + lpTitle + @'"');
	lpDialogResult = ExecutedProcessReadFromStandardOutput(dwDialogId);
	lpDialogResult = string_replace_all(lpDialogResult, "\r", "");
	if (string_last_pos("\n", lpDialogResult) == string_length(lpDialogResult) && lpDialogResult != "") {
		lpDialogResult = string_copy(lpDialogResult, 0, string_length(lpDialogResult) - 1)
	}
	FreeExecutedProcessStandardOutput(dwDialogId);
	FreeExecutedProcessStandardInput(dwDialogId);
	return lpDialogResult;
}

function GetSaveFileName(lpFilter, lpFileName, lpDirName, lpTitle) {
	if (os_type == os_windows) ext = ".exe"; else if (os_type == os_macosx) ext = ".app"; else ext = ".elf";
	if (os_type != os_windows) execute_program("chmod", @'+x "' + working_directory + @'cmdlineutil/filedialog' + ext + @'"', true);
	dwDialogId = ProcessExecute(@'"' + working_directory + @'cmdlineutil/filedialog' + ext + @'" --get-save-filename-ext "' + 
		lpFilter + @'" "' + lpFileName + @'" "' + lpDirName + @'" "' + lpTitle + @'"');;
	lpDialogResult = ExecutedProcessReadFromStandardOutput(dwDialogId);
	lpDialogResult = string_replace_all(lpDialogResult, "\r", "");
	if (string_last_pos("\n", lpDialogResult) == string_length(lpDialogResult) && lpDialogResult != "") {
		lpDialogResult = string_copy(lpDialogResult, 0, string_length(lpDialogResult) - 1)
	}
	FreeExecutedProcessStandardOutput(dwDialogId);
	FreeExecutedProcessStandardInput(dwDialogId);
	return lpDialogResult;
}

function GetDirectory(lpDirName, lpTitle) {
	if (os_type == os_windows) ext = ".exe"; else if (os_type == os_macosx) ext = ".app"; else ext = ".elf";
	if (os_type != os_windows) execute_program("chmod", @'+x "' + working_directory + @'cmdlineutil/filedialog' + ext + @'"', true);
	dwDialogId = ProcessExecute(@'"' + working_directory + @'cmdlineutil/filedialog' + ext + @'" --get-directory-alt "' + lpTitle + @'" "' + lpDirName + @'"');
	lpDialogResult = ExecutedProcessReadFromStandardOutput(dwDialogId);
	lpDialogResult = string_replace_all(lpDialogResult, "\r", "");
	if (string_last_pos("\n", lpDialogResult) == string_length(lpDialogResult) && lpDialogResult != "") {
		lpDialogResult = string_copy(lpDialogResult, 0, string_length(lpDialogResult) - 1)
	}
	FreeExecutedProcessStandardOutput(dwDialogId);
	FreeExecutedProcessStandardInput(dwDialogId);
	return lpDialogResult;
}

function GetOpenFileNameAsync(lpFilter, lpFileName, lpDirName, lpTitle, bMultiSelect = false) {
	if (os_type == os_windows) ext = ".exe"; else if (os_type == os_macosx) ext = ".app"; else ext = ".elf";
	if (os_type != os_windows) execute_program("chmod", @'+x "' + working_directory + @'cmdlineutil/filedialog' + ext + @'"', true);
	return ProcessExecuteAsync(@'"' + working_directory + @'cmdlineutil/filedialog' + ext + @'" --get-open-filename' + ((bMultiSelect) ? 
		@'s-ext' : @'-ext' ) + @' "' + lpFilter + @'" "' + lpFileName + @'" "' + lpDirName + @'" "' + lpTitle + @'"');
}

function GetSaveFileNameAsync(lpFilter, lpFileName, lpDirName, lpTitle) {
	if (os_type == os_windows) ext = ".exe"; else if (os_type == os_macosx) ext = ".app"; else ext = ".elf";
	if (os_type != os_windows) execute_program("chmod", @'+x "' + working_directory + @'cmdlineutil/filedialog' + ext + @'"', true);
	return ProcessExecuteAsync(@'"' + working_directory + @'cmdlineutil/filedialog' + ext + @'" --get-save-filename-ext "' + 
		lpFilter + @'" "' + lpFileName + @'" "' + lpDirName + @'" "' + lpTitle + @'"');
}

function GetDirectoryAsync(lpDirName, lpTitle) {
	if (os_type == os_windows) ext = ".exe"; else if (os_type == os_macosx) ext = ".app"; else ext = ".elf";
	if (os_type != os_windows) execute_program("chmod", @'+x "' + working_directory + @'cmdlineutil/filedialog' + ext + @'"', true);
	return ProcessExecuteAsync(@'"' + working_directory + @'cmdlineutil/filedialog' + ext + @'" --get-directory-alt "' + lpTitle + @'" "' + lpDirName + @'"');
}

function AsyncDialogIsComplete(dwDialogId) {
	return CompletionStatusFromExecutedProcess(dwDialogId);
}

function AsyncDialogGetResult(dwDialogId) {
	lpDialogResult = ExecutedProcessReadFromStandardOutput(dwDialogId);
	lpDialogResult = string_replace_all(lpDialogResult, "\r", "");
	if (string_last_pos("\n", lpDialogResult) == string_length(lpDialogResult) && lpDialogResult != "") {
		lpDialogResult = string_copy(lpDialogResult, 0, string_length(lpDialogResult) - 1)
	}
	return lpDialogResult;
}

function AsyncDialogFreeResult(dwDialogId) {
	if (CompletionStatusFromExecutedProcess(dwDialogId)) {
		FreeExecutedProcessStandardOutput(dwDialogId);
		FreeExecutedProcessStandardInput(dwDialogId);
		return true;
	}
	return false;
}

function AsyncDialogForceQuit(dwDialogId) {
	if (dwDialogId != 0 && !CompletionStatusFromExecutedProcess(dwDialogId)) {
		return ProcIdKill(dwDialogId);
	}
	return false;
}

function DialogSetFontFolder(lpParentFolder) {
	return EnvironmentSetVariable("IMGUI_FONT_PATH", lpParentFolder);
}

function DialogSetFontSize(dwSize) {
	return EnvironmentSetVariable("IMGUI_FONT_SIZE", string(dwSize));
}