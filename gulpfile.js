const del = require('del')
gulp = require('gulp')
pug = require('gulp-pug')
Fiber = require('fibers')
sass = require('gulp-sass')
cssnano = require('cssnano')
babel = require('gulp-babel')
uglify = require('gulp-terser')
concat = require('gulp-concat')
rename = require('gulp-rename')
replace = require('gulp-replace')
plumber = require('gulp-plumber')
postcss = require('gulp-postcss')
prefixer = require('autoprefixer')
srcmap = require('gulp-sourcemaps')
cssImport = require('gulp-cssimport')
sassUnicode = require('gulp-sass-unicode')
browserSync = require('browser-sync').create()
readFileSync = require('graceful-fs').readFileSync
sass.compiler = require('dart-sass');


///////////////////////////////////
var pageArray = JSON.parse(readFileSync('./page.json'));
///////////////////////////////////
var ArrayJs = [];
var ArrayCss = [];
var ArrayHtml = [];
pageArray.forEach(element => {
	if (element.isWorking == true) {
		ArrayJs.push(element)
		ArrayCss.push(element)
		ArrayHtml.push(element)
	}
});
var defaultTasksJs = Object.keys(ArrayJs);
var defaultTasksCss = Object.keys(ArrayCss);
var defaultTasksHtml = Object.keys(ArrayHtml);
///////////////////////////////////
var ArrayJsAll = [];
var ArrayCssAll = [];
var ArrayHtmlAll = [];
pageArray.forEach(element => {
	ArrayJsAll.push(element)
	ArrayCssAll.push(element)
	ArrayHtmlAll.push(element)
});
var defaultTasksJsAll = Object.keys(ArrayJsAll);
var defaultTasksCssAll = Object.keys(ArrayCssAll);
var defaultTasksHtmlAll = Object.keys(ArrayHtmlAll);
///////////////////////////////////

// Task clean
gulp.task('clean', function () {
	return del(['./dist']);
})

// Task copy fonts
gulp.task('copyFonts', function () {
	let config = JSON.parse(readFileSync('./config.json'));
	return gulp.src(config.font)
		.pipe(gulp.dest('./dist/fonts'));
})
gulp.task('copyFonts2', function () {
	return gulp.src('./src/assets/fonts/*.{woff2,woff,eot,ttf}')
		.pipe(gulp.dest('./dist/fonts'));
})

// Task clean imagess
gulp.task('cleanImages', function () {
	return del(['./dist/img'])
})

// Task copy img
gulp.task('copyImages', function () {
	return gulp.src('./src/assets/img/**/**.{svg,gif,png,jpg,jpeg}')
		.pipe(gulp.dest('./dist/img'));
})

// Task watch
gulp.task('serve', function () {
	browserSync.init({
		server: {
			baseDir: './dist',
		},
		index: "./home/index.html",
		port: 8000
	}),
		gulp.watch(
			[
				'./src/assets/img/**/**.{svg,gif,png,jpg,jpeg}'
			],
			gulp.series('cleanImages', 'copyImages')
		),
		gulp.watch(
			[
				'./src/**/**.pug',
			],
			gulp.series('processHtml')
		),
		gulp.watch(
			[
				'./src/shared/**/**.js',
				'./config.json'
			],
			gulp.series('globalJs')
		),
		gulp.watch(
			[
				'./src/shared/**/**.sass',
			],
			gulp.series('globalCss')
		),
		gulp.watch(
			[
				'./src/pages/**/**.sass',
				'./src/components/**/**.sass',
			],
			gulp.series('processCss')
		),
		gulp.watch(
			[
				'./src/pages/**/**.js',
				'./src/components/**/**.js',
			],
			gulp.series('processJs')
		),
		gulp.watch('./dist/*').on('change', browserSync.reload)
})

// Start task js
defaultTasksJs.forEach(function (number) {
	ArrayJs[number].js.push('./src/pages/' + ArrayJs[number].name + '/index.js');
	gulp.task('scripts:' + ArrayJs[number].name, function () {
		return gulp.src(ArrayJs[number].js)
			.pipe(srcmap.init())
			.pipe(concat('script.min.js'))
			// .pipe(babel({
			// 	presets: ['@babel/env']
			// }))
			.pipe(uglify())
			.pipe(srcmap.write('.'))
			.pipe(gulp.dest('dist/' + ArrayJs[number].name))
			.pipe(browserSync.reload({
				stream: true
			}));
	});
});

gulp.task('processJs',
	gulp.series(
		defaultTasksJs.map(function (number) {
			return 'scripts:' + ArrayJs[number].name;
		})
	)
);



defaultTasksJsAll.forEach(function (number) {
	ArrayJsAll[number].js.push('./src/pages/' + ArrayJsAll[number].name + '/index.js');
	gulp.task('scripts:' + ArrayJsAll[number].name, function () {
		return gulp.src(ArrayJsAll[number].js)
			.pipe(srcmap.init())
			.pipe(concat('script.min.js'))
			// .pipe(babel({
			// 	presets: ['@babel/env']
			// }))
			.pipe(uglify())
			.pipe(srcmap.write('.'))
			.pipe(gulp.dest('dist/' + ArrayJsAll[number].name))
			.pipe(browserSync.reload({
				stream: true
			}));
	});
});

