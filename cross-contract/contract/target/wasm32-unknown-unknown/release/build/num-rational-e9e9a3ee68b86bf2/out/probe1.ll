; ModuleID = 'probe1.743ff0bd-cgu.0'
source_filename = "probe1.743ff0bd-cgu.0"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-unknown"

%"core::fmt::Opaque" = type {}
%"core::fmt::Formatter" = type { i32, i32, { i32, i32 }, { i32, i32 }, { {}*, [3 x i32]* }, i8, [3 x i8] }
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i32 }]*, i32 }, { i32*, i32 }, { [0 x { i8*, i32* }]*, i32 } }
%"core::panic::location::Location" = type { { [0 x i8]*, i32 }, i32, i32 }
%"alloc::string::String" = type { %"alloc::vec::Vec<u8>" }
%"alloc::vec::Vec<u8>" = type { { i8*, i32 }, i32 }
%"core::ptr::metadata::PtrComponents<u8>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i32] }
%"[closure@core::intrinsics::copy_nonoverlapping<u8>::{closure#0}]" = type { i8**, i8**, i32* }
%"alloc::alloc::Global" = type {}
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i32] }
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>" = type { [2 x i32], i32 }
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some" = type { { i8*, { i32, i32 } } }

@alloc3 = private unnamed_addr constant <{}> zeroinitializer, align 4
@alloc9 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc10 = private unnamed_addr constant <{ i8*, [4 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc9, i32 0, i32 0, i32 0), [4 x i8] c"\0C\00\00\00" }>, align 4
@alloc51 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/4493a0f4724c0bae1436242d76cccc9c0a287b80/library/core/src/fmt/mod.rs" }>, align 1
@alloc52 = private unnamed_addr constant <{ i8*, [12 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc51, i32 0, i32 0, i32 0), [12 x i8] c"K\00\00\00\88\01\00\00\0D\00\00\00" }>, align 4
@alloc4 = private unnamed_addr constant <{ i8*, [4 x i8] }> <{ i8* bitcast (<{}>* @alloc3 to i8*), [4 x i8] zeroinitializer }>, align 4
@alloc6 = private unnamed_addr constant <{ [4 x i8] }> zeroinitializer, align 4

; <core::ptr::non_null::NonNull<T> as core::convert::From<core::ptr::unique::Unique<T>>>::from
; Function Attrs: inlinehint nounwind
define hidden i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17hdca87b2c2a810f18E"(i8* %unique) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 4
  store i8* %unique, i8** %0, align 4
  %1 = load i8*, i8** %0, align 4, !nonnull !0, !noundef !0
  ret i8* %1
}

; <alloc::collections::TryReserveError as core::convert::From<alloc::collections::TryReserveErrorKind>>::from
; Function Attrs: inlinehint nounwind
define internal { i32, i32 } @"_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17h4ea7d6739bb24878E"(i32 %kind.0, i32 %kind.1) unnamed_addr #0 {
start:
  %0 = alloca { i32, i32 }, align 4
  %1 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0
  store i32 %kind.0, i32* %1, align 4
  %2 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  store i32 %kind.1, i32* %2, align 4
  %3 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  %6 = load i32, i32* %5, align 4, !range !1, !noundef !0
  %7 = insertvalue { i32, i32 } undef, i32 %4, 0
  %8 = insertvalue { i32, i32 } %7, i32 %6, 1
  ret { i32, i32 } %8
}

; core::fmt::ArgumentV1::new_lower_exp
; Function Attrs: inlinehint nounwind
define hidden { i8*, i32* } @_ZN4core3fmt10ArgumentV113new_lower_exp17h48bd7df20ebf0024E(i32* align 4 %x) unnamed_addr #0 {
start:
  %0 = alloca %"core::fmt::Opaque"*, align 4
  %1 = alloca i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, align 4
  %2 = alloca { i8*, i32* }, align 4
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* bitcast (i1 (i32*, %"core::fmt::Formatter"*)* @"_ZN4core3fmt3num3imp55_$LT$impl$u20$core..fmt..LowerExp$u20$for$u20$isize$GT$3fmt17h80458b5e1460a0fbE" to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*), i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 4
  %_4 = load i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 4, !nonnull !0, !noundef !0
  br label %bb1

bb1:                                              ; preds = %start
  %3 = bitcast i32* %x to %"core::fmt::Opaque"*
  store %"core::fmt::Opaque"* %3, %"core::fmt::Opaque"** %0, align 4
  %_6 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 4, !nonnull !0, !align !2, !noundef !0
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = bitcast { i8*, i32* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_6, %"core::fmt::Opaque"** %4, align 4
  %5 = getelementptr inbounds { i8*, i32* }, { i8*, i32* }* %2, i32 0, i32 1
  %6 = bitcast i32** %5 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_4, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %6, align 4
  %7 = getelementptr inbounds { i8*, i32* }, { i8*, i32* }* %2, i32 0, i32 0
  %8 = load i8*, i8** %7, align 4, !nonnull !0, !align !2, !noundef !0
  %9 = getelementptr inbounds { i8*, i32* }, { i8*, i32* }* %2, i32 0, i32 1
  %10 = load i32*, i32** %9, align 4, !nonnull !0, !noundef !0
  %11 = insertvalue { i8*, i32* } undef, i8* %8, 0
  %12 = insertvalue { i8*, i32* } %11, i32* %10, 1
  ret { i8*, i32* } %12
}

; core::fmt::Arguments::as_str
; Function Attrs: inlinehint nounwind
define internal { i8*, i32 } @_ZN4core3fmt9Arguments6as_str17h6c048777e53bb710E(%"core::fmt::Arguments"* align 4 %self) unnamed_addr #0 {
start:
  %_2 = alloca { { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { i8*, i32* }]*, i32 } }, align 4
  %0 = alloca { i8*, i32 }, align 4
  %1 = bitcast %"core::fmt::Arguments"* %self to { [0 x { [0 x i8]*, i32 }]*, i32 }*
  %2 = getelementptr inbounds { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { [0 x i8]*, i32 }]*, i32 }* %1, i32 0, i32 0
  %_3.0 = load [0 x { [0 x i8]*, i32 }]*, [0 x { [0 x i8]*, i32 }]** %2, align 4, !nonnull !0, !align !3, !noundef !0
  %3 = getelementptr inbounds { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { [0 x i8]*, i32 }]*, i32 }* %1, i32 0, i32 1
  %_3.1 = load i32, i32* %3, align 4
  %4 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %self, i32 0, i32 2
  %5 = getelementptr inbounds { [0 x { i8*, i32* }]*, i32 }, { [0 x { i8*, i32* }]*, i32 }* %4, i32 0, i32 0
  %_4.0 = load [0 x { i8*, i32* }]*, [0 x { i8*, i32* }]** %5, align 4, !nonnull !0, !align !3, !noundef !0
  %6 = getelementptr inbounds { [0 x { i8*, i32* }]*, i32 }, { [0 x { i8*, i32* }]*, i32 }* %4, i32 0, i32 1
  %_4.1 = load i32, i32* %6, align 4
  %7 = bitcast { { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { i8*, i32* }]*, i32 } }* %_2 to { [0 x { [0 x i8]*, i32 }]*, i32 }*
  %8 = getelementptr inbounds { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { [0 x i8]*, i32 }]*, i32 }* %7, i32 0, i32 0
  store [0 x { [0 x i8]*, i32 }]* %_3.0, [0 x { [0 x i8]*, i32 }]** %8, align 4
  %9 = getelementptr inbounds { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { [0 x i8]*, i32 }]*, i32 }* %7, i32 0, i32 1
  store i32 %_3.1, i32* %9, align 4
  %10 = getelementptr inbounds { { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { i8*, i32* }]*, i32 } }, { { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { i8*, i32* }]*, i32 } }* %_2, i32 0, i32 1
  %11 = getelementptr inbounds { [0 x { i8*, i32* }]*, i32 }, { [0 x { i8*, i32* }]*, i32 }* %10, i32 0, i32 0
  store [0 x { i8*, i32* }]* %_4.0, [0 x { i8*, i32* }]** %11, align 4
  %12 = getelementptr inbounds { [0 x { i8*, i32* }]*, i32 }, { [0 x { i8*, i32* }]*, i32 }* %10, i32 0, i32 1
  store i32 %_4.1, i32* %12, align 4
  %13 = bitcast { { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { i8*, i32* }]*, i32 } }* %_2 to { [0 x { [0 x i8]*, i32 }]*, i32 }*
  %14 = getelementptr inbounds { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { [0 x i8]*, i32 }]*, i32 }* %13, i32 0, i32 0
  %_21.0 = load [0 x { [0 x i8]*, i32 }]*, [0 x { [0 x i8]*, i32 }]** %14, align 4, !nonnull !0, !align !3, !noundef !0
  %15 = getelementptr inbounds { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { [0 x i8]*, i32 }]*, i32 }* %13, i32 0, i32 1
  %_21.1 = load i32, i32* %15, align 4
  %_16 = icmp eq i32 %_21.1, 0
  br i1 %_16, label %bb1, label %bb3

bb3:                                              ; preds = %start
  %16 = bitcast { { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { i8*, i32* }]*, i32 } }* %_2 to { [0 x { [0 x i8]*, i32 }]*, i32 }*
  %17 = getelementptr inbounds { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { [0 x i8]*, i32 }]*, i32 }* %16, i32 0, i32 0
  %_23.0 = load [0 x { [0 x i8]*, i32 }]*, [0 x { [0 x i8]*, i32 }]** %17, align 4, !nonnull !0, !align !3, !noundef !0
  %18 = getelementptr inbounds { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { [0 x i8]*, i32 }]*, i32 }* %16, i32 0, i32 1
  %_23.1 = load i32, i32* %18, align 4
  %_13 = icmp eq i32 %_23.1, 1
  br i1 %_13, label %bb4, label %bb2

