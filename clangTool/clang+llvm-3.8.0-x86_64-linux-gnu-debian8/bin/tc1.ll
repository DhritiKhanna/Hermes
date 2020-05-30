; ModuleID = '/home/dhriti/Desktop/tc1.cpp'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g = global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @_Z3erkii(i32 %a, i32 %b) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %ret = alloca i32, align 4
  store i32 %a, i32* %1, align 4
  store i32 %b, i32* %2, align 4
  %3 = load i32, i32* @g, align 4
  store i32 %3, i32* %x, align 4
  store i32 0, i32* %ret, align 4
  store i32 0, i32* %i, align 4
  br label %4

; <label>:4                                       ; preds = %12, %0
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %15

; <label>:8                                       ; preds = %4
  %9 = load i32, i32* %ret, align 4
  %10 = load i32, i32* %1, align 4
  %11 = mul nsw i32 %9, %10
  store i32 %11, i32* %ret, align 4
  br label %12

; <label>:12                                      ; preds = %8
  %13 = load i32, i32* %i, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %i, align 4
  br label %4

; <label>:15                                      ; preds = %4
  %16 = load i32, i32* %ret, align 4
  %17 = load i32, i32* %x, align 4
  %18 = add nsw i32 %16, %17
  ret i32 %18
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
