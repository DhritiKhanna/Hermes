; ModuleID = 'dummy.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }
%struct.Status = type { i32 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [4 x i8] c"Hey\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_dummy.cpp, i8* null }]

; Function Attrs: uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" !dbg !51 {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit), !dbg !430
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #2, !dbg !431
  ret void, !dbg !430
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) #1

declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) #1

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #2

; Function Attrs: norecurse uwtable
define i32 @main() #3 !dbg !55 {
  %1 = alloca i32, align 4
  %x = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %y = alloca i32, align 4
  %status = alloca %struct.Status, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %x, metadata !433, metadata !434), !dbg !435
  store i32 0, i32* %x, align 4, !dbg !435
  call void @llvm.dbg.declare(metadata i32* %a, metadata !436, metadata !434), !dbg !437
  store i32 1, i32* %a, align 4, !dbg !437
  call void @llvm.dbg.declare(metadata i32* %b, metadata !438, metadata !434), !dbg !439
  store i32 2, i32* %b, align 4, !dbg !439
  %2 = call i32 @_Z12do_somethingPii(i32* %a, i32 2), !dbg !440
  store i32 %2, i32* %x, align 4, !dbg !441
  %3 = load i32, i32* %x, align 4, !dbg !442
  %4 = icmp eq i32 %3, 3, !dbg !444
  br i1 %4, label %5, label %7, !dbg !445

; <label>:5                                       ; preds = %0
  %6 = call i32 @_Z12do_somethingPii(i32* %a, i32 2), !dbg !446
  br label %17, !dbg !448

; <label>:7                                       ; preds = %0
  %8 = load i32, i32* %x, align 4, !dbg !449
  %9 = icmp eq i32 %8, 7, !dbg !451
  br i1 %9, label %10, label %13, !dbg !452

; <label>:10                                      ; preds = %7
  call void @llvm.dbg.declare(metadata i32* %y, metadata !453, metadata !434), !dbg !455
  store i32 10, i32* %y, align 4, !dbg !455
  %11 = load i32, i32* %a, align 4, !dbg !456
  %12 = add nsw i32 %11, 10, !dbg !457
  store i32 %12, i32* %a, align 4, !dbg !458
  br label %16, !dbg !459

; <label>:13                                      ; preds = %7
  %14 = load i32, i32* %b, align 4, !dbg !460
  %15 = add nsw i32 %14, 1, !dbg !460
  store i32 %15, i32* %b, align 4, !dbg !460
  br label %16

; <label>:16                                      ; preds = %13, %10
  br label %17

; <label>:17                                      ; preds = %16, %5
  call void @llvm.dbg.declare(metadata %struct.Status* %status, metadata !462, metadata !434), !dbg !463
  %18 = getelementptr inbounds %struct.Status, %struct.Status* %status, i32 0, i32 0, !dbg !464
  %19 = load i32, i32* %18, align 4, !dbg !464
  %20 = icmp eq i32 %19, 0, !dbg !466
  br i1 %20, label %21, label %23, !dbg !467

; <label>:21                                      ; preds = %17
  %22 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0)), !dbg !468
  br label %23, !dbg !469

; <label>:23                                      ; preds = %21, %17
  ret i32 0, !dbg !470
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

; Function Attrs: nounwind uwtable
define i32 @_Z12do_somethingPii(i32* %x, i32 %y) #5 !dbg !58 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %z = alloca i32, align 4
  store i32* %x, i32** %1, align 8
  call void @llvm.dbg.declare(metadata i32** %1, metadata !471, metadata !434), !dbg !472
  store i32 %y, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !473, metadata !434), !dbg !474
  call void @llvm.dbg.declare(metadata i32* %z, metadata !475, metadata !434), !dbg !476
  %3 = load i32*, i32** %1, align 8, !dbg !477
  %4 = load i32, i32* %3, align 4, !dbg !478
  %5 = load i32, i32* %2, align 4, !dbg !479
  %6 = add nsw i32 %4, %5, !dbg !480
  store i32 %6, i32* %z, align 4, !dbg !476
  %7 = load i32, i32* %z, align 4, !dbg !481
  ret i32 %7, !dbg !482
}

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_dummy.cpp() #0 section ".text.startup" !dbg !62 {
  call void @__cxx_global_var_init(), !dbg !483
  ret void
}

attributes #0 = { uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { norecurse uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!427, !428}
!llvm.ident = !{!429}

