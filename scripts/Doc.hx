//! --class-path src --define no-deprecation-warnings --library coconut.data --library tink_core
import dell.Platform;
import sys.FileSystem;
import sys.io.File;
using Lambda;

/** Builds the documentation. **/
function main() {
	["CHANGELOG.md", "LICENSE.md"].iter(file -> File.copy(file, 'docs/${file.toLowerCase()}'));
	if (FileSystem.exists("docs/api")) Tools.removeDirectory("docs/api");

	Sys.command("haxe --define doc-gen --no-output --xml var/api.xml build.hxml");
	Sys.command("lix", ["run", "dox",
		"--define", "description", "An HTTP client to query the Dell Premier APIs, in Haxe.",
		"--define", "source-path", "https://github.com/mc2it/dell.hx/blob/main/src",
		"--define", "themeColor", "0xea8220",
		"--define", "version", Platform.packageVersion,
		"--define", "website", "https://github.com/mc2it/dell.hx",
		"--input-path", "var",
		"--output-path", "docs/api",
		"--title", "Dell API Client for Haxe",
		"--toplevel-package", "dell"
	]);

	File.copy("docs/favicon.ico", "docs/api/favicon.ico");
}
