; ModuleID = 'probe6.b0180e0a-cgu.0'
source_filename = "probe6.b0180e0a-cgu.0"
target datalayout = "e-m:e-p:32:32-p10:8:8-p20:8:8-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-unknown"

%"[closure@core::f64::<impl f64>::to_bits::{closure#0}]" = type {}

@alloc6 = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\F0?" }>, align 8
@alloc8 = private unnamed_addr constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00@" }>, align 8

; core::f64::<impl f64>::to_bits::{{closure}}
; Function Attrs: inlinehint nounwind
define hidden i64 @"_ZN4core3f6421_$LT$impl$u20$f64$GT$7to_bits28_$u7b$$u7b$closure$u7d$$u7d$17he6817c03fe855b01E"(%"[closure@core::f64::<impl f64>::to_bits::{closure#0}]"* align 1 %_1, double %rt) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %1 = bitcast double %rt to i64
  store i64 %1, i64* %0, align 8
  %2 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %2
}

; core::f64::<impl f64>::total_cmp
; Function Attrs: inlinehint nounwind
define internal i8 @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9total_cmp17h5634f8aa997bb4acE"(double* align 8 %self, double* align 8 %other) unnamed_addr #0 {
start:
  %arg1 = alloca double, align 8
  %arg = alloca double, align 8
  %right = alloca i64, align 8
  %left = alloca i64, align 8
  %0 = alloca i8, align 1
  %self2 = load double, double* %self, align 8
  store double %self2, double* %arg, align 8
  %_28 = load double, double* %arg, align 8
; call core::ops::function::FnOnce::call_once
  %_4 = call i64 @_ZN4core3ops8function6FnOnce9call_once17hc0840db13bda5baeE(double %_28) #2
  br label %bb1

bb1:                                              ; preds = %start
  store i64 %_4, i64* %left, align 8
  %self3 = load double, double* %other, align 8
  store double %self3, double* %arg1, align 8
  %_35 = load double, double* %arg1, align 8
; call core::ops::function::FnOnce::call_once
  %_7 = call i64 @_ZN4core3ops8function6FnOnce9call_once17hc0840db13bda5baeE(double %_35) #2
  br label %bb2

bb2:                                              ; preds = %bb1
  store i64 %_7, i64* %right, align 8
  %_13 = load i64, i64* %left, align 8
  %_12 = ashr i64 %_13, 63
  %_10 = lshr i64 %_12, 1
  %1 = load i64, i64* %left, align 8
  %2 = xor i64 %1, %_10
  store i64 %2, i64* %left, align 8
  %_18 = load i64, i64* %right, align 8
  %_17 = ashr i64 %_18, 63
  %_15 = lshr i64 %_17, 1
  %3 = load i64, i64* %right, align 8
  %4 = xor i64 %3, %_15
  store i64 %4, i64* %right, align 8
  %_37 = load i64, i64* %left, align 8
  %_38 = load i64, i64* %right, align 8
  %_36 = icmp slt i64 %_37, %_38
  br i1 %_36, label %bb3, label %bb4

bb4:                                              ; preds = %bb2
  %_40 = load i64, i64* %left, align 8
  %_41 = load i64, i64* %right, align 8
  %_39 = icmp eq i64 %_40, %_41
  br i1 %_39, label %bb5, label %bb6

bb3:                                              ; preds = %bb2
  store i8 -1, i8* %0, align 1
  br label %bb8

bb8:                                              ; preds = %bb7, %bb3
  %5 = load i8, i8* %0, align 1, !range !0, !noundef !1
  ret i8 %5

bb6:                                              ; preds = %bb4
  store i8 1, i8* %0, align 1
  br label %bb7

bb5:                                              ; preds = %bb4
  store i8 0, i8* %0, align 1
  br label %bb7

bb7:                                              ; preds = %bb6, %bb5
  br label %bb8
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint nounwind
define internal i64 @_ZN4core3ops8function6FnOnce9call_once17hc0840db13bda5baeE(double %0) unnamed_addr #0 {
start:
  %_2 = alloca double, align 8
  %_1 = alloca %"[closure@core::f64::<impl f64>::to_bits::{closure#0}]", align 1
  store double %0, double* %_2, align 8
  %1 = load double, double* %_2, align 8
; call core::f64::<impl f64>::to_bits::{{closure}}
  %2 = call i64 @"_ZN4core3f6421_$LT$impl$u20$f64$GT$7to_bits28_$u7b$$u7b$closure$u7d$$u7d$17he6817c03fe855b01E"(%"[closure@core::f64::<impl f64>::to_bits::{closure#0}]"* align 1 %_1, double %1) #2
  br label %bb1

bb1:                                              ; preds = %start
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %2
}

; probe6::probe
; Function Attrs: nounwind
define hidden void @_ZN6probe65probe17h4eb38c27fdd6cb05E() unnamed_addr #1 {
start:
; call core::f64::<impl f64>::total_cmp
  %_1 = call i8 @"_ZN4core3f6421_$LT$impl$u20$f64$GT$9total_cmp17h5634f8aa997bb4acE"(double* align 8 bitcast (<{ [8 x i8] }>* @alloc6 to double*), double* align 8 bitcast (<{ [8 x i8] }>* @alloc8 to double*)) #2, !range !0
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

attributes #0 = { inlinehint nounwind "target-cpu"="generic" }
attributes #1 = { nounwind "target-cpu"="generic" }
attributes #2 = { nounwind }

!0 = !{i8 -1, i8 2}
!1 = !{}