!0 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !1, producer: "clang version 3.8.0 (tags/RELEASE_380/final)", isOptimized: false, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !50, globals: !64, imports: !66)
!1 = !DIFile(filename: "/home/dhriti/Dropbox/CLANG_MPI_LLVM/CLANG/dummy.cpp", directory: "/home/dhriti/clang+llvm-3.8.0-x86_64-linux-gnu-debian8/bin")
!2 = !{}
!3 = !{!4, !10, !19, !21, !28, !29, !31, !35, !47}
!4 = !DICompositeType(tag: DW_TAG_structure_type, file: !5, line: 82, size: 64, align: 32, elements: !6, identifier: "_ZTS11__mbstate_t")
!5 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/dhriti/clang+llvm-3.8.0-x86_64-linux-gnu-debian8/bin")
!6 = !{!7, !9}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !"_ZTS11__mbstate_t", file: !5, line: 84, baseType: !8, size: 32, align: 32)
!8 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !"_ZTS11__mbstate_t", file: !5, line: 93, baseType: !"_ZTSN11__mbstate_tUt_E", size: 32, align: 32, offset: 32)
!10 = !DICompositeType(tag: DW_TAG_union_type, scope: !"_ZTS11__mbstate_t", file: !5, line: 85, size: 32, align: 32, elements: !11, identifier: "_ZTSN11__mbstate_tUt_E")
!11 = !{!12, !14}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !"_ZTSN11__mbstate_tUt_E", file: !5, line: 88, baseType: !13, size: 32, align: 32)
!13 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !"_ZTSN11__mbstate_tUt_E", file: !5, line: 92, baseType: !15, size: 32, align: 8)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 32, align: 8, elements: !17)
!16 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!17 = !{!18}
!18 = !DISubrange(count: 4)
!19 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !20, line: 245, size: 1728, align: 64, flags: DIFlagFwdDecl, identifier: "_ZTS8_IO_FILE")
!20 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/dhriti/clang+llvm-3.8.0-x86_64-linux-gnu-debian8/bin")
!21 = !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, align: 64, elements: !22, identifier: "_ZTS13__va_list_tag")
!22 = !{!23, !24, !25, !27}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !"_ZTS13__va_list_tag", file: !1, baseType: !13, size: 32, align: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !"_ZTS13__va_list_tag", file: !1, baseType: !13, size: 32, align: 32, offset: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !"_ZTS13__va_list_tag", file: !1, baseType: !26, size: 64, align: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !"_ZTS13__va_list_tag", file: !1, baseType: !26, size: 64, align: 64, offset: 128)
!28 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !5, line: 137, flags: DIFlagFwdDecl, identifier: "_ZTS2tm")
!29 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !30, line: 53, size: 768, align: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!30 = !DIFile(filename: "/usr/include/locale.h", directory: "/home/dhriti/clang+llvm-3.8.0-x86_64-linux-gnu-debian8/bin")
!31 = !DICompositeType(tag: DW_TAG_class_type, name: "ios_base", scope: !33, file: !32, line: 205, size: 1728, align: 64, flags: DIFlagFwdDecl, identifier: "_ZTSSt8ios_base")
!32 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/4.9/../../../../include/c++/4.9/bits/ios_base.h", directory: "/home/dhriti/clang+llvm-3.8.0-x86_64-linux-gnu-debian8/bin")
!33 = !DINamespace(name: "std", scope: null, file: !34, line: 186)
!34 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/4.9/../../../../include/x86_64-linux-gnu/c++/4.9/bits/c++config.h", directory: "/home/dhriti/clang+llvm-3.8.0-x86_64-linux-gnu-debian8/bin")
!35 = !DICompositeType(tag: DW_TAG_class_type, name: "Init", scope: !"_ZTSSt8ios_base", file: !32, line: 539, size: 8, align: 8, elements: !36, identifier: "_ZTSNSt8ios_base4InitE")
!36 = !{!37, !40, !42, !46}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_S_refcount", scope: !"_ZTSNSt8ios_base4InitE", file: !32, line: 547, baseType: !38, flags: DIFlagStaticMember)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Atomic_word", file: !39, line: 32, baseType: !8)
!39 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/4.9/../../../../include/x86_64-linux-gnu/c++/4.9/bits/atomic_word.h", directory: "/home/dhriti/clang+llvm-3.8.0-x86_64-linux-gnu-debian8/bin")
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_S_synced_with_stdio", scope: !"_ZTSNSt8ios_base4InitE", file: !32, line: 548, baseType: !41, flags: DIFlagStaticMember)
!41 = !DIBasicType(name: "bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!42 = !DISubprogram(name: "Init", scope: !"_ZTSNSt8ios_base4InitE", file: !32, line: 543, type: !43, isLocal: false, isDefinition: false, scopeLine: 543, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !45}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !"_ZTSNSt8ios_base4InitE", size: 64, align: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!46 = !DISubprogram(name: "~Init", scope: !"_ZTSNSt8ios_base4InitE", file: !32, line: 544, type: !43, isLocal: false, isDefinition: false, scopeLine: 544, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!47 = !DICompositeType(tag: DW_TAG_structure_type, name: "Status", file: !1, line: 9, size: 32, align: 32, elements: !48, identifier: "_ZTS6Status")
!48 = !{!49}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !"_ZTS6Status", file: !1, line: 11, baseType: !8, size: 32, align: 32)
!50 = !{!51, !55, !58, !62}
!51 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !52, file: !52, line: 74, type: !53, isLocal: true, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: false, variables: !2)
!52 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/4.9/../../../../include/c++/4.9/iostream", directory: "/home/dhriti/clang+llvm-3.8.0-x86_64-linux-gnu-debian8/bin")
!53 = !DISubroutineType(types: !54)
!54 = !{null}
!55 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 14, type: !56, isLocal: false, isDefinition: true, scopeLine: 15, flags: DIFlagPrototyped, isOptimized: false, variables: !2)
!56 = !DISubroutineType(types: !57)
!57 = !{!8}
!58 = distinct !DISubprogram(name: "do_something", linkageName: "_Z12do_somethingPii", scope: !1, file: !1, line: 38, type: !59, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: false, variables: !2)
!59 = !DISubroutineType(types: !60)
!60 = !{!8, !61, !8}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!62 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_dummy.cpp", scope: !1, file: !1, type: !63, isLocal: true, isDefinition: true, flags: DIFlagArtificial, isOptimized: false, variables: !2)
!63 = !DISubroutineType(types: !2)
!64 = !{!65}
!65 = !DIGlobalVariable(name: "__ioinit", linkageName: "_ZStL8__ioinit", scope: !33, file: !52, line: 74, type: !"_ZTSNSt8ios_base4InitE", isLocal: true, isDefinition: true, variable: %"class.std::ios_base::Init"* @_ZStL8__ioinit)
!66 = !{!67, !70, !73, !77, !84, !92, !96, !103, !107, !111, !113, !115, !119, !130, !134, !140, !146, !148, !152, !156, !160, !164, !169, !171, !175, !179, !183, !185, !191, !195, !199, !201, !203, !207, !214, !218, !222, !226, !228, !234, !236, !243, !248, !252, !257, !261, !265, !269, !271, !273, !277, !281, !285, !287, !291, !295, !297, !299, !303, !310, !315, !320, !321, !322, !323, !327, !328, !332, !337, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !377, !379, !380, !382, !384, !386, !388, !392, !394, !396, !398, !400, !402, !404, !406, !408, !412, !416, !418, !422, !426}
!67 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !68, line: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !5, line: 106, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !5, line: 94, baseType: !"_ZTS11__mbstate_t")
!70 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !71, line: 139)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !72, line: 132, baseType: !13)
!72 = !DIFile(filename: "/home/dhriti/clang+llvm-3.8.0-x86_64-linux-gnu-debian8/bin/../lib/clang/3.8.0/include/stddef.h", directory: "/home/dhriti/clang+llvm-3.8.0-x86_64-linux-gnu-debian8/bin")
!73 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !74, line: 141)
!74 = !DISubprogram(name: "btowc", scope: !5, file: !5, line: 353, type: !75, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!75 = !DISubroutineType(types: !76)
!76 = !{!71, !8}
!77 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !78, line: 142)
!78 = !DISubprogram(name: "fgetwc", scope: !5, file: !5, line: 745, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!79 = !DISubroutineType(types: !80)
!80 = !{!71, !81}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !83, line: 64, baseType: !"_ZTS8_IO_FILE")
!83 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/dhriti/clang+llvm-3.8.0-x86_64-linux-gnu-debian8/bin")
!84 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !85, line: 143)
!85 = !DISubprogram(name: "fgetws", scope: !5, file: !5, line: 774, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!86 = !DISubroutineType(types: !87)
!87 = !{!88, !90, !8, !91}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!89 = !DIBasicType(name: "wchar_t", size: 32, align: 32, encoding: DW_ATE_signed)
!90 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !88)
!91 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !81)
!92 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !93, line: 144)
!93 = !DISubprogram(name: "fputwc", scope: !5, file: !5, line: 759, type: !94, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!94 = !DISubroutineType(types: !95)
!95 = !{!71, !89, !81}
!96 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !97, line: 145)
!97 = !DISubprogram(name: "fputws", scope: !5, file: !5, line: 781, type: !98, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!98 = !DISubroutineType(types: !99)
!99 = !{!8, !100, !91}
!100 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64, align: 64)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !104, line: 146)
!104 = !DISubprogram(name: "fwide", scope: !5, file: !5, line: 587, type: !105, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!105 = !DISubroutineType(types: !106)
!106 = !{!8, !81, !8}
!107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !108, line: 147)
!108 = !DISubprogram(name: "fwprintf", scope: !5, file: !5, line: 594, type: !109, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!109 = !DISubroutineType(types: !110)
!110 = !{!8, !91, !100, null}
!111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !112, line: 148)
!112 = !DISubprogram(name: "fwscanf", scope: !5, file: !5, line: 635, type: !109, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !114, line: 149)
!114 = !DISubprogram(name: "getwc", scope: !5, file: !5, line: 746, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !116, line: 150)
!116 = !DISubprogram(name: "getwchar", scope: !5, file: !5, line: 752, type: !117, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!117 = !DISubroutineType(types: !118)
!118 = !{!71}
!119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !120, line: 151)
!120 = !DISubprogram(name: "mbrlen", scope: !5, file: !5, line: 376, type: !121, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!121 = !DISubroutineType(types: !122)
!122 = !{!123, !125, !123, !128}
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !72, line: 62, baseType: !124)
!124 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!125 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!128 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!130 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !131, line: 152)
!131 = !DISubprogram(name: "mbrtowc", scope: !5, file: !5, line: 365, type: !132, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!132 = !DISubroutineType(types: !133)
!133 = !{!123, !90, !125, !123, !128}
!134 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !135, line: 153)
!135 = !DISubprogram(name: "mbsinit", scope: !5, file: !5, line: 361, type: !136, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!136 = !DISubroutineType(types: !137)
!137 = !{!8, !138}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64, align: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !141, line: 154)
!141 = !DISubprogram(name: "mbsrtowcs", scope: !5, file: !5, line: 408, type: !142, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!142 = !DISubroutineType(types: !143)
!143 = !{!123, !90, !144, !123, !128}
!144 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!146 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !147, line: 155)
!147 = !DISubprogram(name: "putwc", scope: !5, file: !5, line: 760, type: !94, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !149, line: 156)
!149 = !DISubprogram(name: "putwchar", scope: !5, file: !5, line: 766, type: !150, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!150 = !DISubroutineType(types: !151)
!151 = !{!71, !89}
!152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !153, line: 158)
!153 = !DISubprogram(name: "swprintf", scope: !5, file: !5, line: 604, type: !154, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!154 = !DISubroutineType(types: !155)
!155 = !{!8, !90, !123, !100, null}
!156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !157, line: 160)
!157 = !DISubprogram(name: "swscanf", scope: !5, file: !5, line: 645, type: !158, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!158 = !DISubroutineType(types: !159)
!159 = !{!8, !100, !100, null}
!160 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !161, line: 161)
!161 = !DISubprogram(name: "ungetwc", scope: !5, file: !5, line: 789, type: !162, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!162 = !DISubroutineType(types: !163)
!163 = !{!71, !71, !81}
!164 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !165, line: 162)
!165 = !DISubprogram(name: "vfwprintf", scope: !5, file: !5, line: 612, type: !166, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!166 = !DISubroutineType(types: !167)
!167 = !{!8, !91, !100, !168}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !"_ZTS13__va_list_tag", size: 64, align: 64)
!169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !170, line: 164)
!170 = !DISubprogram(name: "vfwscanf", scope: !5, file: !5, line: 689, type: !166, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!171 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !172, line: 167)
!172 = !DISubprogram(name: "vswprintf", scope: !5, file: !5, line: 625, type: !173, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!173 = !DISubroutineType(types: !174)
!174 = !{!8, !90, !123, !100, !168}
!175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !176, line: 170)
!176 = !DISubprogram(name: "vswscanf", scope: !5, file: !5, line: 701, type: !177, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!177 = !DISubroutineType(types: !178)
!178 = !{!8, !100, !100, !168}
!179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !180, line: 172)
!180 = !DISubprogram(name: "vwprintf", scope: !5, file: !5, line: 620, type: !181, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!181 = !DISubroutineType(types: !182)
!182 = !{!8, !100, !168}
!183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !184, line: 174)
!184 = !DISubprogram(name: "vwscanf", scope: !5, file: !5, line: 697, type: !181, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !186, line: 176)
!186 = !DISubprogram(name: "wcrtomb", scope: !5, file: !5, line: 370, type: !187, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!187 = !DISubroutineType(types: !188)
!188 = !{!123, !189, !89, !128}
!189 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !192, line: 177)
!192 = !DISubprogram(name: "wcscat", scope: !5, file: !5, line: 155, type: !193, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!193 = !DISubroutineType(types: !194)
!194 = !{!88, !90, !100}
!195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !196, line: 178)
!196 = !DISubprogram(name: "wcscmp", scope: !5, file: !5, line: 163, type: !197, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!197 = !DISubroutineType(types: !198)
!198 = !{!8, !101, !101}
!199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !200, line: 179)
!200 = !DISubprogram(name: "wcscoll", scope: !5, file: !5, line: 192, type: !197, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !202, line: 180)
!202 = !DISubprogram(name: "wcscpy", scope: !5, file: !5, line: 147, type: !193, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !204, line: 181)
!204 = !DISubprogram(name: "wcscspn", scope: !5, file: !5, line: 252, type: !205, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!205 = !DISubroutineType(types: !206)
!206 = !{!123, !101, !101}
!207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !208, line: 182)
!208 = !DISubprogram(name: "wcsftime", scope: !5, file: !5, line: 855, type: !209, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!209 = !DISubroutineType(types: !210)
!210 = !{!123, !90, !123, !100, !211}
!211 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !"_ZTS2tm")
!214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !215, line: 183)
!215 = !DISubprogram(name: "wcslen", scope: !5, file: !5, line: 287, type: !216, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!216 = !DISubroutineType(types: !217)
!217 = !{!123, !101}
!218 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !219, line: 184)
!219 = !DISubprogram(name: "wcsncat", scope: !5, file: !5, line: 158, type: !220, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!220 = !DISubroutineType(types: !221)
!221 = !{!88, !90, !100, !123}
!222 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !223, line: 185)
!223 = !DISubprogram(name: "wcsncmp", scope: !5, file: !5, line: 166, type: !224, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!224 = !DISubroutineType(types: !225)
!225 = !{!8, !101, !101, !123}
!226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !227, line: 186)
!227 = !DISubprogram(name: "wcsncpy", scope: !5, file: !5, line: 150, type: !220, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!228 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !229, line: 187)
!229 = !DISubprogram(name: "wcsrtombs", scope: !5, file: !5, line: 414, type: !230, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!230 = !DISubroutineType(types: !231)
!231 = !{!123, !189, !232, !123, !128}
!232 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !235, line: 188)
!235 = !DISubprogram(name: "wcsspn", scope: !5, file: !5, line: 256, type: !205, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !237, line: 189)
!237 = !DISubprogram(name: "wcstod", scope: !5, file: !5, line: 450, type: !238, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!238 = !DISubroutineType(types: !239)
!239 = !{!240, !100, !241}
!240 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!241 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !244, line: 191)
!244 = !DISubprogram(name: "wcstof", scope: !5, file: !5, line: 457, type: !245, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!245 = !DISubroutineType(types: !246)
!246 = !{!247, !100, !241}
!247 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !249, line: 193)
!249 = !DISubprogram(name: "wcstok", scope: !5, file: !5, line: 282, type: !250, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!250 = !DISubroutineType(types: !251)
!251 = !{!88, !90, !100, !241}
!252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !253, line: 194)
!253 = !DISubprogram(name: "wcstol", scope: !5, file: !5, line: 468, type: !254, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!254 = !DISubroutineType(types: !255)
!255 = !{!256, !100, !241, !8}
!256 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!257 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !258, line: 195)
!258 = !DISubprogram(name: "wcstoul", scope: !5, file: !5, line: 473, type: !259, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!259 = !DISubroutineType(types: !260)
!260 = !{!124, !100, !241, !8}
!261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !262, line: 196)
!262 = !DISubprogram(name: "wcsxfrm", scope: !5, file: !5, line: 196, type: !263, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!263 = !DISubroutineType(types: !264)
!264 = !{!123, !90, !100, !123}
!265 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !266, line: 197)
!266 = !DISubprogram(name: "wctob", scope: !5, file: !5, line: 357, type: !267, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!267 = !DISubroutineType(types: !268)
!268 = !{!8, !71}
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !270, line: 198)
!270 = !DISubprogram(name: "wmemcmp", scope: !5, file: !5, line: 325, type: !224, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !272, line: 199)
!272 = !DISubprogram(name: "wmemcpy", scope: !5, file: !5, line: 329, type: !220, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!273 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !274, line: 200)
!274 = !DISubprogram(name: "wmemmove", scope: !5, file: !5, line: 334, type: !275, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!275 = !DISubroutineType(types: !276)
!276 = !{!88, !88, !101, !123}
!277 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !278, line: 201)
!278 = !DISubprogram(name: "wmemset", scope: !5, file: !5, line: 338, type: !279, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!279 = !DISubroutineType(types: !280)
!280 = !{!88, !88, !89, !123}
!281 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !282, line: 202)
!282 = !DISubprogram(name: "wprintf", scope: !5, file: !5, line: 601, type: !283, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!283 = !DISubroutineType(types: !284)
!284 = !{!8, !100, null}
!285 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !286, line: 203)
!286 = !DISubprogram(name: "wscanf", scope: !5, file: !5, line: 642, type: !283, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!287 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !288, line: 204)
!288 = !DISubprogram(name: "wcschr", scope: !5, file: !5, line: 227, type: !289, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!289 = !DISubroutineType(types: !290)
!290 = !{!88, !101, !89}
!291 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !292, line: 205)
!292 = !DISubprogram(name: "wcspbrk", scope: !5, file: !5, line: 266, type: !293, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!293 = !DISubroutineType(types: !294)
!294 = !{!88, !101, !101}
!295 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !296, line: 206)
!296 = !DISubprogram(name: "wcsrchr", scope: !5, file: !5, line: 237, type: !289, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!297 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !298, line: 207)
!298 = !DISubprogram(name: "wcsstr", scope: !5, file: !5, line: 277, type: !293, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!299 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !300, line: 208)
!300 = !DISubprogram(name: "wmemchr", scope: !5, file: !5, line: 320, type: !301, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!301 = !DISubroutineType(types: !302)
!302 = !{!88, !101, !89, !123}
!303 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !304, entity: !306, line: 248)
!304 = !DINamespace(name: "__gnu_cxx", scope: null, file: !305, line: 241)
!305 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/4.9/../../../../include/c++/4.9/cwchar", directory: "/home/dhriti/clang+llvm-3.8.0-x86_64-linux-gnu-debian8/bin")
!306 = !DISubprogram(name: "wcstold", scope: !5, file: !5, line: 459, type: !307, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!307 = !DISubroutineType(types: !308)
!308 = !{!309, !100, !241}
!309 = !DIBasicType(name: "long double", size: 128, align: 128, encoding: DW_ATE_float)
!310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !304, entity: !311, line: 257)
!311 = !DISubprogram(name: "wcstoll", scope: !5, file: !5, line: 483, type: !312, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!312 = !DISubroutineType(types: !313)
!313 = !{!314, !100, !241, !8}
!314 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!315 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !304, entity: !316, line: 258)
!316 = !DISubprogram(name: "wcstoull", scope: !5, file: !5, line: 490, type: !317, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!317 = !DISubroutineType(types: !318)
!318 = !{!319, !100, !241, !8}
!319 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !306, line: 264)
!321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !311, line: 265)
!322 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !316, line: 266)
!323 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !324, entity: !326, line: 56)
!324 = !DINamespace(name: "__gnu_debug", scope: null, file: !325, line: 54)
!325 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/4.9/../../../../include/c++/4.9/debug/debug.h", directory: "/home/dhriti/clang+llvm-3.8.0-x86_64-linux-gnu-debian8/bin")
!326 = !DINamespace(name: "__debug", scope: !33, file: !325, line: 48)
!327 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !"_ZTS5lconv", line: 53)
!328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !329, line: 54)
!329 = !DISubprogram(name: "setlocale", scope: !30, file: !30, line: 124, type: !330, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!330 = !DISubroutineType(types: !331)
!331 = !{!190, !8, !126}
!332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !333, line: 55)
!333 = !DISubprogram(name: "localeconv", scope: !30, file: !30, line: 127, type: !334, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!334 = !DISubroutineType(types: !335)
!335 = !{!336}
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !"_ZTS5lconv", size: 64, align: 64)
!337 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !338, line: 64)
!338 = !DISubprogram(name: "isalnum", scope: !339, file: !339, line: 110, type: !340, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!339 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/dhriti/clang+llvm-3.8.0-x86_64-linux-gnu-debian8/bin")
!340 = !DISubroutineType(types: !341)
!341 = !{!8, !8}
!342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !343, line: 65)
!343 = !DISubprogram(name: "isalpha", scope: !339, file: !339, line: 111, type: !340, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !345, line: 66)
!345 = !DISubprogram(name: "iscntrl", scope: !339, file: !339, line: 112, type: !340, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !347, line: 67)
!347 = !DISubprogram(name: "isdigit", scope: !339, file: !339, line: 113, type: !340, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!348 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !349, line: 68)
!349 = !DISubprogram(name: "isgraph", scope: !339, file: !339, line: 115, type: !340, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !351, line: 69)
!351 = !DISubprogram(name: "islower", scope: !339, file: !339, line: 114, type: !340, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!352 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !353, line: 70)
!353 = !DISubprogram(name: "isprint", scope: !339, file: !339, line: 116, type: !340, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !355, line: 71)
!355 = !DISubprogram(name: "ispunct", scope: !339, file: !339, line: 117, type: !340, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !357, line: 72)
!357 = !DISubprogram(name: "isspace", scope: !339, file: !339, line: 118, type: !340, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !359, line: 73)
!359 = !DISubprogram(name: "isupper", scope: !339, file: !339, line: 119, type: !340, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !361, line: 74)
!361 = !DISubprogram(name: "isxdigit", scope: !339, file: !339, line: 120, type: !340, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!362 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !363, line: 75)
!363 = !DISubprogram(name: "tolower", scope: !339, file: !339, line: 124, type: !340, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!364 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !365, line: 76)
!365 = !DISubprogram(name: "toupper", scope: !339, file: !339, line: 127, type: !340, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!366 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !304, entity: !367, line: 44)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !33, file: !34, line: 188, baseType: !124)
!368 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !304, entity: !369, line: 45)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !33, file: !34, line: 189, baseType: !256)
!370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !371, line: 82)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !372, line: 186, baseType: !373)
!372 = !DIFile(filename: "/usr/include/wctype.h", directory: "/home/dhriti/clang+llvm-3.8.0-x86_64-linux-gnu-debian8/bin")
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64, align: 64)
!374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !376, line: 40, baseType: !8)
!376 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/dhriti/clang+llvm-3.8.0-x86_64-linux-gnu-debian8/bin")
!377 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !378, line: 83)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !372, line: 52, baseType: !124)
!379 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !71, line: 84)
!380 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !381, line: 86)
!381 = !DISubprogram(name: "iswalnum", scope: !372, file: !372, line: 111, type: !267, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!382 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !383, line: 87)
!383 = !DISubprogram(name: "iswalpha", scope: !372, file: !372, line: 117, type: !267, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!384 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !385, line: 89)
!385 = !DISubprogram(name: "iswblank", scope: !372, file: !372, line: 162, type: !267, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!386 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !387, line: 91)
!387 = !DISubprogram(name: "iswcntrl", scope: !372, file: !372, line: 120, type: !267, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!388 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !389, line: 92)
!389 = !DISubprogram(name: "iswctype", scope: !372, file: !372, line: 175, type: !390, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!390 = !DISubroutineType(types: !391)
!391 = !{!8, !71, !378}
!392 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !393, line: 93)
!393 = !DISubprogram(name: "iswdigit", scope: !372, file: !372, line: 124, type: !267, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!394 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !395, line: 94)
!395 = !DISubprogram(name: "iswgraph", scope: !372, file: !372, line: 128, type: !267, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!396 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !397, line: 95)
!397 = !DISubprogram(name: "iswlower", scope: !372, file: !372, line: 133, type: !267, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!398 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !399, line: 96)
!399 = !DISubprogram(name: "iswprint", scope: !372, file: !372, line: 136, type: !267, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!400 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !401, line: 97)
!401 = !DISubprogram(name: "iswpunct", scope: !372, file: !372, line: 141, type: !267, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!402 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !403, line: 98)
!403 = !DISubprogram(name: "iswspace", scope: !372, file: !372, line: 146, type: !267, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!404 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !405, line: 99)
!405 = !DISubprogram(name: "iswupper", scope: !372, file: !372, line: 151, type: !267, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!406 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !407, line: 100)
!407 = !DISubprogram(name: "iswxdigit", scope: !372, file: !372, line: 156, type: !267, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!408 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !409, line: 101)
!409 = !DISubprogram(name: "towctrans", scope: !372, file: !372, line: 221, type: !410, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!410 = !DISubroutineType(types: !411)
!411 = !{!71, !71, !371}
!412 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !413, line: 102)
!413 = !DISubprogram(name: "towlower", scope: !372, file: !372, line: 194, type: !414, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!414 = !DISubroutineType(types: !415)
!415 = !{!71, !71}
!416 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !417, line: 103)
!417 = !DISubprogram(name: "towupper", scope: !372, file: !372, line: 197, type: !414, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!418 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !419, line: 104)
!419 = !DISubprogram(name: "wctrans", scope: !372, file: !372, line: 218, type: !420, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!420 = !DISubroutineType(types: !421)
!421 = !{!371, !126}
!422 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !33, entity: !423, line: 105)
!423 = !DISubprogram(name: "wctype", scope: !372, file: !372, line: 171, type: !424, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!424 = !DISubroutineType(types: !425)
!425 = !{!378, !126}
!426 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !0, entity: !33, line: 5)
!427 = !{i32 2, !"Dwarf Version", i32 4}
!428 = !{i32 2, !"Debug Info Version", i32 3}
!429 = !{!"clang version 3.8.0 (tags/RELEASE_380/final)"}
!430 = !DILocation(line: 74, column: 25, scope: !51)
!431 = !DILocation(line: 74, column: 25, scope: !432)
!432 = !DILexicalBlockFile(scope: !51, file: !52, discriminator: 1)
!433 = !DILocalVariable(name: "x", scope: !55, file: !1, line: 16, type: !8)
!434 = !DIExpression()
!435 = !DILocation(line: 16, column: 6, scope: !55)
!436 = !DILocalVariable(name: "a", scope: !55, file: !1, line: 17, type: !8)
!437 = !DILocation(line: 17, column: 6, scope: !55)
!438 = !DILocalVariable(name: "b", scope: !55, file: !1, line: 18, type: !8)
!439 = !DILocation(line: 18, column: 6, scope: !55)
!440 = !DILocation(line: 19, column: 6, scope: !55)
!441 = !DILocation(line: 19, column: 4, scope: !55)
!442 = !DILocation(line: 20, column: 5, scope: !443)
!443 = distinct !DILexicalBlock(scope: !55, file: !1, line: 20, column: 5)
!444 = !DILocation(line: 20, column: 7, scope: !443)
!445 = !DILocation(line: 20, column: 5, scope: !55)
!446 = !DILocation(line: 22, column: 3, scope: !447)
!447 = distinct !DILexicalBlock(scope: !443, file: !1, line: 21, column: 2)
!448 = !DILocation(line: 23, column: 2, scope: !447)
!449 = !DILocation(line: 24, column: 11, scope: !450)
!450 = distinct !DILexicalBlock(scope: !443, file: !1, line: 24, column: 11)
!451 = !DILocation(line: 24, column: 13, scope: !450)
!452 = !DILocation(line: 24, column: 11, scope: !443)
!453 = !DILocalVariable(name: "y", scope: !454, file: !1, line: 26, type: !8)
!454 = distinct !DILexicalBlock(scope: !450, file: !1, line: 25, column: 2)
!455 = !DILocation(line: 26, column: 7, scope: !454)
!456 = !DILocation(line: 27, column: 7, scope: !454)
!457 = !DILocation(line: 27, column: 8, scope: !454)
!458 = !DILocation(line: 27, column: 5, scope: !454)
!459 = !DILocation(line: 28, column: 2, scope: !454)
!460 = !DILocation(line: 29, column: 9, scope: !461)
!461 = distinct !DILexicalBlock(scope: !450, file: !1, line: 29, column: 6)
!462 = !DILocalVariable(name: "status", scope: !55, file: !1, line: 31, type: !"_ZTS6Status")
!463 = !DILocation(line: 31, column: 9, scope: !55)
!464 = !DILocation(line: 32, column: 12, scope: !465)
!465 = distinct !DILexicalBlock(scope: !55, file: !1, line: 32, column: 5)
!466 = !DILocation(line: 32, column: 20, scope: !465)
!467 = !DILocation(line: 32, column: 5, scope: !55)
!468 = !DILocation(line: 33, column: 8, scope: !465)
!469 = !DILocation(line: 33, column: 3, scope: !465)
!470 = !DILocation(line: 35, column: 2, scope: !55)
!471 = !DILocalVariable(name: "x", arg: 1, scope: !58, file: !1, line: 38, type: !61)
!472 = !DILocation(line: 38, column: 23, scope: !58)
!473 = !DILocalVariable(name: "y", arg: 2, scope: !58, file: !1, line: 38, type: !8)
!474 = !DILocation(line: 38, column: 30, scope: !58)
!475 = !DILocalVariable(name: "z", scope: !58, file: !1, line: 40, type: !8)
!476 = !DILocation(line: 40, column: 6, scope: !58)
!477 = !DILocation(line: 40, column: 11, scope: !58)
!478 = !DILocation(line: 40, column: 10, scope: !58)
!479 = !DILocation(line: 40, column: 13, scope: !58)
!480 = !DILocation(line: 40, column: 12, scope: !58)
!481 = !DILocation(line: 41, column: 9, scope: !58)
!482 = !DILocation(line: 41, column: 2, scope: !58)
!483 = !DILocation(line: 0, scope: !62)
