function DialogSetFontFolder(lpParentFolder) {
	var bResult = bool(environment_set_variable("IMGUI_FONT_PATH", lpParentFolder)); IfdLoadFonts(); return bResult;
}

function DialogSetFontSize(dwSize) {
	return bool(environment_set_variable("IMGUI_FONT_SIZE", string(dwSize)));
}

function DialogSetWindowSize(dwWidth, dwHeight) {
	return (bool(environment_set_variable("IMGUI_DIALOG_WIDTH", string(dwWidth))) && bool(environment_set_variable("IMGUI_DIALOG_HEIGHT", string(dwHeight))))
}

function DialogSetLocaleToLanguageTemplate() {
	environment_set_variable("IMGUI_QUICK_ACCESS",                       "");
	environment_set_variable("IMGUI_THIS_PC",                            "");
	environment_set_variable("IMGUI_ALL_FILES",                          "");
	environment_set_variable("IMGUI_NAME",                               "");
	environment_set_variable("IMGUI_DATE_MODIFIED",                      "");
	environment_set_variable("IMGUI_SIZE",                               "");
	environment_set_variable("IMGUI_NEW_FILE",                           "");
	environment_set_variable("IMGUI_NEW_DIRECTORY",                      "");
	environment_set_variable("IMGUI_DELETE",                             "");
	environment_set_variable("IMGUI_ARE_YOU_SURE",                       "");
	environment_set_variable("IMGUI_OVERWRITE_FILE",                     "");
	environment_set_variable("IMGUI_ENTER_FILE_NAME",                    "");
	environment_set_variable("IMGUI_ENTER_DIRECTORY_NAME",               "");
	environment_set_variable("IMGUI_ARE_YOU_SURE_YOU_WANT_TO_DELETE",    "");
	environment_set_variable("IMGUI_ARE_YOU_SURE_YOU_WANT_TO_OVERWRITE", "");
	environment_set_variable("IMGUI_YES",                                "");
	environment_set_variable("IMGUI_NO",                                 "");
	environment_set_variable("IMGUI_OK",                                 "");
	environment_set_variable("IMGUI_CANCEL",                             "");
	environment_set_variable("IMGUI_SEARCH",                             "");
	environment_set_variable("IMGUI_FILE_NAME_WITH_COLON",               "");
	environment_set_variable("IMGUI_FILE_NAME_WITHOUT_COLON",            "");
	environment_set_variable("IMGUI_SAVE",                               "");
	environment_set_variable("IMGUI_OPEN",                               "");
}

function DialogSetLocaleToAmericanEnglish() {
	/* Translation contributed by Samuel Venable */
	environment_set_variable("IMGUI_QUICK_ACCESS",                       "Quick Access");
	environment_set_variable("IMGUI_THIS_PC",                            "This PC");
	environment_set_variable("IMGUI_ALL_FILES",                          "All Files (*.*)");
	environment_set_variable("IMGUI_NAME",                               "Name");
	environment_set_variable("IMGUI_DATE_MODIFIED",                      "Date modified");
	environment_set_variable("IMGUI_SIZE",                               "Size");
	environment_set_variable("IMGUI_NEW_FILE",                           "New file");
	environment_set_variable("IMGUI_NEW_DIRECTORY",                      "New directory");
	environment_set_variable("IMGUI_DELETE",                             "Delete");
	environment_set_variable("IMGUI_ARE_YOU_SURE",                       "Are you sure?");
	environment_set_variable("IMGUI_OVERWRITE_FILE",                     "Overwrite file?");
	environment_set_variable("IMGUI_ENTER_FILE_NAME",                    "Enter file name");
	environment_set_variable("IMGUI_ENTER_DIRECTORY_NAME",               "Enter directory name");
	environment_set_variable("IMGUI_ARE_YOU_SURE_YOU_WANT_TO_DELETE",    "Are you sure you want to delete %s?");
	environment_set_variable("IMGUI_ARE_YOU_SURE_YOU_WANT_TO_OVERWRITE", "Are you sure you want to overwrite %s?");
	environment_set_variable("IMGUI_YES",                                "Yes");
	environment_set_variable("IMGUI_NO",                                 "No");
	environment_set_variable("IMGUI_OK",                                 "OK");
	environment_set_variable("IMGUI_CANCEL",                             "Cancel");
	environment_set_variable("IMGUI_SEARCH",                             "Search");
	environment_set_variable("IMGUI_FILE_NAME_WITH_COLON",               "File name:");
	environment_set_variable("IMGUI_FILE_NAME_WITHOUT_COLON",            "File name");
	environment_set_variable("IMGUI_SAVE",                               "Save");
	environment_set_variable("IMGUI_OPEN",                               "Open");
}

