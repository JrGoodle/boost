// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "boost",
    platforms: [.iOS(.v14),.macOS(.v11),.visionOS(.v1)],
    products: [
        .library(name: "boost", targets: ["boost"])
    ],
    targets: [
        .target(
            name: "boost",
            dependencies: [
                "boostlibs"
            ]
        ),
        .target(
            name: "boostlibs",
            dependencies: [
                "atomic",
                "chrono",
                "cobalt",
                "container",
                "context",
                "contract",
                "coroutine",
                "date_time",
                "exception",
                "fiber",
                "filesystem",
                "graph",
                "iostreams",
                "json",
                "locale",
                "log",
                "log_setup",
                "math_c99",
                "math_c99f",
                "math_c99l",
                "math_tr1",
                "math_tr1f",
                "math_tr1l",
                "nowide",
                "prg_exec_monitor",
                "program_options",
                "random",
                "regex",
                "serialization",
                "stacktrace_basic",
                "stacktrace_noop",
                "system",
                "test_exec_monitor",
                "thread",
                "timer",
                "type_erasure",
                "unit_test_framework",
                "url",
                "wave",
                "wserialization"
            ]
        ),
        .binaryTarget(
            name: "atomic",
            path: "frameworks/boost_atomic.xcframework"
        ),
        .binaryTarget(
            name: "chrono",
            path: "frameworks/boost_chrono.xcframework"
        ),
        .binaryTarget(
            name: "cobalt",
            path: "frameworks/boost_cobalt.xcframework"
        ),
        .binaryTarget(
            name: "container",
            path: "frameworks/boost_container.xcframework"
        ),
        .binaryTarget(
            name: "context",
            path: "frameworks/boost_context.xcframework"
        ),
        .binaryTarget(
            name: "contract",
            path: "frameworks/boost_contract.xcframework"
        ),
        .binaryTarget(
            name: "coroutine",
            path: "frameworks/boost_coroutine.xcframework"
        ),
        .binaryTarget(
            name: "date_time",
            path: "frameworks/boost_date_time.xcframework"
        ),
        .binaryTarget(
            name: "exception",
            path: "frameworks/boost_exception.xcframework"
        ),
        .binaryTarget(
            name: "fiber",
            path: "frameworks/boost_fiber.xcframework"
        ),
        .binaryTarget(
            name: "filesystem",
            path: "frameworks/boost_filesystem.xcframework"
        ),
        .binaryTarget(
            name: "graph",
            path: "frameworks/boost_graph.xcframework"
        ),
        .binaryTarget(
            name: "iostreams",
            path: "frameworks/boost_iostreams.xcframework"
        ),
        .binaryTarget(
            name: "json",
            path: "frameworks/boost_json.xcframework"
        ),
        .binaryTarget(
            name: "locale",
            path: "frameworks/boost_locale.xcframework"
        ),
        .binaryTarget(
            name: "log",
            path: "frameworks/boost_log.xcframework"
        ),
        .binaryTarget(
            name: "log_setup",
            path: "frameworks/boost_log_setup.xcframework"
        ),
        .binaryTarget(
            name: "math_c99",
            path: "frameworks/boost_math_c99.xcframework"
        ),
        .binaryTarget(
            name: "math_c99f",
            path: "frameworks/boost_math_c99f.xcframework"
        ),
        .binaryTarget(
            name: "math_c99l",
            path: "frameworks/boost_math_c99l.xcframework"
        ),
        .binaryTarget(
            name: "math_tr1",
            path: "frameworks/boost_math_tr1.xcframework"
        ),
        .binaryTarget(
            name: "math_tr1f",
            path: "frameworks/boost_math_tr1f.xcframework"
        ),
        .binaryTarget(
            name: "math_tr1l",
            path: "frameworks/boost_math_tr1l.xcframework"
        ),
        .binaryTarget(
            name: "nowide",
            path: "frameworks/boost_nowide.xcframework"
        ),
        .binaryTarget(
            name: "prg_exec_monitor",
            path: "frameworks/boost_prg_exec_monitor.xcframework"
        ),
        .binaryTarget(
            name: "program_options",
            path: "frameworks/boost_program_options.xcframework"
        ),
        .binaryTarget(
            name: "random",
            path: "frameworks/boost_random.xcframework"
        ),
        .binaryTarget(
            name: "regex",
            path: "frameworks/boost_regex.xcframework"
        ),
        .binaryTarget(
            name: "serialization",
            path: "frameworks/boost_serialization.xcframework"
        ),
        .binaryTarget(
            name: "stacktrace_basic",
            path: "frameworks/boost_stacktrace_basic.xcframework"
        ),
        .binaryTarget(
            name: "stacktrace_noop",
            path: "frameworks/boost_stacktrace_noop.xcframework"
        ),
        .binaryTarget(
            name: "system",
            path: "frameworks/boost_system.xcframework"
        ),
        .binaryTarget(
            name: "test_exec_monitor",
            path: "frameworks/boost_test_exec_monitor.xcframework"
        ),
        .binaryTarget(
            name: "thread",
            path: "frameworks/boost_thread.xcframework"
        ),
        .binaryTarget(
            name: "timer",
            path: "frameworks/boost_timer.xcframework"
        ),
        .binaryTarget(
            name: "type_erasure",
            path: "frameworks/boost_type_erasure.xcframework"
        ),
        .binaryTarget(
            name: "unit_test_framework",
            path: "frameworks/boost_unit_test_framework.xcframework"
        ),
        .binaryTarget(
            name: "url",
            path: "frameworks/boost_url.xcframework"
        ),
        .binaryTarget(
            name: "wave",
            path: "frameworks/boost_wave.xcframework"
        ),
        .binaryTarget(
            name: "wserialization",
            path: "frameworks/boost_wserialization.xcframework"
        )
    ],
    cxxLanguageStandard: .cxx17
)