bb1:                                              ; preds = %start
  %19 = getelementptr inbounds { { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { i8*, i32* }]*, i32 } }, { { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { i8*, i32* }]*, i32 } }* %_2, i32 0, i32 1
  %20 = getelementptr inbounds { [0 x { i8*, i32* }]*, i32 }, { [0 x { i8*, i32* }]*, i32 }* %19, i32 0, i32 0
  %_22.0 = load [0 x { i8*, i32* }]*, [0 x { i8*, i32* }]** %20, align 4, !nonnull !0, !align !3, !noundef !0
  %21 = getelementptr inbounds { [0 x { i8*, i32* }]*, i32 }, { [0 x { i8*, i32* }]*, i32 }* %19, i32 0, i32 1
  %_22.1 = load i32, i32* %21, align 4
  %_7 = icmp eq i32 %_22.1, 0
  br i1 %_7, label %bb5, label %bb2

bb2:                                              ; preds = %bb4, %bb3, %bb1
  %22 = bitcast { i8*, i32 }* %0 to {}**
  store {}* null, {}** %22, align 4
  br label %bb7

bb5:                                              ; preds = %bb1
  %23 = bitcast { i8*, i32 }* %0 to { [0 x i8]*, i32 }*
  %24 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %23, i32 0, i32 0
  store [0 x i8]* bitcast (<{}>* @alloc3 to [0 x i8]*), [0 x i8]** %24, align 4
  %25 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %23, i32 0, i32 1
  store i32 0, i32* %25, align 4
  br label %bb7

bb7:                                              ; preds = %bb2, %bb6, %bb5
  %26 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  %27 = load i8*, i8** %26, align 4, !align !2
  %28 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = insertvalue { i8*, i32 } undef, i8* %27, 0
  %31 = insertvalue { i8*, i32 } %30, i32 %29, 1
  ret { i8*, i32 } %31

bb4:                                              ; preds = %bb3
  %32 = getelementptr inbounds { { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { i8*, i32* }]*, i32 } }, { { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { i8*, i32* }]*, i32 } }* %_2, i32 0, i32 1
  %33 = getelementptr inbounds { [0 x { i8*, i32* }]*, i32 }, { [0 x { i8*, i32* }]*, i32 }* %32, i32 0, i32 0
  %_24.0 = load [0 x { i8*, i32* }]*, [0 x { i8*, i32* }]** %33, align 4, !nonnull !0, !align !3, !noundef !0
  %34 = getelementptr inbounds { [0 x { i8*, i32* }]*, i32 }, { [0 x { i8*, i32* }]*, i32 }* %32, i32 0, i32 1
  %_24.1 = load i32, i32* %34, align 4
  %_10 = icmp eq i32 %_24.1, 0
  br i1 %_10, label %bb6, label %bb2

bb6:                                              ; preds = %bb4
  %35 = bitcast { { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { i8*, i32* }]*, i32 } }* %_2 to { [0 x { [0 x i8]*, i32 }]*, i32 }*
  %36 = getelementptr inbounds { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { [0 x i8]*, i32 }]*, i32 }* %35, i32 0, i32 0
  %_25.0 = load [0 x { [0 x i8]*, i32 }]*, [0 x { [0 x i8]*, i32 }]** %36, align 4, !nonnull !0, !align !3, !noundef !0
  %37 = getelementptr inbounds { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { [0 x i8]*, i32 }]*, i32 }* %35, i32 0, i32 1
  %_25.1 = load i32, i32* %37, align 4
  %s = getelementptr inbounds [0 x { [0 x i8]*, i32 }], [0 x { [0 x i8]*, i32 }]* %_25.0, i32 0, i32 0
  %38 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %s, i32 0, i32 0
  %_26.0 = load [0 x i8]*, [0 x i8]** %38, align 4, !nonnull !0, !align !2, !noundef !0
  %39 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %s, i32 0, i32 1
  %_26.1 = load i32, i32* %39, align 4
  %40 = bitcast { i8*, i32 }* %0 to { [0 x i8]*, i32 }*
  %41 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %40, i32 0, i32 0
  store [0 x i8]* %_26.0, [0 x i8]** %41, align 4
  %42 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %40, i32 0, i32 1
  store i32 %_26.1, i32* %42, align 4
  br label %bb7
}

; core::fmt::Arguments::new_v1
; Function Attrs: inlinehint nounwind
define internal void @_ZN4core3fmt9Arguments6new_v117h9bdc29a40889883fE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %0, [0 x { [0 x i8]*, i32 }]* align 4 %pieces.0, i32 %pieces.1, [0 x { i8*, i32* }]* align 4 %args.0, i32 %args.1) unnamed_addr #0 {
start:
  %_24 = alloca { i32*, i32 }, align 4
  %_16 = alloca %"core::fmt::Arguments", align 4
  %_3 = alloca i8, align 1
  %_4 = icmp ult i32 %pieces.1, %args.1
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_12 = add i32 %args.1, 1
  %_9 = icmp ugt i32 %pieces.1, %_12
  %1 = zext i1 %_9 to i8
  store i8 %1, i8* %_3, align 1
  br label %bb3

bb1:                                              ; preds = %start
  store i8 1, i8* %_3, align 1
  br label %bb3

bb3:                                              ; preds = %bb2, %bb1
  %2 = load i8, i8* %_3, align 1, !range !4, !noundef !0
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb4, label %bb6

bb6:                                              ; preds = %bb3
  %4 = bitcast { i32*, i32 }* %_24 to {}**
  store {}* null, {}** %4, align 4
  %5 = bitcast %"core::fmt::Arguments"* %0 to { [0 x { [0 x i8]*, i32 }]*, i32 }*
  %6 = getelementptr inbounds { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { [0 x i8]*, i32 }]*, i32 }* %5, i32 0, i32 0
  store [0 x { [0 x i8]*, i32 }]* %pieces.0, [0 x { [0 x i8]*, i32 }]** %6, align 4
  %7 = getelementptr inbounds { [0 x { [0 x i8]*, i32 }]*, i32 }, { [0 x { [0 x i8]*, i32 }]*, i32 }* %5, i32 0, i32 1
  store i32 %pieces.1, i32* %7, align 4
  %8 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %0, i32 0, i32 1
  %9 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %_24, i32 0, i32 0
  %10 = load i32*, i32** %9, align 4, !align !3
  %11 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %_24, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %8, i32 0, i32 0
  store i32* %10, i32** %13, align 4
  %14 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %8, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %0, i32 0, i32 2
  %16 = getelementptr inbounds { [0 x { i8*, i32* }]*, i32 }, { [0 x { i8*, i32* }]*, i32 }* %15, i32 0, i32 0
  store [0 x { i8*, i32* }]* %args.0, [0 x { i8*, i32* }]** %16, align 4
  %17 = getelementptr inbounds { [0 x { i8*, i32* }]*, i32 }, { [0 x { i8*, i32* }]*, i32 }* %15, i32 0, i32 1
  store i32 %args.1, i32* %17, align 4
  ret void

bb4:                                              ; preds = %bb3
; call core::fmt::Arguments::new_v1
  call void @_ZN4core3fmt9Arguments6new_v117h9bdc29a40889883fE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_16, [0 x { [0 x i8]*, i32 }]* align 4 bitcast (<{ i8*, [4 x i8] }>* @alloc10 to [0 x { [0 x i8]*, i32 }]*), i32 1, [0 x { i8*, i32* }]* align 4 bitcast (<{}>* @alloc3 to [0 x { i8*, i32* }]*), i32 0) #9
  br label %bb5

bb5:                                              ; preds = %bb4
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17hf804ada72aad06e6E(%"core::fmt::Arguments"* %_16, %"core::panic::location::Location"* align 4 bitcast (<{ i8*, [12 x i8] }>* @alloc52 to %"core::panic::location::Location"*)) #10
  unreachable
}

; core::num::<impl usize>::checked_mul
; Function Attrs: inlinehint nounwind
define internal { i32, i32 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17hc02b86fc3f5c1e43E"(i32 %self, i32 %rhs) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = alloca { i32, i8 }, align 4
  %_5 = alloca { i32, i8 }, align 4
  %2 = alloca { i32, i32 }, align 4
  %3 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %self, i32 %rhs)
  %4 = extractvalue { i32, i1 } %3, 0
  %5 = extractvalue { i32, i1 } %3, 1
  %6 = zext i1 %5 to i8
  %7 = bitcast { i32, i8 }* %1 to i32*
  store i32 %4, i32* %7, align 4
  %8 = getelementptr inbounds { i32, i8 }, { i32, i8 }* %1, i32 0, i32 1
  store i8 %6, i8* %8, align 4
  %9 = getelementptr inbounds { i32, i8 }, { i32, i8 }* %1, i32 0, i32 0
  %_13.0 = load i32, i32* %9, align 4
  %10 = getelementptr inbounds { i32, i8 }, { i32, i8 }* %1, i32 0, i32 1
  %11 = load i8, i8* %10, align 4, !range !4, !noundef !0
  %_13.1 = trunc i8 %11 to i1
  br label %bb5

bb5:                                              ; preds = %start
  %12 = bitcast { i32, i8 }* %_5 to i32*
  store i32 %_13.0, i32* %12, align 4
  %13 = getelementptr inbounds { i32, i8 }, { i32, i8 }* %_5, i32 0, i32 1
  %14 = zext i1 %_13.1 to i8
  store i8 %14, i8* %13, align 4
  %15 = bitcast { i32, i8 }* %_5 to i32*
  %a = load i32, i32* %15, align 4
  %16 = getelementptr inbounds { i32, i8 }, { i32, i8 }* %_5, i32 0, i32 1
  %17 = load i8, i8* %16, align 4, !range !4, !noundef !0
  %b = trunc i8 %17 to i1
  %18 = call i1 @llvm.expect.i1(i1 %b, i1 false)
  %19 = zext i1 %18 to i8
  store i8 %19, i8* %0, align 1
  %20 = load i8, i8* %0, align 1, !range !4, !noundef !0
  %_8 = trunc i8 %20 to i1
  br label %bb1

bb1:                                              ; preds = %bb5
  br i1 %_8, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
  %21 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %2, i32 0, i32 1
  store i32 %a, i32* %21, align 4
  %22 = bitcast { i32, i32 }* %2 to i32*
  store i32 1, i32* %22, align 4
  br label %bb4

