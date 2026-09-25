[CmdletBinding()]
param(
    [switch]$Clear,
    [switch]$Bench,
    [switch]$noTest
)

$ErrorActionPreference = "Stop"

$BuildDir = "build"
$Config = "Release"
$TargetGpp = "C:/msys64/ucrt64/bin/g++.exe"

# -----------------------------------------------------------------------------
# 1. コンパイラの存在チェックと環境情報の出力
# -----------------------------------------------------------------------------
Write-Host "==================================================" -ForegroundColor DarkGray
Write-Host " [Environment Info Check]" -ForegroundColor Cyan

if (Test-Path $TargetGpp) {
    Write-Host "   Target Compiler : $TargetGpp" -ForegroundColor Green
    $gppVersionInfo = & $TargetGpp --version | Select-Object -First 1
    Write-Host "   Version String  : $gppVersionInfo" -ForegroundColor Gray
} else {
    Write-Host "   [WARNING] Target compiler not found at: $TargetGpp" -ForegroundColor Red
    Write-Host "             Fallback to CMake default compiler detection." -ForegroundColor Yellow
}
Write-Host "==================================================" -ForegroundColor DarkGray

# -----------------------------------------------------------------------------
# 2. -Clear オプション処理
# -----------------------------------------------------------------------------
if ($Clear) {
    if (Test-Path $BuildDir) {
        Write-Host "`n[-] Cleaning build directory '$BuildDir'..." -ForegroundColor Yellow
        Remove-Item -Recurse -Force $BuildDir
    }
}

$BuildTestsValue = if ($noTest) { "OFF" } else { "ON" }
$BuildBenchValue = if ($Bench) { "ON" } else { "OFF" }

# -----------------------------------------------------------------------------
# 3. CMake 配置 (Configure) - UCRT64 GCC を明示指定 & Ninja / MinGW Makefiles 指定
# -----------------------------------------------------------------------------
Write-Host "`n[+] Configuring CMake (Tests: $BuildTestsValue, Benchmarks: $BuildBenchValue)..." -ForegroundColor Cyan

$cmakeArgs = @(
    "-B", $BuildDir,
    "-S", ".",
    "-DCMAKE_BUILD_TYPE=$Config",
    "-DBUILD_TESTS=$BuildTestsValue",
    "-DBUILD_BENCHMARKS=$BuildBenchValue"
)

# UCRT64 g++ が存在する場合は CMake に強制的に渡す
if (Test-Path $TargetGpp) {
    $cmakeArgs += "-DCMAKE_CXX_COMPILER=$TargetGpp"
    # MSVC の Generator が選ばれるのを防ぐため MinGW Makefiles を指定 (Ninja があれば Ninja で可)
    $cmakeArgs += "-G", "MinGW Makefiles"
}

cmake @cmakeArgs

# -----------------------------------------------------------------------------
# 4. ビルド実行
# -----------------------------------------------------------------------------
Write-Host "`n[+] Building binaries ($Config)..." -ForegroundColor Cyan
cmake --build $BuildDir --config $Config

# -----------------------------------------------------------------------------
# 5. テスト実行
# -----------------------------------------------------------------------------
if (-not $noTest) {
    Write-Host "`n[+] Running Tests..." -ForegroundColor Green
    ctest --test-dir $BuildDir -C $Config --output-on-failure --verbose
}

# -----------------------------------------------------------------------------
# 6. ベンチマーク実行
# -----------------------------------------------------------------------------
if ($Bench) {
    Write-Host "`n[+] Running Benchmarks..." -ForegroundColor Green
    
    $BenchExeSingle = Join-Path $BuildDir "bench_fast_isqrt.exe"
    $BenchExeMulti  = Join-Path $BuildDir "$Config\bench_fast_isqrt.exe"

    if (Test-Path $BenchExeSingle) {
        & $BenchExeSingle
    } elseif (Test-Path $BenchExeMulti) {
        & $BenchExeMulti
    } else {
        Write-Error "Benchmark executable not found!"
    }
}

Write-Host "`n[OK] Done!" -ForegroundColor Cyan