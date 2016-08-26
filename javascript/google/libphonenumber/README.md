# Custom build of libphonenumber #

Custom Build of Googles JavaScript version of the [libphonenumber 7.6.0][1].

Build created by using the Goggle Closure [Online-Compiler][2]:

	// ==ClosureCompiler==
	// @compilation_level SIMPLE_OPTIMIZATIONS
	// @output_file_name libphonenumber.js
	// @use_closure_library true
	// @code_url https://raw.githubusercontent.com/googlei18n/libphonenumber/master/javascript/i18n/phonenumbers/phonemetadata.pb.js
	// @code_url https://raw.githubusercontent.com/googlei18n/libphonenumber/master/javascript/i18n/phonenumbers/phonenumber.pb.js
	// @code_url https://raw.githubusercontent.com/googlei18n/libphonenumber/master/javascript/i18n/phonenumbers/metadata.js
	// @code_url https://raw.githubusercontent.com/googlei18n/libphonenumber/master/javascript/i18n/phonenumbers/phonenumberutil.js
	// @formatting pretty_print
	// ==/ClosureCompiler==

[1]: https://github.com/googlei18n/libphonenumber
[2]: http://closure-compiler.appspot.com/home