bb2:                                              ; preds = %bb1
  %23 = bitcast { i32, i32 }* %2 to i32*
  store i32 0, i32* %23, align 4
  br label %bb4

bb4:                                              ; preds = %bb3, %bb2
  %24 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %2, i32 0, i32 0
  %25 = load i32, i32* %24, align 4, !range !5, !noundef !0
  %26 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %2, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = insertvalue { i32, i32 } undef, i32 %25, 0
  %29 = insertvalue { i32, i32 } %28, i32 %27, 1
  ret { i32, i32 } %29
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint nounwind
define internal void @_ZN4core3ops8function6FnOnce9call_once17h67c2bbf04e31b9bfE(%"alloc::string::String"* sret(%"alloc::string::String") %0, [0 x i8]* align 1 %1, i32 %2) unnamed_addr #0 {
start:
  %_2 = alloca { i8*, i32 }, align 4
  %3 = bitcast { i8*, i32 }* %_2 to { [0 x i8]*, i32 }*
  %4 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %3, i32 0, i32 0
  store [0 x i8]* %1, [0 x i8]** %4, align 4
  %5 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %3, i32 0, i32 1
  store i32 %2, i32* %5, align 4
  %6 = bitcast { i8*, i32 }* %_2 to { [0 x i8]*, i32 }*
  %7 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %6, i32 0, i32 0
  %8 = load [0 x i8]*, [0 x i8]** %7, align 4, !nonnull !0, !align !2, !noundef !0
  %9 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %6, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
; call alloc::str::<impl alloc::borrow::ToOwned for str>::to_owned
  call void @"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h1553a5150b60ac51E"(%"alloc::string::String"* sret(%"alloc::string::String") %0, [0 x i8]* align 1 %8, i32 %10) #9
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::drop_in_place<alloc::string::String>
; Function Attrs: nounwind
define hidden void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9e1e0c57de15a39cE"(%"alloc::string::String"* %_1) unnamed_addr #1 {
start:
  %0 = bitcast %"alloc::string::String"* %_1 to %"alloc::vec::Vec<u8>"*
; call core::ptr::drop_in_place<alloc::vec::Vec<u8>>
  call void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfd065a179a72ec94E"(%"alloc::vec::Vec<u8>"* %0) #9
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::drop_in_place<alloc::vec::Vec<u8>>
; Function Attrs: nounwind
define hidden void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfd065a179a72ec94E"(%"alloc::vec::Vec<u8>"* %_1) unnamed_addr #1 {
start:
; call <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hce95679fe7c9b6bfE"(%"alloc::vec::Vec<u8>"* align 4 %_1) #9
  br label %bb2

bb2:                                              ; preds = %start
  %0 = bitcast %"alloc::vec::Vec<u8>"* %_1 to { i8*, i32 }*
; call core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
  call void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h08c45d6710b12c21E"({ i8*, i32 }* %0) #9
  br label %bb1

bb1:                                              ; preds = %bb2
  ret void
}

; core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
; Function Attrs: nounwind
define hidden void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h08c45d6710b12c21E"({ i8*, i32 }* %_1) unnamed_addr #1 {
start:
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4ab321ce3eb9fcd5E"({ i8*, i32 }* align 4 %_1) #9
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::non_null::NonNull<T>::new
; Function Attrs: inlinehint nounwind
define hidden i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17h12a233ca4ec0c367E"(i8* %ptr) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = alloca {}*, align 4
  %_15 = alloca %"core::ptr::metadata::PtrComponents<u8>", align 4
  %_14 = alloca %"core::ptr::metadata::PtrRepr<u8>", align 4
  %_5 = alloca i8*, align 4
  %2 = alloca i8*, align 4
  %3 = bitcast {}** %1 to i32*
  store i32 0, i32* %3, align 4
  %data_address = load {}*, {}** %1, align 4
  br label %bb4

bb4:                                              ; preds = %start
  %4 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %_15 to {}**
  store {}* %data_address, {}** %4, align 4
  %5 = bitcast %"core::ptr::metadata::PtrRepr<u8>"* %_14 to %"core::ptr::metadata::PtrComponents<u8>"*
  %6 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %5 to i8*
  %7 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %_15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %6, i8* align 4 %7, i32 4, i1 false)
  %8 = bitcast %"core::ptr::metadata::PtrRepr<u8>"* %_14 to i8**
  %other = load i8*, i8** %8, align 4
  %9 = icmp eq i8* %ptr, %other
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %0, align 1
  %11 = load i8, i8* %0, align 1, !range !4, !noundef !0
  %_3 = trunc i8 %11 to i1
  br label %bb5

bb5:                                              ; preds = %bb4
  %_2 = xor i1 %_3, true
  br i1 %_2, label %bb1, label %bb2

bb2:                                              ; preds = %bb5
  %12 = bitcast i8** %2 to {}**
  store {}* null, {}** %12, align 4
  br label %bb3

bb1:                                              ; preds = %bb5
  store i8* %ptr, i8** %_5, align 4
  %13 = load i8*, i8** %_5, align 4, !nonnull !0, !noundef !0
  store i8* %13, i8** %2, align 4
  br label %bb3

bb3:                                              ; preds = %bb2, %bb1
  %14 = load i8*, i8** %2, align 4
  ret i8* %14
}

; core::alloc::layout::Layout::from_size_valid_align
; Function Attrs: inlinehint nounwind
define internal { i32, i32 } @_ZN4core5alloc6layout6Layout21from_size_valid_align17hd13da6260a98dcd4E(i32 %size, i32 %align) unnamed_addr #0 {
start:
  %_11 = alloca { i32, i32 }, align 4
  %self1 = alloca i32, align 4
  %self = alloca i32, align 4
  %0 = alloca { i32, i32 }, align 4
  store i32 %align, i32* %self1, align 4
  %_15 = load i32, i32* %self1, align 4, !range !6, !noundef !0
  store i32 %_15, i32* %self, align 4
  %_8 = load i32, i32* %self, align 4
  %_7 = sub i32 %_8, 1
  %_5 = sub i32 2147483647, %_7
  %_3 = icmp ugt i32 %size, %_5
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %1 = bitcast { i32, i32 }* %_11 to i32*
  store i32 %size, i32* %1, align 4
  %2 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_11, i32 0, i32 1
  store i32 %align, i32* %2, align 4
  %3 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_11, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_11, i32 0, i32 1
  %6 = load i32, i32* %5, align 4, !range !6, !noundef !0
  %7 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0
  store i32 %4, i32* %7, align 4
  %8 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  store i32 %6, i32* %8, align 4
  br label %bb3

bb1:                                              ; preds = %start
  %9 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  store i32 0, i32* %9, align 4
  br label %bb3

bb3:                                              ; preds = %bb2, %bb1
  %10 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1
  %13 = load i32, i32* %12, align 4, !range !1, !noundef !0
  %14 = insertvalue { i32, i32 } undef, i32 %11, 0
  %15 = insertvalue { i32, i32 } %14, i32 %13, 1
  ret { i32, i32 } %15
}

; core::alloc::layout::Layout::array
; Function Attrs: inlinehint nounwind
define hidden { i32, i32 } @_ZN4core5alloc6layout6Layout5array17h45564ab336ad20a4E(i32 %n) unnamed_addr #0 {
start:
  %0 = alloca i32, align 4
  %self1 = alloca { i32, i32 }, align 4
  %self = alloca { i32, i32 }, align 4
  %_3 = alloca { i32, i32 }, align 4
  %1 = alloca { i32, i32 }, align 4
; call core::num::<impl usize>::checked_mul
  %2 = call { i32, i32 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17hc02b86fc3f5c1e43E"(i32 1, i32 %n) #9
  store { i32, i32 } %2, { i32, i32 }* %self1, align 4
  br label %bb1

bb1:                                              ; preds = %start
  %3 = bitcast { i32, i32 }* %self1 to i32*
  %_15 = load i32, i32* %3, align 4, !range !5, !noundef !0
  switch i32 %_15, label %bb9 [
    i32 0, label %bb8
    i32 1, label %bb10
  ]

bb9:                                              ; preds = %bb1
  unreachable

bb8:                                              ; preds = %bb1
  %4 = bitcast { i32, i32 }* %self to i32*
  store i32 1, i32* %4, align 4
  br label %bb11

bb10:                                             ; preds = %bb1
  %5 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self1, i32 0, i32 1
  %v = load i32, i32* %5, align 4
  %6 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 1
  store i32 %v, i32* %6, align 4
  %7 = bitcast { i32, i32 }* %self to i32*
  store i32 0, i32* %7, align 4
  br label %bb11

bb11:                                             ; preds = %bb8, %bb10
  %8 = bitcast { i32, i32 }* %self to i32*
  %_18 = load i32, i32* %8, align 4, !range !5, !noundef !0
  switch i32 %_18, label %bb13 [
    i32 0, label %bb14
    i32 1, label %bb12
  ]

bb13:                                             ; preds = %bb11
  unreachable

bb14:                                             ; preds = %bb11
  %9 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 1
  %v2 = load i32, i32* %9, align 4
  %10 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_3, i32 0, i32 1
  store i32 %v2, i32* %10, align 4
  %11 = bitcast { i32, i32 }* %_3 to i32*
  store i32 0, i32* %11, align 4
  br label %bb2

bb12:                                             ; preds = %bb11
  %12 = bitcast { i32, i32 }* %_3 to i32*
  store i32 1, i32* %12, align 4
  br label %bb2

bb2:                                              ; preds = %bb14, %bb12
  %13 = bitcast { i32, i32 }* %_3 to i32*
  %_9 = load i32, i32* %13, align 4, !range !5, !noundef !0
  switch i32 %_9, label %bb4 [
    i32 0, label %bb3
    i32 1, label %bb5
  ]

bb4:                                              ; preds = %bb2
  unreachable

bb3:                                              ; preds = %bb2
  %14 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_3, i32 0, i32 1
  %val = load i32, i32* %14, align 4
  store i32 1, i32* %0, align 4
  %_14 = load i32, i32* %0, align 4, !range !6, !noundef !0
  br label %bb15

bb5:                                              ; preds = %bb2
; call <T as core::convert::From<T>>::from
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h210eeb884859e639E"() #9
  br label %bb16

bb16:                                             ; preds = %bb5
  %15 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %1, i32 0, i32 1
  store i32 0, i32* %15, align 4
  br label %bb7

bb7:                                              ; preds = %bb6, %bb16
  %16 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %1, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %1, i32 0, i32 1
  %19 = load i32, i32* %18, align 4, !range !1, !noundef !0
  %20 = insertvalue { i32, i32 } undef, i32 %17, 0
  %21 = insertvalue { i32, i32 } %20, i32 %19, 1
  ret { i32, i32 } %21

bb15:                                             ; preds = %bb3
; call core::alloc::layout::Layout::from_size_valid_align
  %22 = call { i32, i32 } @_ZN4core5alloc6layout6Layout21from_size_valid_align17hd13da6260a98dcd4E(i32 %val, i32 %_14) #9
  store { i32, i32 } %22, { i32, i32 }* %1, align 4
  br label %bb6

bb6:                                              ; preds = %bb15
  br label %bb7
}