gulp.task('processJsAll',
	gulp.series(
		defaultTasksJsAll.map(function (number) {
			return 'scripts:' + ArrayJsAll[number].name;
		})
	)
);






gulp.task('globalJs', function () {
	let glob = JSON.parse(readFileSync("./config.json"))

	return gulp.src(glob.globalJs, {
		allowEmpty: true
	})
		.pipe(concat('global.min.js'))
		// .pipe(babel({presets: ['@babel/env'] }))
		.pipe(uglify())
		.pipe(gulp.dest('dist/global'))
		.pipe(browserSync.reload({ stream: true }))
})
// End task JS


// Start task CSS
defaultTasksCss.forEach(function (number) {
	gulp.task('css:' + ArrayCss[number].name, function () {
		return gulp.src([
			'./src/pages/' + ArrayCss[number].name + '/index.sass',
		])
			.pipe(srcmap.init())
			.pipe(sass.sync({ fiber: Fiber }).on('error', sass.logError))
			.pipe(sassUnicode())
			.pipe(cssImport())
			.pipe(postcss([
				prefixer({
					browsers: ['last 4 version', "IE 10"],
					cascade: false,
				}),
				cssnano({}),
			]))
			.pipe(rename({
				suffix: '.min'
			}))
			.pipe(srcmap.write('.'))
			.pipe(gulp.dest('./dist/' + ArrayCss[number].name))
			.pipe(browserSync.reload({
				stream: true
			}))
	});
});

gulp.task('processCss',
	gulp.series(
		defaultTasksCss.map(function (number) {
			return 'css:' + ArrayCss[number].name;
		})
	)
)


defaultTasksCssAll.forEach(function (number) {
	gulp.task('css:' + ArrayCssAll[number].name, function () {
		return gulp.src([
			'./src/pages/' + ArrayCssAll[number].name + '/index.sass',
		])
			.pipe(srcmap.init())
			.pipe(sass.sync({ fiber: Fiber }).on('error', sass.logError))
			.pipe(sassUnicode())
			.pipe(cssImport())
			.pipe(postcss([
				prefixer({
					browsers: ['last 4 version', "IE 10"],
					cascade: false,
				}),
				cssnano({}),
			]))
			.pipe(rename({
				suffix: '.min'
			}))
			.pipe(srcmap.write('.'))
			.pipe(replace('@', "@@"))
			.pipe(gulp.dest('./dist/' + ArrayCssAll[number].name))
			.pipe(browserSync.reload({
				stream: true
			}))
	});
});

gulp.task('processCssAll',
	gulp.series(
		defaultTasksCssAll.map(function (number) {
			return 'css:' + ArrayCssAll[number].name;
		})
	)
)


gulp.task('globalCss', function () {
	return gulp.src("./src/shared/index.sass", {
		allowEmpty: true,
	})
		.pipe(sass.sync({
			fiber: Fiber
		}).on('error', sass.logError))
		.pipe(sassUnicode())
		.pipe(cssImport())
		.pipe(postcss([
			prefixer({
				browsers: ['last 4 version', "IE 10"],
				cascade: false,
			}),
			cssnano(),
		]))
		.pipe(rename({
			basename: "global",
			suffix: '.min'
		}))
		.pipe(gulp.dest('./dist/global'))
		.pipe(browserSync.reload({
			stream: true
		}))
})
// End task CSS


// Start task Html
defaultTasksHtml.forEach(function (number) {
	gulp.task('html:' + ArrayHtml[number].name, function () {
		return gulp.src('./src/pages/' + ArrayHtml[number].name + '/index.pug')
			.pipe(pug({
				pretty: '\t',
			}))
			.pipe(plumber())
			.pipe(gulp.dest('./dist/' + ArrayHtml[number].name))
			.pipe(browserSync.reload({
				stream: true
			}));
	});
});
gulp.task('processHtml',
	gulp.series(
		defaultTasksHtml.map(function (number) {
			return 'html:' + ArrayHtml[number].name;
		})
	)
)


defaultTasksHtmlAll.forEach(function (number) {
	gulp.task('html:' + ArrayHtmlAll[number].name, function () {
		return gulp.src('./src/pages/' + ArrayHtmlAll[number].name + '/index.pug')
			.pipe(pug({
				pretty: '\t',
			}))
			.pipe(plumber())
			.pipe(gulp.dest('./dist/' + ArrayHtmlAll[number].name))
			.pipe(browserSync.reload({
				stream: true
			}));
	});
});
gulp.task('processHtmlAll',
	gulp.series(
		defaultTasksHtmlAll.map(function (number) {
			return 'html:' + ArrayHtmlAll[number].name;
		})
	)
)

// End task Html


gulp.task('done', function (cb) {
	console.log('Done!!');
	cb()
})

// Gulp task defaul
gulp.task('default', gulp.series(
	'clean',
	'copyImages',
	'copyFonts',
	'copyFonts2',
	'globalCss',
	'globalJs',
	'processHtml',
	'processCss',
	'processJs',
	'serve'
))

gulp.task('build', gulp.series(
	'clean',
	'copyImages',
	'copyFonts',
	'copyFonts2',
	'globalCss',
	'globalJs',
	'processHtmlAll',
	'processCssAll',
	'processJsAll',
	'done'
))