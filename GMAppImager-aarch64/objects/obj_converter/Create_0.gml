widget_set_owner(hwnd_main);
widget_set_icon(program_directory + "assets/icon.png");
environment_set_variable("OWD", "HOME");
string_split_list = ds_list_create();

blacklist = @'ld-linux.so.2
ld-linux-armhf.so.3
ld-linux-x86-64.so.2
ld-linux-aarch64.so.1
libanl.so.1
libBrokenLocale.so.1
libcidn.so.1
libc.so.6
libdl.so.2
libm.so.6
libmvec.so.1
libnss_compat.so.2
libnss_dns.so.2
libnss_files.so.2
libnss_hesiod.so.2
libnss_nisplus.so.2
libnss_nis.so.2
libpthread.so.0
libresolv.so.2
librt.so.1
libthread_db.so.1
libutil.so.1
libstdc++.so.6
libGL.so.1
libEGL.so.1
libGLdispatch.so.0
libGLX.so.0
libOpenGL.so.0
libdrm.so.2
libglapi.so.0
libgbm.so.1
libxcb.so.1
libX11.so.6
libgio-2.0.so.0
libasound.so.2
libfontconfig.so.1
libthai.so.0
libfreetype.so.6
libharfbuzz.so.0
libcom_err.so.2
libexpat.so.1
libgcc_s.so.1
libglib-2.0.so.0
libgpg-error.so.0
libICE.so.6
libp11-kit.so.0
libSM.so.6
libusb-1.0.so.0
libuuid.so.1
libz.so.1
libgobject-2.0.so.0
libpangoft2-1.0.so.0
libpangocairo-1.0.so.0
libpango-1.0.so.0
libgpg-error.so.0
libjack.so.0
libxcb-dri3.so.0
libxcb-dri2.so.0
libfribidi.so.0
libgmp.so.10';

/* string_split(s, d) by YellowAfterlife:
https://yal.cc/gamemaker-split-string/ */
function string_split(s, d) {
  /// string_split(:string, delimiter:string):array<string>
  var rl = string_split_list;
  var p = string_pos(d, s), o = 1;
  var dl = string_length(d);
  ds_list_clear(rl);
  if (dl) while (p) {
    ds_list_add(rl, string_copy(s, o, p - o));
    o = p + dl;
    p = string_pos_ext(d, s, o);
  }
  ds_list_add(rl, string_delete(s, 1, o - 1));
  // create an array and store results:
  var rn = ds_list_size(rl);
  var rw = array_create(rn);
  for (p = 0; p < rn; p++) rw[p] = rl[|p];
  return rw;
}