; core::option::Option<T>::map_or_else
; Function Attrs: inlinehint nounwind
define hidden void @"_ZN4core6option15Option$LT$T$GT$11map_or_else17hbe69f3afadd07176E"(%"alloc::string::String"* sret(%"alloc::string::String") %0, i8* align 1 %1, i32 %2, i32* align 4 %default) unnamed_addr #0 {
start:
  %_12 = alloca i8, align 1
  %_11 = alloca i8, align 1
  %_7 = alloca { i8*, i32 }, align 4
  %self = alloca { i8*, i32 }, align 4
  %3 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %self, i32 0, i32 0
  store i8* %1, i8** %3, align 4
  %4 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %self, i32 0, i32 1
  store i32 %2, i32* %4, align 4
  store i8 1, i8* %_12, align 1
  store i8 1, i8* %_11, align 1
  %5 = bitcast { i8*, i32 }* %self to {}**
  %6 = load {}*, {}** %5, align 4
  %7 = icmp eq {}* %6, null
  %_4 = select i1 %7, i32 0, i32 1
  switch i32 %_4, label %bb2 [
    i32 0, label %bb1
    i32 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  store i8 0, i8* %_12, align 1
; call alloc::fmt::format::{{closure}}
  call void @"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hb718b7dbd2d46182E"(%"alloc::string::String"* sret(%"alloc::string::String") %0, i32* align 4 %default) #9
  br label %bb5

bb3:                                              ; preds = %start
  %8 = bitcast { i8*, i32 }* %self to { [0 x i8]*, i32 }*
  %9 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %8, i32 0, i32 0
  %t.0 = load [0 x i8]*, [0 x i8]** %9, align 4, !nonnull !0, !align !2, !noundef !0
  %10 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %8, i32 0, i32 1
  %t.1 = load i32, i32* %10, align 4
  store i8 0, i8* %_11, align 1
  %11 = bitcast { i8*, i32 }* %_7 to { [0 x i8]*, i32 }*
  %12 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %11, i32 0, i32 0
  store [0 x i8]* %t.0, [0 x i8]** %12, align 4
  %13 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %11, i32 0, i32 1
  store i32 %t.1, i32* %13, align 4
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %_7, i32 0, i32 0
  %15 = load i8*, i8** %14, align 4, !nonnull !0, !align !2, !noundef !0
  %16 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %_7, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = bitcast i8* %15 to [0 x i8]*
; call core::ops::function::FnOnce::call_once
  call void @_ZN4core3ops8function6FnOnce9call_once17h67c2bbf04e31b9bfE(%"alloc::string::String"* sret(%"alloc::string::String") %0, [0 x i8]* align 1 %18, i32 %17) #9
  br label %bb4

bb4:                                              ; preds = %bb3
  br label %bb9

bb9:                                              ; preds = %bb5, %bb4
  %19 = load i8, i8* %_11, align 1, !range !4, !noundef !0
  %20 = trunc i8 %19 to i1
  br i1 %20, label %bb8, label %bb6

bb5:                                              ; preds = %bb1
  br label %bb9

bb6:                                              ; preds = %bb8, %bb9
  %21 = load i8, i8* %_12, align 1, !range !4, !noundef !0
  %22 = trunc i8 %21 to i1
  br i1 %22, label %bb10, label %bb7

bb8:                                              ; preds = %bb9
  br label %bb6

bb7:                                              ; preds = %bb10, %bb6
  ret void

bb10:                                             ; preds = %bb6
  br label %bb7
}

; <T as core::convert::From<T>>::from
; Function Attrs: nounwind
define hidden void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h210eeb884859e639E"() unnamed_addr #1 {
start:
  ret void
}

; <T as core::convert::From<T>>::from
; Function Attrs: nounwind
define hidden void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hfeb50fd181a821d9E"() unnamed_addr #1 {
start:
  ret void
}

; <T as core::convert::Into<U>>::into
; Function Attrs: nounwind
define hidden i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h277775b34f23d5c0E"(i8* %self) unnamed_addr #1 {
start:
; call <core::ptr::non_null::NonNull<T> as core::convert::From<core::ptr::unique::Unique<T>>>::from
  %0 = call i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17hdca87b2c2a810f18E"(i8* %self) #9
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; <T as core::convert::Into<U>>::into
; Function Attrs: nounwind
define hidden { i32, i32 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hadc562ca700bef4eE"(i32 %self.0, i32 %self.1) unnamed_addr #1 {
start:
; call <alloc::collections::TryReserveError as core::convert::From<alloc::collections::TryReserveErrorKind>>::from
  %0 = call { i32, i32 } @"_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17h4ea7d6739bb24878E"(i32 %self.0, i32 %self.1) #9
  %1 = extractvalue { i32, i32 } %0, 0
  %2 = extractvalue { i32, i32 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i32, i32 } undef, i32 %1, 0
  %4 = insertvalue { i32, i32 } %3, i32 %2, 1
  ret { i32, i32 } %4
}

; <T as alloc::slice::hack::ConvertVec>::to_vec
; Function Attrs: inlinehint nounwind
define hidden void @"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17hc0137a82474ea66fE"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %v, [0 x i8]* align 1 %s.0, i32 %s.1) unnamed_addr #0 {
start:
  %called_at_rt = alloca %"[closure@core::intrinsics::copy_nonoverlapping<u8>::{closure#0}]", align 4
  %runtime = alloca %"[closure@core::intrinsics::copy_nonoverlapping<u8>::{closure#0}]", align 4
  %_19 = alloca i8, align 1
  store i8 0, i8* %_19, align 1
  %0 = load i8, i8* %_19, align 1, !range !4, !noundef !0
  %1 = trunc i8 %0 to i1
; call alloc::raw_vec::RawVec<T,A>::allocate_in
  %2 = call { i8*, i32 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17hef6a7fd254e2e21cE"(i32 %s.1, i1 zeroext %1) #9
  %_15.0 = extractvalue { i8*, i32 } %2, 0
  %_15.1 = extractvalue { i8*, i32 } %2, 1
  br label %bb2

bb2:                                              ; preds = %start
  %3 = bitcast %"alloc::vec::Vec<u8>"* %v to { i8*, i32 }*
  %4 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 0
  store i8* %_15.0, i8** %4, align 4
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  store i32 %_15.1, i32* %5, align 4
  %6 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %v, i32 0, i32 1
  store i32 0, i32* %6, align 4
  %self = bitcast [0 x i8]* %s.0 to i8*
; call alloc::vec::Vec<T,A>::as_mut_ptr
  %dest = call i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h4f62ecf149d4b678E"(%"alloc::vec::Vec<u8>"* align 4 %v) #9
  br label %bb1

bb1:                                              ; preds = %bb2
  %7 = mul i32 %s.1, 1
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %dest, i8* align 1 %self, i32 %7, i1 false)
  %8 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %v, i32 0, i32 1
  store i32 %s.1, i32* %8, align 4
  ret void
}

; alloc::fmt::format
; Function Attrs: inlinehint nounwind
define internal void @_ZN5alloc3fmt6format17h0ddb8b9402f24066E(%"alloc::string::String"* sret(%"alloc::string::String") %0, %"core::fmt::Arguments"* %args) unnamed_addr #0 {
start:
  %_4 = alloca i32*, align 4
; call core::fmt::Arguments::as_str
  %1 = call { i8*, i32 } @_ZN4core3fmt9Arguments6as_str17h6c048777e53bb710E(%"core::fmt::Arguments"* align 4 %args) #9
  %_2.0 = extractvalue { i8*, i32 } %1, 0
  %_2.1 = extractvalue { i8*, i32 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast i32** %_4 to %"core::fmt::Arguments"**
  store %"core::fmt::Arguments"* %args, %"core::fmt::Arguments"** %2, align 4
  %3 = load i32*, i32** %_4, align 4, !nonnull !0, !align !3, !noundef !0
; call core::option::Option<T>::map_or_else
  call void @"_ZN4core6option15Option$LT$T$GT$11map_or_else17hbe69f3afadd07176E"(%"alloc::string::String"* sret(%"alloc::string::String") %0, i8* align 1 %_2.0, i32 %_2.1, i32* align 4 %3) #9
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; alloc::fmt::format::{{closure}}
; Function Attrs: inlinehint nounwind
define hidden void @"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17hb718b7dbd2d46182E"(%"alloc::string::String"* sret(%"alloc::string::String") %0, i32* align 4 %1) unnamed_addr #0 {
start:
  %_2 = alloca %"core::fmt::Arguments", align 4
  %_1 = alloca i32*, align 4
  store i32* %1, i32** %_1, align 4
  %2 = bitcast i32** %_1 to %"core::fmt::Arguments"**
  %_3 = load %"core::fmt::Arguments"*, %"core::fmt::Arguments"** %2, align 4, !nonnull !0, !align !3, !noundef !0
  %3 = bitcast %"core::fmt::Arguments"* %_2 to i8*
  %4 = bitcast %"core::fmt::Arguments"* %_3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %3, i8* align 4 %4, i32 24, i1 false)
