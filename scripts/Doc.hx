//! --class-path src --library tink_core
import dell.Version;
import sys.FileSystem;
import sys.io.File;

/** Builds the documentation. **/
function main() {
	if (FileSystem.exists("docs/api")) Tools.removeDirectory("docs/api");

	Sys.command("haxe --define doc-gen --no-output --xml var/api.xml build.hxml");
	Sys.command("lix", ["run", "dox",
		"--define", "description", "Dell API client, implemented in Haxe.",
		"--define", "source-path", "https://github.com/mc2it/dell.hx/blob/main/src",
		"--define", "themeColor", "0xea8220",
		"--define", "version", Version.packageVersion,
		"--define", "website", "https://github.com/mc2it/dell.hx",
		"--input-path", "var",
		"--output-path", "docs/api",
		"--title", "Dell API Client for Haxe",
		"--toplevel-package", "dell"
	]);

	File.copy("docs/favicon.ico", "docs/api/favicon.ico");
}