blacklist_array = string_split(blacklist, "\n");
e = get_open_filename_ext("Unix Executables (*)|*", "", environment_get_variable("OWD"), "Select Linux GameMaker Game Unix Executable...");
if (e == "") { directory_destroy(environment_get_variable("HOME") + "/.config/" + game_display_name); game_end(); exit; }
icon = get_open_filename_ext("256x256px PNG Icon Files (*.png)|*.png", "", environment_get_variable("OWD"), "Select Linux 256x256px AppImage PNG Icon File...");
if (icon == "") { directory_destroy(environment_get_variable("HOME") + "/.config/" + game_display_name); game_end(); exit; }
d = get_directory_alt("Select Linux GameMaker Game Assets Directory...", environment_get_variable("OWD"));
if (d == "") { directory_destroy(environment_get_variable("HOME") + "/.config/" + game_display_name); game_end(); exit; }
while (string_last_pos("/", d) == string_length(d) && d != "/") { d = string_copy(d, 0, string_length(d) - 1) }
s = 0; p[s] = ProcessExecute("ldd \"" + e + "\"");
for (s = 0; s < array_length(p); s++) {
  a = string_split(ExecutedProcessReadFromStandardOutput(p[s]), "\n");
  for (i = 0; i < array_length(a); i++) {
    b = string_split(a[i], " ");
    for (j = 0; j < array_length(b); j++) {
      if (j == 0) {
        b[j] = string_copy(b[j], 2, string_length(b[j]));
		if (filename_path(b[j]) == "/lib64/" || filename_path(b[j]) == "/lib/") {
          file_copy(b[j], environment_get_variable("HOME") + "/.config/" + game_display_name + "/assets/Application.AppDir" + b[j]);
          for (t = 0; t < array_length(blacklist_array); t++) {
            if (string_count(blacklist_array[t], b[j]) > 0) {
              file_delete(environment_get_variable("HOME") + "/.config/" + game_display_name + "/assets/Application.AppDir" + b[j]);
			}
		  }
		}
      } else if (j == 2) {
        file_copy(b[j], environment_get_variable("HOME") + "/.config/" + game_display_name + "/assets/Application.AppDir/lib/" + filename_name(b[j]));
        for (t = 0; t < array_length(blacklist_array); t++) {
          if (string_count(blacklist_array[t], b[j]) > 0) {
		    file_delete(environment_get_variable("HOME") + "/.config/" + game_display_name + "/assets/Application.AppDir/lib/" + filename_name(b[j]));
		  }
		}
      }
    }
  }
}
f[s] = directory_contents_first(d, "*.so", false, true);
while (f[s] != "") {
  p[s++] = ProcessExecute("ldd \"" + f[s] + "\"");
  for (s = 0; s < array_length(p); s++) {
    a = string_split(ExecutedProcessReadFromStandardOutput(p[s]), "\n");
    for (i = 0; i < array_length(a); i++) {
      b = string_split(a[i], " ");
      for (j = 0; j < array_length(b); j++) {
        if (j == 0) {
          b[j] = string_copy(b[j], 2, string_length(b[j]));
		  if (filename_path(b[j]) == "/lib64/" || filename_path(b[j]) == "/lib/") {
            file_copy(b[j], environment_get_variable("HOME") + "/.config/" + game_display_name + "/assets/Application.AppDir" + b[j]);
            for (t = 0; t < array_length(blacklist_array); t++) {
              if (string_count(blacklist_array[t], b[j]) > 0) {
                file_delete(environment_get_variable("HOME") + "/.config/" + game_display_name + "/assets/Application.AppDir" + b[j]);
			  }
			}  
		  }
        } else if (j == 2) {
          file_copy(b[j], environment_get_variable("HOME") + "/.config/" + game_display_name + "/assets/Application.AppDir/lib/" + filename_name(b[j]));
          for (t = 0; t < array_length(blacklist_array); t++) {
            if (string_count(blacklist_array[t], b[j]) > 0) {
		      file_delete(environment_get_variable("HOME") + "/.config/" + game_display_name + "/assets/Application.AppDir/lib/" + filename_name(b[j]));
		    }
		  }
        } 
      }
    }
  }
  f[s] = directory_contents_next();
}
directory_contents_close();
file_copy(program_directory + "assets/application.appdir/apprun", environment_get_variable("HOME") + "/.config/" + game_display_name + "/assets/Application.AppDir/AppRun");
execute_program("chmod", "777 \"" + environment_get_variable("HOME") + "/.config/" + game_display_name + "/assets/Application.AppDir/AppRun\"", true);
file_copy(program_directory + "assets/application.appdir/executable.desktop", environment_get_variable("HOME") + "/.config/" + game_display_name + "/assets/Application.AppDir/executable.desktop");
file_copy(icon, environment_get_variable("HOME") + "/.config/" + game_display_name+ "/assets/Application.AppDir/icon.png");
file_copy(e, environment_get_variable("HOME") + "/.config/" + game_display_name + "/assets/Application.AppDir/usr/bin/executable");
directory_copy(d, environment_get_variable("HOME") + "/.config/" + game_display_name + "/assets/Application.AppDir/usr/bin/" + filename_name(d));
file_copy(program_directory + "assets/appimagetool.appimage", environment_get_variable("HOME") + "/.config/" + game_display_name + "/assets/appimagetool.AppImage");
execute_program("chmod", "777 \"" + environment_get_variable("HOME") + "/.config/" + game_display_name + "/assets/appimagetool.AppImage\"", true);
execute_program("sed", "-i -e 's#/usr#././#g' \"" + environment_get_variable("HOME") + "/.config/" + game_display_name + "/assets/Application.AppDir/usr/bin/executable\"", true);
execute_program("chmod", "777 \"" + environment_get_variable("HOME") + "/.config/" + game_display_name + "/assets/Application.AppDir/usr/bin/executable\"", true);
execute_program(environment_get_variable("HOME") + "/.config/" + game_display_name + "/assets/appimagetool.AppImage", "\"" + environment_get_variable("HOME") + "/.config/" + game_display_name + "/assets/Application.AppDir\" \"" + environment_get_variable("HOME") + "/.config/" + game_display_name + "/assets/Application.AppImage\"", true);
execute_program("chmod", "777 \"" + environment_get_variable("HOME") + "/.config/" + game_display_name + "/assets/Application.AppImage\"", true);
o = get_save_filename_ext("AppImage Executable (*.AppImage)|*.AppImage", "Untitled.AppImage", environment_get_variable("OWD"), "Save As");
if (o == "") { directory_destroy(environment_get_variable("HOME") + "/.config/" + game_display_name); game_end(); exit; }
file_copy(environment_get_variable("HOME") + "/.config/" + game_display_name + "/assets/Application.AppImage", o);
directory_destroy(environment_get_variable("HOME") + "/.config/" + game_display_name);
execute_program("chmod", "777 \"" + o + "\"", true);
ds_list_destroy(string_split_list);
FreeExecutedProcessStandardOutput(p);
FreeExecutedProcessStandardInput(p);
game_end();