; call alloc::fmt::format::format_inner
  call void @_ZN5alloc3fmt6format12format_inner17h22d8f2aeecf02b15E(%"alloc::string::String"* sret(%"alloc::string::String") %0, %"core::fmt::Arguments"* %_2) #9
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; alloc::str::<impl alloc::borrow::ToOwned for str>::to_owned
; Function Attrs: inlinehint nounwind
define internal void @"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h1553a5150b60ac51E"(%"alloc::string::String"* sret(%"alloc::string::String") %0, [0 x i8]* align 1 %self.0, i32 %self.1) unnamed_addr #0 {
start:
  %1 = alloca { [0 x i8]*, i32 }, align 4
  %_7 = alloca %"alloc::vec::Vec<u8>", align 4
  %bytes = alloca %"alloc::vec::Vec<u8>", align 4
  %2 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %1, i32 0, i32 0
  store [0 x i8]* %self.0, [0 x i8]** %2, align 4
  %3 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %1, i32 0, i32 1
  store i32 %self.1, i32* %3, align 4
  %4 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %1, i32 0, i32 0
  %_4.0 = load [0 x i8]*, [0 x i8]** %4, align 4, !nonnull !0, !align !2, !noundef !0
  %5 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %1, i32 0, i32 1
  %_4.1 = load i32, i32* %5, align 4
  br label %bb2

bb2:                                              ; preds = %start
; call alloc::slice::<impl alloc::borrow::ToOwned for [T]>::to_owned
  call void @"_ZN5alloc5slice64_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$8to_owned17he23934b708e05692E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %bytes, [0 x i8]* align 1 %_4.0, i32 %_4.1) #9
  br label %bb1

bb1:                                              ; preds = %bb2
  %6 = bitcast %"alloc::vec::Vec<u8>"* %_7 to i8*
  %7 = bitcast %"alloc::vec::Vec<u8>"* %bytes to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %6, i8* align 4 %7, i32 12, i1 false)
  %8 = bitcast %"alloc::string::String"* %0 to %"alloc::vec::Vec<u8>"*
  %9 = bitcast %"alloc::vec::Vec<u8>"* %8 to i8*
  %10 = bitcast %"alloc::vec::Vec<u8>"* %_7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %9, i8* align 4 %10, i32 12, i1 false)
  ret void
}

; alloc::vec::Vec<T,A>::as_mut_ptr
; Function Attrs: inlinehint nounwind
define hidden i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h4f62ecf149d4b678E"(%"alloc::vec::Vec<u8>"* align 4 %self) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = alloca {}*, align 4
  %_18 = alloca %"core::ptr::metadata::PtrComponents<u8>", align 4
  %_17 = alloca %"core::ptr::metadata::PtrRepr<u8>", align 4
  %self1 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i32 }*
  %2 = bitcast { i8*, i32 }* %self1 to i8**
  %self2 = load i8*, i8** %2, align 4, !nonnull !0, !noundef !0
  %3 = bitcast {}** %1 to i32*
  store i32 0, i32* %3, align 4
  %data_address = load {}*, {}** %1, align 4
  br label %bb2

bb2:                                              ; preds = %start
  %4 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %_18 to {}**
  store {}* %data_address, {}** %4, align 4
  %5 = bitcast %"core::ptr::metadata::PtrRepr<u8>"* %_17 to %"core::ptr::metadata::PtrComponents<u8>"*
  %6 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %5 to i8*
  %7 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %_18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %6, i8* align 4 %7, i32 4, i1 false)
  %8 = bitcast %"core::ptr::metadata::PtrRepr<u8>"* %_17 to i8**
  %other = load i8*, i8** %8, align 4
  %9 = icmp eq i8* %self2, %other
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %0, align 1
  %11 = load i8, i8* %0, align 1, !range !4, !noundef !0
  %_5 = trunc i8 %11 to i1
  br label %bb3

bb3:                                              ; preds = %bb2
  %_4 = xor i1 %_5, true
  call void @llvm.assume(i1 %_4)
  br label %bb1

bb1:                                              ; preds = %bb3
  ret i8* %self2
}

; alloc::alloc::Global::alloc_impl
; Function Attrs: inlinehint nounwind
define internal { i8*, i32 } @_ZN5alloc5alloc6Global10alloc_impl17ha302ae7786c1d6e6E(%"alloc::alloc::Global"* align 1 %self, i32 %0, i32 %1, i1 zeroext %zeroed) unnamed_addr #0 {
start:
  %2 = alloca i8*, align 4
  %_103 = alloca { i8*, i32 }, align 4
  %_102 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 4
  %self10 = alloca i32, align 4
  %self9 = alloca i32, align 4
  %self8 = alloca i32, align 4
  %self7 = alloca i32, align 4
  %_54 = alloca { i8*, i32 }, align 4
  %_53 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 4
  %self6 = alloca i32, align 4
  %self5 = alloca i32, align 4
  %_24 = alloca { i8*, i32 }, align 4
  %self4 = alloca i8*, align 4
  %self3 = alloca i8*, align 4
  %_15 = alloca i8*, align 4
  %layout2 = alloca { i32, i32 }, align 4
  %layout1 = alloca { i32, i32 }, align 4
  %raw_ptr = alloca i8*, align 4
  %data = alloca i8*, align 4
  %_6 = alloca { i8*, i32 }, align 4
  %3 = alloca { i8*, i32 }, align 4
  %layout = alloca { i32, i32 }, align 4
  %4 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 0
  store i32 %0, i32* %4, align 4
  %5 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 1
  store i32 %1, i32* %5, align 4
  %6 = bitcast { i32, i32 }* %layout to i32*
  %_4 = load i32, i32* %6, align 4
  %7 = icmp eq i32 %_4, 0
  br i1 %7, label %bb2, label %bb1

bb2:                                              ; preds = %start
  %8 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 1
  %9 = load i32, i32* %8, align 4, !range !6, !noundef !0
  store i32 %9, i32* %self6, align 4
  %_33 = load i32, i32* %self6, align 4, !range !6, !noundef !0
  store i32 %_33, i32* %self5, align 4
  %addr = load i32, i32* %self5, align 4
  %10 = bitcast i8** %2 to i32*
  store i32 %addr, i32* %10, align 4
  %ptr = load i8*, i8** %2, align 4
  br label %bb13

bb1:                                              ; preds = %start
  br i1 %zeroed, label %bb3, label %bb4

bb4:                                              ; preds = %bb1
  %11 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 1
  %14 = load i32, i32* %13, align 4, !range !6, !noundef !0
  %15 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout2, i32 0, i32 0
  store i32 %12, i32* %15, align 4
  %16 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout2, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = bitcast { i32, i32 }* %layout2 to i32*
  %_73 = load i32, i32* %17, align 4
  %18 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout2, i32 0, i32 1
  %19 = load i32, i32* %18, align 4, !range !6, !noundef !0
  store i32 %19, i32* %self10, align 4
  %_80 = load i32, i32* %self10, align 4, !range !6, !noundef !0
  store i32 %_80, i32* %self9, align 4
  %_75 = load i32, i32* %self9, align 4
  %20 = call i8* @__rust_alloc(i32 %_73, i32 %_75) #9
  store i8* %20, i8** %raw_ptr, align 4
  br label %bb15

bb3:                                              ; preds = %bb1
  %21 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 1
  %24 = load i32, i32* %23, align 4, !range !6, !noundef !0
  %25 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout1, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout1, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = bitcast { i32, i32 }* %layout1 to i32*
  %_60 = load i32, i32* %27, align 4
  %28 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout1, i32 0, i32 1
  %29 = load i32, i32* %28, align 4, !range !6, !noundef !0
  store i32 %29, i32* %self8, align 4
  %_67 = load i32, i32* %self8, align 4, !range !6, !noundef !0
  store i32 %_67, i32* %self7, align 4
  %_62 = load i32, i32* %self7, align 4
  %30 = call i8* @__rust_alloc_zeroed(i32 %_60, i32 %_62) #9
  store i8* %30, i8** %raw_ptr, align 4
  br label %bb14

bb14:                                             ; preds = %bb3
  br label %bb5

bb5:                                              ; preds = %bb15, %bb14
  %_18 = load i8*, i8** %raw_ptr, align 4
; call core::ptr::non_null::NonNull<T>::new
  %31 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17h12a233ca4ec0c367E"(i8* %_18) #9
  store i8* %31, i8** %self4, align 4
  br label %bb6

bb15:                                             ; preds = %bb4
  br label %bb5

bb6:                                              ; preds = %bb5
  %32 = bitcast i8** %self4 to {}**
  %33 = load {}*, {}** %32, align 4
  %34 = icmp eq {}* %33, null
  %_86 = select i1 %34, i32 0, i32 1
  switch i32 %_86, label %bb17 [
    i32 0, label %bb16
    i32 1, label %bb18
  ]

bb17:                                             ; preds = %bb6
  unreachable

bb16:                                             ; preds = %bb6
  %35 = bitcast i8** %self3 to {}**
  store {}* null, {}** %35, align 4
  br label %bb19

bb18:                                             ; preds = %bb6
  %v = load i8*, i8** %self4, align 4, !nonnull !0, !noundef !0
  store i8* %v, i8** %self3, align 4
  br label %bb19

bb19:                                             ; preds = %bb16, %bb18
  %36 = bitcast i8** %self3 to {}**
  %37 = load {}*, {}** %36, align 4
  %38 = icmp eq {}* %37, null
  %_89 = select i1 %38, i32 1, i32 0
  switch i32 %_89, label %bb21 [
    i32 0, label %bb22
    i32 1, label %bb20
  ]

bb21:                                             ; preds = %bb19
  unreachable

bb22:                                             ; preds = %bb19
  %v11 = load i8*, i8** %self3, align 4, !nonnull !0, !noundef !0
  store i8* %v11, i8** %_15, align 4
  br label %bb7

bb20:                                             ; preds = %bb19
  %39 = bitcast i8** %_15 to {}**
  store {}* null, {}** %39, align 4
  br label %bb7