function DialogSetLocaleToSimplifiedChinese() {
	/* Translation contributed by chenxi050402 */
	environment_set_variable("IMGUI_QUICK_ACCESS",                       "????????????");
	environment_set_variable("IMGUI_THIS_PC",                            "?????????");
	environment_set_variable("IMGUI_ALL_FILES",                          "???????????? (*.*)");
	environment_set_variable("IMGUI_NAME",                               "??????");
	environment_set_variable("IMGUI_DATE_MODIFIED",                      "????????????");
	environment_set_variable("IMGUI_SIZE",                               "??????");
	environment_set_variable("IMGUI_NEW_FILE",                           "????????????");
	environment_set_variable("IMGUI_NEW_DIRECTORY",                      "???????????????");
	environment_set_variable("IMGUI_DELETE",                             "??????");
	environment_set_variable("IMGUI_ARE_YOU_SURE",                       "????????????");
	environment_set_variable("IMGUI_OVERWRITE_FILE",                     "??????????????????");
	environment_set_variable("IMGUI_ENTER_FILE_NAME",                    "???????????????");
	environment_set_variable("IMGUI_ENTER_DIRECTORY_NAME",               "???????????????");
	environment_set_variable("IMGUI_ARE_YOU_SURE_YOU_WANT_TO_DELETE",    "??????????????? %s ??????");
	environment_set_variable("IMGUI_ARE_YOU_SURE_YOU_WANT_TO_OVERWRITE", "??????????????? %s ??????");
	environment_set_variable("IMGUI_YES",                                "???");
	environment_set_variable("IMGUI_NO",                                 "???");
	environment_set_variable("IMGUI_OK",                                 "??????");
	environment_set_variable("IMGUI_CANCEL",                             "??????");
	environment_set_variable("IMGUI_SEARCH",                             "??????");
	environment_set_variable("IMGUI_FILE_NAME_WITH_COLON",               "????????????");
	environment_set_variable("IMGUI_FILE_NAME_WITHOUT_COLON",            "?????????");
	environment_set_variable("IMGUI_SAVE",                               "??????");
	environment_set_variable("IMGUI_OPEN",                               "??????");
}

function DialogSetLocaleToBrazilianPortuguese() {
	/* Translation contributed by Bentroen */
	environment_set_variable("IMGUI_QUICK_ACCESS",                       "Acesso r??pido");
	environment_set_variable("IMGUI_THIS_PC",                            "Este computador");
	environment_set_variable("IMGUI_ALL_FILES",                          "Todos os arquivos (*.*)");
	environment_set_variable("IMGUI_NAME",                               "Nome");
	environment_set_variable("IMGUI_DATE_MODIFIED",                      "Data de modifica????o");
	environment_set_variable("IMGUI_SIZE",                               "Tamanho");
	environment_set_variable("IMGUI_NEW_FILE",                           "Novo arquivo");
	environment_set_variable("IMGUI_NEW_DIRECTORY",                      "Nova pasta");
	environment_set_variable("IMGUI_DELETE",                             "Excluir");
	environment_set_variable("IMGUI_ARE_YOU_SURE",                       "Tem certeza?");
	environment_set_variable("IMGUI_OVERWRITE_FILE",                     "Substituir o arquivo?");
	environment_set_variable("IMGUI_ENTER_FILE_NAME",                    "Insira o nome do arquivo");
	environment_set_variable("IMGUI_ENTER_DIRECTORY_NAME",               "Insira o nome da pasta");
	environment_set_variable("IMGUI_ARE_YOU_SURE_YOU_WANT_TO_DELETE",    "Deseja mesmo excluir %s?");
	environment_set_variable("IMGUI_ARE_YOU_SURE_YOU_WANT_TO_OVERWRITE", "Deseja mesmo substituir %s?");
	environment_set_variable("IMGUI_YES",                                "Sim");
	environment_set_variable("IMGUI_NO",                                 "N??o");
	environment_set_variable("IMGUI_OK",                                 "OK");
	environment_set_variable("IMGUI_CANCEL",                             "Cancelar");
	environment_set_variable("IMGUI_SEARCH",                             "Pesquisar");
	environment_set_variable("IMGUI_FILE_NAME_WITH_COLON",               "Nome do arquivo:");
	environment_set_variable("IMGUI_FILE_NAME_WITHOUT_COLON",            "Nome do arquivo");
	environment_set_variable("IMGUI_SAVE",                               "Salvar");
	environment_set_variable("IMGUI_OPEN",                               "Abrir");
}