bb7:                                              ; preds = %bb22, %bb20
  %40 = bitcast i8** %_15 to {}**
  %41 = load {}*, {}** %40, align 4
  %42 = icmp eq {}* %41, null
  %_20 = select i1 %42, i32 1, i32 0
  switch i32 %_20, label %bb9 [
    i32 0, label %bb8
    i32 1, label %bb10
  ]

bb9:                                              ; preds = %bb7
  unreachable

bb8:                                              ; preds = %bb7
  %val = load i8*, i8** %_15, align 4, !nonnull !0, !noundef !0
  %data_address = bitcast i8* %val to {}*
  %43 = bitcast { i8*, i32 }* %_103 to {}**
  store {}* %data_address, {}** %43, align 4
  %44 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %_103, i32 0, i32 1
  store i32 %_4, i32* %44, align 4
  %45 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_102 to { i8*, i32 }*
  %46 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %_103, i32 0, i32 0
  %47 = load i8*, i8** %46, align 4
  %48 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %_103, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %45, i32 0, i32 0
  store i8* %47, i8** %50, align 4
  %51 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %45, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_102 to { [0 x i8]*, i32 }*
  %53 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %52, i32 0, i32 0
  %ptr.0 = load [0 x i8]*, [0 x i8]** %53, align 4
  %54 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %52, i32 0, i32 1
  %ptr.1 = load i32, i32* %54, align 4
  %55 = bitcast { i8*, i32 }* %_24 to { [0 x i8]*, i32 }*
  %56 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %55, i32 0, i32 0
  store [0 x i8]* %ptr.0, [0 x i8]** %56, align 4
  %57 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %55, i32 0, i32 1
  store i32 %ptr.1, i32* %57, align 4
  %58 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %_24, i32 0, i32 0
  %59 = load i8*, i8** %58, align 4, !nonnull !0, !noundef !0
  %60 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %_24, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 0
  store i8* %59, i8** %62, align 4
  %63 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %bb11

bb10:                                             ; preds = %bb7
; call <T as core::convert::From<T>>::from
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hfeb50fd181a821d9E"() #9
  br label %bb23

bb23:                                             ; preds = %bb10
  %64 = bitcast { i8*, i32 }* %3 to {}**
  store {}* null, {}** %64, align 4
  br label %bb12

bb12:                                             ; preds = %bb11, %bb23
  %65 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 0
  %66 = load i8*, i8** %65, align 4
  %67 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = insertvalue { i8*, i32 } undef, i8* %66, 0
  %70 = insertvalue { i8*, i32 } %69, i32 %68, 1
  ret { i8*, i32 } %70

bb11:                                             ; preds = %bb13, %bb8
  br label %bb12

bb13:                                             ; preds = %bb2
  store i8* %ptr, i8** %data, align 4
  %self12 = load i8*, i8** %data, align 4, !nonnull !0, !noundef !0
  %data_address13 = bitcast i8* %self12 to {}*
  %71 = bitcast { i8*, i32 }* %_54 to {}**
  store {}* %data_address13, {}** %71, align 4
  %72 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %_54, i32 0, i32 1
  store i32 0, i32* %72, align 4
  %73 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_53 to { i8*, i32 }*
  %74 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %_54, i32 0, i32 0
  %75 = load i8*, i8** %74, align 4
  %76 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %_54, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %73, i32 0, i32 0
  store i8* %75, i8** %78, align 4
  %79 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %73, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_53 to { [0 x i8]*, i32 }*
  %81 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %80, i32 0, i32 0
  %ptr.014 = load [0 x i8]*, [0 x i8]** %81, align 4
  %82 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %80, i32 0, i32 1
  %ptr.115 = load i32, i32* %82, align 4
  %83 = bitcast { i8*, i32 }* %_6 to { [0 x i8]*, i32 }*
  %84 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %83, i32 0, i32 0
  store [0 x i8]* %ptr.014, [0 x i8]** %84, align 4
  %85 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %83, i32 0, i32 1
  store i32 %ptr.115, i32* %85, align 4
  %86 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %_6, i32 0, i32 0
  %87 = load i8*, i8** %86, align 4, !nonnull !0, !noundef !0
  %88 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %_6, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 0
  store i8* %87, i8** %90, align 4
  %91 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  br label %bb11
}

; alloc::slice::<impl alloc::borrow::ToOwned for [T]>::to_owned
; Function Attrs: nounwind
define hidden void @"_ZN5alloc5slice64_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$8to_owned17he23934b708e05692E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %self.0, i32 %self.1) unnamed_addr #1 {
start:
; call <T as alloc::slice::hack::ConvertVec>::to_vec
  call void @"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17hc0137a82474ea66fE"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %self.0, i32 %self.1) #9
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; alloc::raw_vec::RawVec<T,A>::allocate_in
; Function Attrs: nounwind
define hidden { i8*, i32 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17hef6a7fd254e2e21cE"(i32 %capacity, i1 zeroext %0) unnamed_addr #1 {
start:
  %_51 = alloca i8*, align 4
  %_42 = alloca { i32, i32 }, align 4
  %self = alloca i8*, align 4
  %_31 = alloca i8*, align 4
  %result = alloca { i8*, i32 }, align 4
  %_15 = alloca { i32, i32 }, align 4
  %_10 = alloca { i32, i32 }, align 4
  %layout = alloca { i32, i32 }, align 4
  %_4 = alloca i8, align 1
  %1 = alloca { i8*, i32 }, align 4
  %alloc = alloca %"alloc::alloc::Global", align 1
  %init = alloca i8, align 1
  %2 = zext i1 %0 to i8
  store i8 %2, i8* %init, align 1
  br i1 false, label %bb1, label %bb2

bb1:                                              ; preds = %start
  store i8 1, i8* %_4, align 1
  br label %bb3

bb2:                                              ; preds = %start
  %_6 = icmp eq i32 %capacity, 0
  %3 = zext i1 %_6 to i8
  store i8 %3, i8* %_4, align 1
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %4 = load i8, i8* %_4, align 1, !range !4, !noundef !0
  %5 = trunc i8 %4 to i1
  br i1 %5, label %bb4, label %bb6

bb6:                                              ; preds = %bb3
; call core::alloc::layout::Layout::array
  %6 = call { i32, i32 } @_ZN4core5alloc6layout6Layout5array17h45564ab336ad20a4E(i32 %capacity) #9
  store { i32, i32 } %6, { i32, i32 }* %_10, align 4
  br label %bb7

bb4:                                              ; preds = %bb3
; call alloc::raw_vec::RawVec<T,A>::new_in
  %7 = call { i8*, i32 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17h4a2b49c1bacd261bE"() #9
  store { i8*, i32 } %7, { i8*, i32 }* %1, align 4
  br label %bb5

bb5:                                              ; preds = %bb4
  br label %bb23

bb23:                                             ; preds = %bb22, %bb5
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  %9 = load i8*, i8** %8, align 4, !nonnull !0, !noundef !0
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = insertvalue { i8*, i32 } undef, i8* %9, 0
  %13 = insertvalue { i8*, i32 } %12, i32 %11, 1
  ret { i8*, i32 } %13

bb7:                                              ; preds = %bb6
  %14 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_10, i32 0, i32 1
  %15 = load i32, i32* %14, align 4, !range !1, !noundef !0
  %16 = icmp eq i32 %15, 0
  %_12 = select i1 %16, i32 1, i32 0
  switch i32 %_12, label %bb9 [
    i32 0, label %bb10
    i32 1, label %bb8
  ]

bb9:                                              ; preds = %bb7
  unreachable

bb10:                                             ; preds = %bb7
  %17 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_10, i32 0, i32 0
  %layout.0 = load i32, i32* %17, align 4
  %18 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_10, i32 0, i32 1
  %layout.1 = load i32, i32* %18, align 4, !range !6, !noundef !0
  %19 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 0
  store i32 %layout.0, i32* %19, align 4
  %20 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 1
  store i32 %layout.1, i32* %20, align 4
  %21 = bitcast { i32, i32 }* %layout to i32*
  %alloc_size = load i32, i32* %21, align 4
  %_38 = icmp ugt i32 %alloc_size, 2147483647
  br i1 %_38, label %bb24, label %bb26

bb8:                                              ; preds = %bb7
; call alloc::raw_vec::capacity_overflow
  call void @_ZN5alloc7raw_vec17capacity_overflow17h08312b6db3afe887E() #10
  unreachable

bb26:                                             ; preds = %bb10
  %22 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_15, i32 0, i32 1
  store i32 -2147483647, i32* %22, align 4
  br label %bb27

bb24:                                             ; preds = %bb10
  %23 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_42, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_42, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_42, i32 0, i32 1
  %27 = load i32, i32* %26, align 4, !range !1, !noundef !0
; call <T as core::convert::Into<U>>::into
  %28 = call { i32, i32 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hadc562ca700bef4eE"(i32 %25, i32 %27) #9
  %_41.0 = extractvalue { i32, i32 } %28, 0
  %_41.1 = extractvalue { i32, i32 } %28, 1
  br label %bb25

bb25:                                             ; preds = %bb24
  %29 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_15, i32 0, i32 0
  store i32 %_41.0, i32* %29, align 4
  %30 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_15, i32 0, i32 1
  store i32 %_41.1, i32* %30, align 4
  br label %bb27

bb27:                                             ; preds = %bb26, %bb25
  %31 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %_15, i32 0, i32 1
  %32 = load i32, i32* %31, align 4, !range !7, !noundef !0
  %33 = sub i32 %32, -2147483647
  %34 = icmp eq i32 %33, 0
  %_18 = select i1 %34, i32 0, i32 1
  switch i32 %_18, label %bb12 [
    i32 0, label %bb13
    i32 1, label %bb11
  ]

bb12:                                             ; preds = %bb27
  unreachable

bb13:                                             ; preds = %bb27
  %35 = load i8, i8* %init, align 1, !range !4, !noundef !0
  %36 = trunc i8 %35 to i1
  %_21 = zext i1 %36 to i32
  switch i32 %_21, label %bb15 [
    i32 0, label %bb16
    i32 1, label %bb14
  ]

bb11:                                             ; preds = %bb27
; call alloc::raw_vec::capacity_overflow
  call void @_ZN5alloc7raw_vec17capacity_overflow17h08312b6db3afe887E() #10
  unreachable

bb15:                                             ; preds = %bb13
  unreachable

bb16:                                             ; preds = %bb13
  %37 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 0
  %_23.0 = load i32, i32* %37, align 4
  %38 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 1
  %_23.1 = load i32, i32* %38, align 4, !range !6, !noundef !0
; call <alloc::alloc::Global as core::alloc::Allocator>::allocate
  %39 = call { i8*, i32 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h7e592bbc45d6695bE"(%"alloc::alloc::Global"* align 1 %alloc, i32 %_23.0, i32 %_23.1) #9
  store { i8*, i32 } %39, { i8*, i32 }* %result, align 4
  br label %bb17

bb14:                                             ; preds = %bb13
  %40 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 0
  %_25.0 = load i32, i32* %40, align 4
  %41 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 1
  %_25.1 = load i32, i32* %41, align 4, !range !6, !noundef !0
; call <alloc::alloc::Global as core::alloc::Allocator>::allocate_zeroed
  %42 = call { i8*, i32 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17hcaa03d9d800af6f6E"(%"alloc::alloc::Global"* align 1 %alloc, i32 %_25.0, i32 %_25.1) #9
  store { i8*, i32 } %42, { i8*, i32 }* %result, align 4
  br label %bb18

bb18:                                             ; preds = %bb14
  br label %bb19

bb19:                                             ; preds = %bb17, %bb18
  %43 = bitcast { i8*, i32 }* %result to {}**
  %44 = load {}*, {}** %43, align 4
  %45 = icmp eq {}* %44, null
  %_27 = select i1 %45, i32 1, i32 0
  switch i32 %_27, label %bb21 [
    i32 0, label %bb22
    i32 1, label %bb20
  ]

bb17:                                             ; preds = %bb16
  br label %bb19

bb21:                                             ; preds = %bb19
  unreachable

bb22:                                             ; preds = %bb19
  %46 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %result, i32 0, i32 0
  %ptr.0 = load i8*, i8** %46, align 4, !nonnull !0, !noundef !0
  %47 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %result, i32 0, i32 1
  %ptr.1 = load i32, i32* %47, align 4
  %_46.0 = bitcast i8* %ptr.0 to [0 x i8]*
  %ptr = bitcast [0 x i8]* %_46.0 to i8*
  store i8* %ptr, i8** %self, align 4
  %_50 = load i8*, i8** %self, align 4
  store i8* %_50, i8** %_51, align 4
  %48 = load i8*, i8** %_51, align 4, !nonnull !0, !noundef !0
  store i8* %48, i8** %_31, align 4
  %49 = bitcast { i8*, i32 }* %1 to i8**
  %50 = load i8*, i8** %_31, align 4, !nonnull !0, !noundef !0
  store i8* %50, i8** %49, align 4
  %51 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %capacity, i32* %51, align 4
  %52 = bitcast { i8*, i32 }* %1 to %"alloc::alloc::Global"*
  br label %bb23

bb20:                                             ; preds = %bb19
  %53 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 0
  %_30.0 = load i32, i32* %53, align 4
  %54 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 1
  %_30.1 = load i32, i32* %54, align 4, !range !6, !noundef !0
; call alloc::alloc::handle_alloc_error
  call void @_ZN5alloc5alloc18handle_alloc_error17ha093ef8cd3f11f37E(i32 %_30.0, i32 %_30.1) #10
  unreachable
}

; alloc::raw_vec::RawVec<T,A>::current_memory
; Function Attrs: nounwind
define hidden void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h1ab4562c7b35e85eE"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %0, { i8*, i32 }* align 4 %self) unnamed_addr #1 {
start:
  %pointer = alloca i8*, align 4
  %_11 = alloca i8*, align 4
  %_9 = alloca { i8*, { i32, i32 } }, align 4
  %self1 = alloca { i32, i32 }, align 4
  %_2 = alloca i8, align 1
  br i1 false, label %bb1, label %bb2

bb1:                                              ; preds = %start
  store i8 1, i8* %_2, align 1
  br label %bb3

bb2:                                              ; preds = %start
  %1 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %self, i32 0, i32 1
  %_5 = load i32, i32* %1, align 4
  %_4 = icmp eq i32 %_5, 0
  %2 = zext i1 %_4 to i8
  store i8 %2, i8* %_2, align 1
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %3 = load i8, i8* %_2, align 1, !range !4, !noundef !0
  %4 = trunc i8 %3 to i1
  br i1 %4, label %bb4, label %bb5

bb5:                                              ; preds = %bb3
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %self, i32 0, i32 1
  %_8 = load i32, i32* %5, align 4
; call core::alloc::layout::Layout::array
  %6 = call { i32, i32 } @_ZN4core5alloc6layout6Layout5array17h45564ab336ad20a4E(i32 %_8) #9
  store { i32, i32 } %6, { i32, i32 }* %self1, align 4
  br label %bb6

bb4:                                              ; preds = %bb3
  %7 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %0, i32 0, i32 1
  store i32 0, i32* %7, align 4
  br label %bb8

bb8:                                              ; preds = %bb7, %bb4
  ret void

bb6:                                              ; preds = %bb5
  %8 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self1, i32 0, i32 1
  %9 = load i32, i32* %8, align 4, !range !1, !noundef !0
  %10 = icmp eq i32 %9, 0
  %_15 = select i1 %10, i32 1, i32 0
  switch i32 %_15, label %bb10 [
    i32 0, label %bb11
    i32 1, label %bb9
  ]

bb10:                                             ; preds = %bb6
  unreachable

bb11:                                             ; preds = %bb6
  %11 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self1, i32 0, i32 0
  %t.0 = load i32, i32* %11, align 4
  %12 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self1, i32 0, i32 1
  %t.1 = load i32, i32* %12, align 4, !range !6, !noundef !0
  %13 = bitcast { i8*, i32 }* %self to i8**
  %self2 = load i8*, i8** %13, align 4, !nonnull !0, !noundef !0
  store i8* %self2, i8** %pointer, align 4
  %_26 = load i8*, i8** %pointer, align 4, !nonnull !0, !noundef !0
  store i8* %_26, i8** %_11, align 4
  %14 = load i8*, i8** %_11, align 4, !nonnull !0, !noundef !0
; call <T as core::convert::Into<U>>::into
  %_10 = call i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h277775b34f23d5c0E"(i8* %14) #9
  br label %bb7

bb9:                                              ; preds = %bb6
  unreachable

bb7:                                              ; preds = %bb11
  %15 = bitcast { i8*, { i32, i32 } }* %_9 to i8**
  store i8* %_10, i8** %15, align 4
  %16 = getelementptr inbounds { i8*, { i32, i32 } }, { i8*, { i32, i32 } }* %_9, i32 0, i32 1
  %17 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %16, i32 0, i32 0
  store i32 %t.0, i32* %17, align 4
  %18 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %16, i32 0, i32 1
  store i32 %t.1, i32* %18, align 4
  %19 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %0 to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %20 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %19 to { i8*, { i32, i32 } }*
  %21 = bitcast { i8*, { i32, i32 } }* %20 to i8*
  %22 = bitcast { i8*, { i32, i32 } }* %_9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %21, i8* align 4 %22, i32 12, i1 false)
  br label %bb8
}

; alloc::raw_vec::RawVec<T,A>::new_in
; Function Attrs: nounwind
define hidden { i8*, i32 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17h4a2b49c1bacd261bE"() unnamed_addr #1 {
start:
  %0 = alloca i8*, align 4
  %pointer = alloca i8*, align 4
  %_2 = alloca i8*, align 4
  %1 = alloca { i8*, i32 }, align 4
  %2 = bitcast i8** %0 to i32*
  store i32 1, i32* %2, align 4
  %ptr = load i8*, i8** %0, align 4
  br label %bb1

bb1:                                              ; preds = %start
  store i8* %ptr, i8** %pointer, align 4
  %_12 = load i8*, i8** %pointer, align 4, !nonnull !0, !noundef !0
  store i8* %_12, i8** %_2, align 4
  %3 = bitcast { i8*, i32 }* %1 to i8**
  %4 = load i8*, i8** %_2, align 4, !nonnull !0, !noundef !0
  store i8* %4, i8** %3, align 4
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 0, i32* %5, align 4
  %6 = bitcast { i8*, i32 }* %1 to %"alloc::alloc::Global"*
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  %8 = load i8*, i8** %7, align 4, !nonnull !0, !noundef !0
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = insertvalue { i8*, i32 } undef, i8* %8, 0
  %12 = insertvalue { i8*, i32 } %11, i32 %10, 1
  ret { i8*, i32 } %12
}

; <alloc::alloc::Global as core::alloc::Allocator>::deallocate
; Function Attrs: inlinehint nounwind
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hb32164a49ab9b9feE"(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i32 %0, i32 %1) unnamed_addr #0 {
start:
  %self3 = alloca i32, align 4
  %self2 = alloca i32, align 4
  %layout1 = alloca { i32, i32 }, align 4
  %layout = alloca { i32, i32 }, align 4
  %2 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 0
  store i32 %0, i32* %2, align 4
  %3 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 1
  store i32 %1, i32* %3, align 4
  %4 = bitcast { i32, i32 }* %layout to i32*
  %_4 = load i32, i32* %4, align 4
  %5 = icmp eq i32 %_4, 0
  br i1 %5, label %bb2, label %bb1

bb2:                                              ; preds = %start
  br label %bb3

bb1:                                              ; preds = %start
  %6 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout, i32 0, i32 1
  %9 = load i32, i32* %8, align 4, !range !6, !noundef !0
  %10 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout1, i32 0, i32 0
  store i32 %7, i32* %10, align 4
  %11 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout1, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = bitcast { i32, i32 }* %layout1 to i32*
  %_11 = load i32, i32* %12, align 4
  %13 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %layout1, i32 0, i32 1
  %14 = load i32, i32* %13, align 4, !range !6, !noundef !0
  store i32 %14, i32* %self3, align 4
  %_18 = load i32, i32* %self3, align 4, !range !6, !noundef !0
  store i32 %_18, i32* %self2, align 4
  %_13 = load i32, i32* %self2, align 4
  call void @__rust_dealloc(i8* %ptr, i32 %_11, i32 %_13) #9
  br label %bb4

bb4:                                              ; preds = %bb1
  br label %bb3

bb3:                                              ; preds = %bb2, %bb4
  ret void
}

; <alloc::alloc::Global as core::alloc::Allocator>::allocate_zeroed
; Function Attrs: inlinehint nounwind
define internal { i8*, i32 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17hcaa03d9d800af6f6E"(%"alloc::alloc::Global"* align 1 %self, i32 %layout.0, i32 %layout.1) unnamed_addr #0 {
start:
; call alloc::alloc::Global::alloc_impl
  %0 = call { i8*, i32 } @_ZN5alloc5alloc6Global10alloc_impl17ha302ae7786c1d6e6E(%"alloc::alloc::Global"* align 1 %self, i32 %layout.0, i32 %layout.1, i1 zeroext true) #9
  %1 = extractvalue { i8*, i32 } %0, 0
  %2 = extractvalue { i8*, i32 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i32 } undef, i8* %1, 0
  %4 = insertvalue { i8*, i32 } %3, i32 %2, 1
  ret { i8*, i32 } %4
}

; <alloc::alloc::Global as core::alloc::Allocator>::allocate
; Function Attrs: inlinehint nounwind
define internal { i8*, i32 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h7e592bbc45d6695bE"(%"alloc::alloc::Global"* align 1 %self, i32 %layout.0, i32 %layout.1) unnamed_addr #0 {
start:
; call alloc::alloc::Global::alloc_impl
  %0 = call { i8*, i32 } @_ZN5alloc5alloc6Global10alloc_impl17ha302ae7786c1d6e6E(%"alloc::alloc::Global"* align 1 %self, i32 %layout.0, i32 %layout.1, i1 zeroext false) #9
  %1 = extractvalue { i8*, i32 } %0, 0
  %2 = extractvalue { i8*, i32 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i32 } undef, i8* %1, 0
  %4 = insertvalue { i8*, i32 } %3, i32 %2, 1
  ret { i8*, i32 } %4
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nounwind
define hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hce95679fe7c9b6bfE"(%"alloc::vec::Vec<u8>"* align 4 %self) unnamed_addr #1 {
start:
  %_11 = alloca { i8*, i32 }, align 4
  %_10 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 4
; call alloc::vec::Vec<T,A>::as_mut_ptr
  %data = call i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h4f62ecf149d4b678E"(%"alloc::vec::Vec<u8>"* align 4 %self) #9
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %len = load i32, i32* %0, align 4
  %data_address = bitcast i8* %data to {}*
  %1 = bitcast { i8*, i32 }* %_11 to {}**
  store {}* %data_address, {}** %1, align 4
  %2 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %_11, i32 0, i32 1
  store i32 %len, i32* %2, align 4
  %3 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_10 to { i8*, i32 }*
  %4 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %_11, i32 0, i32 0
  %5 = load i8*, i8** %4, align 4
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %_11, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 0
  store i8* %5, i8** %8, align 4
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_10 to { [0 x i8]*, i32 }*
  %11 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %10, i32 0, i32 0
  %_2.0 = load [0 x i8]*, [0 x i8]** %11, align 4
  %12 = getelementptr inbounds { [0 x i8]*, i32 }, { [0 x i8]*, i32 }* %10, i32 0, i32 1
  %_2.1 = load i32, i32* %12, align 4
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nounwind
define hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4ab321ce3eb9fcd5E"({ i8*, i32 }* align 4 %self) unnamed_addr #1 {
start:
  %_2 = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 4
; call alloc::raw_vec::RawVec<T,A>::current_memory
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h1ab4562c7b35e85eE"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %_2, { i8*, i32 }* align 4 %self) #9
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2, i32 0, i32 1
  %1 = load i32, i32* %0, align 4, !range !1, !noundef !0
  %2 = icmp eq i32 %1, 0
  %_4 = select i1 %2, i32 0, i32 1
  %3 = icmp eq i32 %_4, 1
  br i1 %3, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
  %4 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2 to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %5 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %4 to { i8*, { i32, i32 } }*
  %6 = bitcast { i8*, { i32, i32 } }* %5 to i8**
  %ptr = load i8*, i8** %6, align 4, !nonnull !0, !noundef !0
  %7 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2 to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %8 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %7 to { i8*, { i32, i32 } }*
  %9 = getelementptr inbounds { i8*, { i32, i32 } }, { i8*, { i32, i32 } }* %8, i32 0, i32 1
  %10 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %9, i32 0, i32 0
  %layout.0 = load i32, i32* %10, align 4
  %11 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %9, i32 0, i32 1
  %layout.1 = load i32, i32* %11, align 4, !range !6, !noundef !0
  %_7 = bitcast { i8*, i32 }* %self to %"alloc::alloc::Global"*
; call <alloc::alloc::Global as core::alloc::Allocator>::deallocate
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17hb32164a49ab9b9feE"(%"alloc::alloc::Global"* align 1 %_7, i8* %ptr, i32 %layout.0, i32 %layout.1) #9
  br label %bb3

bb4:                                              ; preds = %bb3, %bb1
  ret void

bb3:                                              ; preds = %bb2
  br label %bb4
}

; probe1::probe
; Function Attrs: nounwind
define hidden void @_ZN6probe15probe17h512414d7be3aab83E() unnamed_addr #1 {
start:
  %_10 = alloca [1 x { i8*, i32* }], align 4
  %_3 = alloca %"core::fmt::Arguments", align 4
  %res = alloca %"alloc::string::String", align 4
  %_1 = alloca %"alloc::string::String", align 4
; call core::fmt::ArgumentV1::new_lower_exp
  %0 = call { i8*, i32* } @_ZN4core3fmt10ArgumentV113new_lower_exp17h48bd7df20ebf0024E(i32* align 4 bitcast (<{ [4 x i8] }>* @alloc6 to i32*)) #9
  %_11.0 = extractvalue { i8*, i32* } %0, 0
  %_11.1 = extractvalue { i8*, i32* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds [1 x { i8*, i32* }], [1 x { i8*, i32* }]* %_10, i32 0, i32 0
  %2 = getelementptr inbounds { i8*, i32* }, { i8*, i32* }* %1, i32 0, i32 0
  store i8* %_11.0, i8** %2, align 4
  %3 = getelementptr inbounds { i8*, i32* }, { i8*, i32* }* %1, i32 0, i32 1
  store i32* %_11.1, i32** %3, align 4
  %_7.0 = bitcast [1 x { i8*, i32* }]* %_10 to [0 x { i8*, i32* }]*
; call core::fmt::Arguments::new_v1
  call void @_ZN4core3fmt9Arguments6new_v117h9bdc29a40889883fE(%"core::fmt::Arguments"* sret(%"core::fmt::Arguments") %_3, [0 x { [0 x i8]*, i32 }]* align 4 bitcast (<{ i8*, [4 x i8] }>* @alloc4 to [0 x { [0 x i8]*, i32 }]*), i32 1, [0 x { i8*, i32* }]* align 4 %_7.0, i32 1) #9
  br label %bb2

bb2:                                              ; preds = %bb1
; call alloc::fmt::format
  call void @_ZN5alloc3fmt6format17h0ddb8b9402f24066E(%"alloc::string::String"* sret(%"alloc::string::String") %res, %"core::fmt::Arguments"* %_3) #9
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = bitcast %"alloc::string::String"* %_1 to i8*
  %5 = bitcast %"alloc::string::String"* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 4 %4, i8* align 4 %5, i32 12, i1 false)
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h9e1e0c57de15a39cE"(%"alloc::string::String"* %_1) #9
  br label %bb4

bb4:                                              ; preds = %bb3
  ret void
}

; core::fmt::num::imp::<impl core::fmt::LowerExp for isize>::fmt
; Function Attrs: nounwind
declare dso_local zeroext i1 @"_ZN4core3fmt3num3imp55_$LT$impl$u20$core..fmt..LowerExp$u20$for$u20$isize$GT$3fmt17h80458b5e1460a0fbE"(i32* align 4, %"core::fmt::Formatter"* align 4) unnamed_addr #1

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn nounwind
declare dso_local void @_ZN4core9panicking9panic_fmt17hf804ada72aad06e6E(%"core::fmt::Arguments"*, %"core::panic::location::Location"* align 4) unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #5

; alloc::fmt::format::format_inner
; Function Attrs: nounwind
declare dso_local void @_ZN5alloc3fmt6format12format_inner17h22d8f2aeecf02b15E(%"alloc::string::String"* sret(%"alloc::string::String"), %"core::fmt::Arguments"*) unnamed_addr #1

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nounwind
declare dso_local noalias i8* @__rust_alloc_zeroed(i32, i32) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local noalias i8* @__rust_alloc(i32, i32) unnamed_addr #1

; alloc::raw_vec::capacity_overflow
; Function Attrs: noreturn nounwind
declare dso_local void @_ZN5alloc7raw_vec17capacity_overflow17h08312b6db3afe887E() unnamed_addr #7

; alloc::alloc::handle_alloc_error
; Function Attrs: cold noreturn nounwind
declare dso_local void @_ZN5alloc5alloc18handle_alloc_error17ha093ef8cd3f11f37E(i32, i32) unnamed_addr #8

; Function Attrs: nounwind
declare dso_local void @__rust_dealloc(i8*, i32, i32) unnamed_addr #1

attributes #0 = { inlinehint nounwind "target-cpu"="generic" }
attributes #1 = { nounwind "target-cpu"="generic" }
attributes #2 = { cold noinline noreturn nounwind "target-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree nosync nounwind readnone willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #7 = { noreturn nounwind "target-cpu"="generic" }
attributes #8 = { cold noreturn nounwind "target-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!0 = !{}
!1 = !{i32 0, i32 -2147483647}
!2 = !{i64 1}
!3 = !{i64 4}
!4 = !{i8 0, i8 2}
!5 = !{i32 0, i32 2}
!6 = !{i32 1, i32 -2147483647}
!7 = !{i32 0, i32 -2147483646}
