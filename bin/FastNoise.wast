(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$fi (func (param i32) (result f32)))
 (type $FUNCSIG$vif (func (param i32 f32)))
 (type $FUNCSIG$fiff (func (param i32 f32 f32) (result f32)))
 (type $FUNCSIG$fiii (func (param i32 i32 i32) (result f32)))
 (type $FUNCSIG$fifff (func (param i32 f32 f32 f32) (result f32)))
 (type $FUNCSIG$fiiii (func (param i32 i32 i32 i32) (result f32)))
 (type $FUNCSIG$fiffff (func (param i32 f32 f32 f32 f32) (result f32)))
 (type $FUNCSIG$fiiiii (func (param i32 i32 i32 i32 i32) (result f32)))
 (type $FUNCSIG$id (func (param f64) (result i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$viiiiii (func (param i32 i32 i32 i32 i32 i32)))
 (type $FUNCSIG$viiiii (func (param i32 i32 i32 i32 i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$fiiffff (func (param i32 i32 f32 f32 f32 f32) (result f32)))
 (type $FUNCSIG$fiiiiii (func (param i32 i32 i32 i32 i32 i32) (result f32)))
 (type $FUNCSIG$fiiff (func (param i32 i32 f32 f32) (result f32)))
 (type $FUNCSIG$fii (func (param i32 i32) (result f32)))
 (type $FUNCSIG$fiifff (func (param i32 i32 f32 f32 f32) (result f32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$viif (func (param i32 i32 f32)))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$viiiiiiii (func (param i32 i32 i32 i32 i32 i32 i32 i32)))
 (type $FUNCSIG$viiiiiiiiii (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)))
 (type $FUNCSIG$viiiiiiiiiiiii (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)))
 (import "env" "STACKTOP" (global $STACKTOP$asm2wasm$import i32))
 (import "env" "STACK_MAX" (global $STACK_MAX$asm2wasm$import i32))
 (import "env" "DYNAMICTOP_PTR" (global $DYNAMICTOP_PTR$asm2wasm$import i32))
 (import "env" "tempDoublePtr" (global $tempDoublePtr$asm2wasm$import i32))
 (import "env" "ABORT" (global $ABORT$asm2wasm$import i32))
 (import "global" "NaN" (global $nan$asm2wasm$import f64))
 (import "global" "Infinity" (global $inf$asm2wasm$import f64))
 (import "env" "enlargeMemory" (func $enlargeMemory (result i32)))
 (import "env" "getTotalMemory" (func $getTotalMemory (result i32)))
 (import "env" "abortOnCannotGrowMemory" (func $abortOnCannotGrowMemory (result i32)))
 (import "env" "abortStackOverflow" (func $abortStackOverflow (param i32)))
 (import "env" "nullFunc_viiiii" (func $nullFunc_viiiii (param i32)))
 (import "env" "nullFunc_vif" (func $nullFunc_vif (param i32)))
 (import "env" "nullFunc_fiff" (func $nullFunc_fiff (param i32)))
 (import "env" "nullFunc_vi" (func $nullFunc_vi (param i32)))
 (import "env" "nullFunc_vii" (func $nullFunc_vii (param i32)))
 (import "env" "nullFunc_ii" (func $nullFunc_ii (param i32)))
 (import "env" "nullFunc_fiiffff" (func $nullFunc_fiiffff (param i32)))
 (import "env" "nullFunc_fifff" (func $nullFunc_fifff (param i32)))
 (import "env" "nullFunc_fiiiiii" (func $nullFunc_fiiiiii (param i32)))
 (import "env" "nullFunc_fiffff" (func $nullFunc_fiffff (param i32)))
 (import "env" "nullFunc_iiii" (func $nullFunc_iiii (param i32)))
 (import "env" "nullFunc_fiiff" (func $nullFunc_fiiff (param i32)))
 (import "env" "nullFunc_fii" (func $nullFunc_fii (param i32)))
 (import "env" "nullFunc_fiifff" (func $nullFunc_fiifff (param i32)))
 (import "env" "nullFunc_fiii" (func $nullFunc_fiii (param i32)))
 (import "env" "nullFunc_fiiiii" (func $nullFunc_fiiiii (param i32)))
 (import "env" "nullFunc_fi" (func $nullFunc_fi (param i32)))
 (import "env" "nullFunc_iii" (func $nullFunc_iii (param i32)))
 (import "env" "nullFunc_viiiiii" (func $nullFunc_viiiiii (param i32)))
 (import "env" "nullFunc_fiiii" (func $nullFunc_fiiii (param i32)))
 (import "env" "nullFunc_viii" (func $nullFunc_viii (param i32)))
 (import "env" "nullFunc_v" (func $nullFunc_v (param i32)))
 (import "env" "nullFunc_viif" (func $nullFunc_viif (param i32)))
 (import "env" "nullFunc_viiii" (func $nullFunc_viiii (param i32)))
 (import "env" "invoke_vii" (func $invoke_vii (param i32 i32 i32)))
 (import "env" "___assert_fail" (func $___assert_fail (param i32 i32 i32 i32)))
 (import "env" "_emscripten_memcpy_big" (func $_emscripten_memcpy_big (param i32 i32 i32) (result i32)))
 (import "env" "__embind_register_std_string" (func $__embind_register_std_string (param i32 i32)))
 (import "env" "__embind_register_class_function" (func $__embind_register_class_function (param i32 i32 i32 i32 i32 i32 i32 i32)))
 (import "env" "__embind_register_enum_value" (func $__embind_register_enum_value (param i32 i32 i32)))
 (import "env" "__embind_register_class_constructor" (func $__embind_register_class_constructor (param i32 i32 i32 i32 i32 i32)))
 (import "env" "_pthread_cleanup_push" (func $_pthread_cleanup_push (param i32 i32)))
 (import "env" "___syscall140" (func $___syscall140 (param i32 i32) (result i32)))
 (import "env" "___syscall146" (func $___syscall146 (param i32 i32) (result i32)))
 (import "env" "_pthread_cleanup_pop" (func $_pthread_cleanup_pop (param i32)))
 (import "env" "___setErrNo" (func $___setErrNo (param i32)))
 (import "env" "__embind_register_bool" (func $__embind_register_bool (param i32 i32 i32 i32 i32)))
 (import "env" "___resumeException" (func $___resumeException (param i32)))
 (import "env" "__embind_register_class_property" (func $__embind_register_class_property (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)))
 (import "env" "__embind_register_emval" (func $__embind_register_emval (param i32 i32)))
 (import "env" "___syscall6" (func $___syscall6 (param i32 i32) (result i32)))
 (import "env" "__embind_register_class" (func $__embind_register_class (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)))
 (import "env" "___syscall54" (func $___syscall54 (param i32 i32) (result i32)))
 (import "env" "__embind_register_integer" (func $__embind_register_integer (param i32 i32 i32 i32 i32)))
 (import "env" "___cxa_allocate_exception" (func $___cxa_allocate_exception (param i32) (result i32)))
 (import "env" "_abort" (func $_abort))
 (import "env" "___lock" (func $___lock (param i32)))
 (import "env" "__embind_register_memory_view" (func $__embind_register_memory_view (param i32 i32 i32)))
 (import "env" "___cxa_find_matching_catch_2" (func $___cxa_find_matching_catch_2 (result i32)))
 (import "env" "__embind_register_void" (func $__embind_register_void (param i32 i32)))
 (import "env" "__embind_register_float" (func $__embind_register_float (param i32 i32 i32)))
 (import "env" "___unlock" (func $___unlock (param i32)))
 (import "env" "__embind_register_std_wstring" (func $__embind_register_std_wstring (param i32 i32 i32)))
 (import "env" "___cxa_throw" (func $___cxa_throw (param i32 i32 i32)))
 (import "env" "__embind_register_enum" (func $__embind_register_enum (param i32 i32 i32 i32)))
 (import "asm2wasm" "f64-to-int" (func $f64-to-int (param f64) (result i32)))
 (import "env" "memory" (memory $0 256 256))
 (import "env" "table" (table 2337 2337 anyfunc))
 (import "env" "memoryBase" (global $memoryBase i32))
 (import "env" "tableBase" (global $tableBase i32))
 (global $STACKTOP (mut i32) (get_global $STACKTOP$asm2wasm$import))
 (global $STACK_MAX (mut i32) (get_global $STACK_MAX$asm2wasm$import))
 (global $DYNAMICTOP_PTR (mut i32) (get_global $DYNAMICTOP_PTR$asm2wasm$import))
 (global $tempDoublePtr (mut i32) (get_global $tempDoublePtr$asm2wasm$import))
 (global $ABORT (mut i32) (get_global $ABORT$asm2wasm$import))
 (global $__THREW__ (mut i32) (i32.const 0))
 (global $threwValue (mut i32) (i32.const 0))
 (global $setjmpId (mut i32) (i32.const 0))
 (global $undef (mut i32) (i32.const 0))
 (global $nan (mut f64) (get_global $nan$asm2wasm$import))
 (global $inf (mut f64) (get_global $inf$asm2wasm$import))
 (global $tempInt (mut i32) (i32.const 0))
 (global $tempBigInt (mut i32) (i32.const 0))
 (global $tempBigIntP (mut i32) (i32.const 0))
 (global $tempBigIntS (mut i32) (i32.const 0))
 (global $tempBigIntR (mut f64) (f64.const 0))
 (global $tempBigIntI (mut i32) (i32.const 0))
 (global $tempBigIntD (mut i32) (i32.const 0))
 (global $tempValue (mut i32) (i32.const 0))
 (global $tempDouble (mut f64) (f64.const 0))
 (global $tempRet0 (mut i32) (i32.const 0))
 (global $tempFloat (mut f32) (f32.const 0))
 (global $f0 (mut f32) (f32.const 0))
 (elem (get_global $tableBase) $b0 $b0 $b0 $b0 $b0 $b0 $b0 $b0 $b0 $b0 $__ZNK10__cxxabiv117__class_type_info16search_below_dstEPNS_19__dynamic_cast_infoEPKvib $b0 $b0 $b0 $__ZNK10__cxxabiv120__si_class_type_info16search_below_dstEPNS_19__dynamic_cast_infoEPKvib $b0 $b0 $b0 $b0 $b0 $b0 $b0 $b0 $b0 $b0 $b0 $b0 $__ZNK10__cxxabiv121__vmi_class_type_info16search_below_dstEPNS_19__dynamic_cast_infoEPKvib $b0 $b0 $b0 $b0 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $__ZN9FastNoise12SetFrequencyEf $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $__ZN9FastNoise20SetFractalLacunarityEf $b1 $__ZN9FastNoise14SetFractalGainEf $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $__ZN9FastNoise17SetCellularJitterEf $b1 $__ZN9FastNoise21SetGradientPerturbAmpEf $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b1 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $__ZNK9FastNoise8GetValueEff $b2 $__ZNK9FastNoise15GetValueFractalEff $__ZNK9FastNoise9GetPerlinEff $__ZNK9FastNoise16GetPerlinFractalEff $__ZNK9FastNoise10GetSimplexEff $__ZNK9FastNoise17GetSimplexFractalEff $__ZNK9FastNoise11GetCellularEff $__ZNK9FastNoise13GetWhiteNoiseEff $b2 $b2 $__ZNK9FastNoise8GetCubicEff $__ZNK9FastNoise15GetCubicFractalEff $__ZNK9FastNoise8GetNoiseEff $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b2 $b3 $b3 $b3 $b3 $__ZN10__cxxabiv116__shim_type_infoD2Ev $__ZN10__cxxabiv117__class_type_infoD0Ev $__ZNK10__cxxabiv116__shim_type_info5noop1Ev $__ZNK10__cxxabiv116__shim_type_info5noop2Ev $b3 $b3 $b3 $b3 $__ZN10__cxxabiv120__si_class_type_infoD0Ev $b3 $b3 $b3 $__ZNSt9bad_allocD2Ev $__ZNSt9bad_allocD0Ev $b3 $__ZN10__cxxabiv123__fundamental_type_infoD0Ev $b3 $__ZN10__cxxabiv119__pointer_type_infoD0Ev $b3 $__ZN10__cxxabiv116__enum_type_infoD0Ev $b3 $__ZN10__cxxabiv121__vmi_class_type_infoD0Ev $b3 $b3 $b3 $b3 $__ZN10emscripten8internal14raw_destructorI9FastNoiseEEvPT_ $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $_cleanup_448 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b3 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $__ZN9FastNoise7SetSeedEi $b4 $b4 $b4 $b4 $b4 $b4 $b4 $__ZN9FastNoise9SetInterpENS_6InterpE $b4 $b4 $b4 $__ZN9FastNoise12SetNoiseTypeENS_9NoiseTypeE $b4 $b4 $b4 $__ZN9FastNoise17SetFractalOctavesEi $b4 $b4 $b4 $b4 $b4 $__ZN9FastNoise14SetFractalTypeENS_11FractalTypeE $b4 $b4 $b4 $__ZN9FastNoise27SetCellularDistanceFunctionENS_24CellularDistanceFunctionE $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $__ZN9FastNoiseC2Ei $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b4 $b5 $___stdio_close $b5 $b5 $b5 $b5 $b5 $b5 $b5 $b5 $b5 $b5 $b5 $b5 $b5 $b5 $b5 $b5 $__ZNKSt9bad_alloc4whatEv $b5 $b5 $b5 $b5 $b5 $b5 $b5 $b5 $b5 $b5 $__ZN10emscripten8internal13getActualTypeI9FastNoiseEEPKvPT_ $b5 $__ZN10emscripten8internal12operator_newI9FastNoiseJiEEEPT_DpOT0_ $b5 $__ZNK9FastNoise7GetSeedEv $b5 $b5 $b5 $b5 $b5 $b5 $b5 $__ZNK9FastNoise9GetInterpEv $b5 $b5 $b5 $__ZNK9FastNoise12GetNoiseTypeEv $b5 $b5 $b5 $__ZNK9FastNoise17GetFractalOctavesEv $b5 $b5 $b5 $b5 $b5 $__ZNK9FastNoise14GetFractalTypeEv $b5 $b5 $b5 $__ZNK9FastNoise27GetCellularDistanceFunctionEv $b5 $b5 $b5 $b5 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $__ZN10emscripten8internal13MethodInvokerIM9FastNoiseKFfffffEfPKS2_JffffEE6invokeERKS4_S6_ffff $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b6 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $__ZNK9FastNoise8GetValueEfff $b7 $__ZNK9FastNoise15GetValueFractalEfff $__ZNK9FastNoise9GetPerlinEfff $__ZNK9FastNoise16GetPerlinFractalEfff $__ZNK9FastNoise10GetSimplexEfff $__ZNK9FastNoise17GetSimplexFractalEfff $__ZNK9FastNoise11GetCellularEfff $__ZNK9FastNoise13GetWhiteNoiseEfff $b7 $b7 $__ZNK9FastNoise8GetCubicEfff $__ZNK9FastNoise15GetCubicFractalEfff $__ZNK9FastNoise8GetNoiseEfff $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b7 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $__ZN10emscripten8internal13MethodInvokerIM9FastNoiseKFfiiiiEfPKS2_JiiiiEE6invokeERKS4_S6_iiii $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b8 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $__ZNK9FastNoise10GetSimplexEffff $b9 $__ZNK9FastNoise13GetWhiteNoiseEffff $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b9 $b10 $b10 $___stdout_write $___stdio_seek $b10 $b10 $b10 $b10 $__ZNK10__cxxabiv117__class_type_info9can_catchEPKNS_16__shim_type_infoERPv $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $__ZNK10__cxxabiv123__fundamental_type_info9can_catchEPKNS_16__shim_type_infoERPv $b10 $__ZNK10__cxxabiv119__pointer_type_info9can_catchEPKNS_16__shim_type_infoERPv $b10 $__ZNK10__cxxabiv116__enum_type_info9can_catchEPKNS_16__shim_type_infoERPv $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $___stdio_write $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b10 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $__ZN10emscripten8internal13MethodInvokerIM9FastNoiseKFfffEfPKS2_JffEE6invokeERKS4_S6_ff $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b11 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFfvEE3getIS2_EEfRKS4_RKT_ $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b12 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $__ZN10emscripten8internal13MethodInvokerIM9FastNoiseKFffffEfPKS2_JfffEE6invokeERKS4_S6_fff $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b13 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $__ZNK9FastNoise16GetWhiteNoiseIntEii $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b14 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $__ZN10emscripten8internal13MethodInvokerIM9FastNoiseKFfiiiEfPKS2_JiiiEE6invokeERKS4_S6_iii $b15 $b15 $b15 $b15 $b15 $b15 $__ZNK9FastNoise16GetWhiteNoiseIntEiiii $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b15 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $__ZNK9FastNoise12GetFrequencyEv $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $__ZNK9FastNoise20GetFractalLacunarityEv $b16 $__ZNK9FastNoise14GetFractalGainEv $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $__ZNK9FastNoise17GetCellularJitterEv $b16 $__ZNK9FastNoise21GetGradientPerturbAmpEv $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b16 $b17 $b17 $b17 $b17 $b17 $b17 $b17 $b17 $b17 $b17 $b17 $b17 $b17 $b17 $b17 $b17 $b17 $b17 $b17 $b17 $b17 $b17 $b17 $b17 $b17 $b17 $b17 $b17 $b17 $b17 $b17 $b17 $__ZN10emscripten8internal7InvokerIP9FastNoiseJOiEE6invokeEPFS3_S4_Ei $b17 $b17 $__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFivEE3getIS2_EEiRKS4_RKT_ $b17 $b17 $b17 $b17 $b17 $b17 $b17 $__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFNS2_6InterpEvEE3getIS2_EES3_RKS5_RKT_ $b17 $b17 $b17 $__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFNS2_9NoiseTypeEvEE3getIS2_EES3_RKS5_RKT_ $b17 $b17 $b17 $b17 $b17 $b17 $b17 $b17 $b17 $__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFNS2_11FractalTypeEvEE3getIS2_EES3_RKS5_RKT_ $b17 $b17 $b17 $__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFNS2_24CellularDistanceFunctionEvEE3getIS2_EES3_RKS5_RKT_ $b17 $b17 $b18 $b18 $b18 $b18 $b18 $b18 $b18 $b18 $b18 $__ZNK10__cxxabiv117__class_type_info16search_above_dstEPNS_19__dynamic_cast_infoEPKvS4_ib $b18 $b18 $b18 $__ZNK10__cxxabiv120__si_class_type_info16search_above_dstEPNS_19__dynamic_cast_infoEPKvS4_ib $b18 $b18 $b18 $b18 $b18 $b18 $b18 $b18 $b18 $b18 $b18 $b18 $__ZNK10__cxxabiv121__vmi_class_type_info16search_above_dstEPNS_19__dynamic_cast_infoEPKvS4_ib $b18 $b18 $b18 $b18 $b18 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $__ZN10emscripten8internal13MethodInvokerIM9FastNoiseKFfiiEfPKS2_JiiEE6invokeERKS4_S6_ii $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $__ZNK9FastNoise16GetWhiteNoiseIntEiii $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b19 $b20 $b20 $b20 $b20 $b20 $b20 $b20 $b20 $b20 $b20 $b20 $b20 $b20 $b20 $b20 $b20 $b20 $b20 $b20 $b20 $b20 $b20 $b20 $b20 $b20 $b20 $b20 $b20 $b20 $b20 $b20 $b20 $b20 $b20 $b20 $b20 $__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFviEE3setIS2_EEvRKS4_RT_i $b20 $b20 $b20 $b20 $b20 $b20 $b20 $__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvNS2_6InterpEEE3setIS2_EEvRKS5_RT_S3_ $b20 $b20 $b20 $__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvNS2_9NoiseTypeEEE3setIS2_EEvRKS5_RT_S3_ $b20 $b20 $b20 $b20 $b20 $b20 $b20 $b20 $b20 $__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvNS2_11FractalTypeEEE3setIS2_EEvRKS5_RT_S3_ $b20 $b20 $b20 $__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvNS2_24CellularDistanceFunctionEEE3setIS2_EEvRKS5_RT_S3_ $b20 $b21 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvfEE3setIS2_EEvRKS4_RT_f $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b22 $b23 $b23 $b23 $b23 $b23 $b23 $b23 $b23 $b23 $b23 $b23 $__ZNK10__cxxabiv117__class_type_info27has_unambiguous_public_baseEPNS_19__dynamic_cast_infoEPvi $b23 $b23 $b23 $__ZNK10__cxxabiv120__si_class_type_info27has_unambiguous_public_baseEPNS_19__dynamic_cast_infoEPvi $b23 $b23 $b23 $b23 $b23 $b23 $b23 $b23 $b23 $b23 $b23 $b23 $__ZNK10__cxxabiv121__vmi_class_type_info27has_unambiguous_public_baseEPNS_19__dynamic_cast_infoEPvi $b23 $b23 $b23)
 (data (i32.const 1024) "P\"\00\00\d0%\00\00P\"\00\00\e7%\00\00P\"\00\00\fb%\00\00P\"\00\00\15&\00\00P\"\00\00<&\00\00\b4!\00\00]&\00\004\"\00\00h&\00\00\00\00\00\00(\04\00\004\"\00\00t&\00\00\01\00\00\00(\04\00\00\b4!\00\00\1f+\00\00\b4!\00\00>+\00\00\b4!\00\00]+\00\00\b4!\00\00|+\00\00\b4!\00\00\9b+\00\00\b4!\00\00\ba+\00\00\b4!\00\00\d9+\00\00\b4!\00\00\f8+\00\00\b4!\00\00\17,\00\00\b4!\00\006,\00\00\b4!\00\00U,\00\00\b4!\00\00t,\00\00\b4!\00\00\93,\00\00l\"\00\00\a6,\00\00\00\00\00\00\01\00\00\00\d0\04\00\00\00\00\00\00\b4!\00\00\e5,\00\00l\"\00\00\0b-\00\00\00\00\00\00\01\00\00\00\d0\04\00\00\00\00\00\00l\"\00\00J-\00\00\00\00\00\00\01\00\00\00\d0\04\00\00\00\00\00\00\b4!\00\00\89-\00\00\dc!\00\00\e9-\00\00 \05\00\00\00\00\00\00\dc!\00\00\96-\00\000\05\00\00\00\00\00\00\b4!\00\00\b7-\00\00\dc!\00\00\c4-\00\00\10\05\00\00\00\00\00\00\dc!\00\00\1a.\00\00\08\05\00\00\00\00\00\00\dc!\00\00K.\00\00 \05\00\00\00\00\00\00\dc!\00\00\'.\00\00X\05\00\00\00\00\00\00\dc!\00\00m.\00\00 \05\00\00\00\00\00\00\18\"\00\00\95.\00\00\18\"\00\00\97.\00\00\18\"\00\00\9a.\00\00\18\"\00\00\9c.\00\00\18\"\00\00\9e.\00\00\18\"\00\00\a0.\00\00\18\"\00\00\a2.\00\00\18\"\00\00\a4.\00\00\18\"\00\00\a6.\00\00\18\"\00\00\a8.\00\00\18\"\00\00\aa.\00\00\18\"\00\00\ac.\00\00\18\"\00\00\ae.\00\00\18\"\00\00\b0.\00\00\dc!\00\00\b2.\00\00 \05\00\00\00\00\00\00\dc!\00\00\d3.\00\00\10\05\00\00\00\00\00\000\04\00\00\c8\05\00\00\e8\05\00\00@\04\00\00\e8\05\00\00\e8\05\00\00\e8\05\00\00@\04\00\00\c8\05\00\00\c8\05\00\00\e8\05\00\00@\04\00\00\e8\05\00\00\e8\05\00\00\e8\05\00\00\e8\05\00\00@\04\00\00\c8\05\00\00\c8\05\00\00\c8\05\00\00\e8\05\00\00@\04\00\00\e8\05\00\00\e8\05\00\00\e8\05\00\00\e8\05\00\00\e8\05\00\00@\04\00\00\c8\05\00\00\c8\05\00\00\c8\05\00\00\c8\05\00\00\b3\b2\b2>\df\de\de>\e7\e6\e6\be\a4\a3#?\96\95\15?\f9\f8\f8\bd\b8\b77?\d9\d8\d8\bd\cb\ca\ca>\b1\b00=\91\90\10\bd\a3\a2\a2>\ba\b99?\8d\8c\0c>\dc\db[?\d2\d1Q\bf\cc\cbK\bf\ab\aa\aa\be\ac\ab+\bf\c7\c6\c6\be\87\86\86>\a7\a6\a6>\a6\a5%\bf\ec\ebk\bf\88\87\07\bf\88\87\07?\ef\ee\ee\be\d0\cfO?\c3\c2\c2>\aa\a9)?\91\90\10=\9e\9d\1d\bf\a1\a0\a0\bc\b7\b6\b6\be\b9\b8\b8\bd\c0\bf??\d6\d5U?\cf\ce\ce\be\c0\bf?\bf\f4\f3s?\b1\b00\bd\ee\edm\bf\a8\a7\'\bf\ec\ebk?\89\88\88\bd\e3\e2\e2\be\d3\d2\d2>\d7\d6\d6\be\b8\b77\bf\d0\cfO\bf\83\82\82\be\fb\fa\fa>\ea\e9i?\ca\c9I?\00\00\80\bf\f3\f2\f2\be\cc\cbK?\da\d9Y?\ae\ad-\bf\eb\ea\ea>\00\00\80?\bd\bc<\be\e7\e6\e6>\95\94\14>\ed\ecl\be\f8\f7w\bf\dc\db[\bf\db\da\da>\81\80\80;\81\80\80\bb\dd\dc\\>\82\81\01?\c4\c3C?\d5\d4T>\98\97\17\bf\94\93\13?\c5\c4D\be\f0\efo\bf\a9\a8\a8=\a9\a8\a8\bd\e8\e7g?\d4\d3S?\e1\e0\e0<\ad\ac,\be\c8\c7G\bf\e9\e8\e8=\f2\f1q\bf\cd\ccL>\a1\a0\a0<\90\8f\0f?\8b\8a\8a>\e3\e2\e2>\f6\f5u\bf\9e\9d\1d?\ee\edm?\99\98\98\bd\9f\9e\9e>\fe\fd}?\ea\e9i\bf\97\96\96\be\af\ae\ae\be\a0\9f\1f\bf\c4\c3C\bf\e4\e3c\bf\f1\f0p=\f5\f4t>\bc\bb;?\a8\a7\'?\fd\fc|>\ed\ecl>\cb\ca\ca\be\d1\d0P\bd\e5\e4d\be\bf\be\be\be\a0\9f\1f?\b4\b33?\d4\d3S\bf\d7\d6\d6>\99\98\98=\de\dd]?\8a\89\t\bf\82\81\01\bf\ce\cdM\bf\b9\b8\b8=\f7\f6\f6\be\ac\ab+?\ca\c9I\bf\c9\c8\c8=\9c\9b\1b\bf\ce\cdM?\9a\99\19\bf\a7\a6\a6\be\d3\d2\d2\be\c1\c0@\bc\f7\f6\f6>\ad\ac,>\e0\df_?\bb\ba\ba\be\a5\a4$\be\92\91\11?\fe\fd}\bf\f2\f1q?\84\83\03?\c1\c0@<\95\94\14\be\8e\8d\0d\bf\94\93\13\bf\e9\e8\e8\bd\86\85\05?\a5\a4$>\bf\be\be>\cd\ccL\be\ba\b99\bf\a2\a1!?\b6\b55?\92\91\11\bf\85\84\04>\9f\9e\9e\be\be\bd=?\da\d9Y\bf\83\82\82>\a4\a3#\bf\90\8f\0f\bf\a3\a2\a2\be\f0\efo?\fc\fb{?\98\97\17?\b2\b11?\93\92\92>\86\85\05\bf\b5\b44>\8a\89\t?\fb\fa\fa\be\eb\ea\ea\be\d5\d4T\be\dd\dc\\\be\c6\c5E?\bb\ba\ba>\f5\f4t\be\8f\8e\8e>\e2\e1a\bf\e6\e5e?\f9\f8\f8=\d9\d8\d8=\e0\df_\bf\fc\fb{\bf\b4\b33\bf\f6\f5u?\97\96\96>\af\ae\ae>\9d\9c\1c>\89\88\88=\fa\f9y\bf\9b\9a\9a>\a6\a5%?\96\95\15\bf\d1\d0P=\84\83\03\bf\8d\8c\0c\be\c7\c6\c6>\87\86\86\be\9b\9a\9a\be\b5\b44\be\c2\c1A\bf\bd\bc<>\8c\8b\0b\bf\ff\fe\fe\be\8f\8e\8e\be\f4\f3s\bf\c9\c8\c8\bd\e4\e3c?\93\92\92\be\c3\c2\c2\be\8e\8d\0d?\c8\c7G?\d6\d5U\bf\b0\af/?\c2\c1A?\ff\fe\fe>\b0\af/\bf\e6\e5e\bf\c6\c5E\bf\b6\b55\bf\fd\fc|\be\e8\e7g\bf\fa\f9y?\c5\c4D>\d8\d7W?\f1\f0p\bd\b7\b6\b6>\9c\9b\1b?\8c\8b\0b?\cf\ce\ce>\bc\bb;\bf\db\da\da\be\9a\99\19?\ae\ad-?\a2\a1!\bf\e1\e0\e0\bc\85\84\04\be\ab\aa\aa>\d8\d7W\bf\e5\e4d>\b3\b2\b2\be\b2\b11\bf\e2\e1a?\f3\f2\f2>\ef\ee\ee>\be\bd=\bf\8b\8a\8a\be\f8\f7w?\d2\d1Q?\aa\a9)\bf\df\de\de\be\de\dd]\bf\9d\9c\1c\be\c0 \c0>\8f\eb/?\845f>\bcP+?\\\13\e0\be\ed.\1d?\93\0fs?\7fwN?\d94c\be\135Y?d \0e?\00\83Z>\c8\fe\04?\1d\de$\bf,\f0\04\bf\e4Q\bd\bef\\\a2\bd\c6i\d6>)\05@\bf\c5o(?i\9c/\bfT\160\bf9\f7r?\8c_\14?RX\08\bf\90\a4\0b\beM\d8\d5>\bd+i\bf\b0A\e3>O\bdQ?\cb\88\ce\be&?\90\be4?\cb>\c3G\08?\dd\ec.\bf\c4\ba\c6>\07@6\bf\18<l\bet\9cp\bfvF.>\c84\da\be\fcIs\bb\a9\13<\bf\1b\96\a3\be5\n<?\13\04z?_%\a4\bc/\ff\f6\be\c1c\d9>\10Ah?\94\e5\17?!$d\bf\aa\08D\bf\ab\dd\06\bf\'Ta\bf&0!\bf\f1g\c2\bd\97\ed\fb\be\85\13;?\96\be\80\be\85\d6\ab\be\e3]\b4\be\fd\e3`?\8f\0e>\bf\e9d\13?\\c\e7>\87\\$?\c5\1c\e7\bd\9a\ef\ff>\91w\07?\bd\87\02\bf\93_\10?\c6{X\bf\009w\bff\91\13\bf\c8\0c\11\bf\db\17\11?!o\f6\be\089;?\"\d9\c2\bey\b9&\bf\d3\b3\8e\be\ecc]?\f2\17y\bf\a3eU\bf\a3\dd\88>\a0\b2l>\c1\bbR<Up-?u\7f\'?\f5\85\d0\bc\b5*W>Z\a5\0e\bf\04OP?\a4-A\bf\c5 \80\beEx\7f\bf\bb\d03?\14\"\b8==,Q?\e0k\d8>\97\13z\be\da\17k\bf\b4X\1b?\cc\94Q?\abB9\bf\f3\d3\t\bf\bb~ \bf\01`\c0\bd\8a\9ek?\86\c39\bf\14\16!?\f1\c9\d8>\9e\13\db;\9a\0d\85\be\b5\0b$?\a3\a8q=\de\825?w,\17\bf!*\a0>\0d\"1\bf\d2\0f\ba>T`-\bf\1f\13\a4\ben\06\c8\be\c2\1e\ab\be4\8d\04\bf\8d\88.\bf\bbi$?\b8\b0\e0>\8b\fd\97>G\d3N\be\05\fb\19?\8f\b1s?\ed\05\ae>\8bfQ?\be:r>\fb\05\a7>\b5ZN\bf9\d4S\be \ed\1e?\8a\05\07\bfc\95\be\be{pd\bf?\c0\08?\de\94\bb\be\a5\88\1c\bfi\ac\00?\05\f1V?O\acl?\02\abL\bf\f3$\t\bf\a0\da \bf\92\0f\1d\bfk)`\bf\aa#\07\bf\ca\a3h?k^\0f\bd\bd\d1\85\be\a8[\14\bfL\c5\c0\be\a3u>\bf\85\f9\d9>?\bb\f8\bd\ad.[?\0f\'.?\16\93\0b\bfB\82L\be\9d\97\e9>\da\cbO\bfs\8d-?\f9|l\bf\9a\852?\f2\d9\04\bfO>\0d?\af\1d\cb\be\ed\a3\0c?\eef\80\be\95-\f5>\94P\c6>\0e\e0^\be\b4\cb,?\f3\fb[>\f9\8e@\bf\85|\f0>\cb\ffI?\c0\b7B\bf\00\811<7\81\06?\dd\bf,\bf\89G@?3iW=K\c9\9a<\dc\8e\1a\bf\fa\7f\'\bf\a7\b9\b5=\9a\7f\1e\bf\89\ca\dd>1\8c\c5\be\f2U\12\beY\da\d2>X\ed\1f\bf8\86\1c\bf6\e6\0d?\98zq\bf\fe\df\e9\beH#<\bf\a3q\cc>\b0[?\bf\11 \d4<\b5\aeH?a&\1d?Q\f3\da>\9e\9c\de\be\b6|\f1<*pU\bf\17q\c3>\8a\d4_\bf\a4\c2\c3\be\"\d4.\bfq\83\bc\be\969\bc\be\b6\81\de\be\ac\8dq>7\ff/\bf\00\f6\02\bf\ee\b1\0d\bf\f82\10?@\aa/?\16\baP\bd}\9c\8c\bd\a7\f7\18\bfF\9a$\bf}\f1\be\be\ab)e>\"\cc\1a?@\10\01\bfq\b3\"\bd!\f03?\a1[\0e\bfI\ff\16?iIn\bf\dcd\ec>\db`\a3>Wbi?#\8d\e6\be\13U\ab>z=Z?Vu\81>U\a6T\bfT#0\bf\b2\af>?2\0cI\be\ee\0b\17\bfz\e2h?\8bx\80\be,\12-\bf\e1\1b\bb\bd\f2*,>\8c9+\bf\cd\ec\f6\be\e9\02J\bf\ccA@\be\97h\0c?\d4:\ed\beDc\cf\be\0c\c5\a4>ga\82>\e3*\c0\be\b5\f6\f2>\02g\f6>\98\b8d\bf)x,\bf\d9:??+\e7\c3>q\d3,?G\8d9\bf=\15\a5\be\e1\14\aa\bc\03\f3#\bf\d6y\07\bf\83\137?\9dM\1d\bf\1fe\bd\be\88\b71?\aet\e5\be\15\fe\"\bf\f8|\18?Lt\10?N\ed6?\ce\eb/?\bc\d7\10?@\aa \bfVS\d4>\d2\1d\87>\01\eaJ\bf\b7\13\12?\ddS\\?\c4*&?Z\03S\bfy4-?\03\a8H>\ae\b9W\bf\0f~\17\bf\ccq@?\8e9\05=\fc\f6\b4=\92\1f\e5>\e4D\11\be\e5\fd;?c\'\c6>0\8cE\bf\84\cd\f7>\00f>?EU\19\bf\e3\f0U\bf\88\cd\1b?\e9ak?\aa\93\f1>|\b2\87\be\1a\a4%\bfp6\0e\bfiV\fa={\bbG?\19\1b]\bf$\c1o\be\1d\db.?e&\00\bf\90\10o>\a6\ef\83>\a6\ab*?\c52D\bf\d2PK?Ar\1e? k\1b?\a6Y\d7\be\9b\9d\ca\be\99(Q\bf\d8\a7\d5\bd\f8Ic9=\fe9>$\0e/\bf\e4\85\7f\bea06\bf\b4\b1\t\bd\15\90\ab\be\0d\d9Z>-\f8\82>;\bf??\0f\14\fd>_\93\b4\be~]\ca\be\cdf<\bd\06*6\bf\1aO\a4=)F\t?\a7kS\bf\b0.\e4=\f0\cc\c6>e\a2J\bf\f4r\a6>\dd\df#?\ddT\88\be\03<,\bf\ae\a6~\bf2\"\b8\be\8c\16p>\16\1e*\bfN\f45\bf%\e8\ed\be\c9\f5+?\c5\9b\02?h\d8\f2=R\abq>T\f6G\bfgI\02?>y\1b?\d9\06K\bf\b0\a9.\bf\"\eb\a3>\e5(A?\83\ae\db=\d7\ab-?\0e\db(\bfUG:?\ee\04\0f?w]&\bf\93\ce-?\aa\e95?\af\0e\93\be\85U\fe>^\ac\c6\be\07\7f;?\t\c3n\bfy7\16\bf\bf\e0L?\d2\1a\'\be\b9\fc-\bf\c9\81N\bf\a4\fe\d8>\af\86E?L\a8\0b?\12H\03\bd\f1\bd\19\bf^\d8\n\bfL\be\b6>\a8\02\15\bf=\07$?I\18G?\\\e8\cb\bd\d2G\e1=aJP?\02\ae\95>\81<y?\8e\1eU?\be2\1e\bf:\c2l\bf\bb\16%\bfS\06\07\bf\85EI\bf\d1R\89>\8d\ba\15\bf\ca\ee\"\bfJ|7\bf\ab!^\bf\89O\d7>\88f3\bfj\1cy>S\8bB\be?W\1d\bf\a10O\bf\t5\11\bd\cf\1a8\bf\0et??+\86\b9>\ad\fcW?\depz\be\84\920?\0d\e8.\be\df\87\ed>\13\aeJ\bf\aa\1f\f4<\87\'\"?(G{\bfQBl\beEZ\dd=eJ\04?\c9YX\bf\cd\15\e2> r\16?\9f\f7\"\bf\f7\f9.?\c0\c0\15?\1ei\ee=Y\ec<\bfP\19v\bf\e3=h\bf|\a9D\bfb\9a#?D\8e\1e\bfH\bb\8f>\f5\86\93\bc\bf\\\c1>\84\838?\11\bd\0d?\f4U\7f\bf\e5\b4\a7\bc\af\87,\bf \8d\0f\bf\9c\ada?r\ddS?\e9(\c9>\c6\0d\0d?tz\d9>\c7\f8\af\be\a6\0f\bb\be7\e7\a2>\d3Q\1b\bfb\fee\bfd\1b\d8>\a0M9??\d5F\bf\81`%?\e2J\82>D\1d&?\95\15N?\ff\1ak\bf\d8,\d4>h\8a\8a>]\a1a\bfD\d72?D\91G\bff\c9\\\bf\15\a3\0d?\dc\0f6?\06\a2G\bf1\c8\05?\e36\01>\b5\fa\ad>\a3I?\bf\b6x\ce\be\c0l\d9\bey\1eY?\a8\a1[\be+\b4\af>\d9\f0\07?\92\15+?\12A\9f>\ec#m?X\95\1d\bfR\d6\92=\ec\tf?\f1V\"\bf\92\808\bf\93\b4u?\9e\c2\a5>\edDB\bf\db\03\92\bcd\cc\80>\ec\05b>\e1\a2[\bf\82h\ae>\a4VD?Guq\bf\8f\82D?\d2\9c\19\bf)\ca4\bf\13\92\82>n\17<?V0\04?\e4\17\n\bf9\d6\aa>\df\ca\82\bdX{&\bf\9b\f0\a0>\04\01\01\bf\b6\17)?\11\80/\bfvX+\bf\f9\9a;>d\0e\11\bf\ab\1d\b7>\ed=(\bf\d8\90@\bf\a2P9\bf\1bd\e8>\b6\a1|>\fe;:?\06W\a1>\b6Va\bf\b5\ec]\be\f4\e0\15?\93\b43?UY\02?\fb\0dJ>\b3S\ef>\c8\e4T=R\f3\b4=j\bd\t?\9fT%\bf\'-\01\bf\c4\b4\d6>2\d2L?Zy\98\bd\f5\95 \bfz%\db\be}\aa\8c\be@\0f\b8\bdi\b2^?\f5\aa\e7>\e1\a8\a7\be\c9\f8\f9>F\108\bfp\cc2>\8a\f6\99=\d3\83\1d\bf\02\ec\ff>\03\ae2\bf\05\c2A?\c2\81\1d\bf\96\t\84=}\c9P\bf\b9\e0\05\bf\fa\"(?S\c1\f5\be5+\01=l\eb\f1>d\f4\9a\be\aca`\be\b1\e5\1e\bfP\1b\9f>J\d5R?\02\c2%?38\01\bf\dew\fb>>@l\be\d2\8c\05\bfe\ce-?Q\bcp?\db\cf3?!\19<?\94\8e-?\12\00z?\ef\90q\bf\d9\88\b7\be\14\9b\9c\be\c9\a7\0d?\baBb\bf\ce08=\d1:\8a<v\"~\bf\9a\d5X\beE\14\bf>\c4\9av?\feU\9d\bd\a0\1d\94\bd\d7]\f2>{\0e\84>s\adL?\92\1f\c9>r>(=\1f#\1d>\02\9b%?\fe^\ce>\8b\cd\0f\bf\b4\adb\bfJ\981?\e9\da\12\bf\aa\be}\bf\ae\1d*\bf<\c1O>\deLM?\e6\e0\c7\be|J\fa\be{\fd\8c\be\ab:d\bf\ea\fd\06?\0b\b6o?\dcn\05\bf\af\02\a2\be\0b\bav>\b1*4\bfL\1e3\bf\fe\b34\bf\b5\e8\ba\beD\0f\da=FoL?\b1o\d9>\b1q#\bfj\b6\1d>\80\c0\9d\bdG\12\10\bfzLD\bfM\83\02\bf\ee\08\eb>]\fc\1e>\89\d8\b0>\c8\f6@?vfJ?\851\1f\bf\80\11\f4<\13\00\t\bej\f1\17\be\8b\ca\0c?\846\9a<{\8bH\bfF\c9\f0>\c1my>\db~\98>\cb\10g>(\1d\fa>\08\03\08?<;]=)13>\db7<\bf\"\1c\1b?o\1a\e2>w+\e2>\a7\ab\0b?\89\n+\bfR\14J>O\87\cf>\d0]c>\8bg\97>]\eb0?8\16\18?Y?N\bey\d1j\bf\c4\d2\d9\beEZ\1d\bf\da\b3L\bf\8aL\be\be)\e4q\bfs)\86\bed+v?\8c\99\ef\be\e6\fb\c7>z\14\1d?s\b5\11>\d9tC>\0d\a8Q?\f5\e3:\bf\8e^\d2\be\110\08\bf\88\a3e\bf\0b\e4\t\bf\f2\02\d1>+{9?\d7\1e\06?$\cdd\bf3\bb\0d\bf\a1\18q>\"0\b0\bd\bbK\0f\beo\ea\ee\be\0cW\0e?(\845>O\afc\bf\8f2\10\bfo\0e\11\bf\e1\ea\bb\be\b2\91\89\bd\06\db\1e?\9fu\d2\beb\815?-P<>\03\80\0f\bf>\a2\c6>\92\f9=?\ccdp\be\a7\93[\bfc\ef!??\a5_\bf\d9m4??d\81\bd\88\15`?\1e[o\bd\f2\'\bc\be\d0\91\06\bf\1b>I?\bbT\a8>\aaO\17?<\86\c7\be\e1\bb/?\02l7?\c0|\94\bea\fb-\bfk+\'>G\b87=\87\01U?\d8r[<\113\93\be\fa\99\1d?\82\a2\af>\f5\c1Q?\df<\15\bf\15\08\a2=\ea\11I?\11M\d2\be\8d\11\f4>\dd\93g\bf\'g+\be-\cc\90>.\1c\17\bfw\9c\a4\be_\bf\05\bf\adj\d1\be\ccM\b8\be\00\00\80?\00\00\80\bf\00\00\80?\00\00\80\bf\00\00\80?\00\00\80\bf\00\00\80?\00\00\80\bf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80?\00\00\80?\00\00\80\bf\00\00\80\bf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80?\00\00\80\bf\00\00\80?\00\00\80\bf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80?\00\00\80?\00\00\80\bf\00\00\80\bf\00\00\80?\00\00\80?\00\00\80\bf\00\00\80\bf\f0#tI\f0#tI\f0#tI\f0#tI\7f\e1$\bfAj\a4\bd+\94\7f?\b4\a8|?\84\b0m?y\e8\1a?\8eNK\bf\ab\9e\b2\beeqq\bfh/\7f\bf\c4\c4_?T\86\11>ID\db>\9d\a8\7f\bf\c4\ea\7f?\0d\ef\7f\bd\8cF6?\c7Jd?M9\e0=\b3\82_\bf\b7\da\84>\00D+\bfB\eb\7f\bfT_a\bfV\10Q\bfkCe?\d7\98p\bf\e6\f6\9b=Z\f86\bf\85\e8^?\8b?u\bfy/\fb>&jI?\fb\1f\dd=P\8e\89>Z\81\1c?\95\e0\07\bfR\a2H\bf=\1a[\bf\87\96\12\bf\be\aa{\bfcr5?\88B.?\9b\8c\b5\bd\85\a2+?\b8P\n\be\81)p\bf7\c5y??\a6\d8>\ed\f0\fd\be\02\f0\cd=\e4\bbC\bf\e5\fd\15\bf*\a1y\bfe}2\bfekJ?\a36i\bf\b8[u\bf0\b3S\bf\0c\8b\85>\1d\02G\bf\ad\b9B?\\ge\bf3\db{\bf,\e0;?CO]>%k,?\d1\1b\0d\bf*\a20?\915^?f\f9\16?\a2!e\bf@\1a\b8\be\b2)R?\e3\1c\95\be\b3\1a\7f\bf\fa\08z?e!=?z9\f2\be\a6\07e?\c4\c11\bf\e6{)\bf\be\b5\b5\bdJP@\bf\baD\08\bf\0d\cb\05?\9c$k>\c2\a1J?\d0!\8d\bea\a50\bf\1a7\91=\e8\1e\19?\c4O\9b>2\ae9\bfuO|\bf\abi4\be%\d3$\bf\89\e0~\bf\1b\aaZ?\bd\fe\7f\bfqS\b0\bc\88\df^\bf\82,\f5\bd\c7\fa}\bf\f8\bbh\bfa\e2I?~\a0~\bf\c9\9d\d7>\nA\9f>\ccd\ce\bea\d5B?\d6\c0D?\13\ed\1b>)\bco\bf(+,>\fe\a6\b6\be}>\d6\be\n\dd|\bf\bb\da^?\b9#d\bf\e2E;\bf\03d\1a?}o\d4\beH/B?\01B2?\16QU?\c1\05O\bf\bbv@?\'\b7\b2\bem|2?Y+a\bfw\ec$\bf\d98)?T@|\bfl \17\bf\d3\98\c9=\"\8d\10?\082\1a\bf\a55\b5\be\dae\03?K#p?\94\8aB\bf\9e\1a>\bf\7f\ff*\bf\0e\8c\9a\be\a6\81P?:\b9\1a=K]@\bf\88\\w?\8a\ac\f1\bej\bf\de\be|\8d5?\cc\ebm?0\ef\7f?M\a4T?\cb\82q\bf7T\08\beH=\01?\dd\0d\be>\19K|?\cf|=?\e1\ff\7f\bf\8c\8c[\be\9b3\f6>L\e2\d3\be6\ec$?4qv?t\c4;>gT\14?\c5\1af<\e2\b0\e0>\eew\05?\8f5\07\bf\d8zy\bfM\8d}\bfH\f7h?\c5\cc}\bf \0dJ?&B\ac>Z\0dq\bf\fd\bfG?\bf\e4b?\c6\06\'?\11\83\13?$\11\b8\bds\ed^\beA\d7x\bf+ej\bd_\83O?\f9\9a\ae>\db-%?\a1\f3G\bf\81\ba\7f?T\e9N\bf\99\13#?\8e\9f\15?<VR>\dc6e=\8e\ee~\bfw\b6d?\e3wn\bf\b0n\a8>D\86\a3\be\fcA;?\08\96J\bfj\b3a\be\fd\de~?\84\136\bf\e0\"K\bfm\06\7f\bf\bf\aex\bf\f9\e4t\bf\15\b9\8c>\8b\b4\ef\beB!v\bfG\cf\15?;\16\e8>=\da}\bfXFq?\18;{\bfAb\'\bf\bd\ac\95>\dd\0ef\bekf8\beuGu\bf\f8]\0d?u\ffm\bf\b0\a7$?z\ee\7f?\d4\df\eb\bep\07\\\be3H\b2>mw\9d>>\a2 ?[\1ed?o\c8#\bf3T\e5\be\19W\06\bf\d0\b1V\bf\02\bf\c7>mU\15>\9b\16\85<>\cbS\bf\e9\a4\0f?\9c\88V\bf\15Q|\bf\9f\84\\\bf\a5\cc#?~\f5\89>=\8f\dd>\98\fb~\bf\b4\87p\bf\ad{b\bfZ\a3C?\d6@3\bf7\1d*?\14\d5C?x,\7f?\07\dfj=\8a\e5$\be\97\'\be>\f7\cfK\bf*\92\1b?\86\eao\bf\121\aa>QE\a3=\9c\b4\f8\be\d4f}\bf\1dVg?\dfsS=s\83\d0\bc\f1\7f\7f\bf\1c\c13\bf\a8\ad\e7\be\08v~\bf\cb\a1\f9\beF;w\bf\12F>\bfV\17\ce<\n\d8\f2>\7f\be\13?I\cf\e3>\fd\ea\ae>\afA\7f?\1b\0c3?\e3\c6\fb>\e8\d2\92>5\13_?[\03\1e?\e1\80~?\81\96v?\a8\96J\bf\c7\f6X?\c8\00\1f?\baf\04?E\e0Q\bf\fe\9a;\beA\974?\t\89;?\fe\fd~?\d4\f0=?f\a7}?\deJ\b1\be\c7\86`>\ba\f3g\bf.K^\bf\d4\b3~?f\ff$\bf\07uO\bf\bd\04c\be\95\837?J\b9\1c?\d8)\d3\be\"\16\92>\01\f1\0f?\84#w\bf\84\08!\bf\d3/&?b>\e3>\0b\7f7\be\93\e4-\bf#\f3y\bf\c8:=?<\99U?+M9?\8e<\fe>H\beN?\19W\e4\be\b2\e0n\bf/-\12\bf\18\e7t?\93+\ab\bd(\c3[>\fe\86,\bf\f9\89a?G\bf\e4>X98\bf\c6\dc?\bf\89\fd~?\c8\f8(?\ef\b7X\bf]AZ\bf\b8(y\bf\f9r\1c?\t\15v\bf\1bJ9\bf\0c[\7f\bf\99(M\bf\n\f0s?(<0\bf\12:-\be\d5\fe{?)\e1C?K\9c\bf\bd\9a\1f\05\bf4;\cb\bb\d1\f0\7f\bf\b4\e6\fb>\b2(~\bf\b6e\00\be\83D\d5\be\a1i\1d\bf\ca\d4\d3\bdM1h\bf$Ms\bfJGj?X\0f&\bf\e3\c7#?\c4\03}\bf\ff\96\b3>\0c[|?\e8\'o\bf\8b\82h\bf\db\cd\1f>\af\f7\fb>XG\e8\be\b1\8a.?a4L?\a7\ech?t\d1&?E\bd7?\cb\88\0d\bfV\97\16?\fd\cc(?\f7\e5o?\86\847\bf\9e\98\f3\be\d8\cbC?\ec\17@?7\99.>\c3\a1N\bf\b7\c1~\bf\b3HS\bf!ZL\bf\1bno?\aa\b4[?\84l\b1\be\f4f&?:t+\bf\a5\83>?\1b\0ft\bf\99\87\14?:\d1\7f\bf\fa\e9(\bf(\e2\83>\c2\afa?\e5\80f\bf\03|4\bf\"\fe\bc>[\8e\b9\bc\de\8b\0e?;\ce\a9\be\9b\b8}?y\fb\\\bf\a8\b5m\bf\8c\9f->\92\",\bf2\d1\fc\ba\f9\0bz?\b4u`\bf\cc\0ci?\0e\ccC\bf\ac\98\8a>\d0\a8{\bf\14\a6P?\89\f9\7f\bf\11\08f\bf<tZ?\85aY?\e4\a2e\beTF\0d\be\da@\d4\beg\f6\05>\bf2\1d?\86\13q?\add\ac\be\c1\1c \bf=\1c\ed>m\01B\bfH:Q\bf\c5\f6~\bf!\dcy\bfdyp>\9b\94\7f\bf\0d\ea\15?^\a7p\bf\b0\94C\bf?\dc\1f?\03\95<=b\be\16?^VE?\1c\b9O\bf\8d\8az?N\99\7f\bf\e2\e3\ba=K\03\e6\be\a86\ba\beN\c0q?\95\97r\bf\e1\8e.\bf)\82\1c\bfH\b4y?\e3\1f\c0\bd\cb\f43\bf/\cb\1b\bf\f4\8f\b2\bd?\14s\be\d2*\95>\07$v?\fa5b?v\cc\8c\be\b4\96O\bf80d\bf\91[\04>\9d$\ab\bef\bcD\be\86\b2A\bf\'\d1t\bf\a0ty\bf\a3\d0{?\fc\9d\92\beymU?\05\9b\bc>\b2\05D? o\bd\bc#7c?9\05z?\9a\fao?\8f\97s?\b4TG\bfo\\\e8\bea\c0D\bfg\e2d\bfF\ebY\bfxo\0b?\f0\b6k?]C}\bfZ\f7\7f\bf\99\cd\0f?\d9\e6S\bf\d5\ae\0b?0\14->\ac\07\02\bf\e0\bcD?\17\88v\bf$\caf?~c\b6=)I\af\be\b8\ac\ee\be}\1c%\bf\b2\c46?\cdM??\00\00\00\00\00\00\80?\00\00\80?\00\00\80?\00\00\00\00\00\00\80?\00\00\80?\00\00\80\bf\00\00\00\00\00\00\80?\00\00\80\bf\00\00\80?\00\00\00\00\00\00\80?\00\00\80\bf\00\00\80\bf\00\00\00\00\00\00\80\bf\00\00\80?\00\00\80?\00\00\00\00\00\00\80\bf\00\00\80?\00\00\80\bf\00\00\00\00\00\00\80\bf\00\00\80\bf\00\00\80?\00\00\00\00\00\00\80\bf\00\00\80\bf\00\00\80\bf\00\00\80?\00\00\00\00\00\00\80?\00\00\80?\00\00\80?\00\00\00\00\00\00\80?\00\00\80\bf\00\00\80?\00\00\00\00\00\00\80\bf\00\00\80?\00\00\80?\00\00\00\00\00\00\80\bf\00\00\80\bf\00\00\80\bf\00\00\00\00\00\00\80?\00\00\80?\00\00\80\bf\00\00\00\00\00\00\80?\00\00\80\bf\00\00\80\bf\00\00\00\00\00\00\80\bf\00\00\80?\00\00\80\bf\00\00\00\00\00\00\80\bf\00\00\80\bf\00\00\80?\00\00\80?\00\00\00\00\00\00\80?\00\00\80?\00\00\80?\00\00\00\00\00\00\80\bf\00\00\80?\00\00\80\bf\00\00\00\00\00\00\80?\00\00\80?\00\00\80\bf\00\00\00\00\00\00\80\bf\00\00\80\bf\00\00\80?\00\00\00\00\00\00\80?\00\00\80\bf\00\00\80?\00\00\00\00\00\00\80\bf\00\00\80\bf\00\00\80\bf\00\00\00\00\00\00\80?\00\00\80\bf\00\00\80\bf\00\00\00\00\00\00\80\bf\00\00\80?\00\00\80?\00\00\80?\00\00\00\00\00\00\80?\00\00\80?\00\00\80\bf\00\00\00\00\00\00\80?\00\00\80\bf\00\00\80?\00\00\00\00\00\00\80?\00\00\80\bf\00\00\80\bf\00\00\00\00\00\00\80\bf\00\00\80?\00\00\80?\00\00\00\00\00\00\80\bf\00\00\80?\00\00\80\bf\00\00\00\00\00\00\80\bf\00\00\80\bf\00\00\80?\00\00\00\00\00\00\80\bf\00\00\80\bf\00\00\80\bf\00\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\03\00\00\0061\00\00\00\04\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\n\ff\ff\ff\ff\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\008!\00\00\00\00\00\00\10\05\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\t\00\00\00\n\00\00\00\0b\00\00\00\00\00\00\008\05\00\00\04\00\00\00\0c\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\0d\00\00\00\0e\00\00\00\0f\00\00\00\00\00\00\00H\05\00\00\10\00\00\00\11\00\00\00\12\00\00\00\00\00\00\00x\05\00\00\04\00\00\00\13\00\00\00\06\00\00\00\07\00\00\00\14\00\00\00\00\00\00\00h\05\00\00\04\00\00\00\15\00\00\00\06\00\00\00\07\00\00\00\16\00\00\00\00\00\00\00\f8\05\00\00\04\00\00\00\17\00\00\00\06\00\00\00\07\00\00\00\18\00\00\00\00\00\00\00\08\06\00\00\04\00\00\00\19\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\1a\00\00\00\1b\00\00\00\1c\00\00\00NoiseType\00Value\00ValueFractal\00Perlin\00PerlinFractal\00Simplex\00SimplexFractal\00Cellular\00WhiteNoise\00Cubic\00CubicFractal\00Interp\00Linear\00Hermite\00Quintic\00FractalType\00FBM\00Billow\00RigidMulti\00CellularDistanceFunction\00Euclidean\00Manhattan\00Natural\00CellularReturnType\00CellValue\00NoiseLookup\00Distance\00Distance2\00Distance2Add\00Distance2Sub\00Distance2Mul\00Distance2Div\00FastNoise\00seed\00frequency\00interp\00noiseType\00fractalOctaves\00fractalLacunarity\00fractalGain\00fractalType\00cellularDistanceFunction\00cellularJitter\00gradientPerturbAmp\00value2D\00valueFractal2D\00perlin2D\00perlinFractal2D\00simplex2D\00simplexFractal2D\00cellular2D\00whiteNoise2D\00whiteNoiseInt2D\00cubic2D\00cubicFractal2D\00getNoise2D\00value3D\00valueFractal3D\00perlin3D\00perlinFractal3D\00simplex3D\00simplexFractal3D\00cellular3D\00whiteNoise3D\00whiteNoiseInt3D\00cubic3D\00cubicFractal3D\00getNoise3D\00simplex4D\00whiteNoise4D\00whiteNoiseInt4D\00N9FastNoise9NoiseTypeE\00N9FastNoise6InterpE\00N9FastNoise11FractalTypeE\00N9FastNoise24CellularDistanceFunctionE\00N9FastNoise18CellularReturnTypeE\009FastNoise\00P9FastNoise\00PK9FastNoise\00ii\00v\00vi\00iii\00viii\00fii\00viif\00fiiff\00fiiii\00fiifff\00fiiiii\00fiiffff\00fiiiiii\00m_cellularNoiseLookup\00FastNoise/FastNoise.cpp\00SingleCellular\00\00\01\02\03\00\01\03\02\00\00\00\00\00\02\03\01\00\00\00\00\00\00\00\00\00\00\00\00\01\02\03\00\00\02\01\03\00\00\00\00\00\03\01\02\00\03\02\01\00\00\00\00\00\00\00\00\00\00\00\00\01\03\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\02\00\03\00\00\00\00\01\03\00\02\00\00\00\00\00\00\00\00\00\00\00\00\02\03\00\01\02\03\01\00\01\00\02\03\01\00\03\02\00\00\00\00\00\00\00\00\00\00\00\00\02\00\03\01\00\00\00\00\02\01\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\01\03\00\00\00\00\00\00\00\00\00\00\00\00\03\00\01\02\03\00\02\01\00\00\00\00\03\01\02\00\02\01\00\03\00\00\00\00\00\00\00\00\00\00\00\00\03\01\00\02\00\00\00\00\03\02\00\01\03\02\01\00void\00bool\00char\00signed char\00unsigned char\00short\00unsigned short\00int\00unsigned int\00long\00unsigned long\00float\00double\00std::string\00std::basic_string<unsigned char>\00std::wstring\00emscripten::val\00emscripten::memory_view<char>\00emscripten::memory_view<signed char>\00emscripten::memory_view<unsigned char>\00emscripten::memory_view<short>\00emscripten::memory_view<unsigned short>\00emscripten::memory_view<int>\00emscripten::memory_view<unsigned int>\00emscripten::memory_view<long>\00emscripten::memory_view<unsigned long>\00emscripten::memory_view<int8_t>\00emscripten::memory_view<uint8_t>\00emscripten::memory_view<int16_t>\00emscripten::memory_view<uint16_t>\00emscripten::memory_view<int32_t>\00emscripten::memory_view<uint32_t>\00emscripten::memory_view<float>\00emscripten::memory_view<double>\00emscripten::memory_view<long double>\00N10emscripten11memory_viewIeEE\00N10emscripten11memory_viewIdEE\00N10emscripten11memory_viewIfEE\00N10emscripten11memory_viewImEE\00N10emscripten11memory_viewIlEE\00N10emscripten11memory_viewIjEE\00N10emscripten11memory_viewIiEE\00N10emscripten11memory_viewItEE\00N10emscripten11memory_viewIsEE\00N10emscripten11memory_viewIhEE\00N10emscripten11memory_viewIaEE\00N10emscripten11memory_viewIcEE\00N10emscripten3valE\00NSt3__212basic_stringIwNS_11char_traitsIwEENS_9allocatorIwEEEE\00NSt3__221__basic_string_commonILb1EEE\00NSt3__212basic_stringIhNS_11char_traitsIhEENS_9allocatorIhEEEE\00NSt3__212basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE\00St9exception\00N10__cxxabiv116__shim_type_infoE\00St9type_info\00N10__cxxabiv120__si_class_type_infoE\00N10__cxxabiv117__class_type_infoE\00std::bad_alloc\00St9bad_alloc\00N10__cxxabiv119__pointer_type_infoE\00N10__cxxabiv117__pbase_type_infoE\00N10__cxxabiv123__fundamental_type_infoE\00v\00Dn\00b\00c\00h\00a\00s\00t\00i\00j\00l\00m\00f\00d\00N10__cxxabiv116__enum_type_infoE\00N10__cxxabiv121__vmi_class_type_infoE")
 (export "_sbrk" (func $_sbrk))
 (export "_fflush" (func $_fflush))
 (export "_pthread_self" (func $_pthread_self))
 (export "_memset" (func $_memset))
 (export "_malloc" (func $_malloc))
 (export "_memcpy" (func $_memcpy))
 (export "___getTypeName" (func $___getTypeName))
 (export "_free" (func $_free))
 (export "___errno_location" (func $___errno_location))
 (export "__GLOBAL__sub_I_EMBindings_cpp" (func $__GLOBAL__sub_I_EMBindings_cpp))
 (export "__GLOBAL__sub_I_FastNoise_cpp" (func $__GLOBAL__sub_I_FastNoise_cpp))
 (export "__GLOBAL__sub_I_bind_cpp" (func $__GLOBAL__sub_I_bind_cpp))
 (export "runPostSets" (func $runPostSets))
 (export "stackAlloc" (func $stackAlloc))
 (export "stackSave" (func $stackSave))
 (export "stackRestore" (func $stackRestore))
 (export "establishStackSpace" (func $establishStackSpace))
 (export "setThrew" (func $setThrew))
 (export "setTempRet0" (func $setTempRet0))
 (export "getTempRet0" (func $getTempRet0))
 (export "dynCall_viiiii" (func $dynCall_viiiii))
 (export "dynCall_vif" (func $legalstub$dynCall_vif))
 (export "dynCall_fiff" (func $legalstub$dynCall_fiff))
 (export "dynCall_vi" (func $dynCall_vi))
 (export "dynCall_vii" (func $dynCall_vii))
 (export "dynCall_ii" (func $dynCall_ii))
 (export "dynCall_fiiffff" (func $legalstub$dynCall_fiiffff))
 (export "dynCall_fifff" (func $legalstub$dynCall_fifff))
 (export "dynCall_fiiiiii" (func $legalstub$dynCall_fiiiiii))
 (export "dynCall_fiffff" (func $legalstub$dynCall_fiffff))
 (export "dynCall_iiii" (func $dynCall_iiii))
 (export "dynCall_fiiff" (func $legalstub$dynCall_fiiff))
 (export "dynCall_fii" (func $legalstub$dynCall_fii))
 (export "dynCall_fiifff" (func $legalstub$dynCall_fiifff))
 (export "dynCall_fiii" (func $legalstub$dynCall_fiii))
 (export "dynCall_fiiiii" (func $legalstub$dynCall_fiiiii))
 (export "dynCall_fi" (func $legalstub$dynCall_fi))
 (export "dynCall_iii" (func $dynCall_iii))
 (export "dynCall_viiiiii" (func $dynCall_viiiiii))
 (export "dynCall_fiiii" (func $legalstub$dynCall_fiiii))
 (export "dynCall_viii" (func $dynCall_viii))
 (export "dynCall_v" (func $dynCall_v))
 (export "dynCall_viif" (func $legalstub$dynCall_viif))
 (export "dynCall_viiii" (func $dynCall_viiii))
 (func $stackAlloc (param $size i32) (result i32)
  (local $ret i32)
  (set_local $ret
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (get_local $size)
   )
  )
  (set_global $STACKTOP
   (i32.and
    (i32.add
     (get_global $STACKTOP)
     (i32.const 15)
    )
    (i32.const -16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (get_local $size)
   )
  )
  (return
   (get_local $ret)
  )
 )
 (func $stackSave (result i32)
  (return
   (get_global $STACKTOP)
  )
 )
 (func $stackRestore (param $top i32)
  (set_global $STACKTOP
   (get_local $top)
  )
 )
 (func $establishStackSpace (param $stackBase i32) (param $stackMax i32)
  (set_global $STACKTOP
   (get_local $stackBase)
  )
  (set_global $STACK_MAX
   (get_local $stackMax)
  )
 )
 (func $setThrew (param $threw i32) (param $value i32)
  (if
   (i32.eq
    (get_global $__THREW__)
    (i32.const 0)
   )
   (block
    (set_global $__THREW__
     (get_local $threw)
    )
    (set_global $threwValue
     (get_local $value)
    )
   )
  )
 )
 (func $setTempRet0 (param $value i32)
  (set_global $tempRet0
   (get_local $value)
  )
 )
 (func $getTempRet0 (result i32)
  (return
   (get_global $tempRet0)
  )
 )
 (func $___cxx_global_var_init
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (call $__ZN38EmscriptenBindingInitializer_FastNoiseC2Ev
   (i32.const 12588)
  )
  (return)
 )
 (func $__ZN38EmscriptenBindingInitializer_FastNoiseC2Ev (param $$0 i32)
  (local $$$byval_copy i32)
  (local $$$byval_copy916 i32)
  (local $$$byval_copy917 i32)
  (local $$$byval_copy918 i32)
  (local $$$byval_copy919 i32)
  (local $$$byval_copy920 i32)
  (local $$$byval_copy921 i32)
  (local $$$byval_copy922 i32)
  (local $$$byval_copy923 i32)
  (local $$$byval_copy924 i32)
  (local $$$byval_copy925 i32)
  (local $$$byval_copy926 i32)
  (local $$$byval_copy927 i32)
  (local $$$byval_copy928 i32)
  (local $$$byval_copy929 i32)
  (local $$$byval_copy930 i32)
  (local $$$byval_copy931 i32)
  (local $$$byval_copy932 i32)
  (local $$$byval_copy933 i32)
  (local $$$byval_copy934 i32)
  (local $$$byval_copy935 i32)
  (local $$$byval_copy936 i32)
  (local $$$byval_copy937 i32)
  (local $$$byval_copy938 i32)
  (local $$$byval_copy939 i32)
  (local $$$byval_copy940 i32)
  (local $$$byval_copy941 i32)
  (local $$$byval_copy942 i32)
  (local $$$byval_copy943 i32)
  (local $$$byval_copy944 i32)
  (local $$$byval_copy945 i32)
  (local $$$byval_copy946 i32)
  (local $$$byval_copy947 i32)
  (local $$$byval_copy948 i32)
  (local $$$byval_copy949 i32)
  (local $$$byval_copy950 i32)
  (local $$$byval_copy951 i32)
  (local $$$byval_copy952 i32)
  (local $$$byval_copy953 i32)
  (local $$$byval_copy954 i32)
  (local $$$byval_copy955 i32)
  (local $$$byval_copy956 i32)
  (local $$$byval_copy957 i32)
  (local $$$byval_copy958 i32)
  (local $$$byval_copy959 i32)
  (local $$$byval_copy960 i32)
  (local $$$byval_copy961 i32)
  (local $$$byval_copy962 i32)
  (local $$$byval_copy963 i32)
  (local $$$byval_copy964 i32)
  (local $$$byval_copy965 i32)
  (local $$$field i32)
  (local $$$field102 i32)
  (local $$$field111 i32)
  (local $$$field114 i32)
  (local $$$field117 i32)
  (local $$$field12 i32)
  (local $$$field120 i32)
  (local $$$field127 i32)
  (local $$$field130 i32)
  (local $$$field135 i32)
  (local $$$field138 i32)
  (local $$$field147 i32)
  (local $$$field150 i32)
  (local $$$field153 i32)
  (local $$$field156 i32)
  (local $$$field163 i32)
  (local $$$field166 i32)
  (local $$$field171 i32)
  (local $$$field174 i32)
  (local $$$field183 i32)
  (local $$$field186 i32)
  (local $$$field189 i32)
  (local $$$field19 i32)
  (local $$$field192 i32)
  (local $$$field199 i32)
  (local $$$field202 i32)
  (local $$$field207 i32)
  (local $$$field210 i32)
  (local $$$field219 i32)
  (local $$$field22 i32)
  (local $$$field222 i32)
  (local $$$field225 i32)
  (local $$$field228 i32)
  (local $$$field235 i32)
  (local $$$field238 i32)
  (local $$$field243 i32)
  (local $$$field246 i32)
  (local $$$field255 i32)
  (local $$$field258 i32)
  (local $$$field261 i32)
  (local $$$field264 i32)
  (local $$$field27 i32)
  (local $$$field271 i32)
  (local $$$field274 i32)
  (local $$$field279 i32)
  (local $$$field282 i32)
  (local $$$field291 i32)
  (local $$$field294 i32)
  (local $$$field297 i32)
  (local $$$field30 i32)
  (local $$$field300 i32)
  (local $$$field307 i32)
  (local $$$field310 i32)
  (local $$$field315 i32)
  (local $$$field318 i32)
  (local $$$field327 i32)
  (local $$$field330 i32)
  (local $$$field333 i32)
  (local $$$field336 i32)
  (local $$$field343 i32)
  (local $$$field346 i32)
  (local $$$field351 i32)
  (local $$$field354 i32)
  (local $$$field363 i32)
  (local $$$field366 i32)
  (local $$$field369 i32)
  (local $$$field372 i32)
  (local $$$field379 i32)
  (local $$$field382 i32)
  (local $$$field387 i32)
  (local $$$field39 i32)
  (local $$$field390 i32)
  (local $$$field399 i32)
  (local $$$field402 i32)
  (local $$$field405 i32)
  (local $$$field408 i32)
  (local $$$field415 i32)
  (local $$$field418 i32)
  (local $$$field42 i32)
  (local $$$field423 i32)
  (local $$$field426 i32)
  (local $$$field433 i32)
  (local $$$field436 i32)
  (local $$$field441 i32)
  (local $$$field444 i32)
  (local $$$field45 i32)
  (local $$$field451 i32)
  (local $$$field454 i32)
  (local $$$field459 i32)
  (local $$$field462 i32)
  (local $$$field469 i32)
  (local $$$field472 i32)
  (local $$$field477 i32)
  (local $$$field48 i32)
  (local $$$field480 i32)
  (local $$$field487 i32)
  (local $$$field490 i32)
  (local $$$field495 i32)
  (local $$$field498 i32)
  (local $$$field505 i32)
  (local $$$field508 i32)
  (local $$$field513 i32)
  (local $$$field516 i32)
  (local $$$field523 i32)
  (local $$$field526 i32)
  (local $$$field531 i32)
  (local $$$field534 i32)
  (local $$$field541 i32)
  (local $$$field544 i32)
  (local $$$field549 i32)
  (local $$$field55 i32)
  (local $$$field552 i32)
  (local $$$field559 i32)
  (local $$$field562 i32)
  (local $$$field567 i32)
  (local $$$field570 i32)
  (local $$$field577 i32)
  (local $$$field58 i32)
  (local $$$field580 i32)
  (local $$$field585 i32)
  (local $$$field588 i32)
  (local $$$field595 i32)
  (local $$$field598 i32)
  (local $$$field6 i32)
  (local $$$field603 i32)
  (local $$$field606 i32)
  (local $$$field613 i32)
  (local $$$field616 i32)
  (local $$$field621 i32)
  (local $$$field624 i32)
  (local $$$field63 i32)
  (local $$$field631 i32)
  (local $$$field634 i32)
  (local $$$field639 i32)
  (local $$$field642 i32)
  (local $$$field649 i32)
  (local $$$field652 i32)
  (local $$$field657 i32)
  (local $$$field66 i32)
  (local $$$field660 i32)
  (local $$$field667 i32)
  (local $$$field670 i32)
  (local $$$field675 i32)
  (local $$$field678 i32)
  (local $$$field685 i32)
  (local $$$field688 i32)
  (local $$$field693 i32)
  (local $$$field696 i32)
  (local $$$field703 i32)
  (local $$$field706 i32)
  (local $$$field711 i32)
  (local $$$field714 i32)
  (local $$$field721 i32)
  (local $$$field724 i32)
  (local $$$field729 i32)
  (local $$$field732 i32)
  (local $$$field739 i32)
  (local $$$field742 i32)
  (local $$$field747 i32)
  (local $$$field75 i32)
  (local $$$field750 i32)
  (local $$$field757 i32)
  (local $$$field760 i32)
  (local $$$field765 i32)
  (local $$$field768 i32)
  (local $$$field775 i32)
  (local $$$field778 i32)
  (local $$$field78 i32)
  (local $$$field783 i32)
  (local $$$field786 i32)
  (local $$$field793 i32)
  (local $$$field796 i32)
  (local $$$field801 i32)
  (local $$$field804 i32)
  (local $$$field81 i32)
  (local $$$field811 i32)
  (local $$$field814 i32)
  (local $$$field819 i32)
  (local $$$field822 i32)
  (local $$$field829 i32)
  (local $$$field832 i32)
  (local $$$field837 i32)
  (local $$$field84 i32)
  (local $$$field840 i32)
  (local $$$field847 i32)
  (local $$$field850 i32)
  (local $$$field855 i32)
  (local $$$field858 i32)
  (local $$$field865 i32)
  (local $$$field868 i32)
  (local $$$field873 i32)
  (local $$$field876 i32)
  (local $$$field883 i32)
  (local $$$field886 i32)
  (local $$$field891 i32)
  (local $$$field894 i32)
  (local $$$field9 i32)
  (local $$$field901 i32)
  (local $$$field904 i32)
  (local $$$field909 i32)
  (local $$$field91 i32)
  (local $$$field912 i32)
  (local $$$field94 i32)
  (local $$$field99 i32)
  (local $$$index1 i32)
  (local $$$index101 i32)
  (local $$$index105 i32)
  (local $$$index107 i32)
  (local $$$index109 i32)
  (local $$$index11 i32)
  (local $$$index113 i32)
  (local $$$index119 i32)
  (local $$$index123 i32)
  (local $$$index125 i32)
  (local $$$index129 i32)
  (local $$$index133 i32)
  (local $$$index137 i32)
  (local $$$index141 i32)
  (local $$$index143 i32)
  (local $$$index145 i32)
  (local $$$index149 i32)
  (local $$$index15 i32)
  (local $$$index155 i32)
  (local $$$index159 i32)
  (local $$$index161 i32)
  (local $$$index165 i32)
  (local $$$index169 i32)
  (local $$$index17 i32)
  (local $$$index173 i32)
  (local $$$index177 i32)
  (local $$$index179 i32)
  (local $$$index181 i32)
  (local $$$index185 i32)
  (local $$$index191 i32)
  (local $$$index195 i32)
  (local $$$index197 i32)
  (local $$$index201 i32)
  (local $$$index205 i32)
  (local $$$index209 i32)
  (local $$$index21 i32)
  (local $$$index213 i32)
  (local $$$index215 i32)
  (local $$$index217 i32)
  (local $$$index221 i32)
  (local $$$index227 i32)
  (local $$$index231 i32)
  (local $$$index233 i32)
  (local $$$index237 i32)
  (local $$$index241 i32)
  (local $$$index245 i32)
  (local $$$index249 i32)
  (local $$$index25 i32)
  (local $$$index251 i32)
  (local $$$index253 i32)
  (local $$$index257 i32)
  (local $$$index263 i32)
  (local $$$index267 i32)
  (local $$$index269 i32)
  (local $$$index273 i32)
  (local $$$index277 i32)
  (local $$$index281 i32)
  (local $$$index285 i32)
  (local $$$index287 i32)
  (local $$$index289 i32)
  (local $$$index29 i32)
  (local $$$index293 i32)
  (local $$$index299 i32)
  (local $$$index3 i32)
  (local $$$index303 i32)
  (local $$$index305 i32)
  (local $$$index309 i32)
  (local $$$index313 i32)
  (local $$$index317 i32)
  (local $$$index321 i32)
  (local $$$index323 i32)
  (local $$$index325 i32)
  (local $$$index329 i32)
  (local $$$index33 i32)
  (local $$$index335 i32)
  (local $$$index339 i32)
  (local $$$index341 i32)
  (local $$$index345 i32)
  (local $$$index349 i32)
  (local $$$index35 i32)
  (local $$$index353 i32)
  (local $$$index357 i32)
  (local $$$index359 i32)
  (local $$$index361 i32)
  (local $$$index365 i32)
  (local $$$index37 i32)
  (local $$$index371 i32)
  (local $$$index375 i32)
  (local $$$index377 i32)
  (local $$$index381 i32)
  (local $$$index385 i32)
  (local $$$index389 i32)
  (local $$$index393 i32)
  (local $$$index395 i32)
  (local $$$index397 i32)
  (local $$$index401 i32)
  (local $$$index407 i32)
  (local $$$index41 i32)
  (local $$$index411 i32)
  (local $$$index413 i32)
  (local $$$index417 i32)
  (local $$$index421 i32)
  (local $$$index425 i32)
  (local $$$index429 i32)
  (local $$$index431 i32)
  (local $$$index435 i32)
  (local $$$index439 i32)
  (local $$$index443 i32)
  (local $$$index447 i32)
  (local $$$index449 i32)
  (local $$$index453 i32)
  (local $$$index457 i32)
  (local $$$index461 i32)
  (local $$$index465 i32)
  (local $$$index467 i32)
  (local $$$index47 i32)
  (local $$$index471 i32)
  (local $$$index475 i32)
  (local $$$index479 i32)
  (local $$$index483 i32)
  (local $$$index485 i32)
  (local $$$index489 i32)
  (local $$$index493 i32)
  (local $$$index497 i32)
  (local $$$index5 i32)
  (local $$$index501 i32)
  (local $$$index503 i32)
  (local $$$index507 i32)
  (local $$$index51 i32)
  (local $$$index511 i32)
  (local $$$index515 i32)
  (local $$$index519 i32)
  (local $$$index521 i32)
  (local $$$index525 i32)
  (local $$$index529 i32)
  (local $$$index53 i32)
  (local $$$index533 i32)
  (local $$$index537 i32)
  (local $$$index539 i32)
  (local $$$index543 i32)
  (local $$$index547 i32)
  (local $$$index551 i32)
  (local $$$index555 i32)
  (local $$$index557 i32)
  (local $$$index561 i32)
  (local $$$index565 i32)
  (local $$$index569 i32)
  (local $$$index57 i32)
  (local $$$index573 i32)
  (local $$$index575 i32)
  (local $$$index579 i32)
  (local $$$index583 i32)
  (local $$$index587 i32)
  (local $$$index591 i32)
  (local $$$index593 i32)
  (local $$$index597 i32)
  (local $$$index601 i32)
  (local $$$index605 i32)
  (local $$$index609 i32)
  (local $$$index61 i32)
  (local $$$index611 i32)
  (local $$$index615 i32)
  (local $$$index619 i32)
  (local $$$index623 i32)
  (local $$$index627 i32)
  (local $$$index629 i32)
  (local $$$index633 i32)
  (local $$$index637 i32)
  (local $$$index641 i32)
  (local $$$index645 i32)
  (local $$$index647 i32)
  (local $$$index65 i32)
  (local $$$index651 i32)
  (local $$$index655 i32)
  (local $$$index659 i32)
  (local $$$index663 i32)
  (local $$$index665 i32)
  (local $$$index669 i32)
  (local $$$index673 i32)
  (local $$$index677 i32)
  (local $$$index681 i32)
  (local $$$index683 i32)
  (local $$$index687 i32)
  (local $$$index69 i32)
  (local $$$index691 i32)
  (local $$$index695 i32)
  (local $$$index699 i32)
  (local $$$index701 i32)
  (local $$$index705 i32)
  (local $$$index709 i32)
  (local $$$index71 i32)
  (local $$$index713 i32)
  (local $$$index717 i32)
  (local $$$index719 i32)
  (local $$$index723 i32)
  (local $$$index727 i32)
  (local $$$index73 i32)
  (local $$$index731 i32)
  (local $$$index735 i32)
  (local $$$index737 i32)
  (local $$$index741 i32)
  (local $$$index745 i32)
  (local $$$index749 i32)
  (local $$$index753 i32)
  (local $$$index755 i32)
  (local $$$index759 i32)
  (local $$$index763 i32)
  (local $$$index767 i32)
  (local $$$index77 i32)
  (local $$$index771 i32)
  (local $$$index773 i32)
  (local $$$index777 i32)
  (local $$$index781 i32)
  (local $$$index785 i32)
  (local $$$index789 i32)
  (local $$$index791 i32)
  (local $$$index795 i32)
  (local $$$index799 i32)
  (local $$$index803 i32)
  (local $$$index807 i32)
  (local $$$index809 i32)
  (local $$$index813 i32)
  (local $$$index817 i32)
  (local $$$index821 i32)
  (local $$$index825 i32)
  (local $$$index827 i32)
  (local $$$index83 i32)
  (local $$$index831 i32)
  (local $$$index835 i32)
  (local $$$index839 i32)
  (local $$$index843 i32)
  (local $$$index845 i32)
  (local $$$index849 i32)
  (local $$$index853 i32)
  (local $$$index857 i32)
  (local $$$index861 i32)
  (local $$$index863 i32)
  (local $$$index867 i32)
  (local $$$index87 i32)
  (local $$$index871 i32)
  (local $$$index875 i32)
  (local $$$index879 i32)
  (local $$$index881 i32)
  (local $$$index885 i32)
  (local $$$index889 i32)
  (local $$$index89 i32)
  (local $$$index893 i32)
  (local $$$index897 i32)
  (local $$$index899 i32)
  (local $$$index903 i32)
  (local $$$index907 i32)
  (local $$$index911 i32)
  (local $$$index915 i32)
  (local $$$index93 i32)
  (local $$$index97 i32)
  (local $$1 i32)
  (local $$10 i32)
  (local $$100 i32)
  (local $$101 i32)
  (local $$102 i32)
  (local $$103 i32)
  (local $$104 i32)
  (local $$105 i32)
  (local $$106 i32)
  (local $$107 i32)
  (local $$108 i32)
  (local $$109 i32)
  (local $$11 i32)
  (local $$110 i32)
  (local $$111 i32)
  (local $$112 i32)
  (local $$113 i32)
  (local $$114 i32)
  (local $$115 i32)
  (local $$116 i32)
  (local $$117 i32)
  (local $$118 i32)
  (local $$119 i32)
  (local $$12 i32)
  (local $$120 i32)
  (local $$121 i32)
  (local $$122 i32)
  (local $$123 i32)
  (local $$124 i32)
  (local $$125 i32)
  (local $$126 i32)
  (local $$127 i32)
  (local $$128 i32)
  (local $$129 i32)
  (local $$13 i32)
  (local $$130 i32)
  (local $$131 i32)
  (local $$132 i32)
  (local $$133 i32)
  (local $$134 i32)
  (local $$135 i32)
  (local $$136 i32)
  (local $$137 i32)
  (local $$138 i32)
  (local $$139 i32)
  (local $$14 i32)
  (local $$140 i32)
  (local $$141 i32)
  (local $$142 i32)
  (local $$143 i32)
  (local $$144 i32)
  (local $$145 i32)
  (local $$146 i32)
  (local $$147 i32)
  (local $$148 i32)
  (local $$149 i32)
  (local $$15 i32)
  (local $$150 i32)
  (local $$151 i32)
  (local $$152 i32)
  (local $$153 i32)
  (local $$154 i32)
  (local $$155 i32)
  (local $$156 i32)
  (local $$157 i32)
  (local $$158 i32)
  (local $$159 i32)
  (local $$16 i32)
  (local $$160 i32)
  (local $$161 i32)
  (local $$162 i32)
  (local $$163 i32)
  (local $$164 i32)
  (local $$165 i32)
  (local $$166 i32)
  (local $$167 i32)
  (local $$168 i32)
  (local $$169 i32)
  (local $$17 i32)
  (local $$170 i32)
  (local $$171 i32)
  (local $$172 i32)
  (local $$173 i32)
  (local $$174 i32)
  (local $$175 i32)
  (local $$176 i32)
  (local $$177 i32)
  (local $$178 i32)
  (local $$179 i32)
  (local $$18 i32)
  (local $$180 i32)
  (local $$181 i32)
  (local $$182 i32)
  (local $$183 i32)
  (local $$184 i32)
  (local $$185 i32)
  (local $$186 i32)
  (local $$187 i32)
  (local $$188 i32)
  (local $$189 i32)
  (local $$19 i32)
  (local $$190 i32)
  (local $$191 i32)
  (local $$192 i32)
  (local $$193 i32)
  (local $$194 i32)
  (local $$195 i32)
  (local $$196 i32)
  (local $$197 i32)
  (local $$198 i32)
  (local $$199 i32)
  (local $$2 i32)
  (local $$20 i32)
  (local $$200 i32)
  (local $$201 i32)
  (local $$202 i32)
  (local $$203 i32)
  (local $$204 i32)
  (local $$205 i32)
  (local $$206 i32)
  (local $$207 i32)
  (local $$208 i32)
  (local $$209 i32)
  (local $$21 i32)
  (local $$210 i32)
  (local $$211 i32)
  (local $$212 i32)
  (local $$213 i32)
  (local $$214 i32)
  (local $$215 i32)
  (local $$216 i32)
  (local $$217 i32)
  (local $$218 i32)
  (local $$219 i32)
  (local $$22 i32)
  (local $$220 i32)
  (local $$221 i32)
  (local $$222 i32)
  (local $$223 i32)
  (local $$224 i32)
  (local $$225 i32)
  (local $$226 i32)
  (local $$227 i32)
  (local $$228 i32)
  (local $$229 i32)
  (local $$23 i32)
  (local $$230 i32)
  (local $$231 i32)
  (local $$232 i32)
  (local $$233 i32)
  (local $$234 i32)
  (local $$235 i32)
  (local $$236 i32)
  (local $$237 i32)
  (local $$238 i32)
  (local $$239 i32)
  (local $$24 i32)
  (local $$240 i32)
  (local $$241 i32)
  (local $$242 i32)
  (local $$243 i32)
  (local $$244 i32)
  (local $$245 i32)
  (local $$246 i32)
  (local $$247 i32)
  (local $$248 i32)
  (local $$249 i32)
  (local $$25 i32)
  (local $$250 i32)
  (local $$251 i32)
  (local $$252 i32)
  (local $$253 i32)
  (local $$254 i32)
  (local $$255 i32)
  (local $$256 i32)
  (local $$257 i32)
  (local $$258 i32)
  (local $$259 i32)
  (local $$26 i32)
  (local $$260 i32)
  (local $$261 i32)
  (local $$262 i32)
  (local $$263 i32)
  (local $$264 i32)
  (local $$265 i32)
  (local $$266 i32)
  (local $$267 i32)
  (local $$268 i32)
  (local $$269 i32)
  (local $$27 i32)
  (local $$270 i32)
  (local $$271 i32)
  (local $$272 i32)
  (local $$273 i32)
  (local $$274 i32)
  (local $$275 i32)
  (local $$276 i32)
  (local $$277 i32)
  (local $$278 i32)
  (local $$279 i32)
  (local $$28 i32)
  (local $$280 i32)
  (local $$281 i32)
  (local $$282 i32)
  (local $$283 i32)
  (local $$284 i32)
  (local $$285 i32)
  (local $$286 i32)
  (local $$287 i32)
  (local $$288 i32)
  (local $$289 i32)
  (local $$29 i32)
  (local $$290 i32)
  (local $$291 i32)
  (local $$292 i32)
  (local $$293 i32)
  (local $$294 i32)
  (local $$295 i32)
  (local $$296 i32)
  (local $$297 i32)
  (local $$298 i32)
  (local $$299 i32)
  (local $$3 i32)
  (local $$30 i32)
  (local $$300 i32)
  (local $$301 i32)
  (local $$302 i32)
  (local $$303 i32)
  (local $$304 i32)
  (local $$305 i32)
  (local $$306 i32)
  (local $$307 i32)
  (local $$308 i32)
  (local $$309 i32)
  (local $$31 i32)
  (local $$310 i32)
  (local $$311 i32)
  (local $$312 i32)
  (local $$313 i32)
  (local $$314 i32)
  (local $$315 i32)
  (local $$316 i32)
  (local $$317 i32)
  (local $$318 i32)
  (local $$319 i32)
  (local $$32 i32)
  (local $$320 i32)
  (local $$321 i32)
  (local $$322 i32)
  (local $$323 i32)
  (local $$324 i32)
  (local $$325 i32)
  (local $$326 i32)
  (local $$327 i32)
  (local $$328 i32)
  (local $$329 i32)
  (local $$33 i32)
  (local $$330 i32)
  (local $$331 i32)
  (local $$332 i32)
  (local $$333 i32)
  (local $$334 i32)
  (local $$335 i32)
  (local $$336 i32)
  (local $$337 i32)
  (local $$338 i32)
  (local $$339 i32)
  (local $$34 i32)
  (local $$340 i32)
  (local $$341 i32)
  (local $$342 i32)
  (local $$343 i32)
  (local $$344 i32)
  (local $$345 i32)
  (local $$346 i32)
  (local $$347 i32)
  (local $$348 i32)
  (local $$349 i32)
  (local $$35 i32)
  (local $$350 i32)
  (local $$351 i32)
  (local $$352 i32)
  (local $$353 i32)
  (local $$354 i32)
  (local $$355 i32)
  (local $$356 i32)
  (local $$357 i32)
  (local $$358 i32)
  (local $$359 i32)
  (local $$36 i32)
  (local $$360 i32)
  (local $$361 i32)
  (local $$362 i32)
  (local $$363 i32)
  (local $$364 i32)
  (local $$365 i32)
  (local $$366 i32)
  (local $$367 i32)
  (local $$368 i32)
  (local $$369 i32)
  (local $$37 i32)
  (local $$370 i32)
  (local $$371 i32)
  (local $$372 i32)
  (local $$373 i32)
  (local $$374 i32)
  (local $$375 i32)
  (local $$376 i32)
  (local $$377 i32)
  (local $$378 i32)
  (local $$379 i32)
  (local $$38 i32)
  (local $$380 i32)
  (local $$381 i32)
  (local $$382 i32)
  (local $$383 i32)
  (local $$384 i32)
  (local $$385 i32)
  (local $$386 i32)
  (local $$387 i32)
  (local $$388 i32)
  (local $$389 i32)
  (local $$39 i32)
  (local $$390 i32)
  (local $$391 i32)
  (local $$392 i32)
  (local $$393 i32)
  (local $$394 i32)
  (local $$395 i32)
  (local $$396 i32)
  (local $$397 i32)
  (local $$398 i32)
  (local $$399 i32)
  (local $$4 i32)
  (local $$40 i32)
  (local $$400 i32)
  (local $$401 i32)
  (local $$402 i32)
  (local $$403 i32)
  (local $$404 i32)
  (local $$405 i32)
  (local $$406 i32)
  (local $$407 i32)
  (local $$408 i32)
  (local $$409 i32)
  (local $$41 i32)
  (local $$410 i32)
  (local $$411 i32)
  (local $$412 i32)
  (local $$413 i32)
  (local $$414 i32)
  (local $$415 i32)
  (local $$416 i32)
  (local $$417 i32)
  (local $$418 i32)
  (local $$419 i32)
  (local $$42 i32)
  (local $$420 i32)
  (local $$421 i32)
  (local $$422 i32)
  (local $$423 i32)
  (local $$424 i32)
  (local $$425 i32)
  (local $$426 i32)
  (local $$427 i32)
  (local $$428 i32)
  (local $$429 i32)
  (local $$43 i32)
  (local $$430 i32)
  (local $$431 i32)
  (local $$432 i32)
  (local $$433 i32)
  (local $$434 i32)
  (local $$435 i32)
  (local $$436 i32)
  (local $$437 i32)
  (local $$438 i32)
  (local $$439 i32)
  (local $$44 i32)
  (local $$440 i32)
  (local $$441 i32)
  (local $$442 i32)
  (local $$443 i32)
  (local $$444 i32)
  (local $$445 i32)
  (local $$446 i32)
  (local $$447 i32)
  (local $$448 i32)
  (local $$449 i32)
  (local $$45 i32)
  (local $$450 i32)
  (local $$451 i32)
  (local $$452 i32)
  (local $$453 i32)
  (local $$454 i32)
  (local $$455 i32)
  (local $$456 i32)
  (local $$457 i32)
  (local $$458 i32)
  (local $$459 i32)
  (local $$46 i32)
  (local $$460 i32)
  (local $$461 i32)
  (local $$462 i32)
  (local $$463 i32)
  (local $$464 i32)
  (local $$465 i32)
  (local $$466 i32)
  (local $$467 i32)
  (local $$468 i32)
  (local $$469 i32)
  (local $$47 i32)
  (local $$470 i32)
  (local $$471 i32)
  (local $$472 i32)
  (local $$473 i32)
  (local $$474 i32)
  (local $$475 i32)
  (local $$476 i32)
  (local $$477 i32)
  (local $$478 i32)
  (local $$479 i32)
  (local $$48 i32)
  (local $$480 i32)
  (local $$481 i32)
  (local $$482 i32)
  (local $$483 i32)
  (local $$484 i32)
  (local $$485 i32)
  (local $$486 i32)
  (local $$487 i32)
  (local $$488 i32)
  (local $$489 i32)
  (local $$49 i32)
  (local $$490 i32)
  (local $$491 i32)
  (local $$492 i32)
  (local $$493 i32)
  (local $$494 i32)
  (local $$495 i32)
  (local $$496 i32)
  (local $$497 i32)
  (local $$498 i32)
  (local $$499 i32)
  (local $$5 i32)
  (local $$50 i32)
  (local $$500 i32)
  (local $$501 i32)
  (local $$502 i32)
  (local $$503 i32)
  (local $$504 i32)
  (local $$505 i32)
  (local $$506 i32)
  (local $$507 i32)
  (local $$508 i32)
  (local $$509 i32)
  (local $$51 i32)
  (local $$510 i32)
  (local $$511 i32)
  (local $$512 i32)
  (local $$513 i32)
  (local $$514 i32)
  (local $$515 i32)
  (local $$516 i32)
  (local $$517 i32)
  (local $$518 i32)
  (local $$519 i32)
  (local $$52 i32)
  (local $$520 i32)
  (local $$521 i32)
  (local $$522 i32)
  (local $$523 i32)
  (local $$524 i32)
  (local $$525 i32)
  (local $$526 i32)
  (local $$527 i32)
  (local $$528 i32)
  (local $$529 i32)
  (local $$53 i32)
  (local $$530 i32)
  (local $$531 i32)
  (local $$532 i32)
  (local $$533 i32)
  (local $$534 i32)
  (local $$535 i32)
  (local $$536 i32)
  (local $$537 i32)
  (local $$538 i32)
  (local $$539 i32)
  (local $$54 i32)
  (local $$540 i32)
  (local $$541 i32)
  (local $$542 i32)
  (local $$543 i32)
  (local $$544 i32)
  (local $$545 i32)
  (local $$546 i32)
  (local $$547 i32)
  (local $$548 i32)
  (local $$549 i32)
  (local $$55 i32)
  (local $$550 i32)
  (local $$551 i32)
  (local $$552 i32)
  (local $$553 i32)
  (local $$554 i32)
  (local $$555 i32)
  (local $$556 i32)
  (local $$557 i32)
  (local $$558 i32)
  (local $$559 i32)
  (local $$56 i32)
  (local $$560 i32)
  (local $$561 i32)
  (local $$562 i32)
  (local $$563 i32)
  (local $$564 i32)
  (local $$565 i32)
  (local $$566 i32)
  (local $$567 i32)
  (local $$568 i32)
  (local $$569 i32)
  (local $$57 i32)
  (local $$570 i32)
  (local $$571 i32)
  (local $$572 i32)
  (local $$573 i32)
  (local $$574 i32)
  (local $$575 i32)
  (local $$576 i32)
  (local $$577 i32)
  (local $$578 i32)
  (local $$579 i32)
  (local $$58 i32)
  (local $$580 i32)
  (local $$581 i32)
  (local $$582 i32)
  (local $$583 i32)
  (local $$584 i32)
  (local $$585 i32)
  (local $$586 i32)
  (local $$587 i32)
  (local $$588 i32)
  (local $$589 i32)
  (local $$59 i32)
  (local $$590 i32)
  (local $$591 i32)
  (local $$592 i32)
  (local $$593 i32)
  (local $$594 i32)
  (local $$595 i32)
  (local $$596 i32)
  (local $$597 i32)
  (local $$598 i32)
  (local $$599 i32)
  (local $$6 i32)
  (local $$60 i32)
  (local $$600 i32)
  (local $$601 i32)
  (local $$602 i32)
  (local $$603 i32)
  (local $$604 i32)
  (local $$605 i32)
  (local $$606 i32)
  (local $$607 i32)
  (local $$608 i32)
  (local $$609 i32)
  (local $$61 i32)
  (local $$610 i32)
  (local $$611 i32)
  (local $$612 i32)
  (local $$613 i32)
  (local $$614 i32)
  (local $$615 i32)
  (local $$616 i32)
  (local $$617 i32)
  (local $$618 i32)
  (local $$619 i32)
  (local $$62 i32)
  (local $$620 i32)
  (local $$621 i32)
  (local $$622 i32)
  (local $$623 i32)
  (local $$624 i32)
  (local $$625 i32)
  (local $$626 i32)
  (local $$627 i32)
  (local $$628 i32)
  (local $$629 i32)
  (local $$63 i32)
  (local $$630 i32)
  (local $$631 i32)
  (local $$632 i32)
  (local $$633 i32)
  (local $$634 i32)
  (local $$635 i32)
  (local $$636 i32)
  (local $$637 i32)
  (local $$638 i32)
  (local $$639 i32)
  (local $$64 i32)
  (local $$640 i32)
  (local $$641 i32)
  (local $$642 i32)
  (local $$643 i32)
  (local $$644 i32)
  (local $$645 i32)
  (local $$646 i32)
  (local $$647 i32)
  (local $$648 i32)
  (local $$649 i32)
  (local $$65 i32)
  (local $$650 i32)
  (local $$651 i32)
  (local $$652 i32)
  (local $$653 i32)
  (local $$654 i32)
  (local $$655 i32)
  (local $$656 i32)
  (local $$657 i32)
  (local $$658 i32)
  (local $$659 i32)
  (local $$66 i32)
  (local $$660 i32)
  (local $$661 i32)
  (local $$662 i32)
  (local $$663 i32)
  (local $$664 i32)
  (local $$665 i32)
  (local $$666 i32)
  (local $$667 i32)
  (local $$668 i32)
  (local $$669 i32)
  (local $$67 i32)
  (local $$670 i32)
  (local $$671 i32)
  (local $$672 i32)
  (local $$673 i32)
  (local $$674 i32)
  (local $$675 i32)
  (local $$676 i32)
  (local $$677 i32)
  (local $$678 i32)
  (local $$679 i32)
  (local $$68 i32)
  (local $$680 i32)
  (local $$681 i32)
  (local $$682 i32)
  (local $$683 i32)
  (local $$684 i32)
  (local $$685 i32)
  (local $$686 i32)
  (local $$687 i32)
  (local $$688 i32)
  (local $$689 i32)
  (local $$69 i32)
  (local $$690 i32)
  (local $$691 i32)
  (local $$692 i32)
  (local $$693 i32)
  (local $$694 i32)
  (local $$695 i32)
  (local $$696 i32)
  (local $$697 i32)
  (local $$698 i32)
  (local $$699 i32)
  (local $$7 i32)
  (local $$70 i32)
  (local $$700 i32)
  (local $$701 i32)
  (local $$702 i32)
  (local $$703 i32)
  (local $$704 i32)
  (local $$705 i32)
  (local $$706 i32)
  (local $$707 i32)
  (local $$708 i32)
  (local $$709 i32)
  (local $$71 i32)
  (local $$710 i32)
  (local $$711 i32)
  (local $$712 i32)
  (local $$713 i32)
  (local $$714 i32)
  (local $$715 i32)
  (local $$716 i32)
  (local $$717 i32)
  (local $$718 i32)
  (local $$719 i32)
  (local $$72 i32)
  (local $$720 i32)
  (local $$721 i32)
  (local $$722 i32)
  (local $$723 i32)
  (local $$724 i32)
  (local $$725 i32)
  (local $$726 i32)
  (local $$727 i32)
  (local $$728 i32)
  (local $$729 i32)
  (local $$73 i32)
  (local $$730 i32)
  (local $$731 i32)
  (local $$732 i32)
  (local $$733 i32)
  (local $$734 i32)
  (local $$735 i32)
  (local $$736 i32)
  (local $$737 i32)
  (local $$738 i32)
  (local $$739 i32)
  (local $$74 i32)
  (local $$740 i32)
  (local $$741 i32)
  (local $$742 i32)
  (local $$743 i32)
  (local $$744 i32)
  (local $$745 i32)
  (local $$746 i32)
  (local $$747 i32)
  (local $$748 i32)
  (local $$749 i32)
  (local $$75 i32)
  (local $$750 i32)
  (local $$751 i32)
  (local $$752 i32)
  (local $$753 i32)
  (local $$754 i32)
  (local $$755 i32)
  (local $$756 i32)
  (local $$757 i32)
  (local $$758 i32)
  (local $$759 i32)
  (local $$76 i32)
  (local $$760 i32)
  (local $$761 i32)
  (local $$762 i32)
  (local $$763 i32)
  (local $$764 i32)
  (local $$765 i32)
  (local $$766 i32)
  (local $$767 i32)
  (local $$768 i32)
  (local $$769 i32)
  (local $$77 i32)
  (local $$770 i32)
  (local $$771 i32)
  (local $$772 i32)
  (local $$773 i32)
  (local $$774 i32)
  (local $$775 i32)
  (local $$776 i32)
  (local $$777 i32)
  (local $$778 i32)
  (local $$779 i32)
  (local $$78 i32)
  (local $$780 i32)
  (local $$781 i32)
  (local $$782 i32)
  (local $$783 i32)
  (local $$784 i32)
  (local $$785 i32)
  (local $$786 i32)
  (local $$787 i32)
  (local $$788 i32)
  (local $$789 i32)
  (local $$79 i32)
  (local $$790 i32)
  (local $$791 i32)
  (local $$792 i32)
  (local $$793 i32)
  (local $$794 i32)
  (local $$795 i32)
  (local $$796 i32)
  (local $$797 i32)
  (local $$798 i32)
  (local $$799 i32)
  (local $$8 i32)
  (local $$80 i32)
  (local $$800 i32)
  (local $$801 i32)
  (local $$802 i32)
  (local $$803 i32)
  (local $$804 i32)
  (local $$805 i32)
  (local $$806 i32)
  (local $$807 i32)
  (local $$808 i32)
  (local $$809 i32)
  (local $$81 i32)
  (local $$810 i32)
  (local $$811 i32)
  (local $$812 i32)
  (local $$813 i32)
  (local $$814 i32)
  (local $$815 i32)
  (local $$816 i32)
  (local $$817 i32)
  (local $$818 i32)
  (local $$819 i32)
  (local $$82 i32)
  (local $$820 i32)
  (local $$821 i32)
  (local $$822 i32)
  (local $$823 i32)
  (local $$824 i32)
  (local $$825 i32)
  (local $$826 i32)
  (local $$827 i32)
  (local $$828 i32)
  (local $$829 i32)
  (local $$83 i32)
  (local $$830 i32)
  (local $$831 i32)
  (local $$832 i32)
  (local $$833 i32)
  (local $$834 i32)
  (local $$835 i32)
  (local $$836 i32)
  (local $$837 i32)
  (local $$838 i32)
  (local $$839 i32)
  (local $$84 i32)
  (local $$840 i32)
  (local $$841 i32)
  (local $$842 i32)
  (local $$843 i32)
  (local $$844 i32)
  (local $$845 i32)
  (local $$846 i32)
  (local $$847 i32)
  (local $$848 i32)
  (local $$849 i32)
  (local $$85 i32)
  (local $$850 i32)
  (local $$851 i32)
  (local $$852 i32)
  (local $$853 i32)
  (local $$854 i32)
  (local $$855 i32)
  (local $$856 i32)
  (local $$857 i32)
  (local $$858 i32)
  (local $$859 i32)
  (local $$86 i32)
  (local $$860 i32)
  (local $$861 i32)
  (local $$862 i32)
  (local $$863 i32)
  (local $$864 i32)
  (local $$865 i32)
  (local $$866 i32)
  (local $$867 i32)
  (local $$868 i32)
  (local $$869 i32)
  (local $$87 i32)
  (local $$870 i32)
  (local $$871 i32)
  (local $$872 i32)
  (local $$873 i32)
  (local $$874 i32)
  (local $$875 i32)
  (local $$876 i32)
  (local $$877 i32)
  (local $$878 i32)
  (local $$879 i32)
  (local $$88 i32)
  (local $$880 i32)
  (local $$881 i32)
  (local $$882 i32)
  (local $$883 i32)
  (local $$884 i32)
  (local $$885 i32)
  (local $$886 i32)
  (local $$887 i32)
  (local $$888 i32)
  (local $$889 i32)
  (local $$89 i32)
  (local $$890 i32)
  (local $$891 i32)
  (local $$892 i32)
  (local $$893 i32)
  (local $$894 i32)
  (local $$895 i32)
  (local $$896 i32)
  (local $$897 i32)
  (local $$898 i32)
  (local $$899 i32)
  (local $$9 i32)
  (local $$90 i32)
  (local $$900 i32)
  (local $$901 i32)
  (local $$902 i32)
  (local $$903 i32)
  (local $$904 i32)
  (local $$905 i32)
  (local $$906 i32)
  (local $$907 i32)
  (local $$908 i32)
  (local $$909 i32)
  (local $$91 i32)
  (local $$92 i32)
  (local $$93 i32)
  (local $$94 i32)
  (local $$95 i32)
  (local $$96 i32)
  (local $$97 i32)
  (local $$98 i32)
  (local $$99 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 3088)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 3088)
   )
  )
  (set_local $$$byval_copy965
   (i32.add
    (get_local $sp)
    (i32.const 3040)
   )
  )
  (set_local $$$byval_copy964
   (i32.add
    (get_local $sp)
    (i32.const 3032)
   )
  )
  (set_local $$$byval_copy963
   (i32.add
    (get_local $sp)
    (i32.const 3024)
   )
  )
  (set_local $$$byval_copy962
   (i32.add
    (get_local $sp)
    (i32.const 3016)
   )
  )
  (set_local $$$byval_copy961
   (i32.add
    (get_local $sp)
    (i32.const 3008)
   )
  )
  (set_local $$$byval_copy960
   (i32.add
    (get_local $sp)
    (i32.const 3000)
   )
  )
  (set_local $$$byval_copy959
   (i32.add
    (get_local $sp)
    (i32.const 2992)
   )
  )
  (set_local $$$byval_copy958
   (i32.add
    (get_local $sp)
    (i32.const 2984)
   )
  )
  (set_local $$$byval_copy957
   (i32.add
    (get_local $sp)
    (i32.const 2976)
   )
  )
  (set_local $$$byval_copy956
   (i32.add
    (get_local $sp)
    (i32.const 2968)
   )
  )
  (set_local $$$byval_copy955
   (i32.add
    (get_local $sp)
    (i32.const 2960)
   )
  )
  (set_local $$$byval_copy954
   (i32.add
    (get_local $sp)
    (i32.const 2952)
   )
  )
  (set_local $$$byval_copy953
   (i32.add
    (get_local $sp)
    (i32.const 2944)
   )
  )
  (set_local $$$byval_copy952
   (i32.add
    (get_local $sp)
    (i32.const 2936)
   )
  )
  (set_local $$$byval_copy951
   (i32.add
    (get_local $sp)
    (i32.const 2928)
   )
  )
  (set_local $$$byval_copy950
   (i32.add
    (get_local $sp)
    (i32.const 2920)
   )
  )
  (set_local $$$byval_copy949
   (i32.add
    (get_local $sp)
    (i32.const 2912)
   )
  )
  (set_local $$$byval_copy948
   (i32.add
    (get_local $sp)
    (i32.const 2904)
   )
  )
  (set_local $$$byval_copy947
   (i32.add
    (get_local $sp)
    (i32.const 2896)
   )
  )
  (set_local $$$byval_copy946
   (i32.add
    (get_local $sp)
    (i32.const 2888)
   )
  )
  (set_local $$$byval_copy945
   (i32.add
    (get_local $sp)
    (i32.const 2880)
   )
  )
  (set_local $$$byval_copy944
   (i32.add
    (get_local $sp)
    (i32.const 2872)
   )
  )
  (set_local $$$byval_copy943
   (i32.add
    (get_local $sp)
    (i32.const 2864)
   )
  )
  (set_local $$$byval_copy942
   (i32.add
    (get_local $sp)
    (i32.const 2856)
   )
  )
  (set_local $$$byval_copy941
   (i32.add
    (get_local $sp)
    (i32.const 2848)
   )
  )
  (set_local $$$byval_copy940
   (i32.add
    (get_local $sp)
    (i32.const 2840)
   )
  )
  (set_local $$$byval_copy939
   (i32.add
    (get_local $sp)
    (i32.const 2832)
   )
  )
  (set_local $$$byval_copy938
   (i32.add
    (get_local $sp)
    (i32.const 2824)
   )
  )
  (set_local $$$byval_copy937
   (i32.add
    (get_local $sp)
    (i32.const 2816)
   )
  )
  (set_local $$$byval_copy936
   (i32.add
    (get_local $sp)
    (i32.const 2808)
   )
  )
  (set_local $$$byval_copy935
   (i32.add
    (get_local $sp)
    (i32.const 2800)
   )
  )
  (set_local $$$byval_copy934
   (i32.add
    (get_local $sp)
    (i32.const 2792)
   )
  )
  (set_local $$$byval_copy933
   (i32.add
    (get_local $sp)
    (i32.const 2784)
   )
  )
  (set_local $$$byval_copy932
   (i32.add
    (get_local $sp)
    (i32.const 2776)
   )
  )
  (set_local $$$byval_copy931
   (i32.add
    (get_local $sp)
    (i32.const 2768)
   )
  )
  (set_local $$$byval_copy930
   (i32.add
    (get_local $sp)
    (i32.const 2760)
   )
  )
  (set_local $$$byval_copy929
   (i32.add
    (get_local $sp)
    (i32.const 2752)
   )
  )
  (set_local $$$byval_copy928
   (i32.add
    (get_local $sp)
    (i32.const 2744)
   )
  )
  (set_local $$$byval_copy927
   (i32.add
    (get_local $sp)
    (i32.const 2736)
   )
  )
  (set_local $$$byval_copy926
   (i32.add
    (get_local $sp)
    (i32.const 2728)
   )
  )
  (set_local $$$byval_copy925
   (i32.add
    (get_local $sp)
    (i32.const 2720)
   )
  )
  (set_local $$$byval_copy924
   (i32.add
    (get_local $sp)
    (i32.const 2712)
   )
  )
  (set_local $$$byval_copy923
   (i32.add
    (get_local $sp)
    (i32.const 2704)
   )
  )
  (set_local $$$byval_copy922
   (i32.add
    (get_local $sp)
    (i32.const 2696)
   )
  )
  (set_local $$$byval_copy921
   (i32.add
    (get_local $sp)
    (i32.const 2688)
   )
  )
  (set_local $$$byval_copy920
   (i32.add
    (get_local $sp)
    (i32.const 2680)
   )
  )
  (set_local $$$byval_copy919
   (i32.add
    (get_local $sp)
    (i32.const 2672)
   )
  )
  (set_local $$$byval_copy918
   (i32.add
    (get_local $sp)
    (i32.const 2664)
   )
  )
  (set_local $$$byval_copy917
   (i32.add
    (get_local $sp)
    (i32.const 2656)
   )
  )
  (set_local $$$byval_copy916
   (i32.add
    (get_local $sp)
    (i32.const 2648)
   )
  )
  (set_local $$$byval_copy
   (i32.add
    (get_local $sp)
    (i32.const 2640)
   )
  )
  (set_local $$4
   (i32.add
    (get_local $sp)
    (i32.const 2616)
   )
  )
  (set_local $$6
   (i32.add
    (get_local $sp)
    (i32.const 3081)
   )
  )
  (set_local $$7
   (i32.add
    (get_local $sp)
    (i32.const 400)
   )
  )
  (set_local $$11
   (i32.add
    (get_local $sp)
    (i32.const 2592)
   )
  )
  (set_local $$13
   (i32.add
    (get_local $sp)
    (i32.const 3080)
   )
  )
  (set_local $$14
   (i32.add
    (get_local $sp)
    (i32.const 392)
   )
  )
  (set_local $$18
   (i32.add
    (get_local $sp)
    (i32.const 2568)
   )
  )
  (set_local $$20
   (i32.add
    (get_local $sp)
    (i32.const 3079)
   )
  )
  (set_local $$21
   (i32.add
    (get_local $sp)
    (i32.const 384)
   )
  )
  (set_local $$25
   (i32.add
    (get_local $sp)
    (i32.const 2544)
   )
  )
  (set_local $$27
   (i32.add
    (get_local $sp)
    (i32.const 3078)
   )
  )
  (set_local $$28
   (i32.add
    (get_local $sp)
    (i32.const 376)
   )
  )
  (set_local $$32
   (i32.add
    (get_local $sp)
    (i32.const 2520)
   )
  )
  (set_local $$34
   (i32.add
    (get_local $sp)
    (i32.const 3077)
   )
  )
  (set_local $$35
   (i32.add
    (get_local $sp)
    (i32.const 368)
   )
  )
  (set_local $$39
   (i32.add
    (get_local $sp)
    (i32.const 2496)
   )
  )
  (set_local $$41
   (i32.add
    (get_local $sp)
    (i32.const 3076)
   )
  )
  (set_local $$42
   (i32.add
    (get_local $sp)
    (i32.const 360)
   )
  )
  (set_local $$46
   (i32.add
    (get_local $sp)
    (i32.const 2472)
   )
  )
  (set_local $$48
   (i32.add
    (get_local $sp)
    (i32.const 3075)
   )
  )
  (set_local $$49
   (i32.add
    (get_local $sp)
    (i32.const 352)
   )
  )
  (set_local $$53
   (i32.add
    (get_local $sp)
    (i32.const 2448)
   )
  )
  (set_local $$55
   (i32.add
    (get_local $sp)
    (i32.const 3074)
   )
  )
  (set_local $$56
   (i32.add
    (get_local $sp)
    (i32.const 344)
   )
  )
  (set_local $$60
   (i32.add
    (get_local $sp)
    (i32.const 2424)
   )
  )
  (set_local $$62
   (i32.add
    (get_local $sp)
    (i32.const 3073)
   )
  )
  (set_local $$63
   (i32.add
    (get_local $sp)
    (i32.const 336)
   )
  )
  (set_local $$67
   (i32.add
    (get_local $sp)
    (i32.const 2400)
   )
  )
  (set_local $$69
   (i32.add
    (get_local $sp)
    (i32.const 3072)
   )
  )
  (set_local $$70
   (i32.add
    (get_local $sp)
    (i32.const 328)
   )
  )
  (set_local $$74
   (i32.add
    (get_local $sp)
    (i32.const 2376)
   )
  )
  (set_local $$76
   (i32.add
    (get_local $sp)
    (i32.const 3071)
   )
  )
  (set_local $$77
   (i32.add
    (get_local $sp)
    (i32.const 320)
   )
  )
  (set_local $$81
   (i32.add
    (get_local $sp)
    (i32.const 2352)
   )
  )
  (set_local $$83
   (i32.add
    (get_local $sp)
    (i32.const 3070)
   )
  )
  (set_local $$84
   (i32.add
    (get_local $sp)
    (i32.const 312)
   )
  )
  (set_local $$88
   (i32.add
    (get_local $sp)
    (i32.const 2328)
   )
  )
  (set_local $$90
   (i32.add
    (get_local $sp)
    (i32.const 3069)
   )
  )
  (set_local $$91
   (i32.add
    (get_local $sp)
    (i32.const 304)
   )
  )
  (set_local $$95
   (i32.add
    (get_local $sp)
    (i32.const 2304)
   )
  )
  (set_local $$97
   (i32.add
    (get_local $sp)
    (i32.const 3068)
   )
  )
  (set_local $$98
   (i32.add
    (get_local $sp)
    (i32.const 296)
   )
  )
  (set_local $$102
   (i32.add
    (get_local $sp)
    (i32.const 2280)
   )
  )
  (set_local $$104
   (i32.add
    (get_local $sp)
    (i32.const 3067)
   )
  )
  (set_local $$105
   (i32.add
    (get_local $sp)
    (i32.const 288)
   )
  )
  (set_local $$109
   (i32.add
    (get_local $sp)
    (i32.const 2256)
   )
  )
  (set_local $$111
   (i32.add
    (get_local $sp)
    (i32.const 3066)
   )
  )
  (set_local $$112
   (i32.add
    (get_local $sp)
    (i32.const 280)
   )
  )
  (set_local $$116
   (i32.add
    (get_local $sp)
    (i32.const 2232)
   )
  )
  (set_local $$118
   (i32.add
    (get_local $sp)
    (i32.const 3065)
   )
  )
  (set_local $$119
   (i32.add
    (get_local $sp)
    (i32.const 272)
   )
  )
  (set_local $$123
   (i32.add
    (get_local $sp)
    (i32.const 2208)
   )
  )
  (set_local $$125
   (i32.add
    (get_local $sp)
    (i32.const 3064)
   )
  )
  (set_local $$126
   (i32.add
    (get_local $sp)
    (i32.const 264)
   )
  )
  (set_local $$130
   (i32.add
    (get_local $sp)
    (i32.const 2184)
   )
  )
  (set_local $$132
   (i32.add
    (get_local $sp)
    (i32.const 3063)
   )
  )
  (set_local $$133
   (i32.add
    (get_local $sp)
    (i32.const 256)
   )
  )
  (set_local $$137
   (i32.add
    (get_local $sp)
    (i32.const 2160)
   )
  )
  (set_local $$139
   (i32.add
    (get_local $sp)
    (i32.const 3062)
   )
  )
  (set_local $$140
   (i32.add
    (get_local $sp)
    (i32.const 248)
   )
  )
  (set_local $$144
   (i32.add
    (get_local $sp)
    (i32.const 2136)
   )
  )
  (set_local $$146
   (i32.add
    (get_local $sp)
    (i32.const 3061)
   )
  )
  (set_local $$147
   (i32.add
    (get_local $sp)
    (i32.const 240)
   )
  )
  (set_local $$151
   (i32.add
    (get_local $sp)
    (i32.const 2112)
   )
  )
  (set_local $$153
   (i32.add
    (get_local $sp)
    (i32.const 3060)
   )
  )
  (set_local $$154
   (i32.add
    (get_local $sp)
    (i32.const 232)
   )
  )
  (set_local $$158
   (i32.add
    (get_local $sp)
    (i32.const 2088)
   )
  )
  (set_local $$160
   (i32.add
    (get_local $sp)
    (i32.const 3059)
   )
  )
  (set_local $$161
   (i32.add
    (get_local $sp)
    (i32.const 224)
   )
  )
  (set_local $$165
   (i32.add
    (get_local $sp)
    (i32.const 2064)
   )
  )
  (set_local $$167
   (i32.add
    (get_local $sp)
    (i32.const 3058)
   )
  )
  (set_local $$168
   (i32.add
    (get_local $sp)
    (i32.const 216)
   )
  )
  (set_local $$172
   (i32.add
    (get_local $sp)
    (i32.const 2040)
   )
  )
  (set_local $$174
   (i32.add
    (get_local $sp)
    (i32.const 3057)
   )
  )
  (set_local $$175
   (i32.add
    (get_local $sp)
    (i32.const 208)
   )
  )
  (set_local $$179
   (i32.add
    (get_local $sp)
    (i32.const 2016)
   )
  )
  (set_local $$181
   (i32.add
    (get_local $sp)
    (i32.const 3056)
   )
  )
  (set_local $$182
   (i32.add
    (get_local $sp)
    (i32.const 200)
   )
  )
  (set_local $$186
   (i32.add
    (get_local $sp)
    (i32.const 1992)
   )
  )
  (set_local $$188
   (i32.add
    (get_local $sp)
    (i32.const 3055)
   )
  )
  (set_local $$189
   (i32.add
    (get_local $sp)
    (i32.const 192)
   )
  )
  (set_local $$194
   (i32.add
    (get_local $sp)
    (i32.const 1960)
   )
  )
  (set_local $$195
   (i32.add
    (get_local $sp)
    (i32.const 1952)
   )
  )
  (set_local $$198
   (i32.add
    (get_local $sp)
    (i32.const 1936)
   )
  )
  (set_local $$199
   (i32.add
    (get_local $sp)
    (i32.const 1928)
   )
  )
  (set_local $$200
   (i32.add
    (get_local $sp)
    (i32.const 184)
   )
  )
  (set_local $$201
   (i32.add
    (get_local $sp)
    (i32.const 176)
   )
  )
  (set_local $$206
   (i32.add
    (get_local $sp)
    (i32.const 1904)
   )
  )
  (set_local $$207
   (i32.add
    (get_local $sp)
    (i32.const 1896)
   )
  )
  (set_local $$210
   (i32.add
    (get_local $sp)
    (i32.const 1880)
   )
  )
  (set_local $$211
   (i32.add
    (get_local $sp)
    (i32.const 1872)
   )
  )
  (set_local $$212
   (i32.add
    (get_local $sp)
    (i32.const 168)
   )
  )
  (set_local $$213
   (i32.add
    (get_local $sp)
    (i32.const 160)
   )
  )
  (set_local $$218
   (i32.add
    (get_local $sp)
    (i32.const 1848)
   )
  )
  (set_local $$219
   (i32.add
    (get_local $sp)
    (i32.const 1840)
   )
  )
  (set_local $$222
   (i32.add
    (get_local $sp)
    (i32.const 1824)
   )
  )
  (set_local $$223
   (i32.add
    (get_local $sp)
    (i32.const 1816)
   )
  )
  (set_local $$224
   (i32.add
    (get_local $sp)
    (i32.const 152)
   )
  )
  (set_local $$225
   (i32.add
    (get_local $sp)
    (i32.const 144)
   )
  )
  (set_local $$230
   (i32.add
    (get_local $sp)
    (i32.const 1792)
   )
  )
  (set_local $$231
   (i32.add
    (get_local $sp)
    (i32.const 1784)
   )
  )
  (set_local $$234
   (i32.add
    (get_local $sp)
    (i32.const 1768)
   )
  )
  (set_local $$235
   (i32.add
    (get_local $sp)
    (i32.const 1760)
   )
  )
  (set_local $$236
   (i32.add
    (get_local $sp)
    (i32.const 136)
   )
  )
  (set_local $$237
   (i32.add
    (get_local $sp)
    (i32.const 128)
   )
  )
  (set_local $$242
   (i32.add
    (get_local $sp)
    (i32.const 1736)
   )
  )
  (set_local $$243
   (i32.add
    (get_local $sp)
    (i32.const 1728)
   )
  )
  (set_local $$246
   (i32.add
    (get_local $sp)
    (i32.const 1712)
   )
  )
  (set_local $$247
   (i32.add
    (get_local $sp)
    (i32.const 1704)
   )
  )
  (set_local $$248
   (i32.add
    (get_local $sp)
    (i32.const 120)
   )
  )
  (set_local $$249
   (i32.add
    (get_local $sp)
    (i32.const 112)
   )
  )
  (set_local $$254
   (i32.add
    (get_local $sp)
    (i32.const 1680)
   )
  )
  (set_local $$255
   (i32.add
    (get_local $sp)
    (i32.const 1672)
   )
  )
  (set_local $$258
   (i32.add
    (get_local $sp)
    (i32.const 1656)
   )
  )
  (set_local $$259
   (i32.add
    (get_local $sp)
    (i32.const 1648)
   )
  )
  (set_local $$260
   (i32.add
    (get_local $sp)
    (i32.const 104)
   )
  )
  (set_local $$261
   (i32.add
    (get_local $sp)
    (i32.const 96)
   )
  )
  (set_local $$266
   (i32.add
    (get_local $sp)
    (i32.const 1624)
   )
  )
  (set_local $$267
   (i32.add
    (get_local $sp)
    (i32.const 1616)
   )
  )
  (set_local $$270
   (i32.add
    (get_local $sp)
    (i32.const 1600)
   )
  )
  (set_local $$271
   (i32.add
    (get_local $sp)
    (i32.const 1592)
   )
  )
  (set_local $$272
   (i32.add
    (get_local $sp)
    (i32.const 88)
   )
  )
  (set_local $$273
   (i32.add
    (get_local $sp)
    (i32.const 80)
   )
  )
  (set_local $$278
   (i32.add
    (get_local $sp)
    (i32.const 1568)
   )
  )
  (set_local $$279
   (i32.add
    (get_local $sp)
    (i32.const 1560)
   )
  )
  (set_local $$282
   (i32.add
    (get_local $sp)
    (i32.const 1544)
   )
  )
  (set_local $$283
   (i32.add
    (get_local $sp)
    (i32.const 1536)
   )
  )
  (set_local $$284
   (i32.add
    (get_local $sp)
    (i32.const 72)
   )
  )
  (set_local $$285
   (i32.add
    (get_local $sp)
    (i32.const 64)
   )
  )
  (set_local $$290
   (i32.add
    (get_local $sp)
    (i32.const 1512)
   )
  )
  (set_local $$291
   (i32.add
    (get_local $sp)
    (i32.const 1504)
   )
  )
  (set_local $$294
   (i32.add
    (get_local $sp)
    (i32.const 1488)
   )
  )
  (set_local $$295
   (i32.add
    (get_local $sp)
    (i32.const 1480)
   )
  )
  (set_local $$296
   (i32.add
    (get_local $sp)
    (i32.const 56)
   )
  )
  (set_local $$297
   (i32.add
    (get_local $sp)
    (i32.const 48)
   )
  )
  (set_local $$302
   (i32.add
    (get_local $sp)
    (i32.const 1456)
   )
  )
  (set_local $$303
   (i32.add
    (get_local $sp)
    (i32.const 1448)
   )
  )
  (set_local $$306
   (i32.add
    (get_local $sp)
    (i32.const 1432)
   )
  )
  (set_local $$307
   (i32.add
    (get_local $sp)
    (i32.const 1424)
   )
  )
  (set_local $$308
   (i32.add
    (get_local $sp)
    (i32.const 40)
   )
  )
  (set_local $$309
   (i32.add
    (get_local $sp)
    (i32.const 32)
   )
  )
  (set_local $$314
   (i32.add
    (get_local $sp)
    (i32.const 1400)
   )
  )
  (set_local $$315
   (i32.add
    (get_local $sp)
    (i32.const 1392)
   )
  )
  (set_local $$318
   (i32.add
    (get_local $sp)
    (i32.const 1376)
   )
  )
  (set_local $$319
   (i32.add
    (get_local $sp)
    (i32.const 1368)
   )
  )
  (set_local $$320
   (i32.add
    (get_local $sp)
    (i32.const 24)
   )
  )
  (set_local $$321
   (i32.add
    (get_local $sp)
    (i32.const 16)
   )
  )
  (set_local $$326
   (i32.add
    (get_local $sp)
    (i32.const 1344)
   )
  )
  (set_local $$327
   (i32.add
    (get_local $sp)
    (i32.const 1336)
   )
  )
  (set_local $$330
   (i32.add
    (get_local $sp)
    (i32.const 1320)
   )
  )
  (set_local $$331
   (i32.add
    (get_local $sp)
    (i32.const 1312)
   )
  )
  (set_local $$332
   (i32.add
    (get_local $sp)
    (i32.const 8)
   )
  )
  (set_local $$333
   (get_local $sp)
  )
  (set_local $$337
   (i32.add
    (get_local $sp)
    (i32.const 3054)
   )
  )
  (set_local $$351
   (i32.add
    (get_local $sp)
    (i32.const 3053)
   )
  )
  (set_local $$352
   (i32.add
    (get_local $sp)
    (i32.const 3052)
   )
  )
  (set_local $$353
   (i32.add
    (get_local $sp)
    (i32.const 3051)
   )
  )
  (set_local $$354
   (i32.add
    (get_local $sp)
    (i32.const 3050)
   )
  )
  (set_local $$355
   (i32.add
    (get_local $sp)
    (i32.const 3049)
   )
  )
  (set_local $$356
   (i32.add
    (get_local $sp)
    (i32.const 3048)
   )
  )
  (set_local $$357
   (i32.add
    (get_local $sp)
    (i32.const 1240)
   )
  )
  (set_local $$358
   (i32.add
    (get_local $sp)
    (i32.const 1232)
   )
  )
  (set_local $$359
   (i32.add
    (get_local $sp)
    (i32.const 1224)
   )
  )
  (set_local $$360
   (i32.add
    (get_local $sp)
    (i32.const 1216)
   )
  )
  (set_local $$361
   (i32.add
    (get_local $sp)
    (i32.const 1208)
   )
  )
  (set_local $$362
   (i32.add
    (get_local $sp)
    (i32.const 1200)
   )
  )
  (set_local $$363
   (i32.add
    (get_local $sp)
    (i32.const 1192)
   )
  )
  (set_local $$364
   (i32.add
    (get_local $sp)
    (i32.const 1184)
   )
  )
  (set_local $$365
   (i32.add
    (get_local $sp)
    (i32.const 1176)
   )
  )
  (set_local $$366
   (i32.add
    (get_local $sp)
    (i32.const 1168)
   )
  )
  (set_local $$367
   (i32.add
    (get_local $sp)
    (i32.const 1160)
   )
  )
  (set_local $$368
   (i32.add
    (get_local $sp)
    (i32.const 1152)
   )
  )
  (set_local $$369
   (i32.add
    (get_local $sp)
    (i32.const 1144)
   )
  )
  (set_local $$370
   (i32.add
    (get_local $sp)
    (i32.const 1136)
   )
  )
  (set_local $$371
   (i32.add
    (get_local $sp)
    (i32.const 1128)
   )
  )
  (set_local $$372
   (i32.add
    (get_local $sp)
    (i32.const 1120)
   )
  )
  (set_local $$373
   (i32.add
    (get_local $sp)
    (i32.const 1112)
   )
  )
  (set_local $$374
   (i32.add
    (get_local $sp)
    (i32.const 1104)
   )
  )
  (set_local $$375
   (i32.add
    (get_local $sp)
    (i32.const 1096)
   )
  )
  (set_local $$376
   (i32.add
    (get_local $sp)
    (i32.const 1088)
   )
  )
  (set_local $$377
   (i32.add
    (get_local $sp)
    (i32.const 1080)
   )
  )
  (set_local $$378
   (i32.add
    (get_local $sp)
    (i32.const 1072)
   )
  )
  (set_local $$379
   (i32.add
    (get_local $sp)
    (i32.const 1064)
   )
  )
  (set_local $$380
   (i32.add
    (get_local $sp)
    (i32.const 1056)
   )
  )
  (set_local $$381
   (i32.add
    (get_local $sp)
    (i32.const 1048)
   )
  )
  (set_local $$382
   (i32.add
    (get_local $sp)
    (i32.const 1040)
   )
  )
  (set_local $$383
   (i32.add
    (get_local $sp)
    (i32.const 1032)
   )
  )
  (set_local $$384
   (i32.add
    (get_local $sp)
    (i32.const 1024)
   )
  )
  (set_local $$385
   (i32.add
    (get_local $sp)
    (i32.const 1016)
   )
  )
  (set_local $$386
   (i32.add
    (get_local $sp)
    (i32.const 1008)
   )
  )
  (set_local $$387
   (i32.add
    (get_local $sp)
    (i32.const 1000)
   )
  )
  (set_local $$388
   (i32.add
    (get_local $sp)
    (i32.const 992)
   )
  )
  (set_local $$389
   (i32.add
    (get_local $sp)
    (i32.const 984)
   )
  )
  (set_local $$390
   (i32.add
    (get_local $sp)
    (i32.const 976)
   )
  )
  (set_local $$391
   (i32.add
    (get_local $sp)
    (i32.const 968)
   )
  )
  (set_local $$392
   (i32.add
    (get_local $sp)
    (i32.const 960)
   )
  )
  (set_local $$393
   (i32.add
    (get_local $sp)
    (i32.const 952)
   )
  )
  (set_local $$394
   (i32.add
    (get_local $sp)
    (i32.const 944)
   )
  )
  (set_local $$395
   (i32.add
    (get_local $sp)
    (i32.const 936)
   )
  )
  (set_local $$396
   (i32.add
    (get_local $sp)
    (i32.const 928)
   )
  )
  (set_local $$397
   (i32.add
    (get_local $sp)
    (i32.const 920)
   )
  )
  (set_local $$398
   (i32.add
    (get_local $sp)
    (i32.const 912)
   )
  )
  (set_local $$399
   (i32.add
    (get_local $sp)
    (i32.const 904)
   )
  )
  (set_local $$400
   (i32.add
    (get_local $sp)
    (i32.const 896)
   )
  )
  (set_local $$401
   (i32.add
    (get_local $sp)
    (i32.const 888)
   )
  )
  (set_local $$402
   (i32.add
    (get_local $sp)
    (i32.const 880)
   )
  )
  (set_local $$403
   (i32.add
    (get_local $sp)
    (i32.const 872)
   )
  )
  (set_local $$404
   (i32.add
    (get_local $sp)
    (i32.const 864)
   )
  )
  (set_local $$405
   (i32.add
    (get_local $sp)
    (i32.const 856)
   )
  )
  (set_local $$406
   (i32.add
    (get_local $sp)
    (i32.const 848)
   )
  )
  (set_local $$407
   (i32.add
    (get_local $sp)
    (i32.const 840)
   )
  )
  (set_local $$408
   (i32.add
    (get_local $sp)
    (i32.const 832)
   )
  )
  (set_local $$409
   (i32.add
    (get_local $sp)
    (i32.const 824)
   )
  )
  (set_local $$410
   (i32.add
    (get_local $sp)
    (i32.const 816)
   )
  )
  (set_local $$411
   (i32.add
    (get_local $sp)
    (i32.const 808)
   )
  )
  (set_local $$412
   (i32.add
    (get_local $sp)
    (i32.const 800)
   )
  )
  (set_local $$413
   (i32.add
    (get_local $sp)
    (i32.const 792)
   )
  )
  (set_local $$414
   (i32.add
    (get_local $sp)
    (i32.const 784)
   )
  )
  (set_local $$415
   (i32.add
    (get_local $sp)
    (i32.const 776)
   )
  )
  (set_local $$416
   (i32.add
    (get_local $sp)
    (i32.const 768)
   )
  )
  (set_local $$417
   (i32.add
    (get_local $sp)
    (i32.const 760)
   )
  )
  (set_local $$418
   (i32.add
    (get_local $sp)
    (i32.const 752)
   )
  )
  (set_local $$419
   (i32.add
    (get_local $sp)
    (i32.const 744)
   )
  )
  (set_local $$420
   (i32.add
    (get_local $sp)
    (i32.const 736)
   )
  )
  (set_local $$421
   (i32.add
    (get_local $sp)
    (i32.const 728)
   )
  )
  (set_local $$422
   (i32.add
    (get_local $sp)
    (i32.const 720)
   )
  )
  (set_local $$423
   (i32.add
    (get_local $sp)
    (i32.const 712)
   )
  )
  (set_local $$424
   (i32.add
    (get_local $sp)
    (i32.const 704)
   )
  )
  (set_local $$425
   (i32.add
    (get_local $sp)
    (i32.const 696)
   )
  )
  (set_local $$426
   (i32.add
    (get_local $sp)
    (i32.const 688)
   )
  )
  (set_local $$427
   (i32.add
    (get_local $sp)
    (i32.const 680)
   )
  )
  (set_local $$428
   (i32.add
    (get_local $sp)
    (i32.const 672)
   )
  )
  (set_local $$429
   (i32.add
    (get_local $sp)
    (i32.const 664)
   )
  )
  (set_local $$430
   (i32.add
    (get_local $sp)
    (i32.const 656)
   )
  )
  (set_local $$431
   (i32.add
    (get_local $sp)
    (i32.const 648)
   )
  )
  (set_local $$432
   (i32.add
    (get_local $sp)
    (i32.const 640)
   )
  )
  (set_local $$433
   (i32.add
    (get_local $sp)
    (i32.const 632)
   )
  )
  (set_local $$434
   (i32.add
    (get_local $sp)
    (i32.const 624)
   )
  )
  (set_local $$435
   (i32.add
    (get_local $sp)
    (i32.const 616)
   )
  )
  (set_local $$436
   (i32.add
    (get_local $sp)
    (i32.const 608)
   )
  )
  (set_local $$437
   (i32.add
    (get_local $sp)
    (i32.const 600)
   )
  )
  (set_local $$438
   (i32.add
    (get_local $sp)
    (i32.const 592)
   )
  )
  (set_local $$439
   (i32.add
    (get_local $sp)
    (i32.const 584)
   )
  )
  (set_local $$440
   (i32.add
    (get_local $sp)
    (i32.const 576)
   )
  )
  (set_local $$441
   (i32.add
    (get_local $sp)
    (i32.const 568)
   )
  )
  (set_local $$442
   (i32.add
    (get_local $sp)
    (i32.const 560)
   )
  )
  (set_local $$443
   (i32.add
    (get_local $sp)
    (i32.const 552)
   )
  )
  (set_local $$444
   (i32.add
    (get_local $sp)
    (i32.const 544)
   )
  )
  (set_local $$445
   (i32.add
    (get_local $sp)
    (i32.const 536)
   )
  )
  (set_local $$446
   (i32.add
    (get_local $sp)
    (i32.const 528)
   )
  )
  (set_local $$447
   (i32.add
    (get_local $sp)
    (i32.const 520)
   )
  )
  (set_local $$448
   (i32.add
    (get_local $sp)
    (i32.const 512)
   )
  )
  (set_local $$449
   (i32.add
    (get_local $sp)
    (i32.const 504)
   )
  )
  (set_local $$450
   (i32.add
    (get_local $sp)
    (i32.const 496)
   )
  )
  (set_local $$451
   (i32.add
    (get_local $sp)
    (i32.const 488)
   )
  )
  (set_local $$452
   (i32.add
    (get_local $sp)
    (i32.const 480)
   )
  )
  (set_local $$453
   (i32.add
    (get_local $sp)
    (i32.const 472)
   )
  )
  (set_local $$454
   (i32.add
    (get_local $sp)
    (i32.const 464)
   )
  )
  (set_local $$455
   (i32.add
    (get_local $sp)
    (i32.const 456)
   )
  )
  (set_local $$456
   (i32.add
    (get_local $sp)
    (i32.const 448)
   )
  )
  (set_local $$457
   (i32.add
    (get_local $sp)
    (i32.const 440)
   )
  )
  (set_local $$458
   (i32.add
    (get_local $sp)
    (i32.const 432)
   )
  )
  (set_local $$459
   (i32.add
    (get_local $sp)
    (i32.const 424)
   )
  )
  (set_local $$460
   (i32.add
    (get_local $sp)
    (i32.const 416)
   )
  )
  (set_local $$461
   (i32.add
    (get_local $sp)
    (i32.const 408)
   )
  )
  (set_local $$350
   (get_local $$0)
  )
  (call $__ZN10emscripten5enum_IN9FastNoise9NoiseTypeEEC2EPKc
   (get_local $$351)
   (i32.const 8844)
  )
  (set_local $$462
   (call $__ZN10emscripten5enum_IN9FastNoise9NoiseTypeEE5valueEPKcS2_
    (get_local $$351)
    (i32.const 8854)
    (i32.const 0)
   )
  )
  (set_local $$463
   (call $__ZN10emscripten5enum_IN9FastNoise9NoiseTypeEE5valueEPKcS2_
    (get_local $$462)
    (i32.const 8860)
    (i32.const 1)
   )
  )
  (set_local $$464
   (call $__ZN10emscripten5enum_IN9FastNoise9NoiseTypeEE5valueEPKcS2_
    (get_local $$463)
    (i32.const 8873)
    (i32.const 2)
   )
  )
  (set_local $$465
   (call $__ZN10emscripten5enum_IN9FastNoise9NoiseTypeEE5valueEPKcS2_
    (get_local $$464)
    (i32.const 8880)
    (i32.const 3)
   )
  )
  (set_local $$466
   (call $__ZN10emscripten5enum_IN9FastNoise9NoiseTypeEE5valueEPKcS2_
    (get_local $$465)
    (i32.const 8894)
    (i32.const 4)
   )
  )
  (set_local $$467
   (call $__ZN10emscripten5enum_IN9FastNoise9NoiseTypeEE5valueEPKcS2_
    (get_local $$466)
    (i32.const 8902)
    (i32.const 5)
   )
  )
  (set_local $$468
   (call $__ZN10emscripten5enum_IN9FastNoise9NoiseTypeEE5valueEPKcS2_
    (get_local $$467)
    (i32.const 8917)
    (i32.const 6)
   )
  )
  (set_local $$469
   (call $__ZN10emscripten5enum_IN9FastNoise9NoiseTypeEE5valueEPKcS2_
    (get_local $$468)
    (i32.const 8926)
    (i32.const 7)
   )
  )
  (set_local $$470
   (call $__ZN10emscripten5enum_IN9FastNoise9NoiseTypeEE5valueEPKcS2_
    (get_local $$469)
    (i32.const 8937)
    (i32.const 8)
   )
  )
  (drop
   (call $__ZN10emscripten5enum_IN9FastNoise9NoiseTypeEE5valueEPKcS2_
    (get_local $$470)
    (i32.const 8943)
    (i32.const 9)
   )
  )
  (call $__ZN10emscripten5enum_IN9FastNoise6InterpEEC2EPKc
   (get_local $$352)
   (i32.const 8956)
  )
  (set_local $$471
   (call $__ZN10emscripten5enum_IN9FastNoise6InterpEE5valueEPKcS2_
    (get_local $$352)
    (i32.const 8963)
    (i32.const 0)
   )
  )
  (set_local $$472
   (call $__ZN10emscripten5enum_IN9FastNoise6InterpEE5valueEPKcS2_
    (get_local $$471)
    (i32.const 8970)
    (i32.const 1)
   )
  )
  (drop
   (call $__ZN10emscripten5enum_IN9FastNoise6InterpEE5valueEPKcS2_
    (get_local $$472)
    (i32.const 8978)
    (i32.const 2)
   )
  )
  (call $__ZN10emscripten5enum_IN9FastNoise11FractalTypeEEC2EPKc
   (get_local $$353)
   (i32.const 8986)
  )
  (set_local $$473
   (call $__ZN10emscripten5enum_IN9FastNoise11FractalTypeEE5valueEPKcS2_
    (get_local $$353)
    (i32.const 8998)
    (i32.const 0)
   )
  )
  (set_local $$474
   (call $__ZN10emscripten5enum_IN9FastNoise11FractalTypeEE5valueEPKcS2_
    (get_local $$473)
    (i32.const 9002)
    (i32.const 1)
   )
  )
  (drop
   (call $__ZN10emscripten5enum_IN9FastNoise11FractalTypeEE5valueEPKcS2_
    (get_local $$474)
    (i32.const 9009)
    (i32.const 2)
   )
  )
  (call $__ZN10emscripten5enum_IN9FastNoise24CellularDistanceFunctionEEC2EPKc
   (get_local $$354)
   (i32.const 9020)
  )
  (set_local $$475
   (call $__ZN10emscripten5enum_IN9FastNoise24CellularDistanceFunctionEE5valueEPKcS2_
    (get_local $$354)
    (i32.const 9045)
    (i32.const 0)
   )
  )
  (set_local $$476
   (call $__ZN10emscripten5enum_IN9FastNoise24CellularDistanceFunctionEE5valueEPKcS2_
    (get_local $$475)
    (i32.const 9055)
    (i32.const 1)
   )
  )
  (drop
   (call $__ZN10emscripten5enum_IN9FastNoise24CellularDistanceFunctionEE5valueEPKcS2_
    (get_local $$476)
    (i32.const 9065)
    (i32.const 2)
   )
  )
  (call $__ZN10emscripten5enum_IN9FastNoise18CellularReturnTypeEEC2EPKc
   (get_local $$355)
   (i32.const 9073)
  )
  (set_local $$477
   (call $__ZN10emscripten5enum_IN9FastNoise18CellularReturnTypeEE5valueEPKcS2_
    (get_local $$355)
    (i32.const 9092)
    (i32.const 0)
   )
  )
  (set_local $$478
   (call $__ZN10emscripten5enum_IN9FastNoise18CellularReturnTypeEE5valueEPKcS2_
    (get_local $$477)
    (i32.const 9102)
    (i32.const 1)
   )
  )
  (set_local $$479
   (call $__ZN10emscripten5enum_IN9FastNoise18CellularReturnTypeEE5valueEPKcS2_
    (get_local $$478)
    (i32.const 9114)
    (i32.const 2)
   )
  )
  (set_local $$480
   (call $__ZN10emscripten5enum_IN9FastNoise18CellularReturnTypeEE5valueEPKcS2_
    (get_local $$479)
    (i32.const 9123)
    (i32.const 3)
   )
  )
  (set_local $$481
   (call $__ZN10emscripten5enum_IN9FastNoise18CellularReturnTypeEE5valueEPKcS2_
    (get_local $$480)
    (i32.const 9133)
    (i32.const 4)
   )
  )
  (set_local $$482
   (call $__ZN10emscripten5enum_IN9FastNoise18CellularReturnTypeEE5valueEPKcS2_
    (get_local $$481)
    (i32.const 9146)
    (i32.const 5)
   )
  )
  (set_local $$483
   (call $__ZN10emscripten5enum_IN9FastNoise18CellularReturnTypeEE5valueEPKcS2_
    (get_local $$482)
    (i32.const 9159)
    (i32.const 6)
   )
  )
  (drop
   (call $__ZN10emscripten5enum_IN9FastNoise18CellularReturnTypeEE5valueEPKcS2_
    (get_local $$483)
    (i32.const 9172)
    (i32.const 7)
   )
  )
  (set_local $$344
   (get_local $$356)
  )
  (set_local $$345
   (i32.const 9185)
  )
  (call $__ZN10emscripten8internal11NoBaseClass6verifyI9FastNoiseEEvv)
  (set_local $$346
   (i32.const 29)
  )
  (set_local $$484
   (call $__ZN10emscripten8internal11NoBaseClass11getUpcasterI9FastNoiseEEPFvvEv)
  )
  (set_local $$347
   (get_local $$484)
  )
  (set_local $$485
   (call $__ZN10emscripten8internal11NoBaseClass13getDowncasterI9FastNoiseEEPFvvEv)
  )
  (set_local $$348
   (get_local $$485)
  )
  (set_local $$349
   (i32.const 30)
  )
  (set_local $$486
   (call $__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv)
  )
  (set_local $$487
   (call $__ZN10emscripten8internal6TypeIDINS0_17AllowedRawPointerI9FastNoiseEEE3getEv)
  )
  (set_local $$488
   (call $__ZN10emscripten8internal6TypeIDINS0_17AllowedRawPointerIK9FastNoiseEEE3getEv)
  )
  (set_local $$489
   (call $__ZN10emscripten8internal11NoBaseClass3getEv)
  )
  (set_local $$490
   (get_local $$346)
  )
  (set_local $$343
   (get_local $$490)
  )
  (set_local $$491
   (call $__ZN10emscripten8internal19getGenericSignatureIJiiEEEPKcv)
  )
  (set_local $$492
   (get_local $$346)
  )
  (set_local $$493
   (get_local $$347)
  )
  (set_local $$342
   (get_local $$493)
  )
  (set_local $$494
   (call $__ZN10emscripten8internal19getGenericSignatureIJvEEEPKcv)
  )
  (set_local $$495
   (get_local $$347)
  )
  (set_local $$496
   (get_local $$348)
  )
  (set_local $$341
   (get_local $$496)
  )
  (set_local $$497
   (call $__ZN10emscripten8internal19getGenericSignatureIJvEEEPKcv)
  )
  (set_local $$498
   (get_local $$348)
  )
  (set_local $$499
   (get_local $$345)
  )
  (set_local $$500
   (get_local $$349)
  )
  (set_local $$340
   (get_local $$500)
  )
  (set_local $$501
   (call $__ZN10emscripten8internal19getGenericSignatureIJviEEEPKcv)
  )
  (set_local $$502
   (get_local $$349)
  )
  (call $__embind_register_class
   (get_local $$486)
   (get_local $$487)
   (get_local $$488)
   (get_local $$489)
   (get_local $$491)
   (get_local $$492)
   (get_local $$494)
   (get_local $$495)
   (get_local $$497)
   (get_local $$498)
   (get_local $$499)
   (get_local $$501)
   (get_local $$502)
  )
  (set_local $$339
   (get_local $$356)
  )
  (set_local $$503
   (get_local $$339)
  )
  (set_local $$335
   (get_local $$503)
  )
  (set_local $$336
   (i32.const 31)
  )
  (set_local $$504
   (get_local $$335)
  )
  (set_local $$338
   (i32.const 32)
  )
  (set_local $$505
   (call $__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv)
  )
  (set_local $$506
   (call $__ZNK10emscripten8internal12WithPoliciesIJNS_18allow_raw_pointersEEE11ArgTypeListIJP9FastNoiseOiEE8getCountEv
    (get_local $$337)
   )
  )
  (set_local $$507
   (call $__ZNK10emscripten8internal12WithPoliciesIJNS_18allow_raw_pointersEEE11ArgTypeListIJP9FastNoiseOiEE8getTypesEv
    (get_local $$337)
   )
  )
  (set_local $$508
   (get_local $$338)
  )
  (set_local $$334
   (get_local $$508)
  )
  (set_local $$509
   (call $__ZN10emscripten8internal19getGenericSignatureIJiiiEEEPKcv)
  )
  (set_local $$510
   (get_local $$338)
  )
  (set_local $$511
   (get_local $$336)
  )
  (call $__embind_register_class_constructor
   (get_local $$505)
   (get_local $$506)
   (get_local $$507)
   (get_local $$509)
   (get_local $$510)
   (get_local $$511)
  )
  (i32.store
   (get_local $$357)
   (i32.const 33)
  )
  (set_local $$$index1
   (i32.add
    (get_local $$357)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index1)
   (i32.const 0)
  )
  (i32.store
   (get_local $$358)
   (i32.const 34)
  )
  (set_local $$$index3
   (i32.add
    (get_local $$358)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index3)
   (i32.const 0)
  )
  (i64.store align=1
   (get_local $$332)
   (i64.load align=1
    (get_local $$358)
   )
  )
  (i64.store align=1
   (get_local $$333)
   (i64.load align=1
    (get_local $$357)
   )
  )
  (set_local $$$field
   (i32.load
    (get_local $$333)
   )
  )
  (set_local $$$index5
   (i32.add
    (get_local $$333)
    (i32.const 4)
   )
  )
  (set_local $$$field6
   (i32.load
    (get_local $$$index5)
   )
  )
  (set_local $$$field9
   (i32.load
    (get_local $$332)
   )
  )
  (set_local $$$index11
   (i32.add
    (get_local $$332)
    (i32.const 4)
   )
  )
  (set_local $$$field12
   (i32.load
    (get_local $$$index11)
   )
  )
  (set_local $$324
   (get_local $$504)
  )
  (set_local $$325
   (i32.const 9195)
  )
  (i32.store
   (get_local $$326)
   (get_local $$$field)
  )
  (set_local $$$index15
   (i32.add
    (get_local $$326)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index15)
   (get_local $$$field6)
  )
  (i32.store
   (get_local $$327)
   (get_local $$$field9)
  )
  (set_local $$$index17
   (i32.add
    (get_local $$327)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index17)
   (get_local $$$field12)
  )
  (set_local $$512
   (get_local $$324)
  )
  (set_local $$328
   (i32.const 35)
  )
  (set_local $$329
   (i32.const 36)
  )
  (set_local $$513
   (call $__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv)
  )
  (set_local $$514
   (get_local $$325)
  )
  (set_local $$515
   (call $__ZN10emscripten8internal6TypeIDIiE3getEv)
  )
  (set_local $$516
   (get_local $$328)
  )
  (set_local $$323
   (get_local $$516)
  )
  (set_local $$517
   (call $__ZN10emscripten8internal19getGenericSignatureIJiiiEEEPKcv)
  )
  (set_local $$518
   (get_local $$328)
  )
  (set_local $$$field19
   (i32.load
    (get_local $$326)
   )
  )
  (set_local $$$index21
   (i32.add
    (get_local $$326)
    (i32.const 4)
   )
  )
  (set_local $$$field22
   (i32.load
    (get_local $$$index21)
   )
  )
  (i32.store
   (get_local $$330)
   (get_local $$$field19)
  )
  (set_local $$$index25
   (i32.add
    (get_local $$330)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index25)
   (get_local $$$field22)
  )
  (i64.store align=4
   (get_local $$$byval_copy)
   (i64.load align=4
    (get_local $$330)
   )
  )
  (set_local $$519
   (call $__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFivEE10getContextES4_
    (get_local $$$byval_copy)
   )
  )
  (set_local $$520
   (call $__ZN10emscripten8internal6TypeIDIiE3getEv)
  )
  (set_local $$521
   (get_local $$329)
  )
  (set_local $$322
   (get_local $$521)
  )
  (set_local $$522
   (call $__ZN10emscripten8internal19getGenericSignatureIJviiiEEEPKcv)
  )
  (set_local $$523
   (get_local $$329)
  )
  (set_local $$$field27
   (i32.load
    (get_local $$327)
   )
  )
  (set_local $$$index29
   (i32.add
    (get_local $$327)
    (i32.const 4)
   )
  )
  (set_local $$$field30
   (i32.load
    (get_local $$$index29)
   )
  )
  (i32.store
   (get_local $$331)
   (get_local $$$field27)
  )
  (set_local $$$index33
   (i32.add
    (get_local $$331)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index33)
   (get_local $$$field30)
  )
  (i64.store align=4
   (get_local $$$byval_copy916)
   (i64.load align=4
    (get_local $$331)
   )
  )
  (set_local $$524
   (call $__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFviEE10getContextES4_
    (get_local $$$byval_copy916)
   )
  )
  (call $__embind_register_class_property
   (get_local $$513)
   (get_local $$514)
   (get_local $$515)
   (get_local $$517)
   (get_local $$518)
   (get_local $$519)
   (get_local $$520)
   (get_local $$522)
   (get_local $$523)
   (get_local $$524)
  )
  (i32.store
   (get_local $$359)
   (i32.const 37)
  )
  (set_local $$$index35
   (i32.add
    (get_local $$359)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index35)
   (i32.const 0)
  )
  (i32.store
   (get_local $$360)
   (i32.const 38)
  )
  (set_local $$$index37
   (i32.add
    (get_local $$360)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index37)
   (i32.const 0)
  )
  (i64.store align=1
   (get_local $$320)
   (i64.load align=1
    (get_local $$360)
   )
  )
  (i64.store align=1
   (get_local $$321)
   (i64.load align=1
    (get_local $$359)
   )
  )
  (set_local $$$field39
   (i32.load
    (get_local $$321)
   )
  )
  (set_local $$$index41
   (i32.add
    (get_local $$321)
    (i32.const 4)
   )
  )
  (set_local $$$field42
   (i32.load
    (get_local $$$index41)
   )
  )
  (set_local $$$field45
   (i32.load
    (get_local $$320)
   )
  )
  (set_local $$$index47
   (i32.add
    (get_local $$320)
    (i32.const 4)
   )
  )
  (set_local $$$field48
   (i32.load
    (get_local $$$index47)
   )
  )
  (set_local $$312
   (get_local $$512)
  )
  (set_local $$313
   (i32.const 9200)
  )
  (i32.store
   (get_local $$314)
   (get_local $$$field39)
  )
  (set_local $$$index51
   (i32.add
    (get_local $$314)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index51)
   (get_local $$$field42)
  )
  (i32.store
   (get_local $$315)
   (get_local $$$field45)
  )
  (set_local $$$index53
   (i32.add
    (get_local $$315)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index53)
   (get_local $$$field48)
  )
  (set_local $$525
   (get_local $$312)
  )
  (set_local $$316
   (i32.const 39)
  )
  (set_local $$317
   (i32.const 40)
  )
  (set_local $$526
   (call $__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv)
  )
  (set_local $$527
   (get_local $$313)
  )
  (set_local $$528
   (call $__ZN10emscripten8internal6TypeIDIfE3getEv)
  )
  (set_local $$529
   (get_local $$316)
  )
  (set_local $$311
   (get_local $$529)
  )
  (set_local $$530
   (call $__ZN10emscripten8internal19getGenericSignatureIJfiiEEEPKcv)
  )
  (set_local $$531
   (get_local $$316)
  )
  (set_local $$$field55
   (i32.load
    (get_local $$314)
   )
  )
  (set_local $$$index57
   (i32.add
    (get_local $$314)
    (i32.const 4)
   )
  )
  (set_local $$$field58
   (i32.load
    (get_local $$$index57)
   )
  )
  (i32.store
   (get_local $$318)
   (get_local $$$field55)
  )
  (set_local $$$index61
   (i32.add
    (get_local $$318)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index61)
   (get_local $$$field58)
  )
  (i64.store align=4
   (get_local $$$byval_copy917)
   (i64.load align=4
    (get_local $$318)
   )
  )
  (set_local $$532
   (call $__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFfvEE10getContextES4_
    (get_local $$$byval_copy917)
   )
  )
  (set_local $$533
   (call $__ZN10emscripten8internal6TypeIDIfE3getEv)
  )
  (set_local $$534
   (get_local $$317)
  )
  (set_local $$310
   (get_local $$534)
  )
  (set_local $$535
   (call $__ZN10emscripten8internal19getGenericSignatureIJviifEEEPKcv)
  )
  (set_local $$536
   (get_local $$317)
  )
  (set_local $$$field63
   (i32.load
    (get_local $$315)
   )
  )
  (set_local $$$index65
   (i32.add
    (get_local $$315)
    (i32.const 4)
   )
  )
  (set_local $$$field66
   (i32.load
    (get_local $$$index65)
   )
  )
  (i32.store
   (get_local $$319)
   (get_local $$$field63)
  )
  (set_local $$$index69
   (i32.add
    (get_local $$319)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index69)
   (get_local $$$field66)
  )
  (i64.store align=4
   (get_local $$$byval_copy918)
   (i64.load align=4
    (get_local $$319)
   )
  )
  (set_local $$537
   (call $__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvfEE10getContextES4_
    (get_local $$$byval_copy918)
   )
  )
  (call $__embind_register_class_property
   (get_local $$526)
   (get_local $$527)
   (get_local $$528)
   (get_local $$530)
   (get_local $$531)
   (get_local $$532)
   (get_local $$533)
   (get_local $$535)
   (get_local $$536)
   (get_local $$537)
  )
  (i32.store
   (get_local $$361)
   (i32.const 41)
  )
  (set_local $$$index71
   (i32.add
    (get_local $$361)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index71)
   (i32.const 0)
  )
  (i32.store
   (get_local $$362)
   (i32.const 42)
  )
  (set_local $$$index73
   (i32.add
    (get_local $$362)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index73)
   (i32.const 0)
  )
  (i64.store align=1
   (get_local $$308)
   (i64.load align=1
    (get_local $$362)
   )
  )
  (i64.store align=1
   (get_local $$309)
   (i64.load align=1
    (get_local $$361)
   )
  )
  (set_local $$$field75
   (i32.load
    (get_local $$309)
   )
  )
  (set_local $$$index77
   (i32.add
    (get_local $$309)
    (i32.const 4)
   )
  )
  (set_local $$$field78
   (i32.load
    (get_local $$$index77)
   )
  )
  (set_local $$$field81
   (i32.load
    (get_local $$308)
   )
  )
  (set_local $$$index83
   (i32.add
    (get_local $$308)
    (i32.const 4)
   )
  )
  (set_local $$$field84
   (i32.load
    (get_local $$$index83)
   )
  )
  (set_local $$300
   (get_local $$525)
  )
  (set_local $$301
   (i32.const 9210)
  )
  (i32.store
   (get_local $$302)
   (get_local $$$field75)
  )
  (set_local $$$index87
   (i32.add
    (get_local $$302)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index87)
   (get_local $$$field78)
  )
  (i32.store
   (get_local $$303)
   (get_local $$$field81)
  )
  (set_local $$$index89
   (i32.add
    (get_local $$303)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index89)
   (get_local $$$field84)
  )
  (set_local $$538
   (get_local $$300)
  )
  (set_local $$304
   (i32.const 43)
  )
  (set_local $$305
   (i32.const 44)
  )
  (set_local $$539
   (call $__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv)
  )
  (set_local $$540
   (get_local $$301)
  )
  (set_local $$541
   (call $__ZN10emscripten8internal6TypeIDIN9FastNoise6InterpEE3getEv)
  )
  (set_local $$542
   (get_local $$304)
  )
  (set_local $$299
   (get_local $$542)
  )
  (set_local $$543
   (call $__ZN10emscripten8internal19getGenericSignatureIJiiiEEEPKcv)
  )
  (set_local $$544
   (get_local $$304)
  )
  (set_local $$$field91
   (i32.load
    (get_local $$302)
   )
  )
  (set_local $$$index93
   (i32.add
    (get_local $$302)
    (i32.const 4)
   )
  )
  (set_local $$$field94
   (i32.load
    (get_local $$$index93)
   )
  )
  (i32.store
   (get_local $$306)
   (get_local $$$field91)
  )
  (set_local $$$index97
   (i32.add
    (get_local $$306)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index97)
   (get_local $$$field94)
  )
  (i64.store align=4
   (get_local $$$byval_copy919)
   (i64.load align=4
    (get_local $$306)
   )
  )
  (set_local $$545
   (call $__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFNS2_6InterpEvEE10getContextES5_
    (get_local $$$byval_copy919)
   )
  )
  (set_local $$546
   (call $__ZN10emscripten8internal6TypeIDIN9FastNoise6InterpEE3getEv)
  )
  (set_local $$547
   (get_local $$305)
  )
  (set_local $$298
   (get_local $$547)
  )
  (set_local $$548
   (call $__ZN10emscripten8internal19getGenericSignatureIJviiiEEEPKcv)
  )
  (set_local $$549
   (get_local $$305)
  )
  (set_local $$$field99
   (i32.load
    (get_local $$303)
   )
  )
  (set_local $$$index101
   (i32.add
    (get_local $$303)
    (i32.const 4)
   )
  )
  (set_local $$$field102
   (i32.load
    (get_local $$$index101)
   )
  )
  (i32.store
   (get_local $$307)
   (get_local $$$field99)
  )
  (set_local $$$index105
   (i32.add
    (get_local $$307)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index105)
   (get_local $$$field102)
  )
  (i64.store align=4
   (get_local $$$byval_copy920)
   (i64.load align=4
    (get_local $$307)
   )
  )
  (set_local $$550
   (call $__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvNS2_6InterpEEE10getContextES5_
    (get_local $$$byval_copy920)
   )
  )
  (call $__embind_register_class_property
   (get_local $$539)
   (get_local $$540)
   (get_local $$541)
   (get_local $$543)
   (get_local $$544)
   (get_local $$545)
   (get_local $$546)
   (get_local $$548)
   (get_local $$549)
   (get_local $$550)
  )
  (i32.store
   (get_local $$363)
   (i32.const 45)
  )
  (set_local $$$index107
   (i32.add
    (get_local $$363)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index107)
   (i32.const 0)
  )
  (i32.store
   (get_local $$364)
   (i32.const 46)
  )
  (set_local $$$index109
   (i32.add
    (get_local $$364)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index109)
   (i32.const 0)
  )
  (i64.store align=1
   (get_local $$296)
   (i64.load align=1
    (get_local $$364)
   )
  )
  (i64.store align=1
   (get_local $$297)
   (i64.load align=1
    (get_local $$363)
   )
  )
  (set_local $$$field111
   (i32.load
    (get_local $$297)
   )
  )
  (set_local $$$index113
   (i32.add
    (get_local $$297)
    (i32.const 4)
   )
  )
  (set_local $$$field114
   (i32.load
    (get_local $$$index113)
   )
  )
  (set_local $$$field117
   (i32.load
    (get_local $$296)
   )
  )
  (set_local $$$index119
   (i32.add
    (get_local $$296)
    (i32.const 4)
   )
  )
  (set_local $$$field120
   (i32.load
    (get_local $$$index119)
   )
  )
  (set_local $$288
   (get_local $$538)
  )
  (set_local $$289
   (i32.const 9217)
  )
  (i32.store
   (get_local $$290)
   (get_local $$$field111)
  )
  (set_local $$$index123
   (i32.add
    (get_local $$290)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index123)
   (get_local $$$field114)
  )
  (i32.store
   (get_local $$291)
   (get_local $$$field117)
  )
  (set_local $$$index125
   (i32.add
    (get_local $$291)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index125)
   (get_local $$$field120)
  )
  (set_local $$551
   (get_local $$288)
  )
  (set_local $$292
   (i32.const 47)
  )
  (set_local $$293
   (i32.const 48)
  )
  (set_local $$552
   (call $__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv)
  )
  (set_local $$553
   (get_local $$289)
  )
  (set_local $$554
   (call $__ZN10emscripten8internal6TypeIDIN9FastNoise9NoiseTypeEE3getEv)
  )
  (set_local $$555
   (get_local $$292)
  )
  (set_local $$287
   (get_local $$555)
  )
  (set_local $$556
   (call $__ZN10emscripten8internal19getGenericSignatureIJiiiEEEPKcv)
  )
  (set_local $$557
   (get_local $$292)
  )
  (set_local $$$field127
   (i32.load
    (get_local $$290)
   )
  )
  (set_local $$$index129
   (i32.add
    (get_local $$290)
    (i32.const 4)
   )
  )
  (set_local $$$field130
   (i32.load
    (get_local $$$index129)
   )
  )
  (i32.store
   (get_local $$294)
   (get_local $$$field127)
  )
  (set_local $$$index133
   (i32.add
    (get_local $$294)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index133)
   (get_local $$$field130)
  )
  (i64.store align=4
   (get_local $$$byval_copy921)
   (i64.load align=4
    (get_local $$294)
   )
  )
  (set_local $$558
   (call $__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFNS2_9NoiseTypeEvEE10getContextES5_
    (get_local $$$byval_copy921)
   )
  )
  (set_local $$559
   (call $__ZN10emscripten8internal6TypeIDIN9FastNoise9NoiseTypeEE3getEv)
  )
  (set_local $$560
   (get_local $$293)
  )
  (set_local $$286
   (get_local $$560)
  )
  (set_local $$561
   (call $__ZN10emscripten8internal19getGenericSignatureIJviiiEEEPKcv)
  )
  (set_local $$562
   (get_local $$293)
  )
  (set_local $$$field135
   (i32.load
    (get_local $$291)
   )
  )
  (set_local $$$index137
   (i32.add
    (get_local $$291)
    (i32.const 4)
   )
  )
  (set_local $$$field138
   (i32.load
    (get_local $$$index137)
   )
  )
  (i32.store
   (get_local $$295)
   (get_local $$$field135)
  )
  (set_local $$$index141
   (i32.add
    (get_local $$295)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index141)
   (get_local $$$field138)
  )
  (i64.store align=4
   (get_local $$$byval_copy922)
   (i64.load align=4
    (get_local $$295)
   )
  )
  (set_local $$563
   (call $__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvNS2_9NoiseTypeEEE10getContextES5_
    (get_local $$$byval_copy922)
   )
  )
  (call $__embind_register_class_property
   (get_local $$552)
   (get_local $$553)
   (get_local $$554)
   (get_local $$556)
   (get_local $$557)
   (get_local $$558)
   (get_local $$559)
   (get_local $$561)
   (get_local $$562)
   (get_local $$563)
  )
  (i32.store
   (get_local $$365)
   (i32.const 41)
  )
  (set_local $$$index143
   (i32.add
    (get_local $$365)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index143)
   (i32.const 0)
  )
  (i32.store
   (get_local $$366)
   (i32.const 42)
  )
  (set_local $$$index145
   (i32.add
    (get_local $$366)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index145)
   (i32.const 0)
  )
  (i64.store align=1
   (get_local $$284)
   (i64.load align=1
    (get_local $$366)
   )
  )
  (i64.store align=1
   (get_local $$285)
   (i64.load align=1
    (get_local $$365)
   )
  )
  (set_local $$$field147
   (i32.load
    (get_local $$285)
   )
  )
  (set_local $$$index149
   (i32.add
    (get_local $$285)
    (i32.const 4)
   )
  )
  (set_local $$$field150
   (i32.load
    (get_local $$$index149)
   )
  )
  (set_local $$$field153
   (i32.load
    (get_local $$284)
   )
  )
  (set_local $$$index155
   (i32.add
    (get_local $$284)
    (i32.const 4)
   )
  )
  (set_local $$$field156
   (i32.load
    (get_local $$$index155)
   )
  )
  (set_local $$276
   (get_local $$551)
  )
  (set_local $$277
   (i32.const 9210)
  )
  (i32.store
   (get_local $$278)
   (get_local $$$field147)
  )
  (set_local $$$index159
   (i32.add
    (get_local $$278)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index159)
   (get_local $$$field150)
  )
  (i32.store
   (get_local $$279)
   (get_local $$$field153)
  )
  (set_local $$$index161
   (i32.add
    (get_local $$279)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index161)
   (get_local $$$field156)
  )
  (set_local $$564
   (get_local $$276)
  )
  (set_local $$280
   (i32.const 43)
  )
  (set_local $$281
   (i32.const 44)
  )
  (set_local $$565
   (call $__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv)
  )
  (set_local $$566
   (get_local $$277)
  )
  (set_local $$567
   (call $__ZN10emscripten8internal6TypeIDIN9FastNoise6InterpEE3getEv)
  )
  (set_local $$568
   (get_local $$280)
  )
  (set_local $$275
   (get_local $$568)
  )
  (set_local $$569
   (call $__ZN10emscripten8internal19getGenericSignatureIJiiiEEEPKcv)
  )
  (set_local $$570
   (get_local $$280)
  )
  (set_local $$$field163
   (i32.load
    (get_local $$278)
   )
  )
  (set_local $$$index165
   (i32.add
    (get_local $$278)
    (i32.const 4)
   )
  )
  (set_local $$$field166
   (i32.load
    (get_local $$$index165)
   )
  )
  (i32.store
   (get_local $$282)
   (get_local $$$field163)
  )
  (set_local $$$index169
   (i32.add
    (get_local $$282)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index169)
   (get_local $$$field166)
  )
  (i64.store align=4
   (get_local $$$byval_copy923)
   (i64.load align=4
    (get_local $$282)
   )
  )
  (set_local $$571
   (call $__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFNS2_6InterpEvEE10getContextES5_
    (get_local $$$byval_copy923)
   )
  )
  (set_local $$572
   (call $__ZN10emscripten8internal6TypeIDIN9FastNoise6InterpEE3getEv)
  )
  (set_local $$573
   (get_local $$281)
  )
  (set_local $$274
   (get_local $$573)
  )
  (set_local $$574
   (call $__ZN10emscripten8internal19getGenericSignatureIJviiiEEEPKcv)
  )
  (set_local $$575
   (get_local $$281)
  )
  (set_local $$$field171
   (i32.load
    (get_local $$279)
   )
  )
  (set_local $$$index173
   (i32.add
    (get_local $$279)
    (i32.const 4)
   )
  )
  (set_local $$$field174
   (i32.load
    (get_local $$$index173)
   )
  )
  (i32.store
   (get_local $$283)
   (get_local $$$field171)
  )
  (set_local $$$index177
   (i32.add
    (get_local $$283)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index177)
   (get_local $$$field174)
  )
  (i64.store align=4
   (get_local $$$byval_copy924)
   (i64.load align=4
    (get_local $$283)
   )
  )
  (set_local $$576
   (call $__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvNS2_6InterpEEE10getContextES5_
    (get_local $$$byval_copy924)
   )
  )
  (call $__embind_register_class_property
   (get_local $$565)
   (get_local $$566)
   (get_local $$567)
   (get_local $$569)
   (get_local $$570)
   (get_local $$571)
   (get_local $$572)
   (get_local $$574)
   (get_local $$575)
   (get_local $$576)
  )
  (i32.store
   (get_local $$367)
   (i32.const 49)
  )
  (set_local $$$index179
   (i32.add
    (get_local $$367)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index179)
   (i32.const 0)
  )
  (i32.store
   (get_local $$368)
   (i32.const 50)
  )
  (set_local $$$index181
   (i32.add
    (get_local $$368)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index181)
   (i32.const 0)
  )
  (i64.store align=1
   (get_local $$272)
   (i64.load align=1
    (get_local $$368)
   )
  )
  (i64.store align=1
   (get_local $$273)
   (i64.load align=1
    (get_local $$367)
   )
  )
  (set_local $$$field183
   (i32.load
    (get_local $$273)
   )
  )
  (set_local $$$index185
   (i32.add
    (get_local $$273)
    (i32.const 4)
   )
  )
  (set_local $$$field186
   (i32.load
    (get_local $$$index185)
   )
  )
  (set_local $$$field189
   (i32.load
    (get_local $$272)
   )
  )
  (set_local $$$index191
   (i32.add
    (get_local $$272)
    (i32.const 4)
   )
  )
  (set_local $$$field192
   (i32.load
    (get_local $$$index191)
   )
  )
  (set_local $$264
   (get_local $$564)
  )
  (set_local $$265
   (i32.const 9227)
  )
  (i32.store
   (get_local $$266)
   (get_local $$$field183)
  )
  (set_local $$$index195
   (i32.add
    (get_local $$266)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index195)
   (get_local $$$field186)
  )
  (i32.store
   (get_local $$267)
   (get_local $$$field189)
  )
  (set_local $$$index197
   (i32.add
    (get_local $$267)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index197)
   (get_local $$$field192)
  )
  (set_local $$577
   (get_local $$264)
  )
  (set_local $$268
   (i32.const 35)
  )
  (set_local $$269
   (i32.const 36)
  )
  (set_local $$578
   (call $__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv)
  )
  (set_local $$579
   (get_local $$265)
  )
  (set_local $$580
   (call $__ZN10emscripten8internal6TypeIDIiE3getEv)
  )
  (set_local $$581
   (get_local $$268)
  )
  (set_local $$263
   (get_local $$581)
  )
  (set_local $$582
   (call $__ZN10emscripten8internal19getGenericSignatureIJiiiEEEPKcv)
  )
  (set_local $$583
   (get_local $$268)
  )
  (set_local $$$field199
   (i32.load
    (get_local $$266)
   )
  )
  (set_local $$$index201
   (i32.add
    (get_local $$266)
    (i32.const 4)
   )
  )
  (set_local $$$field202
   (i32.load
    (get_local $$$index201)
   )
  )
  (i32.store
   (get_local $$270)
   (get_local $$$field199)
  )
  (set_local $$$index205
   (i32.add
    (get_local $$270)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index205)
   (get_local $$$field202)
  )
  (i64.store align=4
   (get_local $$$byval_copy925)
   (i64.load align=4
    (get_local $$270)
   )
  )
  (set_local $$584
   (call $__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFivEE10getContextES4_
    (get_local $$$byval_copy925)
   )
  )
  (set_local $$585
   (call $__ZN10emscripten8internal6TypeIDIiE3getEv)
  )
  (set_local $$586
   (get_local $$269)
  )
  (set_local $$262
   (get_local $$586)
  )
  (set_local $$587
   (call $__ZN10emscripten8internal19getGenericSignatureIJviiiEEEPKcv)
  )
  (set_local $$588
   (get_local $$269)
  )
  (set_local $$$field207
   (i32.load
    (get_local $$267)
   )
  )
  (set_local $$$index209
   (i32.add
    (get_local $$267)
    (i32.const 4)
   )
  )
  (set_local $$$field210
   (i32.load
    (get_local $$$index209)
   )
  )
  (i32.store
   (get_local $$271)
   (get_local $$$field207)
  )
  (set_local $$$index213
   (i32.add
    (get_local $$271)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index213)
   (get_local $$$field210)
  )
  (i64.store align=4
   (get_local $$$byval_copy926)
   (i64.load align=4
    (get_local $$271)
   )
  )
  (set_local $$589
   (call $__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFviEE10getContextES4_
    (get_local $$$byval_copy926)
   )
  )
  (call $__embind_register_class_property
   (get_local $$578)
   (get_local $$579)
   (get_local $$580)
   (get_local $$582)
   (get_local $$583)
   (get_local $$584)
   (get_local $$585)
   (get_local $$587)
   (get_local $$588)
   (get_local $$589)
  )
  (i32.store
   (get_local $$369)
   (i32.const 51)
  )
  (set_local $$$index215
   (i32.add
    (get_local $$369)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index215)
   (i32.const 0)
  )
  (i32.store
   (get_local $$370)
   (i32.const 52)
  )
  (set_local $$$index217
   (i32.add
    (get_local $$370)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index217)
   (i32.const 0)
  )
  (i64.store align=1
   (get_local $$260)
   (i64.load align=1
    (get_local $$370)
   )
  )
  (i64.store align=1
   (get_local $$261)
   (i64.load align=1
    (get_local $$369)
   )
  )
  (set_local $$$field219
   (i32.load
    (get_local $$261)
   )
  )
  (set_local $$$index221
   (i32.add
    (get_local $$261)
    (i32.const 4)
   )
  )
  (set_local $$$field222
   (i32.load
    (get_local $$$index221)
   )
  )
  (set_local $$$field225
   (i32.load
    (get_local $$260)
   )
  )
  (set_local $$$index227
   (i32.add
    (get_local $$260)
    (i32.const 4)
   )
  )
  (set_local $$$field228
   (i32.load
    (get_local $$$index227)
   )
  )
  (set_local $$252
   (get_local $$577)
  )
  (set_local $$253
   (i32.const 9242)
  )
  (i32.store
   (get_local $$254)
   (get_local $$$field219)
  )
  (set_local $$$index231
   (i32.add
    (get_local $$254)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index231)
   (get_local $$$field222)
  )
  (i32.store
   (get_local $$255)
   (get_local $$$field225)
  )
  (set_local $$$index233
   (i32.add
    (get_local $$255)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index233)
   (get_local $$$field228)
  )
  (set_local $$590
   (get_local $$252)
  )
  (set_local $$256
   (i32.const 39)
  )
  (set_local $$257
   (i32.const 40)
  )
  (set_local $$591
   (call $__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv)
  )
  (set_local $$592
   (get_local $$253)
  )
  (set_local $$593
   (call $__ZN10emscripten8internal6TypeIDIfE3getEv)
  )
  (set_local $$594
   (get_local $$256)
  )
  (set_local $$251
   (get_local $$594)
  )
  (set_local $$595
   (call $__ZN10emscripten8internal19getGenericSignatureIJfiiEEEPKcv)
  )
  (set_local $$596
   (get_local $$256)
  )
  (set_local $$$field235
   (i32.load
    (get_local $$254)
   )
  )
  (set_local $$$index237
   (i32.add
    (get_local $$254)
    (i32.const 4)
   )
  )
  (set_local $$$field238
   (i32.load
    (get_local $$$index237)
   )
  )
  (i32.store
   (get_local $$258)
   (get_local $$$field235)
  )
  (set_local $$$index241
   (i32.add
    (get_local $$258)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index241)
   (get_local $$$field238)
  )
  (i64.store align=4
   (get_local $$$byval_copy927)
   (i64.load align=4
    (get_local $$258)
   )
  )
  (set_local $$597
   (call $__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFfvEE10getContextES4_
    (get_local $$$byval_copy927)
   )
  )
  (set_local $$598
   (call $__ZN10emscripten8internal6TypeIDIfE3getEv)
  )
  (set_local $$599
   (get_local $$257)
  )
  (set_local $$250
   (get_local $$599)
  )
  (set_local $$600
   (call $__ZN10emscripten8internal19getGenericSignatureIJviifEEEPKcv)
  )
  (set_local $$601
   (get_local $$257)
  )
  (set_local $$$field243
   (i32.load
    (get_local $$255)
   )
  )
  (set_local $$$index245
   (i32.add
    (get_local $$255)
    (i32.const 4)
   )
  )
  (set_local $$$field246
   (i32.load
    (get_local $$$index245)
   )
  )
  (i32.store
   (get_local $$259)
   (get_local $$$field243)
  )
  (set_local $$$index249
   (i32.add
    (get_local $$259)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index249)
   (get_local $$$field246)
  )
  (i64.store align=4
   (get_local $$$byval_copy928)
   (i64.load align=4
    (get_local $$259)
   )
  )
  (set_local $$602
   (call $__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvfEE10getContextES4_
    (get_local $$$byval_copy928)
   )
  )
  (call $__embind_register_class_property
   (get_local $$591)
   (get_local $$592)
   (get_local $$593)
   (get_local $$595)
   (get_local $$596)
   (get_local $$597)
   (get_local $$598)
   (get_local $$600)
   (get_local $$601)
   (get_local $$602)
  )
  (i32.store
   (get_local $$371)
   (i32.const 53)
  )
  (set_local $$$index251
   (i32.add
    (get_local $$371)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index251)
   (i32.const 0)
  )
  (i32.store
   (get_local $$372)
   (i32.const 54)
  )
  (set_local $$$index253
   (i32.add
    (get_local $$372)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index253)
   (i32.const 0)
  )
  (i64.store align=1
   (get_local $$248)
   (i64.load align=1
    (get_local $$372)
   )
  )
  (i64.store align=1
   (get_local $$249)
   (i64.load align=1
    (get_local $$371)
   )
  )
  (set_local $$$field255
   (i32.load
    (get_local $$249)
   )
  )
  (set_local $$$index257
   (i32.add
    (get_local $$249)
    (i32.const 4)
   )
  )
  (set_local $$$field258
   (i32.load
    (get_local $$$index257)
   )
  )
  (set_local $$$field261
   (i32.load
    (get_local $$248)
   )
  )
  (set_local $$$index263
   (i32.add
    (get_local $$248)
    (i32.const 4)
   )
  )
  (set_local $$$field264
   (i32.load
    (get_local $$$index263)
   )
  )
  (set_local $$240
   (get_local $$590)
  )
  (set_local $$241
   (i32.const 9260)
  )
  (i32.store
   (get_local $$242)
   (get_local $$$field255)
  )
  (set_local $$$index267
   (i32.add
    (get_local $$242)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index267)
   (get_local $$$field258)
  )
  (i32.store
   (get_local $$243)
   (get_local $$$field261)
  )
  (set_local $$$index269
   (i32.add
    (get_local $$243)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index269)
   (get_local $$$field264)
  )
  (set_local $$603
   (get_local $$240)
  )
  (set_local $$244
   (i32.const 39)
  )
  (set_local $$245
   (i32.const 40)
  )
  (set_local $$604
   (call $__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv)
  )
  (set_local $$605
   (get_local $$241)
  )
  (set_local $$606
   (call $__ZN10emscripten8internal6TypeIDIfE3getEv)
  )
  (set_local $$607
   (get_local $$244)
  )
  (set_local $$239
   (get_local $$607)
  )
  (set_local $$608
   (call $__ZN10emscripten8internal19getGenericSignatureIJfiiEEEPKcv)
  )
  (set_local $$609
   (get_local $$244)
  )
  (set_local $$$field271
   (i32.load
    (get_local $$242)
   )
  )
  (set_local $$$index273
   (i32.add
    (get_local $$242)
    (i32.const 4)
   )
  )
  (set_local $$$field274
   (i32.load
    (get_local $$$index273)
   )
  )
  (i32.store
   (get_local $$246)
   (get_local $$$field271)
  )
  (set_local $$$index277
   (i32.add
    (get_local $$246)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index277)
   (get_local $$$field274)
  )
  (i64.store align=4
   (get_local $$$byval_copy929)
   (i64.load align=4
    (get_local $$246)
   )
  )
  (set_local $$610
   (call $__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFfvEE10getContextES4_
    (get_local $$$byval_copy929)
   )
  )
  (set_local $$611
   (call $__ZN10emscripten8internal6TypeIDIfE3getEv)
  )
  (set_local $$612
   (get_local $$245)
  )
  (set_local $$238
   (get_local $$612)
  )
  (set_local $$613
   (call $__ZN10emscripten8internal19getGenericSignatureIJviifEEEPKcv)
  )
  (set_local $$614
   (get_local $$245)
  )
  (set_local $$$field279
   (i32.load
    (get_local $$243)
   )
  )
  (set_local $$$index281
   (i32.add
    (get_local $$243)
    (i32.const 4)
   )
  )
  (set_local $$$field282
   (i32.load
    (get_local $$$index281)
   )
  )
  (i32.store
   (get_local $$247)
   (get_local $$$field279)
  )
  (set_local $$$index285
   (i32.add
    (get_local $$247)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index285)
   (get_local $$$field282)
  )
  (i64.store align=4
   (get_local $$$byval_copy930)
   (i64.load align=4
    (get_local $$247)
   )
  )
  (set_local $$615
   (call $__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvfEE10getContextES4_
    (get_local $$$byval_copy930)
   )
  )
  (call $__embind_register_class_property
   (get_local $$604)
   (get_local $$605)
   (get_local $$606)
   (get_local $$608)
   (get_local $$609)
   (get_local $$610)
   (get_local $$611)
   (get_local $$613)
   (get_local $$614)
   (get_local $$615)
  )
  (i32.store
   (get_local $$373)
   (i32.const 55)
  )
  (set_local $$$index287
   (i32.add
    (get_local $$373)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index287)
   (i32.const 0)
  )
  (i32.store
   (get_local $$374)
   (i32.const 56)
  )
  (set_local $$$index289
   (i32.add
    (get_local $$374)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index289)
   (i32.const 0)
  )
  (i64.store align=1
   (get_local $$236)
   (i64.load align=1
    (get_local $$374)
   )
  )
  (i64.store align=1
   (get_local $$237)
   (i64.load align=1
    (get_local $$373)
   )
  )
  (set_local $$$field291
   (i32.load
    (get_local $$237)
   )
  )
  (set_local $$$index293
   (i32.add
    (get_local $$237)
    (i32.const 4)
   )
  )
  (set_local $$$field294
   (i32.load
    (get_local $$$index293)
   )
  )
  (set_local $$$field297
   (i32.load
    (get_local $$236)
   )
  )
  (set_local $$$index299
   (i32.add
    (get_local $$236)
    (i32.const 4)
   )
  )
  (set_local $$$field300
   (i32.load
    (get_local $$$index299)
   )
  )
  (set_local $$228
   (get_local $$603)
  )
  (set_local $$229
   (i32.const 9272)
  )
  (i32.store
   (get_local $$230)
   (get_local $$$field291)
  )
  (set_local $$$index303
   (i32.add
    (get_local $$230)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index303)
   (get_local $$$field294)
  )
  (i32.store
   (get_local $$231)
   (get_local $$$field297)
  )
  (set_local $$$index305
   (i32.add
    (get_local $$231)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index305)
   (get_local $$$field300)
  )
  (set_local $$616
   (get_local $$228)
  )
  (set_local $$232
   (i32.const 57)
  )
  (set_local $$233
   (i32.const 58)
  )
  (set_local $$617
   (call $__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv)
  )
  (set_local $$618
   (get_local $$229)
  )
  (set_local $$619
   (call $__ZN10emscripten8internal6TypeIDIN9FastNoise11FractalTypeEE3getEv)
  )
  (set_local $$620
   (get_local $$232)
  )
  (set_local $$227
   (get_local $$620)
  )
  (set_local $$621
   (call $__ZN10emscripten8internal19getGenericSignatureIJiiiEEEPKcv)
  )
  (set_local $$622
   (get_local $$232)
  )
  (set_local $$$field307
   (i32.load
    (get_local $$230)
   )
  )
  (set_local $$$index309
   (i32.add
    (get_local $$230)
    (i32.const 4)
   )
  )
  (set_local $$$field310
   (i32.load
    (get_local $$$index309)
   )
  )
  (i32.store
   (get_local $$234)
   (get_local $$$field307)
  )
  (set_local $$$index313
   (i32.add
    (get_local $$234)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index313)
   (get_local $$$field310)
  )
  (i64.store align=4
   (get_local $$$byval_copy931)
   (i64.load align=4
    (get_local $$234)
   )
  )
  (set_local $$623
   (call $__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFNS2_11FractalTypeEvEE10getContextES5_
    (get_local $$$byval_copy931)
   )
  )
  (set_local $$624
   (call $__ZN10emscripten8internal6TypeIDIN9FastNoise11FractalTypeEE3getEv)
  )
  (set_local $$625
   (get_local $$233)
  )
  (set_local $$226
   (get_local $$625)
  )
  (set_local $$626
   (call $__ZN10emscripten8internal19getGenericSignatureIJviiiEEEPKcv)
  )
  (set_local $$627
   (get_local $$233)
  )
  (set_local $$$field315
   (i32.load
    (get_local $$231)
   )
  )
  (set_local $$$index317
   (i32.add
    (get_local $$231)
    (i32.const 4)
   )
  )
  (set_local $$$field318
   (i32.load
    (get_local $$$index317)
   )
  )
  (i32.store
   (get_local $$235)
   (get_local $$$field315)
  )
  (set_local $$$index321
   (i32.add
    (get_local $$235)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index321)
   (get_local $$$field318)
  )
  (i64.store align=4
   (get_local $$$byval_copy932)
   (i64.load align=4
    (get_local $$235)
   )
  )
  (set_local $$628
   (call $__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvNS2_11FractalTypeEEE10getContextES5_
    (get_local $$$byval_copy932)
   )
  )
  (call $__embind_register_class_property
   (get_local $$617)
   (get_local $$618)
   (get_local $$619)
   (get_local $$621)
   (get_local $$622)
   (get_local $$623)
   (get_local $$624)
   (get_local $$626)
   (get_local $$627)
   (get_local $$628)
  )
  (i32.store
   (get_local $$375)
   (i32.const 59)
  )
  (set_local $$$index323
   (i32.add
    (get_local $$375)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index323)
   (i32.const 0)
  )
  (i32.store
   (get_local $$376)
   (i32.const 60)
  )
  (set_local $$$index325
   (i32.add
    (get_local $$376)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index325)
   (i32.const 0)
  )
  (i64.store align=1
   (get_local $$224)
   (i64.load align=1
    (get_local $$376)
   )
  )
  (i64.store align=1
   (get_local $$225)
   (i64.load align=1
    (get_local $$375)
   )
  )
  (set_local $$$field327
   (i32.load
    (get_local $$225)
   )
  )
  (set_local $$$index329
   (i32.add
    (get_local $$225)
    (i32.const 4)
   )
  )
  (set_local $$$field330
   (i32.load
    (get_local $$$index329)
   )
  )
  (set_local $$$field333
   (i32.load
    (get_local $$224)
   )
  )
  (set_local $$$index335
   (i32.add
    (get_local $$224)
    (i32.const 4)
   )
  )
  (set_local $$$field336
   (i32.load
    (get_local $$$index335)
   )
  )
  (set_local $$216
   (get_local $$616)
  )
  (set_local $$217
   (i32.const 9284)
  )
  (i32.store
   (get_local $$218)
   (get_local $$$field327)
  )
  (set_local $$$index339
   (i32.add
    (get_local $$218)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index339)
   (get_local $$$field330)
  )
  (i32.store
   (get_local $$219)
   (get_local $$$field333)
  )
  (set_local $$$index341
   (i32.add
    (get_local $$219)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index341)
   (get_local $$$field336)
  )
  (set_local $$629
   (get_local $$216)
  )
  (set_local $$220
   (i32.const 61)
  )
  (set_local $$221
   (i32.const 62)
  )
  (set_local $$630
   (call $__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv)
  )
  (set_local $$631
   (get_local $$217)
  )
  (set_local $$632
   (call $__ZN10emscripten8internal6TypeIDIN9FastNoise24CellularDistanceFunctionEE3getEv)
  )
  (set_local $$633
   (get_local $$220)
  )
  (set_local $$215
   (get_local $$633)
  )
  (set_local $$634
   (call $__ZN10emscripten8internal19getGenericSignatureIJiiiEEEPKcv)
  )
  (set_local $$635
   (get_local $$220)
  )
  (set_local $$$field343
   (i32.load
    (get_local $$218)
   )
  )
  (set_local $$$index345
   (i32.add
    (get_local $$218)
    (i32.const 4)
   )
  )
  (set_local $$$field346
   (i32.load
    (get_local $$$index345)
   )
  )
  (i32.store
   (get_local $$222)
   (get_local $$$field343)
  )
  (set_local $$$index349
   (i32.add
    (get_local $$222)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index349)
   (get_local $$$field346)
  )
  (i64.store align=4
   (get_local $$$byval_copy933)
   (i64.load align=4
    (get_local $$222)
   )
  )
  (set_local $$636
   (call $__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFNS2_24CellularDistanceFunctionEvEE10getContextES5_
    (get_local $$$byval_copy933)
   )
  )
  (set_local $$637
   (call $__ZN10emscripten8internal6TypeIDIN9FastNoise24CellularDistanceFunctionEE3getEv)
  )
  (set_local $$638
   (get_local $$221)
  )
  (set_local $$214
   (get_local $$638)
  )
  (set_local $$639
   (call $__ZN10emscripten8internal19getGenericSignatureIJviiiEEEPKcv)
  )
  (set_local $$640
   (get_local $$221)
  )
  (set_local $$$field351
   (i32.load
    (get_local $$219)
   )
  )
  (set_local $$$index353
   (i32.add
    (get_local $$219)
    (i32.const 4)
   )
  )
  (set_local $$$field354
   (i32.load
    (get_local $$$index353)
   )
  )
  (i32.store
   (get_local $$223)
   (get_local $$$field351)
  )
  (set_local $$$index357
   (i32.add
    (get_local $$223)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index357)
   (get_local $$$field354)
  )
  (i64.store align=4
   (get_local $$$byval_copy934)
   (i64.load align=4
    (get_local $$223)
   )
  )
  (set_local $$641
   (call $__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvNS2_24CellularDistanceFunctionEEE10getContextES5_
    (get_local $$$byval_copy934)
   )
  )
  (call $__embind_register_class_property
   (get_local $$630)
   (get_local $$631)
   (get_local $$632)
   (get_local $$634)
   (get_local $$635)
   (get_local $$636)
   (get_local $$637)
   (get_local $$639)
   (get_local $$640)
   (get_local $$641)
  )
  (i32.store
   (get_local $$377)
   (i32.const 63)
  )
  (set_local $$$index359
   (i32.add
    (get_local $$377)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index359)
   (i32.const 0)
  )
  (i32.store
   (get_local $$378)
   (i32.const 64)
  )
  (set_local $$$index361
   (i32.add
    (get_local $$378)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index361)
   (i32.const 0)
  )
  (i64.store align=1
   (get_local $$212)
   (i64.load align=1
    (get_local $$378)
   )
  )
  (i64.store align=1
   (get_local $$213)
   (i64.load align=1
    (get_local $$377)
   )
  )
  (set_local $$$field363
   (i32.load
    (get_local $$213)
   )
  )
  (set_local $$$index365
   (i32.add
    (get_local $$213)
    (i32.const 4)
   )
  )
  (set_local $$$field366
   (i32.load
    (get_local $$$index365)
   )
  )
  (set_local $$$field369
   (i32.load
    (get_local $$212)
   )
  )
  (set_local $$$index371
   (i32.add
    (get_local $$212)
    (i32.const 4)
   )
  )
  (set_local $$$field372
   (i32.load
    (get_local $$$index371)
   )
  )
  (set_local $$204
   (get_local $$629)
  )
  (set_local $$205
   (i32.const 9309)
  )
  (i32.store
   (get_local $$206)
   (get_local $$$field363)
  )
  (set_local $$$index375
   (i32.add
    (get_local $$206)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index375)
   (get_local $$$field366)
  )
  (i32.store
   (get_local $$207)
   (get_local $$$field369)
  )
  (set_local $$$index377
   (i32.add
    (get_local $$207)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index377)
   (get_local $$$field372)
  )
  (set_local $$642
   (get_local $$204)
  )
  (set_local $$208
   (i32.const 39)
  )
  (set_local $$209
   (i32.const 40)
  )
  (set_local $$643
   (call $__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv)
  )
  (set_local $$644
   (get_local $$205)
  )
  (set_local $$645
   (call $__ZN10emscripten8internal6TypeIDIfE3getEv)
  )
  (set_local $$646
   (get_local $$208)
  )
  (set_local $$203
   (get_local $$646)
  )
  (set_local $$647
   (call $__ZN10emscripten8internal19getGenericSignatureIJfiiEEEPKcv)
  )
  (set_local $$648
   (get_local $$208)
  )
  (set_local $$$field379
   (i32.load
    (get_local $$206)
   )
  )
  (set_local $$$index381
   (i32.add
    (get_local $$206)
    (i32.const 4)
   )
  )
  (set_local $$$field382
   (i32.load
    (get_local $$$index381)
   )
  )
  (i32.store
   (get_local $$210)
   (get_local $$$field379)
  )
  (set_local $$$index385
   (i32.add
    (get_local $$210)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index385)
   (get_local $$$field382)
  )
  (i64.store align=4
   (get_local $$$byval_copy935)
   (i64.load align=4
    (get_local $$210)
   )
  )
  (set_local $$649
   (call $__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFfvEE10getContextES4_
    (get_local $$$byval_copy935)
   )
  )
  (set_local $$650
   (call $__ZN10emscripten8internal6TypeIDIfE3getEv)
  )
  (set_local $$651
   (get_local $$209)
  )
  (set_local $$202
   (get_local $$651)
  )
  (set_local $$652
   (call $__ZN10emscripten8internal19getGenericSignatureIJviifEEEPKcv)
  )
  (set_local $$653
   (get_local $$209)
  )
  (set_local $$$field387
   (i32.load
    (get_local $$207)
   )
  )
  (set_local $$$index389
   (i32.add
    (get_local $$207)
    (i32.const 4)
   )
  )
  (set_local $$$field390
   (i32.load
    (get_local $$$index389)
   )
  )
  (i32.store
   (get_local $$211)
   (get_local $$$field387)
  )
  (set_local $$$index393
   (i32.add
    (get_local $$211)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index393)
   (get_local $$$field390)
  )
  (i64.store align=4
   (get_local $$$byval_copy936)
   (i64.load align=4
    (get_local $$211)
   )
  )
  (set_local $$654
   (call $__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvfEE10getContextES4_
    (get_local $$$byval_copy936)
   )
  )
  (call $__embind_register_class_property
   (get_local $$643)
   (get_local $$644)
   (get_local $$645)
   (get_local $$647)
   (get_local $$648)
   (get_local $$649)
   (get_local $$650)
   (get_local $$652)
   (get_local $$653)
   (get_local $$654)
  )
  (i32.store
   (get_local $$379)
   (i32.const 65)
  )
  (set_local $$$index395
   (i32.add
    (get_local $$379)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index395)
   (i32.const 0)
  )
  (i32.store
   (get_local $$380)
   (i32.const 66)
  )
  (set_local $$$index397
   (i32.add
    (get_local $$380)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index397)
   (i32.const 0)
  )
  (i64.store align=1
   (get_local $$200)
   (i64.load align=1
    (get_local $$380)
   )
  )
  (i64.store align=1
   (get_local $$201)
   (i64.load align=1
    (get_local $$379)
   )
  )
  (set_local $$$field399
   (i32.load
    (get_local $$201)
   )
  )
  (set_local $$$index401
   (i32.add
    (get_local $$201)
    (i32.const 4)
   )
  )
  (set_local $$$field402
   (i32.load
    (get_local $$$index401)
   )
  )
  (set_local $$$field405
   (i32.load
    (get_local $$200)
   )
  )
  (set_local $$$index407
   (i32.add
    (get_local $$200)
    (i32.const 4)
   )
  )
  (set_local $$$field408
   (i32.load
    (get_local $$$index407)
   )
  )
  (set_local $$192
   (get_local $$642)
  )
  (set_local $$193
   (i32.const 9324)
  )
  (i32.store
   (get_local $$194)
   (get_local $$$field399)
  )
  (set_local $$$index411
   (i32.add
    (get_local $$194)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index411)
   (get_local $$$field402)
  )
  (i32.store
   (get_local $$195)
   (get_local $$$field405)
  )
  (set_local $$$index413
   (i32.add
    (get_local $$195)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index413)
   (get_local $$$field408)
  )
  (set_local $$655
   (get_local $$192)
  )
  (set_local $$196
   (i32.const 39)
  )
  (set_local $$197
   (i32.const 40)
  )
  (set_local $$656
   (call $__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv)
  )
  (set_local $$657
   (get_local $$193)
  )
  (set_local $$658
   (call $__ZN10emscripten8internal6TypeIDIfE3getEv)
  )
  (set_local $$659
   (get_local $$196)
  )
  (set_local $$191
   (get_local $$659)
  )
  (set_local $$660
   (call $__ZN10emscripten8internal19getGenericSignatureIJfiiEEEPKcv)
  )
  (set_local $$661
   (get_local $$196)
  )
  (set_local $$$field415
   (i32.load
    (get_local $$194)
   )
  )
  (set_local $$$index417
   (i32.add
    (get_local $$194)
    (i32.const 4)
   )
  )
  (set_local $$$field418
   (i32.load
    (get_local $$$index417)
   )
  )
  (i32.store
   (get_local $$198)
   (get_local $$$field415)
  )
  (set_local $$$index421
   (i32.add
    (get_local $$198)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index421)
   (get_local $$$field418)
  )
  (i64.store align=4
   (get_local $$$byval_copy937)
   (i64.load align=4
    (get_local $$198)
   )
  )
  (set_local $$662
   (call $__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFfvEE10getContextES4_
    (get_local $$$byval_copy937)
   )
  )
  (set_local $$663
   (call $__ZN10emscripten8internal6TypeIDIfE3getEv)
  )
  (set_local $$664
   (get_local $$197)
  )
  (set_local $$190
   (get_local $$664)
  )
  (set_local $$665
   (call $__ZN10emscripten8internal19getGenericSignatureIJviifEEEPKcv)
  )
  (set_local $$666
   (get_local $$197)
  )
  (set_local $$$field423
   (i32.load
    (get_local $$195)
   )
  )
  (set_local $$$index425
   (i32.add
    (get_local $$195)
    (i32.const 4)
   )
  )
  (set_local $$$field426
   (i32.load
    (get_local $$$index425)
   )
  )
  (i32.store
   (get_local $$199)
   (get_local $$$field423)
  )
  (set_local $$$index429
   (i32.add
    (get_local $$199)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index429)
   (get_local $$$field426)
  )
  (i64.store align=4
   (get_local $$$byval_copy938)
   (i64.load align=4
    (get_local $$199)
   )
  )
  (set_local $$667
   (call $__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvfEE10getContextES4_
    (get_local $$$byval_copy938)
   )
  )
  (call $__embind_register_class_property
   (get_local $$656)
   (get_local $$657)
   (get_local $$658)
   (get_local $$660)
   (get_local $$661)
   (get_local $$662)
   (get_local $$663)
   (get_local $$665)
   (get_local $$666)
   (get_local $$667)
  )
  (i32.store
   (get_local $$382)
   (i32.const 67)
  )
  (set_local $$$index431
   (i32.add
    (get_local $$382)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index431)
   (i32.const 0)
  )
  (i64.store align=4
   (get_local $$$byval_copy939)
   (i64.load align=4
    (get_local $$382)
   )
  )
  (call $__ZN10emscripten15select_overloadIKFfffE9FastNoiseEEDtfp_EMT0_T_
   (get_local $$381)
   (get_local $$$byval_copy939)
  )
  (set_local $$$field433
   (i32.load
    (get_local $$381)
   )
  )
  (set_local $$$index435
   (i32.add
    (get_local $$381)
    (i32.const 4)
   )
  )
  (set_local $$$field436
   (i32.load
    (get_local $$$index435)
   )
  )
  (i32.store
   (get_local $$383)
   (get_local $$$field433)
  )
  (set_local $$$index439
   (i32.add
    (get_local $$383)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index439)
   (get_local $$$field436)
  )
  (i64.store align=1
   (get_local $$189)
   (i64.load align=1
    (get_local $$383)
   )
  )
  (set_local $$$field441
   (i32.load
    (get_local $$189)
   )
  )
  (set_local $$$index443
   (i32.add
    (get_local $$189)
    (i32.const 4)
   )
  )
  (set_local $$$field444
   (i32.load
    (get_local $$$index443)
   )
  )
  (set_local $$184
   (get_local $$655)
  )
  (set_local $$185
   (i32.const 9343)
  )
  (i32.store
   (get_local $$186)
   (get_local $$$field441)
  )
  (set_local $$$index447
   (i32.add
    (get_local $$186)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index447)
   (get_local $$$field444)
  )
  (set_local $$668
   (get_local $$184)
  )
  (set_local $$187
   (i32.const 68)
  )
  (set_local $$669
   (call $__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv)
  )
  (set_local $$670
   (get_local $$185)
  )
  (set_local $$671
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getCountEv
    (get_local $$188)
   )
  )
  (set_local $$672
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getTypesEv
    (get_local $$188)
   )
  )
  (set_local $$673
   (get_local $$187)
  )
  (set_local $$183
   (get_local $$673)
  )
  (set_local $$674
   (call $__ZN10emscripten8internal19getGenericSignatureIJfiiffEEEPKcv)
  )
  (set_local $$675
   (get_local $$187)
  )
  (set_local $$676
   (call $__ZN10emscripten8internal10getContextIM9FastNoiseKFfffEEEPT_RKS5_
    (get_local $$186)
   )
  )
  (call $__embind_register_class_function
   (get_local $$669)
   (get_local $$670)
   (get_local $$671)
   (get_local $$672)
   (get_local $$674)
   (get_local $$675)
   (get_local $$676)
   (i32.const 0)
  )
  (i32.store
   (get_local $$385)
   (i32.const 69)
  )
  (set_local $$$index449
   (i32.add
    (get_local $$385)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index449)
   (i32.const 0)
  )
  (i64.store align=4
   (get_local $$$byval_copy940)
   (i64.load align=4
    (get_local $$385)
   )
  )
  (call $__ZN10emscripten15select_overloadIKFfffE9FastNoiseEEDtfp_EMT0_T_
   (get_local $$384)
   (get_local $$$byval_copy940)
  )
  (set_local $$$field451
   (i32.load
    (get_local $$384)
   )
  )
  (set_local $$$index453
   (i32.add
    (get_local $$384)
    (i32.const 4)
   )
  )
  (set_local $$$field454
   (i32.load
    (get_local $$$index453)
   )
  )
  (i32.store
   (get_local $$386)
   (get_local $$$field451)
  )
  (set_local $$$index457
   (i32.add
    (get_local $$386)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index457)
   (get_local $$$field454)
  )
  (i64.store align=1
   (get_local $$182)
   (i64.load align=1
    (get_local $$386)
   )
  )
  (set_local $$$field459
   (i32.load
    (get_local $$182)
   )
  )
  (set_local $$$index461
   (i32.add
    (get_local $$182)
    (i32.const 4)
   )
  )
  (set_local $$$field462
   (i32.load
    (get_local $$$index461)
   )
  )
  (set_local $$177
   (get_local $$668)
  )
  (set_local $$178
   (i32.const 9351)
  )
  (i32.store
   (get_local $$179)
   (get_local $$$field459)
  )
  (set_local $$$index465
   (i32.add
    (get_local $$179)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index465)
   (get_local $$$field462)
  )
  (set_local $$677
   (get_local $$177)
  )
  (set_local $$180
   (i32.const 68)
  )
  (set_local $$678
   (call $__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv)
  )
  (set_local $$679
   (get_local $$178)
  )
  (set_local $$680
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getCountEv
    (get_local $$181)
   )
  )
  (set_local $$681
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getTypesEv
    (get_local $$181)
   )
  )
  (set_local $$682
   (get_local $$180)
  )
  (set_local $$176
   (get_local $$682)
  )
  (set_local $$683
   (call $__ZN10emscripten8internal19getGenericSignatureIJfiiffEEEPKcv)
  )
  (set_local $$684
   (get_local $$180)
  )
  (set_local $$685
   (call $__ZN10emscripten8internal10getContextIM9FastNoiseKFfffEEEPT_RKS5_
    (get_local $$179)
   )
  )
  (call $__embind_register_class_function
   (get_local $$678)
   (get_local $$679)
   (get_local $$680)
   (get_local $$681)
   (get_local $$683)
   (get_local $$684)
   (get_local $$685)
   (i32.const 0)
  )
  (i32.store
   (get_local $$388)
   (i32.const 70)
  )
  (set_local $$$index467
   (i32.add
    (get_local $$388)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index467)
   (i32.const 0)
  )
  (i64.store align=4
   (get_local $$$byval_copy941)
   (i64.load align=4
    (get_local $$388)
   )
  )
  (call $__ZN10emscripten15select_overloadIKFfffE9FastNoiseEEDtfp_EMT0_T_
   (get_local $$387)
   (get_local $$$byval_copy941)
  )
  (set_local $$$field469
   (i32.load
    (get_local $$387)
   )
  )
  (set_local $$$index471
   (i32.add
    (get_local $$387)
    (i32.const 4)
   )
  )
  (set_local $$$field472
   (i32.load
    (get_local $$$index471)
   )
  )
  (i32.store
   (get_local $$389)
   (get_local $$$field469)
  )
  (set_local $$$index475
   (i32.add
    (get_local $$389)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index475)
   (get_local $$$field472)
  )
  (i64.store align=1
   (get_local $$175)
   (i64.load align=1
    (get_local $$389)
   )
  )
  (set_local $$$field477
   (i32.load
    (get_local $$175)
   )
  )
  (set_local $$$index479
   (i32.add
    (get_local $$175)
    (i32.const 4)
   )
  )
  (set_local $$$field480
   (i32.load
    (get_local $$$index479)
   )
  )
  (set_local $$170
   (get_local $$677)
  )
  (set_local $$171
   (i32.const 9366)
  )
  (i32.store
   (get_local $$172)
   (get_local $$$field477)
  )
  (set_local $$$index483
   (i32.add
    (get_local $$172)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index483)
   (get_local $$$field480)
  )
  (set_local $$686
   (get_local $$170)
  )
  (set_local $$173
   (i32.const 68)
  )
  (set_local $$687
   (call $__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv)
  )
  (set_local $$688
   (get_local $$171)
  )
  (set_local $$689
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getCountEv
    (get_local $$174)
   )
  )
  (set_local $$690
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getTypesEv
    (get_local $$174)
   )
  )
  (set_local $$691
   (get_local $$173)
  )
  (set_local $$169
   (get_local $$691)
  )
  (set_local $$692
   (call $__ZN10emscripten8internal19getGenericSignatureIJfiiffEEEPKcv)
  )
  (set_local $$693
   (get_local $$173)
  )
  (set_local $$694
   (call $__ZN10emscripten8internal10getContextIM9FastNoiseKFfffEEEPT_RKS5_
    (get_local $$172)
   )
  )
  (call $__embind_register_class_function
   (get_local $$687)
   (get_local $$688)
   (get_local $$689)
   (get_local $$690)
   (get_local $$692)
   (get_local $$693)
   (get_local $$694)
   (i32.const 0)
  )
  (i32.store
   (get_local $$391)
   (i32.const 71)
  )
  (set_local $$$index485
   (i32.add
    (get_local $$391)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index485)
   (i32.const 0)
  )
  (i64.store align=4
   (get_local $$$byval_copy942)
   (i64.load align=4
    (get_local $$391)
   )
  )
  (call $__ZN10emscripten15select_overloadIKFfffE9FastNoiseEEDtfp_EMT0_T_
   (get_local $$390)
   (get_local $$$byval_copy942)
  )
  (set_local $$$field487
   (i32.load
    (get_local $$390)
   )
  )
  (set_local $$$index489
   (i32.add
    (get_local $$390)
    (i32.const 4)
   )
  )
  (set_local $$$field490
   (i32.load
    (get_local $$$index489)
   )
  )
  (i32.store
   (get_local $$392)
   (get_local $$$field487)
  )
  (set_local $$$index493
   (i32.add
    (get_local $$392)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index493)
   (get_local $$$field490)
  )
  (i64.store align=1
   (get_local $$168)
   (i64.load align=1
    (get_local $$392)
   )
  )
  (set_local $$$field495
   (i32.load
    (get_local $$168)
   )
  )
  (set_local $$$index497
   (i32.add
    (get_local $$168)
    (i32.const 4)
   )
  )
  (set_local $$$field498
   (i32.load
    (get_local $$$index497)
   )
  )
  (set_local $$163
   (get_local $$686)
  )
  (set_local $$164
   (i32.const 9375)
  )
  (i32.store
   (get_local $$165)
   (get_local $$$field495)
  )
  (set_local $$$index501
   (i32.add
    (get_local $$165)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index501)
   (get_local $$$field498)
  )
  (set_local $$695
   (get_local $$163)
  )
  (set_local $$166
   (i32.const 68)
  )
  (set_local $$696
   (call $__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv)
  )
  (set_local $$697
   (get_local $$164)
  )
  (set_local $$698
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getCountEv
    (get_local $$167)
   )
  )
  (set_local $$699
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getTypesEv
    (get_local $$167)
   )
  )
  (set_local $$700
   (get_local $$166)
  )
  (set_local $$162
   (get_local $$700)
  )
  (set_local $$701
   (call $__ZN10emscripten8internal19getGenericSignatureIJfiiffEEEPKcv)
  )
  (set_local $$702
   (get_local $$166)
  )
  (set_local $$703
   (call $__ZN10emscripten8internal10getContextIM9FastNoiseKFfffEEEPT_RKS5_
    (get_local $$165)
   )
  )
  (call $__embind_register_class_function
   (get_local $$696)
   (get_local $$697)
   (get_local $$698)
   (get_local $$699)
   (get_local $$701)
   (get_local $$702)
   (get_local $$703)
   (i32.const 0)
  )
  (i32.store
   (get_local $$394)
   (i32.const 72)
  )
  (set_local $$$index503
   (i32.add
    (get_local $$394)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index503)
   (i32.const 0)
  )
  (i64.store align=4
   (get_local $$$byval_copy943)
   (i64.load align=4
    (get_local $$394)
   )
  )
  (call $__ZN10emscripten15select_overloadIKFfffE9FastNoiseEEDtfp_EMT0_T_
   (get_local $$393)
   (get_local $$$byval_copy943)
  )
  (set_local $$$field505
   (i32.load
    (get_local $$393)
   )
  )
  (set_local $$$index507
   (i32.add
    (get_local $$393)
    (i32.const 4)
   )
  )
  (set_local $$$field508
   (i32.load
    (get_local $$$index507)
   )
  )
  (i32.store
   (get_local $$395)
   (get_local $$$field505)
  )
  (set_local $$$index511
   (i32.add
    (get_local $$395)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index511)
   (get_local $$$field508)
  )
  (i64.store align=1
   (get_local $$161)
   (i64.load align=1
    (get_local $$395)
   )
  )
  (set_local $$$field513
   (i32.load
    (get_local $$161)
   )
  )
  (set_local $$$index515
   (i32.add
    (get_local $$161)
    (i32.const 4)
   )
  )
  (set_local $$$field516
   (i32.load
    (get_local $$$index515)
   )
  )
  (set_local $$156
   (get_local $$695)
  )
  (set_local $$157
   (i32.const 9391)
  )
  (i32.store
   (get_local $$158)
   (get_local $$$field513)
  )
  (set_local $$$index519
   (i32.add
    (get_local $$158)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index519)
   (get_local $$$field516)
  )
  (set_local $$704
   (get_local $$156)
  )
  (set_local $$159
   (i32.const 68)
  )
  (set_local $$705
   (call $__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv)
  )
  (set_local $$706
   (get_local $$157)
  )
  (set_local $$707
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getCountEv
    (get_local $$160)
   )
  )
  (set_local $$708
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getTypesEv
    (get_local $$160)
   )
  )
  (set_local $$709
   (get_local $$159)
  )
  (set_local $$155
   (get_local $$709)
  )
  (set_local $$710
   (call $__ZN10emscripten8internal19getGenericSignatureIJfiiffEEEPKcv)
  )
  (set_local $$711
   (get_local $$159)
  )
  (set_local $$712
   (call $__ZN10emscripten8internal10getContextIM9FastNoiseKFfffEEEPT_RKS5_
    (get_local $$158)
   )
  )
  (call $__embind_register_class_function
   (get_local $$705)
   (get_local $$706)
   (get_local $$707)
   (get_local $$708)
   (get_local $$710)
   (get_local $$711)
   (get_local $$712)
   (i32.const 0)
  )
  (i32.store
   (get_local $$397)
   (i32.const 73)
  )
  (set_local $$$index521
   (i32.add
    (get_local $$397)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index521)
   (i32.const 0)
  )
  (i64.store align=4
   (get_local $$$byval_copy944)
   (i64.load align=4
    (get_local $$397)
   )
  )
  (call $__ZN10emscripten15select_overloadIKFfffE9FastNoiseEEDtfp_EMT0_T_
   (get_local $$396)
   (get_local $$$byval_copy944)
  )
  (set_local $$$field523
   (i32.load
    (get_local $$396)
   )
  )
  (set_local $$$index525
   (i32.add
    (get_local $$396)
    (i32.const 4)
   )
  )
  (set_local $$$field526
   (i32.load
    (get_local $$$index525)
   )
  )
  (i32.store
   (get_local $$398)
   (get_local $$$field523)
  )
  (set_local $$$index529
   (i32.add
    (get_local $$398)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index529)
   (get_local $$$field526)
  )
  (i64.store align=1
   (get_local $$154)
   (i64.load align=1
    (get_local $$398)
   )
  )
  (set_local $$$field531
   (i32.load
    (get_local $$154)
   )
  )
  (set_local $$$index533
   (i32.add
    (get_local $$154)
    (i32.const 4)
   )
  )
  (set_local $$$field534
   (i32.load
    (get_local $$$index533)
   )
  )
  (set_local $$149
   (get_local $$704)
  )
  (set_local $$150
   (i32.const 9401)
  )
  (i32.store
   (get_local $$151)
   (get_local $$$field531)
  )
  (set_local $$$index537
   (i32.add
    (get_local $$151)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index537)
   (get_local $$$field534)
  )
  (set_local $$713
   (get_local $$149)
  )
  (set_local $$152
   (i32.const 68)
  )
  (set_local $$714
   (call $__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv)
  )
  (set_local $$715
   (get_local $$150)
  )
  (set_local $$716
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getCountEv
    (get_local $$153)
   )
  )
  (set_local $$717
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getTypesEv
    (get_local $$153)
   )
  )
  (set_local $$718
   (get_local $$152)
  )
  (set_local $$148
   (get_local $$718)
  )
  (set_local $$719
   (call $__ZN10emscripten8internal19getGenericSignatureIJfiiffEEEPKcv)
  )
  (set_local $$720
   (get_local $$152)
  )
  (set_local $$721
   (call $__ZN10emscripten8internal10getContextIM9FastNoiseKFfffEEEPT_RKS5_
    (get_local $$151)
   )
  )
  (call $__embind_register_class_function
   (get_local $$714)
   (get_local $$715)
   (get_local $$716)
   (get_local $$717)
   (get_local $$719)
   (get_local $$720)
   (get_local $$721)
   (i32.const 0)
  )
  (i32.store
   (get_local $$400)
   (i32.const 74)
  )
  (set_local $$$index539
   (i32.add
    (get_local $$400)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index539)
   (i32.const 0)
  )
  (i64.store align=4
   (get_local $$$byval_copy945)
   (i64.load align=4
    (get_local $$400)
   )
  )
  (call $__ZN10emscripten15select_overloadIKFfffE9FastNoiseEEDtfp_EMT0_T_
   (get_local $$399)
   (get_local $$$byval_copy945)
  )
  (set_local $$$field541
   (i32.load
    (get_local $$399)
   )
  )
  (set_local $$$index543
   (i32.add
    (get_local $$399)
    (i32.const 4)
   )
  )
  (set_local $$$field544
   (i32.load
    (get_local $$$index543)
   )
  )
  (i32.store
   (get_local $$401)
   (get_local $$$field541)
  )
  (set_local $$$index547
   (i32.add
    (get_local $$401)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index547)
   (get_local $$$field544)
  )
  (i64.store align=1
   (get_local $$147)
   (i64.load align=1
    (get_local $$401)
   )
  )
  (set_local $$$field549
   (i32.load
    (get_local $$147)
   )
  )
  (set_local $$$index551
   (i32.add
    (get_local $$147)
    (i32.const 4)
   )
  )
  (set_local $$$field552
   (i32.load
    (get_local $$$index551)
   )
  )
  (set_local $$142
   (get_local $$713)
  )
  (set_local $$143
   (i32.const 9418)
  )
  (i32.store
   (get_local $$144)
   (get_local $$$field549)
  )
  (set_local $$$index555
   (i32.add
    (get_local $$144)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index555)
   (get_local $$$field552)
  )
  (set_local $$722
   (get_local $$142)
  )
  (set_local $$145
   (i32.const 68)
  )
  (set_local $$723
   (call $__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv)
  )
  (set_local $$724
   (get_local $$143)
  )
  (set_local $$725
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getCountEv
    (get_local $$146)
   )
  )
  (set_local $$726
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getTypesEv
    (get_local $$146)
   )
  )
  (set_local $$727
   (get_local $$145)
  )
  (set_local $$141
   (get_local $$727)
  )
  (set_local $$728
   (call $__ZN10emscripten8internal19getGenericSignatureIJfiiffEEEPKcv)
  )
  (set_local $$729
   (get_local $$145)
  )
  (set_local $$730
   (call $__ZN10emscripten8internal10getContextIM9FastNoiseKFfffEEEPT_RKS5_
    (get_local $$144)
   )
  )
  (call $__embind_register_class_function
   (get_local $$723)
   (get_local $$724)
   (get_local $$725)
   (get_local $$726)
   (get_local $$728)
   (get_local $$729)
   (get_local $$730)
   (i32.const 0)
  )
  (i32.store
   (get_local $$403)
   (i32.const 75)
  )
  (set_local $$$index557
   (i32.add
    (get_local $$403)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index557)
   (i32.const 0)
  )
  (i64.store align=4
   (get_local $$$byval_copy946)
   (i64.load align=4
    (get_local $$403)
   )
  )
  (call $__ZN10emscripten15select_overloadIKFfffE9FastNoiseEEDtfp_EMT0_T_
   (get_local $$402)
   (get_local $$$byval_copy946)
  )
  (set_local $$$field559
   (i32.load
    (get_local $$402)
   )
  )
  (set_local $$$index561
   (i32.add
    (get_local $$402)
    (i32.const 4)
   )
  )
  (set_local $$$field562
   (i32.load
    (get_local $$$index561)
   )
  )
  (i32.store
   (get_local $$404)
   (get_local $$$field559)
  )
  (set_local $$$index565
   (i32.add
    (get_local $$404)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index565)
   (get_local $$$field562)
  )
  (i64.store align=1
   (get_local $$140)
   (i64.load align=1
    (get_local $$404)
   )
  )
  (set_local $$$field567
   (i32.load
    (get_local $$140)
   )
  )
  (set_local $$$index569
   (i32.add
    (get_local $$140)
    (i32.const 4)
   )
  )
  (set_local $$$field570
   (i32.load
    (get_local $$$index569)
   )
  )
  (set_local $$135
   (get_local $$722)
  )
  (set_local $$136
   (i32.const 9429)
  )
  (i32.store
   (get_local $$137)
   (get_local $$$field567)
  )
  (set_local $$$index573
   (i32.add
    (get_local $$137)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index573)
   (get_local $$$field570)
  )
  (set_local $$731
   (get_local $$135)
  )
  (set_local $$138
   (i32.const 68)
  )
  (set_local $$732
   (call $__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv)
  )
  (set_local $$733
   (get_local $$136)
  )
  (set_local $$734
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getCountEv
    (get_local $$139)
   )
  )
  (set_local $$735
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getTypesEv
    (get_local $$139)
   )
  )
  (set_local $$736
   (get_local $$138)
  )
  (set_local $$134
   (get_local $$736)
  )
  (set_local $$737
   (call $__ZN10emscripten8internal19getGenericSignatureIJfiiffEEEPKcv)
  )
  (set_local $$738
   (get_local $$138)
  )
  (set_local $$739
   (call $__ZN10emscripten8internal10getContextIM9FastNoiseKFfffEEEPT_RKS5_
    (get_local $$137)
   )
  )
  (call $__embind_register_class_function
   (get_local $$732)
   (get_local $$733)
   (get_local $$734)
   (get_local $$735)
   (get_local $$737)
   (get_local $$738)
   (get_local $$739)
   (i32.const 0)
  )
  (i32.store
   (get_local $$406)
   (i32.const 76)
  )
  (set_local $$$index575
   (i32.add
    (get_local $$406)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index575)
   (i32.const 0)
  )
  (i64.store align=4
   (get_local $$$byval_copy947)
   (i64.load align=4
    (get_local $$406)
   )
  )
  (call $__ZN10emscripten15select_overloadIKFfiiE9FastNoiseEEDtfp_EMT0_T_
   (get_local $$405)
   (get_local $$$byval_copy947)
  )
  (set_local $$$field577
   (i32.load
    (get_local $$405)
   )
  )
  (set_local $$$index579
   (i32.add
    (get_local $$405)
    (i32.const 4)
   )
  )
  (set_local $$$field580
   (i32.load
    (get_local $$$index579)
   )
  )
  (i32.store
   (get_local $$407)
   (get_local $$$field577)
  )
  (set_local $$$index583
   (i32.add
    (get_local $$407)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index583)
   (get_local $$$field580)
  )
  (i64.store align=1
   (get_local $$133)
   (i64.load align=1
    (get_local $$407)
   )
  )
  (set_local $$$field585
   (i32.load
    (get_local $$133)
   )
  )
  (set_local $$$index587
   (i32.add
    (get_local $$133)
    (i32.const 4)
   )
  )
  (set_local $$$field588
   (i32.load
    (get_local $$$index587)
   )
  )
  (set_local $$128
   (get_local $$731)
  )
  (set_local $$129
   (i32.const 9442)
  )
  (i32.store
   (get_local $$130)
   (get_local $$$field585)
  )
  (set_local $$$index591
   (i32.add
    (get_local $$130)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index591)
   (get_local $$$field588)
  )
  (set_local $$740
   (get_local $$128)
  )
  (set_local $$131
   (i32.const 77)
  )
  (set_local $$741
   (call $__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv)
  )
  (set_local $$742
   (get_local $$129)
  )
  (set_local $$743
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEiiEE8getCountEv
    (get_local $$132)
   )
  )
  (set_local $$744
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEiiEE8getTypesEv
    (get_local $$132)
   )
  )
  (set_local $$745
   (get_local $$131)
  )
  (set_local $$127
   (get_local $$745)
  )
  (set_local $$746
   (call $__ZN10emscripten8internal19getGenericSignatureIJfiiiiEEEPKcv)
  )
  (set_local $$747
   (get_local $$131)
  )
  (set_local $$748
   (call $__ZN10emscripten8internal10getContextIM9FastNoiseKFfiiEEEPT_RKS5_
    (get_local $$130)
   )
  )
  (call $__embind_register_class_function
   (get_local $$741)
   (get_local $$742)
   (get_local $$743)
   (get_local $$744)
   (get_local $$746)
   (get_local $$747)
   (get_local $$748)
   (i32.const 0)
  )
  (i32.store
   (get_local $$409)
   (i32.const 78)
  )
  (set_local $$$index593
   (i32.add
    (get_local $$409)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index593)
   (i32.const 0)
  )
  (i64.store align=4
   (get_local $$$byval_copy948)
   (i64.load align=4
    (get_local $$409)
   )
  )
  (call $__ZN10emscripten15select_overloadIKFfffE9FastNoiseEEDtfp_EMT0_T_
   (get_local $$408)
   (get_local $$$byval_copy948)
  )
  (set_local $$$field595
   (i32.load
    (get_local $$408)
   )
  )
  (set_local $$$index597
   (i32.add
    (get_local $$408)
    (i32.const 4)
   )
  )
  (set_local $$$field598
   (i32.load
    (get_local $$$index597)
   )
  )
  (i32.store
   (get_local $$410)
   (get_local $$$field595)
  )
  (set_local $$$index601
   (i32.add
    (get_local $$410)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index601)
   (get_local $$$field598)
  )
  (i64.store align=1
   (get_local $$126)
   (i64.load align=1
    (get_local $$410)
   )
  )
  (set_local $$$field603
   (i32.load
    (get_local $$126)
   )
  )
  (set_local $$$index605
   (i32.add
    (get_local $$126)
    (i32.const 4)
   )
  )
  (set_local $$$field606
   (i32.load
    (get_local $$$index605)
   )
  )
  (set_local $$121
   (get_local $$740)
  )
  (set_local $$122
   (i32.const 9458)
  )
  (i32.store
   (get_local $$123)
   (get_local $$$field603)
  )
  (set_local $$$index609
   (i32.add
    (get_local $$123)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index609)
   (get_local $$$field606)
  )
  (set_local $$749
   (get_local $$121)
  )
  (set_local $$124
   (i32.const 68)
  )
  (set_local $$750
   (call $__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv)
  )
  (set_local $$751
   (get_local $$122)
  )
  (set_local $$752
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getCountEv
    (get_local $$125)
   )
  )
  (set_local $$753
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getTypesEv
    (get_local $$125)
   )
  )
  (set_local $$754
   (get_local $$124)
  )
  (set_local $$120
   (get_local $$754)
  )
  (set_local $$755
   (call $__ZN10emscripten8internal19getGenericSignatureIJfiiffEEEPKcv)
  )
  (set_local $$756
   (get_local $$124)
  )
  (set_local $$757
   (call $__ZN10emscripten8internal10getContextIM9FastNoiseKFfffEEEPT_RKS5_
    (get_local $$123)
   )
  )
  (call $__embind_register_class_function
   (get_local $$750)
   (get_local $$751)
   (get_local $$752)
   (get_local $$753)
   (get_local $$755)
   (get_local $$756)
   (get_local $$757)
   (i32.const 0)
  )
  (i32.store
   (get_local $$412)
   (i32.const 79)
  )
  (set_local $$$index611
   (i32.add
    (get_local $$412)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index611)
   (i32.const 0)
  )
  (i64.store align=4
   (get_local $$$byval_copy949)
   (i64.load align=4
    (get_local $$412)
   )
  )
  (call $__ZN10emscripten15select_overloadIKFfffE9FastNoiseEEDtfp_EMT0_T_
   (get_local $$411)
   (get_local $$$byval_copy949)
  )
  (set_local $$$field613
   (i32.load
    (get_local $$411)
   )
  )
  (set_local $$$index615
   (i32.add
    (get_local $$411)
    (i32.const 4)
   )
  )
  (set_local $$$field616
   (i32.load
    (get_local $$$index615)
   )
  )
  (i32.store
   (get_local $$413)
   (get_local $$$field613)
  )
  (set_local $$$index619
   (i32.add
    (get_local $$413)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index619)
   (get_local $$$field616)
  )
  (i64.store align=1
   (get_local $$119)
   (i64.load align=1
    (get_local $$413)
   )
  )
  (set_local $$$field621
   (i32.load
    (get_local $$119)
   )
  )
  (set_local $$$index623
   (i32.add
    (get_local $$119)
    (i32.const 4)
   )
  )
  (set_local $$$field624
   (i32.load
    (get_local $$$index623)
   )
  )
  (set_local $$114
   (get_local $$749)
  )
  (set_local $$115
   (i32.const 9466)
  )
  (i32.store
   (get_local $$116)
   (get_local $$$field621)
  )
  (set_local $$$index627
   (i32.add
    (get_local $$116)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index627)
   (get_local $$$field624)
  )
  (set_local $$758
   (get_local $$114)
  )
  (set_local $$117
   (i32.const 68)
  )
  (set_local $$759
   (call $__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv)
  )
  (set_local $$760
   (get_local $$115)
  )
  (set_local $$761
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getCountEv
    (get_local $$118)
   )
  )
  (set_local $$762
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getTypesEv
    (get_local $$118)
   )
  )
  (set_local $$763
   (get_local $$117)
  )
  (set_local $$113
   (get_local $$763)
  )
  (set_local $$764
   (call $__ZN10emscripten8internal19getGenericSignatureIJfiiffEEEPKcv)
  )
  (set_local $$765
   (get_local $$117)
  )
  (set_local $$766
   (call $__ZN10emscripten8internal10getContextIM9FastNoiseKFfffEEEPT_RKS5_
    (get_local $$116)
   )
  )
  (call $__embind_register_class_function
   (get_local $$759)
   (get_local $$760)
   (get_local $$761)
   (get_local $$762)
   (get_local $$764)
   (get_local $$765)
   (get_local $$766)
   (i32.const 0)
  )
  (i32.store
   (get_local $$415)
   (i32.const 80)
  )
  (set_local $$$index629
   (i32.add
    (get_local $$415)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index629)
   (i32.const 0)
  )
  (i64.store align=4
   (get_local $$$byval_copy950)
   (i64.load align=4
    (get_local $$415)
   )
  )
  (call $__ZN10emscripten15select_overloadIKFfffE9FastNoiseEEDtfp_EMT0_T_
   (get_local $$414)
   (get_local $$$byval_copy950)
  )
  (set_local $$$field631
   (i32.load
    (get_local $$414)
   )
  )
  (set_local $$$index633
   (i32.add
    (get_local $$414)
    (i32.const 4)
   )
  )
  (set_local $$$field634
   (i32.load
    (get_local $$$index633)
   )
  )
  (i32.store
   (get_local $$416)
   (get_local $$$field631)
  )
  (set_local $$$index637
   (i32.add
    (get_local $$416)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index637)
   (get_local $$$field634)
  )
  (i64.store align=1
   (get_local $$112)
   (i64.load align=1
    (get_local $$416)
   )
  )
  (set_local $$$field639
   (i32.load
    (get_local $$112)
   )
  )
  (set_local $$$index641
   (i32.add
    (get_local $$112)
    (i32.const 4)
   )
  )
  (set_local $$$field642
   (i32.load
    (get_local $$$index641)
   )
  )
  (set_local $$107
   (get_local $$758)
  )
  (set_local $$108
   (i32.const 9481)
  )
  (i32.store
   (get_local $$109)
   (get_local $$$field639)
  )
  (set_local $$$index645
   (i32.add
    (get_local $$109)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index645)
   (get_local $$$field642)
  )
  (set_local $$767
   (get_local $$107)
  )
  (set_local $$110
   (i32.const 68)
  )
  (set_local $$768
   (call $__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv)
  )
  (set_local $$769
   (get_local $$108)
  )
  (set_local $$770
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getCountEv
    (get_local $$111)
   )
  )
  (set_local $$771
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getTypesEv
    (get_local $$111)
   )
  )
  (set_local $$772
   (get_local $$110)
  )
  (set_local $$106
   (get_local $$772)
  )
  (set_local $$773
   (call $__ZN10emscripten8internal19getGenericSignatureIJfiiffEEEPKcv)
  )
  (set_local $$774
   (get_local $$110)
  )
  (set_local $$775
   (call $__ZN10emscripten8internal10getContextIM9FastNoiseKFfffEEEPT_RKS5_
    (get_local $$109)
   )
  )
  (call $__embind_register_class_function
   (get_local $$768)
   (get_local $$769)
   (get_local $$770)
   (get_local $$771)
   (get_local $$773)
   (get_local $$774)
   (get_local $$775)
   (i32.const 0)
  )
  (i32.store
   (get_local $$418)
   (i32.const 81)
  )
  (set_local $$$index647
   (i32.add
    (get_local $$418)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index647)
   (i32.const 0)
  )
  (i64.store align=4
   (get_local $$$byval_copy951)
   (i64.load align=4
    (get_local $$418)
   )
  )
  (call $__ZN10emscripten15select_overloadIKFffffE9FastNoiseEEDtfp_EMT0_T_
   (get_local $$417)
   (get_local $$$byval_copy951)
  )
  (set_local $$$field649
   (i32.load
    (get_local $$417)
   )
  )
  (set_local $$$index651
   (i32.add
    (get_local $$417)
    (i32.const 4)
   )
  )
  (set_local $$$field652
   (i32.load
    (get_local $$$index651)
   )
  )
  (i32.store
   (get_local $$419)
   (get_local $$$field649)
  )
  (set_local $$$index655
   (i32.add
    (get_local $$419)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index655)
   (get_local $$$field652)
  )
  (i64.store align=1
   (get_local $$105)
   (i64.load align=1
    (get_local $$419)
   )
  )
  (set_local $$$field657
   (i32.load
    (get_local $$105)
   )
  )
  (set_local $$$index659
   (i32.add
    (get_local $$105)
    (i32.const 4)
   )
  )
  (set_local $$$field660
   (i32.load
    (get_local $$$index659)
   )
  )
  (set_local $$100
   (get_local $$767)
  )
  (set_local $$101
   (i32.const 9492)
  )
  (i32.store
   (get_local $$102)
   (get_local $$$field657)
  )
  (set_local $$$index663
   (i32.add
    (get_local $$102)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index663)
   (get_local $$$field660)
  )
  (set_local $$776
   (get_local $$100)
  )
  (set_local $$103
   (i32.const 82)
  )
  (set_local $$777
   (call $__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv)
  )
  (set_local $$778
   (get_local $$101)
  )
  (set_local $$779
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getCountEv
    (get_local $$104)
   )
  )
  (set_local $$780
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getTypesEv
    (get_local $$104)
   )
  )
  (set_local $$781
   (get_local $$103)
  )
  (set_local $$99
   (get_local $$781)
  )
  (set_local $$782
   (call $__ZN10emscripten8internal19getGenericSignatureIJfiifffEEEPKcv)
  )
  (set_local $$783
   (get_local $$103)
  )
  (set_local $$784
   (call $__ZN10emscripten8internal10getContextIM9FastNoiseKFffffEEEPT_RKS5_
    (get_local $$102)
   )
  )
  (call $__embind_register_class_function
   (get_local $$777)
   (get_local $$778)
   (get_local $$779)
   (get_local $$780)
   (get_local $$782)
   (get_local $$783)
   (get_local $$784)
   (i32.const 0)
  )
  (i32.store
   (get_local $$421)
   (i32.const 83)
  )
  (set_local $$$index665
   (i32.add
    (get_local $$421)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index665)
   (i32.const 0)
  )
  (i64.store align=4
   (get_local $$$byval_copy952)
   (i64.load align=4
    (get_local $$421)
   )
  )
  (call $__ZN10emscripten15select_overloadIKFffffE9FastNoiseEEDtfp_EMT0_T_
   (get_local $$420)
   (get_local $$$byval_copy952)
  )
  (set_local $$$field667
   (i32.load
    (get_local $$420)
   )
  )
  (set_local $$$index669
   (i32.add
    (get_local $$420)
    (i32.const 4)
   )
  )
  (set_local $$$field670
   (i32.load
    (get_local $$$index669)
   )
  )
  (i32.store
   (get_local $$422)
   (get_local $$$field667)
  )
  (set_local $$$index673
   (i32.add
    (get_local $$422)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index673)
   (get_local $$$field670)
  )
  (i64.store align=1
   (get_local $$98)
   (i64.load align=1
    (get_local $$422)
   )
  )
  (set_local $$$field675
   (i32.load
    (get_local $$98)
   )
  )
  (set_local $$$index677
   (i32.add
    (get_local $$98)
    (i32.const 4)
   )
  )
  (set_local $$$field678
   (i32.load
    (get_local $$$index677)
   )
  )
  (set_local $$93
   (get_local $$776)
  )
  (set_local $$94
   (i32.const 9500)
  )
  (i32.store
   (get_local $$95)
   (get_local $$$field675)
  )
  (set_local $$$index681
   (i32.add
    (get_local $$95)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index681)
   (get_local $$$field678)
  )
  (set_local $$785
   (get_local $$93)
  )
  (set_local $$96
   (i32.const 82)
  )
  (set_local $$786
   (call $__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv)
  )
  (set_local $$787
   (get_local $$94)
  )
  (set_local $$788
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getCountEv
    (get_local $$97)
   )
  )
  (set_local $$789
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getTypesEv
    (get_local $$97)
   )
  )
  (set_local $$790
   (get_local $$96)
  )
  (set_local $$92
   (get_local $$790)
  )
  (set_local $$791
   (call $__ZN10emscripten8internal19getGenericSignatureIJfiifffEEEPKcv)
  )
  (set_local $$792
   (get_local $$96)
  )
  (set_local $$793
   (call $__ZN10emscripten8internal10getContextIM9FastNoiseKFffffEEEPT_RKS5_
    (get_local $$95)
   )
  )
  (call $__embind_register_class_function
   (get_local $$786)
   (get_local $$787)
   (get_local $$788)
   (get_local $$789)
   (get_local $$791)
   (get_local $$792)
   (get_local $$793)
   (i32.const 0)
  )
  (i32.store
   (get_local $$424)
   (i32.const 84)
  )
  (set_local $$$index683
   (i32.add
    (get_local $$424)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index683)
   (i32.const 0)
  )
  (i64.store align=4
   (get_local $$$byval_copy953)
   (i64.load align=4
    (get_local $$424)
   )
  )
  (call $__ZN10emscripten15select_overloadIKFffffE9FastNoiseEEDtfp_EMT0_T_
   (get_local $$423)
   (get_local $$$byval_copy953)
  )
  (set_local $$$field685
   (i32.load
    (get_local $$423)
   )
  )
  (set_local $$$index687
   (i32.add
    (get_local $$423)
    (i32.const 4)
   )
  )
  (set_local $$$field688
   (i32.load
    (get_local $$$index687)
   )
  )
  (i32.store
   (get_local $$425)
   (get_local $$$field685)
  )
  (set_local $$$index691
   (i32.add
    (get_local $$425)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index691)
   (get_local $$$field688)
  )
  (i64.store align=1
   (get_local $$91)
   (i64.load align=1
    (get_local $$425)
   )
  )
  (set_local $$$field693
   (i32.load
    (get_local $$91)
   )
  )
  (set_local $$$index695
   (i32.add
    (get_local $$91)
    (i32.const 4)
   )
  )
  (set_local $$$field696
   (i32.load
    (get_local $$$index695)
   )
  )
  (set_local $$86
   (get_local $$785)
  )
  (set_local $$87
   (i32.const 9515)
  )
  (i32.store
   (get_local $$88)
   (get_local $$$field693)
  )
  (set_local $$$index699
   (i32.add
    (get_local $$88)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index699)
   (get_local $$$field696)
  )
  (set_local $$794
   (get_local $$86)
  )
  (set_local $$89
   (i32.const 82)
  )
  (set_local $$795
   (call $__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv)
  )
  (set_local $$796
   (get_local $$87)
  )
  (set_local $$797
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getCountEv
    (get_local $$90)
   )
  )
  (set_local $$798
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getTypesEv
    (get_local $$90)
   )
  )
  (set_local $$799
   (get_local $$89)
  )
  (set_local $$85
   (get_local $$799)
  )
  (set_local $$800
   (call $__ZN10emscripten8internal19getGenericSignatureIJfiifffEEEPKcv)
  )
  (set_local $$801
   (get_local $$89)
  )
  (set_local $$802
   (call $__ZN10emscripten8internal10getContextIM9FastNoiseKFffffEEEPT_RKS5_
    (get_local $$88)
   )
  )
  (call $__embind_register_class_function
   (get_local $$795)
   (get_local $$796)
   (get_local $$797)
   (get_local $$798)
   (get_local $$800)
   (get_local $$801)
   (get_local $$802)
   (i32.const 0)
  )
  (i32.store
   (get_local $$427)
   (i32.const 85)
  )
  (set_local $$$index701
   (i32.add
    (get_local $$427)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index701)
   (i32.const 0)
  )
  (i64.store align=4
   (get_local $$$byval_copy954)
   (i64.load align=4
    (get_local $$427)
   )
  )
  (call $__ZN10emscripten15select_overloadIKFffffE9FastNoiseEEDtfp_EMT0_T_
   (get_local $$426)
   (get_local $$$byval_copy954)
  )
  (set_local $$$field703
   (i32.load
    (get_local $$426)
   )
  )
  (set_local $$$index705
   (i32.add
    (get_local $$426)
    (i32.const 4)
   )
  )
  (set_local $$$field706
   (i32.load
    (get_local $$$index705)
   )
  )
  (i32.store
   (get_local $$428)
   (get_local $$$field703)
  )
  (set_local $$$index709
   (i32.add
    (get_local $$428)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index709)
   (get_local $$$field706)
  )
  (i64.store align=1
   (get_local $$84)
   (i64.load align=1
    (get_local $$428)
   )
  )
  (set_local $$$field711
   (i32.load
    (get_local $$84)
   )
  )
  (set_local $$$index713
   (i32.add
    (get_local $$84)
    (i32.const 4)
   )
  )
  (set_local $$$field714
   (i32.load
    (get_local $$$index713)
   )
  )
  (set_local $$79
   (get_local $$794)
  )
  (set_local $$80
   (i32.const 9524)
  )
  (i32.store
   (get_local $$81)
   (get_local $$$field711)
  )
  (set_local $$$index717
   (i32.add
    (get_local $$81)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index717)
   (get_local $$$field714)
  )
  (set_local $$803
   (get_local $$79)
  )
  (set_local $$82
   (i32.const 82)
  )
  (set_local $$804
   (call $__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv)
  )
  (set_local $$805
   (get_local $$80)
  )
  (set_local $$806
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getCountEv
    (get_local $$83)
   )
  )
  (set_local $$807
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getTypesEv
    (get_local $$83)
   )
  )
  (set_local $$808
   (get_local $$82)
  )
  (set_local $$78
   (get_local $$808)
  )
  (set_local $$809
   (call $__ZN10emscripten8internal19getGenericSignatureIJfiifffEEEPKcv)
  )
  (set_local $$810
   (get_local $$82)
  )
  (set_local $$811
   (call $__ZN10emscripten8internal10getContextIM9FastNoiseKFffffEEEPT_RKS5_
    (get_local $$81)
   )
  )
  (call $__embind_register_class_function
   (get_local $$804)
   (get_local $$805)
   (get_local $$806)
   (get_local $$807)
   (get_local $$809)
   (get_local $$810)
   (get_local $$811)
   (i32.const 0)
  )
  (i32.store
   (get_local $$430)
   (i32.const 86)
  )
  (set_local $$$index719
   (i32.add
    (get_local $$430)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index719)
   (i32.const 0)
  )
  (i64.store align=4
   (get_local $$$byval_copy955)
   (i64.load align=4
    (get_local $$430)
   )
  )
  (call $__ZN10emscripten15select_overloadIKFffffE9FastNoiseEEDtfp_EMT0_T_
   (get_local $$429)
   (get_local $$$byval_copy955)
  )
  (set_local $$$field721
   (i32.load
    (get_local $$429)
   )
  )
  (set_local $$$index723
   (i32.add
    (get_local $$429)
    (i32.const 4)
   )
  )
  (set_local $$$field724
   (i32.load
    (get_local $$$index723)
   )
  )
  (i32.store
   (get_local $$431)
   (get_local $$$field721)
  )
  (set_local $$$index727
   (i32.add
    (get_local $$431)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index727)
   (get_local $$$field724)
  )
  (i64.store align=1
   (get_local $$77)
   (i64.load align=1
    (get_local $$431)
   )
  )
  (set_local $$$field729
   (i32.load
    (get_local $$77)
   )
  )
  (set_local $$$index731
   (i32.add
    (get_local $$77)
    (i32.const 4)
   )
  )
  (set_local $$$field732
   (i32.load
    (get_local $$$index731)
   )
  )
  (set_local $$72
   (get_local $$803)
  )
  (set_local $$73
   (i32.const 9540)
  )
  (i32.store
   (get_local $$74)
   (get_local $$$field729)
  )
  (set_local $$$index735
   (i32.add
    (get_local $$74)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index735)
   (get_local $$$field732)
  )
  (set_local $$812
   (get_local $$72)
  )
  (set_local $$75
   (i32.const 82)
  )
  (set_local $$813
   (call $__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv)
  )
  (set_local $$814
   (get_local $$73)
  )
  (set_local $$815
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getCountEv
    (get_local $$76)
   )
  )
  (set_local $$816
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getTypesEv
    (get_local $$76)
   )
  )
  (set_local $$817
   (get_local $$75)
  )
  (set_local $$71
   (get_local $$817)
  )
  (set_local $$818
   (call $__ZN10emscripten8internal19getGenericSignatureIJfiifffEEEPKcv)
  )
  (set_local $$819
   (get_local $$75)
  )
  (set_local $$820
   (call $__ZN10emscripten8internal10getContextIM9FastNoiseKFffffEEEPT_RKS5_
    (get_local $$74)
   )
  )
  (call $__embind_register_class_function
   (get_local $$813)
   (get_local $$814)
   (get_local $$815)
   (get_local $$816)
   (get_local $$818)
   (get_local $$819)
   (get_local $$820)
   (i32.const 0)
  )
  (i32.store
   (get_local $$433)
   (i32.const 87)
  )
  (set_local $$$index737
   (i32.add
    (get_local $$433)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index737)
   (i32.const 0)
  )
  (i64.store align=4
   (get_local $$$byval_copy956)
   (i64.load align=4
    (get_local $$433)
   )
  )
  (call $__ZN10emscripten15select_overloadIKFffffE9FastNoiseEEDtfp_EMT0_T_
   (get_local $$432)
   (get_local $$$byval_copy956)
  )
  (set_local $$$field739
   (i32.load
    (get_local $$432)
   )
  )
  (set_local $$$index741
   (i32.add
    (get_local $$432)
    (i32.const 4)
   )
  )
  (set_local $$$field742
   (i32.load
    (get_local $$$index741)
   )
  )
  (i32.store
   (get_local $$434)
   (get_local $$$field739)
  )
  (set_local $$$index745
   (i32.add
    (get_local $$434)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index745)
   (get_local $$$field742)
  )
  (i64.store align=1
   (get_local $$70)
   (i64.load align=1
    (get_local $$434)
   )
  )
  (set_local $$$field747
   (i32.load
    (get_local $$70)
   )
  )
  (set_local $$$index749
   (i32.add
    (get_local $$70)
    (i32.const 4)
   )
  )
  (set_local $$$field750
   (i32.load
    (get_local $$$index749)
   )
  )
  (set_local $$65
   (get_local $$812)
  )
  (set_local $$66
   (i32.const 9550)
  )
  (i32.store
   (get_local $$67)
   (get_local $$$field747)
  )
  (set_local $$$index753
   (i32.add
    (get_local $$67)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index753)
   (get_local $$$field750)
  )
  (set_local $$821
   (get_local $$65)
  )
  (set_local $$68
   (i32.const 82)
  )
  (set_local $$822
   (call $__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv)
  )
  (set_local $$823
   (get_local $$66)
  )
  (set_local $$824
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getCountEv
    (get_local $$69)
   )
  )
  (set_local $$825
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getTypesEv
    (get_local $$69)
   )
  )
  (set_local $$826
   (get_local $$68)
  )
  (set_local $$64
   (get_local $$826)
  )
  (set_local $$827
   (call $__ZN10emscripten8internal19getGenericSignatureIJfiifffEEEPKcv)
  )
  (set_local $$828
   (get_local $$68)
  )
  (set_local $$829
   (call $__ZN10emscripten8internal10getContextIM9FastNoiseKFffffEEEPT_RKS5_
    (get_local $$67)
   )
  )
  (call $__embind_register_class_function
   (get_local $$822)
   (get_local $$823)
   (get_local $$824)
   (get_local $$825)
   (get_local $$827)
   (get_local $$828)
   (get_local $$829)
   (i32.const 0)
  )
  (i32.store
   (get_local $$436)
   (i32.const 88)
  )
  (set_local $$$index755
   (i32.add
    (get_local $$436)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index755)
   (i32.const 0)
  )
  (i64.store align=4
   (get_local $$$byval_copy957)
   (i64.load align=4
    (get_local $$436)
   )
  )
  (call $__ZN10emscripten15select_overloadIKFffffE9FastNoiseEEDtfp_EMT0_T_
   (get_local $$435)
   (get_local $$$byval_copy957)
  )
  (set_local $$$field757
   (i32.load
    (get_local $$435)
   )
  )
  (set_local $$$index759
   (i32.add
    (get_local $$435)
    (i32.const 4)
   )
  )
  (set_local $$$field760
   (i32.load
    (get_local $$$index759)
   )
  )
  (i32.store
   (get_local $$437)
   (get_local $$$field757)
  )
  (set_local $$$index763
   (i32.add
    (get_local $$437)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index763)
   (get_local $$$field760)
  )
  (i64.store align=1
   (get_local $$63)
   (i64.load align=1
    (get_local $$437)
   )
  )
  (set_local $$$field765
   (i32.load
    (get_local $$63)
   )
  )
  (set_local $$$index767
   (i32.add
    (get_local $$63)
    (i32.const 4)
   )
  )
  (set_local $$$field768
   (i32.load
    (get_local $$$index767)
   )
  )
  (set_local $$58
   (get_local $$821)
  )
  (set_local $$59
   (i32.const 9567)
  )
  (i32.store
   (get_local $$60)
   (get_local $$$field765)
  )
  (set_local $$$index771
   (i32.add
    (get_local $$60)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index771)
   (get_local $$$field768)
  )
  (set_local $$830
   (get_local $$58)
  )
  (set_local $$61
   (i32.const 82)
  )
  (set_local $$831
   (call $__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv)
  )
  (set_local $$832
   (get_local $$59)
  )
  (set_local $$833
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getCountEv
    (get_local $$62)
   )
  )
  (set_local $$834
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getTypesEv
    (get_local $$62)
   )
  )
  (set_local $$835
   (get_local $$61)
  )
  (set_local $$57
   (get_local $$835)
  )
  (set_local $$836
   (call $__ZN10emscripten8internal19getGenericSignatureIJfiifffEEEPKcv)
  )
  (set_local $$837
   (get_local $$61)
  )
  (set_local $$838
   (call $__ZN10emscripten8internal10getContextIM9FastNoiseKFffffEEEPT_RKS5_
    (get_local $$60)
   )
  )
  (call $__embind_register_class_function
   (get_local $$831)
   (get_local $$832)
   (get_local $$833)
   (get_local $$834)
   (get_local $$836)
   (get_local $$837)
   (get_local $$838)
   (i32.const 0)
  )
  (i32.store
   (get_local $$439)
   (i32.const 89)
  )
  (set_local $$$index773
   (i32.add
    (get_local $$439)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index773)
   (i32.const 0)
  )
  (i64.store align=4
   (get_local $$$byval_copy958)
   (i64.load align=4
    (get_local $$439)
   )
  )
  (call $__ZN10emscripten15select_overloadIKFffffE9FastNoiseEEDtfp_EMT0_T_
   (get_local $$438)
   (get_local $$$byval_copy958)
  )
  (set_local $$$field775
   (i32.load
    (get_local $$438)
   )
  )
  (set_local $$$index777
   (i32.add
    (get_local $$438)
    (i32.const 4)
   )
  )
  (set_local $$$field778
   (i32.load
    (get_local $$$index777)
   )
  )
  (i32.store
   (get_local $$440)
   (get_local $$$field775)
  )
  (set_local $$$index781
   (i32.add
    (get_local $$440)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index781)
   (get_local $$$field778)
  )
  (i64.store align=1
   (get_local $$56)
   (i64.load align=1
    (get_local $$440)
   )
  )
  (set_local $$$field783
   (i32.load
    (get_local $$56)
   )
  )
  (set_local $$$index785
   (i32.add
    (get_local $$56)
    (i32.const 4)
   )
  )
  (set_local $$$field786
   (i32.load
    (get_local $$$index785)
   )
  )
  (set_local $$51
   (get_local $$830)
  )
  (set_local $$52
   (i32.const 9578)
  )
  (i32.store
   (get_local $$53)
   (get_local $$$field783)
  )
  (set_local $$$index789
   (i32.add
    (get_local $$53)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index789)
   (get_local $$$field786)
  )
  (set_local $$839
   (get_local $$51)
  )
  (set_local $$54
   (i32.const 82)
  )
  (set_local $$840
   (call $__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv)
  )
  (set_local $$841
   (get_local $$52)
  )
  (set_local $$842
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getCountEv
    (get_local $$55)
   )
  )
  (set_local $$843
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getTypesEv
    (get_local $$55)
   )
  )
  (set_local $$844
   (get_local $$54)
  )
  (set_local $$50
   (get_local $$844)
  )
  (set_local $$845
   (call $__ZN10emscripten8internal19getGenericSignatureIJfiifffEEEPKcv)
  )
  (set_local $$846
   (get_local $$54)
  )
  (set_local $$847
   (call $__ZN10emscripten8internal10getContextIM9FastNoiseKFffffEEEPT_RKS5_
    (get_local $$53)
   )
  )
  (call $__embind_register_class_function
   (get_local $$840)
   (get_local $$841)
   (get_local $$842)
   (get_local $$843)
   (get_local $$845)
   (get_local $$846)
   (get_local $$847)
   (i32.const 0)
  )
  (i32.store
   (get_local $$442)
   (i32.const 90)
  )
  (set_local $$$index791
   (i32.add
    (get_local $$442)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index791)
   (i32.const 0)
  )
  (i64.store align=4
   (get_local $$$byval_copy959)
   (i64.load align=4
    (get_local $$442)
   )
  )
  (call $__ZN10emscripten15select_overloadIKFfiiiE9FastNoiseEEDtfp_EMT0_T_
   (get_local $$441)
   (get_local $$$byval_copy959)
  )
  (set_local $$$field793
   (i32.load
    (get_local $$441)
   )
  )
  (set_local $$$index795
   (i32.add
    (get_local $$441)
    (i32.const 4)
   )
  )
  (set_local $$$field796
   (i32.load
    (get_local $$$index795)
   )
  )
  (i32.store
   (get_local $$443)
   (get_local $$$field793)
  )
  (set_local $$$index799
   (i32.add
    (get_local $$443)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index799)
   (get_local $$$field796)
  )
  (i64.store align=1
   (get_local $$49)
   (i64.load align=1
    (get_local $$443)
   )
  )
  (set_local $$$field801
   (i32.load
    (get_local $$49)
   )
  )
  (set_local $$$index803
   (i32.add
    (get_local $$49)
    (i32.const 4)
   )
  )
  (set_local $$$field804
   (i32.load
    (get_local $$$index803)
   )
  )
  (set_local $$44
   (get_local $$839)
  )
  (set_local $$45
   (i32.const 9591)
  )
  (i32.store
   (get_local $$46)
   (get_local $$$field801)
  )
  (set_local $$$index807
   (i32.add
    (get_local $$46)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index807)
   (get_local $$$field804)
  )
  (set_local $$848
   (get_local $$44)
  )
  (set_local $$47
   (i32.const 91)
  )
  (set_local $$849
   (call $__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv)
  )
  (set_local $$850
   (get_local $$45)
  )
  (set_local $$851
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEiiiEE8getCountEv
    (get_local $$48)
   )
  )
  (set_local $$852
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEiiiEE8getTypesEv
    (get_local $$48)
   )
  )
  (set_local $$853
   (get_local $$47)
  )
  (set_local $$43
   (get_local $$853)
  )
  (set_local $$854
   (call $__ZN10emscripten8internal19getGenericSignatureIJfiiiiiEEEPKcv)
  )
  (set_local $$855
   (get_local $$47)
  )
  (set_local $$856
   (call $__ZN10emscripten8internal10getContextIM9FastNoiseKFfiiiEEEPT_RKS5_
    (get_local $$46)
   )
  )
  (call $__embind_register_class_function
   (get_local $$849)
   (get_local $$850)
   (get_local $$851)
   (get_local $$852)
   (get_local $$854)
   (get_local $$855)
   (get_local $$856)
   (i32.const 0)
  )
  (i32.store
   (get_local $$445)
   (i32.const 92)
  )
  (set_local $$$index809
   (i32.add
    (get_local $$445)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index809)
   (i32.const 0)
  )
  (i64.store align=4
   (get_local $$$byval_copy960)
   (i64.load align=4
    (get_local $$445)
   )
  )
  (call $__ZN10emscripten15select_overloadIKFffffE9FastNoiseEEDtfp_EMT0_T_
   (get_local $$444)
   (get_local $$$byval_copy960)
  )
  (set_local $$$field811
   (i32.load
    (get_local $$444)
   )
  )
  (set_local $$$index813
   (i32.add
    (get_local $$444)
    (i32.const 4)
   )
  )
  (set_local $$$field814
   (i32.load
    (get_local $$$index813)
   )
  )
  (i32.store
   (get_local $$446)
   (get_local $$$field811)
  )
  (set_local $$$index817
   (i32.add
    (get_local $$446)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index817)
   (get_local $$$field814)
  )
  (i64.store align=1
   (get_local $$42)
   (i64.load align=1
    (get_local $$446)
   )
  )
  (set_local $$$field819
   (i32.load
    (get_local $$42)
   )
  )
  (set_local $$$index821
   (i32.add
    (get_local $$42)
    (i32.const 4)
   )
  )
  (set_local $$$field822
   (i32.load
    (get_local $$$index821)
   )
  )
  (set_local $$37
   (get_local $$848)
  )
  (set_local $$38
   (i32.const 9607)
  )
  (i32.store
   (get_local $$39)
   (get_local $$$field819)
  )
  (set_local $$$index825
   (i32.add
    (get_local $$39)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index825)
   (get_local $$$field822)
  )
  (set_local $$857
   (get_local $$37)
  )
  (set_local $$40
   (i32.const 82)
  )
  (set_local $$858
   (call $__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv)
  )
  (set_local $$859
   (get_local $$38)
  )
  (set_local $$860
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getCountEv
    (get_local $$41)
   )
  )
  (set_local $$861
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getTypesEv
    (get_local $$41)
   )
  )
  (set_local $$862
   (get_local $$40)
  )
  (set_local $$36
   (get_local $$862)
  )
  (set_local $$863
   (call $__ZN10emscripten8internal19getGenericSignatureIJfiifffEEEPKcv)
  )
  (set_local $$864
   (get_local $$40)
  )
  (set_local $$865
   (call $__ZN10emscripten8internal10getContextIM9FastNoiseKFffffEEEPT_RKS5_
    (get_local $$39)
   )
  )
  (call $__embind_register_class_function
   (get_local $$858)
   (get_local $$859)
   (get_local $$860)
   (get_local $$861)
   (get_local $$863)
   (get_local $$864)
   (get_local $$865)
   (i32.const 0)
  )
  (i32.store
   (get_local $$448)
   (i32.const 93)
  )
  (set_local $$$index827
   (i32.add
    (get_local $$448)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index827)
   (i32.const 0)
  )
  (i64.store align=4
   (get_local $$$byval_copy961)
   (i64.load align=4
    (get_local $$448)
   )
  )
  (call $__ZN10emscripten15select_overloadIKFffffE9FastNoiseEEDtfp_EMT0_T_
   (get_local $$447)
   (get_local $$$byval_copy961)
  )
  (set_local $$$field829
   (i32.load
    (get_local $$447)
   )
  )
  (set_local $$$index831
   (i32.add
    (get_local $$447)
    (i32.const 4)
   )
  )
  (set_local $$$field832
   (i32.load
    (get_local $$$index831)
   )
  )
  (i32.store
   (get_local $$449)
   (get_local $$$field829)
  )
  (set_local $$$index835
   (i32.add
    (get_local $$449)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index835)
   (get_local $$$field832)
  )
  (i64.store align=1
   (get_local $$35)
   (i64.load align=1
    (get_local $$449)
   )
  )
  (set_local $$$field837
   (i32.load
    (get_local $$35)
   )
  )
  (set_local $$$index839
   (i32.add
    (get_local $$35)
    (i32.const 4)
   )
  )
  (set_local $$$field840
   (i32.load
    (get_local $$$index839)
   )
  )
  (set_local $$30
   (get_local $$857)
  )
  (set_local $$31
   (i32.const 9615)
  )
  (i32.store
   (get_local $$32)
   (get_local $$$field837)
  )
  (set_local $$$index843
   (i32.add
    (get_local $$32)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index843)
   (get_local $$$field840)
  )
  (set_local $$866
   (get_local $$30)
  )
  (set_local $$33
   (i32.const 82)
  )
  (set_local $$867
   (call $__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv)
  )
  (set_local $$868
   (get_local $$31)
  )
  (set_local $$869
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getCountEv
    (get_local $$34)
   )
  )
  (set_local $$870
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getTypesEv
    (get_local $$34)
   )
  )
  (set_local $$871
   (get_local $$33)
  )
  (set_local $$29
   (get_local $$871)
  )
  (set_local $$872
   (call $__ZN10emscripten8internal19getGenericSignatureIJfiifffEEEPKcv)
  )
  (set_local $$873
   (get_local $$33)
  )
  (set_local $$874
   (call $__ZN10emscripten8internal10getContextIM9FastNoiseKFffffEEEPT_RKS5_
    (get_local $$32)
   )
  )
  (call $__embind_register_class_function
   (get_local $$867)
   (get_local $$868)
   (get_local $$869)
   (get_local $$870)
   (get_local $$872)
   (get_local $$873)
   (get_local $$874)
   (i32.const 0)
  )
  (i32.store
   (get_local $$451)
   (i32.const 94)
  )
  (set_local $$$index845
   (i32.add
    (get_local $$451)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index845)
   (i32.const 0)
  )
  (i64.store align=4
   (get_local $$$byval_copy962)
   (i64.load align=4
    (get_local $$451)
   )
  )
  (call $__ZN10emscripten15select_overloadIKFffffE9FastNoiseEEDtfp_EMT0_T_
   (get_local $$450)
   (get_local $$$byval_copy962)
  )
  (set_local $$$field847
   (i32.load
    (get_local $$450)
   )
  )
  (set_local $$$index849
   (i32.add
    (get_local $$450)
    (i32.const 4)
   )
  )
  (set_local $$$field850
   (i32.load
    (get_local $$$index849)
   )
  )
  (i32.store
   (get_local $$452)
   (get_local $$$field847)
  )
  (set_local $$$index853
   (i32.add
    (get_local $$452)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index853)
   (get_local $$$field850)
  )
  (i64.store align=1
   (get_local $$28)
   (i64.load align=1
    (get_local $$452)
   )
  )
  (set_local $$$field855
   (i32.load
    (get_local $$28)
   )
  )
  (set_local $$$index857
   (i32.add
    (get_local $$28)
    (i32.const 4)
   )
  )
  (set_local $$$field858
   (i32.load
    (get_local $$$index857)
   )
  )
  (set_local $$23
   (get_local $$866)
  )
  (set_local $$24
   (i32.const 9630)
  )
  (i32.store
   (get_local $$25)
   (get_local $$$field855)
  )
  (set_local $$$index861
   (i32.add
    (get_local $$25)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index861)
   (get_local $$$field858)
  )
  (set_local $$875
   (get_local $$23)
  )
  (set_local $$26
   (i32.const 82)
  )
  (set_local $$876
   (call $__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv)
  )
  (set_local $$877
   (get_local $$24)
  )
  (set_local $$878
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getCountEv
    (get_local $$27)
   )
  )
  (set_local $$879
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getTypesEv
    (get_local $$27)
   )
  )
  (set_local $$880
   (get_local $$26)
  )
  (set_local $$22
   (get_local $$880)
  )
  (set_local $$881
   (call $__ZN10emscripten8internal19getGenericSignatureIJfiifffEEEPKcv)
  )
  (set_local $$882
   (get_local $$26)
  )
  (set_local $$883
   (call $__ZN10emscripten8internal10getContextIM9FastNoiseKFffffEEEPT_RKS5_
    (get_local $$25)
   )
  )
  (call $__embind_register_class_function
   (get_local $$876)
   (get_local $$877)
   (get_local $$878)
   (get_local $$879)
   (get_local $$881)
   (get_local $$882)
   (get_local $$883)
   (i32.const 0)
  )
  (i32.store
   (get_local $$454)
   (i32.const 95)
  )
  (set_local $$$index863
   (i32.add
    (get_local $$454)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index863)
   (i32.const 0)
  )
  (i64.store align=4
   (get_local $$$byval_copy963)
   (i64.load align=4
    (get_local $$454)
   )
  )
  (call $__ZN10emscripten15select_overloadIKFfffffE9FastNoiseEEDtfp_EMT0_T_
   (get_local $$453)
   (get_local $$$byval_copy963)
  )
  (set_local $$$field865
   (i32.load
    (get_local $$453)
   )
  )
  (set_local $$$index867
   (i32.add
    (get_local $$453)
    (i32.const 4)
   )
  )
  (set_local $$$field868
   (i32.load
    (get_local $$$index867)
   )
  )
  (i32.store
   (get_local $$455)
   (get_local $$$field865)
  )
  (set_local $$$index871
   (i32.add
    (get_local $$455)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index871)
   (get_local $$$field868)
  )
  (i64.store align=1
   (get_local $$21)
   (i64.load align=1
    (get_local $$455)
   )
  )
  (set_local $$$field873
   (i32.load
    (get_local $$21)
   )
  )
  (set_local $$$index875
   (i32.add
    (get_local $$21)
    (i32.const 4)
   )
  )
  (set_local $$$field876
   (i32.load
    (get_local $$$index875)
   )
  )
  (set_local $$16
   (get_local $$875)
  )
  (set_local $$17
   (i32.const 9641)
  )
  (i32.store
   (get_local $$18)
   (get_local $$$field873)
  )
  (set_local $$$index879
   (i32.add
    (get_local $$18)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index879)
   (get_local $$$field876)
  )
  (set_local $$884
   (get_local $$16)
  )
  (set_local $$19
   (i32.const 96)
  )
  (set_local $$885
   (call $__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv)
  )
  (set_local $$886
   (get_local $$17)
  )
  (set_local $$887
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffffEE8getCountEv
    (get_local $$20)
   )
  )
  (set_local $$888
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffffEE8getTypesEv
    (get_local $$20)
   )
  )
  (set_local $$889
   (get_local $$19)
  )
  (set_local $$15
   (get_local $$889)
  )
  (set_local $$890
   (call $__ZN10emscripten8internal19getGenericSignatureIJfiiffffEEEPKcv)
  )
  (set_local $$891
   (get_local $$19)
  )
  (set_local $$892
   (call $__ZN10emscripten8internal10getContextIM9FastNoiseKFfffffEEEPT_RKS5_
    (get_local $$18)
   )
  )
  (call $__embind_register_class_function
   (get_local $$885)
   (get_local $$886)
   (get_local $$887)
   (get_local $$888)
   (get_local $$890)
   (get_local $$891)
   (get_local $$892)
   (i32.const 0)
  )
  (i32.store
   (get_local $$457)
   (i32.const 97)
  )
  (set_local $$$index881
   (i32.add
    (get_local $$457)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index881)
   (i32.const 0)
  )
  (i64.store align=4
   (get_local $$$byval_copy964)
   (i64.load align=4
    (get_local $$457)
   )
  )
  (call $__ZN10emscripten15select_overloadIKFfffffE9FastNoiseEEDtfp_EMT0_T_
   (get_local $$456)
   (get_local $$$byval_copy964)
  )
  (set_local $$$field883
   (i32.load
    (get_local $$456)
   )
  )
  (set_local $$$index885
   (i32.add
    (get_local $$456)
    (i32.const 4)
   )
  )
  (set_local $$$field886
   (i32.load
    (get_local $$$index885)
   )
  )
  (i32.store
   (get_local $$458)
   (get_local $$$field883)
  )
  (set_local $$$index889
   (i32.add
    (get_local $$458)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index889)
   (get_local $$$field886)
  )
  (i64.store align=1
   (get_local $$14)
   (i64.load align=1
    (get_local $$458)
   )
  )
  (set_local $$$field891
   (i32.load
    (get_local $$14)
   )
  )
  (set_local $$$index893
   (i32.add
    (get_local $$14)
    (i32.const 4)
   )
  )
  (set_local $$$field894
   (i32.load
    (get_local $$$index893)
   )
  )
  (set_local $$9
   (get_local $$884)
  )
  (set_local $$10
   (i32.const 9651)
  )
  (i32.store
   (get_local $$11)
   (get_local $$$field891)
  )
  (set_local $$$index897
   (i32.add
    (get_local $$11)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index897)
   (get_local $$$field894)
  )
  (set_local $$893
   (get_local $$9)
  )
  (set_local $$12
   (i32.const 96)
  )
  (set_local $$894
   (call $__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv)
  )
  (set_local $$895
   (get_local $$10)
  )
  (set_local $$896
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffffEE8getCountEv
    (get_local $$13)
   )
  )
  (set_local $$897
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffffEE8getTypesEv
    (get_local $$13)
   )
  )
  (set_local $$898
   (get_local $$12)
  )
  (set_local $$8
   (get_local $$898)
  )
  (set_local $$899
   (call $__ZN10emscripten8internal19getGenericSignatureIJfiiffffEEEPKcv)
  )
  (set_local $$900
   (get_local $$12)
  )
  (set_local $$901
   (call $__ZN10emscripten8internal10getContextIM9FastNoiseKFfffffEEEPT_RKS5_
    (get_local $$11)
   )
  )
  (call $__embind_register_class_function
   (get_local $$894)
   (get_local $$895)
   (get_local $$896)
   (get_local $$897)
   (get_local $$899)
   (get_local $$900)
   (get_local $$901)
   (i32.const 0)
  )
  (i32.store
   (get_local $$460)
   (i32.const 98)
  )
  (set_local $$$index899
   (i32.add
    (get_local $$460)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index899)
   (i32.const 0)
  )
  (i64.store align=4
   (get_local $$$byval_copy965)
   (i64.load align=4
    (get_local $$460)
   )
  )
  (call $__ZN10emscripten15select_overloadIKFfiiiiE9FastNoiseEEDtfp_EMT0_T_
   (get_local $$459)
   (get_local $$$byval_copy965)
  )
  (set_local $$$field901
   (i32.load
    (get_local $$459)
   )
  )
  (set_local $$$index903
   (i32.add
    (get_local $$459)
    (i32.const 4)
   )
  )
  (set_local $$$field904
   (i32.load
    (get_local $$$index903)
   )
  )
  (i32.store
   (get_local $$461)
   (get_local $$$field901)
  )
  (set_local $$$index907
   (i32.add
    (get_local $$461)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index907)
   (get_local $$$field904)
  )
  (i64.store align=1
   (get_local $$7)
   (i64.load align=1
    (get_local $$461)
   )
  )
  (set_local $$$field909
   (i32.load
    (get_local $$7)
   )
  )
  (set_local $$$index911
   (i32.add
    (get_local $$7)
    (i32.const 4)
   )
  )
  (set_local $$$field912
   (i32.load
    (get_local $$$index911)
   )
  )
  (set_local $$2
   (get_local $$893)
  )
  (set_local $$3
   (i32.const 9664)
  )
  (i32.store
   (get_local $$4)
   (get_local $$$field909)
  )
  (set_local $$$index915
   (i32.add
    (get_local $$4)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index915)
   (get_local $$$field912)
  )
  (set_local $$5
   (i32.const 99)
  )
  (set_local $$902
   (call $__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv)
  )
  (set_local $$903
   (get_local $$3)
  )
  (set_local $$904
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEiiiiEE8getCountEv
    (get_local $$6)
   )
  )
  (set_local $$905
   (call $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEiiiiEE8getTypesEv
    (get_local $$6)
   )
  )
  (set_local $$906
   (get_local $$5)
  )
  (set_local $$1
   (get_local $$906)
  )
  (set_local $$907
   (call $__ZN10emscripten8internal19getGenericSignatureIJfiiiiiiEEEPKcv)
  )
  (set_local $$908
   (get_local $$5)
  )
  (set_local $$909
   (call $__ZN10emscripten8internal10getContextIM9FastNoiseKFfiiiiEEEPT_RKS5_
    (get_local $$4)
   )
  )
  (call $__embind_register_class_function
   (get_local $$902)
   (get_local $$903)
   (get_local $$904)
   (get_local $$905)
   (get_local $$907)
   (get_local $$908)
   (get_local $$909)
   (i32.const 0)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return)
 )
 (func $__ZN10emscripten5enum_IN9FastNoise9NoiseTypeEEC2EPKc (param $$0 i32) (param $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $$5 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$2
   (get_local $$0)
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$4
   (call $__ZN10emscripten8internal6TypeIDIN9FastNoise9NoiseTypeEE3getEv)
  )
  (set_local $$5
   (get_local $$3)
  )
  (call $__embind_register_enum
   (get_local $$4)
   (get_local $$5)
   (i32.const 4)
   (i32.const 0)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return)
 )
 (func $__ZN10emscripten5enum_IN9FastNoise9NoiseTypeEE5valueEPKcS2_ (param $$0 i32) (param $$1 i32) (param $$2 i32) (result i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$3
   (get_local $$0)
  )
  (set_local $$4
   (get_local $$1)
  )
  (set_local $$5
   (get_local $$2)
  )
  (set_local $$6
   (get_local $$3)
  )
  (set_local $$7
   (call $__ZN10emscripten8internal6TypeIDIN9FastNoise9NoiseTypeEE3getEv)
  )
  (set_local $$8
   (get_local $$4)
  )
  (set_local $$9
   (get_local $$5)
  )
  (call $__embind_register_enum_value
   (get_local $$7)
   (get_local $$8)
   (get_local $$9)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$6)
  )
 )
 (func $__ZN10emscripten5enum_IN9FastNoise6InterpEEC2EPKc (param $$0 i32) (param $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $$5 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$2
   (get_local $$0)
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$4
   (call $__ZN10emscripten8internal6TypeIDIN9FastNoise6InterpEE3getEv)
  )
  (set_local $$5
   (get_local $$3)
  )
  (call $__embind_register_enum
   (get_local $$4)
   (get_local $$5)
   (i32.const 4)
   (i32.const 0)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return)
 )
 (func $__ZN10emscripten5enum_IN9FastNoise6InterpEE5valueEPKcS2_ (param $$0 i32) (param $$1 i32) (param $$2 i32) (result i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$3
   (get_local $$0)
  )
  (set_local $$4
   (get_local $$1)
  )
  (set_local $$5
   (get_local $$2)
  )
  (set_local $$6
   (get_local $$3)
  )
  (set_local $$7
   (call $__ZN10emscripten8internal6TypeIDIN9FastNoise6InterpEE3getEv)
  )
  (set_local $$8
   (get_local $$4)
  )
  (set_local $$9
   (get_local $$5)
  )
  (call $__embind_register_enum_value
   (get_local $$7)
   (get_local $$8)
   (get_local $$9)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$6)
  )
 )
 (func $__ZN10emscripten5enum_IN9FastNoise11FractalTypeEEC2EPKc (param $$0 i32) (param $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $$5 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$2
   (get_local $$0)
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$4
   (call $__ZN10emscripten8internal6TypeIDIN9FastNoise11FractalTypeEE3getEv)
  )
  (set_local $$5
   (get_local $$3)
  )
  (call $__embind_register_enum
   (get_local $$4)
   (get_local $$5)
   (i32.const 4)
   (i32.const 0)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return)
 )
 (func $__ZN10emscripten5enum_IN9FastNoise11FractalTypeEE5valueEPKcS2_ (param $$0 i32) (param $$1 i32) (param $$2 i32) (result i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$3
   (get_local $$0)
  )
  (set_local $$4
   (get_local $$1)
  )
  (set_local $$5
   (get_local $$2)
  )
  (set_local $$6
   (get_local $$3)
  )
  (set_local $$7
   (call $__ZN10emscripten8internal6TypeIDIN9FastNoise11FractalTypeEE3getEv)
  )
  (set_local $$8
   (get_local $$4)
  )
  (set_local $$9
   (get_local $$5)
  )
  (call $__embind_register_enum_value
   (get_local $$7)
   (get_local $$8)
   (get_local $$9)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$6)
  )
 )
 (func $__ZN10emscripten5enum_IN9FastNoise24CellularDistanceFunctionEEC2EPKc (param $$0 i32) (param $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $$5 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$2
   (get_local $$0)
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$4
   (call $__ZN10emscripten8internal6TypeIDIN9FastNoise24CellularDistanceFunctionEE3getEv)
  )
  (set_local $$5
   (get_local $$3)
  )
  (call $__embind_register_enum
   (get_local $$4)
   (get_local $$5)
   (i32.const 4)
   (i32.const 0)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return)
 )
 (func $__ZN10emscripten5enum_IN9FastNoise24CellularDistanceFunctionEE5valueEPKcS2_ (param $$0 i32) (param $$1 i32) (param $$2 i32) (result i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$3
   (get_local $$0)
  )
  (set_local $$4
   (get_local $$1)
  )
  (set_local $$5
   (get_local $$2)
  )
  (set_local $$6
   (get_local $$3)
  )
  (set_local $$7
   (call $__ZN10emscripten8internal6TypeIDIN9FastNoise24CellularDistanceFunctionEE3getEv)
  )
  (set_local $$8
   (get_local $$4)
  )
  (set_local $$9
   (get_local $$5)
  )
  (call $__embind_register_enum_value
   (get_local $$7)
   (get_local $$8)
   (get_local $$9)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$6)
  )
 )
 (func $__ZN10emscripten5enum_IN9FastNoise18CellularReturnTypeEEC2EPKc (param $$0 i32) (param $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $$5 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$2
   (get_local $$0)
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$4
   (call $__ZN10emscripten8internal6TypeIDIN9FastNoise18CellularReturnTypeEE3getEv)
  )
  (set_local $$5
   (get_local $$3)
  )
  (call $__embind_register_enum
   (get_local $$4)
   (get_local $$5)
   (i32.const 4)
   (i32.const 0)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return)
 )
 (func $__ZN10emscripten5enum_IN9FastNoise18CellularReturnTypeEE5valueEPKcS2_ (param $$0 i32) (param $$1 i32) (param $$2 i32) (result i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$3
   (get_local $$0)
  )
  (set_local $$4
   (get_local $$1)
  )
  (set_local $$5
   (get_local $$2)
  )
  (set_local $$6
   (get_local $$3)
  )
  (set_local $$7
   (call $__ZN10emscripten8internal6TypeIDIN9FastNoise18CellularReturnTypeEE3getEv)
  )
  (set_local $$8
   (get_local $$4)
  )
  (set_local $$9
   (get_local $$5)
  )
  (call $__embind_register_enum_value
   (get_local $$7)
   (get_local $$8)
   (get_local $$9)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$6)
  )
 )
 (func $__ZNK9FastNoise7GetSeedEv (param $$0 i32) (result i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (get_local $$1)
  )
  (set_local $$3
   (i32.add
    (get_local $$2)
    (i32.const 1024)
   )
  )
  (set_local $$4
   (i32.load
    (get_local $$3)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$4)
  )
 )
 (func $__ZNK9FastNoise12GetFrequencyEv (param $$0 i32) (result f32)
  (local $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $$4 f32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (get_local $$1)
  )
  (set_local $$3
   (i32.add
    (get_local $$2)
    (i32.const 1028)
   )
  )
  (set_local $$4
   (f32.load
    (get_local $$3)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$4)
  )
 )
 (func $__ZN9FastNoise12SetFrequencyEf (param $$0 i32) (param $$1 f32)
  (local $$2 i32)
  (local $$3 f32)
  (local $$4 i32)
  (local $$5 f32)
  (local $$6 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$2
   (get_local $$0)
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$4
   (get_local $$2)
  )
  (set_local $$5
   (get_local $$3)
  )
  (set_local $$6
   (i32.add
    (get_local $$4)
    (i32.const 1028)
   )
  )
  (f32.store
   (get_local $$6)
   (get_local $$5)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return)
 )
 (func $__ZNK9FastNoise9GetInterpEv (param $$0 i32) (result i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (get_local $$1)
  )
  (set_local $$3
   (i32.add
    (get_local $$2)
    (i32.const 1032)
   )
  )
  (set_local $$4
   (i32.load
    (get_local $$3)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$4)
  )
 )
 (func $__ZN9FastNoise9SetInterpENS_6InterpE (param $$0 i32) (param $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $$5 i32)
  (local $$6 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$2
   (get_local $$0)
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$4
   (get_local $$2)
  )
  (set_local $$5
   (get_local $$3)
  )
  (set_local $$6
   (i32.add
    (get_local $$4)
    (i32.const 1032)
   )
  )
  (i32.store
   (get_local $$6)
   (get_local $$5)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return)
 )
 (func $__ZNK9FastNoise12GetNoiseTypeEv (param $$0 i32) (result i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (get_local $$1)
  )
  (set_local $$3
   (i32.add
    (get_local $$2)
    (i32.const 1036)
   )
  )
  (set_local $$4
   (i32.load
    (get_local $$3)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$4)
  )
 )
 (func $__ZN9FastNoise12SetNoiseTypeENS_9NoiseTypeE (param $$0 i32) (param $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $$5 i32)
  (local $$6 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$2
   (get_local $$0)
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$4
   (get_local $$2)
  )
  (set_local $$5
   (get_local $$3)
  )
  (set_local $$6
   (i32.add
    (get_local $$4)
    (i32.const 1036)
   )
  )
  (i32.store
   (get_local $$6)
   (get_local $$5)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return)
 )
 (func $__ZNK9FastNoise17GetFractalOctavesEv (param $$0 i32) (result i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (get_local $$1)
  )
  (set_local $$3
   (i32.add
    (get_local $$2)
    (i32.const 1040)
   )
  )
  (set_local $$4
   (i32.load
    (get_local $$3)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$4)
  )
 )
 (func $__ZN9FastNoise17SetFractalOctavesEi (param $$0 i32) (param $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $$5 i32)
  (local $$6 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$2
   (get_local $$0)
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$4
   (get_local $$2)
  )
  (set_local $$5
   (get_local $$3)
  )
  (set_local $$6
   (i32.add
    (get_local $$4)
    (i32.const 1040)
   )
  )
  (i32.store
   (get_local $$6)
   (get_local $$5)
  )
  (call $__ZN9FastNoise24CalculateFractalBoundingEv
   (get_local $$4)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return)
 )
 (func $__ZNK9FastNoise20GetFractalLacunarityEv (param $$0 i32) (result f32)
  (local $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $$4 f32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (get_local $$1)
  )
  (set_local $$3
   (i32.add
    (get_local $$2)
    (i32.const 1044)
   )
  )
  (set_local $$4
   (f32.load
    (get_local $$3)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$4)
  )
 )
 (func $__ZN9FastNoise20SetFractalLacunarityEf (param $$0 i32) (param $$1 f32)
  (local $$2 i32)
  (local $$3 f32)
  (local $$4 i32)
  (local $$5 f32)
  (local $$6 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$2
   (get_local $$0)
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$4
   (get_local $$2)
  )
  (set_local $$5
   (get_local $$3)
  )
  (set_local $$6
   (i32.add
    (get_local $$4)
    (i32.const 1044)
   )
  )
  (f32.store
   (get_local $$6)
   (get_local $$5)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return)
 )
 (func $__ZNK9FastNoise14GetFractalGainEv (param $$0 i32) (result f32)
  (local $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $$4 f32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (get_local $$1)
  )
  (set_local $$3
   (i32.add
    (get_local $$2)
    (i32.const 1048)
   )
  )
  (set_local $$4
   (f32.load
    (get_local $$3)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$4)
  )
 )
 (func $__ZN9FastNoise14SetFractalGainEf (param $$0 i32) (param $$1 f32)
  (local $$2 i32)
  (local $$3 f32)
  (local $$4 i32)
  (local $$5 f32)
  (local $$6 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$2
   (get_local $$0)
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$4
   (get_local $$2)
  )
  (set_local $$5
   (get_local $$3)
  )
  (set_local $$6
   (i32.add
    (get_local $$4)
    (i32.const 1048)
   )
  )
  (f32.store
   (get_local $$6)
   (get_local $$5)
  )
  (call $__ZN9FastNoise24CalculateFractalBoundingEv
   (get_local $$4)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return)
 )
 (func $__ZNK9FastNoise14GetFractalTypeEv (param $$0 i32) (result i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (get_local $$1)
  )
  (set_local $$3
   (i32.add
    (get_local $$2)
    (i32.const 1052)
   )
  )
  (set_local $$4
   (i32.load
    (get_local $$3)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$4)
  )
 )
 (func $__ZN9FastNoise14SetFractalTypeENS_11FractalTypeE (param $$0 i32) (param $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $$5 i32)
  (local $$6 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$2
   (get_local $$0)
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$4
   (get_local $$2)
  )
  (set_local $$5
   (get_local $$3)
  )
  (set_local $$6
   (i32.add
    (get_local $$4)
    (i32.const 1052)
   )
  )
  (i32.store
   (get_local $$6)
   (get_local $$5)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return)
 )
 (func $__ZNK9FastNoise27GetCellularDistanceFunctionEv (param $$0 i32) (result i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (get_local $$1)
  )
  (set_local $$3
   (i32.add
    (get_local $$2)
    (i32.const 1060)
   )
  )
  (set_local $$4
   (i32.load
    (get_local $$3)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$4)
  )
 )
 (func $__ZN9FastNoise27SetCellularDistanceFunctionENS_24CellularDistanceFunctionE (param $$0 i32) (param $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $$5 i32)
  (local $$6 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$2
   (get_local $$0)
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$4
   (get_local $$2)
  )
  (set_local $$5
   (get_local $$3)
  )
  (set_local $$6
   (i32.add
    (get_local $$4)
    (i32.const 1060)
   )
  )
  (i32.store
   (get_local $$6)
   (get_local $$5)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return)
 )
 (func $__ZNK9FastNoise17GetCellularJitterEv (param $$0 i32) (result f32)
  (local $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $$4 f32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (get_local $$1)
  )
  (set_local $$3
   (i32.add
    (get_local $$2)
    (i32.const 1080)
   )
  )
  (set_local $$4
   (f32.load
    (get_local $$3)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$4)
  )
 )
 (func $__ZN9FastNoise17SetCellularJitterEf (param $$0 i32) (param $$1 f32)
  (local $$2 i32)
  (local $$3 f32)
  (local $$4 i32)
  (local $$5 f32)
  (local $$6 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$2
   (get_local $$0)
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$4
   (get_local $$2)
  )
  (set_local $$5
   (get_local $$3)
  )
  (set_local $$6
   (i32.add
    (get_local $$4)
    (i32.const 1080)
   )
  )
  (f32.store
   (get_local $$6)
   (get_local $$5)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return)
 )
 (func $__ZNK9FastNoise21GetGradientPerturbAmpEv (param $$0 i32) (result f32)
  (local $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $$4 f32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (get_local $$1)
  )
  (set_local $$3
   (i32.add
    (get_local $$2)
    (i32.const 1084)
   )
  )
  (set_local $$4
   (f32.load
    (get_local $$3)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$4)
  )
 )
 (func $__ZN9FastNoise21SetGradientPerturbAmpEf (param $$0 i32) (param $$1 f32)
  (local $$2 i32)
  (local $$3 f32)
  (local $$4 i32)
  (local $$5 f32)
  (local $$6 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$2
   (get_local $$0)
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$4
   (get_local $$2)
  )
  (set_local $$5
   (get_local $$3)
  )
  (set_local $$6
   (i32.add
    (get_local $$4)
    (i32.const 1084)
   )
  )
  (f32.store
   (get_local $$6)
   (get_local $$5)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return)
 )
 (func $__ZN10emscripten15select_overloadIKFfffE9FastNoiseEEDtfp_EMT0_T_ (param $$0 i32) (param $$1 i32)
  (local $$$field i32)
  (local $$$field10 i32)
  (local $$$field15 i32)
  (local $$$field18 i32)
  (local $$$field2 i32)
  (local $$$field7 i32)
  (local $$$index1 i32)
  (local $$$index13 i32)
  (local $$$index17 i32)
  (local $$$index21 i32)
  (local $$$index5 i32)
  (local $$$index9 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$2
   (i32.add
    (get_local $sp)
    (i32.const 8)
   )
  )
  (set_local $$3
   (get_local $sp)
  )
  (set_local $$$field
   (i32.load
    (get_local $$1)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$1)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (i32.store
   (get_local $$3)
   (get_local $$$field)
  )
  (set_local $$$index5
   (i32.add
    (get_local $$3)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index5)
   (get_local $$$field2)
  )
  (set_local $$$field7
   (i32.load
    (get_local $$3)
   )
  )
  (set_local $$$index9
   (i32.add
    (get_local $$3)
    (i32.const 4)
   )
  )
  (set_local $$$field10
   (i32.load
    (get_local $$$index9)
   )
  )
  (i32.store
   (get_local $$2)
   (get_local $$$field7)
  )
  (set_local $$$index13
   (i32.add
    (get_local $$2)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index13)
   (get_local $$$field10)
  )
  (set_local $$$field15
   (i32.load
    (get_local $$2)
   )
  )
  (set_local $$$index17
   (i32.add
    (get_local $$2)
    (i32.const 4)
   )
  )
  (set_local $$$field18
   (i32.load
    (get_local $$$index17)
   )
  )
  (i32.store
   (get_local $$0)
   (get_local $$$field15)
  )
  (set_local $$$index21
   (i32.add
    (get_local $$0)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index21)
   (get_local $$$field18)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return)
 )
 (func $__ZN10emscripten15select_overloadIKFfiiE9FastNoiseEEDtfp_EMT0_T_ (param $$0 i32) (param $$1 i32)
  (local $$$field i32)
  (local $$$field10 i32)
  (local $$$field15 i32)
  (local $$$field18 i32)
  (local $$$field2 i32)
  (local $$$field7 i32)
  (local $$$index1 i32)
  (local $$$index13 i32)
  (local $$$index17 i32)
  (local $$$index21 i32)
  (local $$$index5 i32)
  (local $$$index9 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$2
   (i32.add
    (get_local $sp)
    (i32.const 8)
   )
  )
  (set_local $$3
   (get_local $sp)
  )
  (set_local $$$field
   (i32.load
    (get_local $$1)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$1)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (i32.store
   (get_local $$3)
   (get_local $$$field)
  )
  (set_local $$$index5
   (i32.add
    (get_local $$3)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index5)
   (get_local $$$field2)
  )
  (set_local $$$field7
   (i32.load
    (get_local $$3)
   )
  )
  (set_local $$$index9
   (i32.add
    (get_local $$3)
    (i32.const 4)
   )
  )
  (set_local $$$field10
   (i32.load
    (get_local $$$index9)
   )
  )
  (i32.store
   (get_local $$2)
   (get_local $$$field7)
  )
  (set_local $$$index13
   (i32.add
    (get_local $$2)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index13)
   (get_local $$$field10)
  )
  (set_local $$$field15
   (i32.load
    (get_local $$2)
   )
  )
  (set_local $$$index17
   (i32.add
    (get_local $$2)
    (i32.const 4)
   )
  )
  (set_local $$$field18
   (i32.load
    (get_local $$$index17)
   )
  )
  (i32.store
   (get_local $$0)
   (get_local $$$field15)
  )
  (set_local $$$index21
   (i32.add
    (get_local $$0)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index21)
   (get_local $$$field18)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return)
 )
 (func $__ZN10emscripten15select_overloadIKFffffE9FastNoiseEEDtfp_EMT0_T_ (param $$0 i32) (param $$1 i32)
  (local $$$field i32)
  (local $$$field10 i32)
  (local $$$field15 i32)
  (local $$$field18 i32)
  (local $$$field2 i32)
  (local $$$field7 i32)
  (local $$$index1 i32)
  (local $$$index13 i32)
  (local $$$index17 i32)
  (local $$$index21 i32)
  (local $$$index5 i32)
  (local $$$index9 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$2
   (i32.add
    (get_local $sp)
    (i32.const 8)
   )
  )
  (set_local $$3
   (get_local $sp)
  )
  (set_local $$$field
   (i32.load
    (get_local $$1)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$1)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (i32.store
   (get_local $$3)
   (get_local $$$field)
  )
  (set_local $$$index5
   (i32.add
    (get_local $$3)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index5)
   (get_local $$$field2)
  )
  (set_local $$$field7
   (i32.load
    (get_local $$3)
   )
  )
  (set_local $$$index9
   (i32.add
    (get_local $$3)
    (i32.const 4)
   )
  )
  (set_local $$$field10
   (i32.load
    (get_local $$$index9)
   )
  )
  (i32.store
   (get_local $$2)
   (get_local $$$field7)
  )
  (set_local $$$index13
   (i32.add
    (get_local $$2)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index13)
   (get_local $$$field10)
  )
  (set_local $$$field15
   (i32.load
    (get_local $$2)
   )
  )
  (set_local $$$index17
   (i32.add
    (get_local $$2)
    (i32.const 4)
   )
  )
  (set_local $$$field18
   (i32.load
    (get_local $$$index17)
   )
  )
  (i32.store
   (get_local $$0)
   (get_local $$$field15)
  )
  (set_local $$$index21
   (i32.add
    (get_local $$0)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index21)
   (get_local $$$field18)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return)
 )
 (func $__ZN10emscripten15select_overloadIKFfiiiE9FastNoiseEEDtfp_EMT0_T_ (param $$0 i32) (param $$1 i32)
  (local $$$field i32)
  (local $$$field10 i32)
  (local $$$field15 i32)
  (local $$$field18 i32)
  (local $$$field2 i32)
  (local $$$field7 i32)
  (local $$$index1 i32)
  (local $$$index13 i32)
  (local $$$index17 i32)
  (local $$$index21 i32)
  (local $$$index5 i32)
  (local $$$index9 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$2
   (i32.add
    (get_local $sp)
    (i32.const 8)
   )
  )
  (set_local $$3
   (get_local $sp)
  )
  (set_local $$$field
   (i32.load
    (get_local $$1)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$1)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (i32.store
   (get_local $$3)
   (get_local $$$field)
  )
  (set_local $$$index5
   (i32.add
    (get_local $$3)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index5)
   (get_local $$$field2)
  )
  (set_local $$$field7
   (i32.load
    (get_local $$3)
   )
  )
  (set_local $$$index9
   (i32.add
    (get_local $$3)
    (i32.const 4)
   )
  )
  (set_local $$$field10
   (i32.load
    (get_local $$$index9)
   )
  )
  (i32.store
   (get_local $$2)
   (get_local $$$field7)
  )
  (set_local $$$index13
   (i32.add
    (get_local $$2)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index13)
   (get_local $$$field10)
  )
  (set_local $$$field15
   (i32.load
    (get_local $$2)
   )
  )
  (set_local $$$index17
   (i32.add
    (get_local $$2)
    (i32.const 4)
   )
  )
  (set_local $$$field18
   (i32.load
    (get_local $$$index17)
   )
  )
  (i32.store
   (get_local $$0)
   (get_local $$$field15)
  )
  (set_local $$$index21
   (i32.add
    (get_local $$0)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index21)
   (get_local $$$field18)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return)
 )
 (func $__ZN10emscripten15select_overloadIKFfffffE9FastNoiseEEDtfp_EMT0_T_ (param $$0 i32) (param $$1 i32)
  (local $$$field i32)
  (local $$$field10 i32)
  (local $$$field15 i32)
  (local $$$field18 i32)
  (local $$$field2 i32)
  (local $$$field7 i32)
  (local $$$index1 i32)
  (local $$$index13 i32)
  (local $$$index17 i32)
  (local $$$index21 i32)
  (local $$$index5 i32)
  (local $$$index9 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$2
   (i32.add
    (get_local $sp)
    (i32.const 8)
   )
  )
  (set_local $$3
   (get_local $sp)
  )
  (set_local $$$field
   (i32.load
    (get_local $$1)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$1)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (i32.store
   (get_local $$3)
   (get_local $$$field)
  )
  (set_local $$$index5
   (i32.add
    (get_local $$3)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index5)
   (get_local $$$field2)
  )
  (set_local $$$field7
   (i32.load
    (get_local $$3)
   )
  )
  (set_local $$$index9
   (i32.add
    (get_local $$3)
    (i32.const 4)
   )
  )
  (set_local $$$field10
   (i32.load
    (get_local $$$index9)
   )
  )
  (i32.store
   (get_local $$2)
   (get_local $$$field7)
  )
  (set_local $$$index13
   (i32.add
    (get_local $$2)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index13)
   (get_local $$$field10)
  )
  (set_local $$$field15
   (i32.load
    (get_local $$2)
   )
  )
  (set_local $$$index17
   (i32.add
    (get_local $$2)
    (i32.const 4)
   )
  )
  (set_local $$$field18
   (i32.load
    (get_local $$$index17)
   )
  )
  (i32.store
   (get_local $$0)
   (get_local $$$field15)
  )
  (set_local $$$index21
   (i32.add
    (get_local $$0)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index21)
   (get_local $$$field18)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return)
 )
 (func $__ZN10emscripten15select_overloadIKFfiiiiE9FastNoiseEEDtfp_EMT0_T_ (param $$0 i32) (param $$1 i32)
  (local $$$field i32)
  (local $$$field10 i32)
  (local $$$field15 i32)
  (local $$$field18 i32)
  (local $$$field2 i32)
  (local $$$field7 i32)
  (local $$$index1 i32)
  (local $$$index13 i32)
  (local $$$index17 i32)
  (local $$$index21 i32)
  (local $$$index5 i32)
  (local $$$index9 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$2
   (i32.add
    (get_local $sp)
    (i32.const 8)
   )
  )
  (set_local $$3
   (get_local $sp)
  )
  (set_local $$$field
   (i32.load
    (get_local $$1)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$1)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (i32.store
   (get_local $$3)
   (get_local $$$field)
  )
  (set_local $$$index5
   (i32.add
    (get_local $$3)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index5)
   (get_local $$$field2)
  )
  (set_local $$$field7
   (i32.load
    (get_local $$3)
   )
  )
  (set_local $$$index9
   (i32.add
    (get_local $$3)
    (i32.const 4)
   )
  )
  (set_local $$$field10
   (i32.load
    (get_local $$$index9)
   )
  )
  (i32.store
   (get_local $$2)
   (get_local $$$field7)
  )
  (set_local $$$index13
   (i32.add
    (get_local $$2)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index13)
   (get_local $$$field10)
  )
  (set_local $$$field15
   (i32.load
    (get_local $$2)
   )
  )
  (set_local $$$index17
   (i32.add
    (get_local $$2)
    (i32.const 4)
   )
  )
  (set_local $$$field18
   (i32.load
    (get_local $$$index17)
   )
  )
  (i32.store
   (get_local $$0)
   (get_local $$$field15)
  )
  (set_local $$$index21
   (i32.add
    (get_local $$0)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index21)
   (get_local $$$field18)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return)
 )
 (func $__ZN10emscripten8internal6TypeIDIN9FastNoise9NoiseTypeEE3getEv (result i32)
  (local $$0 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_local $$0
   (call $__ZN10emscripten8internal11LightTypeIDIN9FastNoise9NoiseTypeEE3getEv)
  )
  (return
   (get_local $$0)
  )
 )
 (func $__ZN10emscripten8internal11LightTypeIDIN9FastNoise9NoiseTypeEE3getEv (result i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (return
   (i32.const 1024)
  )
 )
 (func $__ZN10emscripten8internal6TypeIDIN9FastNoise6InterpEE3getEv (result i32)
  (local $$0 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_local $$0
   (call $__ZN10emscripten8internal11LightTypeIDIN9FastNoise6InterpEE3getEv)
  )
  (return
   (get_local $$0)
  )
 )
 (func $__ZN10emscripten8internal11LightTypeIDIN9FastNoise6InterpEE3getEv (result i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (return
   (i32.const 1032)
  )
 )
 (func $__ZN10emscripten8internal6TypeIDIN9FastNoise11FractalTypeEE3getEv (result i32)
  (local $$0 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_local $$0
   (call $__ZN10emscripten8internal11LightTypeIDIN9FastNoise11FractalTypeEE3getEv)
  )
  (return
   (get_local $$0)
  )
 )
 (func $__ZN10emscripten8internal11LightTypeIDIN9FastNoise11FractalTypeEE3getEv (result i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (return
   (i32.const 1040)
  )
 )
 (func $__ZN10emscripten8internal6TypeIDIN9FastNoise24CellularDistanceFunctionEE3getEv (result i32)
  (local $$0 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_local $$0
   (call $__ZN10emscripten8internal11LightTypeIDIN9FastNoise24CellularDistanceFunctionEE3getEv)
  )
  (return
   (get_local $$0)
  )
 )
 (func $__ZN10emscripten8internal11LightTypeIDIN9FastNoise24CellularDistanceFunctionEE3getEv (result i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (return
   (i32.const 1048)
  )
 )
 (func $__ZN10emscripten8internal6TypeIDIN9FastNoise18CellularReturnTypeEE3getEv (result i32)
  (local $$0 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_local $$0
   (call $__ZN10emscripten8internal11LightTypeIDIN9FastNoise18CellularReturnTypeEE3getEv)
  )
  (return
   (get_local $$0)
  )
 )
 (func $__ZN10emscripten8internal11LightTypeIDIN9FastNoise18CellularReturnTypeEE3getEv (result i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (return
   (i32.const 1056)
  )
 )
 (func $__ZN10emscripten8internal11NoBaseClass6verifyI9FastNoiseEEvv
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (return)
 )
 (func $__ZN10emscripten8internal13getActualTypeI9FastNoiseEEPKvPT_ (param $$0 i32) (result i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (get_local $$1)
  )
  (set_local $$3
   (call $__ZN10emscripten8internal14getLightTypeIDI9FastNoiseEEPKvRKT_
    (get_local $$2)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$3)
  )
 )
 (func $__ZN10emscripten8internal11NoBaseClass11getUpcasterI9FastNoiseEEPFvvEv (result i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (return
   (i32.const 0)
  )
 )
 (func $__ZN10emscripten8internal11NoBaseClass13getDowncasterI9FastNoiseEEPFvvEv (result i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (return
   (i32.const 0)
  )
 )
 (func $__ZN10emscripten8internal14raw_destructorI9FastNoiseEEvPT_ (param $$0 i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (get_local $$1)
  )
  (set_local $$3
   (i32.eq
    (get_local $$2)
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (get_local $$3)
   )
   (call $__ZdlPv
    (get_local $$2)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return)
 )
 (func $__ZN10emscripten8internal6TypeIDI9FastNoiseE3getEv (result i32)
  (local $$0 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_local $$0
   (call $__ZN10emscripten8internal11LightTypeIDI9FastNoiseE3getEv)
  )
  (return
   (get_local $$0)
  )
 )
 (func $__ZN10emscripten8internal6TypeIDINS0_17AllowedRawPointerI9FastNoiseEEE3getEv (result i32)
  (local $$0 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_local $$0
   (call $__ZN10emscripten8internal11LightTypeIDIP9FastNoiseE3getEv)
  )
  (return
   (get_local $$0)
  )
 )
 (func $__ZN10emscripten8internal6TypeIDINS0_17AllowedRawPointerIK9FastNoiseEEE3getEv (result i32)
  (local $$0 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_local $$0
   (call $__ZN10emscripten8internal11LightTypeIDIPK9FastNoiseE3getEv)
  )
  (return
   (get_local $$0)
  )
 )
 (func $__ZN10emscripten8internal11NoBaseClass3getEv (result i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (return
   (i32.const 0)
  )
 )
 (func $__ZN10emscripten8internal14getLightTypeIDI9FastNoiseEEPKvRKT_ (param $$0 i32) (result i32)
  (local $$1 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (i32.const 1064)
  )
 )
 (func $__ZN10emscripten8internal11LightTypeIDI9FastNoiseE3getEv (result i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (return
   (i32.const 1064)
  )
 )
 (func $__ZN10emscripten8internal11LightTypeIDIP9FastNoiseE3getEv (result i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (return
   (i32.const 1072)
  )
 )
 (func $__ZN10emscripten8internal11LightTypeIDIPK9FastNoiseE3getEv (result i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (return
   (i32.const 1088)
  )
 )
 (func $__ZN10emscripten8internal19getGenericSignatureIJiiEEEPKcv (result i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (return
   (i32.const 9857)
  )
 )
 (func $__ZN10emscripten8internal19getGenericSignatureIJvEEEPKcv (result i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (return
   (i32.const 9860)
  )
 )
 (func $__ZN10emscripten8internal19getGenericSignatureIJviEEEPKcv (result i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (return
   (i32.const 9862)
  )
 )
 (func $__ZN10emscripten8internal12operator_newI9FastNoiseJiEEEPT_DpOT0_ (param $$0 i32) (result i32)
  (local $$1 i32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 i32)
  (local $$14 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$2
   (get_local $$0)
  )
  (set_local $$5
   (call $__Znwj
    (i32.const 1088)
   )
  )
  (set_local $$6
   (get_local $$2)
  )
  (set_local $$1
   (get_local $$6)
  )
  (set_local $$7
   (get_local $$1)
  )
  (set_local $$8
   (i32.load
    (get_local $$7)
   )
  )
  (set_global $__THREW__
   (i32.const 0)
  )
  (call $invoke_vii
   (i32.const 100)
   (get_local $$5)
   (get_local $$8)
  )
  (set_local $$9
   (get_global $__THREW__)
  )
  (set_global $__THREW__
   (i32.const 0)
  )
  (set_local $$10
   (i32.and
    (get_local $$9)
    (i32.const 1)
   )
  )
  (if
   (get_local $$10)
   (block
    (set_local $$11
     (call $___cxa_find_matching_catch_2)
    )
    (set_local $$12
     (get_global $tempRet0)
    )
    (set_local $$3
     (get_local $$11)
    )
    (set_local $$4
     (get_local $$12)
    )
    (call $__ZdlPv
     (get_local $$5)
    )
    (set_local $$13
     (get_local $$3)
    )
    (set_local $$14
     (get_local $$4)
    )
    (call $___resumeException
     (get_local $$13)
    )
   )
   (block
    (set_global $STACKTOP
     (get_local $sp)
    )
    (return
     (get_local $$5)
    )
   )
  )
  (return
   (i32.const 0)
  )
 )
 (func $__ZN10emscripten8internal7InvokerIP9FastNoiseJOiEE6invokeEPFS3_S4_Ei (param $$0 i32) (param $$1 i32) (result i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$4
   (get_local $sp)
  )
  (set_local $$2
   (get_local $$0)
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$5
   (get_local $$2)
  )
  (set_local $$6
   (get_local $$3)
  )
  (set_local $$7
   (call $__ZN10emscripten8internal11BindingTypeIOiE12fromWireTypeEi
    (get_local $$6)
   )
  )
  (i32.store
   (get_local $$4)
   (get_local $$7)
  )
  (set_local $$8
   (call_indirect $FUNCSIG$ii
    (get_local $$4)
    (i32.add
     (i32.and
      (get_local $$5)
      (i32.const 63)
     )
     (i32.const 544)
    )
   )
  )
  (set_local $$9
   (call $__ZN10emscripten8internal11BindingTypeIP9FastNoiseE10toWireTypeES3_
    (get_local $$8)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$9)
  )
 )
 (func $__ZNK10emscripten8internal12WithPoliciesIJNS_18allow_raw_pointersEEE11ArgTypeListIJP9FastNoiseOiEE8getCountEv (param $$0 i32) (result i32)
  (local $$1 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (i32.const 2)
  )
 )
 (func $__ZNK10emscripten8internal12WithPoliciesIJNS_18allow_raw_pointersEEE11ArgTypeListIJP9FastNoiseOiEE8getTypesEv (param $$0 i32) (result i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (call $__ZN10emscripten8internal14ArgArrayGetterINS0_8TypeListIJNS0_17AllowedRawPointerI9FastNoiseEEOiEEEE3getEv)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal11BindingTypeIP9FastNoiseE10toWireTypeES3_ (param $$0 i32) (result i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (get_local $$1)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal11BindingTypeIOiE12fromWireTypeEi (param $$0 i32) (result i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (get_local $$1)
  )
  (set_local $$3
   (call $__ZN10emscripten8internal11BindingTypeIiE12fromWireTypeEi
    (get_local $$2)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$3)
  )
 )
 (func $__ZN10emscripten8internal11BindingTypeIiE12fromWireTypeEi (param $$0 i32) (result i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (get_local $$1)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal14ArgArrayGetterINS0_8TypeListIJNS0_17AllowedRawPointerI9FastNoiseEEOiEEEE3getEv (result i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (return
   (i32.const 1560)
  )
 )
 (func $__ZN10emscripten8internal19getGenericSignatureIJiiiEEEPKcv (result i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (return
   (i32.const 9865)
  )
 )
 (func $__ZN9FastNoiseC2Ei (param $$0 i32) (param $$1 i32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 i32)
  (local $$14 i32)
  (local $$15 i32)
  (local $$16 i32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$19 i32)
  (local $$2 i32)
  (local $$20 i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$2
   (get_local $$0)
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$4
   (get_local $$2)
  )
  (set_local $$5
   (i32.add
    (get_local $$4)
    (i32.const 1024)
   )
  )
  (i32.store
   (get_local $$5)
   (i32.const 1337)
  )
  (set_local $$6
   (i32.add
    (get_local $$4)
    (i32.const 1028)
   )
  )
  (f32.store
   (get_local $$6)
   (f32.const 0.009999999776482582)
  )
  (set_local $$7
   (i32.add
    (get_local $$4)
    (i32.const 1032)
   )
  )
  (i32.store
   (get_local $$7)
   (i32.const 2)
  )
  (set_local $$8
   (i32.add
    (get_local $$4)
    (i32.const 1036)
   )
  )
  (i32.store
   (get_local $$8)
   (i32.const 4)
  )
  (set_local $$9
   (i32.add
    (get_local $$4)
    (i32.const 1040)
   )
  )
  (i32.store
   (get_local $$9)
   (i32.const 3)
  )
  (set_local $$10
   (i32.add
    (get_local $$4)
    (i32.const 1044)
   )
  )
  (f32.store
   (get_local $$10)
   (f32.const 2)
  )
  (set_local $$11
   (i32.add
    (get_local $$4)
    (i32.const 1048)
   )
  )
  (f32.store
   (get_local $$11)
   (f32.const 0.5)
  )
  (set_local $$12
   (i32.add
    (get_local $$4)
    (i32.const 1052)
   )
  )
  (i32.store
   (get_local $$12)
   (i32.const 0)
  )
  (set_local $$13
   (i32.add
    (get_local $$4)
    (i32.const 1060)
   )
  )
  (i32.store
   (get_local $$13)
   (i32.const 0)
  )
  (set_local $$14
   (i32.add
    (get_local $$4)
    (i32.const 1064)
   )
  )
  (i32.store
   (get_local $$14)
   (i32.const 0)
  )
  (set_local $$15
   (i32.add
    (get_local $$4)
    (i32.const 1068)
   )
  )
  (i32.store
   (get_local $$15)
   (i32.const 0)
  )
  (set_local $$16
   (i32.add
    (get_local $$4)
    (i32.const 1072)
   )
  )
  (i32.store
   (get_local $$16)
   (i32.const 0)
  )
  (set_local $$17
   (i32.add
    (get_local $$4)
    (i32.const 1076)
   )
  )
  (i32.store
   (get_local $$17)
   (i32.const 1)
  )
  (set_local $$18
   (i32.add
    (get_local $$4)
    (i32.const 1080)
   )
  )
  (f32.store
   (get_local $$18)
   (f32.const 0.44999998807907104)
  )
  (set_local $$19
   (i32.add
    (get_local $$4)
    (i32.const 1084)
   )
  )
  (f32.store
   (get_local $$19)
   (f32.const 1)
  )
  (set_local $$20
   (get_local $$3)
  )
  (call $__ZN9FastNoise7SetSeedEi
   (get_local $$4)
   (get_local $$20)
  )
  (call $__ZN9FastNoise24CalculateFractalBoundingEv
   (get_local $$4)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return)
 )
 (func $__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFivEE3getIS2_EEiRKS4_RKT_ (param $$0 i32) (param $$1 i32) (result i32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 i32)
  (local $$14 i32)
  (local $$15 i32)
  (local $$16 i32)
  (local $$17 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$4
   (get_local $sp)
  )
  (set_local $$2
   (get_local $$0)
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$5
   (get_local $$2)
  )
  (set_local $$$field
   (i32.load
    (get_local $$5)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$5)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (set_local $$6
   (get_local $$3)
  )
  (set_local $$7
   (i32.shr_s
    (get_local $$$field2)
    (i32.const 1)
   )
  )
  (set_local $$8
   (i32.add
    (get_local $$6)
    (get_local $$7)
   )
  )
  (set_local $$9
   (i32.and
    (get_local $$$field2)
    (i32.const 1)
   )
  )
  (set_local $$10
   (i32.ne
    (get_local $$9)
    (i32.const 0)
   )
  )
  (if
   (get_local $$10)
   (block
    (set_local $$11
     (i32.load
      (get_local $$8)
     )
    )
    (set_local $$12
     (i32.add
      (get_local $$11)
      (get_local $$$field)
     )
    )
    (set_local $$13
     (i32.load
      (get_local $$12)
     )
    )
    (set_local $$15
     (get_local $$13)
    )
   )
   (block
    (set_local $$14
     (get_local $$$field)
    )
    (set_local $$15
     (get_local $$14)
    )
   )
  )
  (set_local $$16
   (call_indirect $FUNCSIG$ii
    (get_local $$8)
    (i32.add
     (i32.and
      (get_local $$15)
      (i32.const 63)
     )
     (i32.const 544)
    )
   )
  )
  (i32.store
   (get_local $$4)
   (get_local $$16)
  )
  (set_local $$17
   (call $__ZN10emscripten8internal11BindingTypeIiE10toWireTypeERKi
    (get_local $$4)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$17)
  )
 )
 (func $__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFviEE3setIS2_EEvRKS4_RT_i (param $$0 i32) (param $$1 i32) (param $$2 i32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 i32)
  (local $$14 i32)
  (local $$15 i32)
  (local $$16 i32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$3
   (get_local $$0)
  )
  (set_local $$4
   (get_local $$1)
  )
  (set_local $$5
   (get_local $$2)
  )
  (set_local $$6
   (get_local $$3)
  )
  (set_local $$$field
   (i32.load
    (get_local $$6)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$6)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (set_local $$7
   (get_local $$4)
  )
  (set_local $$8
   (i32.shr_s
    (get_local $$$field2)
    (i32.const 1)
   )
  )
  (set_local $$9
   (i32.add
    (get_local $$7)
    (get_local $$8)
   )
  )
  (set_local $$10
   (i32.and
    (get_local $$$field2)
    (i32.const 1)
   )
  )
  (set_local $$11
   (i32.ne
    (get_local $$10)
    (i32.const 0)
   )
  )
  (if
   (get_local $$11)
   (block
    (set_local $$12
     (i32.load
      (get_local $$9)
     )
    )
    (set_local $$13
     (i32.add
      (get_local $$12)
      (get_local $$$field)
     )
    )
    (set_local $$14
     (i32.load
      (get_local $$13)
     )
    )
    (set_local $$18
     (get_local $$14)
    )
   )
   (block
    (set_local $$15
     (get_local $$$field)
    )
    (set_local $$18
     (get_local $$15)
    )
   )
  )
  (set_local $$16
   (get_local $$5)
  )
  (set_local $$17
   (call $__ZN10emscripten8internal11BindingTypeIiE12fromWireTypeEi
    (get_local $$16)
   )
  )
  (call_indirect $FUNCSIG$vii
   (get_local $$9)
   (get_local $$17)
   (i32.add
    (i32.and
     (get_local $$18)
     (i32.const 127)
    )
    (i32.const 416)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return)
 )
 (func $__ZN10emscripten8internal6TypeIDIiE3getEv (result i32)
  (local $$0 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_local $$0
   (call $__ZN10emscripten8internal11LightTypeIDIiE3getEv)
  )
  (return
   (get_local $$0)
  )
 )
 (func $__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFivEE10getContextES4_ (param $$0 i32) (result i32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$$index5 i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $sp)
  )
  (set_local $$$field
   (i32.load
    (get_local $$0)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$0)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (i32.store
   (get_local $$1)
   (get_local $$$field)
  )
  (set_local $$$index5
   (i32.add
    (get_local $$1)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index5)
   (get_local $$$field2)
  )
  (set_local $$2
   (call $__ZN10emscripten8internal10getContextIM9FastNoiseKFivEEEPT_RKS5_
    (get_local $$1)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFviEE10getContextES4_ (param $$0 i32) (result i32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$$index5 i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $sp)
  )
  (set_local $$$field
   (i32.load
    (get_local $$0)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$0)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (i32.store
   (get_local $$1)
   (get_local $$$field)
  )
  (set_local $$$index5
   (i32.add
    (get_local $$1)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index5)
   (get_local $$$field2)
  )
  (set_local $$2
   (call $__ZN10emscripten8internal10getContextIM9FastNoiseFviEEEPT_RKS5_
    (get_local $$1)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal11BindingTypeIiE10toWireTypeERKi (param $$0 i32) (result i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (get_local $$1)
  )
  (set_local $$3
   (i32.load
    (get_local $$2)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$3)
  )
 )
 (func $__ZN10emscripten8internal11LightTypeIDIiE3getEv (result i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (return
   (i32.const 1480)
  )
 )
 (func $__ZN10emscripten8internal10getContextIM9FastNoiseKFivEEEPT_RKS5_ (param $$0 i32) (result i32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$$index5 i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (call $__Znwj
    (i32.const 8)
   )
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$$field
   (i32.load
    (get_local $$3)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$3)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (i32.store
   (get_local $$2)
   (get_local $$$field)
  )
  (set_local $$$index5
   (i32.add
    (get_local $$2)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index5)
   (get_local $$$field2)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal19getGenericSignatureIJviiiEEEPKcv (result i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (return
   (i32.const 9869)
  )
 )
 (func $__ZN10emscripten8internal10getContextIM9FastNoiseFviEEEPT_RKS5_ (param $$0 i32) (result i32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$$index5 i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (call $__Znwj
    (i32.const 8)
   )
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$$field
   (i32.load
    (get_local $$3)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$3)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (i32.store
   (get_local $$2)
   (get_local $$$field)
  )
  (set_local $$$index5
   (i32.add
    (get_local $$2)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index5)
   (get_local $$$field2)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFfvEE3getIS2_EEfRKS4_RKT_ (param $$0 i32) (param $$1 i32) (result f32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 i32)
  (local $$14 i32)
  (local $$15 i32)
  (local $$16 f32)
  (local $$17 f32)
  (local $$2 i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$4
   (get_local $sp)
  )
  (set_local $$2
   (get_local $$0)
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$5
   (get_local $$2)
  )
  (set_local $$$field
   (i32.load
    (get_local $$5)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$5)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (set_local $$6
   (get_local $$3)
  )
  (set_local $$7
   (i32.shr_s
    (get_local $$$field2)
    (i32.const 1)
   )
  )
  (set_local $$8
   (i32.add
    (get_local $$6)
    (get_local $$7)
   )
  )
  (set_local $$9
   (i32.and
    (get_local $$$field2)
    (i32.const 1)
   )
  )
  (set_local $$10
   (i32.ne
    (get_local $$9)
    (i32.const 0)
   )
  )
  (if
   (get_local $$10)
   (block
    (set_local $$11
     (i32.load
      (get_local $$8)
     )
    )
    (set_local $$12
     (i32.add
      (get_local $$11)
      (get_local $$$field)
     )
    )
    (set_local $$13
     (i32.load
      (get_local $$12)
     )
    )
    (set_local $$15
     (get_local $$13)
    )
   )
   (block
    (set_local $$14
     (get_local $$$field)
    )
    (set_local $$15
     (get_local $$14)
    )
   )
  )
  (set_local $$16
   (call_indirect $FUNCSIG$fi
    (get_local $$8)
    (i32.add
     (i32.and
      (get_local $$15)
      (i32.const 127)
     )
     (i32.const 1824)
    )
   )
  )
  (f32.store
   (get_local $$4)
   (get_local $$16)
  )
  (set_local $$17
   (call $__ZN10emscripten8internal11BindingTypeIfE10toWireTypeERKf
    (get_local $$4)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$17)
  )
 )
 (func $__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvfEE3setIS2_EEvRKS4_RT_f (param $$0 i32) (param $$1 i32) (param $$2 f32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 i32)
  (local $$14 i32)
  (local $$15 i32)
  (local $$16 f32)
  (local $$17 f32)
  (local $$18 i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $$5 f32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$3
   (get_local $$0)
  )
  (set_local $$4
   (get_local $$1)
  )
  (set_local $$5
   (get_local $$2)
  )
  (set_local $$6
   (get_local $$3)
  )
  (set_local $$$field
   (i32.load
    (get_local $$6)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$6)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (set_local $$7
   (get_local $$4)
  )
  (set_local $$8
   (i32.shr_s
    (get_local $$$field2)
    (i32.const 1)
   )
  )
  (set_local $$9
   (i32.add
    (get_local $$7)
    (get_local $$8)
   )
  )
  (set_local $$10
   (i32.and
    (get_local $$$field2)
    (i32.const 1)
   )
  )
  (set_local $$11
   (i32.ne
    (get_local $$10)
    (i32.const 0)
   )
  )
  (if
   (get_local $$11)
   (block
    (set_local $$12
     (i32.load
      (get_local $$9)
     )
    )
    (set_local $$13
     (i32.add
      (get_local $$12)
      (get_local $$$field)
     )
    )
    (set_local $$14
     (i32.load
      (get_local $$13)
     )
    )
    (set_local $$18
     (get_local $$14)
    )
   )
   (block
    (set_local $$15
     (get_local $$$field)
    )
    (set_local $$18
     (get_local $$15)
    )
   )
  )
  (set_local $$16
   (get_local $$5)
  )
  (set_local $$17
   (call $__ZN10emscripten8internal11BindingTypeIfE12fromWireTypeEf
    (get_local $$16)
   )
  )
  (call_indirect $FUNCSIG$vif
   (get_local $$9)
   (get_local $$17)
   (i32.add
    (i32.and
     (get_local $$18)
     (i32.const 127)
    )
    (i32.const 32)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return)
 )
 (func $__ZN10emscripten8internal6TypeIDIfE3getEv (result i32)
  (local $$0 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_local $$0
   (call $__ZN10emscripten8internal11LightTypeIDIfE3getEv)
  )
  (return
   (get_local $$0)
  )
 )
 (func $__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFfvEE10getContextES4_ (param $$0 i32) (result i32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$$index5 i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $sp)
  )
  (set_local $$$field
   (i32.load
    (get_local $$0)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$0)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (i32.store
   (get_local $$1)
   (get_local $$$field)
  )
  (set_local $$$index5
   (i32.add
    (get_local $$1)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index5)
   (get_local $$$field2)
  )
  (set_local $$2
   (call $__ZN10emscripten8internal10getContextIM9FastNoiseKFfvEEEPT_RKS5_
    (get_local $$1)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvfEE10getContextES4_ (param $$0 i32) (result i32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$$index5 i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $sp)
  )
  (set_local $$$field
   (i32.load
    (get_local $$0)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$0)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (i32.store
   (get_local $$1)
   (get_local $$$field)
  )
  (set_local $$$index5
   (i32.add
    (get_local $$1)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index5)
   (get_local $$$field2)
  )
  (set_local $$2
   (call $__ZN10emscripten8internal10getContextIM9FastNoiseFvfEEEPT_RKS5_
    (get_local $$1)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal11BindingTypeIfE10toWireTypeERKf (param $$0 i32) (result f32)
  (local $$1 i32)
  (local $$2 i32)
  (local $$3 f32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (get_local $$1)
  )
  (set_local $$3
   (f32.load
    (get_local $$2)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$3)
  )
 )
 (func $__ZN10emscripten8internal11BindingTypeIfE12fromWireTypeEf (param $$0 f32) (result f32)
  (local $$1 f32)
  (local $$2 f32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (get_local $$1)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal11LightTypeIDIfE3getEv (result i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (return
   (i32.const 1512)
  )
 )
 (func $__ZN10emscripten8internal19getGenericSignatureIJfiiEEEPKcv (result i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (return
   (i32.const 9874)
  )
 )
 (func $__ZN10emscripten8internal10getContextIM9FastNoiseKFfvEEEPT_RKS5_ (param $$0 i32) (result i32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$$index5 i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (call $__Znwj
    (i32.const 8)
   )
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$$field
   (i32.load
    (get_local $$3)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$3)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (i32.store
   (get_local $$2)
   (get_local $$$field)
  )
  (set_local $$$index5
   (i32.add
    (get_local $$2)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index5)
   (get_local $$$field2)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal19getGenericSignatureIJviifEEEPKcv (result i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (return
   (i32.const 9878)
  )
 )
 (func $__ZN10emscripten8internal10getContextIM9FastNoiseFvfEEEPT_RKS5_ (param $$0 i32) (result i32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$$index5 i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (call $__Znwj
    (i32.const 8)
   )
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$$field
   (i32.load
    (get_local $$3)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$3)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (i32.store
   (get_local $$2)
   (get_local $$$field)
  )
  (set_local $$$index5
   (i32.add
    (get_local $$2)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index5)
   (get_local $$$field2)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFNS2_6InterpEvEE3getIS2_EES3_RKS5_RKT_ (param $$0 i32) (param $$1 i32) (result i32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 i32)
  (local $$14 i32)
  (local $$15 i32)
  (local $$16 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$2
   (get_local $$0)
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$4
   (get_local $$2)
  )
  (set_local $$$field
   (i32.load
    (get_local $$4)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$4)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (set_local $$5
   (get_local $$3)
  )
  (set_local $$6
   (i32.shr_s
    (get_local $$$field2)
    (i32.const 1)
   )
  )
  (set_local $$7
   (i32.add
    (get_local $$5)
    (get_local $$6)
   )
  )
  (set_local $$8
   (i32.and
    (get_local $$$field2)
    (i32.const 1)
   )
  )
  (set_local $$9
   (i32.ne
    (get_local $$8)
    (i32.const 0)
   )
  )
  (if
   (get_local $$9)
   (block
    (set_local $$10
     (i32.load
      (get_local $$7)
     )
    )
    (set_local $$11
     (i32.add
      (get_local $$10)
      (get_local $$$field)
     )
    )
    (set_local $$12
     (i32.load
      (get_local $$11)
     )
    )
    (set_local $$14
     (get_local $$12)
    )
   )
   (block
    (set_local $$13
     (get_local $$$field)
    )
    (set_local $$14
     (get_local $$13)
    )
   )
  )
  (set_local $$15
   (call_indirect $FUNCSIG$ii
    (get_local $$7)
    (i32.add
     (i32.and
      (get_local $$14)
      (i32.const 63)
     )
     (i32.const 544)
    )
   )
  )
  (set_local $$16
   (call $__ZN10emscripten8internal15EnumBindingTypeIN9FastNoise6InterpEE10toWireTypeES3_
    (get_local $$15)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$16)
  )
 )
 (func $__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvNS2_6InterpEEE3setIS2_EEvRKS5_RT_S3_ (param $$0 i32) (param $$1 i32) (param $$2 i32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 i32)
  (local $$14 i32)
  (local $$15 i32)
  (local $$16 i32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$3
   (get_local $$0)
  )
  (set_local $$4
   (get_local $$1)
  )
  (set_local $$5
   (get_local $$2)
  )
  (set_local $$6
   (get_local $$3)
  )
  (set_local $$$field
   (i32.load
    (get_local $$6)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$6)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (set_local $$7
   (get_local $$4)
  )
  (set_local $$8
   (i32.shr_s
    (get_local $$$field2)
    (i32.const 1)
   )
  )
  (set_local $$9
   (i32.add
    (get_local $$7)
    (get_local $$8)
   )
  )
  (set_local $$10
   (i32.and
    (get_local $$$field2)
    (i32.const 1)
   )
  )
  (set_local $$11
   (i32.ne
    (get_local $$10)
    (i32.const 0)
   )
  )
  (if
   (get_local $$11)
   (block
    (set_local $$12
     (i32.load
      (get_local $$9)
     )
    )
    (set_local $$13
     (i32.add
      (get_local $$12)
      (get_local $$$field)
     )
    )
    (set_local $$14
     (i32.load
      (get_local $$13)
     )
    )
    (set_local $$18
     (get_local $$14)
    )
   )
   (block
    (set_local $$15
     (get_local $$$field)
    )
    (set_local $$18
     (get_local $$15)
    )
   )
  )
  (set_local $$16
   (get_local $$5)
  )
  (set_local $$17
   (call $__ZN10emscripten8internal15EnumBindingTypeIN9FastNoise6InterpEE12fromWireTypeES3_
    (get_local $$16)
   )
  )
  (call_indirect $FUNCSIG$vii
   (get_local $$9)
   (get_local $$17)
   (i32.add
    (i32.and
     (get_local $$18)
     (i32.const 127)
    )
    (i32.const 416)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return)
 )
 (func $__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFNS2_6InterpEvEE10getContextES5_ (param $$0 i32) (result i32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$$index5 i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $sp)
  )
  (set_local $$$field
   (i32.load
    (get_local $$0)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$0)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (i32.store
   (get_local $$1)
   (get_local $$$field)
  )
  (set_local $$$index5
   (i32.add
    (get_local $$1)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index5)
   (get_local $$$field2)
  )
  (set_local $$2
   (call $__ZN10emscripten8internal10getContextIM9FastNoiseKFNS2_6InterpEvEEEPT_RKS6_
    (get_local $$1)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvNS2_6InterpEEE10getContextES5_ (param $$0 i32) (result i32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$$index5 i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $sp)
  )
  (set_local $$$field
   (i32.load
    (get_local $$0)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$0)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (i32.store
   (get_local $$1)
   (get_local $$$field)
  )
  (set_local $$$index5
   (i32.add
    (get_local $$1)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index5)
   (get_local $$$field2)
  )
  (set_local $$2
   (call $__ZN10emscripten8internal10getContextIM9FastNoiseFvNS2_6InterpEEEEPT_RKS6_
    (get_local $$1)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal15EnumBindingTypeIN9FastNoise6InterpEE10toWireTypeES3_ (param $$0 i32) (result i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (get_local $$1)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal15EnumBindingTypeIN9FastNoise6InterpEE12fromWireTypeES3_ (param $$0 i32) (result i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (get_local $$1)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal10getContextIM9FastNoiseKFNS2_6InterpEvEEEPT_RKS6_ (param $$0 i32) (result i32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$$index5 i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (call $__Znwj
    (i32.const 8)
   )
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$$field
   (i32.load
    (get_local $$3)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$3)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (i32.store
   (get_local $$2)
   (get_local $$$field)
  )
  (set_local $$$index5
   (i32.add
    (get_local $$2)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index5)
   (get_local $$$field2)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal10getContextIM9FastNoiseFvNS2_6InterpEEEEPT_RKS6_ (param $$0 i32) (result i32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$$index5 i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (call $__Znwj
    (i32.const 8)
   )
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$$field
   (i32.load
    (get_local $$3)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$3)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (i32.store
   (get_local $$2)
   (get_local $$$field)
  )
  (set_local $$$index5
   (i32.add
    (get_local $$2)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index5)
   (get_local $$$field2)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFNS2_9NoiseTypeEvEE3getIS2_EES3_RKS5_RKT_ (param $$0 i32) (param $$1 i32) (result i32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 i32)
  (local $$14 i32)
  (local $$15 i32)
  (local $$16 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$2
   (get_local $$0)
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$4
   (get_local $$2)
  )
  (set_local $$$field
   (i32.load
    (get_local $$4)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$4)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (set_local $$5
   (get_local $$3)
  )
  (set_local $$6
   (i32.shr_s
    (get_local $$$field2)
    (i32.const 1)
   )
  )
  (set_local $$7
   (i32.add
    (get_local $$5)
    (get_local $$6)
   )
  )
  (set_local $$8
   (i32.and
    (get_local $$$field2)
    (i32.const 1)
   )
  )
  (set_local $$9
   (i32.ne
    (get_local $$8)
    (i32.const 0)
   )
  )
  (if
   (get_local $$9)
   (block
    (set_local $$10
     (i32.load
      (get_local $$7)
     )
    )
    (set_local $$11
     (i32.add
      (get_local $$10)
      (get_local $$$field)
     )
    )
    (set_local $$12
     (i32.load
      (get_local $$11)
     )
    )
    (set_local $$14
     (get_local $$12)
    )
   )
   (block
    (set_local $$13
     (get_local $$$field)
    )
    (set_local $$14
     (get_local $$13)
    )
   )
  )
  (set_local $$15
   (call_indirect $FUNCSIG$ii
    (get_local $$7)
    (i32.add
     (i32.and
      (get_local $$14)
      (i32.const 63)
     )
     (i32.const 544)
    )
   )
  )
  (set_local $$16
   (call $__ZN10emscripten8internal15EnumBindingTypeIN9FastNoise9NoiseTypeEE10toWireTypeES3_
    (get_local $$15)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$16)
  )
 )
 (func $__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvNS2_9NoiseTypeEEE3setIS2_EEvRKS5_RT_S3_ (param $$0 i32) (param $$1 i32) (param $$2 i32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 i32)
  (local $$14 i32)
  (local $$15 i32)
  (local $$16 i32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$3
   (get_local $$0)
  )
  (set_local $$4
   (get_local $$1)
  )
  (set_local $$5
   (get_local $$2)
  )
  (set_local $$6
   (get_local $$3)
  )
  (set_local $$$field
   (i32.load
    (get_local $$6)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$6)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (set_local $$7
   (get_local $$4)
  )
  (set_local $$8
   (i32.shr_s
    (get_local $$$field2)
    (i32.const 1)
   )
  )
  (set_local $$9
   (i32.add
    (get_local $$7)
    (get_local $$8)
   )
  )
  (set_local $$10
   (i32.and
    (get_local $$$field2)
    (i32.const 1)
   )
  )
  (set_local $$11
   (i32.ne
    (get_local $$10)
    (i32.const 0)
   )
  )
  (if
   (get_local $$11)
   (block
    (set_local $$12
     (i32.load
      (get_local $$9)
     )
    )
    (set_local $$13
     (i32.add
      (get_local $$12)
      (get_local $$$field)
     )
    )
    (set_local $$14
     (i32.load
      (get_local $$13)
     )
    )
    (set_local $$18
     (get_local $$14)
    )
   )
   (block
    (set_local $$15
     (get_local $$$field)
    )
    (set_local $$18
     (get_local $$15)
    )
   )
  )
  (set_local $$16
   (get_local $$5)
  )
  (set_local $$17
   (call $__ZN10emscripten8internal15EnumBindingTypeIN9FastNoise9NoiseTypeEE12fromWireTypeES3_
    (get_local $$16)
   )
  )
  (call_indirect $FUNCSIG$vii
   (get_local $$9)
   (get_local $$17)
   (i32.add
    (i32.and
     (get_local $$18)
     (i32.const 127)
    )
    (i32.const 416)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return)
 )
 (func $__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFNS2_9NoiseTypeEvEE10getContextES5_ (param $$0 i32) (result i32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$$index5 i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $sp)
  )
  (set_local $$$field
   (i32.load
    (get_local $$0)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$0)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (i32.store
   (get_local $$1)
   (get_local $$$field)
  )
  (set_local $$$index5
   (i32.add
    (get_local $$1)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index5)
   (get_local $$$field2)
  )
  (set_local $$2
   (call $__ZN10emscripten8internal10getContextIM9FastNoiseKFNS2_9NoiseTypeEvEEEPT_RKS6_
    (get_local $$1)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvNS2_9NoiseTypeEEE10getContextES5_ (param $$0 i32) (result i32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$$index5 i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $sp)
  )
  (set_local $$$field
   (i32.load
    (get_local $$0)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$0)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (i32.store
   (get_local $$1)
   (get_local $$$field)
  )
  (set_local $$$index5
   (i32.add
    (get_local $$1)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index5)
   (get_local $$$field2)
  )
  (set_local $$2
   (call $__ZN10emscripten8internal10getContextIM9FastNoiseFvNS2_9NoiseTypeEEEEPT_RKS6_
    (get_local $$1)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal15EnumBindingTypeIN9FastNoise9NoiseTypeEE10toWireTypeES3_ (param $$0 i32) (result i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (get_local $$1)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal15EnumBindingTypeIN9FastNoise9NoiseTypeEE12fromWireTypeES3_ (param $$0 i32) (result i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (get_local $$1)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal10getContextIM9FastNoiseKFNS2_9NoiseTypeEvEEEPT_RKS6_ (param $$0 i32) (result i32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$$index5 i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (call $__Znwj
    (i32.const 8)
   )
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$$field
   (i32.load
    (get_local $$3)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$3)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (i32.store
   (get_local $$2)
   (get_local $$$field)
  )
  (set_local $$$index5
   (i32.add
    (get_local $$2)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index5)
   (get_local $$$field2)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal10getContextIM9FastNoiseFvNS2_9NoiseTypeEEEEPT_RKS6_ (param $$0 i32) (result i32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$$index5 i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (call $__Znwj
    (i32.const 8)
   )
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$$field
   (i32.load
    (get_local $$3)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$3)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (i32.store
   (get_local $$2)
   (get_local $$$field)
  )
  (set_local $$$index5
   (i32.add
    (get_local $$2)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index5)
   (get_local $$$field2)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFNS2_11FractalTypeEvEE3getIS2_EES3_RKS5_RKT_ (param $$0 i32) (param $$1 i32) (result i32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 i32)
  (local $$14 i32)
  (local $$15 i32)
  (local $$16 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$2
   (get_local $$0)
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$4
   (get_local $$2)
  )
  (set_local $$$field
   (i32.load
    (get_local $$4)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$4)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (set_local $$5
   (get_local $$3)
  )
  (set_local $$6
   (i32.shr_s
    (get_local $$$field2)
    (i32.const 1)
   )
  )
  (set_local $$7
   (i32.add
    (get_local $$5)
    (get_local $$6)
   )
  )
  (set_local $$8
   (i32.and
    (get_local $$$field2)
    (i32.const 1)
   )
  )
  (set_local $$9
   (i32.ne
    (get_local $$8)
    (i32.const 0)
   )
  )
  (if
   (get_local $$9)
   (block
    (set_local $$10
     (i32.load
      (get_local $$7)
     )
    )
    (set_local $$11
     (i32.add
      (get_local $$10)
      (get_local $$$field)
     )
    )
    (set_local $$12
     (i32.load
      (get_local $$11)
     )
    )
    (set_local $$14
     (get_local $$12)
    )
   )
   (block
    (set_local $$13
     (get_local $$$field)
    )
    (set_local $$14
     (get_local $$13)
    )
   )
  )
  (set_local $$15
   (call_indirect $FUNCSIG$ii
    (get_local $$7)
    (i32.add
     (i32.and
      (get_local $$14)
      (i32.const 63)
     )
     (i32.const 544)
    )
   )
  )
  (set_local $$16
   (call $__ZN10emscripten8internal15EnumBindingTypeIN9FastNoise11FractalTypeEE10toWireTypeES3_
    (get_local $$15)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$16)
  )
 )
 (func $__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvNS2_11FractalTypeEEE3setIS2_EEvRKS5_RT_S3_ (param $$0 i32) (param $$1 i32) (param $$2 i32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 i32)
  (local $$14 i32)
  (local $$15 i32)
  (local $$16 i32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$3
   (get_local $$0)
  )
  (set_local $$4
   (get_local $$1)
  )
  (set_local $$5
   (get_local $$2)
  )
  (set_local $$6
   (get_local $$3)
  )
  (set_local $$$field
   (i32.load
    (get_local $$6)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$6)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (set_local $$7
   (get_local $$4)
  )
  (set_local $$8
   (i32.shr_s
    (get_local $$$field2)
    (i32.const 1)
   )
  )
  (set_local $$9
   (i32.add
    (get_local $$7)
    (get_local $$8)
   )
  )
  (set_local $$10
   (i32.and
    (get_local $$$field2)
    (i32.const 1)
   )
  )
  (set_local $$11
   (i32.ne
    (get_local $$10)
    (i32.const 0)
   )
  )
  (if
   (get_local $$11)
   (block
    (set_local $$12
     (i32.load
      (get_local $$9)
     )
    )
    (set_local $$13
     (i32.add
      (get_local $$12)
      (get_local $$$field)
     )
    )
    (set_local $$14
     (i32.load
      (get_local $$13)
     )
    )
    (set_local $$18
     (get_local $$14)
    )
   )
   (block
    (set_local $$15
     (get_local $$$field)
    )
    (set_local $$18
     (get_local $$15)
    )
   )
  )
  (set_local $$16
   (get_local $$5)
  )
  (set_local $$17
   (call $__ZN10emscripten8internal15EnumBindingTypeIN9FastNoise11FractalTypeEE12fromWireTypeES3_
    (get_local $$16)
   )
  )
  (call_indirect $FUNCSIG$vii
   (get_local $$9)
   (get_local $$17)
   (i32.add
    (i32.and
     (get_local $$18)
     (i32.const 127)
    )
    (i32.const 416)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return)
 )
 (func $__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFNS2_11FractalTypeEvEE10getContextES5_ (param $$0 i32) (result i32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$$index5 i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $sp)
  )
  (set_local $$$field
   (i32.load
    (get_local $$0)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$0)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (i32.store
   (get_local $$1)
   (get_local $$$field)
  )
  (set_local $$$index5
   (i32.add
    (get_local $$1)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index5)
   (get_local $$$field2)
  )
  (set_local $$2
   (call $__ZN10emscripten8internal10getContextIM9FastNoiseKFNS2_11FractalTypeEvEEEPT_RKS6_
    (get_local $$1)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvNS2_11FractalTypeEEE10getContextES5_ (param $$0 i32) (result i32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$$index5 i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $sp)
  )
  (set_local $$$field
   (i32.load
    (get_local $$0)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$0)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (i32.store
   (get_local $$1)
   (get_local $$$field)
  )
  (set_local $$$index5
   (i32.add
    (get_local $$1)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index5)
   (get_local $$$field2)
  )
  (set_local $$2
   (call $__ZN10emscripten8internal10getContextIM9FastNoiseFvNS2_11FractalTypeEEEEPT_RKS6_
    (get_local $$1)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal15EnumBindingTypeIN9FastNoise11FractalTypeEE10toWireTypeES3_ (param $$0 i32) (result i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (get_local $$1)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal15EnumBindingTypeIN9FastNoise11FractalTypeEE12fromWireTypeES3_ (param $$0 i32) (result i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (get_local $$1)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal10getContextIM9FastNoiseKFNS2_11FractalTypeEvEEEPT_RKS6_ (param $$0 i32) (result i32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$$index5 i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (call $__Znwj
    (i32.const 8)
   )
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$$field
   (i32.load
    (get_local $$3)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$3)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (i32.store
   (get_local $$2)
   (get_local $$$field)
  )
  (set_local $$$index5
   (i32.add
    (get_local $$2)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index5)
   (get_local $$$field2)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal10getContextIM9FastNoiseFvNS2_11FractalTypeEEEEPT_RKS6_ (param $$0 i32) (result i32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$$index5 i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (call $__Znwj
    (i32.const 8)
   )
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$$field
   (i32.load
    (get_local $$3)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$3)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (i32.store
   (get_local $$2)
   (get_local $$$field)
  )
  (set_local $$$index5
   (i32.add
    (get_local $$2)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index5)
   (get_local $$$field2)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFNS2_24CellularDistanceFunctionEvEE3getIS2_EES3_RKS5_RKT_ (param $$0 i32) (param $$1 i32) (result i32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 i32)
  (local $$14 i32)
  (local $$15 i32)
  (local $$16 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$2
   (get_local $$0)
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$4
   (get_local $$2)
  )
  (set_local $$$field
   (i32.load
    (get_local $$4)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$4)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (set_local $$5
   (get_local $$3)
  )
  (set_local $$6
   (i32.shr_s
    (get_local $$$field2)
    (i32.const 1)
   )
  )
  (set_local $$7
   (i32.add
    (get_local $$5)
    (get_local $$6)
   )
  )
  (set_local $$8
   (i32.and
    (get_local $$$field2)
    (i32.const 1)
   )
  )
  (set_local $$9
   (i32.ne
    (get_local $$8)
    (i32.const 0)
   )
  )
  (if
   (get_local $$9)
   (block
    (set_local $$10
     (i32.load
      (get_local $$7)
     )
    )
    (set_local $$11
     (i32.add
      (get_local $$10)
      (get_local $$$field)
     )
    )
    (set_local $$12
     (i32.load
      (get_local $$11)
     )
    )
    (set_local $$14
     (get_local $$12)
    )
   )
   (block
    (set_local $$13
     (get_local $$$field)
    )
    (set_local $$14
     (get_local $$13)
    )
   )
  )
  (set_local $$15
   (call_indirect $FUNCSIG$ii
    (get_local $$7)
    (i32.add
     (i32.and
      (get_local $$14)
      (i32.const 63)
     )
     (i32.const 544)
    )
   )
  )
  (set_local $$16
   (call $__ZN10emscripten8internal15EnumBindingTypeIN9FastNoise24CellularDistanceFunctionEE10toWireTypeES3_
    (get_local $$15)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$16)
  )
 )
 (func $__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvNS2_24CellularDistanceFunctionEEE3setIS2_EEvRKS5_RT_S3_ (param $$0 i32) (param $$1 i32) (param $$2 i32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 i32)
  (local $$14 i32)
  (local $$15 i32)
  (local $$16 i32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$3
   (get_local $$0)
  )
  (set_local $$4
   (get_local $$1)
  )
  (set_local $$5
   (get_local $$2)
  )
  (set_local $$6
   (get_local $$3)
  )
  (set_local $$$field
   (i32.load
    (get_local $$6)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$6)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (set_local $$7
   (get_local $$4)
  )
  (set_local $$8
   (i32.shr_s
    (get_local $$$field2)
    (i32.const 1)
   )
  )
  (set_local $$9
   (i32.add
    (get_local $$7)
    (get_local $$8)
   )
  )
  (set_local $$10
   (i32.and
    (get_local $$$field2)
    (i32.const 1)
   )
  )
  (set_local $$11
   (i32.ne
    (get_local $$10)
    (i32.const 0)
   )
  )
  (if
   (get_local $$11)
   (block
    (set_local $$12
     (i32.load
      (get_local $$9)
     )
    )
    (set_local $$13
     (i32.add
      (get_local $$12)
      (get_local $$$field)
     )
    )
    (set_local $$14
     (i32.load
      (get_local $$13)
     )
    )
    (set_local $$18
     (get_local $$14)
    )
   )
   (block
    (set_local $$15
     (get_local $$$field)
    )
    (set_local $$18
     (get_local $$15)
    )
   )
  )
  (set_local $$16
   (get_local $$5)
  )
  (set_local $$17
   (call $__ZN10emscripten8internal15EnumBindingTypeIN9FastNoise24CellularDistanceFunctionEE12fromWireTypeES3_
    (get_local $$16)
   )
  )
  (call_indirect $FUNCSIG$vii
   (get_local $$9)
   (get_local $$17)
   (i32.add
    (i32.and
     (get_local $$18)
     (i32.const 127)
    )
    (i32.const 416)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return)
 )
 (func $__ZN10emscripten8internal12GetterPolicyIM9FastNoiseKFNS2_24CellularDistanceFunctionEvEE10getContextES5_ (param $$0 i32) (result i32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$$index5 i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $sp)
  )
  (set_local $$$field
   (i32.load
    (get_local $$0)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$0)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (i32.store
   (get_local $$1)
   (get_local $$$field)
  )
  (set_local $$$index5
   (i32.add
    (get_local $$1)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index5)
   (get_local $$$field2)
  )
  (set_local $$2
   (call $__ZN10emscripten8internal10getContextIM9FastNoiseKFNS2_24CellularDistanceFunctionEvEEEPT_RKS6_
    (get_local $$1)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal12SetterPolicyIM9FastNoiseFvNS2_24CellularDistanceFunctionEEE10getContextES5_ (param $$0 i32) (result i32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$$index5 i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $sp)
  )
  (set_local $$$field
   (i32.load
    (get_local $$0)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$0)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (i32.store
   (get_local $$1)
   (get_local $$$field)
  )
  (set_local $$$index5
   (i32.add
    (get_local $$1)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index5)
   (get_local $$$field2)
  )
  (set_local $$2
   (call $__ZN10emscripten8internal10getContextIM9FastNoiseFvNS2_24CellularDistanceFunctionEEEEPT_RKS6_
    (get_local $$1)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal15EnumBindingTypeIN9FastNoise24CellularDistanceFunctionEE10toWireTypeES3_ (param $$0 i32) (result i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (get_local $$1)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal15EnumBindingTypeIN9FastNoise24CellularDistanceFunctionEE12fromWireTypeES3_ (param $$0 i32) (result i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (get_local $$1)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal10getContextIM9FastNoiseKFNS2_24CellularDistanceFunctionEvEEEPT_RKS6_ (param $$0 i32) (result i32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$$index5 i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (call $__Znwj
    (i32.const 8)
   )
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$$field
   (i32.load
    (get_local $$3)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$3)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (i32.store
   (get_local $$2)
   (get_local $$$field)
  )
  (set_local $$$index5
   (i32.add
    (get_local $$2)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index5)
   (get_local $$$field2)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal10getContextIM9FastNoiseFvNS2_24CellularDistanceFunctionEEEEPT_RKS6_ (param $$0 i32) (result i32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$$index5 i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (call $__Znwj
    (i32.const 8)
   )
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$$field
   (i32.load
    (get_local $$3)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$3)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (i32.store
   (get_local $$2)
   (get_local $$$field)
  )
  (set_local $$$index5
   (i32.add
    (get_local $$2)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index5)
   (get_local $$$field2)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal13MethodInvokerIM9FastNoiseKFfffEfPKS2_JffEE6invokeERKS4_S6_ff (param $$0 i32) (param $$1 i32) (param $$2 f32) (param $$3 f32) (result f32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 i32)
  (local $$14 i32)
  (local $$15 i32)
  (local $$16 i32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$19 i32)
  (local $$20 f32)
  (local $$21 f32)
  (local $$22 f32)
  (local $$23 f32)
  (local $$24 i32)
  (local $$25 f32)
  (local $$26 f32)
  (local $$4 i32)
  (local $$5 i32)
  (local $$6 f32)
  (local $$7 f32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 32)
   )
  )
  (set_local $$8
   (get_local $sp)
  )
  (set_local $$4
   (get_local $$0)
  )
  (set_local $$5
   (get_local $$1)
  )
  (set_local $$6
   (get_local $$2)
  )
  (set_local $$7
   (get_local $$3)
  )
  (set_local $$9
   (get_local $$4)
  )
  (set_local $$$field
   (i32.load
    (get_local $$9)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$9)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (set_local $$10
   (get_local $$5)
  )
  (set_local $$11
   (call $__ZN10emscripten8internal11BindingTypeIPK9FastNoiseE12fromWireTypeES4_
    (get_local $$10)
   )
  )
  (set_local $$12
   (i32.shr_s
    (get_local $$$field2)
    (i32.const 1)
   )
  )
  (set_local $$13
   (i32.add
    (get_local $$11)
    (get_local $$12)
   )
  )
  (set_local $$14
   (i32.and
    (get_local $$$field2)
    (i32.const 1)
   )
  )
  (set_local $$15
   (i32.ne
    (get_local $$14)
    (i32.const 0)
   )
  )
  (if
   (get_local $$15)
   (block
    (set_local $$16
     (i32.load
      (get_local $$13)
     )
    )
    (set_local $$17
     (i32.add
      (get_local $$16)
      (get_local $$$field)
     )
    )
    (set_local $$18
     (i32.load
      (get_local $$17)
     )
    )
    (set_local $$24
     (get_local $$18)
    )
   )
   (block
    (set_local $$19
     (get_local $$$field)
    )
    (set_local $$24
     (get_local $$19)
    )
   )
  )
  (set_local $$20
   (get_local $$6)
  )
  (set_local $$21
   (call $__ZN10emscripten8internal11BindingTypeIfE12fromWireTypeEf
    (get_local $$20)
   )
  )
  (set_local $$22
   (get_local $$7)
  )
  (set_local $$23
   (call $__ZN10emscripten8internal11BindingTypeIfE12fromWireTypeEf
    (get_local $$22)
   )
  )
  (set_local $$25
   (call_indirect $FUNCSIG$fiff
    (get_local $$13)
    (get_local $$21)
    (get_local $$23)
    (i32.add
     (i32.and
      (get_local $$24)
      (i32.const 127)
     )
     (i32.const 160)
    )
   )
  )
  (f32.store
   (get_local $$8)
   (get_local $$25)
  )
  (set_local $$26
   (call $__ZN10emscripten8internal11BindingTypeIfE10toWireTypeERKf
    (get_local $$8)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$26)
  )
 )
 (func $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getCountEv (param $$0 i32) (result i32)
  (local $$1 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (i32.const 4)
  )
 )
 (func $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEE8getTypesEv (param $$0 i32) (result i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (call $__ZN10emscripten8internal14ArgArrayGetterINS0_8TypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEEEE3getEv)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal10getContextIM9FastNoiseKFfffEEEPT_RKS5_ (param $$0 i32) (result i32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$$index5 i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (call $__Znwj
    (i32.const 8)
   )
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$$field
   (i32.load
    (get_local $$3)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$3)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (i32.store
   (get_local $$2)
   (get_local $$$field)
  )
  (set_local $$$index5
   (i32.add
    (get_local $$2)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index5)
   (get_local $$$field2)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal11BindingTypeIPK9FastNoiseE12fromWireTypeES4_ (param $$0 i32) (result i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (get_local $$1)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal14ArgArrayGetterINS0_8TypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffEEEE3getEv (result i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (return
   (i32.const 1568)
  )
 )
 (func $__ZN10emscripten8internal19getGenericSignatureIJfiiffEEEPKcv (result i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (return
   (i32.const 9883)
  )
 )
 (func $__ZN10emscripten8internal13MethodInvokerIM9FastNoiseKFfiiEfPKS2_JiiEE6invokeERKS4_S6_ii (param $$0 i32) (param $$1 i32) (param $$2 i32) (param $$3 i32) (result f32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 i32)
  (local $$14 i32)
  (local $$15 i32)
  (local $$16 i32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$19 i32)
  (local $$20 i32)
  (local $$21 i32)
  (local $$22 i32)
  (local $$23 i32)
  (local $$24 i32)
  (local $$25 f32)
  (local $$26 f32)
  (local $$4 i32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 32)
   )
  )
  (set_local $$8
   (get_local $sp)
  )
  (set_local $$4
   (get_local $$0)
  )
  (set_local $$5
   (get_local $$1)
  )
  (set_local $$6
   (get_local $$2)
  )
  (set_local $$7
   (get_local $$3)
  )
  (set_local $$9
   (get_local $$4)
  )
  (set_local $$$field
   (i32.load
    (get_local $$9)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$9)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (set_local $$10
   (get_local $$5)
  )
  (set_local $$11
   (call $__ZN10emscripten8internal11BindingTypeIPK9FastNoiseE12fromWireTypeES4_
    (get_local $$10)
   )
  )
  (set_local $$12
   (i32.shr_s
    (get_local $$$field2)
    (i32.const 1)
   )
  )
  (set_local $$13
   (i32.add
    (get_local $$11)
    (get_local $$12)
   )
  )
  (set_local $$14
   (i32.and
    (get_local $$$field2)
    (i32.const 1)
   )
  )
  (set_local $$15
   (i32.ne
    (get_local $$14)
    (i32.const 0)
   )
  )
  (if
   (get_local $$15)
   (block
    (set_local $$16
     (i32.load
      (get_local $$13)
     )
    )
    (set_local $$17
     (i32.add
      (get_local $$16)
      (get_local $$$field)
     )
    )
    (set_local $$18
     (i32.load
      (get_local $$17)
     )
    )
    (set_local $$24
     (get_local $$18)
    )
   )
   (block
    (set_local $$19
     (get_local $$$field)
    )
    (set_local $$24
     (get_local $$19)
    )
   )
  )
  (set_local $$20
   (get_local $$6)
  )
  (set_local $$21
   (call $__ZN10emscripten8internal11BindingTypeIiE12fromWireTypeEi
    (get_local $$20)
   )
  )
  (set_local $$22
   (get_local $$7)
  )
  (set_local $$23
   (call $__ZN10emscripten8internal11BindingTypeIiE12fromWireTypeEi
    (get_local $$22)
   )
  )
  (set_local $$25
   (call_indirect $FUNCSIG$fiii
    (get_local $$13)
    (get_local $$21)
    (get_local $$23)
    (i32.add
     (i32.and
      (get_local $$24)
      (i32.const 127)
     )
     (i32.const 1568)
    )
   )
  )
  (f32.store
   (get_local $$8)
   (get_local $$25)
  )
  (set_local $$26
   (call $__ZN10emscripten8internal11BindingTypeIfE10toWireTypeERKf
    (get_local $$8)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$26)
  )
 )
 (func $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEiiEE8getCountEv (param $$0 i32) (result i32)
  (local $$1 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (i32.const 4)
  )
 )
 (func $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEiiEE8getTypesEv (param $$0 i32) (result i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (call $__ZN10emscripten8internal14ArgArrayGetterINS0_8TypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEiiEEEE3getEv)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal10getContextIM9FastNoiseKFfiiEEEPT_RKS5_ (param $$0 i32) (result i32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$$index5 i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (call $__Znwj
    (i32.const 8)
   )
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$$field
   (i32.load
    (get_local $$3)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$3)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (i32.store
   (get_local $$2)
   (get_local $$$field)
  )
  (set_local $$$index5
   (i32.add
    (get_local $$2)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index5)
   (get_local $$$field2)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal14ArgArrayGetterINS0_8TypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEiiEEEE3getEv (result i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (return
   (i32.const 1584)
  )
 )
 (func $__ZN10emscripten8internal19getGenericSignatureIJfiiiiEEEPKcv (result i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (return
   (i32.const 9889)
  )
 )
 (func $__ZN10emscripten8internal13MethodInvokerIM9FastNoiseKFffffEfPKS2_JfffEE6invokeERKS4_S6_fff (param $$0 i32) (param $$1 i32) (param $$2 f32) (param $$3 f32) (param $$4 f32) (result f32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 i32)
  (local $$14 i32)
  (local $$15 i32)
  (local $$16 i32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$19 i32)
  (local $$20 i32)
  (local $$21 i32)
  (local $$22 f32)
  (local $$23 f32)
  (local $$24 f32)
  (local $$25 f32)
  (local $$26 f32)
  (local $$27 f32)
  (local $$28 i32)
  (local $$29 f32)
  (local $$30 f32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 f32)
  (local $$8 f32)
  (local $$9 f32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 32)
   )
  )
  (set_local $$10
   (get_local $sp)
  )
  (set_local $$5
   (get_local $$0)
  )
  (set_local $$6
   (get_local $$1)
  )
  (set_local $$7
   (get_local $$2)
  )
  (set_local $$8
   (get_local $$3)
  )
  (set_local $$9
   (get_local $$4)
  )
  (set_local $$11
   (get_local $$5)
  )
  (set_local $$$field
   (i32.load
    (get_local $$11)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$11)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (set_local $$12
   (get_local $$6)
  )
  (set_local $$13
   (call $__ZN10emscripten8internal11BindingTypeIPK9FastNoiseE12fromWireTypeES4_
    (get_local $$12)
   )
  )
  (set_local $$14
   (i32.shr_s
    (get_local $$$field2)
    (i32.const 1)
   )
  )
  (set_local $$15
   (i32.add
    (get_local $$13)
    (get_local $$14)
   )
  )
  (set_local $$16
   (i32.and
    (get_local $$$field2)
    (i32.const 1)
   )
  )
  (set_local $$17
   (i32.ne
    (get_local $$16)
    (i32.const 0)
   )
  )
  (if
   (get_local $$17)
   (block
    (set_local $$18
     (i32.load
      (get_local $$15)
     )
    )
    (set_local $$19
     (i32.add
      (get_local $$18)
      (get_local $$$field)
     )
    )
    (set_local $$20
     (i32.load
      (get_local $$19)
     )
    )
    (set_local $$28
     (get_local $$20)
    )
   )
   (block
    (set_local $$21
     (get_local $$$field)
    )
    (set_local $$28
     (get_local $$21)
    )
   )
  )
  (set_local $$22
   (get_local $$7)
  )
  (set_local $$23
   (call $__ZN10emscripten8internal11BindingTypeIfE12fromWireTypeEf
    (get_local $$22)
   )
  )
  (set_local $$24
   (get_local $$8)
  )
  (set_local $$25
   (call $__ZN10emscripten8internal11BindingTypeIfE12fromWireTypeEf
    (get_local $$24)
   )
  )
  (set_local $$26
   (get_local $$9)
  )
  (set_local $$27
   (call $__ZN10emscripten8internal11BindingTypeIfE12fromWireTypeEf
    (get_local $$26)
   )
  )
  (set_local $$29
   (call_indirect $FUNCSIG$fifff
    (get_local $$15)
    (get_local $$23)
    (get_local $$25)
    (get_local $$27)
    (i32.add
     (i32.and
      (get_local $$28)
      (i32.const 127)
     )
     (i32.const 736)
    )
   )
  )
  (f32.store
   (get_local $$10)
   (get_local $$29)
  )
  (set_local $$30
   (call $__ZN10emscripten8internal11BindingTypeIfE10toWireTypeERKf
    (get_local $$10)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$30)
  )
 )
 (func $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getCountEv (param $$0 i32) (result i32)
  (local $$1 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (i32.const 5)
  )
 )
 (func $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEE8getTypesEv (param $$0 i32) (result i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (call $__ZN10emscripten8internal14ArgArrayGetterINS0_8TypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEEEE3getEv)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal10getContextIM9FastNoiseKFffffEEEPT_RKS5_ (param $$0 i32) (result i32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$$index5 i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (call $__Znwj
    (i32.const 8)
   )
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$$field
   (i32.load
    (get_local $$3)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$3)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (i32.store
   (get_local $$2)
   (get_local $$$field)
  )
  (set_local $$$index5
   (i32.add
    (get_local $$2)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index5)
   (get_local $$$field2)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal14ArgArrayGetterINS0_8TypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEfffEEEE3getEv (result i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (return
   (i32.const 1600)
  )
 )
 (func $__ZN10emscripten8internal19getGenericSignatureIJfiifffEEEPKcv (result i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (return
   (i32.const 9895)
  )
 )
 (func $__ZN10emscripten8internal13MethodInvokerIM9FastNoiseKFfiiiEfPKS2_JiiiEE6invokeERKS4_S6_iii (param $$0 i32) (param $$1 i32) (param $$2 i32) (param $$3 i32) (param $$4 i32) (result f32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 i32)
  (local $$14 i32)
  (local $$15 i32)
  (local $$16 i32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$19 i32)
  (local $$20 i32)
  (local $$21 i32)
  (local $$22 i32)
  (local $$23 i32)
  (local $$24 i32)
  (local $$25 i32)
  (local $$26 i32)
  (local $$27 i32)
  (local $$28 i32)
  (local $$29 f32)
  (local $$30 f32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 32)
   )
  )
  (set_local $$10
   (get_local $sp)
  )
  (set_local $$5
   (get_local $$0)
  )
  (set_local $$6
   (get_local $$1)
  )
  (set_local $$7
   (get_local $$2)
  )
  (set_local $$8
   (get_local $$3)
  )
  (set_local $$9
   (get_local $$4)
  )
  (set_local $$11
   (get_local $$5)
  )
  (set_local $$$field
   (i32.load
    (get_local $$11)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$11)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (set_local $$12
   (get_local $$6)
  )
  (set_local $$13
   (call $__ZN10emscripten8internal11BindingTypeIPK9FastNoiseE12fromWireTypeES4_
    (get_local $$12)
   )
  )
  (set_local $$14
   (i32.shr_s
    (get_local $$$field2)
    (i32.const 1)
   )
  )
  (set_local $$15
   (i32.add
    (get_local $$13)
    (get_local $$14)
   )
  )
  (set_local $$16
   (i32.and
    (get_local $$$field2)
    (i32.const 1)
   )
  )
  (set_local $$17
   (i32.ne
    (get_local $$16)
    (i32.const 0)
   )
  )
  (if
   (get_local $$17)
   (block
    (set_local $$18
     (i32.load
      (get_local $$15)
     )
    )
    (set_local $$19
     (i32.add
      (get_local $$18)
      (get_local $$$field)
     )
    )
    (set_local $$20
     (i32.load
      (get_local $$19)
     )
    )
    (set_local $$28
     (get_local $$20)
    )
   )
   (block
    (set_local $$21
     (get_local $$$field)
    )
    (set_local $$28
     (get_local $$21)
    )
   )
  )
  (set_local $$22
   (get_local $$7)
  )
  (set_local $$23
   (call $__ZN10emscripten8internal11BindingTypeIiE12fromWireTypeEi
    (get_local $$22)
   )
  )
  (set_local $$24
   (get_local $$8)
  )
  (set_local $$25
   (call $__ZN10emscripten8internal11BindingTypeIiE12fromWireTypeEi
    (get_local $$24)
   )
  )
  (set_local $$26
   (get_local $$9)
  )
  (set_local $$27
   (call $__ZN10emscripten8internal11BindingTypeIiE12fromWireTypeEi
    (get_local $$26)
   )
  )
  (set_local $$29
   (call_indirect $FUNCSIG$fiiii
    (get_local $$15)
    (get_local $$23)
    (get_local $$25)
    (get_local $$27)
    (i32.add
     (i32.and
      (get_local $$28)
      (i32.const 127)
     )
     (i32.const 2048)
    )
   )
  )
  (f32.store
   (get_local $$10)
   (get_local $$29)
  )
  (set_local $$30
   (call $__ZN10emscripten8internal11BindingTypeIfE10toWireTypeERKf
    (get_local $$10)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$30)
  )
 )
 (func $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEiiiEE8getCountEv (param $$0 i32) (result i32)
  (local $$1 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (i32.const 5)
  )
 )
 (func $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEiiiEE8getTypesEv (param $$0 i32) (result i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (call $__ZN10emscripten8internal14ArgArrayGetterINS0_8TypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEiiiEEEE3getEv)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal10getContextIM9FastNoiseKFfiiiEEEPT_RKS5_ (param $$0 i32) (result i32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$$index5 i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (call $__Znwj
    (i32.const 8)
   )
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$$field
   (i32.load
    (get_local $$3)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$3)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (i32.store
   (get_local $$2)
   (get_local $$$field)
  )
  (set_local $$$index5
   (i32.add
    (get_local $$2)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index5)
   (get_local $$$field2)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal14ArgArrayGetterINS0_8TypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEiiiEEEE3getEv (result i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (return
   (i32.const 1620)
  )
 )
 (func $__ZN10emscripten8internal19getGenericSignatureIJfiiiiiEEEPKcv (result i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (return
   (i32.const 9902)
  )
 )
 (func $__ZN10emscripten8internal13MethodInvokerIM9FastNoiseKFfffffEfPKS2_JffffEE6invokeERKS4_S6_ffff (param $$0 i32) (param $$1 i32) (param $$2 f32) (param $$3 f32) (param $$4 f32) (param $$5 f32) (result f32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$10 f32)
  (local $$11 f32)
  (local $$12 i32)
  (local $$13 i32)
  (local $$14 i32)
  (local $$15 i32)
  (local $$16 i32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$19 i32)
  (local $$20 i32)
  (local $$21 i32)
  (local $$22 i32)
  (local $$23 i32)
  (local $$24 f32)
  (local $$25 f32)
  (local $$26 f32)
  (local $$27 f32)
  (local $$28 f32)
  (local $$29 f32)
  (local $$30 f32)
  (local $$31 f32)
  (local $$32 i32)
  (local $$33 f32)
  (local $$34 f32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 f32)
  (local $$9 f32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 32)
   )
  )
  (set_local $$12
   (get_local $sp)
  )
  (set_local $$6
   (get_local $$0)
  )
  (set_local $$7
   (get_local $$1)
  )
  (set_local $$8
   (get_local $$2)
  )
  (set_local $$9
   (get_local $$3)
  )
  (set_local $$10
   (get_local $$4)
  )
  (set_local $$11
   (get_local $$5)
  )
  (set_local $$13
   (get_local $$6)
  )
  (set_local $$$field
   (i32.load
    (get_local $$13)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$13)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (set_local $$14
   (get_local $$7)
  )
  (set_local $$15
   (call $__ZN10emscripten8internal11BindingTypeIPK9FastNoiseE12fromWireTypeES4_
    (get_local $$14)
   )
  )
  (set_local $$16
   (i32.shr_s
    (get_local $$$field2)
    (i32.const 1)
   )
  )
  (set_local $$17
   (i32.add
    (get_local $$15)
    (get_local $$16)
   )
  )
  (set_local $$18
   (i32.and
    (get_local $$$field2)
    (i32.const 1)
   )
  )
  (set_local $$19
   (i32.ne
    (get_local $$18)
    (i32.const 0)
   )
  )
  (if
   (get_local $$19)
   (block
    (set_local $$20
     (i32.load
      (get_local $$17)
     )
    )
    (set_local $$21
     (i32.add
      (get_local $$20)
      (get_local $$$field)
     )
    )
    (set_local $$22
     (i32.load
      (get_local $$21)
     )
    )
    (set_local $$32
     (get_local $$22)
    )
   )
   (block
    (set_local $$23
     (get_local $$$field)
    )
    (set_local $$32
     (get_local $$23)
    )
   )
  )
  (set_local $$24
   (get_local $$8)
  )
  (set_local $$25
   (call $__ZN10emscripten8internal11BindingTypeIfE12fromWireTypeEf
    (get_local $$24)
   )
  )
  (set_local $$26
   (get_local $$9)
  )
  (set_local $$27
   (call $__ZN10emscripten8internal11BindingTypeIfE12fromWireTypeEf
    (get_local $$26)
   )
  )
  (set_local $$28
   (get_local $$10)
  )
  (set_local $$29
   (call $__ZN10emscripten8internal11BindingTypeIfE12fromWireTypeEf
    (get_local $$28)
   )
  )
  (set_local $$30
   (get_local $$11)
  )
  (set_local $$31
   (call $__ZN10emscripten8internal11BindingTypeIfE12fromWireTypeEf
    (get_local $$30)
   )
  )
  (set_local $$33
   (call_indirect $FUNCSIG$fiffff
    (get_local $$17)
    (get_local $$25)
    (get_local $$27)
    (get_local $$29)
    (get_local $$31)
    (i32.add
     (i32.and
      (get_local $$32)
      (i32.const 127)
     )
     (i32.const 992)
    )
   )
  )
  (f32.store
   (get_local $$12)
   (get_local $$33)
  )
  (set_local $$34
   (call $__ZN10emscripten8internal11BindingTypeIfE10toWireTypeERKf
    (get_local $$12)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$34)
  )
 )
 (func $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffffEE8getCountEv (param $$0 i32) (result i32)
  (local $$1 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (i32.const 6)
  )
 )
 (func $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffffEE8getTypesEv (param $$0 i32) (result i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (call $__ZN10emscripten8internal14ArgArrayGetterINS0_8TypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffffEEEE3getEv)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal10getContextIM9FastNoiseKFfffffEEEPT_RKS5_ (param $$0 i32) (result i32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$$index5 i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (call $__Znwj
    (i32.const 8)
   )
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$$field
   (i32.load
    (get_local $$3)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$3)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (i32.store
   (get_local $$2)
   (get_local $$$field)
  )
  (set_local $$$index5
   (i32.add
    (get_local $$2)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index5)
   (get_local $$$field2)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal14ArgArrayGetterINS0_8TypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEffffEEEE3getEv (result i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (return
   (i32.const 1640)
  )
 )
 (func $__ZN10emscripten8internal19getGenericSignatureIJfiiffffEEEPKcv (result i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (return
   (i32.const 9909)
  )
 )
 (func $__ZN10emscripten8internal13MethodInvokerIM9FastNoiseKFfiiiiEfPKS2_JiiiiEE6invokeERKS4_S6_iiii (param $$0 i32) (param $$1 i32) (param $$2 i32) (param $$3 i32) (param $$4 i32) (param $$5 i32) (result f32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 i32)
  (local $$14 i32)
  (local $$15 i32)
  (local $$16 i32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$19 i32)
  (local $$20 i32)
  (local $$21 i32)
  (local $$22 i32)
  (local $$23 i32)
  (local $$24 i32)
  (local $$25 i32)
  (local $$26 i32)
  (local $$27 i32)
  (local $$28 i32)
  (local $$29 i32)
  (local $$30 i32)
  (local $$31 i32)
  (local $$32 i32)
  (local $$33 f32)
  (local $$34 f32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 32)
   )
  )
  (set_local $$12
   (get_local $sp)
  )
  (set_local $$6
   (get_local $$0)
  )
  (set_local $$7
   (get_local $$1)
  )
  (set_local $$8
   (get_local $$2)
  )
  (set_local $$9
   (get_local $$3)
  )
  (set_local $$10
   (get_local $$4)
  )
  (set_local $$11
   (get_local $$5)
  )
  (set_local $$13
   (get_local $$6)
  )
  (set_local $$$field
   (i32.load
    (get_local $$13)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$13)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (set_local $$14
   (get_local $$7)
  )
  (set_local $$15
   (call $__ZN10emscripten8internal11BindingTypeIPK9FastNoiseE12fromWireTypeES4_
    (get_local $$14)
   )
  )
  (set_local $$16
   (i32.shr_s
    (get_local $$$field2)
    (i32.const 1)
   )
  )
  (set_local $$17
   (i32.add
    (get_local $$15)
    (get_local $$16)
   )
  )
  (set_local $$18
   (i32.and
    (get_local $$$field2)
    (i32.const 1)
   )
  )
  (set_local $$19
   (i32.ne
    (get_local $$18)
    (i32.const 0)
   )
  )
  (if
   (get_local $$19)
   (block
    (set_local $$20
     (i32.load
      (get_local $$17)
     )
    )
    (set_local $$21
     (i32.add
      (get_local $$20)
      (get_local $$$field)
     )
    )
    (set_local $$22
     (i32.load
      (get_local $$21)
     )
    )
    (set_local $$32
     (get_local $$22)
    )
   )
   (block
    (set_local $$23
     (get_local $$$field)
    )
    (set_local $$32
     (get_local $$23)
    )
   )
  )
  (set_local $$24
   (get_local $$8)
  )
  (set_local $$25
   (call $__ZN10emscripten8internal11BindingTypeIiE12fromWireTypeEi
    (get_local $$24)
   )
  )
  (set_local $$26
   (get_local $$9)
  )
  (set_local $$27
   (call $__ZN10emscripten8internal11BindingTypeIiE12fromWireTypeEi
    (get_local $$26)
   )
  )
  (set_local $$28
   (get_local $$10)
  )
  (set_local $$29
   (call $__ZN10emscripten8internal11BindingTypeIiE12fromWireTypeEi
    (get_local $$28)
   )
  )
  (set_local $$30
   (get_local $$11)
  )
  (set_local $$31
   (call $__ZN10emscripten8internal11BindingTypeIiE12fromWireTypeEi
    (get_local $$30)
   )
  )
  (set_local $$33
   (call_indirect $FUNCSIG$fiiiii
    (get_local $$17)
    (get_local $$25)
    (get_local $$27)
    (get_local $$29)
    (get_local $$31)
    (i32.add
     (i32.and
      (get_local $$32)
      (i32.const 127)
     )
     (i32.const 1696)
    )
   )
  )
  (f32.store
   (get_local $$12)
   (get_local $$33)
  )
  (set_local $$34
   (call $__ZN10emscripten8internal11BindingTypeIfE10toWireTypeERKf
    (get_local $$12)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$34)
  )
 )
 (func $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEiiiiEE8getCountEv (param $$0 i32) (result i32)
  (local $$1 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (i32.const 6)
  )
 )
 (func $__ZNK10emscripten8internal12WithPoliciesIJEE11ArgTypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEiiiiEE8getTypesEv (param $$0 i32) (result i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (call $__ZN10emscripten8internal14ArgArrayGetterINS0_8TypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEiiiiEEEE3getEv)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal10getContextIM9FastNoiseKFfiiiiEEEPT_RKS5_ (param $$0 i32) (result i32)
  (local $$$field i32)
  (local $$$field2 i32)
  (local $$$index1 i32)
  (local $$$index5 i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (call $__Znwj
    (i32.const 8)
   )
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$$field
   (i32.load
    (get_local $$3)
   )
  )
  (set_local $$$index1
   (i32.add
    (get_local $$3)
    (i32.const 4)
   )
  )
  (set_local $$$field2
   (i32.load
    (get_local $$$index1)
   )
  )
  (i32.store
   (get_local $$2)
   (get_local $$$field)
  )
  (set_local $$$index5
   (i32.add
    (get_local $$2)
    (i32.const 4)
   )
  )
  (i32.store
   (get_local $$$index5)
   (get_local $$$field2)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$2)
  )
 )
 (func $__ZN10emscripten8internal14ArgArrayGetterINS0_8TypeListIJfNS0_17AllowedRawPointerIK9FastNoiseEEiiiiEEEE3getEv (result i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (return
   (i32.const 1664)
  )
 )
 (func $__ZN10emscripten8internal19getGenericSignatureIJfiiiiiiEEEPKcv (result i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (return
   (i32.const 9917)
  )
 )
 (func $__GLOBAL__sub_I_EMBindings_cpp
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (call $___cxx_global_var_init)
  (return)
 )
 (func $__GLOBAL__sub_I_FastNoise_cpp
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (call $___cxx_global_var_init_2)
  (call $___cxx_global_var_init_1)
  (return)
 )
 (func $___cxx_global_var_init_2
  (local $$0 f32)
  (local $$1 f32)
  (local $$2 f32)
  (local $$3 f32)
  (local $$4 f32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$0
   (f32.const 5)
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (f32.sqrt
    (get_local $$1)
   )
  )
  (set_local $$3
   (f32.sub
    (get_local $$2)
    (f32.const 1)
   )
  )
  (set_local $$4
   (f32.div
    (get_local $$3)
    (f32.const 4)
   )
  )
  (f32.store
   (i32.const 12036)
   (get_local $$4)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return)
 )
 (func $___cxx_global_var_init_1
  (local $$0 f32)
  (local $$1 f32)
  (local $$2 f32)
  (local $$3 f32)
  (local $$4 f32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$0
   (f32.const 5)
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (f32.sqrt
    (get_local $$1)
   )
  )
  (set_local $$3
   (f32.sub
    (f32.const 5)
    (get_local $$2)
   )
  )
  (set_local $$4
   (f32.div
    (get_local $$3)
    (f32.const 2)
   )
  )
  (f32.store
   (i32.const 12032)
   (get_local $$4)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return)
 )
 (func $i32s-rem (param $0 i32) (param $1 i32) (result i32)
  (if (result i32)
   (i32.eqz
    (get_local $1)
   )
   (i32.const 0)
   (i32.rem_s
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $__ZN9FastNoise7SetSeedEi (param $$0 i32) (param $$1 i32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 i32)
  (local $$14 i32)
  (local $$15 i32)
  (local $$16 i32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$19 i32)
  (local $$2 i32)
  (local $$20 i32)
  (local $$21 i32)
  (local $$22 i32)
  (local $$23 i32)
  (local $$24 i32)
  (local $$25 i32)
  (local $$26 i32)
  (local $$27 i32)
  (local $$28 i32)
  (local $$29 i32)
  (local $$3 i32)
  (local $$30 i32)
  (local $$31 i32)
  (local $$32 i32)
  (local $$33 i32)
  (local $$34 i32)
  (local $$35 i32)
  (local $$36 i32)
  (local $$37 i32)
  (local $$38 i32)
  (local $$39 i32)
  (local $$4 i32)
  (local $$40 i32)
  (local $$41 i32)
  (local $$42 i32)
  (local $$43 i32)
  (local $$44 i32)
  (local $$45 i32)
  (local $$46 i32)
  (local $$47 i32)
  (local $$48 i32)
  (local $$49 i32)
  (local $$5 i32)
  (local $$50 i32)
  (local $$51 i32)
  (local $$52 i32)
  (local $$53 i32)
  (local $$54 i32)
  (local $$55 i32)
  (local $$56 i32)
  (local $$57 i32)
  (local $$58 i32)
  (local $$59 i32)
  (local $$6 i32)
  (local $$60 i32)
  (local $$61 i32)
  (local $$62 i32)
  (local $$63 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 2544)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 2544)
   )
  )
  (set_local $$6
   (i32.add
    (get_local $sp)
    (i32.const 24)
   )
  )
  (set_local $$9
   (i32.add
    (get_local $sp)
    (i32.const 8)
   )
  )
  (set_local $$4
   (get_local $$0)
  )
  (set_local $$5
   (get_local $$1)
  )
  (set_local $$12
   (get_local $$4)
  )
  (set_local $$13
   (get_local $$5)
  )
  (set_local $$14
   (i32.add
    (get_local $$12)
    (i32.const 1024)
   )
  )
  (i32.store
   (get_local $$14)
   (get_local $$13)
  )
  (set_local $$15
   (get_local $$5)
  )
  (set_local $$2
   (get_local $$6)
  )
  (set_local $$3
   (get_local $$15)
  )
  (set_local $$16
   (get_local $$2)
  )
  (set_local $$17
   (get_local $$3)
  )
  (call $__ZNSt3__223mersenne_twister_engineIjLj32ELj624ELj397ELj31ELj2567483615ELj11ELj4294967295ELj7ELj2636928640ELj15ELj4022730752ELj18ELj1812433253EE4seedEj
   (get_local $$16)
   (get_local $$17)
  )
  (set_local $$7
   (i32.const 0)
  )
  (loop $while-in
   (block $while-out
    (set_local $$18
     (get_local $$7)
    )
    (set_local $$19
     (i32.lt_s
      (get_local $$18)
      (i32.const 256)
     )
    )
    (if
     (i32.eqz
      (get_local $$19)
     )
     (br $while-out)
    )
    (set_local $$20
     (get_local $$7)
    )
    (set_local $$21
     (i32.and
      (get_local $$20)
      (i32.const 255)
     )
    )
    (set_local $$22
     (get_local $$7)
    )
    (set_local $$23
     (i32.add
      (get_local $$12)
      (get_local $$22)
     )
    )
    (i32.store8
     (get_local $$23)
     (get_local $$21)
    )
    (set_local $$24
     (get_local $$7)
    )
    (set_local $$25
     (i32.add
      (get_local $$24)
      (i32.const 1)
     )
    )
    (set_local $$7
     (get_local $$25)
    )
    (br $while-in)
   )
  )
  (set_local $$8
   (i32.const 0)
  )
  (loop $while-in1
   (block $while-out0
    (set_local $$26
     (get_local $$8)
    )
    (set_local $$27
     (i32.lt_s
      (get_local $$26)
      (i32.const 256)
     )
    )
    (if
     (i32.eqz
      (get_local $$27)
     )
     (br $while-out0)
    )
    (set_local $$28
     (get_local $$8)
    )
    (set_local $$29
     (i32.sub
      (i32.const 256)
      (get_local $$28)
     )
    )
    (call $__ZNSt3__224uniform_int_distributionIiEC2Eii
     (get_local $$9)
     (i32.const 0)
     (get_local $$29)
    )
    (set_local $$30
     (call $__ZNSt3__224uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLj32ELj624ELj397ELj31ELj2567483615ELj11ELj4294967295ELj7ELj2636928640ELj15ELj4022730752ELj18ELj1812433253EEEEEiRT_
      (get_local $$9)
      (get_local $$6)
     )
    )
    (set_local $$31
     (get_local $$8)
    )
    (set_local $$32
     (i32.add
      (get_local $$30)
      (get_local $$31)
     )
    )
    (set_local $$10
     (get_local $$32)
    )
    (set_local $$33
     (get_local $$8)
    )
    (set_local $$34
     (i32.add
      (get_local $$12)
      (get_local $$33)
     )
    )
    (set_local $$35
     (i32.load8_s
      (get_local $$34)
     )
    )
    (set_local $$36
     (i32.and
      (get_local $$35)
      (i32.const 255)
     )
    )
    (set_local $$11
     (get_local $$36)
    )
    (set_local $$37
     (get_local $$10)
    )
    (set_local $$38
     (i32.add
      (get_local $$12)
      (get_local $$37)
     )
    )
    (set_local $$39
     (i32.load8_s
      (get_local $$38)
     )
    )
    (set_local $$40
     (get_local $$8)
    )
    (set_local $$41
     (i32.add
      (get_local $$40)
      (i32.const 256)
     )
    )
    (set_local $$42
     (i32.add
      (get_local $$12)
      (get_local $$41)
     )
    )
    (i32.store8
     (get_local $$42)
     (get_local $$39)
    )
    (set_local $$43
     (get_local $$8)
    )
    (set_local $$44
     (i32.add
      (get_local $$12)
      (get_local $$43)
     )
    )
    (i32.store8
     (get_local $$44)
     (get_local $$39)
    )
    (set_local $$45
     (get_local $$11)
    )
    (set_local $$46
     (i32.and
      (get_local $$45)
      (i32.const 255)
     )
    )
    (set_local $$47
     (get_local $$10)
    )
    (set_local $$48
     (i32.add
      (get_local $$12)
      (get_local $$47)
     )
    )
    (i32.store8
     (get_local $$48)
     (get_local $$46)
    )
    (set_local $$49
     (get_local $$8)
    )
    (set_local $$50
     (i32.add
      (get_local $$12)
      (get_local $$49)
     )
    )
    (set_local $$51
     (i32.load8_s
      (get_local $$50)
     )
    )
    (set_local $$52
     (i32.and
      (get_local $$51)
      (i32.const 255)
     )
    )
    (set_local $$53
     (i32.and
      (call $i32s-rem
       (get_local $$52)
       (i32.const 12)
      )
      (i32.const -1)
     )
    )
    (set_local $$54
     (i32.and
      (get_local $$53)
      (i32.const 255)
     )
    )
    (set_local $$55
     (get_local $$8)
    )
    (set_local $$56
     (i32.add
      (get_local $$55)
      (i32.const 256)
     )
    )
    (set_local $$57
     (i32.add
      (get_local $$12)
      (i32.const 512)
     )
    )
    (set_local $$58
     (i32.add
      (get_local $$57)
      (get_local $$56)
     )
    )
    (i32.store8
     (get_local $$58)
     (get_local $$54)
    )
    (set_local $$59
     (get_local $$8)
    )
    (set_local $$60
     (i32.add
      (get_local $$12)
      (i32.const 512)
     )
    )
    (set_local $$61
     (i32.add
      (get_local $$60)
      (get_local $$59)
     )
    )
    (i32.store8
     (get_local $$61)
     (get_local $$54)
    )
    (set_local $$62
     (get_local $$8)
    )
    (set_local $$63
     (i32.add
      (get_local $$62)
      (i32.const 1)
     )
    )
    (set_local $$8
     (get_local $$63)
    )
    (br $while-in1)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return)
 )
 (func $__ZNSt3__223mersenne_twister_engineIjLj32ELj624ELj397ELj31ELj2567483615ELj11ELj4294967295ELj7ELj2636928640ELj15ELj4022730752ELj18ELj1812433253EE4seedEj (param $$0 i32) (param $$1 i32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 i32)
  (local $$14 i32)
  (local $$15 i32)
  (local $$16 i32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$19 i32)
  (local $$2 i32)
  (local $$20 i32)
  (local $$21 i32)
  (local $$22 i32)
  (local $$23 i32)
  (local $$24 i32)
  (local $$25 i32)
  (local $$26 i32)
  (local $$27 i32)
  (local $$28 i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$3
   (get_local $$0)
  )
  (set_local $$4
   (get_local $$1)
  )
  (set_local $$6
   (get_local $$3)
  )
  (set_local $$7
   (get_local $$4)
  )
  (i32.store
   (get_local $$6)
   (get_local $$7)
  )
  (set_local $$5
   (i32.const 1)
  )
  (loop $while-in
   (block $while-out
    (set_local $$8
     (get_local $$5)
    )
    (set_local $$9
     (i32.lt_u
      (get_local $$8)
      (i32.const 624)
     )
    )
    (if
     (i32.eqz
      (get_local $$9)
     )
     (br $while-out)
    )
    (set_local $$10
     (get_local $$5)
    )
    (set_local $$11
     (i32.sub
      (get_local $$10)
      (i32.const 1)
     )
    )
    (set_local $$12
     (i32.add
      (get_local $$6)
      (i32.shl
       (get_local $$11)
       (i32.const 2)
      )
     )
    )
    (set_local $$13
     (i32.load
      (get_local $$12)
     )
    )
    (set_local $$14
     (get_local $$5)
    )
    (set_local $$15
     (i32.sub
      (get_local $$14)
      (i32.const 1)
     )
    )
    (set_local $$16
     (i32.add
      (get_local $$6)
      (i32.shl
       (get_local $$15)
       (i32.const 2)
      )
     )
    )
    (set_local $$17
     (i32.load
      (get_local $$16)
     )
    )
    (set_local $$2
     (get_local $$17)
    )
    (set_local $$18
     (get_local $$2)
    )
    (set_local $$19
     (i32.shr_u
      (get_local $$18)
      (i32.const 30)
     )
    )
    (set_local $$20
     (i32.xor
      (get_local $$13)
      (get_local $$19)
     )
    )
    (set_local $$21
     (i32.mul
      (i32.const 1812433253)
      (get_local $$20)
     )
    )
    (set_local $$22
     (get_local $$5)
    )
    (set_local $$23
     (i32.add
      (get_local $$21)
      (get_local $$22)
     )
    )
    (set_local $$24
     (get_local $$5)
    )
    (set_local $$25
     (i32.add
      (get_local $$6)
      (i32.shl
       (get_local $$24)
       (i32.const 2)
      )
     )
    )
    (i32.store
     (get_local $$25)
     (get_local $$23)
    )
    (set_local $$26
     (get_local $$5)
    )
    (set_local $$27
     (i32.add
      (get_local $$26)
      (i32.const 1)
     )
    )
    (set_local $$5
     (get_local $$27)
    )
    (br $while-in)
   )
  )
  (set_local $$28
   (i32.add
    (get_local $$6)
    (i32.const 2496)
   )
  )
  (i32.store
   (get_local $$28)
   (i32.const 0)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return)
 )
 (func $__ZNSt3__224uniform_int_distributionIiEC2Eii (param $$0 i32) (param $$1 i32) (param $$2 i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$3
   (get_local $$0)
  )
  (set_local $$4
   (get_local $$1)
  )
  (set_local $$5
   (get_local $$2)
  )
  (set_local $$6
   (get_local $$3)
  )
  (set_local $$7
   (get_local $$4)
  )
  (set_local $$8
   (get_local $$5)
  )
  (call $__ZNSt3__224uniform_int_distributionIiE10param_typeC2Eii
   (get_local $$6)
   (get_local $$7)
   (get_local $$8)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return)
 )
 (func $__ZNSt3__224uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLj32ELj624ELj397ELj31ELj2567483615ELj11ELj4294967295ELj7ELj2636928640ELj15ELj4022730752ELj18ELj1812433253EEEEEiRT_ (param $$0 i32) (param $$1 i32) (result i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $$5 i32)
  (local $$6 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$2
   (get_local $$0)
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$4
   (get_local $$2)
  )
  (set_local $$5
   (get_local $$3)
  )
  (set_local $$6
   (call $__ZNSt3__224uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLj32ELj624ELj397ELj31ELj2567483615ELj11ELj4294967295ELj7ELj2636928640ELj15ELj4022730752ELj18ELj1812433253EEEEEiRT_RKNS1_10param_typeE
    (get_local $$4)
    (get_local $$5)
    (get_local $$4)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$6)
  )
 )
 (func $__ZNSt3__224uniform_int_distributionIiEclINS_23mersenne_twister_engineIjLj32ELj624ELj397ELj31ELj2567483615ELj11ELj4294967295ELj7ELj2636928640ELj15ELj4022730752ELj18ELj1812433253EEEEEiRT_RKNS1_10param_typeE (param $$0 i32) (param $$1 i32) (param $$2 i32) (result i32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 i32)
  (local $$14 i32)
  (local $$15 i32)
  (local $$16 i32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$19 i32)
  (local $$20 i32)
  (local $$21 i32)
  (local $$22 i32)
  (local $$23 i32)
  (local $$24 i32)
  (local $$25 i32)
  (local $$26 i32)
  (local $$27 i32)
  (local $$28 i32)
  (local $$29 i32)
  (local $$3 i32)
  (local $$30 i32)
  (local $$31 i32)
  (local $$32 i32)
  (local $$33 i32)
  (local $$34 i32)
  (local $$35 i32)
  (local $$36 i32)
  (local $$37 i32)
  (local $$38 i32)
  (local $$39 i32)
  (local $$4 i32)
  (local $$40 i32)
  (local $$41 i32)
  (local $$42 i32)
  (local $$43 i32)
  (local $$44 i32)
  (local $$45 i32)
  (local $$46 i32)
  (local $$47 i32)
  (local $$48 i32)
  (local $$49 i32)
  (local $$5 i32)
  (local $$50 i32)
  (local $$51 i32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 112)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 112)
   )
  )
  (set_local $$10
   (i32.add
    (get_local $sp)
    (i32.const 44)
   )
  )
  (set_local $$12
   (i32.add
    (get_local $sp)
    (i32.const 4)
   )
  )
  (set_local $$5
   (get_local $$0)
  )
  (set_local $$6
   (get_local $$1)
  )
  (set_local $$7
   (get_local $$2)
  )
  (set_local $$14
   (get_local $$7)
  )
  (set_local $$15
   (call $__ZNKSt3__224uniform_int_distributionIiE10param_type1bEv
    (get_local $$14)
   )
  )
  (set_local $$16
   (get_local $$7)
  )
  (set_local $$17
   (call $__ZNKSt3__224uniform_int_distributionIiE10param_type1aEv
    (get_local $$16)
   )
  )
  (set_local $$18
   (i32.sub
    (get_local $$15)
    (get_local $$17)
   )
  )
  (set_local $$19
   (i32.add
    (get_local $$18)
    (i32.const 1)
   )
  )
  (set_local $$8
   (get_local $$19)
  )
  (set_local $$20
   (get_local $$8)
  )
  (set_local $$21
   (i32.eq
    (get_local $$20)
    (i32.const 1)
   )
  )
  (if
   (get_local $$21)
   (block
    (set_local $$22
     (get_local $$7)
    )
    (set_local $$23
     (call $__ZNKSt3__224uniform_int_distributionIiE10param_type1aEv
      (get_local $$22)
     )
    )
    (set_local $$4
     (get_local $$23)
    )
    (set_local $$51
     (get_local $$4)
    )
    (set_global $STACKTOP
     (get_local $sp)
    )
    (return
     (get_local $$51)
    )
   )
  )
  (set_local $$9
   (i32.const 32)
  )
  (set_local $$24
   (get_local $$8)
  )
  (set_local $$25
   (i32.eq
    (get_local $$24)
    (i32.const 0)
   )
  )
  (if
   (get_local $$25)
   (block
    (set_local $$26
     (get_local $$6)
    )
    (call $__ZNSt3__225__independent_bits_engineINS_23mersenne_twister_engineIjLj32ELj624ELj397ELj31ELj2567483615ELj11ELj4294967295ELj7ELj2636928640ELj15ELj4022730752ELj18ELj1812433253EEEjEC2ERS2_j
     (get_local $$10)
     (get_local $$26)
     (i32.const 32)
    )
    (set_local $$27
     (call $__ZNSt3__225__independent_bits_engineINS_23mersenne_twister_engineIjLj32ELj624ELj397ELj31ELj2567483615ELj11ELj4294967295ELj7ELj2636928640ELj15ELj4022730752ELj18ELj1812433253EEEjEclEv
      (get_local $$10)
     )
    )
    (set_local $$4
     (get_local $$27)
    )
    (set_local $$51
     (get_local $$4)
    )
    (set_global $STACKTOP
     (get_local $sp)
    )
    (return
     (get_local $$51)
    )
   )
  )
  (set_local $$28
   (get_local $$8)
  )
  (set_local $$3
   (get_local $$28)
  )
  (set_local $$29
   (get_local $$3)
  )
  (set_local $$30
   (i32.clz
    (get_local $$29)
   )
  )
  (set_local $$31
   (i32.sub
    (i32.const 32)
    (get_local $$30)
   )
  )
  (set_local $$32
   (i32.sub
    (get_local $$31)
    (i32.const 1)
   )
  )
  (set_local $$11
   (get_local $$32)
  )
  (set_local $$33
   (get_local $$8)
  )
  (set_local $$34
   (get_local $$11)
  )
  (set_local $$35
   (i32.sub
    (i32.const 32)
    (get_local $$34)
   )
  )
  (set_local $$36
   (i32.shr_u
    (i32.const -1)
    (get_local $$35)
   )
  )
  (set_local $$37
   (i32.and
    (get_local $$33)
    (get_local $$36)
   )
  )
  (set_local $$38
   (i32.ne
    (get_local $$37)
    (i32.const 0)
   )
  )
  (if
   (get_local $$38)
   (block
    (set_local $$39
     (get_local $$11)
    )
    (set_local $$40
     (i32.add
      (get_local $$39)
      (i32.const 1)
     )
    )
    (set_local $$11
     (get_local $$40)
    )
   )
  )
  (set_local $$41
   (get_local $$6)
  )
  (set_local $$42
   (get_local $$11)
  )
  (call $__ZNSt3__225__independent_bits_engineINS_23mersenne_twister_engineIjLj32ELj624ELj397ELj31ELj2567483615ELj11ELj4294967295ELj7ELj2636928640ELj15ELj4022730752ELj18ELj1812433253EEEjEC2ERS2_j
   (get_local $$12)
   (get_local $$41)
   (get_local $$42)
  )
  (loop $while-in
   (block $while-out
    (set_local $$43
     (call $__ZNSt3__225__independent_bits_engineINS_23mersenne_twister_engineIjLj32ELj624ELj397ELj31ELj2567483615ELj11ELj4294967295ELj7ELj2636928640ELj15ELj4022730752ELj18ELj1812433253EEEjEclEv
      (get_local $$12)
     )
    )
    (set_local $$13
     (get_local $$43)
    )
    (set_local $$44
     (get_local $$13)
    )
    (set_local $$45
     (get_local $$8)
    )
    (set_local $$46
     (i32.ge_u
      (get_local $$44)
      (get_local $$45)
     )
    )
    (if
     (i32.eqz
      (get_local $$46)
     )
     (br $while-out)
    )
    (br $while-in)
   )
  )
  (set_local $$47
   (get_local $$13)
  )
  (set_local $$48
   (get_local $$7)
  )
  (set_local $$49
   (call $__ZNKSt3__224uniform_int_distributionIiE10param_type1aEv
    (get_local $$48)
   )
  )
  (set_local $$50
   (i32.add
    (get_local $$47)
    (get_local $$49)
   )
  )
  (set_local $$4
   (get_local $$50)
  )
  (set_local $$51
   (get_local $$4)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$51)
  )
 )
 (func $__ZNKSt3__224uniform_int_distributionIiE10param_type1bEv (param $$0 i32) (result i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (get_local $$1)
  )
  (set_local $$3
   (i32.add
    (get_local $$2)
    (i32.const 4)
   )
  )
  (set_local $$4
   (i32.load
    (get_local $$3)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$4)
  )
 )
 (func $__ZNKSt3__224uniform_int_distributionIiE10param_type1aEv (param $$0 i32) (result i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (get_local $$1)
  )
  (set_local $$3
   (i32.load
    (get_local $$2)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$3)
  )
 )
 (func $i32u-div (param $0 i32) (param $1 i32) (result i32)
  (if (result i32)
   (i32.eqz
    (get_local $1)
   )
   (i32.const 0)
   (i32.div_u
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $i32u-rem (param $0 i32) (param $1 i32) (result i32)
  (if (result i32)
   (i32.eqz
    (get_local $1)
   )
   (i32.const 0)
   (i32.rem_u
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $__ZNSt3__225__independent_bits_engineINS_23mersenne_twister_engineIjLj32ELj624ELj397ELj31ELj2567483615ELj11ELj4294967295ELj7ELj2636928640ELj15ELj4022730752ELj18ELj1812433253EEEjEC2ERS2_j (param $$0 i32) (param $$1 i32) (param $$2 i32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 i32)
  (local $$14 i32)
  (local $$15 i32)
  (local $$16 i32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$19 i32)
  (local $$20 i32)
  (local $$21 i32)
  (local $$22 i32)
  (local $$23 i32)
  (local $$24 i32)
  (local $$25 i32)
  (local $$26 i32)
  (local $$27 i32)
  (local $$28 i32)
  (local $$29 i32)
  (local $$3 i32)
  (local $$30 i32)
  (local $$31 i32)
  (local $$32 i32)
  (local $$33 i32)
  (local $$34 i32)
  (local $$35 i32)
  (local $$36 i32)
  (local $$37 i32)
  (local $$38 i32)
  (local $$39 i32)
  (local $$4 i32)
  (local $$40 i32)
  (local $$41 i32)
  (local $$42 i32)
  (local $$43 i32)
  (local $$44 i32)
  (local $$45 i32)
  (local $$46 i32)
  (local $$47 i32)
  (local $$48 i32)
  (local $$49 i32)
  (local $$5 i32)
  (local $$50 i32)
  (local $$51 i32)
  (local $$52 i32)
  (local $$53 i32)
  (local $$54 i32)
  (local $$55 i32)
  (local $$56 i32)
  (local $$57 i32)
  (local $$58 i32)
  (local $$59 i32)
  (local $$6 i32)
  (local $$60 i32)
  (local $$61 i32)
  (local $$62 i32)
  (local $$63 i32)
  (local $$64 i32)
  (local $$65 i32)
  (local $$66 i32)
  (local $$67 i32)
  (local $$68 i32)
  (local $$69 i32)
  (local $$7 i32)
  (local $$70 i32)
  (local $$71 i32)
  (local $$72 i32)
  (local $$73 i32)
  (local $$74 i32)
  (local $$75 i32)
  (local $$76 i32)
  (local $$77 i32)
  (local $$78 i32)
  (local $$79 i32)
  (local $$8 i32)
  (local $$80 i32)
  (local $$81 i32)
  (local $$82 i32)
  (local $$83 i32)
  (local $$84 i32)
  (local $$85 i32)
  (local $$86 i32)
  (local $$87 i32)
  (local $$88 i32)
  (local $$89 i32)
  (local $$9 i32)
  (local $$90 i32)
  (local $$91 i32)
  (local $$92 i32)
  (local $$93 i32)
  (local $$94 i32)
  (local $$95 i32)
  (local $$96 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$3
   (get_local $$0)
  )
  (set_local $$4
   (get_local $$1)
  )
  (set_local $$5
   (get_local $$2)
  )
  (set_local $$6
   (get_local $$3)
  )
  (set_local $$7
   (get_local $$4)
  )
  (i32.store
   (get_local $$6)
   (get_local $$7)
  )
  (set_local $$8
   (i32.add
    (get_local $$6)
    (i32.const 4)
   )
  )
  (set_local $$9
   (get_local $$5)
  )
  (i32.store
   (get_local $$8)
   (get_local $$9)
  )
  (set_local $$10
   (i32.add
    (get_local $$6)
    (i32.const 4)
   )
  )
  (set_local $$11
   (i32.load
    (get_local $$10)
   )
  )
  (set_local $$12
   (i32.and
    (call $i32u-div
     (get_local $$11)
     (i32.const 32)
    )
    (i32.const -1)
   )
  )
  (set_local $$13
   (i32.add
    (get_local $$6)
    (i32.const 4)
   )
  )
  (set_local $$14
   (i32.load
    (get_local $$13)
   )
  )
  (set_local $$15
   (i32.and
    (call $i32u-rem
     (get_local $$14)
     (i32.const 32)
    )
    (i32.const -1)
   )
  )
  (set_local $$16
   (i32.ne
    (get_local $$15)
    (i32.const 0)
   )
  )
  (set_local $$17
   (i32.and
    (get_local $$16)
    (i32.const 1)
   )
  )
  (set_local $$18
   (i32.add
    (get_local $$12)
    (get_local $$17)
   )
  )
  (set_local $$19
   (i32.add
    (get_local $$6)
    (i32.const 12)
   )
  )
  (i32.store
   (get_local $$19)
   (get_local $$18)
  )
  (set_local $$20
   (i32.add
    (get_local $$6)
    (i32.const 4)
   )
  )
  (set_local $$21
   (i32.load
    (get_local $$20)
   )
  )
  (set_local $$22
   (i32.add
    (get_local $$6)
    (i32.const 12)
   )
  )
  (set_local $$23
   (i32.load
    (get_local $$22)
   )
  )
  (set_local $$24
   (i32.and
    (call $i32u-div
     (get_local $$21)
     (get_local $$23)
    )
    (i32.const -1)
   )
  )
  (set_local $$25
   (i32.add
    (get_local $$6)
    (i32.const 8)
   )
  )
  (i32.store
   (get_local $$25)
   (get_local $$24)
  )
  (set_local $$26
   (i32.add
    (get_local $$6)
    (i32.const 20)
   )
  )
  (i32.store
   (get_local $$26)
   (i32.const 0)
  )
  (set_local $$27
   (i32.add
    (get_local $$6)
    (i32.const 20)
   )
  )
  (set_local $$28
   (i32.load
    (get_local $$27)
   )
  )
  (set_local $$29
   (i32.sub
    (i32.const 0)
    (get_local $$28)
   )
  )
  (set_local $$30
   (i32.add
    (get_local $$6)
    (i32.const 20)
   )
  )
  (set_local $$31
   (i32.load
    (get_local $$30)
   )
  )
  (set_local $$32
   (i32.add
    (get_local $$6)
    (i32.const 12)
   )
  )
  (set_local $$33
   (i32.load
    (get_local $$32)
   )
  )
  (set_local $$34
   (i32.and
    (call $i32u-div
     (get_local $$31)
     (get_local $$33)
    )
    (i32.const -1)
   )
  )
  (set_local $$35
   (i32.gt_u
    (get_local $$29)
    (get_local $$34)
   )
  )
  (block $do-once
   (if
    (get_local $$35)
    (block
     (set_local $$36
      (i32.add
       (get_local $$6)
       (i32.const 12)
      )
     )
     (set_local $$37
      (i32.load
       (get_local $$36)
      )
     )
     (set_local $$38
      (i32.add
       (get_local $$37)
       (i32.const 1)
      )
     )
     (i32.store
      (get_local $$36)
      (get_local $$38)
     )
     (set_local $$39
      (i32.add
       (get_local $$6)
       (i32.const 4)
      )
     )
     (set_local $$40
      (i32.load
       (get_local $$39)
      )
     )
     (set_local $$41
      (i32.add
       (get_local $$6)
       (i32.const 12)
      )
     )
     (set_local $$42
      (i32.load
       (get_local $$41)
      )
     )
     (set_local $$43
      (i32.and
       (call $i32u-div
        (get_local $$40)
        (get_local $$42)
       )
       (i32.const -1)
      )
     )
     (set_local $$44
      (i32.add
       (get_local $$6)
       (i32.const 8)
      )
     )
     (i32.store
      (get_local $$44)
      (get_local $$43)
     )
     (set_local $$45
      (i32.add
       (get_local $$6)
       (i32.const 8)
      )
     )
     (set_local $$46
      (i32.load
       (get_local $$45)
      )
     )
     (set_local $$47
      (i32.lt_u
       (get_local $$46)
       (i32.const 32)
      )
     )
     (if
      (get_local $$47)
      (block
       (set_local $$48
        (i32.add
         (get_local $$6)
         (i32.const 8)
        )
       )
       (set_local $$49
        (i32.load
         (get_local $$48)
        )
       )
       (set_local $$50
        (i32.shr_u
         (i32.const 0)
         (get_local $$49)
        )
       )
       (set_local $$51
        (i32.add
         (get_local $$6)
         (i32.const 8)
        )
       )
       (set_local $$52
        (i32.load
         (get_local $$51)
        )
       )
       (set_local $$53
        (i32.shl
         (get_local $$50)
         (get_local $$52)
        )
       )
       (set_local $$54
        (i32.add
         (get_local $$6)
         (i32.const 20)
        )
       )
       (i32.store
        (get_local $$54)
        (get_local $$53)
       )
       (br $do-once)
      )
      (block
       (set_local $$55
        (i32.add
         (get_local $$6)
         (i32.const 20)
        )
       )
       (i32.store
        (get_local $$55)
        (i32.const 0)
       )
       (br $do-once)
      )
     )
    )
   )
  )
  (set_local $$56
   (i32.add
    (get_local $$6)
    (i32.const 12)
   )
  )
  (set_local $$57
   (i32.load
    (get_local $$56)
   )
  )
  (set_local $$58
   (i32.add
    (get_local $$6)
    (i32.const 4)
   )
  )
  (set_local $$59
   (i32.load
    (get_local $$58)
   )
  )
  (set_local $$60
   (i32.add
    (get_local $$6)
    (i32.const 12)
   )
  )
  (set_local $$61
   (i32.load
    (get_local $$60)
   )
  )
  (set_local $$62
   (i32.and
    (call $i32u-rem
     (get_local $$59)
     (get_local $$61)
    )
    (i32.const -1)
   )
  )
  (set_local $$63
   (i32.sub
    (get_local $$57)
    (get_local $$62)
   )
  )
  (set_local $$64
   (i32.add
    (get_local $$6)
    (i32.const 16)
   )
  )
  (i32.store
   (get_local $$64)
   (get_local $$63)
  )
  (set_local $$65
   (i32.add
    (get_local $$6)
    (i32.const 8)
   )
  )
  (set_local $$66
   (i32.load
    (get_local $$65)
   )
  )
  (set_local $$67
   (i32.lt_u
    (get_local $$66)
    (i32.const 31)
   )
  )
  (if
   (get_local $$67)
   (block
    (set_local $$68
     (i32.add
      (get_local $$6)
      (i32.const 8)
     )
    )
    (set_local $$69
     (i32.load
      (get_local $$68)
     )
    )
    (set_local $$70
     (i32.add
      (get_local $$69)
      (i32.const 1)
     )
    )
    (set_local $$71
     (i32.shr_u
      (i32.const 0)
      (get_local $$70)
     )
    )
    (set_local $$72
     (i32.add
      (get_local $$6)
      (i32.const 8)
     )
    )
    (set_local $$73
     (i32.load
      (get_local $$72)
     )
    )
    (set_local $$74
     (i32.add
      (get_local $$73)
      (i32.const 1)
     )
    )
    (set_local $$75
     (i32.shl
      (get_local $$71)
      (get_local $$74)
     )
    )
    (set_local $$76
     (i32.add
      (get_local $$6)
      (i32.const 24)
     )
    )
    (i32.store
     (get_local $$76)
     (get_local $$75)
    )
   )
   (block
    (set_local $$77
     (i32.add
      (get_local $$6)
      (i32.const 24)
     )
    )
    (i32.store
     (get_local $$77)
     (i32.const 0)
    )
   )
  )
  (set_local $$78
   (i32.add
    (get_local $$6)
    (i32.const 8)
   )
  )
  (set_local $$79
   (i32.load
    (get_local $$78)
   )
  )
  (set_local $$80
   (i32.gt_u
    (get_local $$79)
    (i32.const 0)
   )
  )
  (if
   (get_local $$80)
   (block
    (set_local $$81
     (i32.add
      (get_local $$6)
      (i32.const 8)
     )
    )
    (set_local $$82
     (i32.load
      (get_local $$81)
     )
    )
    (set_local $$83
     (i32.sub
      (i32.const 32)
      (get_local $$82)
     )
    )
    (set_local $$84
     (i32.shr_u
      (i32.const -1)
      (get_local $$83)
     )
    )
    (set_local $$86
     (get_local $$84)
    )
   )
   (set_local $$86
    (i32.const 0)
   )
  )
  (set_local $$85
   (i32.add
    (get_local $$6)
    (i32.const 28)
   )
  )
  (i32.store
   (get_local $$85)
   (get_local $$86)
  )
  (set_local $$87
   (i32.add
    (get_local $$6)
    (i32.const 8)
   )
  )
  (set_local $$88
   (i32.load
    (get_local $$87)
   )
  )
  (set_local $$89
   (i32.lt_u
    (get_local $$88)
    (i32.const 31)
   )
  )
  (if
   (i32.eqz
    (get_local $$89)
   )
   (block
    (set_local $$96
     (i32.const -1)
    )
    (set_local $$95
     (i32.add
      (get_local $$6)
      (i32.const 32)
     )
    )
    (i32.store
     (get_local $$95)
     (get_local $$96)
    )
    (set_global $STACKTOP
     (get_local $sp)
    )
    (return)
   )
  )
  (set_local $$90
   (i32.add
    (get_local $$6)
    (i32.const 8)
   )
  )
  (set_local $$91
   (i32.load
    (get_local $$90)
   )
  )
  (set_local $$92
   (i32.add
    (get_local $$91)
    (i32.const 1)
   )
  )
  (set_local $$93
   (i32.sub
    (i32.const 32)
    (get_local $$92)
   )
  )
  (set_local $$94
   (i32.shr_u
    (i32.const -1)
    (get_local $$93)
   )
  )
  (set_local $$96
   (get_local $$94)
  )
  (set_local $$95
   (i32.add
    (get_local $$6)
    (i32.const 32)
   )
  )
  (i32.store
   (get_local $$95)
   (get_local $$96)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return)
 )
 (func $__ZNSt3__225__independent_bits_engineINS_23mersenne_twister_engineIjLj32ELj624ELj397ELj31ELj2567483615ELj11ELj4294967295ELj7ELj2636928640ELj15ELj4022730752ELj18ELj1812433253EEEjEclEv (param $$0 i32) (result i32)
  (local $$$byval_copy i32)
  (local $$1 i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$$byval_copy
   (i32.add
    (get_local $sp)
    (i32.const 5)
   )
  )
  (set_local $$2
   (i32.add
    (get_local $sp)
    (i32.const 4)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$3
   (get_local $$1)
  )
  (i32.store8
   (get_local $$$byval_copy)
   (i32.load8_s
    (get_local $$2)
   )
  )
  (set_local $$4
   (call $__ZNSt3__225__independent_bits_engineINS_23mersenne_twister_engineIjLj32ELj624ELj397ELj31ELj2567483615ELj11ELj4294967295ELj7ELj2636928640ELj15ELj4022730752ELj18ELj1812433253EEEjE6__evalENS_17integral_constantIbLb0EEE
    (get_local $$3)
    (get_local $$$byval_copy)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$4)
  )
 )
 (func $__ZNSt3__225__independent_bits_engineINS_23mersenne_twister_engineIjLj32ELj624ELj397ELj31ELj2567483615ELj11ELj4294967295ELj7ELj2636928640ELj15ELj4022730752ELj18ELj1812433253EEEjE6__evalENS_17integral_constantIbLb0EEE (param $$0 i32) (param $$1 i32) (result i32)
  (local $$2 i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$2
   (get_local $$0)
  )
  (set_local $$3
   (get_local $$2)
  )
  (set_local $$4
   (i32.load
    (get_local $$3)
   )
  )
  (set_local $$5
   (call $__ZNSt3__223mersenne_twister_engineIjLj32ELj624ELj397ELj31ELj2567483615ELj11ELj4294967295ELj7ELj2636928640ELj15ELj4022730752ELj18ELj1812433253EEclEv
    (get_local $$4)
   )
  )
  (set_local $$6
   (i32.add
    (get_local $$3)
    (i32.const 28)
   )
  )
  (set_local $$7
   (i32.load
    (get_local $$6)
   )
  )
  (set_local $$8
   (i32.and
    (get_local $$5)
    (get_local $$7)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$8)
  )
 )
 (func $__ZNSt3__223mersenne_twister_engineIjLj32ELj624ELj397ELj31ELj2567483615ELj11ELj4294967295ELj7ELj2636928640ELj15ELj4022730752ELj18ELj1812433253EEclEv (param $$0 i32) (result i32)
  (local $$1 i32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 i32)
  (local $$14 i32)
  (local $$15 i32)
  (local $$16 i32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$19 i32)
  (local $$2 i32)
  (local $$20 i32)
  (local $$21 i32)
  (local $$22 i32)
  (local $$23 i32)
  (local $$24 i32)
  (local $$25 i32)
  (local $$26 i32)
  (local $$27 i32)
  (local $$28 i32)
  (local $$29 i32)
  (local $$3 i32)
  (local $$30 i32)
  (local $$31 i32)
  (local $$32 i32)
  (local $$33 i32)
  (local $$34 i32)
  (local $$35 i32)
  (local $$36 i32)
  (local $$37 i32)
  (local $$38 i32)
  (local $$39 i32)
  (local $$4 i32)
  (local $$40 i32)
  (local $$41 i32)
  (local $$42 i32)
  (local $$43 i32)
  (local $$44 i32)
  (local $$45 i32)
  (local $$46 i32)
  (local $$47 i32)
  (local $$48 i32)
  (local $$49 i32)
  (local $$5 i32)
  (local $$50 i32)
  (local $$51 i32)
  (local $$52 i32)
  (local $$53 i32)
  (local $$54 i32)
  (local $$55 i32)
  (local $$56 i32)
  (local $$57 i32)
  (local $$58 i32)
  (local $$59 i32)
  (local $$6 i32)
  (local $$60 i32)
  (local $$61 i32)
  (local $$62 i32)
  (local $$63 i32)
  (local $$64 i32)
  (local $$65 i32)
  (local $$66 i32)
  (local $$67 i32)
  (local $$68 i32)
  (local $$69 i32)
  (local $$7 i32)
  (local $$70 i32)
  (local $$71 i32)
  (local $$72 i32)
  (local $$73 i32)
  (local $$74 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 48)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 48)
   )
  )
  (set_local $$6
   (get_local $$0)
  )
  (set_local $$12
   (get_local $$6)
  )
  (set_local $$13
   (i32.add
    (get_local $$12)
    (i32.const 2496)
   )
  )
  (set_local $$14
   (i32.load
    (get_local $$13)
   )
  )
  (set_local $$15
   (i32.add
    (get_local $$14)
    (i32.const 1)
   )
  )
  (set_local $$16
   (i32.and
    (call $i32u-rem
     (get_local $$15)
     (i32.const 624)
    )
    (i32.const -1)
   )
  )
  (set_local $$7
   (get_local $$16)
  )
  (set_local $$8
   (i32.const 2147483647)
  )
  (set_local $$17
   (i32.add
    (get_local $$12)
    (i32.const 2496)
   )
  )
  (set_local $$18
   (i32.load
    (get_local $$17)
   )
  )
  (set_local $$19
   (i32.add
    (get_local $$12)
    (i32.shl
     (get_local $$18)
     (i32.const 2)
    )
   )
  )
  (set_local $$20
   (i32.load
    (get_local $$19)
   )
  )
  (set_local $$21
   (i32.and
    (get_local $$20)
    (i32.const -2147483648)
   )
  )
  (set_local $$22
   (get_local $$7)
  )
  (set_local $$23
   (i32.add
    (get_local $$12)
    (i32.shl
     (get_local $$22)
     (i32.const 2)
    )
   )
  )
  (set_local $$24
   (i32.load
    (get_local $$23)
   )
  )
  (set_local $$25
   (i32.and
    (get_local $$24)
    (i32.const 2147483647)
   )
  )
  (set_local $$26
   (i32.or
    (get_local $$21)
    (get_local $$25)
   )
  )
  (set_local $$9
   (get_local $$26)
  )
  (set_local $$27
   (i32.add
    (get_local $$12)
    (i32.const 2496)
   )
  )
  (set_local $$28
   (i32.load
    (get_local $$27)
   )
  )
  (set_local $$29
   (i32.add
    (get_local $$28)
    (i32.const 397)
   )
  )
  (set_local $$30
   (i32.and
    (call $i32u-rem
     (get_local $$29)
     (i32.const 624)
    )
    (i32.const -1)
   )
  )
  (set_local $$10
   (get_local $$30)
  )
  (set_local $$31
   (get_local $$10)
  )
  (set_local $$32
   (i32.add
    (get_local $$12)
    (i32.shl
     (get_local $$31)
     (i32.const 2)
    )
   )
  )
  (set_local $$33
   (i32.load
    (get_local $$32)
   )
  )
  (set_local $$34
   (get_local $$9)
  )
  (set_local $$5
   (get_local $$34)
  )
  (set_local $$35
   (get_local $$5)
  )
  (set_local $$36
   (i32.shr_u
    (get_local $$35)
    (i32.const 1)
   )
  )
  (set_local $$37
   (i32.xor
    (get_local $$33)
    (get_local $$36)
   )
  )
  (set_local $$38
   (get_local $$9)
  )
  (set_local $$39
   (i32.and
    (get_local $$38)
    (i32.const 1)
   )
  )
  (set_local $$40
   (i32.mul
    (i32.const -1727483681)
    (get_local $$39)
   )
  )
  (set_local $$41
   (i32.xor
    (get_local $$37)
    (get_local $$40)
   )
  )
  (set_local $$42
   (i32.add
    (get_local $$12)
    (i32.const 2496)
   )
  )
  (set_local $$43
   (i32.load
    (get_local $$42)
   )
  )
  (set_local $$44
   (i32.add
    (get_local $$12)
    (i32.shl
     (get_local $$43)
     (i32.const 2)
    )
   )
  )
  (i32.store
   (get_local $$44)
   (get_local $$41)
  )
  (set_local $$45
   (i32.add
    (get_local $$12)
    (i32.const 2496)
   )
  )
  (set_local $$46
   (i32.load
    (get_local $$45)
   )
  )
  (set_local $$47
   (i32.add
    (get_local $$12)
    (i32.shl
     (get_local $$46)
     (i32.const 2)
    )
   )
  )
  (set_local $$48
   (i32.load
    (get_local $$47)
   )
  )
  (set_local $$49
   (i32.add
    (get_local $$12)
    (i32.const 2496)
   )
  )
  (set_local $$50
   (i32.load
    (get_local $$49)
   )
  )
  (set_local $$51
   (i32.add
    (get_local $$12)
    (i32.shl
     (get_local $$50)
     (i32.const 2)
    )
   )
  )
  (set_local $$52
   (i32.load
    (get_local $$51)
   )
  )
  (set_local $$1
   (get_local $$52)
  )
  (set_local $$53
   (get_local $$1)
  )
  (set_local $$54
   (i32.shr_u
    (get_local $$53)
    (i32.const 11)
   )
  )
  (set_local $$55
   (i32.xor
    (get_local $$48)
    (get_local $$54)
   )
  )
  (set_local $$11
   (get_local $$55)
  )
  (set_local $$56
   (get_local $$7)
  )
  (set_local $$57
   (i32.add
    (get_local $$12)
    (i32.const 2496)
   )
  )
  (i32.store
   (get_local $$57)
   (get_local $$56)
  )
  (set_local $$58
   (get_local $$11)
  )
  (set_local $$2
   (get_local $$58)
  )
  (set_local $$59
   (get_local $$2)
  )
  (set_local $$60
   (i32.shl
    (get_local $$59)
    (i32.const 7)
   )
  )
  (set_local $$61
   (i32.and
    (get_local $$60)
    (i32.const -1658038656)
   )
  )
  (set_local $$62
   (get_local $$11)
  )
  (set_local $$63
   (i32.xor
    (get_local $$62)
    (get_local $$61)
   )
  )
  (set_local $$11
   (get_local $$63)
  )
  (set_local $$64
   (get_local $$11)
  )
  (set_local $$3
   (get_local $$64)
  )
  (set_local $$65
   (get_local $$3)
  )
  (set_local $$66
   (i32.shl
    (get_local $$65)
    (i32.const 15)
   )
  )
  (set_local $$67
   (i32.and
    (get_local $$66)
    (i32.const -272236544)
   )
  )
  (set_local $$68
   (get_local $$11)
  )
  (set_local $$69
   (i32.xor
    (get_local $$68)
    (get_local $$67)
   )
  )
  (set_local $$11
   (get_local $$69)
  )
  (set_local $$70
   (get_local $$11)
  )
  (set_local $$71
   (get_local $$11)
  )
  (set_local $$4
   (get_local $$71)
  )
  (set_local $$72
   (get_local $$4)
  )
  (set_local $$73
   (i32.shr_u
    (get_local $$72)
    (i32.const 18)
   )
  )
  (set_local $$74
   (i32.xor
    (get_local $$70)
    (get_local $$73)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$74)
  )
 )
 (func $__ZNSt3__224uniform_int_distributionIiE10param_typeC2Eii (param $$0 i32) (param $$1 i32) (param $$2 i32)
  (local $$3 i32)
  (local $$4 i32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$3
   (get_local $$0)
  )
  (set_local $$4
   (get_local $$1)
  )
  (set_local $$5
   (get_local $$2)
  )
  (set_local $$6
   (get_local $$3)
  )
  (set_local $$7
   (get_local $$4)
  )
  (i32.store
   (get_local $$6)
   (get_local $$7)
  )
  (set_local $$8
   (i32.add
    (get_local $$6)
    (i32.const 4)
   )
  )
  (set_local $$9
   (get_local $$5)
  )
  (i32.store
   (get_local $$8)
   (get_local $$9)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return)
 )
 (func $__ZN9FastNoise24CalculateFractalBoundingEv (param $$0 i32)
  (local $$1 i32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 f32)
  (local $$13 f32)
  (local $$14 f32)
  (local $$15 i32)
  (local $$16 f32)
  (local $$17 f32)
  (local $$18 f32)
  (local $$19 i32)
  (local $$2 f32)
  (local $$20 i32)
  (local $$21 f32)
  (local $$22 f32)
  (local $$23 i32)
  (local $$3 f32)
  (local $$4 i32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 f32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$5
   (get_local $$1)
  )
  (set_local $$6
   (i32.add
    (get_local $$5)
    (i32.const 1048)
   )
  )
  (set_local $$7
   (f32.load
    (get_local $$6)
   )
  )
  (set_local $$2
   (get_local $$7)
  )
  (set_local $$3
   (f32.const 1)
  )
  (set_local $$4
   (i32.const 1)
  )
  (loop $while-in
   (block $while-out
    (set_local $$8
     (get_local $$4)
    )
    (set_local $$9
     (i32.add
      (get_local $$5)
      (i32.const 1040)
     )
    )
    (set_local $$10
     (i32.load
      (get_local $$9)
     )
    )
    (set_local $$11
     (i32.lt_s
      (get_local $$8)
      (get_local $$10)
     )
    )
    (if
     (i32.eqz
      (get_local $$11)
     )
     (br $while-out)
    )
    (set_local $$12
     (get_local $$2)
    )
    (set_local $$13
     (get_local $$3)
    )
    (set_local $$14
     (f32.add
      (get_local $$13)
      (get_local $$12)
     )
    )
    (set_local $$3
     (get_local $$14)
    )
    (set_local $$15
     (i32.add
      (get_local $$5)
      (i32.const 1048)
     )
    )
    (set_local $$16
     (f32.load
      (get_local $$15)
     )
    )
    (set_local $$17
     (get_local $$2)
    )
    (set_local $$18
     (f32.mul
      (get_local $$17)
      (get_local $$16)
     )
    )
    (set_local $$2
     (get_local $$18)
    )
    (set_local $$19
     (get_local $$4)
    )
    (set_local $$20
     (i32.add
      (get_local $$19)
      (i32.const 1)
     )
    )
    (set_local $$4
     (get_local $$20)
    )
    (br $while-in)
   )
  )
  (set_local $$21
   (get_local $$3)
  )
  (set_local $$22
   (f32.div
    (f32.const 1)
    (get_local $$21)
   )
  )
  (set_local $$23
   (i32.add
    (get_local $$5)
    (i32.const 1056)
   )
  )
  (f32.store
   (get_local $$23)
   (get_local $$22)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return)
 )
 (func $__ZNK9FastNoise8GetNoiseEfff (param $$0 i32) (param $$1 f32) (param $$2 f32) (param $$3 f32) (result f32)
  (local $$10 i32)
  (local $$100 f32)
  (local $$101 f32)
  (local $$102 f32)
  (local $$103 f32)
  (local $$104 f32)
  (local $$105 f32)
  (local $$106 f32)
  (local $$107 f32)
  (local $$11 f32)
  (local $$12 f32)
  (local $$13 f32)
  (local $$14 i32)
  (local $$15 f32)
  (local $$16 f32)
  (local $$17 f32)
  (local $$18 i32)
  (local $$19 f32)
  (local $$20 f32)
  (local $$21 f32)
  (local $$22 i32)
  (local $$23 i32)
  (local $$24 f32)
  (local $$25 f32)
  (local $$26 f32)
  (local $$27 f32)
  (local $$28 i32)
  (local $$29 i32)
  (local $$30 f32)
  (local $$31 f32)
  (local $$32 f32)
  (local $$33 f32)
  (local $$34 f32)
  (local $$35 f32)
  (local $$36 f32)
  (local $$37 f32)
  (local $$38 f32)
  (local $$39 f32)
  (local $$4 f32)
  (local $$40 f32)
  (local $$41 f32)
  (local $$42 f32)
  (local $$43 f32)
  (local $$44 f32)
  (local $$45 f32)
  (local $$46 i32)
  (local $$47 i32)
  (local $$48 f32)
  (local $$49 f32)
  (local $$5 i32)
  (local $$50 f32)
  (local $$51 f32)
  (local $$52 f32)
  (local $$53 f32)
  (local $$54 f32)
  (local $$55 f32)
  (local $$56 f32)
  (local $$57 f32)
  (local $$58 f32)
  (local $$59 f32)
  (local $$6 f32)
  (local $$60 f32)
  (local $$61 f32)
  (local $$62 f32)
  (local $$63 f32)
  (local $$64 i32)
  (local $$65 i32)
  (local $$66 f32)
  (local $$67 f32)
  (local $$68 f32)
  (local $$69 f32)
  (local $$7 f32)
  (local $$70 f32)
  (local $$71 f32)
  (local $$72 f32)
  (local $$73 f32)
  (local $$74 f32)
  (local $$75 f32)
  (local $$76 f32)
  (local $$77 f32)
  (local $$78 i32)
  (local $$79 i32)
  (local $$8 f32)
  (local $$80 f32)
  (local $$81 f32)
  (local $$82 f32)
  (local $$83 f32)
  (local $$84 f32)
  (local $$85 f32)
  (local $$86 f32)
  (local $$87 f32)
  (local $$88 f32)
  (local $$89 f32)
  (local $$9 i32)
  (local $$90 f32)
  (local $$91 f32)
  (local $$92 f32)
  (local $$93 i32)
  (local $$94 i32)
  (local $$95 f32)
  (local $$96 f32)
  (local $$97 f32)
  (local $$98 f32)
  (local $$99 f32)
  (local $$switch i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 32)
   )
  )
  (set_local $$5
   (get_local $$0)
  )
  (set_local $$6
   (get_local $$1)
  )
  (set_local $$7
   (get_local $$2)
  )
  (set_local $$8
   (get_local $$3)
  )
  (set_local $$9
   (get_local $$5)
  )
  (set_local $$10
   (i32.add
    (get_local $$9)
    (i32.const 1028)
   )
  )
  (set_local $$11
   (f32.load
    (get_local $$10)
   )
  )
  (set_local $$12
   (get_local $$6)
  )
  (set_local $$13
   (f32.mul
    (get_local $$12)
    (get_local $$11)
   )
  )
  (set_local $$6
   (get_local $$13)
  )
  (set_local $$14
   (i32.add
    (get_local $$9)
    (i32.const 1028)
   )
  )
  (set_local $$15
   (f32.load
    (get_local $$14)
   )
  )
  (set_local $$16
   (get_local $$7)
  )
  (set_local $$17
   (f32.mul
    (get_local $$16)
    (get_local $$15)
   )
  )
  (set_local $$7
   (get_local $$17)
  )
  (set_local $$18
   (i32.add
    (get_local $$9)
    (i32.const 1028)
   )
  )
  (set_local $$19
   (f32.load
    (get_local $$18)
   )
  )
  (set_local $$20
   (get_local $$8)
  )
  (set_local $$21
   (f32.mul
    (get_local $$20)
    (get_local $$19)
   )
  )
  (set_local $$8
   (get_local $$21)
  )
  (set_local $$22
   (i32.add
    (get_local $$9)
    (i32.const 1036)
   )
  )
  (set_local $$23
   (i32.load
    (get_local $$22)
   )
  )
  (block $label$break$L1
   (block $switch
    (block $switch-default28
     (block $switch-case27
      (block $switch-case21
       (block $switch-case20
        (block $switch-case19
         (block $switch-case18
          (block $switch-case12
           (block $switch-case11
            (block $switch-case5
             (block $switch-case4
              (block $switch-case
               (br_table $switch-case $switch-case4 $switch-case5 $switch-case11 $switch-case12 $switch-case18 $switch-case19 $switch-case20 $switch-case21 $switch-case27 $switch-default28
                (i32.sub
                 (get_local $$23)
                 (i32.const 0)
                )
               )
              )
              (block
               (set_local $$24
                (get_local $$6)
               )
               (set_local $$25
                (get_local $$7)
               )
               (set_local $$26
                (get_local $$8)
               )
               (set_local $$27
                (call $__ZNK9FastNoise11SingleValueEhfff
                 (get_local $$9)
                 (i32.const 0)
                 (get_local $$24)
                 (get_local $$25)
                 (get_local $$26)
                )
               )
               (set_local $$4
                (get_local $$27)
               )
               (br $switch)
              )
             )
             (block
              (set_local $$28
               (i32.add
                (get_local $$9)
                (i32.const 1052)
               )
              )
              (set_local $$29
               (i32.load
                (get_local $$28)
               )
              )
              (block $switch0
               (block $switch-default
                (block $switch-case3
                 (block $switch-case2
                  (block $switch-case1
                   (br_table $switch-case1 $switch-case2 $switch-case3 $switch-default
                    (i32.sub
                     (get_local $$29)
                     (i32.const 0)
                    )
                   )
                  )
                  (block
                   (set_local $$30
                    (get_local $$6)
                   )
                   (set_local $$31
                    (get_local $$7)
                   )
                   (set_local $$32
                    (get_local $$8)
                   )
                   (set_local $$33
                    (call $__ZNK9FastNoise21SingleValueFractalFBMEfff
                     (get_local $$9)
                     (get_local $$30)
                     (get_local $$31)
                     (get_local $$32)
                    )
                   )
                   (set_local $$4
                    (get_local $$33)
                   )
                   (br $label$break$L1)
                   (br $switch0)
                  )
                 )
                 (block
                  (set_local $$34
                   (get_local $$6)
                  )
                  (set_local $$35
                   (get_local $$7)
                  )
                  (set_local $$36
                   (get_local $$8)
                  )
                  (set_local $$37
                   (call $__ZNK9FastNoise24SingleValueFractalBillowEfff
                    (get_local $$9)
                    (get_local $$34)
                    (get_local $$35)
                    (get_local $$36)
                   )
                  )
                  (set_local $$4
                   (get_local $$37)
                  )
                  (br $label$break$L1)
                  (br $switch0)
                 )
                )
                (block
                 (set_local $$38
                  (get_local $$6)
                 )
                 (set_local $$39
                  (get_local $$7)
                 )
                 (set_local $$40
                  (get_local $$8)
                 )
                 (set_local $$41
                  (call $__ZNK9FastNoise28SingleValueFractalRigidMultiEfff
                   (get_local $$9)
                   (get_local $$38)
                   (get_local $$39)
                   (get_local $$40)
                  )
                 )
                 (set_local $$4
                  (get_local $$41)
                 )
                 (br $label$break$L1)
                 (br $switch0)
                )
               )
               (block
                (set_local $$4
                 (f32.const 0)
                )
                (br $label$break$L1)
               )
              )
              (br $switch)
             )
            )
            (block
             (set_local $$42
              (get_local $$6)
             )
             (set_local $$43
              (get_local $$7)
             )
             (set_local $$44
              (get_local $$8)
             )
             (set_local $$45
              (call $__ZNK9FastNoise12SinglePerlinEhfff
               (get_local $$9)
               (i32.const 0)
               (get_local $$42)
               (get_local $$43)
               (get_local $$44)
              )
             )
             (set_local $$4
              (get_local $$45)
             )
             (br $switch)
            )
           )
           (block
            (set_local $$46
             (i32.add
              (get_local $$9)
              (i32.const 1052)
             )
            )
            (set_local $$47
             (i32.load
              (get_local $$46)
             )
            )
            (block $switch6
             (block $switch-default10
              (block $switch-case9
               (block $switch-case8
                (block $switch-case7
                 (br_table $switch-case7 $switch-case8 $switch-case9 $switch-default10
                  (i32.sub
                   (get_local $$47)
                   (i32.const 0)
                  )
                 )
                )
                (block
                 (set_local $$48
                  (get_local $$6)
                 )
                 (set_local $$49
                  (get_local $$7)
                 )
                 (set_local $$50
                  (get_local $$8)
                 )
                 (set_local $$51
                  (call $__ZNK9FastNoise22SinglePerlinFractalFBMEfff
                   (get_local $$9)
                   (get_local $$48)
                   (get_local $$49)
                   (get_local $$50)
                  )
                 )
                 (set_local $$4
                  (get_local $$51)
                 )
                 (br $label$break$L1)
                 (br $switch6)
                )
               )
               (block
                (set_local $$52
                 (get_local $$6)
                )
                (set_local $$53
                 (get_local $$7)
                )
                (set_local $$54
                 (get_local $$8)
                )
                (set_local $$55
                 (call $__ZNK9FastNoise25SinglePerlinFractalBillowEfff
                  (get_local $$9)
                  (get_local $$52)
                  (get_local $$53)
                  (get_local $$54)
                 )
                )
                (set_local $$4
                 (get_local $$55)
                )
                (br $label$break$L1)
                (br $switch6)
               )
              )
              (block
               (set_local $$56
                (get_local $$6)
               )
               (set_local $$57
                (get_local $$7)
               )
               (set_local $$58
                (get_local $$8)
               )
               (set_local $$59
                (call $__ZNK9FastNoise29SinglePerlinFractalRigidMultiEfff
                 (get_local $$9)
                 (get_local $$56)
                 (get_local $$57)
                 (get_local $$58)
                )
               )
               (set_local $$4
                (get_local $$59)
               )
               (br $label$break$L1)
               (br $switch6)
              )
             )
             (block
              (set_local $$4
               (f32.const 0)
              )
              (br $label$break$L1)
             )
            )
            (br $switch)
           )
          )
          (block
           (set_local $$60
            (get_local $$6)
           )
           (set_local $$61
            (get_local $$7)
           )
           (set_local $$62
            (get_local $$8)
           )
           (set_local $$63
            (call $__ZNK9FastNoise13SingleSimplexEhfff
             (get_local $$9)
             (i32.const 0)
             (get_local $$60)
             (get_local $$61)
             (get_local $$62)
            )
           )
           (set_local $$4
            (get_local $$63)
           )
           (br $switch)
          )
         )
         (block
          (set_local $$64
           (i32.add
            (get_local $$9)
            (i32.const 1052)
           )
          )
          (set_local $$65
           (i32.load
            (get_local $$64)
           )
          )
          (block $switch13
           (block $switch-default17
            (block $switch-case16
             (block $switch-case15
              (block $switch-case14
               (br_table $switch-case14 $switch-case15 $switch-case16 $switch-default17
                (i32.sub
                 (get_local $$65)
                 (i32.const 0)
                )
               )
              )
              (block
               (set_local $$66
                (get_local $$6)
               )
               (set_local $$67
                (get_local $$7)
               )
               (set_local $$68
                (get_local $$8)
               )
               (set_local $$69
                (call $__ZNK9FastNoise23SingleSimplexFractalFBMEfff
                 (get_local $$9)
                 (get_local $$66)
                 (get_local $$67)
                 (get_local $$68)
                )
               )
               (set_local $$4
                (get_local $$69)
               )
               (br $label$break$L1)
               (br $switch13)
              )
             )
             (block
              (set_local $$70
               (get_local $$6)
              )
              (set_local $$71
               (get_local $$7)
              )
              (set_local $$72
               (get_local $$8)
              )
              (set_local $$73
               (call $__ZNK9FastNoise26SingleSimplexFractalBillowEfff
                (get_local $$9)
                (get_local $$70)
                (get_local $$71)
                (get_local $$72)
               )
              )
              (set_local $$4
               (get_local $$73)
              )
              (br $label$break$L1)
              (br $switch13)
             )
            )
            (block
             (set_local $$74
              (get_local $$6)
             )
             (set_local $$75
              (get_local $$7)
             )
             (set_local $$76
              (get_local $$8)
             )
             (set_local $$77
              (call $__ZNK9FastNoise30SingleSimplexFractalRigidMultiEfff
               (get_local $$9)
               (get_local $$74)
               (get_local $$75)
               (get_local $$76)
              )
             )
             (set_local $$4
              (get_local $$77)
             )
             (br $label$break$L1)
             (br $switch13)
            )
           )
           (block
            (set_local $$4
             (f32.const 0)
            )
            (br $label$break$L1)
           )
          )
          (br $switch)
         )
        )
        (block
         (set_local $$78
          (i32.add
           (get_local $$9)
           (i32.const 1064)
          )
         )
         (set_local $$79
          (i32.load
           (get_local $$78)
          )
         )
         (set_local $$switch
          (i32.lt_u
           (get_local $$79)
           (i32.const 3)
          )
         )
         (set_local $$80
          (get_local $$6)
         )
         (set_local $$81
          (get_local $$7)
         )
         (set_local $$82
          (get_local $$8)
         )
         (if
          (get_local $$switch)
          (block
           (set_local $$83
            (call $__ZNK9FastNoise14SingleCellularEfff
             (get_local $$9)
             (get_local $$80)
             (get_local $$81)
             (get_local $$82)
            )
           )
           (set_local $$4
            (get_local $$83)
           )
           (br $label$break$L1)
          )
          (block
           (set_local $$84
            (call $__ZNK9FastNoise19SingleCellular2EdgeEfff
             (get_local $$9)
             (get_local $$80)
             (get_local $$81)
             (get_local $$82)
            )
           )
           (set_local $$4
            (get_local $$84)
           )
           (br $label$break$L1)
          )
         )
         (br $switch)
        )
       )
       (block
        (set_local $$85
         (get_local $$6)
        )
        (set_local $$86
         (get_local $$7)
        )
        (set_local $$87
         (get_local $$8)
        )
        (set_local $$88
         (call $__ZNK9FastNoise13GetWhiteNoiseEfff
          (get_local $$9)
          (get_local $$85)
          (get_local $$86)
          (get_local $$87)
         )
        )
        (set_local $$4
         (get_local $$88)
        )
        (br $switch)
       )
      )
      (block
       (set_local $$89
        (get_local $$6)
       )
       (set_local $$90
        (get_local $$7)
       )
       (set_local $$91
        (get_local $$8)
       )
       (set_local $$92
        (call $__ZNK9FastNoise11SingleCubicEhfff
         (get_local $$9)
         (i32.const 0)
         (get_local $$89)
         (get_local $$90)
         (get_local $$91)
        )
       )
       (set_local $$4
        (get_local $$92)
       )
       (br $switch)
      )
     )
     (block
      (set_local $$93
       (i32.add
        (get_local $$9)
        (i32.const 1052)
       )
      )
      (set_local $$94
       (i32.load
        (get_local $$93)
       )
      )
      (block $switch22
       (block $switch-default26
        (block $switch-case25
         (block $switch-case24
          (block $switch-case23
           (br_table $switch-case23 $switch-case24 $switch-case25 $switch-default26
            (i32.sub
             (get_local $$94)
             (i32.const 0)
            )
           )
          )
          (block
           (set_local $$95
            (get_local $$6)
           )
           (set_local $$96
            (get_local $$7)
           )
           (set_local $$97
            (get_local $$8)
           )
           (set_local $$98
            (call $__ZNK9FastNoise21SingleCubicFractalFBMEfff
             (get_local $$9)
             (get_local $$95)
             (get_local $$96)
             (get_local $$97)
            )
           )
           (set_local $$4
            (get_local $$98)
           )
           (br $label$break$L1)
           (br $switch22)
          )
         )
         (block
          (set_local $$99
           (get_local $$6)
          )
          (set_local $$100
           (get_local $$7)
          )
          (set_local $$101
           (get_local $$8)
          )
          (set_local $$102
           (call $__ZNK9FastNoise24SingleCubicFractalBillowEfff
            (get_local $$9)
            (get_local $$99)
            (get_local $$100)
            (get_local $$101)
           )
          )
          (set_local $$4
           (get_local $$102)
          )
          (br $label$break$L1)
          (br $switch22)
         )
        )
        (block
         (set_local $$103
          (get_local $$6)
         )
         (set_local $$104
          (get_local $$7)
         )
         (set_local $$105
          (get_local $$8)
         )
         (set_local $$106
          (call $__ZNK9FastNoise28SingleCubicFractalRigidMultiEfff
           (get_local $$9)
           (get_local $$103)
           (get_local $$104)
           (get_local $$105)
          )
         )
         (set_local $$4
          (get_local $$106)
         )
         (br $label$break$L1)
         (br $switch22)
        )
       )
       (block
        (set_local $label
         (i32.const 29)
        )
        (br $label$break$L1)
       )
      )
      (br $switch)
     )
    )
    (set_local $label
     (i32.const 29)
    )
   )
  )
  (if
   (i32.eq
    (get_local $label)
    (i32.const 29)
   )
   (set_local $$4
    (f32.const 0)
   )
  )
  (set_local $$107
   (get_local $$4)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$107)
  )
 )
 (func $__ZNK9FastNoise11SingleValueEhfff (param $$0 i32) (param $$1 i32) (param $$2 f32) (param $$3 f32) (param $$4 f32) (result f32)
  (local $$10 i32)
  (local $$100 i32)
  (local $$101 i32)
  (local $$102 i32)
  (local $$103 f32)
  (local $$104 f32)
  (local $$105 f32)
  (local $$106 i32)
  (local $$107 i32)
  (local $$108 i32)
  (local $$109 i32)
  (local $$11 i32)
  (local $$110 f32)
  (local $$111 i32)
  (local $$112 i32)
  (local $$113 i32)
  (local $$114 i32)
  (local $$115 f32)
  (local $$116 f32)
  (local $$117 f32)
  (local $$118 i32)
  (local $$119 i32)
  (local $$12 i32)
  (local $$120 i32)
  (local $$121 i32)
  (local $$122 f32)
  (local $$123 i32)
  (local $$124 i32)
  (local $$125 i32)
  (local $$126 i32)
  (local $$127 f32)
  (local $$128 f32)
  (local $$129 f32)
  (local $$13 i32)
  (local $$130 f32)
  (local $$131 f32)
  (local $$132 f32)
  (local $$133 f32)
  (local $$134 f32)
  (local $$135 f32)
  (local $$136 f32)
  (local $$137 f32)
  (local $$138 f32)
  (local $$139 f32)
  (local $$14 i32)
  (local $$140 f32)
  (local $$141 f32)
  (local $$15 i32)
  (local $$16 f32)
  (local $$17 f32)
  (local $$18 f32)
  (local $$19 f32)
  (local $$20 f32)
  (local $$21 f32)
  (local $$22 f32)
  (local $$23 f32)
  (local $$24 f32)
  (local $$25 i32)
  (local $$26 f32)
  (local $$27 i32)
  (local $$28 f32)
  (local $$29 i32)
  (local $$30 f32)
  (local $$31 i32)
  (local $$32 i32)
  (local $$33 i32)
  (local $$34 i32)
  (local $$35 i32)
  (local $$36 i32)
  (local $$37 i32)
  (local $$38 i32)
  (local $$39 i32)
  (local $$40 f32)
  (local $$41 i32)
  (local $$42 f32)
  (local $$43 f32)
  (local $$44 f32)
  (local $$45 i32)
  (local $$46 f32)
  (local $$47 f32)
  (local $$48 f32)
  (local $$49 i32)
  (local $$5 i32)
  (local $$50 f32)
  (local $$51 f32)
  (local $$52 f32)
  (local $$53 i32)
  (local $$54 f32)
  (local $$55 f32)
  (local $$56 f32)
  (local $$57 f32)
  (local $$58 i32)
  (local $$59 f32)
  (local $$6 i32)
  (local $$60 f32)
  (local $$61 f32)
  (local $$62 f32)
  (local $$63 i32)
  (local $$64 f32)
  (local $$65 f32)
  (local $$66 f32)
  (local $$67 f32)
  (local $$68 i32)
  (local $$69 f32)
  (local $$7 f32)
  (local $$70 f32)
  (local $$71 f32)
  (local $$72 f32)
  (local $$73 i32)
  (local $$74 f32)
  (local $$75 f32)
  (local $$76 f32)
  (local $$77 f32)
  (local $$78 i32)
  (local $$79 f32)
  (local $$8 f32)
  (local $$80 f32)
  (local $$81 f32)
  (local $$82 i32)
  (local $$83 i32)
  (local $$84 i32)
  (local $$85 i32)
  (local $$86 f32)
  (local $$87 i32)
  (local $$88 i32)
  (local $$89 i32)
  (local $$9 f32)
  (local $$90 i32)
  (local $$91 f32)
  (local $$92 f32)
  (local $$93 f32)
  (local $$94 i32)
  (local $$95 i32)
  (local $$96 i32)
  (local $$97 i32)
  (local $$98 f32)
  (local $$99 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 80)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 80)
   )
  )
  (set_local $$5
   (get_local $$0)
  )
  (set_local $$6
   (get_local $$1)
  )
  (set_local $$7
   (get_local $$2)
  )
  (set_local $$8
   (get_local $$3)
  )
  (set_local $$9
   (get_local $$4)
  )
  (set_local $$25
   (get_local $$5)
  )
  (set_local $$26
   (get_local $$7)
  )
  (set_local $$27
   (call $__ZL9FastFloorf
    (get_local $$26)
   )
  )
  (set_local $$10
   (get_local $$27)
  )
  (set_local $$28
   (get_local $$8)
  )
  (set_local $$29
   (call $__ZL9FastFloorf
    (get_local $$28)
   )
  )
  (set_local $$11
   (get_local $$29)
  )
  (set_local $$30
   (get_local $$9)
  )
  (set_local $$31
   (call $__ZL9FastFloorf
    (get_local $$30)
   )
  )
  (set_local $$12
   (get_local $$31)
  )
  (set_local $$32
   (get_local $$10)
  )
  (set_local $$33
   (i32.add
    (get_local $$32)
    (i32.const 1)
   )
  )
  (set_local $$13
   (get_local $$33)
  )
  (set_local $$34
   (get_local $$11)
  )
  (set_local $$35
   (i32.add
    (get_local $$34)
    (i32.const 1)
   )
  )
  (set_local $$14
   (get_local $$35)
  )
  (set_local $$36
   (get_local $$12)
  )
  (set_local $$37
   (i32.add
    (get_local $$36)
    (i32.const 1)
   )
  )
  (set_local $$15
   (get_local $$37)
  )
  (set_local $$38
   (i32.add
    (get_local $$25)
    (i32.const 1032)
   )
  )
  (set_local $$39
   (i32.load
    (get_local $$38)
   )
  )
  (block $switch
   (block $switch-default
    (block $switch-case1
     (block $switch-case0
      (block $switch-case
       (br_table $switch-case $switch-case0 $switch-case1 $switch-default
        (i32.sub
         (get_local $$39)
         (i32.const 0)
        )
       )
      )
      (block
       (set_local $$40
        (get_local $$7)
       )
       (set_local $$41
        (get_local $$10)
       )
       (set_local $$42
        (f32.convert_s/i32
         (get_local $$41)
        )
       )
       (set_local $$43
        (f32.sub
         (get_local $$40)
         (get_local $$42)
        )
       )
       (set_local $$16
        (get_local $$43)
       )
       (set_local $$44
        (get_local $$8)
       )
       (set_local $$45
        (get_local $$11)
       )
       (set_local $$46
        (f32.convert_s/i32
         (get_local $$45)
        )
       )
       (set_local $$47
        (f32.sub
         (get_local $$44)
         (get_local $$46)
        )
       )
       (set_local $$17
        (get_local $$47)
       )
       (set_local $$48
        (get_local $$9)
       )
       (set_local $$49
        (get_local $$12)
       )
       (set_local $$50
        (f32.convert_s/i32
         (get_local $$49)
        )
       )
       (set_local $$51
        (f32.sub
         (get_local $$48)
         (get_local $$50)
        )
       )
       (set_local $$18
        (get_local $$51)
       )
       (br $switch)
      )
     )
     (block
      (set_local $$52
       (get_local $$7)
      )
      (set_local $$53
       (get_local $$10)
      )
      (set_local $$54
       (f32.convert_s/i32
        (get_local $$53)
       )
      )
      (set_local $$55
       (f32.sub
        (get_local $$52)
        (get_local $$54)
       )
      )
      (set_local $$56
       (call $__ZL17InterpHermiteFuncf
        (get_local $$55)
       )
      )
      (set_local $$16
       (get_local $$56)
      )
      (set_local $$57
       (get_local $$8)
      )
      (set_local $$58
       (get_local $$11)
      )
      (set_local $$59
       (f32.convert_s/i32
        (get_local $$58)
       )
      )
      (set_local $$60
       (f32.sub
        (get_local $$57)
        (get_local $$59)
       )
      )
      (set_local $$61
       (call $__ZL17InterpHermiteFuncf
        (get_local $$60)
       )
      )
      (set_local $$17
       (get_local $$61)
      )
      (set_local $$62
       (get_local $$9)
      )
      (set_local $$63
       (get_local $$12)
      )
      (set_local $$64
       (f32.convert_s/i32
        (get_local $$63)
       )
      )
      (set_local $$65
       (f32.sub
        (get_local $$62)
        (get_local $$64)
       )
      )
      (set_local $$66
       (call $__ZL17InterpHermiteFuncf
        (get_local $$65)
       )
      )
      (set_local $$18
       (get_local $$66)
      )
      (br $switch)
     )
    )
    (block
     (set_local $$67
      (get_local $$7)
     )
     (set_local $$68
      (get_local $$10)
     )
     (set_local $$69
      (f32.convert_s/i32
       (get_local $$68)
      )
     )
     (set_local $$70
      (f32.sub
       (get_local $$67)
       (get_local $$69)
      )
     )
     (set_local $$71
      (call $__ZL17InterpQuinticFuncf
       (get_local $$70)
      )
     )
     (set_local $$16
      (get_local $$71)
     )
     (set_local $$72
      (get_local $$8)
     )
     (set_local $$73
      (get_local $$11)
     )
     (set_local $$74
      (f32.convert_s/i32
       (get_local $$73)
      )
     )
     (set_local $$75
      (f32.sub
       (get_local $$72)
       (get_local $$74)
      )
     )
     (set_local $$76
      (call $__ZL17InterpQuinticFuncf
       (get_local $$75)
      )
     )
     (set_local $$17
      (get_local $$76)
     )
     (set_local $$77
      (get_local $$9)
     )
     (set_local $$78
      (get_local $$12)
     )
     (set_local $$79
      (f32.convert_s/i32
       (get_local $$78)
      )
     )
     (set_local $$80
      (f32.sub
       (get_local $$77)
       (get_local $$79)
      )
     )
     (set_local $$81
      (call $__ZL17InterpQuinticFuncf
       (get_local $$80)
      )
     )
     (set_local $$18
      (get_local $$81)
     )
     (br $switch)
    )
   )
   (nop)
  )
  (set_local $$82
   (get_local $$6)
  )
  (set_local $$83
   (get_local $$10)
  )
  (set_local $$84
   (get_local $$11)
  )
  (set_local $$85
   (get_local $$12)
  )
  (set_local $$86
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$82)
    (get_local $$83)
    (get_local $$84)
    (get_local $$85)
   )
  )
  (set_local $$87
   (get_local $$6)
  )
  (set_local $$88
   (get_local $$13)
  )
  (set_local $$89
   (get_local $$11)
  )
  (set_local $$90
   (get_local $$12)
  )
  (set_local $$91
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$87)
    (get_local $$88)
    (get_local $$89)
    (get_local $$90)
   )
  )
  (set_local $$92
   (get_local $$16)
  )
  (set_local $$93
   (call $__ZL4Lerpfff
    (get_local $$86)
    (get_local $$91)
    (get_local $$92)
   )
  )
  (set_local $$19
   (get_local $$93)
  )
  (set_local $$94
   (get_local $$6)
  )
  (set_local $$95
   (get_local $$10)
  )
  (set_local $$96
   (get_local $$14)
  )
  (set_local $$97
   (get_local $$12)
  )
  (set_local $$98
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$94)
    (get_local $$95)
    (get_local $$96)
    (get_local $$97)
   )
  )
  (set_local $$99
   (get_local $$6)
  )
  (set_local $$100
   (get_local $$13)
  )
  (set_local $$101
   (get_local $$14)
  )
  (set_local $$102
   (get_local $$12)
  )
  (set_local $$103
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$99)
    (get_local $$100)
    (get_local $$101)
    (get_local $$102)
   )
  )
  (set_local $$104
   (get_local $$16)
  )
  (set_local $$105
   (call $__ZL4Lerpfff
    (get_local $$98)
    (get_local $$103)
    (get_local $$104)
   )
  )
  (set_local $$20
   (get_local $$105)
  )
  (set_local $$106
   (get_local $$6)
  )
  (set_local $$107
   (get_local $$10)
  )
  (set_local $$108
   (get_local $$11)
  )
  (set_local $$109
   (get_local $$15)
  )
  (set_local $$110
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$106)
    (get_local $$107)
    (get_local $$108)
    (get_local $$109)
   )
  )
  (set_local $$111
   (get_local $$6)
  )
  (set_local $$112
   (get_local $$13)
  )
  (set_local $$113
   (get_local $$11)
  )
  (set_local $$114
   (get_local $$15)
  )
  (set_local $$115
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$111)
    (get_local $$112)
    (get_local $$113)
    (get_local $$114)
   )
  )
  (set_local $$116
   (get_local $$16)
  )
  (set_local $$117
   (call $__ZL4Lerpfff
    (get_local $$110)
    (get_local $$115)
    (get_local $$116)
   )
  )
  (set_local $$21
   (get_local $$117)
  )
  (set_local $$118
   (get_local $$6)
  )
  (set_local $$119
   (get_local $$10)
  )
  (set_local $$120
   (get_local $$14)
  )
  (set_local $$121
   (get_local $$15)
  )
  (set_local $$122
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$118)
    (get_local $$119)
    (get_local $$120)
    (get_local $$121)
   )
  )
  (set_local $$123
   (get_local $$6)
  )
  (set_local $$124
   (get_local $$13)
  )
  (set_local $$125
   (get_local $$14)
  )
  (set_local $$126
   (get_local $$15)
  )
  (set_local $$127
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$123)
    (get_local $$124)
    (get_local $$125)
    (get_local $$126)
   )
  )
  (set_local $$128
   (get_local $$16)
  )
  (set_local $$129
   (call $__ZL4Lerpfff
    (get_local $$122)
    (get_local $$127)
    (get_local $$128)
   )
  )
  (set_local $$22
   (get_local $$129)
  )
  (set_local $$130
   (get_local $$19)
  )
  (set_local $$131
   (get_local $$20)
  )
  (set_local $$132
   (get_local $$17)
  )
  (set_local $$133
   (call $__ZL4Lerpfff
    (get_local $$130)
    (get_local $$131)
    (get_local $$132)
   )
  )
  (set_local $$23
   (get_local $$133)
  )
  (set_local $$134
   (get_local $$21)
  )
  (set_local $$135
   (get_local $$22)
  )
  (set_local $$136
   (get_local $$17)
  )
  (set_local $$137
   (call $__ZL4Lerpfff
    (get_local $$134)
    (get_local $$135)
    (get_local $$136)
   )
  )
  (set_local $$24
   (get_local $$137)
  )
  (set_local $$138
   (get_local $$23)
  )
  (set_local $$139
   (get_local $$24)
  )
  (set_local $$140
   (get_local $$18)
  )
  (set_local $$141
   (call $__ZL4Lerpfff
    (get_local $$138)
    (get_local $$139)
    (get_local $$140)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$141)
  )
 )
 (func $__ZNK9FastNoise21SingleValueFractalFBMEfff (param $$0 i32) (param $$1 f32) (param $$2 f32) (param $$3 f32) (result f32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 f32)
  (local $$14 f32)
  (local $$15 f32)
  (local $$16 f32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$19 i32)
  (local $$20 i32)
  (local $$21 i32)
  (local $$22 i32)
  (local $$23 f32)
  (local $$24 f32)
  (local $$25 f32)
  (local $$26 i32)
  (local $$27 f32)
  (local $$28 f32)
  (local $$29 f32)
  (local $$30 i32)
  (local $$31 f32)
  (local $$32 f32)
  (local $$33 f32)
  (local $$34 i32)
  (local $$35 f32)
  (local $$36 f32)
  (local $$37 f32)
  (local $$38 i32)
  (local $$39 i32)
  (local $$4 i32)
  (local $$40 i32)
  (local $$41 f32)
  (local $$42 f32)
  (local $$43 f32)
  (local $$44 f32)
  (local $$45 f32)
  (local $$46 f32)
  (local $$47 f32)
  (local $$48 f32)
  (local $$49 f32)
  (local $$5 f32)
  (local $$50 i32)
  (local $$51 f32)
  (local $$52 f32)
  (local $$6 f32)
  (local $$7 f32)
  (local $$8 f32)
  (local $$9 f32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 32)
   )
  )
  (set_local $$4
   (get_local $$0)
  )
  (set_local $$5
   (get_local $$1)
  )
  (set_local $$6
   (get_local $$2)
  )
  (set_local $$7
   (get_local $$3)
  )
  (set_local $$11
   (get_local $$4)
  )
  (set_local $$12
   (i32.load8_s
    (get_local $$11)
   )
  )
  (set_local $$13
   (get_local $$5)
  )
  (set_local $$14
   (get_local $$6)
  )
  (set_local $$15
   (get_local $$7)
  )
  (set_local $$16
   (call $__ZNK9FastNoise11SingleValueEhfff
    (get_local $$11)
    (get_local $$12)
    (get_local $$13)
    (get_local $$14)
    (get_local $$15)
   )
  )
  (set_local $$8
   (get_local $$16)
  )
  (set_local $$9
   (f32.const 1)
  )
  (set_local $$10
   (i32.const 0)
  )
  (loop $while-in
   (block $while-out
    (set_local $$17
     (get_local $$10)
    )
    (set_local $$18
     (i32.add
      (get_local $$17)
      (i32.const 1)
     )
    )
    (set_local $$10
     (get_local $$18)
    )
    (set_local $$19
     (i32.add
      (get_local $$11)
      (i32.const 1040)
     )
    )
    (set_local $$20
     (i32.load
      (get_local $$19)
     )
    )
    (set_local $$21
     (i32.lt_s
      (get_local $$18)
      (get_local $$20)
     )
    )
    (if
     (i32.eqz
      (get_local $$21)
     )
     (br $while-out)
    )
    (set_local $$22
     (i32.add
      (get_local $$11)
      (i32.const 1044)
     )
    )
    (set_local $$23
     (f32.load
      (get_local $$22)
     )
    )
    (set_local $$24
     (get_local $$5)
    )
    (set_local $$25
     (f32.mul
      (get_local $$24)
      (get_local $$23)
     )
    )
    (set_local $$5
     (get_local $$25)
    )
    (set_local $$26
     (i32.add
      (get_local $$11)
      (i32.const 1044)
     )
    )
    (set_local $$27
     (f32.load
      (get_local $$26)
     )
    )
    (set_local $$28
     (get_local $$6)
    )
    (set_local $$29
     (f32.mul
      (get_local $$28)
      (get_local $$27)
     )
    )
    (set_local $$6
     (get_local $$29)
    )
    (set_local $$30
     (i32.add
      (get_local $$11)
      (i32.const 1044)
     )
    )
    (set_local $$31
     (f32.load
      (get_local $$30)
     )
    )
    (set_local $$32
     (get_local $$7)
    )
    (set_local $$33
     (f32.mul
      (get_local $$32)
      (get_local $$31)
     )
    )
    (set_local $$7
     (get_local $$33)
    )
    (set_local $$34
     (i32.add
      (get_local $$11)
      (i32.const 1048)
     )
    )
    (set_local $$35
     (f32.load
      (get_local $$34)
     )
    )
    (set_local $$36
     (get_local $$9)
    )
    (set_local $$37
     (f32.mul
      (get_local $$36)
      (get_local $$35)
     )
    )
    (set_local $$9
     (get_local $$37)
    )
    (set_local $$38
     (get_local $$10)
    )
    (set_local $$39
     (i32.add
      (get_local $$11)
      (get_local $$38)
     )
    )
    (set_local $$40
     (i32.load8_s
      (get_local $$39)
     )
    )
    (set_local $$41
     (get_local $$5)
    )
    (set_local $$42
     (get_local $$6)
    )
    (set_local $$43
     (get_local $$7)
    )
    (set_local $$44
     (call $__ZNK9FastNoise11SingleValueEhfff
      (get_local $$11)
      (get_local $$40)
      (get_local $$41)
      (get_local $$42)
      (get_local $$43)
     )
    )
    (set_local $$45
     (get_local $$9)
    )
    (set_local $$46
     (f32.mul
      (get_local $$44)
      (get_local $$45)
     )
    )
    (set_local $$47
     (get_local $$8)
    )
    (set_local $$48
     (f32.add
      (get_local $$47)
      (get_local $$46)
     )
    )
    (set_local $$8
     (get_local $$48)
    )
    (br $while-in)
   )
  )
  (set_local $$49
   (get_local $$8)
  )
  (set_local $$50
   (i32.add
    (get_local $$11)
    (i32.const 1056)
   )
  )
  (set_local $$51
   (f32.load
    (get_local $$50)
   )
  )
  (set_local $$52
   (f32.mul
    (get_local $$49)
    (get_local $$51)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$52)
  )
 )
 (func $__ZNK9FastNoise24SingleValueFractalBillowEfff (param $$0 i32) (param $$1 f32) (param $$2 f32) (param $$3 f32) (result f32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 f32)
  (local $$14 f32)
  (local $$15 f32)
  (local $$16 f32)
  (local $$17 f32)
  (local $$18 f32)
  (local $$19 f32)
  (local $$20 i32)
  (local $$21 i32)
  (local $$22 i32)
  (local $$23 i32)
  (local $$24 i32)
  (local $$25 i32)
  (local $$26 f32)
  (local $$27 f32)
  (local $$28 f32)
  (local $$29 i32)
  (local $$30 f32)
  (local $$31 f32)
  (local $$32 f32)
  (local $$33 i32)
  (local $$34 f32)
  (local $$35 f32)
  (local $$36 f32)
  (local $$37 i32)
  (local $$38 f32)
  (local $$39 f32)
  (local $$4 i32)
  (local $$40 f32)
  (local $$41 i32)
  (local $$42 i32)
  (local $$43 i32)
  (local $$44 f32)
  (local $$45 f32)
  (local $$46 f32)
  (local $$47 f32)
  (local $$48 f32)
  (local $$49 f32)
  (local $$5 f32)
  (local $$50 f32)
  (local $$51 f32)
  (local $$52 f32)
  (local $$53 f32)
  (local $$54 f32)
  (local $$55 f32)
  (local $$56 i32)
  (local $$57 f32)
  (local $$58 f32)
  (local $$6 f32)
  (local $$7 f32)
  (local $$8 f32)
  (local $$9 f32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 32)
   )
  )
  (set_local $$4
   (get_local $$0)
  )
  (set_local $$5
   (get_local $$1)
  )
  (set_local $$6
   (get_local $$2)
  )
  (set_local $$7
   (get_local $$3)
  )
  (set_local $$11
   (get_local $$4)
  )
  (set_local $$12
   (i32.load8_s
    (get_local $$11)
   )
  )
  (set_local $$13
   (get_local $$5)
  )
  (set_local $$14
   (get_local $$6)
  )
  (set_local $$15
   (get_local $$7)
  )
  (set_local $$16
   (call $__ZNK9FastNoise11SingleValueEhfff
    (get_local $$11)
    (get_local $$12)
    (get_local $$13)
    (get_local $$14)
    (get_local $$15)
   )
  )
  (set_local $$17
   (call $__ZL7FastAbsf
    (get_local $$16)
   )
  )
  (set_local $$18
   (f32.mul
    (get_local $$17)
    (f32.const 2)
   )
  )
  (set_local $$19
   (f32.sub
    (get_local $$18)
    (f32.const 1)
   )
  )
  (set_local $$8
   (get_local $$19)
  )
  (set_local $$9
   (f32.const 1)
  )
  (set_local $$10
   (i32.const 0)
  )
  (loop $while-in
   (block $while-out
    (set_local $$20
     (get_local $$10)
    )
    (set_local $$21
     (i32.add
      (get_local $$20)
      (i32.const 1)
     )
    )
    (set_local $$10
     (get_local $$21)
    )
    (set_local $$22
     (i32.add
      (get_local $$11)
      (i32.const 1040)
     )
    )
    (set_local $$23
     (i32.load
      (get_local $$22)
     )
    )
    (set_local $$24
     (i32.lt_s
      (get_local $$21)
      (get_local $$23)
     )
    )
    (if
     (i32.eqz
      (get_local $$24)
     )
     (br $while-out)
    )
    (set_local $$25
     (i32.add
      (get_local $$11)
      (i32.const 1044)
     )
    )
    (set_local $$26
     (f32.load
      (get_local $$25)
     )
    )
    (set_local $$27
     (get_local $$5)
    )
    (set_local $$28
     (f32.mul
      (get_local $$27)
      (get_local $$26)
     )
    )
    (set_local $$5
     (get_local $$28)
    )
    (set_local $$29
     (i32.add
      (get_local $$11)
      (i32.const 1044)
     )
    )
    (set_local $$30
     (f32.load
      (get_local $$29)
     )
    )
    (set_local $$31
     (get_local $$6)
    )
    (set_local $$32
     (f32.mul
      (get_local $$31)
      (get_local $$30)
     )
    )
    (set_local $$6
     (get_local $$32)
    )
    (set_local $$33
     (i32.add
      (get_local $$11)
      (i32.const 1044)
     )
    )
    (set_local $$34
     (f32.load
      (get_local $$33)
     )
    )
    (set_local $$35
     (get_local $$7)
    )
    (set_local $$36
     (f32.mul
      (get_local $$35)
      (get_local $$34)
     )
    )
    (set_local $$7
     (get_local $$36)
    )
    (set_local $$37
     (i32.add
      (get_local $$11)
      (i32.const 1048)
     )
    )
    (set_local $$38
     (f32.load
      (get_local $$37)
     )
    )
    (set_local $$39
     (get_local $$9)
    )
    (set_local $$40
     (f32.mul
      (get_local $$39)
      (get_local $$38)
     )
    )
    (set_local $$9
     (get_local $$40)
    )
    (set_local $$41
     (get_local $$10)
    )
    (set_local $$42
     (i32.add
      (get_local $$11)
      (get_local $$41)
     )
    )
    (set_local $$43
     (i32.load8_s
      (get_local $$42)
     )
    )
    (set_local $$44
     (get_local $$5)
    )
    (set_local $$45
     (get_local $$6)
    )
    (set_local $$46
     (get_local $$7)
    )
    (set_local $$47
     (call $__ZNK9FastNoise11SingleValueEhfff
      (get_local $$11)
      (get_local $$43)
      (get_local $$44)
      (get_local $$45)
      (get_local $$46)
     )
    )
    (set_local $$48
     (call $__ZL7FastAbsf
      (get_local $$47)
     )
    )
    (set_local $$49
     (f32.mul
      (get_local $$48)
      (f32.const 2)
     )
    )
    (set_local $$50
     (f32.sub
      (get_local $$49)
      (f32.const 1)
     )
    )
    (set_local $$51
     (get_local $$9)
    )
    (set_local $$52
     (f32.mul
      (get_local $$50)
      (get_local $$51)
     )
    )
    (set_local $$53
     (get_local $$8)
    )
    (set_local $$54
     (f32.add
      (get_local $$53)
      (get_local $$52)
     )
    )
    (set_local $$8
     (get_local $$54)
    )
    (br $while-in)
   )
  )
  (set_local $$55
   (get_local $$8)
  )
  (set_local $$56
   (i32.add
    (get_local $$11)
    (i32.const 1056)
   )
  )
  (set_local $$57
   (f32.load
    (get_local $$56)
   )
  )
  (set_local $$58
   (f32.mul
    (get_local $$55)
    (get_local $$57)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$58)
  )
 )
 (func $__ZNK9FastNoise28SingleValueFractalRigidMultiEfff (param $$0 i32) (param $$1 f32) (param $$2 f32) (param $$3 f32) (result f32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 f32)
  (local $$14 f32)
  (local $$15 f32)
  (local $$16 f32)
  (local $$17 f32)
  (local $$18 f32)
  (local $$19 i32)
  (local $$20 i32)
  (local $$21 i32)
  (local $$22 i32)
  (local $$23 i32)
  (local $$24 i32)
  (local $$25 f32)
  (local $$26 f32)
  (local $$27 f32)
  (local $$28 i32)
  (local $$29 f32)
  (local $$30 f32)
  (local $$31 f32)
  (local $$32 i32)
  (local $$33 f32)
  (local $$34 f32)
  (local $$35 f32)
  (local $$36 i32)
  (local $$37 f32)
  (local $$38 f32)
  (local $$39 f32)
  (local $$4 i32)
  (local $$40 i32)
  (local $$41 i32)
  (local $$42 i32)
  (local $$43 f32)
  (local $$44 f32)
  (local $$45 f32)
  (local $$46 f32)
  (local $$47 f32)
  (local $$48 f32)
  (local $$49 f32)
  (local $$5 f32)
  (local $$50 f32)
  (local $$51 f32)
  (local $$52 f32)
  (local $$53 f32)
  (local $$6 f32)
  (local $$7 f32)
  (local $$8 f32)
  (local $$9 f32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 32)
   )
  )
  (set_local $$4
   (get_local $$0)
  )
  (set_local $$5
   (get_local $$1)
  )
  (set_local $$6
   (get_local $$2)
  )
  (set_local $$7
   (get_local $$3)
  )
  (set_local $$11
   (get_local $$4)
  )
  (set_local $$12
   (i32.load8_s
    (get_local $$11)
   )
  )
  (set_local $$13
   (get_local $$5)
  )
  (set_local $$14
   (get_local $$6)
  )
  (set_local $$15
   (get_local $$7)
  )
  (set_local $$16
   (call $__ZNK9FastNoise11SingleValueEhfff
    (get_local $$11)
    (get_local $$12)
    (get_local $$13)
    (get_local $$14)
    (get_local $$15)
   )
  )
  (set_local $$17
   (call $__ZL7FastAbsf
    (get_local $$16)
   )
  )
  (set_local $$18
   (f32.sub
    (f32.const 1)
    (get_local $$17)
   )
  )
  (set_local $$8
   (get_local $$18)
  )
  (set_local $$9
   (f32.const 1)
  )
  (set_local $$10
   (i32.const 0)
  )
  (loop $while-in
   (block $while-out
    (set_local $$19
     (get_local $$10)
    )
    (set_local $$20
     (i32.add
      (get_local $$19)
      (i32.const 1)
     )
    )
    (set_local $$10
     (get_local $$20)
    )
    (set_local $$21
     (i32.add
      (get_local $$11)
      (i32.const 1040)
     )
    )
    (set_local $$22
     (i32.load
      (get_local $$21)
     )
    )
    (set_local $$23
     (i32.lt_s
      (get_local $$20)
      (get_local $$22)
     )
    )
    (if
     (i32.eqz
      (get_local $$23)
     )
     (br $while-out)
    )
    (set_local $$24
     (i32.add
      (get_local $$11)
      (i32.const 1044)
     )
    )
    (set_local $$25
     (f32.load
      (get_local $$24)
     )
    )
    (set_local $$26
     (get_local $$5)
    )
    (set_local $$27
     (f32.mul
      (get_local $$26)
      (get_local $$25)
     )
    )
    (set_local $$5
     (get_local $$27)
    )
    (set_local $$28
     (i32.add
      (get_local $$11)
      (i32.const 1044)
     )
    )
    (set_local $$29
     (f32.load
      (get_local $$28)
     )
    )
    (set_local $$30
     (get_local $$6)
    )
    (set_local $$31
     (f32.mul
      (get_local $$30)
      (get_local $$29)
     )
    )
    (set_local $$6
     (get_local $$31)
    )
    (set_local $$32
     (i32.add
      (get_local $$11)
      (i32.const 1044)
     )
    )
    (set_local $$33
     (f32.load
      (get_local $$32)
     )
    )
    (set_local $$34
     (get_local $$7)
    )
    (set_local $$35
     (f32.mul
      (get_local $$34)
      (get_local $$33)
     )
    )
    (set_local $$7
     (get_local $$35)
    )
    (set_local $$36
     (i32.add
      (get_local $$11)
      (i32.const 1048)
     )
    )
    (set_local $$37
     (f32.load
      (get_local $$36)
     )
    )
    (set_local $$38
     (get_local $$9)
    )
    (set_local $$39
     (f32.mul
      (get_local $$38)
      (get_local $$37)
     )
    )
    (set_local $$9
     (get_local $$39)
    )
    (set_local $$40
     (get_local $$10)
    )
    (set_local $$41
     (i32.add
      (get_local $$11)
      (get_local $$40)
     )
    )
    (set_local $$42
     (i32.load8_s
      (get_local $$41)
     )
    )
    (set_local $$43
     (get_local $$5)
    )
    (set_local $$44
     (get_local $$6)
    )
    (set_local $$45
     (get_local $$7)
    )
    (set_local $$46
     (call $__ZNK9FastNoise11SingleValueEhfff
      (get_local $$11)
      (get_local $$42)
      (get_local $$43)
      (get_local $$44)
      (get_local $$45)
     )
    )
    (set_local $$47
     (call $__ZL7FastAbsf
      (get_local $$46)
     )
    )
    (set_local $$48
     (f32.sub
      (f32.const 1)
      (get_local $$47)
     )
    )
    (set_local $$49
     (get_local $$9)
    )
    (set_local $$50
     (f32.mul
      (get_local $$48)
      (get_local $$49)
     )
    )
    (set_local $$51
     (get_local $$8)
    )
    (set_local $$52
     (f32.sub
      (get_local $$51)
      (get_local $$50)
     )
    )
    (set_local $$8
     (get_local $$52)
    )
    (br $while-in)
   )
  )
  (set_local $$53
   (get_local $$8)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$53)
  )
 )
 (func $__ZNK9FastNoise12SinglePerlinEhfff (param $$0 i32) (param $$1 i32) (param $$2 f32) (param $$3 f32) (param $$4 f32) (result f32)
  (local $$10 i32)
  (local $$100 f32)
  (local $$101 f32)
  (local $$102 f32)
  (local $$103 f32)
  (local $$104 f32)
  (local $$105 f32)
  (local $$106 i32)
  (local $$107 i32)
  (local $$108 i32)
  (local $$109 i32)
  (local $$11 i32)
  (local $$110 f32)
  (local $$111 f32)
  (local $$112 f32)
  (local $$113 f32)
  (local $$114 i32)
  (local $$115 i32)
  (local $$116 i32)
  (local $$117 i32)
  (local $$118 f32)
  (local $$119 f32)
  (local $$12 i32)
  (local $$120 f32)
  (local $$121 f32)
  (local $$122 f32)
  (local $$123 f32)
  (local $$124 i32)
  (local $$125 i32)
  (local $$126 i32)
  (local $$127 i32)
  (local $$128 f32)
  (local $$129 f32)
  (local $$13 i32)
  (local $$130 f32)
  (local $$131 f32)
  (local $$132 i32)
  (local $$133 i32)
  (local $$134 i32)
  (local $$135 i32)
  (local $$136 f32)
  (local $$137 f32)
  (local $$138 f32)
  (local $$139 f32)
  (local $$14 i32)
  (local $$140 f32)
  (local $$141 f32)
  (local $$142 i32)
  (local $$143 i32)
  (local $$144 i32)
  (local $$145 i32)
  (local $$146 f32)
  (local $$147 f32)
  (local $$148 f32)
  (local $$149 f32)
  (local $$15 i32)
  (local $$150 i32)
  (local $$151 i32)
  (local $$152 i32)
  (local $$153 i32)
  (local $$154 f32)
  (local $$155 f32)
  (local $$156 f32)
  (local $$157 f32)
  (local $$158 f32)
  (local $$159 f32)
  (local $$16 f32)
  (local $$160 i32)
  (local $$161 i32)
  (local $$162 i32)
  (local $$163 i32)
  (local $$164 f32)
  (local $$165 f32)
  (local $$166 f32)
  (local $$167 f32)
  (local $$168 i32)
  (local $$169 i32)
  (local $$17 f32)
  (local $$170 i32)
  (local $$171 i32)
  (local $$172 f32)
  (local $$173 f32)
  (local $$174 f32)
  (local $$175 f32)
  (local $$176 f32)
  (local $$177 f32)
  (local $$178 f32)
  (local $$179 f32)
  (local $$18 f32)
  (local $$180 f32)
  (local $$181 f32)
  (local $$182 f32)
  (local $$183 f32)
  (local $$184 f32)
  (local $$185 f32)
  (local $$186 f32)
  (local $$187 f32)
  (local $$188 f32)
  (local $$189 f32)
  (local $$19 f32)
  (local $$20 f32)
  (local $$21 f32)
  (local $$22 f32)
  (local $$23 f32)
  (local $$24 f32)
  (local $$25 f32)
  (local $$26 f32)
  (local $$27 f32)
  (local $$28 f32)
  (local $$29 f32)
  (local $$30 f32)
  (local $$31 i32)
  (local $$32 f32)
  (local $$33 i32)
  (local $$34 f32)
  (local $$35 i32)
  (local $$36 f32)
  (local $$37 i32)
  (local $$38 i32)
  (local $$39 i32)
  (local $$40 i32)
  (local $$41 i32)
  (local $$42 i32)
  (local $$43 i32)
  (local $$44 i32)
  (local $$45 i32)
  (local $$46 f32)
  (local $$47 i32)
  (local $$48 f32)
  (local $$49 f32)
  (local $$5 i32)
  (local $$50 f32)
  (local $$51 i32)
  (local $$52 f32)
  (local $$53 f32)
  (local $$54 f32)
  (local $$55 i32)
  (local $$56 f32)
  (local $$57 f32)
  (local $$58 f32)
  (local $$59 i32)
  (local $$6 i32)
  (local $$60 f32)
  (local $$61 f32)
  (local $$62 f32)
  (local $$63 f32)
  (local $$64 i32)
  (local $$65 f32)
  (local $$66 f32)
  (local $$67 f32)
  (local $$68 f32)
  (local $$69 i32)
  (local $$7 f32)
  (local $$70 f32)
  (local $$71 f32)
  (local $$72 f32)
  (local $$73 f32)
  (local $$74 i32)
  (local $$75 f32)
  (local $$76 f32)
  (local $$77 f32)
  (local $$78 f32)
  (local $$79 i32)
  (local $$8 f32)
  (local $$80 f32)
  (local $$81 f32)
  (local $$82 f32)
  (local $$83 f32)
  (local $$84 i32)
  (local $$85 f32)
  (local $$86 f32)
  (local $$87 f32)
  (local $$88 f32)
  (local $$89 i32)
  (local $$9 f32)
  (local $$90 f32)
  (local $$91 f32)
  (local $$92 f32)
  (local $$93 i32)
  (local $$94 f32)
  (local $$95 f32)
  (local $$96 f32)
  (local $$97 i32)
  (local $$98 f32)
  (local $$99 f32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 112)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 112)
   )
  )
  (set_local $$5
   (get_local $$0)
  )
  (set_local $$6
   (get_local $$1)
  )
  (set_local $$7
   (get_local $$2)
  )
  (set_local $$8
   (get_local $$3)
  )
  (set_local $$9
   (get_local $$4)
  )
  (set_local $$31
   (get_local $$5)
  )
  (set_local $$32
   (get_local $$7)
  )
  (set_local $$33
   (call $__ZL9FastFloorf
    (get_local $$32)
   )
  )
  (set_local $$10
   (get_local $$33)
  )
  (set_local $$34
   (get_local $$8)
  )
  (set_local $$35
   (call $__ZL9FastFloorf
    (get_local $$34)
   )
  )
  (set_local $$11
   (get_local $$35)
  )
  (set_local $$36
   (get_local $$9)
  )
  (set_local $$37
   (call $__ZL9FastFloorf
    (get_local $$36)
   )
  )
  (set_local $$12
   (get_local $$37)
  )
  (set_local $$38
   (get_local $$10)
  )
  (set_local $$39
   (i32.add
    (get_local $$38)
    (i32.const 1)
   )
  )
  (set_local $$13
   (get_local $$39)
  )
  (set_local $$40
   (get_local $$11)
  )
  (set_local $$41
   (i32.add
    (get_local $$40)
    (i32.const 1)
   )
  )
  (set_local $$14
   (get_local $$41)
  )
  (set_local $$42
   (get_local $$12)
  )
  (set_local $$43
   (i32.add
    (get_local $$42)
    (i32.const 1)
   )
  )
  (set_local $$15
   (get_local $$43)
  )
  (set_local $$44
   (i32.add
    (get_local $$31)
    (i32.const 1032)
   )
  )
  (set_local $$45
   (i32.load
    (get_local $$44)
   )
  )
  (block $switch
   (block $switch-default
    (block $switch-case1
     (block $switch-case0
      (block $switch-case
       (br_table $switch-case $switch-case0 $switch-case1 $switch-default
        (i32.sub
         (get_local $$45)
         (i32.const 0)
        )
       )
      )
      (block
       (set_local $$46
        (get_local $$7)
       )
       (set_local $$47
        (get_local $$10)
       )
       (set_local $$48
        (f32.convert_s/i32
         (get_local $$47)
        )
       )
       (set_local $$49
        (f32.sub
         (get_local $$46)
         (get_local $$48)
        )
       )
       (set_local $$16
        (get_local $$49)
       )
       (set_local $$50
        (get_local $$8)
       )
       (set_local $$51
        (get_local $$11)
       )
       (set_local $$52
        (f32.convert_s/i32
         (get_local $$51)
        )
       )
       (set_local $$53
        (f32.sub
         (get_local $$50)
         (get_local $$52)
        )
       )
       (set_local $$17
        (get_local $$53)
       )
       (set_local $$54
        (get_local $$9)
       )
       (set_local $$55
        (get_local $$12)
       )
       (set_local $$56
        (f32.convert_s/i32
         (get_local $$55)
        )
       )
       (set_local $$57
        (f32.sub
         (get_local $$54)
         (get_local $$56)
        )
       )
       (set_local $$18
        (get_local $$57)
       )
       (br $switch)
      )
     )
     (block
      (set_local $$58
       (get_local $$7)
      )
      (set_local $$59
       (get_local $$10)
      )
      (set_local $$60
       (f32.convert_s/i32
        (get_local $$59)
       )
      )
      (set_local $$61
       (f32.sub
        (get_local $$58)
        (get_local $$60)
       )
      )
      (set_local $$62
       (call $__ZL17InterpHermiteFuncf
        (get_local $$61)
       )
      )
      (set_local $$16
       (get_local $$62)
      )
      (set_local $$63
       (get_local $$8)
      )
      (set_local $$64
       (get_local $$11)
      )
      (set_local $$65
       (f32.convert_s/i32
        (get_local $$64)
       )
      )
      (set_local $$66
       (f32.sub
        (get_local $$63)
        (get_local $$65)
       )
      )
      (set_local $$67
       (call $__ZL17InterpHermiteFuncf
        (get_local $$66)
       )
      )
      (set_local $$17
       (get_local $$67)
      )
      (set_local $$68
       (get_local $$9)
      )
      (set_local $$69
       (get_local $$12)
      )
      (set_local $$70
       (f32.convert_s/i32
        (get_local $$69)
       )
      )
      (set_local $$71
       (f32.sub
        (get_local $$68)
        (get_local $$70)
       )
      )
      (set_local $$72
       (call $__ZL17InterpHermiteFuncf
        (get_local $$71)
       )
      )
      (set_local $$18
       (get_local $$72)
      )
      (br $switch)
     )
    )
    (block
     (set_local $$73
      (get_local $$7)
     )
     (set_local $$74
      (get_local $$10)
     )
     (set_local $$75
      (f32.convert_s/i32
       (get_local $$74)
      )
     )
     (set_local $$76
      (f32.sub
       (get_local $$73)
       (get_local $$75)
      )
     )
     (set_local $$77
      (call $__ZL17InterpQuinticFuncf
       (get_local $$76)
      )
     )
     (set_local $$16
      (get_local $$77)
     )
     (set_local $$78
      (get_local $$8)
     )
     (set_local $$79
      (get_local $$11)
     )
     (set_local $$80
      (f32.convert_s/i32
       (get_local $$79)
      )
     )
     (set_local $$81
      (f32.sub
       (get_local $$78)
       (get_local $$80)
      )
     )
     (set_local $$82
      (call $__ZL17InterpQuinticFuncf
       (get_local $$81)
      )
     )
     (set_local $$17
      (get_local $$82)
     )
     (set_local $$83
      (get_local $$9)
     )
     (set_local $$84
      (get_local $$12)
     )
     (set_local $$85
      (f32.convert_s/i32
       (get_local $$84)
      )
     )
     (set_local $$86
      (f32.sub
       (get_local $$83)
       (get_local $$85)
      )
     )
     (set_local $$87
      (call $__ZL17InterpQuinticFuncf
       (get_local $$86)
      )
     )
     (set_local $$18
      (get_local $$87)
     )
     (br $switch)
    )
   )
   (nop)
  )
  (set_local $$88
   (get_local $$7)
  )
  (set_local $$89
   (get_local $$10)
  )
  (set_local $$90
   (f32.convert_s/i32
    (get_local $$89)
   )
  )
  (set_local $$91
   (f32.sub
    (get_local $$88)
    (get_local $$90)
   )
  )
  (set_local $$19
   (get_local $$91)
  )
  (set_local $$92
   (get_local $$8)
  )
  (set_local $$93
   (get_local $$11)
  )
  (set_local $$94
   (f32.convert_s/i32
    (get_local $$93)
   )
  )
  (set_local $$95
   (f32.sub
    (get_local $$92)
    (get_local $$94)
   )
  )
  (set_local $$20
   (get_local $$95)
  )
  (set_local $$96
   (get_local $$9)
  )
  (set_local $$97
   (get_local $$12)
  )
  (set_local $$98
   (f32.convert_s/i32
    (get_local $$97)
   )
  )
  (set_local $$99
   (f32.sub
    (get_local $$96)
    (get_local $$98)
   )
  )
  (set_local $$21
   (get_local $$99)
  )
  (set_local $$100
   (get_local $$19)
  )
  (set_local $$101
   (f32.sub
    (get_local $$100)
    (f32.const 1)
   )
  )
  (set_local $$22
   (get_local $$101)
  )
  (set_local $$102
   (get_local $$20)
  )
  (set_local $$103
   (f32.sub
    (get_local $$102)
    (f32.const 1)
   )
  )
  (set_local $$23
   (get_local $$103)
  )
  (set_local $$104
   (get_local $$21)
  )
  (set_local $$105
   (f32.sub
    (get_local $$104)
    (f32.const 1)
   )
  )
  (set_local $$24
   (get_local $$105)
  )
  (set_local $$106
   (get_local $$6)
  )
  (set_local $$107
   (get_local $$10)
  )
  (set_local $$108
   (get_local $$11)
  )
  (set_local $$109
   (get_local $$12)
  )
  (set_local $$110
   (get_local $$19)
  )
  (set_local $$111
   (get_local $$20)
  )
  (set_local $$112
   (get_local $$21)
  )
  (set_local $$113
   (call $__ZNK9FastNoise11GradCoord3DEhiiifff
    (get_local $$31)
    (get_local $$106)
    (get_local $$107)
    (get_local $$108)
    (get_local $$109)
    (get_local $$110)
    (get_local $$111)
    (get_local $$112)
   )
  )
  (set_local $$114
   (get_local $$6)
  )
  (set_local $$115
   (get_local $$13)
  )
  (set_local $$116
   (get_local $$11)
  )
  (set_local $$117
   (get_local $$12)
  )
  (set_local $$118
   (get_local $$22)
  )
  (set_local $$119
   (get_local $$20)
  )
  (set_local $$120
   (get_local $$21)
  )
  (set_local $$121
   (call $__ZNK9FastNoise11GradCoord3DEhiiifff
    (get_local $$31)
    (get_local $$114)
    (get_local $$115)
    (get_local $$116)
    (get_local $$117)
    (get_local $$118)
    (get_local $$119)
    (get_local $$120)
   )
  )
  (set_local $$122
   (get_local $$16)
  )
  (set_local $$123
   (call $__ZL4Lerpfff
    (get_local $$113)
    (get_local $$121)
    (get_local $$122)
   )
  )
  (set_local $$25
   (get_local $$123)
  )
  (set_local $$124
   (get_local $$6)
  )
  (set_local $$125
   (get_local $$10)
  )
  (set_local $$126
   (get_local $$14)
  )
  (set_local $$127
   (get_local $$12)
  )
  (set_local $$128
   (get_local $$19)
  )
  (set_local $$129
   (get_local $$23)
  )
  (set_local $$130
   (get_local $$21)
  )
  (set_local $$131
   (call $__ZNK9FastNoise11GradCoord3DEhiiifff
    (get_local $$31)
    (get_local $$124)
    (get_local $$125)
    (get_local $$126)
    (get_local $$127)
    (get_local $$128)
    (get_local $$129)
    (get_local $$130)
   )
  )
  (set_local $$132
   (get_local $$6)
  )
  (set_local $$133
   (get_local $$13)
  )
  (set_local $$134
   (get_local $$14)
  )
  (set_local $$135
   (get_local $$12)
  )
  (set_local $$136
   (get_local $$22)
  )
  (set_local $$137
   (get_local $$23)
  )
  (set_local $$138
   (get_local $$21)
  )
  (set_local $$139
   (call $__ZNK9FastNoise11GradCoord3DEhiiifff
    (get_local $$31)
    (get_local $$132)
    (get_local $$133)
    (get_local $$134)
    (get_local $$135)
    (get_local $$136)
    (get_local $$137)
    (get_local $$138)
   )
  )
  (set_local $$140
   (get_local $$16)
  )
  (set_local $$141
   (call $__ZL4Lerpfff
    (get_local $$131)
    (get_local $$139)
    (get_local $$140)
   )
  )
  (set_local $$26
   (get_local $$141)
  )
  (set_local $$142
   (get_local $$6)
  )
  (set_local $$143
   (get_local $$10)
  )
  (set_local $$144
   (get_local $$11)
  )
  (set_local $$145
   (get_local $$15)
  )
  (set_local $$146
   (get_local $$19)
  )
  (set_local $$147
   (get_local $$20)
  )
  (set_local $$148
   (get_local $$24)
  )
  (set_local $$149
   (call $__ZNK9FastNoise11GradCoord3DEhiiifff
    (get_local $$31)
    (get_local $$142)
    (get_local $$143)
    (get_local $$144)
    (get_local $$145)
    (get_local $$146)
    (get_local $$147)
    (get_local $$148)
   )
  )
  (set_local $$150
   (get_local $$6)
  )
  (set_local $$151
   (get_local $$13)
  )
  (set_local $$152
   (get_local $$11)
  )
  (set_local $$153
   (get_local $$15)
  )
  (set_local $$154
   (get_local $$22)
  )
  (set_local $$155
   (get_local $$20)
  )
  (set_local $$156
   (get_local $$24)
  )
  (set_local $$157
   (call $__ZNK9FastNoise11GradCoord3DEhiiifff
    (get_local $$31)
    (get_local $$150)
    (get_local $$151)
    (get_local $$152)
    (get_local $$153)
    (get_local $$154)
    (get_local $$155)
    (get_local $$156)
   )
  )
  (set_local $$158
   (get_local $$16)
  )
  (set_local $$159
   (call $__ZL4Lerpfff
    (get_local $$149)
    (get_local $$157)
    (get_local $$158)
   )
  )
  (set_local $$27
   (get_local $$159)
  )
  (set_local $$160
   (get_local $$6)
  )
  (set_local $$161
   (get_local $$10)
  )
  (set_local $$162
   (get_local $$14)
  )
  (set_local $$163
   (get_local $$15)
  )
  (set_local $$164
   (get_local $$19)
  )
  (set_local $$165
   (get_local $$23)
  )
  (set_local $$166
   (get_local $$24)
  )
  (set_local $$167
   (call $__ZNK9FastNoise11GradCoord3DEhiiifff
    (get_local $$31)
    (get_local $$160)
    (get_local $$161)
    (get_local $$162)
    (get_local $$163)
    (get_local $$164)
    (get_local $$165)
    (get_local $$166)
   )
  )
  (set_local $$168
   (get_local $$6)
  )
  (set_local $$169
   (get_local $$13)
  )
  (set_local $$170
   (get_local $$14)
  )
  (set_local $$171
   (get_local $$15)
  )
  (set_local $$172
   (get_local $$22)
  )
  (set_local $$173
   (get_local $$23)
  )
  (set_local $$174
   (get_local $$24)
  )
  (set_local $$175
   (call $__ZNK9FastNoise11GradCoord3DEhiiifff
    (get_local $$31)
    (get_local $$168)
    (get_local $$169)
    (get_local $$170)
    (get_local $$171)
    (get_local $$172)
    (get_local $$173)
    (get_local $$174)
   )
  )
  (set_local $$176
   (get_local $$16)
  )
  (set_local $$177
   (call $__ZL4Lerpfff
    (get_local $$167)
    (get_local $$175)
    (get_local $$176)
   )
  )
  (set_local $$28
   (get_local $$177)
  )
  (set_local $$178
   (get_local $$25)
  )
  (set_local $$179
   (get_local $$26)
  )
  (set_local $$180
   (get_local $$17)
  )
  (set_local $$181
   (call $__ZL4Lerpfff
    (get_local $$178)
    (get_local $$179)
    (get_local $$180)
   )
  )
  (set_local $$29
   (get_local $$181)
  )
  (set_local $$182
   (get_local $$27)
  )
  (set_local $$183
   (get_local $$28)
  )
  (set_local $$184
   (get_local $$17)
  )
  (set_local $$185
   (call $__ZL4Lerpfff
    (get_local $$182)
    (get_local $$183)
    (get_local $$184)
   )
  )
  (set_local $$30
   (get_local $$185)
  )
  (set_local $$186
   (get_local $$29)
  )
  (set_local $$187
   (get_local $$30)
  )
  (set_local $$188
   (get_local $$18)
  )
  (set_local $$189
   (call $__ZL4Lerpfff
    (get_local $$186)
    (get_local $$187)
    (get_local $$188)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$189)
  )
 )
 (func $__ZNK9FastNoise22SinglePerlinFractalFBMEfff (param $$0 i32) (param $$1 f32) (param $$2 f32) (param $$3 f32) (result f32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 f32)
  (local $$14 f32)
  (local $$15 f32)
  (local $$16 f32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$19 i32)
  (local $$20 i32)
  (local $$21 i32)
  (local $$22 i32)
  (local $$23 f32)
  (local $$24 f32)
  (local $$25 f32)
  (local $$26 i32)
  (local $$27 f32)
  (local $$28 f32)
  (local $$29 f32)
  (local $$30 i32)
  (local $$31 f32)
  (local $$32 f32)
  (local $$33 f32)
  (local $$34 i32)
  (local $$35 f32)
  (local $$36 f32)
  (local $$37 f32)
  (local $$38 i32)
  (local $$39 i32)
  (local $$4 i32)
  (local $$40 i32)
  (local $$41 f32)
  (local $$42 f32)
  (local $$43 f32)
  (local $$44 f32)
  (local $$45 f32)
  (local $$46 f32)
  (local $$47 f32)
  (local $$48 f32)
  (local $$49 f32)
  (local $$5 f32)
  (local $$50 i32)
  (local $$51 f32)
  (local $$52 f32)
  (local $$6 f32)
  (local $$7 f32)
  (local $$8 f32)
  (local $$9 f32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 32)
   )
  )
  (set_local $$4
   (get_local $$0)
  )
  (set_local $$5
   (get_local $$1)
  )
  (set_local $$6
   (get_local $$2)
  )
  (set_local $$7
   (get_local $$3)
  )
  (set_local $$11
   (get_local $$4)
  )
  (set_local $$12
   (i32.load8_s
    (get_local $$11)
   )
  )
  (set_local $$13
   (get_local $$5)
  )
  (set_local $$14
   (get_local $$6)
  )
  (set_local $$15
   (get_local $$7)
  )
  (set_local $$16
   (call $__ZNK9FastNoise12SinglePerlinEhfff
    (get_local $$11)
    (get_local $$12)
    (get_local $$13)
    (get_local $$14)
    (get_local $$15)
   )
  )
  (set_local $$8
   (get_local $$16)
  )
  (set_local $$9
   (f32.const 1)
  )
  (set_local $$10
   (i32.const 0)
  )
  (loop $while-in
   (block $while-out
    (set_local $$17
     (get_local $$10)
    )
    (set_local $$18
     (i32.add
      (get_local $$17)
      (i32.const 1)
     )
    )
    (set_local $$10
     (get_local $$18)
    )
    (set_local $$19
     (i32.add
      (get_local $$11)
      (i32.const 1040)
     )
    )
    (set_local $$20
     (i32.load
      (get_local $$19)
     )
    )
    (set_local $$21
     (i32.lt_s
      (get_local $$18)
      (get_local $$20)
     )
    )
    (if
     (i32.eqz
      (get_local $$21)
     )
     (br $while-out)
    )
    (set_local $$22
     (i32.add
      (get_local $$11)
      (i32.const 1044)
     )
    )
    (set_local $$23
     (f32.load
      (get_local $$22)
     )
    )
    (set_local $$24
     (get_local $$5)
    )
    (set_local $$25
     (f32.mul
      (get_local $$24)
      (get_local $$23)
     )
    )
    (set_local $$5
     (get_local $$25)
    )
    (set_local $$26
     (i32.add
      (get_local $$11)
      (i32.const 1044)
     )
    )
    (set_local $$27
     (f32.load
      (get_local $$26)
     )
    )
    (set_local $$28
     (get_local $$6)
    )
    (set_local $$29
     (f32.mul
      (get_local $$28)
      (get_local $$27)
     )
    )
    (set_local $$6
     (get_local $$29)
    )
    (set_local $$30
     (i32.add
      (get_local $$11)
      (i32.const 1044)
     )
    )
    (set_local $$31
     (f32.load
      (get_local $$30)
     )
    )
    (set_local $$32
     (get_local $$7)
    )
    (set_local $$33
     (f32.mul
      (get_local $$32)
      (get_local $$31)
     )
    )
    (set_local $$7
     (get_local $$33)
    )
    (set_local $$34
     (i32.add
      (get_local $$11)
      (i32.const 1048)
     )
    )
    (set_local $$35
     (f32.load
      (get_local $$34)
     )
    )
    (set_local $$36
     (get_local $$9)
    )
    (set_local $$37
     (f32.mul
      (get_local $$36)
      (get_local $$35)
     )
    )
    (set_local $$9
     (get_local $$37)
    )
    (set_local $$38
     (get_local $$10)
    )
    (set_local $$39
     (i32.add
      (get_local $$11)
      (get_local $$38)
     )
    )
    (set_local $$40
     (i32.load8_s
      (get_local $$39)
     )
    )
    (set_local $$41
     (get_local $$5)
    )
    (set_local $$42
     (get_local $$6)
    )
    (set_local $$43
     (get_local $$7)
    )
    (set_local $$44
     (call $__ZNK9FastNoise12SinglePerlinEhfff
      (get_local $$11)
      (get_local $$40)
      (get_local $$41)
      (get_local $$42)
      (get_local $$43)
     )
    )
    (set_local $$45
     (get_local $$9)
    )
    (set_local $$46
     (f32.mul
      (get_local $$44)
      (get_local $$45)
     )
    )
    (set_local $$47
     (get_local $$8)
    )
    (set_local $$48
     (f32.add
      (get_local $$47)
      (get_local $$46)
     )
    )
    (set_local $$8
     (get_local $$48)
    )
    (br $while-in)
   )
  )
  (set_local $$49
   (get_local $$8)
  )
  (set_local $$50
   (i32.add
    (get_local $$11)
    (i32.const 1056)
   )
  )
  (set_local $$51
   (f32.load
    (get_local $$50)
   )
  )
  (set_local $$52
   (f32.mul
    (get_local $$49)
    (get_local $$51)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$52)
  )
 )
 (func $__ZNK9FastNoise25SinglePerlinFractalBillowEfff (param $$0 i32) (param $$1 f32) (param $$2 f32) (param $$3 f32) (result f32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 f32)
  (local $$14 f32)
  (local $$15 f32)
  (local $$16 f32)
  (local $$17 f32)
  (local $$18 f32)
  (local $$19 f32)
  (local $$20 i32)
  (local $$21 i32)
  (local $$22 i32)
  (local $$23 i32)
  (local $$24 i32)
  (local $$25 i32)
  (local $$26 f32)
  (local $$27 f32)
  (local $$28 f32)
  (local $$29 i32)
  (local $$30 f32)
  (local $$31 f32)
  (local $$32 f32)
  (local $$33 i32)
  (local $$34 f32)
  (local $$35 f32)
  (local $$36 f32)
  (local $$37 i32)
  (local $$38 f32)
  (local $$39 f32)
  (local $$4 i32)
  (local $$40 f32)
  (local $$41 i32)
  (local $$42 i32)
  (local $$43 i32)
  (local $$44 f32)
  (local $$45 f32)
  (local $$46 f32)
  (local $$47 f32)
  (local $$48 f32)
  (local $$49 f32)
  (local $$5 f32)
  (local $$50 f32)
  (local $$51 f32)
  (local $$52 f32)
  (local $$53 f32)
  (local $$54 f32)
  (local $$55 f32)
  (local $$56 i32)
  (local $$57 f32)
  (local $$58 f32)
  (local $$6 f32)
  (local $$7 f32)
  (local $$8 f32)
  (local $$9 f32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 32)
   )
  )
  (set_local $$4
   (get_local $$0)
  )
  (set_local $$5
   (get_local $$1)
  )
  (set_local $$6
   (get_local $$2)
  )
  (set_local $$7
   (get_local $$3)
  )
  (set_local $$11
   (get_local $$4)
  )
  (set_local $$12
   (i32.load8_s
    (get_local $$11)
   )
  )
  (set_local $$13
   (get_local $$5)
  )
  (set_local $$14
   (get_local $$6)
  )
  (set_local $$15
   (get_local $$7)
  )
  (set_local $$16
   (call $__ZNK9FastNoise12SinglePerlinEhfff
    (get_local $$11)
    (get_local $$12)
    (get_local $$13)
    (get_local $$14)
    (get_local $$15)
   )
  )
  (set_local $$17
   (call $__ZL7FastAbsf
    (get_local $$16)
   )
  )
  (set_local $$18
   (f32.mul
    (get_local $$17)
    (f32.const 2)
   )
  )
  (set_local $$19
   (f32.sub
    (get_local $$18)
    (f32.const 1)
   )
  )
  (set_local $$8
   (get_local $$19)
  )
  (set_local $$9
   (f32.const 1)
  )
  (set_local $$10
   (i32.const 0)
  )
  (loop $while-in
   (block $while-out
    (set_local $$20
     (get_local $$10)
    )
    (set_local $$21
     (i32.add
      (get_local $$20)
      (i32.const 1)
     )
    )
    (set_local $$10
     (get_local $$21)
    )
    (set_local $$22
     (i32.add
      (get_local $$11)
      (i32.const 1040)
     )
    )
    (set_local $$23
     (i32.load
      (get_local $$22)
     )
    )
    (set_local $$24
     (i32.lt_s
      (get_local $$21)
      (get_local $$23)
     )
    )
    (if
     (i32.eqz
      (get_local $$24)
     )
     (br $while-out)
    )
    (set_local $$25
     (i32.add
      (get_local $$11)
      (i32.const 1044)
     )
    )
    (set_local $$26
     (f32.load
      (get_local $$25)
     )
    )
    (set_local $$27
     (get_local $$5)
    )
    (set_local $$28
     (f32.mul
      (get_local $$27)
      (get_local $$26)
     )
    )
    (set_local $$5
     (get_local $$28)
    )
    (set_local $$29
     (i32.add
      (get_local $$11)
      (i32.const 1044)
     )
    )
    (set_local $$30
     (f32.load
      (get_local $$29)
     )
    )
    (set_local $$31
     (get_local $$6)
    )
    (set_local $$32
     (f32.mul
      (get_local $$31)
      (get_local $$30)
     )
    )
    (set_local $$6
     (get_local $$32)
    )
    (set_local $$33
     (i32.add
      (get_local $$11)
      (i32.const 1044)
     )
    )
    (set_local $$34
     (f32.load
      (get_local $$33)
     )
    )
    (set_local $$35
     (get_local $$7)
    )
    (set_local $$36
     (f32.mul
      (get_local $$35)
      (get_local $$34)
     )
    )
    (set_local $$7
     (get_local $$36)
    )
    (set_local $$37
     (i32.add
      (get_local $$11)
      (i32.const 1048)
     )
    )
    (set_local $$38
     (f32.load
      (get_local $$37)
     )
    )
    (set_local $$39
     (get_local $$9)
    )
    (set_local $$40
     (f32.mul
      (get_local $$39)
      (get_local $$38)
     )
    )
    (set_local $$9
     (get_local $$40)
    )
    (set_local $$41
     (get_local $$10)
    )
    (set_local $$42
     (i32.add
      (get_local $$11)
      (get_local $$41)
     )
    )
    (set_local $$43
     (i32.load8_s
      (get_local $$42)
     )
    )
    (set_local $$44
     (get_local $$5)
    )
    (set_local $$45
     (get_local $$6)
    )
    (set_local $$46
     (get_local $$7)
    )
    (set_local $$47
     (call $__ZNK9FastNoise12SinglePerlinEhfff
      (get_local $$11)
      (get_local $$43)
      (get_local $$44)
      (get_local $$45)
      (get_local $$46)
     )
    )
    (set_local $$48
     (call $__ZL7FastAbsf
      (get_local $$47)
     )
    )
    (set_local $$49
     (f32.mul
      (get_local $$48)
      (f32.const 2)
     )
    )
    (set_local $$50
     (f32.sub
      (get_local $$49)
      (f32.const 1)
     )
    )
    (set_local $$51
     (get_local $$9)
    )
    (set_local $$52
     (f32.mul
      (get_local $$50)
      (get_local $$51)
     )
    )
    (set_local $$53
     (get_local $$8)
    )
    (set_local $$54
     (f32.add
      (get_local $$53)
      (get_local $$52)
     )
    )
    (set_local $$8
     (get_local $$54)
    )
    (br $while-in)
   )
  )
  (set_local $$55
   (get_local $$8)
  )
  (set_local $$56
   (i32.add
    (get_local $$11)
    (i32.const 1056)
   )
  )
  (set_local $$57
   (f32.load
    (get_local $$56)
   )
  )
  (set_local $$58
   (f32.mul
    (get_local $$55)
    (get_local $$57)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$58)
  )
 )
 (func $__ZNK9FastNoise29SinglePerlinFractalRigidMultiEfff (param $$0 i32) (param $$1 f32) (param $$2 f32) (param $$3 f32) (result f32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 f32)
  (local $$14 f32)
  (local $$15 f32)
  (local $$16 f32)
  (local $$17 f32)
  (local $$18 f32)
  (local $$19 i32)
  (local $$20 i32)
  (local $$21 i32)
  (local $$22 i32)
  (local $$23 i32)
  (local $$24 i32)
  (local $$25 f32)
  (local $$26 f32)
  (local $$27 f32)
  (local $$28 i32)
  (local $$29 f32)
  (local $$30 f32)
  (local $$31 f32)
  (local $$32 i32)
  (local $$33 f32)
  (local $$34 f32)
  (local $$35 f32)
  (local $$36 i32)
  (local $$37 f32)
  (local $$38 f32)
  (local $$39 f32)
  (local $$4 i32)
  (local $$40 i32)
  (local $$41 i32)
  (local $$42 i32)
  (local $$43 f32)
  (local $$44 f32)
  (local $$45 f32)
  (local $$46 f32)
  (local $$47 f32)
  (local $$48 f32)
  (local $$49 f32)
  (local $$5 f32)
  (local $$50 f32)
  (local $$51 f32)
  (local $$52 f32)
  (local $$53 f32)
  (local $$6 f32)
  (local $$7 f32)
  (local $$8 f32)
  (local $$9 f32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 32)
   )
  )
  (set_local $$4
   (get_local $$0)
  )
  (set_local $$5
   (get_local $$1)
  )
  (set_local $$6
   (get_local $$2)
  )
  (set_local $$7
   (get_local $$3)
  )
  (set_local $$11
   (get_local $$4)
  )
  (set_local $$12
   (i32.load8_s
    (get_local $$11)
   )
  )
  (set_local $$13
   (get_local $$5)
  )
  (set_local $$14
   (get_local $$6)
  )
  (set_local $$15
   (get_local $$7)
  )
  (set_local $$16
   (call $__ZNK9FastNoise12SinglePerlinEhfff
    (get_local $$11)
    (get_local $$12)
    (get_local $$13)
    (get_local $$14)
    (get_local $$15)
   )
  )
  (set_local $$17
   (call $__ZL7FastAbsf
    (get_local $$16)
   )
  )
  (set_local $$18
   (f32.sub
    (f32.const 1)
    (get_local $$17)
   )
  )
  (set_local $$8
   (get_local $$18)
  )
  (set_local $$9
   (f32.const 1)
  )
  (set_local $$10
   (i32.const 0)
  )
  (loop $while-in
   (block $while-out
    (set_local $$19
     (get_local $$10)
    )
    (set_local $$20
     (i32.add
      (get_local $$19)
      (i32.const 1)
     )
    )
    (set_local $$10
     (get_local $$20)
    )
    (set_local $$21
     (i32.add
      (get_local $$11)
      (i32.const 1040)
     )
    )
    (set_local $$22
     (i32.load
      (get_local $$21)
     )
    )
    (set_local $$23
     (i32.lt_s
      (get_local $$20)
      (get_local $$22)
     )
    )
    (if
     (i32.eqz
      (get_local $$23)
     )
     (br $while-out)
    )
    (set_local $$24
     (i32.add
      (get_local $$11)
      (i32.const 1044)
     )
    )
    (set_local $$25
     (f32.load
      (get_local $$24)
     )
    )
    (set_local $$26
     (get_local $$5)
    )
    (set_local $$27
     (f32.mul
      (get_local $$26)
      (get_local $$25)
     )
    )
    (set_local $$5
     (get_local $$27)
    )
    (set_local $$28
     (i32.add
      (get_local $$11)
      (i32.const 1044)
     )
    )
    (set_local $$29
     (f32.load
      (get_local $$28)
     )
    )
    (set_local $$30
     (get_local $$6)
    )
    (set_local $$31
     (f32.mul
      (get_local $$30)
      (get_local $$29)
     )
    )
    (set_local $$6
     (get_local $$31)
    )
    (set_local $$32
     (i32.add
      (get_local $$11)
      (i32.const 1044)
     )
    )
    (set_local $$33
     (f32.load
      (get_local $$32)
     )
    )
    (set_local $$34
     (get_local $$7)
    )
    (set_local $$35
     (f32.mul
      (get_local $$34)
      (get_local $$33)
     )
    )
    (set_local $$7
     (get_local $$35)
    )
    (set_local $$36
     (i32.add
      (get_local $$11)
      (i32.const 1048)
     )
    )
    (set_local $$37
     (f32.load
      (get_local $$36)
     )
    )
    (set_local $$38
     (get_local $$9)
    )
    (set_local $$39
     (f32.mul
      (get_local $$38)
      (get_local $$37)
     )
    )
    (set_local $$9
     (get_local $$39)
    )
    (set_local $$40
     (get_local $$10)
    )
    (set_local $$41
     (i32.add
      (get_local $$11)
      (get_local $$40)
     )
    )
    (set_local $$42
     (i32.load8_s
      (get_local $$41)
     )
    )
    (set_local $$43
     (get_local $$5)
    )
    (set_local $$44
     (get_local $$6)
    )
    (set_local $$45
     (get_local $$7)
    )
    (set_local $$46
     (call $__ZNK9FastNoise12SinglePerlinEhfff
      (get_local $$11)
      (get_local $$42)
      (get_local $$43)
      (get_local $$44)
      (get_local $$45)
     )
    )
    (set_local $$47
     (call $__ZL7FastAbsf
      (get_local $$46)
     )
    )
    (set_local $$48
     (f32.sub
      (f32.const 1)
      (get_local $$47)
     )
    )
    (set_local $$49
     (get_local $$9)
    )
    (set_local $$50
     (f32.mul
      (get_local $$48)
      (get_local $$49)
     )
    )
    (set_local $$51
     (get_local $$8)
    )
    (set_local $$52
     (f32.sub
      (get_local $$51)
      (get_local $$50)
     )
    )
    (set_local $$8
     (get_local $$52)
    )
    (br $while-in)
   )
  )
  (set_local $$53
   (get_local $$8)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$53)
  )
 )
 (func $__ZNK9FastNoise13SingleSimplexEhfff (param $$0 i32) (param $$1 i32) (param $$2 f32) (param $$3 f32) (param $$4 f32) (result f32)
  (local $$10 f32)
  (local $$100 i32)
  (local $$101 f32)
  (local $$102 f32)
  (local $$103 f32)
  (local $$104 f32)
  (local $$105 i32)
  (local $$106 f32)
  (local $$107 f32)
  (local $$108 f32)
  (local $$109 f32)
  (local $$11 i32)
  (local $$110 i32)
  (local $$111 f32)
  (local $$112 f32)
  (local $$113 f32)
  (local $$114 f32)
  (local $$115 i32)
  (local $$116 f32)
  (local $$117 f32)
  (local $$118 f32)
  (local $$119 f32)
  (local $$12 i32)
  (local $$120 i32)
  (local $$121 f32)
  (local $$122 f32)
  (local $$123 f32)
  (local $$124 f32)
  (local $$125 i32)
  (local $$126 f32)
  (local $$127 f32)
  (local $$128 f32)
  (local $$129 f32)
  (local $$13 i32)
  (local $$130 f32)
  (local $$131 f32)
  (local $$132 f32)
  (local $$133 f32)
  (local $$134 f32)
  (local $$135 f32)
  (local $$136 f32)
  (local $$137 f32)
  (local $$138 f32)
  (local $$139 f32)
  (local $$14 f32)
  (local $$140 f32)
  (local $$141 f32)
  (local $$142 f32)
  (local $$143 f32)
  (local $$144 f32)
  (local $$145 f32)
  (local $$146 f32)
  (local $$147 f32)
  (local $$148 f32)
  (local $$149 f32)
  (local $$15 f32)
  (local $$150 f32)
  (local $$151 i32)
  (local $$152 f32)
  (local $$153 f32)
  (local $$154 f32)
  (local $$155 f32)
  (local $$156 f32)
  (local $$157 f32)
  (local $$158 i32)
  (local $$159 i32)
  (local $$16 f32)
  (local $$160 i32)
  (local $$161 i32)
  (local $$162 f32)
  (local $$163 f32)
  (local $$164 f32)
  (local $$165 f32)
  (local $$166 f32)
  (local $$167 f32)
  (local $$168 f32)
  (local $$169 f32)
  (local $$17 f32)
  (local $$170 f32)
  (local $$171 f32)
  (local $$172 f32)
  (local $$173 f32)
  (local $$174 f32)
  (local $$175 f32)
  (local $$176 f32)
  (local $$177 f32)
  (local $$178 f32)
  (local $$179 f32)
  (local $$18 f32)
  (local $$180 i32)
  (local $$181 f32)
  (local $$182 f32)
  (local $$183 f32)
  (local $$184 f32)
  (local $$185 f32)
  (local $$186 f32)
  (local $$187 i32)
  (local $$188 i32)
  (local $$189 i32)
  (local $$19 f32)
  (local $$190 i32)
  (local $$191 i32)
  (local $$192 i32)
  (local $$193 i32)
  (local $$194 i32)
  (local $$195 i32)
  (local $$196 i32)
  (local $$197 f32)
  (local $$198 f32)
  (local $$199 f32)
  (local $$20 i32)
  (local $$200 f32)
  (local $$201 f32)
  (local $$202 f32)
  (local $$203 f32)
  (local $$204 f32)
  (local $$205 f32)
  (local $$206 f32)
  (local $$207 f32)
  (local $$208 f32)
  (local $$209 f32)
  (local $$21 i32)
  (local $$210 f32)
  (local $$211 f32)
  (local $$212 f32)
  (local $$213 f32)
  (local $$214 f32)
  (local $$215 i32)
  (local $$216 f32)
  (local $$217 f32)
  (local $$218 f32)
  (local $$219 f32)
  (local $$22 i32)
  (local $$220 f32)
  (local $$221 f32)
  (local $$222 i32)
  (local $$223 i32)
  (local $$224 i32)
  (local $$225 i32)
  (local $$226 i32)
  (local $$227 i32)
  (local $$228 i32)
  (local $$229 i32)
  (local $$23 i32)
  (local $$230 i32)
  (local $$231 i32)
  (local $$232 f32)
  (local $$233 f32)
  (local $$234 f32)
  (local $$235 f32)
  (local $$236 f32)
  (local $$237 f32)
  (local $$238 f32)
  (local $$239 f32)
  (local $$24 i32)
  (local $$240 f32)
  (local $$241 f32)
  (local $$242 f32)
  (local $$243 f32)
  (local $$244 f32)
  (local $$245 f32)
  (local $$246 f32)
  (local $$247 f32)
  (local $$248 f32)
  (local $$249 f32)
  (local $$25 i32)
  (local $$250 i32)
  (local $$251 f32)
  (local $$252 f32)
  (local $$253 f32)
  (local $$254 f32)
  (local $$255 f32)
  (local $$256 f32)
  (local $$257 i32)
  (local $$258 i32)
  (local $$259 i32)
  (local $$26 f32)
  (local $$260 i32)
  (local $$261 i32)
  (local $$262 i32)
  (local $$263 i32)
  (local $$264 f32)
  (local $$265 f32)
  (local $$266 f32)
  (local $$267 f32)
  (local $$268 f32)
  (local $$269 f32)
  (local $$27 f32)
  (local $$270 f32)
  (local $$271 f32)
  (local $$272 f32)
  (local $$273 f32)
  (local $$274 f32)
  (local $$275 f32)
  (local $$276 f32)
  (local $$28 f32)
  (local $$29 f32)
  (local $$30 f32)
  (local $$31 f32)
  (local $$32 f32)
  (local $$33 f32)
  (local $$34 f32)
  (local $$35 f32)
  (local $$36 f32)
  (local $$37 f32)
  (local $$38 f32)
  (local $$39 i32)
  (local $$40 f32)
  (local $$41 f32)
  (local $$42 f32)
  (local $$43 f32)
  (local $$44 f32)
  (local $$45 f32)
  (local $$46 f32)
  (local $$47 f32)
  (local $$48 f32)
  (local $$49 i32)
  (local $$5 i32)
  (local $$50 f32)
  (local $$51 f32)
  (local $$52 f32)
  (local $$53 i32)
  (local $$54 f32)
  (local $$55 f32)
  (local $$56 f32)
  (local $$57 i32)
  (local $$58 i32)
  (local $$59 i32)
  (local $$6 i32)
  (local $$60 i32)
  (local $$61 i32)
  (local $$62 i32)
  (local $$63 f32)
  (local $$64 f32)
  (local $$65 i32)
  (local $$66 f32)
  (local $$67 f32)
  (local $$68 f32)
  (local $$69 i32)
  (local $$7 f32)
  (local $$70 f32)
  (local $$71 f32)
  (local $$72 f32)
  (local $$73 i32)
  (local $$74 f32)
  (local $$75 f32)
  (local $$76 f32)
  (local $$77 f32)
  (local $$78 f32)
  (local $$79 f32)
  (local $$8 f32)
  (local $$80 f32)
  (local $$81 f32)
  (local $$82 f32)
  (local $$83 f32)
  (local $$84 f32)
  (local $$85 f32)
  (local $$86 f32)
  (local $$87 f32)
  (local $$88 i32)
  (local $$89 f32)
  (local $$9 f32)
  (local $$90 f32)
  (local $$91 i32)
  (local $$92 f32)
  (local $$93 f32)
  (local $$94 i32)
  (local $$95 i32)
  (local $$96 f32)
  (local $$97 f32)
  (local $$98 i32)
  (local $$99 f32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 144)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 144)
   )
  )
  (set_local $$5
   (get_local $$0)
  )
  (set_local $$6
   (get_local $$1)
  )
  (set_local $$7
   (get_local $$2)
  )
  (set_local $$8
   (get_local $$3)
  )
  (set_local $$9
   (get_local $$4)
  )
  (set_local $$39
   (get_local $$5)
  )
  (set_local $$40
   (get_local $$7)
  )
  (set_local $$41
   (get_local $$8)
  )
  (set_local $$42
   (f32.add
    (get_local $$40)
    (get_local $$41)
   )
  )
  (set_local $$43
   (get_local $$9)
  )
  (set_local $$44
   (f32.add
    (get_local $$42)
    (get_local $$43)
   )
  )
  (set_local $$45
   (f32.mul
    (get_local $$44)
    (f32.const 0.3333333432674408)
   )
  )
  (set_local $$10
   (get_local $$45)
  )
  (set_local $$46
   (get_local $$7)
  )
  (set_local $$47
   (get_local $$10)
  )
  (set_local $$48
   (f32.add
    (get_local $$46)
    (get_local $$47)
   )
  )
  (set_local $$49
   (call $__ZL9FastFloorf
    (get_local $$48)
   )
  )
  (set_local $$11
   (get_local $$49)
  )
  (set_local $$50
   (get_local $$8)
  )
  (set_local $$51
   (get_local $$10)
  )
  (set_local $$52
   (f32.add
    (get_local $$50)
    (get_local $$51)
   )
  )
  (set_local $$53
   (call $__ZL9FastFloorf
    (get_local $$52)
   )
  )
  (set_local $$12
   (get_local $$53)
  )
  (set_local $$54
   (get_local $$9)
  )
  (set_local $$55
   (get_local $$10)
  )
  (set_local $$56
   (f32.add
    (get_local $$54)
    (get_local $$55)
   )
  )
  (set_local $$57
   (call $__ZL9FastFloorf
    (get_local $$56)
   )
  )
  (set_local $$13
   (get_local $$57)
  )
  (set_local $$58
   (get_local $$11)
  )
  (set_local $$59
   (get_local $$12)
  )
  (set_local $$60
   (i32.add
    (get_local $$58)
    (get_local $$59)
   )
  )
  (set_local $$61
   (get_local $$13)
  )
  (set_local $$62
   (i32.add
    (get_local $$60)
    (get_local $$61)
   )
  )
  (set_local $$63
   (f32.convert_s/i32
    (get_local $$62)
   )
  )
  (set_local $$64
   (f32.mul
    (get_local $$63)
    (f32.const 0.1666666716337204)
   )
  )
  (set_local $$10
   (get_local $$64)
  )
  (set_local $$65
   (get_local $$11)
  )
  (set_local $$66
   (f32.convert_s/i32
    (get_local $$65)
   )
  )
  (set_local $$67
   (get_local $$10)
  )
  (set_local $$68
   (f32.sub
    (get_local $$66)
    (get_local $$67)
   )
  )
  (set_local $$14
   (get_local $$68)
  )
  (set_local $$69
   (get_local $$12)
  )
  (set_local $$70
   (f32.convert_s/i32
    (get_local $$69)
   )
  )
  (set_local $$71
   (get_local $$10)
  )
  (set_local $$72
   (f32.sub
    (get_local $$70)
    (get_local $$71)
   )
  )
  (set_local $$15
   (get_local $$72)
  )
  (set_local $$73
   (get_local $$13)
  )
  (set_local $$74
   (f32.convert_s/i32
    (get_local $$73)
   )
  )
  (set_local $$75
   (get_local $$10)
  )
  (set_local $$76
   (f32.sub
    (get_local $$74)
    (get_local $$75)
   )
  )
  (set_local $$16
   (get_local $$76)
  )
  (set_local $$77
   (get_local $$7)
  )
  (set_local $$78
   (get_local $$14)
  )
  (set_local $$79
   (f32.sub
    (get_local $$77)
    (get_local $$78)
   )
  )
  (set_local $$17
   (get_local $$79)
  )
  (set_local $$80
   (get_local $$8)
  )
  (set_local $$81
   (get_local $$15)
  )
  (set_local $$82
   (f32.sub
    (get_local $$80)
    (get_local $$81)
   )
  )
  (set_local $$18
   (get_local $$82)
  )
  (set_local $$83
   (get_local $$9)
  )
  (set_local $$84
   (get_local $$16)
  )
  (set_local $$85
   (f32.sub
    (get_local $$83)
    (get_local $$84)
   )
  )
  (set_local $$19
   (get_local $$85)
  )
  (set_local $$86
   (get_local $$17)
  )
  (set_local $$87
   (get_local $$18)
  )
  (set_local $$88
   (f32.ge
    (get_local $$86)
    (get_local $$87)
   )
  )
  (set_local $$89
   (get_local $$18)
  )
  (set_local $$90
   (get_local $$19)
  )
  (block $do-once
   (if
    (get_local $$88)
    (block
     (set_local $$91
      (f32.ge
       (get_local $$89)
       (get_local $$90)
      )
     )
     (if
      (get_local $$91)
      (block
       (set_local $$20
        (i32.const 1)
       )
       (set_local $$21
        (i32.const 0)
       )
       (set_local $$22
        (i32.const 0)
       )
       (set_local $$23
        (i32.const 1)
       )
       (set_local $$24
        (i32.const 1)
       )
       (set_local $$25
        (i32.const 0)
       )
       (br $do-once)
      )
     )
     (set_local $$92
      (get_local $$17)
     )
     (set_local $$93
      (get_local $$19)
     )
     (set_local $$94
      (f32.ge
       (get_local $$92)
       (get_local $$93)
      )
     )
     (if
      (get_local $$94)
      (block
       (set_local $$20
        (i32.const 1)
       )
       (set_local $$21
        (i32.const 0)
       )
       (set_local $$22
        (i32.const 0)
       )
       (set_local $$23
        (i32.const 1)
       )
       (set_local $$24
        (i32.const 0)
       )
       (set_local $$25
        (i32.const 1)
       )
       (br $do-once)
      )
      (block
       (set_local $$20
        (i32.const 0)
       )
       (set_local $$21
        (i32.const 0)
       )
       (set_local $$22
        (i32.const 1)
       )
       (set_local $$23
        (i32.const 1)
       )
       (set_local $$24
        (i32.const 0)
       )
       (set_local $$25
        (i32.const 1)
       )
       (br $do-once)
      )
     )
    )
    (block
     (set_local $$95
      (f32.lt
       (get_local $$89)
       (get_local $$90)
      )
     )
     (if
      (get_local $$95)
      (block
       (set_local $$20
        (i32.const 0)
       )
       (set_local $$21
        (i32.const 0)
       )
       (set_local $$22
        (i32.const 1)
       )
       (set_local $$23
        (i32.const 0)
       )
       (set_local $$24
        (i32.const 1)
       )
       (set_local $$25
        (i32.const 1)
       )
       (br $do-once)
      )
     )
     (set_local $$96
      (get_local $$17)
     )
     (set_local $$97
      (get_local $$19)
     )
     (set_local $$98
      (f32.lt
       (get_local $$96)
       (get_local $$97)
      )
     )
     (set_local $$20
      (i32.const 0)
     )
     (set_local $$21
      (i32.const 1)
     )
     (set_local $$22
      (i32.const 0)
     )
     (if
      (get_local $$98)
      (block
       (set_local $$23
        (i32.const 0)
       )
       (set_local $$24
        (i32.const 1)
       )
       (set_local $$25
        (i32.const 1)
       )
       (br $do-once)
      )
      (block
       (set_local $$23
        (i32.const 1)
       )
       (set_local $$24
        (i32.const 1)
       )
       (set_local $$25
        (i32.const 0)
       )
       (br $do-once)
      )
     )
    )
   )
  )
  (set_local $$99
   (get_local $$17)
  )
  (set_local $$100
   (get_local $$20)
  )
  (set_local $$101
   (f32.convert_s/i32
    (get_local $$100)
   )
  )
  (set_local $$102
   (f32.sub
    (get_local $$99)
    (get_local $$101)
   )
  )
  (set_local $$103
   (f32.add
    (get_local $$102)
    (f32.const 0.1666666716337204)
   )
  )
  (set_local $$26
   (get_local $$103)
  )
  (set_local $$104
   (get_local $$18)
  )
  (set_local $$105
   (get_local $$21)
  )
  (set_local $$106
   (f32.convert_s/i32
    (get_local $$105)
   )
  )
  (set_local $$107
   (f32.sub
    (get_local $$104)
    (get_local $$106)
   )
  )
  (set_local $$108
   (f32.add
    (get_local $$107)
    (f32.const 0.1666666716337204)
   )
  )
  (set_local $$27
   (get_local $$108)
  )
  (set_local $$109
   (get_local $$19)
  )
  (set_local $$110
   (get_local $$22)
  )
  (set_local $$111
   (f32.convert_s/i32
    (get_local $$110)
   )
  )
  (set_local $$112
   (f32.sub
    (get_local $$109)
    (get_local $$111)
   )
  )
  (set_local $$113
   (f32.add
    (get_local $$112)
    (f32.const 0.1666666716337204)
   )
  )
  (set_local $$28
   (get_local $$113)
  )
  (set_local $$114
   (get_local $$17)
  )
  (set_local $$115
   (get_local $$23)
  )
  (set_local $$116
   (f32.convert_s/i32
    (get_local $$115)
   )
  )
  (set_local $$117
   (f32.sub
    (get_local $$114)
    (get_local $$116)
   )
  )
  (set_local $$118
   (f32.add
    (get_local $$117)
    (f32.const 0.3333333432674408)
   )
  )
  (set_local $$29
   (get_local $$118)
  )
  (set_local $$119
   (get_local $$18)
  )
  (set_local $$120
   (get_local $$24)
  )
  (set_local $$121
   (f32.convert_s/i32
    (get_local $$120)
   )
  )
  (set_local $$122
   (f32.sub
    (get_local $$119)
    (get_local $$121)
   )
  )
  (set_local $$123
   (f32.add
    (get_local $$122)
    (f32.const 0.3333333432674408)
   )
  )
  (set_local $$30
   (get_local $$123)
  )
  (set_local $$124
   (get_local $$19)
  )
  (set_local $$125
   (get_local $$25)
  )
  (set_local $$126
   (f32.convert_s/i32
    (get_local $$125)
   )
  )
  (set_local $$127
   (f32.sub
    (get_local $$124)
    (get_local $$126)
   )
  )
  (set_local $$128
   (f32.add
    (get_local $$127)
    (f32.const 0.3333333432674408)
   )
  )
  (set_local $$31
   (get_local $$128)
  )
  (set_local $$129
   (get_local $$17)
  )
  (set_local $$130
   (f32.sub
    (get_local $$129)
    (f32.const 1)
   )
  )
  (set_local $$131
   (f32.add
    (get_local $$130)
    (f32.const 0.5)
   )
  )
  (set_local $$32
   (get_local $$131)
  )
  (set_local $$132
   (get_local $$18)
  )
  (set_local $$133
   (f32.sub
    (get_local $$132)
    (f32.const 1)
   )
  )
  (set_local $$134
   (f32.add
    (get_local $$133)
    (f32.const 0.5)
   )
  )
  (set_local $$33
   (get_local $$134)
  )
  (set_local $$135
   (get_local $$19)
  )
  (set_local $$136
   (f32.sub
    (get_local $$135)
    (f32.const 1)
   )
  )
  (set_local $$137
   (f32.add
    (get_local $$136)
    (f32.const 0.5)
   )
  )
  (set_local $$34
   (get_local $$137)
  )
  (set_local $$138
   (get_local $$17)
  )
  (set_local $$139
   (get_local $$17)
  )
  (set_local $$140
   (f32.mul
    (get_local $$138)
    (get_local $$139)
   )
  )
  (set_local $$141
   (f32.sub
    (f32.const 0.6000000238418579)
    (get_local $$140)
   )
  )
  (set_local $$142
   (get_local $$18)
  )
  (set_local $$143
   (get_local $$18)
  )
  (set_local $$144
   (f32.mul
    (get_local $$142)
    (get_local $$143)
   )
  )
  (set_local $$145
   (f32.sub
    (get_local $$141)
    (get_local $$144)
   )
  )
  (set_local $$146
   (get_local $$19)
  )
  (set_local $$147
   (get_local $$19)
  )
  (set_local $$148
   (f32.mul
    (get_local $$146)
    (get_local $$147)
   )
  )
  (set_local $$149
   (f32.sub
    (get_local $$145)
    (get_local $$148)
   )
  )
  (set_local $$10
   (get_local $$149)
  )
  (set_local $$150
   (get_local $$10)
  )
  (set_local $$151
   (f32.lt
    (get_local $$150)
    (f32.const 0)
   )
  )
  (if
   (get_local $$151)
   (set_local $$35
    (f32.const 0)
   )
   (block
    (set_local $$152
     (get_local $$10)
    )
    (set_local $$153
     (get_local $$10)
    )
    (set_local $$154
     (f32.mul
      (get_local $$153)
      (get_local $$152)
     )
    )
    (set_local $$10
     (get_local $$154)
    )
    (set_local $$155
     (get_local $$10)
    )
    (set_local $$156
     (get_local $$10)
    )
    (set_local $$157
     (f32.mul
      (get_local $$155)
      (get_local $$156)
     )
    )
    (set_local $$158
     (get_local $$6)
    )
    (set_local $$159
     (get_local $$11)
    )
    (set_local $$160
     (get_local $$12)
    )
    (set_local $$161
     (get_local $$13)
    )
    (set_local $$162
     (get_local $$17)
    )
    (set_local $$163
     (get_local $$18)
    )
    (set_local $$164
     (get_local $$19)
    )
    (set_local $$165
     (call $__ZNK9FastNoise11GradCoord3DEhiiifff
      (get_local $$39)
      (get_local $$158)
      (get_local $$159)
      (get_local $$160)
      (get_local $$161)
      (get_local $$162)
      (get_local $$163)
      (get_local $$164)
     )
    )
    (set_local $$166
     (f32.mul
      (get_local $$157)
      (get_local $$165)
     )
    )
    (set_local $$35
     (get_local $$166)
    )
   )
  )
  (set_local $$167
   (get_local $$26)
  )
  (set_local $$168
   (get_local $$26)
  )
  (set_local $$169
   (f32.mul
    (get_local $$167)
    (get_local $$168)
   )
  )
  (set_local $$170
   (f32.sub
    (f32.const 0.6000000238418579)
    (get_local $$169)
   )
  )
  (set_local $$171
   (get_local $$27)
  )
  (set_local $$172
   (get_local $$27)
  )
  (set_local $$173
   (f32.mul
    (get_local $$171)
    (get_local $$172)
   )
  )
  (set_local $$174
   (f32.sub
    (get_local $$170)
    (get_local $$173)
   )
  )
  (set_local $$175
   (get_local $$28)
  )
  (set_local $$176
   (get_local $$28)
  )
  (set_local $$177
   (f32.mul
    (get_local $$175)
    (get_local $$176)
   )
  )
  (set_local $$178
   (f32.sub
    (get_local $$174)
    (get_local $$177)
   )
  )
  (set_local $$10
   (get_local $$178)
  )
  (set_local $$179
   (get_local $$10)
  )
  (set_local $$180
   (f32.lt
    (get_local $$179)
    (f32.const 0)
   )
  )
  (if
   (get_local $$180)
   (set_local $$36
    (f32.const 0)
   )
   (block
    (set_local $$181
     (get_local $$10)
    )
    (set_local $$182
     (get_local $$10)
    )
    (set_local $$183
     (f32.mul
      (get_local $$182)
      (get_local $$181)
     )
    )
    (set_local $$10
     (get_local $$183)
    )
    (set_local $$184
     (get_local $$10)
    )
    (set_local $$185
     (get_local $$10)
    )
    (set_local $$186
     (f32.mul
      (get_local $$184)
      (get_local $$185)
     )
    )
    (set_local $$187
     (get_local $$6)
    )
    (set_local $$188
     (get_local $$11)
    )
    (set_local $$189
     (get_local $$20)
    )
    (set_local $$190
     (i32.add
      (get_local $$188)
      (get_local $$189)
     )
    )
    (set_local $$191
     (get_local $$12)
    )
    (set_local $$192
     (get_local $$21)
    )
    (set_local $$193
     (i32.add
      (get_local $$191)
      (get_local $$192)
     )
    )
    (set_local $$194
     (get_local $$13)
    )
    (set_local $$195
     (get_local $$22)
    )
    (set_local $$196
     (i32.add
      (get_local $$194)
      (get_local $$195)
     )
    )
    (set_local $$197
     (get_local $$26)
    )
    (set_local $$198
     (get_local $$27)
    )
    (set_local $$199
     (get_local $$28)
    )
    (set_local $$200
     (call $__ZNK9FastNoise11GradCoord3DEhiiifff
      (get_local $$39)
      (get_local $$187)
      (get_local $$190)
      (get_local $$193)
      (get_local $$196)
      (get_local $$197)
      (get_local $$198)
      (get_local $$199)
     )
    )
    (set_local $$201
     (f32.mul
      (get_local $$186)
      (get_local $$200)
     )
    )
    (set_local $$36
     (get_local $$201)
    )
   )
  )
  (set_local $$202
   (get_local $$29)
  )
  (set_local $$203
   (get_local $$29)
  )
  (set_local $$204
   (f32.mul
    (get_local $$202)
    (get_local $$203)
   )
  )
  (set_local $$205
   (f32.sub
    (f32.const 0.6000000238418579)
    (get_local $$204)
   )
  )
  (set_local $$206
   (get_local $$30)
  )
  (set_local $$207
   (get_local $$30)
  )
  (set_local $$208
   (f32.mul
    (get_local $$206)
    (get_local $$207)
   )
  )
  (set_local $$209
   (f32.sub
    (get_local $$205)
    (get_local $$208)
   )
  )
  (set_local $$210
   (get_local $$31)
  )
  (set_local $$211
   (get_local $$31)
  )
  (set_local $$212
   (f32.mul
    (get_local $$210)
    (get_local $$211)
   )
  )
  (set_local $$213
   (f32.sub
    (get_local $$209)
    (get_local $$212)
   )
  )
  (set_local $$10
   (get_local $$213)
  )
  (set_local $$214
   (get_local $$10)
  )
  (set_local $$215
   (f32.lt
    (get_local $$214)
    (f32.const 0)
   )
  )
  (if
   (get_local $$215)
   (set_local $$37
    (f32.const 0)
   )
   (block
    (set_local $$216
     (get_local $$10)
    )
    (set_local $$217
     (get_local $$10)
    )
    (set_local $$218
     (f32.mul
      (get_local $$217)
      (get_local $$216)
     )
    )
    (set_local $$10
     (get_local $$218)
    )
    (set_local $$219
     (get_local $$10)
    )
    (set_local $$220
     (get_local $$10)
    )
    (set_local $$221
     (f32.mul
      (get_local $$219)
      (get_local $$220)
     )
    )
    (set_local $$222
     (get_local $$6)
    )
    (set_local $$223
     (get_local $$11)
    )
    (set_local $$224
     (get_local $$23)
    )
    (set_local $$225
     (i32.add
      (get_local $$223)
      (get_local $$224)
     )
    )
    (set_local $$226
     (get_local $$12)
    )
    (set_local $$227
     (get_local $$24)
    )
    (set_local $$228
     (i32.add
      (get_local $$226)
      (get_local $$227)
     )
    )
    (set_local $$229
     (get_local $$13)
    )
    (set_local $$230
     (get_local $$25)
    )
    (set_local $$231
     (i32.add
      (get_local $$229)
      (get_local $$230)
     )
    )
    (set_local $$232
     (get_local $$29)
    )
    (set_local $$233
     (get_local $$30)
    )
    (set_local $$234
     (get_local $$31)
    )
    (set_local $$235
     (call $__ZNK9FastNoise11GradCoord3DEhiiifff
      (get_local $$39)
      (get_local $$222)
      (get_local $$225)
      (get_local $$228)
      (get_local $$231)
      (get_local $$232)
      (get_local $$233)
      (get_local $$234)
     )
    )
    (set_local $$236
     (f32.mul
      (get_local $$221)
      (get_local $$235)
     )
    )
    (set_local $$37
     (get_local $$236)
    )
   )
  )
  (set_local $$237
   (get_local $$32)
  )
  (set_local $$238
   (get_local $$32)
  )
  (set_local $$239
   (f32.mul
    (get_local $$237)
    (get_local $$238)
   )
  )
  (set_local $$240
   (f32.sub
    (f32.const 0.6000000238418579)
    (get_local $$239)
   )
  )
  (set_local $$241
   (get_local $$33)
  )
  (set_local $$242
   (get_local $$33)
  )
  (set_local $$243
   (f32.mul
    (get_local $$241)
    (get_local $$242)
   )
  )
  (set_local $$244
   (f32.sub
    (get_local $$240)
    (get_local $$243)
   )
  )
  (set_local $$245
   (get_local $$34)
  )
  (set_local $$246
   (get_local $$34)
  )
  (set_local $$247
   (f32.mul
    (get_local $$245)
    (get_local $$246)
   )
  )
  (set_local $$248
   (f32.sub
    (get_local $$244)
    (get_local $$247)
   )
  )
  (set_local $$10
   (get_local $$248)
  )
  (set_local $$249
   (get_local $$10)
  )
  (set_local $$250
   (f32.lt
    (get_local $$249)
    (f32.const 0)
   )
  )
  (if
   (get_local $$250)
   (block
    (set_local $$38
     (f32.const 0)
    )
    (set_local $$269
     (get_local $$35)
    )
    (set_local $$270
     (get_local $$36)
    )
    (set_local $$271
     (f32.add
      (get_local $$269)
      (get_local $$270)
     )
    )
    (set_local $$272
     (get_local $$37)
    )
    (set_local $$273
     (f32.add
      (get_local $$271)
      (get_local $$272)
     )
    )
    (set_local $$274
     (get_local $$38)
    )
    (set_local $$275
     (f32.add
      (get_local $$273)
      (get_local $$274)
     )
    )
    (set_local $$276
     (f32.mul
      (f32.const 32)
      (get_local $$275)
     )
    )
    (set_global $STACKTOP
     (get_local $sp)
    )
    (return
     (get_local $$276)
    )
   )
   (block
    (set_local $$251
     (get_local $$10)
    )
    (set_local $$252
     (get_local $$10)
    )
    (set_local $$253
     (f32.mul
      (get_local $$252)
      (get_local $$251)
     )
    )
    (set_local $$10
     (get_local $$253)
    )
    (set_local $$254
     (get_local $$10)
    )
    (set_local $$255
     (get_local $$10)
    )
    (set_local $$256
     (f32.mul
      (get_local $$254)
      (get_local $$255)
     )
    )
    (set_local $$257
     (get_local $$6)
    )
    (set_local $$258
     (get_local $$11)
    )
    (set_local $$259
     (i32.add
      (get_local $$258)
      (i32.const 1)
     )
    )
    (set_local $$260
     (get_local $$12)
    )
    (set_local $$261
     (i32.add
      (get_local $$260)
      (i32.const 1)
     )
    )
    (set_local $$262
     (get_local $$13)
    )
    (set_local $$263
     (i32.add
      (get_local $$262)
      (i32.const 1)
     )
    )
    (set_local $$264
     (get_local $$32)
    )
    (set_local $$265
     (get_local $$33)
    )
    (set_local $$266
     (get_local $$34)
    )
    (set_local $$267
     (call $__ZNK9FastNoise11GradCoord3DEhiiifff
      (get_local $$39)
      (get_local $$257)
      (get_local $$259)
      (get_local $$261)
      (get_local $$263)
      (get_local $$264)
      (get_local $$265)
      (get_local $$266)
     )
    )
    (set_local $$268
     (f32.mul
      (get_local $$256)
      (get_local $$267)
     )
    )
    (set_local $$38
     (get_local $$268)
    )
    (set_local $$269
     (get_local $$35)
    )
    (set_local $$270
     (get_local $$36)
    )
    (set_local $$271
     (f32.add
      (get_local $$269)
      (get_local $$270)
     )
    )
    (set_local $$272
     (get_local $$37)
    )
    (set_local $$273
     (f32.add
      (get_local $$271)
      (get_local $$272)
     )
    )
    (set_local $$274
     (get_local $$38)
    )
    (set_local $$275
     (f32.add
      (get_local $$273)
      (get_local $$274)
     )
    )
    (set_local $$276
     (f32.mul
      (f32.const 32)
      (get_local $$275)
     )
    )
    (set_global $STACKTOP
     (get_local $sp)
    )
    (return
     (get_local $$276)
    )
   )
  )
  (return
   (f32.const 0)
  )
 )
 (func $__ZNK9FastNoise23SingleSimplexFractalFBMEfff (param $$0 i32) (param $$1 f32) (param $$2 f32) (param $$3 f32) (result f32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 f32)
  (local $$14 f32)
  (local $$15 f32)
  (local $$16 f32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$19 i32)
  (local $$20 i32)
  (local $$21 i32)
  (local $$22 i32)
  (local $$23 f32)
  (local $$24 f32)
  (local $$25 f32)
  (local $$26 i32)
  (local $$27 f32)
  (local $$28 f32)
  (local $$29 f32)
  (local $$30 i32)
  (local $$31 f32)
  (local $$32 f32)
  (local $$33 f32)
  (local $$34 i32)
  (local $$35 f32)
  (local $$36 f32)
  (local $$37 f32)
  (local $$38 i32)
  (local $$39 i32)
  (local $$4 i32)
  (local $$40 i32)
  (local $$41 f32)
  (local $$42 f32)
  (local $$43 f32)
  (local $$44 f32)
  (local $$45 f32)
  (local $$46 f32)
  (local $$47 f32)
  (local $$48 f32)
  (local $$49 f32)
  (local $$5 f32)
  (local $$50 i32)
  (local $$51 f32)
  (local $$52 f32)
  (local $$6 f32)
  (local $$7 f32)
  (local $$8 f32)
  (local $$9 f32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 32)
   )
  )
  (set_local $$4
   (get_local $$0)
  )
  (set_local $$5
   (get_local $$1)
  )
  (set_local $$6
   (get_local $$2)
  )
  (set_local $$7
   (get_local $$3)
  )
  (set_local $$11
   (get_local $$4)
  )
  (set_local $$12
   (i32.load8_s
    (get_local $$11)
   )
  )
  (set_local $$13
   (get_local $$5)
  )
  (set_local $$14
   (get_local $$6)
  )
  (set_local $$15
   (get_local $$7)
  )
  (set_local $$16
   (call $__ZNK9FastNoise13SingleSimplexEhfff
    (get_local $$11)
    (get_local $$12)
    (get_local $$13)
    (get_local $$14)
    (get_local $$15)
   )
  )
  (set_local $$8
   (get_local $$16)
  )
  (set_local $$9
   (f32.const 1)
  )
  (set_local $$10
   (i32.const 0)
  )
  (loop $while-in
   (block $while-out
    (set_local $$17
     (get_local $$10)
    )
    (set_local $$18
     (i32.add
      (get_local $$17)
      (i32.const 1)
     )
    )
    (set_local $$10
     (get_local $$18)
    )
    (set_local $$19
     (i32.add
      (get_local $$11)
      (i32.const 1040)
     )
    )
    (set_local $$20
     (i32.load
      (get_local $$19)
     )
    )
    (set_local $$21
     (i32.lt_s
      (get_local $$18)
      (get_local $$20)
     )
    )
    (if
     (i32.eqz
      (get_local $$21)
     )
     (br $while-out)
    )
    (set_local $$22
     (i32.add
      (get_local $$11)
      (i32.const 1044)
     )
    )
    (set_local $$23
     (f32.load
      (get_local $$22)
     )
    )
    (set_local $$24
     (get_local $$5)
    )
    (set_local $$25
     (f32.mul
      (get_local $$24)
      (get_local $$23)
     )
    )
    (set_local $$5
     (get_local $$25)
    )
    (set_local $$26
     (i32.add
      (get_local $$11)
      (i32.const 1044)
     )
    )
    (set_local $$27
     (f32.load
      (get_local $$26)
     )
    )
    (set_local $$28
     (get_local $$6)
    )
    (set_local $$29
     (f32.mul
      (get_local $$28)
      (get_local $$27)
     )
    )
    (set_local $$6
     (get_local $$29)
    )
    (set_local $$30
     (i32.add
      (get_local $$11)
      (i32.const 1044)
     )
    )
    (set_local $$31
     (f32.load
      (get_local $$30)
     )
    )
    (set_local $$32
     (get_local $$7)
    )
    (set_local $$33
     (f32.mul
      (get_local $$32)
      (get_local $$31)
     )
    )
    (set_local $$7
     (get_local $$33)
    )
    (set_local $$34
     (i32.add
      (get_local $$11)
      (i32.const 1048)
     )
    )
    (set_local $$35
     (f32.load
      (get_local $$34)
     )
    )
    (set_local $$36
     (get_local $$9)
    )
    (set_local $$37
     (f32.mul
      (get_local $$36)
      (get_local $$35)
     )
    )
    (set_local $$9
     (get_local $$37)
    )
    (set_local $$38
     (get_local $$10)
    )
    (set_local $$39
     (i32.add
      (get_local $$11)
      (get_local $$38)
     )
    )
    (set_local $$40
     (i32.load8_s
      (get_local $$39)
     )
    )
    (set_local $$41
     (get_local $$5)
    )
    (set_local $$42
     (get_local $$6)
    )
    (set_local $$43
     (get_local $$7)
    )
    (set_local $$44
     (call $__ZNK9FastNoise13SingleSimplexEhfff
      (get_local $$11)
      (get_local $$40)
      (get_local $$41)
      (get_local $$42)
      (get_local $$43)
     )
    )
    (set_local $$45
     (get_local $$9)
    )
    (set_local $$46
     (f32.mul
      (get_local $$44)
      (get_local $$45)
     )
    )
    (set_local $$47
     (get_local $$8)
    )
    (set_local $$48
     (f32.add
      (get_local $$47)
      (get_local $$46)
     )
    )
    (set_local $$8
     (get_local $$48)
    )
    (br $while-in)
   )
  )
  (set_local $$49
   (get_local $$8)
  )
  (set_local $$50
   (i32.add
    (get_local $$11)
    (i32.const 1056)
   )
  )
  (set_local $$51
   (f32.load
    (get_local $$50)
   )
  )
  (set_local $$52
   (f32.mul
    (get_local $$49)
    (get_local $$51)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$52)
  )
 )
 (func $__ZNK9FastNoise26SingleSimplexFractalBillowEfff (param $$0 i32) (param $$1 f32) (param $$2 f32) (param $$3 f32) (result f32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 f32)
  (local $$14 f32)
  (local $$15 f32)
  (local $$16 f32)
  (local $$17 f32)
  (local $$18 f32)
  (local $$19 f32)
  (local $$20 i32)
  (local $$21 i32)
  (local $$22 i32)
  (local $$23 i32)
  (local $$24 i32)
  (local $$25 i32)
  (local $$26 f32)
  (local $$27 f32)
  (local $$28 f32)
  (local $$29 i32)
  (local $$30 f32)
  (local $$31 f32)
  (local $$32 f32)
  (local $$33 i32)
  (local $$34 f32)
  (local $$35 f32)
  (local $$36 f32)
  (local $$37 i32)
  (local $$38 f32)
  (local $$39 f32)
  (local $$4 i32)
  (local $$40 f32)
  (local $$41 i32)
  (local $$42 i32)
  (local $$43 i32)
  (local $$44 f32)
  (local $$45 f32)
  (local $$46 f32)
  (local $$47 f32)
  (local $$48 f32)
  (local $$49 f32)
  (local $$5 f32)
  (local $$50 f32)
  (local $$51 f32)
  (local $$52 f32)
  (local $$53 f32)
  (local $$54 f32)
  (local $$55 f32)
  (local $$56 i32)
  (local $$57 f32)
  (local $$58 f32)
  (local $$6 f32)
  (local $$7 f32)
  (local $$8 f32)
  (local $$9 f32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 32)
   )
  )
  (set_local $$4
   (get_local $$0)
  )
  (set_local $$5
   (get_local $$1)
  )
  (set_local $$6
   (get_local $$2)
  )
  (set_local $$7
   (get_local $$3)
  )
  (set_local $$11
   (get_local $$4)
  )
  (set_local $$12
   (i32.load8_s
    (get_local $$11)
   )
  )
  (set_local $$13
   (get_local $$5)
  )
  (set_local $$14
   (get_local $$6)
  )
  (set_local $$15
   (get_local $$7)
  )
  (set_local $$16
   (call $__ZNK9FastNoise13SingleSimplexEhfff
    (get_local $$11)
    (get_local $$12)
    (get_local $$13)
    (get_local $$14)
    (get_local $$15)
   )
  )
  (set_local $$17
   (call $__ZL7FastAbsf
    (get_local $$16)
   )
  )
  (set_local $$18
   (f32.mul
    (get_local $$17)
    (f32.const 2)
   )
  )
  (set_local $$19
   (f32.sub
    (get_local $$18)
    (f32.const 1)
   )
  )
  (set_local $$8
   (get_local $$19)
  )
  (set_local $$9
   (f32.const 1)
  )
  (set_local $$10
   (i32.const 0)
  )
  (loop $while-in
   (block $while-out
    (set_local $$20
     (get_local $$10)
    )
    (set_local $$21
     (i32.add
      (get_local $$20)
      (i32.const 1)
     )
    )
    (set_local $$10
     (get_local $$21)
    )
    (set_local $$22
     (i32.add
      (get_local $$11)
      (i32.const 1040)
     )
    )
    (set_local $$23
     (i32.load
      (get_local $$22)
     )
    )
    (set_local $$24
     (i32.lt_s
      (get_local $$21)
      (get_local $$23)
     )
    )
    (if
     (i32.eqz
      (get_local $$24)
     )
     (br $while-out)
    )
    (set_local $$25
     (i32.add
      (get_local $$11)
      (i32.const 1044)
     )
    )
    (set_local $$26
     (f32.load
      (get_local $$25)
     )
    )
    (set_local $$27
     (get_local $$5)
    )
    (set_local $$28
     (f32.mul
      (get_local $$27)
      (get_local $$26)
     )
    )
    (set_local $$5
     (get_local $$28)
    )
    (set_local $$29
     (i32.add
      (get_local $$11)
      (i32.const 1044)
     )
    )
    (set_local $$30
     (f32.load
      (get_local $$29)
     )
    )
    (set_local $$31
     (get_local $$6)
    )
    (set_local $$32
     (f32.mul
      (get_local $$31)
      (get_local $$30)
     )
    )
    (set_local $$6
     (get_local $$32)
    )
    (set_local $$33
     (i32.add
      (get_local $$11)
      (i32.const 1044)
     )
    )
    (set_local $$34
     (f32.load
      (get_local $$33)
     )
    )
    (set_local $$35
     (get_local $$7)
    )
    (set_local $$36
     (f32.mul
      (get_local $$35)
      (get_local $$34)
     )
    )
    (set_local $$7
     (get_local $$36)
    )
    (set_local $$37
     (i32.add
      (get_local $$11)
      (i32.const 1048)
     )
    )
    (set_local $$38
     (f32.load
      (get_local $$37)
     )
    )
    (set_local $$39
     (get_local $$9)
    )
    (set_local $$40
     (f32.mul
      (get_local $$39)
      (get_local $$38)
     )
    )
    (set_local $$9
     (get_local $$40)
    )
    (set_local $$41
     (get_local $$10)
    )
    (set_local $$42
     (i32.add
      (get_local $$11)
      (get_local $$41)
     )
    )
    (set_local $$43
     (i32.load8_s
      (get_local $$42)
     )
    )
    (set_local $$44
     (get_local $$5)
    )
    (set_local $$45
     (get_local $$6)
    )
    (set_local $$46
     (get_local $$7)
    )
    (set_local $$47
     (call $__ZNK9FastNoise13SingleSimplexEhfff
      (get_local $$11)
      (get_local $$43)
      (get_local $$44)
      (get_local $$45)
      (get_local $$46)
     )
    )
    (set_local $$48
     (call $__ZL7FastAbsf
      (get_local $$47)
     )
    )
    (set_local $$49
     (f32.mul
      (get_local $$48)
      (f32.const 2)
     )
    )
    (set_local $$50
     (f32.sub
      (get_local $$49)
      (f32.const 1)
     )
    )
    (set_local $$51
     (get_local $$9)
    )
    (set_local $$52
     (f32.mul
      (get_local $$50)
      (get_local $$51)
     )
    )
    (set_local $$53
     (get_local $$8)
    )
    (set_local $$54
     (f32.add
      (get_local $$53)
      (get_local $$52)
     )
    )
    (set_local $$8
     (get_local $$54)
    )
    (br $while-in)
   )
  )
  (set_local $$55
   (get_local $$8)
  )
  (set_local $$56
   (i32.add
    (get_local $$11)
    (i32.const 1056)
   )
  )
  (set_local $$57
   (f32.load
    (get_local $$56)
   )
  )
  (set_local $$58
   (f32.mul
    (get_local $$55)
    (get_local $$57)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$58)
  )
 )
 (func $__ZNK9FastNoise30SingleSimplexFractalRigidMultiEfff (param $$0 i32) (param $$1 f32) (param $$2 f32) (param $$3 f32) (result f32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 f32)
  (local $$14 f32)
  (local $$15 f32)
  (local $$16 f32)
  (local $$17 f32)
  (local $$18 f32)
  (local $$19 i32)
  (local $$20 i32)
  (local $$21 i32)
  (local $$22 i32)
  (local $$23 i32)
  (local $$24 i32)
  (local $$25 f32)
  (local $$26 f32)
  (local $$27 f32)
  (local $$28 i32)
  (local $$29 f32)
  (local $$30 f32)
  (local $$31 f32)
  (local $$32 i32)
  (local $$33 f32)
  (local $$34 f32)
  (local $$35 f32)
  (local $$36 i32)
  (local $$37 f32)
  (local $$38 f32)
  (local $$39 f32)
  (local $$4 i32)
  (local $$40 i32)
  (local $$41 i32)
  (local $$42 i32)
  (local $$43 f32)
  (local $$44 f32)
  (local $$45 f32)
  (local $$46 f32)
  (local $$47 f32)
  (local $$48 f32)
  (local $$49 f32)
  (local $$5 f32)
  (local $$50 f32)
  (local $$51 f32)
  (local $$52 f32)
  (local $$53 f32)
  (local $$6 f32)
  (local $$7 f32)
  (local $$8 f32)
  (local $$9 f32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 32)
   )
  )
  (set_local $$4
   (get_local $$0)
  )
  (set_local $$5
   (get_local $$1)
  )
  (set_local $$6
   (get_local $$2)
  )
  (set_local $$7
   (get_local $$3)
  )
  (set_local $$11
   (get_local $$4)
  )
  (set_local $$12
   (i32.load8_s
    (get_local $$11)
   )
  )
  (set_local $$13
   (get_local $$5)
  )
  (set_local $$14
   (get_local $$6)
  )
  (set_local $$15
   (get_local $$7)
  )
  (set_local $$16
   (call $__ZNK9FastNoise13SingleSimplexEhfff
    (get_local $$11)
    (get_local $$12)
    (get_local $$13)
    (get_local $$14)
    (get_local $$15)
   )
  )
  (set_local $$17
   (call $__ZL7FastAbsf
    (get_local $$16)
   )
  )
  (set_local $$18
   (f32.sub
    (f32.const 1)
    (get_local $$17)
   )
  )
  (set_local $$8
   (get_local $$18)
  )
  (set_local $$9
   (f32.const 1)
  )
  (set_local $$10
   (i32.const 0)
  )
  (loop $while-in
   (block $while-out
    (set_local $$19
     (get_local $$10)
    )
    (set_local $$20
     (i32.add
      (get_local $$19)
      (i32.const 1)
     )
    )
    (set_local $$10
     (get_local $$20)
    )
    (set_local $$21
     (i32.add
      (get_local $$11)
      (i32.const 1040)
     )
    )
    (set_local $$22
     (i32.load
      (get_local $$21)
     )
    )
    (set_local $$23
     (i32.lt_s
      (get_local $$20)
      (get_local $$22)
     )
    )
    (if
     (i32.eqz
      (get_local $$23)
     )
     (br $while-out)
    )
    (set_local $$24
     (i32.add
      (get_local $$11)
      (i32.const 1044)
     )
    )
    (set_local $$25
     (f32.load
      (get_local $$24)
     )
    )
    (set_local $$26
     (get_local $$5)
    )
    (set_local $$27
     (f32.mul
      (get_local $$26)
      (get_local $$25)
     )
    )
    (set_local $$5
     (get_local $$27)
    )
    (set_local $$28
     (i32.add
      (get_local $$11)
      (i32.const 1044)
     )
    )
    (set_local $$29
     (f32.load
      (get_local $$28)
     )
    )
    (set_local $$30
     (get_local $$6)
    )
    (set_local $$31
     (f32.mul
      (get_local $$30)
      (get_local $$29)
     )
    )
    (set_local $$6
     (get_local $$31)
    )
    (set_local $$32
     (i32.add
      (get_local $$11)
      (i32.const 1044)
     )
    )
    (set_local $$33
     (f32.load
      (get_local $$32)
     )
    )
    (set_local $$34
     (get_local $$7)
    )
    (set_local $$35
     (f32.mul
      (get_local $$34)
      (get_local $$33)
     )
    )
    (set_local $$7
     (get_local $$35)
    )
    (set_local $$36
     (i32.add
      (get_local $$11)
      (i32.const 1048)
     )
    )
    (set_local $$37
     (f32.load
      (get_local $$36)
     )
    )
    (set_local $$38
     (get_local $$9)
    )
    (set_local $$39
     (f32.mul
      (get_local $$38)
      (get_local $$37)
     )
    )
    (set_local $$9
     (get_local $$39)
    )
    (set_local $$40
     (get_local $$10)
    )
    (set_local $$41
     (i32.add
      (get_local $$11)
      (get_local $$40)
     )
    )
    (set_local $$42
     (i32.load8_s
      (get_local $$41)
     )
    )
    (set_local $$43
     (get_local $$5)
    )
    (set_local $$44
     (get_local $$6)
    )
    (set_local $$45
     (get_local $$7)
    )
    (set_local $$46
     (call $__ZNK9FastNoise13SingleSimplexEhfff
      (get_local $$11)
      (get_local $$42)
      (get_local $$43)
      (get_local $$44)
      (get_local $$45)
     )
    )
    (set_local $$47
     (call $__ZL7FastAbsf
      (get_local $$46)
     )
    )
    (set_local $$48
     (f32.sub
      (f32.const 1)
      (get_local $$47)
     )
    )
    (set_local $$49
     (get_local $$9)
    )
    (set_local $$50
     (f32.mul
      (get_local $$48)
      (get_local $$49)
     )
    )
    (set_local $$51
     (get_local $$8)
    )
    (set_local $$52
     (f32.sub
      (get_local $$51)
      (get_local $$50)
     )
    )
    (set_local $$8
     (get_local $$52)
    )
    (br $while-in)
   )
  )
  (set_local $$53
   (get_local $$8)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$53)
  )
 )
 (func $__ZNK9FastNoise14SingleCellularEfff (param $$0 i32) (param $$1 f32) (param $$2 f32) (param $$3 f32) (result f32)
  (local $$10 i32)
  (local $$100 i32)
  (local $$101 i32)
  (local $$102 i32)
  (local $$103 f32)
  (local $$104 i32)
  (local $$105 f32)
  (local $$106 f32)
  (local $$107 f32)
  (local $$108 f32)
  (local $$109 f32)
  (local $$11 i32)
  (local $$110 f32)
  (local $$111 f32)
  (local $$112 f32)
  (local $$113 f32)
  (local $$114 f32)
  (local $$115 f32)
  (local $$116 f32)
  (local $$117 f32)
  (local $$118 f32)
  (local $$119 f32)
  (local $$12 f32)
  (local $$120 f32)
  (local $$121 i32)
  (local $$122 f32)
  (local $$123 i32)
  (local $$124 i32)
  (local $$125 i32)
  (local $$126 i32)
  (local $$127 i32)
  (local $$128 i32)
  (local $$129 i32)
  (local $$13 i32)
  (local $$130 i32)
  (local $$131 i32)
  (local $$132 i32)
  (local $$133 i32)
  (local $$134 i32)
  (local $$135 i32)
  (local $$136 i32)
  (local $$137 i32)
  (local $$138 i32)
  (local $$139 i32)
  (local $$14 i32)
  (local $$140 i32)
  (local $$141 i32)
  (local $$142 i32)
  (local $$143 i32)
  (local $$144 i32)
  (local $$145 i32)
  (local $$146 i32)
  (local $$147 i32)
  (local $$148 i32)
  (local $$149 i32)
  (local $$15 i32)
  (local $$150 i32)
  (local $$151 i32)
  (local $$152 i32)
  (local $$153 i32)
  (local $$154 i32)
  (local $$155 f32)
  (local $$156 f32)
  (local $$157 f32)
  (local $$158 i32)
  (local $$159 i32)
  (local $$16 i32)
  (local $$160 i32)
  (local $$161 f32)
  (local $$162 i32)
  (local $$163 f32)
  (local $$164 f32)
  (local $$165 f32)
  (local $$166 i32)
  (local $$167 f32)
  (local $$168 f32)
  (local $$169 f32)
  (local $$17 i32)
  (local $$170 i32)
  (local $$171 i32)
  (local $$172 i32)
  (local $$173 f32)
  (local $$174 i32)
  (local $$175 f32)
  (local $$176 f32)
  (local $$177 f32)
  (local $$178 i32)
  (local $$179 f32)
  (local $$18 i32)
  (local $$180 f32)
  (local $$181 f32)
  (local $$182 i32)
  (local $$183 i32)
  (local $$184 i32)
  (local $$185 f32)
  (local $$186 i32)
  (local $$187 f32)
  (local $$188 f32)
  (local $$189 f32)
  (local $$19 i32)
  (local $$190 f32)
  (local $$191 f32)
  (local $$192 f32)
  (local $$193 f32)
  (local $$194 f32)
  (local $$195 f32)
  (local $$196 f32)
  (local $$197 f32)
  (local $$198 f32)
  (local $$199 f32)
  (local $$20 f32)
  (local $$200 i32)
  (local $$201 f32)
  (local $$202 i32)
  (local $$203 i32)
  (local $$204 i32)
  (local $$205 i32)
  (local $$206 i32)
  (local $$207 i32)
  (local $$208 i32)
  (local $$209 i32)
  (local $$21 f32)
  (local $$210 i32)
  (local $$211 i32)
  (local $$212 i32)
  (local $$213 i32)
  (local $$214 i32)
  (local $$215 i32)
  (local $$216 i32)
  (local $$217 i32)
  (local $$218 i32)
  (local $$219 i32)
  (local $$22 f32)
  (local $$220 i32)
  (local $$221 i32)
  (local $$222 i32)
  (local $$223 i32)
  (local $$224 i32)
  (local $$225 i32)
  (local $$226 i32)
  (local $$227 i32)
  (local $$228 i32)
  (local $$229 i32)
  (local $$23 f32)
  (local $$230 i32)
  (local $$231 i32)
  (local $$232 i32)
  (local $$233 i32)
  (local $$234 f32)
  (local $$235 f32)
  (local $$236 f32)
  (local $$237 i32)
  (local $$238 i32)
  (local $$239 i32)
  (local $$24 i32)
  (local $$240 f32)
  (local $$241 i32)
  (local $$242 f32)
  (local $$243 f32)
  (local $$244 f32)
  (local $$245 i32)
  (local $$246 f32)
  (local $$247 f32)
  (local $$248 f32)
  (local $$249 i32)
  (local $$25 i32)
  (local $$250 i32)
  (local $$251 i32)
  (local $$252 f32)
  (local $$253 i32)
  (local $$254 f32)
  (local $$255 f32)
  (local $$256 f32)
  (local $$257 i32)
  (local $$258 f32)
  (local $$259 f32)
  (local $$26 i32)
  (local $$260 f32)
  (local $$261 i32)
  (local $$262 i32)
  (local $$263 i32)
  (local $$264 f32)
  (local $$265 i32)
  (local $$266 f32)
  (local $$267 f32)
  (local $$268 f32)
  (local $$269 f32)
  (local $$27 i32)
  (local $$270 f32)
  (local $$271 f32)
  (local $$272 f32)
  (local $$273 f32)
  (local $$274 f32)
  (local $$275 f32)
  (local $$276 f32)
  (local $$277 f32)
  (local $$278 f32)
  (local $$279 f32)
  (local $$28 f32)
  (local $$280 f32)
  (local $$281 f32)
  (local $$282 f32)
  (local $$283 f32)
  (local $$284 f32)
  (local $$285 f32)
  (local $$286 f32)
  (local $$287 f32)
  (local $$288 f32)
  (local $$289 f32)
  (local $$29 f32)
  (local $$290 f32)
  (local $$291 i32)
  (local $$292 f32)
  (local $$293 i32)
  (local $$294 i32)
  (local $$295 i32)
  (local $$296 i32)
  (local $$297 i32)
  (local $$298 i32)
  (local $$299 i32)
  (local $$30 f32)
  (local $$300 i32)
  (local $$301 i32)
  (local $$302 i32)
  (local $$303 i32)
  (local $$304 i32)
  (local $$305 i32)
  (local $$306 i32)
  (local $$307 i32)
  (local $$308 i32)
  (local $$309 f32)
  (local $$31 f32)
  (local $$310 i32)
  (local $$311 i32)
  (local $$312 i32)
  (local $$313 i32)
  (local $$314 i32)
  (local $$315 i32)
  (local $$316 i32)
  (local $$317 i32)
  (local $$318 i32)
  (local $$319 i32)
  (local $$32 i32)
  (local $$320 f32)
  (local $$321 i32)
  (local $$322 i32)
  (local $$323 i32)
  (local $$324 f32)
  (local $$325 i32)
  (local $$326 f32)
  (local $$327 f32)
  (local $$328 f32)
  (local $$329 i32)
  (local $$33 i32)
  (local $$330 f32)
  (local $$331 i32)
  (local $$332 i32)
  (local $$333 i32)
  (local $$334 f32)
  (local $$335 i32)
  (local $$336 f32)
  (local $$337 f32)
  (local $$338 f32)
  (local $$339 i32)
  (local $$34 i32)
  (local $$340 f32)
  (local $$341 i32)
  (local $$342 i32)
  (local $$343 i32)
  (local $$344 f32)
  (local $$345 i32)
  (local $$346 f32)
  (local $$347 f32)
  (local $$348 f32)
  (local $$349 f32)
  (local $$35 i32)
  (local $$350 f32)
  (local $$351 f32)
  (local $$36 f32)
  (local $$37 f32)
  (local $$38 f32)
  (local $$39 f32)
  (local $$4 f32)
  (local $$40 i32)
  (local $$41 i32)
  (local $$42 f32)
  (local $$43 i32)
  (local $$44 f32)
  (local $$45 i32)
  (local $$46 f32)
  (local $$47 i32)
  (local $$48 i32)
  (local $$49 i32)
  (local $$5 i32)
  (local $$50 i32)
  (local $$51 i32)
  (local $$52 i32)
  (local $$53 i32)
  (local $$54 i32)
  (local $$55 i32)
  (local $$56 i32)
  (local $$57 i32)
  (local $$58 i32)
  (local $$59 i32)
  (local $$6 f32)
  (local $$60 i32)
  (local $$61 i32)
  (local $$62 i32)
  (local $$63 i32)
  (local $$64 i32)
  (local $$65 i32)
  (local $$66 i32)
  (local $$67 i32)
  (local $$68 i32)
  (local $$69 i32)
  (local $$7 f32)
  (local $$70 i32)
  (local $$71 i32)
  (local $$72 i32)
  (local $$73 f32)
  (local $$74 f32)
  (local $$75 f32)
  (local $$76 i32)
  (local $$77 i32)
  (local $$78 i32)
  (local $$79 f32)
  (local $$8 f32)
  (local $$80 i32)
  (local $$81 f32)
  (local $$82 f32)
  (local $$83 f32)
  (local $$84 i32)
  (local $$85 f32)
  (local $$86 f32)
  (local $$87 f32)
  (local $$88 i32)
  (local $$89 i32)
  (local $$9 i32)
  (local $$90 i32)
  (local $$91 f32)
  (local $$92 i32)
  (local $$93 f32)
  (local $$94 f32)
  (local $$95 f32)
  (local $$96 i32)
  (local $$97 f32)
  (local $$98 f32)
  (local $$99 f32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 144)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 144)
   )
  )
  (set_local $$5
   (get_local $$0)
  )
  (set_local $$6
   (get_local $$1)
  )
  (set_local $$7
   (get_local $$2)
  )
  (set_local $$8
   (get_local $$3)
  )
  (set_local $$41
   (get_local $$5)
  )
  (set_local $$42
   (get_local $$6)
  )
  (set_local $$43
   (call $__ZL9FastRoundf
    (get_local $$42)
   )
  )
  (set_local $$9
   (get_local $$43)
  )
  (set_local $$44
   (get_local $$7)
  )
  (set_local $$45
   (call $__ZL9FastRoundf
    (get_local $$44)
   )
  )
  (set_local $$10
   (get_local $$45)
  )
  (set_local $$46
   (get_local $$8)
  )
  (set_local $$47
   (call $__ZL9FastRoundf
    (get_local $$46)
   )
  )
  (set_local $$11
   (get_local $$47)
  )
  (set_local $$12
   (f32.const 999999)
  )
  (set_local $$48
   (i32.add
    (get_local $$41)
    (i32.const 1060)
   )
  )
  (set_local $$49
   (i32.load
    (get_local $$48)
   )
  )
  (block $label$break$L1
   (block $switch
    (block $switch-default
     (block $switch-case17
      (block $switch-case10
       (block $switch-case
        (br_table $switch-case $switch-case10 $switch-case17 $switch-default
         (i32.sub
          (get_local $$49)
          (i32.const 0)
         )
        )
       )
       (block
        (set_local $$50
         (get_local $$9)
        )
        (set_local $$51
         (i32.sub
          (get_local $$50)
          (i32.const 1)
         )
        )
        (set_local $$16
         (get_local $$51)
        )
        (loop $while-in
         (block $while-out
          (set_local $$52
           (get_local $$16)
          )
          (set_local $$53
           (get_local $$9)
          )
          (set_local $$54
           (i32.add
            (get_local $$53)
            (i32.const 1)
           )
          )
          (set_local $$55
           (i32.le_s
            (get_local $$52)
            (get_local $$54)
           )
          )
          (if
           (i32.eqz
            (get_local $$55)
           )
           (br $label$break$L1)
          )
          (set_local $$56
           (get_local $$10)
          )
          (set_local $$57
           (i32.sub
            (get_local $$56)
            (i32.const 1)
           )
          )
          (set_local $$17
           (get_local $$57)
          )
          (loop $while-in1
           (block $while-out0
            (set_local $$58
             (get_local $$17)
            )
            (set_local $$59
             (get_local $$10)
            )
            (set_local $$60
             (i32.add
              (get_local $$59)
              (i32.const 1)
             )
            )
            (set_local $$61
             (i32.le_s
              (get_local $$58)
              (get_local $$60)
             )
            )
            (if
             (i32.eqz
              (get_local $$61)
             )
             (br $while-out0)
            )
            (set_local $$62
             (get_local $$11)
            )
            (set_local $$63
             (i32.sub
              (get_local $$62)
              (i32.const 1)
             )
            )
            (set_local $$18
             (get_local $$63)
            )
            (loop $while-in3
             (block $while-out2
              (set_local $$64
               (get_local $$18)
              )
              (set_local $$65
               (get_local $$11)
              )
              (set_local $$66
               (i32.add
                (get_local $$65)
                (i32.const 1)
               )
              )
              (set_local $$67
               (i32.le_s
                (get_local $$64)
                (get_local $$66)
               )
              )
              (if
               (i32.eqz
                (get_local $$67)
               )
               (br $while-out2)
              )
              (set_local $$68
               (get_local $$16)
              )
              (set_local $$69
               (get_local $$17)
              )
              (set_local $$70
               (get_local $$18)
              )
              (set_local $$71
               (call $__ZNK9FastNoise11Index3D_256Ehiii
                (get_local $$41)
                (i32.const 0)
                (get_local $$68)
                (get_local $$69)
                (get_local $$70)
               )
              )
              (set_local $$19
               (get_local $$71)
              )
              (set_local $$72
               (get_local $$16)
              )
              (set_local $$73
               (f32.convert_s/i32
                (get_local $$72)
               )
              )
              (set_local $$74
               (get_local $$6)
              )
              (set_local $$75
               (f32.sub
                (get_local $$73)
                (get_local $$74)
               )
              )
              (set_local $$76
               (get_local $$19)
              )
              (set_local $$77
               (i32.and
                (get_local $$76)
                (i32.const 255)
               )
              )
              (set_local $$78
               (i32.add
                (i32.const 2712)
                (i32.shl
                 (get_local $$77)
                 (i32.const 2)
                )
               )
              )
              (set_local $$79
               (f32.load
                (get_local $$78)
               )
              )
              (set_local $$80
               (i32.add
                (get_local $$41)
                (i32.const 1080)
               )
              )
              (set_local $$81
               (f32.load
                (get_local $$80)
               )
              )
              (set_local $$82
               (f32.mul
                (get_local $$79)
                (get_local $$81)
               )
              )
              (set_local $$83
               (f32.add
                (get_local $$75)
                (get_local $$82)
               )
              )
              (set_local $$20
               (get_local $$83)
              )
              (set_local $$84
               (get_local $$17)
              )
              (set_local $$85
               (f32.convert_s/i32
                (get_local $$84)
               )
              )
              (set_local $$86
               (get_local $$7)
              )
              (set_local $$87
               (f32.sub
                (get_local $$85)
                (get_local $$86)
               )
              )
              (set_local $$88
               (get_local $$19)
              )
              (set_local $$89
               (i32.and
                (get_local $$88)
                (i32.const 255)
               )
              )
              (set_local $$90
               (i32.add
                (i32.const 3736)
                (i32.shl
                 (get_local $$89)
                 (i32.const 2)
                )
               )
              )
              (set_local $$91
               (f32.load
                (get_local $$90)
               )
              )
              (set_local $$92
               (i32.add
                (get_local $$41)
                (i32.const 1080)
               )
              )
              (set_local $$93
               (f32.load
                (get_local $$92)
               )
              )
              (set_local $$94
               (f32.mul
                (get_local $$91)
                (get_local $$93)
               )
              )
              (set_local $$95
               (f32.add
                (get_local $$87)
                (get_local $$94)
               )
              )
              (set_local $$21
               (get_local $$95)
              )
              (set_local $$96
               (get_local $$18)
              )
              (set_local $$97
               (f32.convert_s/i32
                (get_local $$96)
               )
              )
              (set_local $$98
               (get_local $$8)
              )
              (set_local $$99
               (f32.sub
                (get_local $$97)
                (get_local $$98)
               )
              )
              (set_local $$100
               (get_local $$19)
              )
              (set_local $$101
               (i32.and
                (get_local $$100)
                (i32.const 255)
               )
              )
              (set_local $$102
               (i32.add
                (i32.const 4760)
                (i32.shl
                 (get_local $$101)
                 (i32.const 2)
                )
               )
              )
              (set_local $$103
               (f32.load
                (get_local $$102)
               )
              )
              (set_local $$104
               (i32.add
                (get_local $$41)
                (i32.const 1080)
               )
              )
              (set_local $$105
               (f32.load
                (get_local $$104)
               )
              )
              (set_local $$106
               (f32.mul
                (get_local $$103)
                (get_local $$105)
               )
              )
              (set_local $$107
               (f32.add
                (get_local $$99)
                (get_local $$106)
               )
              )
              (set_local $$22
               (get_local $$107)
              )
              (set_local $$108
               (get_local $$20)
              )
              (set_local $$109
               (get_local $$20)
              )
              (set_local $$110
               (f32.mul
                (get_local $$108)
                (get_local $$109)
               )
              )
              (set_local $$111
               (get_local $$21)
              )
              (set_local $$112
               (get_local $$21)
              )
              (set_local $$113
               (f32.mul
                (get_local $$111)
                (get_local $$112)
               )
              )
              (set_local $$114
               (f32.add
                (get_local $$110)
                (get_local $$113)
               )
              )
              (set_local $$115
               (get_local $$22)
              )
              (set_local $$116
               (get_local $$22)
              )
              (set_local $$117
               (f32.mul
                (get_local $$115)
                (get_local $$116)
               )
              )
              (set_local $$118
               (f32.add
                (get_local $$114)
                (get_local $$117)
               )
              )
              (set_local $$23
               (get_local $$118)
              )
              (set_local $$119
               (get_local $$23)
              )
              (set_local $$120
               (get_local $$12)
              )
              (set_local $$121
               (f32.lt
                (get_local $$119)
                (get_local $$120)
               )
              )
              (if
               (get_local $$121)
               (block
                (set_local $$122
                 (get_local $$23)
                )
                (set_local $$12
                 (get_local $$122)
                )
                (set_local $$123
                 (get_local $$16)
                )
                (set_local $$13
                 (get_local $$123)
                )
                (set_local $$124
                 (get_local $$17)
                )
                (set_local $$14
                 (get_local $$124)
                )
                (set_local $$125
                 (get_local $$18)
                )
                (set_local $$15
                 (get_local $$125)
                )
               )
              )
              (set_local $$126
               (get_local $$18)
              )
              (set_local $$127
               (i32.add
                (get_local $$126)
                (i32.const 1)
               )
              )
              (set_local $$18
               (get_local $$127)
              )
              (br $while-in3)
             )
            )
            (set_local $$128
             (get_local $$17)
            )
            (set_local $$129
             (i32.add
              (get_local $$128)
              (i32.const 1)
             )
            )
            (set_local $$17
             (get_local $$129)
            )
            (br $while-in1)
           )
          )
          (set_local $$130
           (get_local $$16)
          )
          (set_local $$131
           (i32.add
            (get_local $$130)
            (i32.const 1)
           )
          )
          (set_local $$16
           (get_local $$131)
          )
          (br $while-in)
         )
        )
        (br $switch)
       )
      )
      (block
       (set_local $$132
        (get_local $$9)
       )
       (set_local $$133
        (i32.sub
         (get_local $$132)
         (i32.const 1)
        )
       )
       (set_local $$24
        (get_local $$133)
       )
       (loop $while-in5
        (block $while-out4
         (set_local $$134
          (get_local $$24)
         )
         (set_local $$135
          (get_local $$9)
         )
         (set_local $$136
          (i32.add
           (get_local $$135)
           (i32.const 1)
          )
         )
         (set_local $$137
          (i32.le_s
           (get_local $$134)
           (get_local $$136)
          )
         )
         (if
          (i32.eqz
           (get_local $$137)
          )
          (br $label$break$L1)
         )
         (set_local $$138
          (get_local $$10)
         )
         (set_local $$139
          (i32.sub
           (get_local $$138)
           (i32.const 1)
          )
         )
         (set_local $$25
          (get_local $$139)
         )
         (loop $while-in7
          (block $while-out6
           (set_local $$140
            (get_local $$25)
           )
           (set_local $$141
            (get_local $$10)
           )
           (set_local $$142
            (i32.add
             (get_local $$141)
             (i32.const 1)
            )
           )
           (set_local $$143
            (i32.le_s
             (get_local $$140)
             (get_local $$142)
            )
           )
           (if
            (i32.eqz
             (get_local $$143)
            )
            (br $while-out6)
           )
           (set_local $$144
            (get_local $$11)
           )
           (set_local $$145
            (i32.sub
             (get_local $$144)
             (i32.const 1)
            )
           )
           (set_local $$26
            (get_local $$145)
           )
           (loop $while-in9
            (block $while-out8
             (set_local $$146
              (get_local $$26)
             )
             (set_local $$147
              (get_local $$11)
             )
             (set_local $$148
              (i32.add
               (get_local $$147)
               (i32.const 1)
              )
             )
             (set_local $$149
              (i32.le_s
               (get_local $$146)
               (get_local $$148)
              )
             )
             (if
              (i32.eqz
               (get_local $$149)
              )
              (br $while-out8)
             )
             (set_local $$150
              (get_local $$24)
             )
             (set_local $$151
              (get_local $$25)
             )
             (set_local $$152
              (get_local $$26)
             )
             (set_local $$153
              (call $__ZNK9FastNoise11Index3D_256Ehiii
               (get_local $$41)
               (i32.const 0)
               (get_local $$150)
               (get_local $$151)
               (get_local $$152)
              )
             )
             (set_local $$27
              (get_local $$153)
             )
             (set_local $$154
              (get_local $$24)
             )
             (set_local $$155
              (f32.convert_s/i32
               (get_local $$154)
              )
             )
             (set_local $$156
              (get_local $$6)
             )
             (set_local $$157
              (f32.sub
               (get_local $$155)
               (get_local $$156)
              )
             )
             (set_local $$158
              (get_local $$27)
             )
             (set_local $$159
              (i32.and
               (get_local $$158)
               (i32.const 255)
              )
             )
             (set_local $$160
              (i32.add
               (i32.const 2712)
               (i32.shl
                (get_local $$159)
                (i32.const 2)
               )
              )
             )
             (set_local $$161
              (f32.load
               (get_local $$160)
              )
             )
             (set_local $$162
              (i32.add
               (get_local $$41)
               (i32.const 1080)
              )
             )
             (set_local $$163
              (f32.load
               (get_local $$162)
              )
             )
             (set_local $$164
              (f32.mul
               (get_local $$161)
               (get_local $$163)
              )
             )
             (set_local $$165
              (f32.add
               (get_local $$157)
               (get_local $$164)
              )
             )
             (set_local $$28
              (get_local $$165)
             )
             (set_local $$166
              (get_local $$25)
             )
             (set_local $$167
              (f32.convert_s/i32
               (get_local $$166)
              )
             )
             (set_local $$168
              (get_local $$7)
             )
             (set_local $$169
              (f32.sub
               (get_local $$167)
               (get_local $$168)
              )
             )
             (set_local $$170
              (get_local $$27)
             )
             (set_local $$171
              (i32.and
               (get_local $$170)
               (i32.const 255)
              )
             )
             (set_local $$172
              (i32.add
               (i32.const 3736)
               (i32.shl
                (get_local $$171)
                (i32.const 2)
               )
              )
             )
             (set_local $$173
              (f32.load
               (get_local $$172)
              )
             )
             (set_local $$174
              (i32.add
               (get_local $$41)
               (i32.const 1080)
              )
             )
             (set_local $$175
              (f32.load
               (get_local $$174)
              )
             )
             (set_local $$176
              (f32.mul
               (get_local $$173)
               (get_local $$175)
              )
             )
             (set_local $$177
              (f32.add
               (get_local $$169)
               (get_local $$176)
              )
             )
             (set_local $$29
              (get_local $$177)
             )
             (set_local $$178
              (get_local $$26)
             )
             (set_local $$179
              (f32.convert_s/i32
               (get_local $$178)
              )
             )
             (set_local $$180
              (get_local $$8)
             )
             (set_local $$181
              (f32.sub
               (get_local $$179)
               (get_local $$180)
              )
             )
             (set_local $$182
              (get_local $$27)
             )
             (set_local $$183
              (i32.and
               (get_local $$182)
               (i32.const 255)
              )
             )
             (set_local $$184
              (i32.add
               (i32.const 4760)
               (i32.shl
                (get_local $$183)
                (i32.const 2)
               )
              )
             )
             (set_local $$185
              (f32.load
               (get_local $$184)
              )
             )
             (set_local $$186
              (i32.add
               (get_local $$41)
               (i32.const 1080)
              )
             )
             (set_local $$187
              (f32.load
               (get_local $$186)
              )
             )
             (set_local $$188
              (f32.mul
               (get_local $$185)
               (get_local $$187)
              )
             )
             (set_local $$189
              (f32.add
               (get_local $$181)
               (get_local $$188)
              )
             )
             (set_local $$30
              (get_local $$189)
             )
             (set_local $$190
              (get_local $$28)
             )
             (set_local $$191
              (call $__ZL7FastAbsf
               (get_local $$190)
              )
             )
             (set_local $$192
              (get_local $$29)
             )
             (set_local $$193
              (call $__ZL7FastAbsf
               (get_local $$192)
              )
             )
             (set_local $$194
              (f32.add
               (get_local $$191)
               (get_local $$193)
              )
             )
             (set_local $$195
              (get_local $$30)
             )
             (set_local $$196
              (call $__ZL7FastAbsf
               (get_local $$195)
              )
             )
             (set_local $$197
              (f32.add
               (get_local $$194)
               (get_local $$196)
              )
             )
             (set_local $$31
              (get_local $$197)
             )
             (set_local $$198
              (get_local $$31)
             )
             (set_local $$199
              (get_local $$12)
             )
             (set_local $$200
              (f32.lt
               (get_local $$198)
               (get_local $$199)
              )
             )
             (if
              (get_local $$200)
              (block
               (set_local $$201
                (get_local $$31)
               )
               (set_local $$12
                (get_local $$201)
               )
               (set_local $$202
                (get_local $$24)
               )
               (set_local $$13
                (get_local $$202)
               )
               (set_local $$203
                (get_local $$25)
               )
               (set_local $$14
                (get_local $$203)
               )
               (set_local $$204
                (get_local $$26)
               )
               (set_local $$15
                (get_local $$204)
               )
              )
             )
             (set_local $$205
              (get_local $$26)
             )
             (set_local $$206
              (i32.add
               (get_local $$205)
               (i32.const 1)
              )
             )
             (set_local $$26
              (get_local $$206)
             )
             (br $while-in9)
            )
           )
           (set_local $$207
            (get_local $$25)
           )
           (set_local $$208
            (i32.add
             (get_local $$207)
             (i32.const 1)
            )
           )
           (set_local $$25
            (get_local $$208)
           )
           (br $while-in7)
          )
         )
         (set_local $$209
          (get_local $$24)
         )
         (set_local $$210
          (i32.add
           (get_local $$209)
           (i32.const 1)
          )
         )
         (set_local $$24
          (get_local $$210)
         )
         (br $while-in5)
        )
       )
       (br $switch)
      )
     )
     (block
      (set_local $$211
       (get_local $$9)
      )
      (set_local $$212
       (i32.sub
        (get_local $$211)
        (i32.const 1)
       )
      )
      (set_local $$32
       (get_local $$212)
      )
      (loop $while-in12
       (block $while-out11
        (set_local $$213
         (get_local $$32)
        )
        (set_local $$214
         (get_local $$9)
        )
        (set_local $$215
         (i32.add
          (get_local $$214)
          (i32.const 1)
         )
        )
        (set_local $$216
         (i32.le_s
          (get_local $$213)
          (get_local $$215)
         )
        )
        (if
         (i32.eqz
          (get_local $$216)
         )
         (br $label$break$L1)
        )
        (set_local $$217
         (get_local $$10)
        )
        (set_local $$218
         (i32.sub
          (get_local $$217)
          (i32.const 1)
         )
        )
        (set_local $$33
         (get_local $$218)
        )
        (loop $while-in14
         (block $while-out13
          (set_local $$219
           (get_local $$33)
          )
          (set_local $$220
           (get_local $$10)
          )
          (set_local $$221
           (i32.add
            (get_local $$220)
            (i32.const 1)
           )
          )
          (set_local $$222
           (i32.le_s
            (get_local $$219)
            (get_local $$221)
           )
          )
          (if
           (i32.eqz
            (get_local $$222)
           )
           (br $while-out13)
          )
          (set_local $$223
           (get_local $$11)
          )
          (set_local $$224
           (i32.sub
            (get_local $$223)
            (i32.const 1)
           )
          )
          (set_local $$34
           (get_local $$224)
          )
          (loop $while-in16
           (block $while-out15
            (set_local $$225
             (get_local $$34)
            )
            (set_local $$226
             (get_local $$11)
            )
            (set_local $$227
             (i32.add
              (get_local $$226)
              (i32.const 1)
             )
            )
            (set_local $$228
             (i32.le_s
              (get_local $$225)
              (get_local $$227)
             )
            )
            (if
             (i32.eqz
              (get_local $$228)
             )
             (br $while-out15)
            )
            (set_local $$229
             (get_local $$32)
            )
            (set_local $$230
             (get_local $$33)
            )
            (set_local $$231
             (get_local $$34)
            )
            (set_local $$232
             (call $__ZNK9FastNoise11Index3D_256Ehiii
              (get_local $$41)
              (i32.const 0)
              (get_local $$229)
              (get_local $$230)
              (get_local $$231)
             )
            )
            (set_local $$35
             (get_local $$232)
            )
            (set_local $$233
             (get_local $$32)
            )
            (set_local $$234
             (f32.convert_s/i32
              (get_local $$233)
             )
            )
            (set_local $$235
             (get_local $$6)
            )
            (set_local $$236
             (f32.sub
              (get_local $$234)
              (get_local $$235)
             )
            )
            (set_local $$237
             (get_local $$35)
            )
            (set_local $$238
             (i32.and
              (get_local $$237)
              (i32.const 255)
             )
            )
            (set_local $$239
             (i32.add
              (i32.const 2712)
              (i32.shl
               (get_local $$238)
               (i32.const 2)
              )
             )
            )
            (set_local $$240
             (f32.load
              (get_local $$239)
             )
            )
            (set_local $$241
             (i32.add
              (get_local $$41)
              (i32.const 1080)
             )
            )
            (set_local $$242
             (f32.load
              (get_local $$241)
             )
            )
            (set_local $$243
             (f32.mul
              (get_local $$240)
              (get_local $$242)
             )
            )
            (set_local $$244
             (f32.add
              (get_local $$236)
              (get_local $$243)
             )
            )
            (set_local $$36
             (get_local $$244)
            )
            (set_local $$245
             (get_local $$33)
            )
            (set_local $$246
             (f32.convert_s/i32
              (get_local $$245)
             )
            )
            (set_local $$247
             (get_local $$7)
            )
            (set_local $$248
             (f32.sub
              (get_local $$246)
              (get_local $$247)
             )
            )
            (set_local $$249
             (get_local $$35)
            )
            (set_local $$250
             (i32.and
              (get_local $$249)
              (i32.const 255)
             )
            )
            (set_local $$251
             (i32.add
              (i32.const 3736)
              (i32.shl
               (get_local $$250)
               (i32.const 2)
              )
             )
            )
            (set_local $$252
             (f32.load
              (get_local $$251)
             )
            )
            (set_local $$253
             (i32.add
              (get_local $$41)
              (i32.const 1080)
             )
            )
            (set_local $$254
             (f32.load
              (get_local $$253)
             )
            )
            (set_local $$255
             (f32.mul
              (get_local $$252)
              (get_local $$254)
             )
            )
            (set_local $$256
             (f32.add
              (get_local $$248)
              (get_local $$255)
             )
            )
            (set_local $$37
             (get_local $$256)
            )
            (set_local $$257
             (get_local $$34)
            )
            (set_local $$258
             (f32.convert_s/i32
              (get_local $$257)
             )
            )
            (set_local $$259
             (get_local $$8)
            )
            (set_local $$260
             (f32.sub
              (get_local $$258)
              (get_local $$259)
             )
            )
            (set_local $$261
             (get_local $$35)
            )
            (set_local $$262
             (i32.and
              (get_local $$261)
              (i32.const 255)
             )
            )
            (set_local $$263
             (i32.add
              (i32.const 4760)
              (i32.shl
               (get_local $$262)
               (i32.const 2)
              )
             )
            )
            (set_local $$264
             (f32.load
              (get_local $$263)
             )
            )
            (set_local $$265
             (i32.add
              (get_local $$41)
              (i32.const 1080)
             )
            )
            (set_local $$266
             (f32.load
              (get_local $$265)
             )
            )
            (set_local $$267
             (f32.mul
              (get_local $$264)
              (get_local $$266)
             )
            )
            (set_local $$268
             (f32.add
              (get_local $$260)
              (get_local $$267)
             )
            )
            (set_local $$38
             (get_local $$268)
            )
            (set_local $$269
             (get_local $$36)
            )
            (set_local $$270
             (call $__ZL7FastAbsf
              (get_local $$269)
             )
            )
            (set_local $$271
             (get_local $$37)
            )
            (set_local $$272
             (call $__ZL7FastAbsf
              (get_local $$271)
             )
            )
            (set_local $$273
             (f32.add
              (get_local $$270)
              (get_local $$272)
             )
            )
            (set_local $$274
             (get_local $$38)
            )
            (set_local $$275
             (call $__ZL7FastAbsf
              (get_local $$274)
             )
            )
            (set_local $$276
             (f32.add
              (get_local $$273)
              (get_local $$275)
             )
            )
            (set_local $$277
             (get_local $$36)
            )
            (set_local $$278
             (get_local $$36)
            )
            (set_local $$279
             (f32.mul
              (get_local $$277)
              (get_local $$278)
             )
            )
            (set_local $$280
             (get_local $$37)
            )
            (set_local $$281
             (get_local $$37)
            )
            (set_local $$282
             (f32.mul
              (get_local $$280)
              (get_local $$281)
             )
            )
            (set_local $$283
             (f32.add
              (get_local $$279)
              (get_local $$282)
             )
            )
            (set_local $$284
             (get_local $$38)
            )
            (set_local $$285
             (get_local $$38)
            )
            (set_local $$286
             (f32.mul
              (get_local $$284)
              (get_local $$285)
             )
            )
            (set_local $$287
             (f32.add
              (get_local $$283)
              (get_local $$286)
             )
            )
            (set_local $$288
             (f32.add
              (get_local $$276)
              (get_local $$287)
             )
            )
            (set_local $$39
             (get_local $$288)
            )
            (set_local $$289
             (get_local $$39)
            )
            (set_local $$290
             (get_local $$12)
            )
            (set_local $$291
             (f32.lt
              (get_local $$289)
              (get_local $$290)
             )
            )
            (if
             (get_local $$291)
             (block
              (set_local $$292
               (get_local $$39)
              )
              (set_local $$12
               (get_local $$292)
              )
              (set_local $$293
               (get_local $$32)
              )
              (set_local $$13
               (get_local $$293)
              )
              (set_local $$294
               (get_local $$33)
              )
              (set_local $$14
               (get_local $$294)
              )
              (set_local $$295
               (get_local $$34)
              )
              (set_local $$15
               (get_local $$295)
              )
             )
            )
            (set_local $$296
             (get_local $$34)
            )
            (set_local $$297
             (i32.add
              (get_local $$296)
              (i32.const 1)
             )
            )
            (set_local $$34
             (get_local $$297)
            )
            (br $while-in16)
           )
          )
          (set_local $$298
           (get_local $$33)
          )
          (set_local $$299
           (i32.add
            (get_local $$298)
            (i32.const 1)
           )
          )
          (set_local $$33
           (get_local $$299)
          )
          (br $while-in14)
         )
        )
        (set_local $$300
         (get_local $$32)
        )
        (set_local $$301
         (i32.add
          (get_local $$300)
          (i32.const 1)
         )
        )
        (set_local $$32
         (get_local $$301)
        )
        (br $while-in12)
       )
      )
      (br $switch)
     )
    )
    (nop)
   )
  )
  (set_local $$302
   (i32.add
    (get_local $$41)
    (i32.const 1064)
   )
  )
  (set_local $$303
   (i32.load
    (get_local $$302)
   )
  )
  (block $switch18
   (block $switch-default22
    (block $switch-case21
     (block $switch-case20
      (block $switch-case19
       (br_table $switch-case19 $switch-case20 $switch-case21 $switch-default22
        (i32.sub
         (get_local $$303)
         (i32.const 0)
        )
       )
      )
      (block
       (set_local $$304
        (i32.add
         (get_local $$41)
         (i32.const 1024)
        )
       )
       (set_local $$305
        (i32.load
         (get_local $$304)
        )
       )
       (set_local $$306
        (get_local $$13)
       )
       (set_local $$307
        (get_local $$14)
       )
       (set_local $$308
        (get_local $$15)
       )
       (set_local $$309
        (call $__ZL10ValCoord3Diiii
         (get_local $$305)
         (get_local $$306)
         (get_local $$307)
         (get_local $$308)
        )
       )
       (set_local $$4
        (get_local $$309)
       )
       (set_local $$351
        (get_local $$4)
       )
       (set_global $STACKTOP
        (get_local $sp)
       )
       (return
        (get_local $$351)
       )
       (br $switch18)
      )
     )
     (block
      (set_local $$310
       (i32.add
        (get_local $$41)
        (i32.const 1068)
       )
      )
      (set_local $$311
       (i32.load
        (get_local $$310)
       )
      )
      (set_local $$312
       (i32.ne
        (get_local $$311)
        (i32.const 0)
       )
      )
      (if
       (i32.eqz
        (get_local $$312)
       )
       (call $___assert_fail
        (i32.const 9925)
        (i32.const 9947)
        (i32.const 1798)
        (i32.const 9971)
       )
      )
      (set_local $$313
       (get_local $$13)
      )
      (set_local $$314
       (get_local $$14)
      )
      (set_local $$315
       (get_local $$15)
      )
      (set_local $$316
       (call $__ZNK9FastNoise11Index3D_256Ehiii
        (get_local $$41)
        (i32.const 0)
        (get_local $$313)
        (get_local $$314)
        (get_local $$315)
       )
      )
      (set_local $$40
       (get_local $$316)
      )
      (set_local $$317
       (i32.add
        (get_local $$41)
        (i32.const 1068)
       )
      )
      (set_local $$318
       (i32.load
        (get_local $$317)
       )
      )
      (set_local $$319
       (get_local $$13)
      )
      (set_local $$320
       (f32.convert_s/i32
        (get_local $$319)
       )
      )
      (set_local $$321
       (get_local $$40)
      )
      (set_local $$322
       (i32.and
        (get_local $$321)
        (i32.const 255)
       )
      )
      (set_local $$323
       (i32.add
        (i32.const 2712)
        (i32.shl
         (get_local $$322)
         (i32.const 2)
        )
       )
      )
      (set_local $$324
       (f32.load
        (get_local $$323)
       )
      )
      (set_local $$325
       (i32.add
        (get_local $$41)
        (i32.const 1080)
       )
      )
      (set_local $$326
       (f32.load
        (get_local $$325)
       )
      )
      (set_local $$327
       (f32.mul
        (get_local $$324)
        (get_local $$326)
       )
      )
      (set_local $$328
       (f32.add
        (get_local $$320)
        (get_local $$327)
       )
      )
      (set_local $$329
       (get_local $$14)
      )
      (set_local $$330
       (f32.convert_s/i32
        (get_local $$329)
       )
      )
      (set_local $$331
       (get_local $$40)
      )
      (set_local $$332
       (i32.and
        (get_local $$331)
        (i32.const 255)
       )
      )
      (set_local $$333
       (i32.add
        (i32.const 3736)
        (i32.shl
         (get_local $$332)
         (i32.const 2)
        )
       )
      )
      (set_local $$334
       (f32.load
        (get_local $$333)
       )
      )
      (set_local $$335
       (i32.add
        (get_local $$41)
        (i32.const 1080)
       )
      )
      (set_local $$336
       (f32.load
        (get_local $$335)
       )
      )
      (set_local $$337
       (f32.mul
        (get_local $$334)
        (get_local $$336)
       )
      )
      (set_local $$338
       (f32.add
        (get_local $$330)
        (get_local $$337)
       )
      )
      (set_local $$339
       (get_local $$15)
      )
      (set_local $$340
       (f32.convert_s/i32
        (get_local $$339)
       )
      )
      (set_local $$341
       (get_local $$40)
      )
      (set_local $$342
       (i32.and
        (get_local $$341)
        (i32.const 255)
       )
      )
      (set_local $$343
       (i32.add
        (i32.const 4760)
        (i32.shl
         (get_local $$342)
         (i32.const 2)
        )
       )
      )
      (set_local $$344
       (f32.load
        (get_local $$343)
       )
      )
      (set_local $$345
       (i32.add
        (get_local $$41)
        (i32.const 1080)
       )
      )
      (set_local $$346
       (f32.load
        (get_local $$345)
       )
      )
      (set_local $$347
       (f32.mul
        (get_local $$344)
        (get_local $$346)
       )
      )
      (set_local $$348
       (f32.add
        (get_local $$340)
        (get_local $$347)
       )
      )
      (set_local $$349
       (call $__ZNK9FastNoise8GetNoiseEfff
        (get_local $$318)
        (get_local $$328)
        (get_local $$338)
        (get_local $$348)
       )
      )
      (set_local $$4
       (get_local $$349)
      )
      (set_local $$351
       (get_local $$4)
      )
      (set_global $STACKTOP
       (get_local $sp)
      )
      (return
       (get_local $$351)
      )
      (br $switch18)
     )
    )
    (block
     (set_local $$350
      (get_local $$12)
     )
     (set_local $$4
      (get_local $$350)
     )
     (set_local $$351
      (get_local $$4)
     )
     (set_global $STACKTOP
      (get_local $sp)
     )
     (return
      (get_local $$351)
     )
     (br $switch18)
    )
   )
   (block
    (set_local $$4
     (f32.const 0)
    )
    (set_local $$351
     (get_local $$4)
    )
    (set_global $STACKTOP
     (get_local $sp)
    )
    (return
     (get_local $$351)
    )
   )
  )
  (return
   (f32.const 0)
  )
 )
 (func $__ZNK9FastNoise19SingleCellular2EdgeEfff (param $$0 i32) (param $$1 f32) (param $$2 f32) (param $$3 f32) (result f32)
  (local $$10 f32)
  (local $$100 f32)
  (local $$101 i32)
  (local $$102 f32)
  (local $$103 f32)
  (local $$104 f32)
  (local $$105 i32)
  (local $$106 i32)
  (local $$107 i32)
  (local $$108 f32)
  (local $$109 i32)
  (local $$11 f32)
  (local $$110 f32)
  (local $$111 f32)
  (local $$112 f32)
  (local $$113 i32)
  (local $$114 f32)
  (local $$115 f32)
  (local $$116 f32)
  (local $$117 i32)
  (local $$118 i32)
  (local $$119 i32)
  (local $$12 f32)
  (local $$120 f32)
  (local $$121 i32)
  (local $$122 f32)
  (local $$123 f32)
  (local $$124 f32)
  (local $$125 f32)
  (local $$126 f32)
  (local $$127 f32)
  (local $$128 f32)
  (local $$129 f32)
  (local $$13 f32)
  (local $$130 f32)
  (local $$131 f32)
  (local $$132 f32)
  (local $$133 f32)
  (local $$134 f32)
  (local $$135 f32)
  (local $$136 i32)
  (local $$137 i32)
  (local $$138 i32)
  (local $$139 i32)
  (local $$14 f32)
  (local $$140 i32)
  (local $$141 i32)
  (local $$142 f32)
  (local $$143 f32)
  (local $$144 f32)
  (local $$145 f32)
  (local $$146 f32)
  (local $$147 i32)
  (local $$148 i32)
  (local $$149 i32)
  (local $$15 f32)
  (local $$150 f32)
  (local $$151 f32)
  (local $$152 f32)
  (local $$153 f32)
  (local $$154 i32)
  (local $$155 i32)
  (local $$156 i32)
  (local $$157 i32)
  (local $$158 f32)
  (local $$159 f32)
  (local $$16 f32)
  (local $$160 f32)
  (local $$161 f32)
  (local $$162 f32)
  (local $$163 i32)
  (local $$164 i32)
  (local $$165 i32)
  (local $$166 i32)
  (local $$167 i32)
  (local $$168 i32)
  (local $$169 i32)
  (local $$17 f32)
  (local $$170 i32)
  (local $$171 i32)
  (local $$172 i32)
  (local $$173 i32)
  (local $$174 i32)
  (local $$175 i32)
  (local $$176 i32)
  (local $$177 i32)
  (local $$178 i32)
  (local $$179 i32)
  (local $$18 f32)
  (local $$180 i32)
  (local $$181 i32)
  (local $$182 i32)
  (local $$183 i32)
  (local $$184 i32)
  (local $$185 i32)
  (local $$186 i32)
  (local $$187 i32)
  (local $$188 i32)
  (local $$189 i32)
  (local $$19 f32)
  (local $$190 i32)
  (local $$191 i32)
  (local $$192 f32)
  (local $$193 f32)
  (local $$194 f32)
  (local $$195 i32)
  (local $$196 i32)
  (local $$197 i32)
  (local $$198 f32)
  (local $$199 i32)
  (local $$20 f32)
  (local $$200 f32)
  (local $$201 f32)
  (local $$202 f32)
  (local $$203 i32)
  (local $$204 f32)
  (local $$205 f32)
  (local $$206 f32)
  (local $$207 i32)
  (local $$208 i32)
  (local $$209 i32)
  (local $$21 f32)
  (local $$210 f32)
  (local $$211 i32)
  (local $$212 f32)
  (local $$213 f32)
  (local $$214 f32)
  (local $$215 i32)
  (local $$216 f32)
  (local $$217 f32)
  (local $$218 f32)
  (local $$219 i32)
  (local $$22 f32)
  (local $$220 i32)
  (local $$221 i32)
  (local $$222 f32)
  (local $$223 i32)
  (local $$224 f32)
  (local $$225 f32)
  (local $$226 f32)
  (local $$227 f32)
  (local $$228 f32)
  (local $$229 f32)
  (local $$23 i32)
  (local $$230 f32)
  (local $$231 f32)
  (local $$232 f32)
  (local $$233 f32)
  (local $$234 f32)
  (local $$235 i32)
  (local $$236 i32)
  (local $$237 i32)
  (local $$238 i32)
  (local $$239 i32)
  (local $$24 f32)
  (local $$240 i32)
  (local $$241 f32)
  (local $$242 f32)
  (local $$243 f32)
  (local $$244 f32)
  (local $$245 f32)
  (local $$246 i32)
  (local $$247 i32)
  (local $$248 i32)
  (local $$249 f32)
  (local $$25 f32)
  (local $$250 f32)
  (local $$251 f32)
  (local $$252 f32)
  (local $$253 i32)
  (local $$254 i32)
  (local $$255 i32)
  (local $$256 i32)
  (local $$257 f32)
  (local $$258 f32)
  (local $$259 f32)
  (local $$26 f32)
  (local $$260 f32)
  (local $$261 f32)
  (local $$262 i32)
  (local $$263 i32)
  (local $$264 i32)
  (local $$265 i32)
  (local $$266 i32)
  (local $$267 i32)
  (local $$268 i32)
  (local $$269 i32)
  (local $$27 i32)
  (local $$270 i32)
  (local $$271 i32)
  (local $$272 i32)
  (local $$273 i32)
  (local $$274 i32)
  (local $$275 i32)
  (local $$276 i32)
  (local $$277 i32)
  (local $$278 i32)
  (local $$279 i32)
  (local $$28 i32)
  (local $$280 i32)
  (local $$281 i32)
  (local $$282 i32)
  (local $$283 i32)
  (local $$284 i32)
  (local $$285 i32)
  (local $$286 i32)
  (local $$287 i32)
  (local $$288 i32)
  (local $$289 i32)
  (local $$29 i32)
  (local $$290 i32)
  (local $$291 f32)
  (local $$292 f32)
  (local $$293 f32)
  (local $$294 i32)
  (local $$295 i32)
  (local $$296 i32)
  (local $$297 f32)
  (local $$298 i32)
  (local $$299 f32)
  (local $$30 i32)
  (local $$300 f32)
  (local $$301 f32)
  (local $$302 i32)
  (local $$303 f32)
  (local $$304 f32)
  (local $$305 f32)
  (local $$306 i32)
  (local $$307 i32)
  (local $$308 i32)
  (local $$309 f32)
  (local $$31 i32)
  (local $$310 i32)
  (local $$311 f32)
  (local $$312 f32)
  (local $$313 f32)
  (local $$314 i32)
  (local $$315 f32)
  (local $$316 f32)
  (local $$317 f32)
  (local $$318 i32)
  (local $$319 i32)
  (local $$32 i32)
  (local $$320 i32)
  (local $$321 f32)
  (local $$322 i32)
  (local $$323 f32)
  (local $$324 f32)
  (local $$325 f32)
  (local $$326 f32)
  (local $$327 f32)
  (local $$328 f32)
  (local $$329 f32)
  (local $$33 i32)
  (local $$330 f32)
  (local $$331 f32)
  (local $$332 f32)
  (local $$333 f32)
  (local $$334 f32)
  (local $$335 f32)
  (local $$336 f32)
  (local $$337 f32)
  (local $$338 f32)
  (local $$339 f32)
  (local $$34 i32)
  (local $$340 f32)
  (local $$341 f32)
  (local $$342 f32)
  (local $$343 f32)
  (local $$344 f32)
  (local $$345 f32)
  (local $$346 i32)
  (local $$347 i32)
  (local $$348 i32)
  (local $$349 i32)
  (local $$35 f32)
  (local $$350 i32)
  (local $$351 i32)
  (local $$352 f32)
  (local $$353 f32)
  (local $$354 f32)
  (local $$355 f32)
  (local $$356 f32)
  (local $$357 i32)
  (local $$358 i32)
  (local $$359 i32)
  (local $$36 f32)
  (local $$360 f32)
  (local $$361 f32)
  (local $$362 f32)
  (local $$363 f32)
  (local $$364 i32)
  (local $$365 i32)
  (local $$366 i32)
  (local $$367 i32)
  (local $$368 f32)
  (local $$369 f32)
  (local $$37 f32)
  (local $$370 f32)
  (local $$371 f32)
  (local $$372 f32)
  (local $$373 i32)
  (local $$374 i32)
  (local $$375 i32)
  (local $$376 i32)
  (local $$377 i32)
  (local $$378 i32)
  (local $$379 i32)
  (local $$38 f32)
  (local $$380 i32)
  (local $$381 i32)
  (local $$382 i32)
  (local $$383 i32)
  (local $$384 f32)
  (local $$385 i32)
  (local $$386 i32)
  (local $$387 i32)
  (local $$388 f32)
  (local $$389 i32)
  (local $$39 i32)
  (local $$390 i32)
  (local $$391 i32)
  (local $$392 f32)
  (local $$393 f32)
  (local $$394 i32)
  (local $$395 i32)
  (local $$396 i32)
  (local $$397 f32)
  (local $$398 i32)
  (local $$399 i32)
  (local $$4 f32)
  (local $$40 i32)
  (local $$400 i32)
  (local $$401 f32)
  (local $$402 f32)
  (local $$403 i32)
  (local $$404 i32)
  (local $$405 i32)
  (local $$406 f32)
  (local $$407 i32)
  (local $$408 i32)
  (local $$409 i32)
  (local $$41 i32)
  (local $$410 f32)
  (local $$411 f32)
  (local $$412 i32)
  (local $$413 i32)
  (local $$414 i32)
  (local $$415 f32)
  (local $$416 i32)
  (local $$417 i32)
  (local $$418 i32)
  (local $$419 f32)
  (local $$42 i32)
  (local $$420 f32)
  (local $$421 f32)
  (local $$43 i32)
  (local $$44 f32)
  (local $$45 f32)
  (local $$46 f32)
  (local $$47 f32)
  (local $$48 i32)
  (local $$49 i32)
  (local $$5 f32)
  (local $$50 i32)
  (local $$51 i32)
  (local $$52 i32)
  (local $$53 f32)
  (local $$54 f32)
  (local $$55 f32)
  (local $$56 f32)
  (local $$57 i32)
  (local $$58 i32)
  (local $$59 f32)
  (local $$6 f32)
  (local $$60 i32)
  (local $$61 f32)
  (local $$62 i32)
  (local $$63 f32)
  (local $$64 i32)
  (local $$65 i32)
  (local $$66 i32)
  (local $$67 i32)
  (local $$68 i32)
  (local $$69 i32)
  (local $$7 f32)
  (local $$70 i32)
  (local $$71 i32)
  (local $$72 i32)
  (local $$73 i32)
  (local $$74 i32)
  (local $$75 i32)
  (local $$76 i32)
  (local $$77 i32)
  (local $$78 i32)
  (local $$79 i32)
  (local $$8 f32)
  (local $$80 i32)
  (local $$81 i32)
  (local $$82 i32)
  (local $$83 i32)
  (local $$84 i32)
  (local $$85 i32)
  (local $$86 i32)
  (local $$87 i32)
  (local $$88 i32)
  (local $$89 i32)
  (local $$9 f32)
  (local $$90 f32)
  (local $$91 f32)
  (local $$92 f32)
  (local $$93 i32)
  (local $$94 i32)
  (local $$95 i32)
  (local $$96 f32)
  (local $$97 i32)
  (local $$98 f32)
  (local $$99 f32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 224)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 224)
   )
  )
  (set_local $$30
   (i32.add
    (get_local $sp)
    (i32.const 96)
   )
  )
  (set_local $$23
   (get_local $$0)
  )
  (set_local $$24
   (get_local $$1)
  )
  (set_local $$25
   (get_local $$2)
  )
  (set_local $$26
   (get_local $$3)
  )
  (set_local $$58
   (get_local $$23)
  )
  (set_local $$59
   (get_local $$24)
  )
  (set_local $$60
   (call $__ZL9FastRoundf
    (get_local $$59)
   )
  )
  (set_local $$27
   (get_local $$60)
  )
  (set_local $$61
   (get_local $$25)
  )
  (set_local $$62
   (call $__ZL9FastRoundf
    (get_local $$61)
   )
  )
  (set_local $$28
   (get_local $$62)
  )
  (set_local $$63
   (get_local $$26)
  )
  (set_local $$64
   (call $__ZL9FastRoundf
    (get_local $$63)
   )
  )
  (set_local $$29
   (get_local $$64)
  )
  (i64.store align=4
   (get_local $$30)
   (i64.load align=4
    (i32.const 5928)
   )
  )
  (i64.store align=4
   (i32.add
    (get_local $$30)
    (i32.const 8)
   )
   (i64.load align=4
    (i32.add
     (i32.const 5928)
     (i32.const 8)
    )
   )
  )
  (set_local $$65
   (i32.add
    (get_local $$58)
    (i32.const 1060)
   )
  )
  (set_local $$66
   (i32.load
    (get_local $$65)
   )
  )
  (block $label$break$L1
   (block $switch
    (block $switch-default
     (block $switch-case23
      (block $switch-case14
       (block $switch-case
        (br_table $switch-case $switch-case14 $switch-case23 $switch-default
         (i32.sub
          (get_local $$66)
          (i32.const 0)
         )
        )
       )
       (block
        (set_local $$67
         (get_local $$27)
        )
        (set_local $$68
         (i32.sub
          (get_local $$67)
          (i32.const 1)
         )
        )
        (set_local $$31
         (get_local $$68)
        )
        (loop $while-in
         (block $while-out
          (set_local $$69
           (get_local $$31)
          )
          (set_local $$70
           (get_local $$27)
          )
          (set_local $$71
           (i32.add
            (get_local $$70)
            (i32.const 1)
           )
          )
          (set_local $$72
           (i32.le_s
            (get_local $$69)
            (get_local $$71)
           )
          )
          (if
           (i32.eqz
            (get_local $$72)
           )
           (br $label$break$L1)
          )
          (set_local $$73
           (get_local $$28)
          )
          (set_local $$74
           (i32.sub
            (get_local $$73)
            (i32.const 1)
           )
          )
          (set_local $$32
           (get_local $$74)
          )
          (loop $while-in1
           (block $while-out0
            (set_local $$75
             (get_local $$32)
            )
            (set_local $$76
             (get_local $$28)
            )
            (set_local $$77
             (i32.add
              (get_local $$76)
              (i32.const 1)
             )
            )
            (set_local $$78
             (i32.le_s
              (get_local $$75)
              (get_local $$77)
             )
            )
            (if
             (i32.eqz
              (get_local $$78)
             )
             (br $while-out0)
            )
            (set_local $$79
             (get_local $$29)
            )
            (set_local $$80
             (i32.sub
              (get_local $$79)
              (i32.const 1)
             )
            )
            (set_local $$33
             (get_local $$80)
            )
            (loop $while-in3
             (block $while-out2
              (set_local $$81
               (get_local $$33)
              )
              (set_local $$82
               (get_local $$29)
              )
              (set_local $$83
               (i32.add
                (get_local $$82)
                (i32.const 1)
               )
              )
              (set_local $$84
               (i32.le_s
                (get_local $$81)
                (get_local $$83)
               )
              )
              (if
               (i32.eqz
                (get_local $$84)
               )
               (br $while-out2)
              )
              (set_local $$85
               (get_local $$31)
              )
              (set_local $$86
               (get_local $$32)
              )
              (set_local $$87
               (get_local $$33)
              )
              (set_local $$88
               (call $__ZNK9FastNoise11Index3D_256Ehiii
                (get_local $$58)
                (i32.const 0)
                (get_local $$85)
                (get_local $$86)
                (get_local $$87)
               )
              )
              (set_local $$34
               (get_local $$88)
              )
              (set_local $$89
               (get_local $$31)
              )
              (set_local $$90
               (f32.convert_s/i32
                (get_local $$89)
               )
              )
              (set_local $$91
               (get_local $$24)
              )
              (set_local $$92
               (f32.sub
                (get_local $$90)
                (get_local $$91)
               )
              )
              (set_local $$93
               (get_local $$34)
              )
              (set_local $$94
               (i32.and
                (get_local $$93)
                (i32.const 255)
               )
              )
              (set_local $$95
               (i32.add
                (i32.const 2712)
                (i32.shl
                 (get_local $$94)
                 (i32.const 2)
                )
               )
              )
              (set_local $$96
               (f32.load
                (get_local $$95)
               )
              )
              (set_local $$97
               (i32.add
                (get_local $$58)
                (i32.const 1080)
               )
              )
              (set_local $$98
               (f32.load
                (get_local $$97)
               )
              )
              (set_local $$99
               (f32.mul
                (get_local $$96)
                (get_local $$98)
               )
              )
              (set_local $$100
               (f32.add
                (get_local $$92)
                (get_local $$99)
               )
              )
              (set_local $$35
               (get_local $$100)
              )
              (set_local $$101
               (get_local $$32)
              )
              (set_local $$102
               (f32.convert_s/i32
                (get_local $$101)
               )
              )
              (set_local $$103
               (get_local $$25)
              )
              (set_local $$104
               (f32.sub
                (get_local $$102)
                (get_local $$103)
               )
              )
              (set_local $$105
               (get_local $$34)
              )
              (set_local $$106
               (i32.and
                (get_local $$105)
                (i32.const 255)
               )
              )
              (set_local $$107
               (i32.add
                (i32.const 3736)
                (i32.shl
                 (get_local $$106)
                 (i32.const 2)
                )
               )
              )
              (set_local $$108
               (f32.load
                (get_local $$107)
               )
              )
              (set_local $$109
               (i32.add
                (get_local $$58)
                (i32.const 1080)
               )
              )
              (set_local $$110
               (f32.load
                (get_local $$109)
               )
              )
              (set_local $$111
               (f32.mul
                (get_local $$108)
                (get_local $$110)
               )
              )
              (set_local $$112
               (f32.add
                (get_local $$104)
                (get_local $$111)
               )
              )
              (set_local $$36
               (get_local $$112)
              )
              (set_local $$113
               (get_local $$33)
              )
              (set_local $$114
               (f32.convert_s/i32
                (get_local $$113)
               )
              )
              (set_local $$115
               (get_local $$26)
              )
              (set_local $$116
               (f32.sub
                (get_local $$114)
                (get_local $$115)
               )
              )
              (set_local $$117
               (get_local $$34)
              )
              (set_local $$118
               (i32.and
                (get_local $$117)
                (i32.const 255)
               )
              )
              (set_local $$119
               (i32.add
                (i32.const 4760)
                (i32.shl
                 (get_local $$118)
                 (i32.const 2)
                )
               )
              )
              (set_local $$120
               (f32.load
                (get_local $$119)
               )
              )
              (set_local $$121
               (i32.add
                (get_local $$58)
                (i32.const 1080)
               )
              )
              (set_local $$122
               (f32.load
                (get_local $$121)
               )
              )
              (set_local $$123
               (f32.mul
                (get_local $$120)
                (get_local $$122)
               )
              )
              (set_local $$124
               (f32.add
                (get_local $$116)
                (get_local $$123)
               )
              )
              (set_local $$37
               (get_local $$124)
              )
              (set_local $$125
               (get_local $$35)
              )
              (set_local $$126
               (get_local $$35)
              )
              (set_local $$127
               (f32.mul
                (get_local $$125)
                (get_local $$126)
               )
              )
              (set_local $$128
               (get_local $$36)
              )
              (set_local $$129
               (get_local $$36)
              )
              (set_local $$130
               (f32.mul
                (get_local $$128)
                (get_local $$129)
               )
              )
              (set_local $$131
               (f32.add
                (get_local $$127)
                (get_local $$130)
               )
              )
              (set_local $$132
               (get_local $$37)
              )
              (set_local $$133
               (get_local $$37)
              )
              (set_local $$134
               (f32.mul
                (get_local $$132)
                (get_local $$133)
               )
              )
              (set_local $$135
               (f32.add
                (get_local $$131)
                (get_local $$134)
               )
              )
              (set_local $$38
               (get_local $$135)
              )
              (set_local $$136
               (i32.add
                (get_local $$58)
                (i32.const 1076)
               )
              )
              (set_local $$137
               (i32.load
                (get_local $$136)
               )
              )
              (set_local $$39
               (get_local $$137)
              )
              (loop $while-in5
               (block $while-out4
                (set_local $$138
                 (get_local $$39)
                )
                (set_local $$139
                 (i32.gt_s
                  (get_local $$138)
                  (i32.const 0)
                 )
                )
                (if
                 (i32.eqz
                  (get_local $$139)
                 )
                 (br $while-out4)
                )
                (set_local $$140
                 (get_local $$39)
                )
                (set_local $$141
                 (i32.add
                  (get_local $$30)
                  (i32.shl
                   (get_local $$140)
                   (i32.const 2)
                  )
                 )
                )
                (set_local $$142
                 (f32.load
                  (get_local $$141)
                 )
                )
                (set_local $$143
                 (get_local $$38)
                )
                (set_local $$20
                 (get_local $$142)
                )
                (set_local $$21
                 (get_local $$143)
                )
                (set_local $$144
                 (get_local $$20)
                )
                (set_local $$145
                 (get_local $$21)
                )
                (set_local $$146
                 (call $_fminf
                  (get_local $$144)
                  (get_local $$145)
                 )
                )
                (set_local $$147
                 (get_local $$39)
                )
                (set_local $$148
                 (i32.sub
                  (get_local $$147)
                  (i32.const 1)
                 )
                )
                (set_local $$149
                 (i32.add
                  (get_local $$30)
                  (i32.shl
                   (get_local $$148)
                   (i32.const 2)
                  )
                 )
                )
                (set_local $$150
                 (f32.load
                  (get_local $$149)
                 )
                )
                (set_local $$18
                 (get_local $$146)
                )
                (set_local $$19
                 (get_local $$150)
                )
                (set_local $$151
                 (get_local $$18)
                )
                (set_local $$152
                 (get_local $$19)
                )
                (set_local $$153
                 (call $_fmaxf
                  (get_local $$151)
                  (get_local $$152)
                 )
                )
                (set_local $$154
                 (get_local $$39)
                )
                (set_local $$155
                 (i32.add
                  (get_local $$30)
                  (i32.shl
                   (get_local $$154)
                   (i32.const 2)
                  )
                 )
                )
                (f32.store
                 (get_local $$155)
                 (get_local $$153)
                )
                (set_local $$156
                 (get_local $$39)
                )
                (set_local $$157
                 (i32.add
                  (get_local $$156)
                  (i32.const -1)
                 )
                )
                (set_local $$39
                 (get_local $$157)
                )
                (br $while-in5)
               )
              )
              (set_local $$158
               (f32.load
                (get_local $$30)
               )
              )
              (set_local $$159
               (get_local $$38)
              )
              (set_local $$16
               (get_local $$158)
              )
              (set_local $$17
               (get_local $$159)
              )
              (set_local $$160
               (get_local $$16)
              )
              (set_local $$161
               (get_local $$17)
              )
              (set_local $$162
               (call $_fminf
                (get_local $$160)
                (get_local $$161)
               )
              )
              (f32.store
               (get_local $$30)
               (get_local $$162)
              )
              (set_local $$163
               (get_local $$33)
              )
              (set_local $$164
               (i32.add
                (get_local $$163)
                (i32.const 1)
               )
              )
              (set_local $$33
               (get_local $$164)
              )
              (br $while-in3)
             )
            )
            (set_local $$165
             (get_local $$32)
            )
            (set_local $$166
             (i32.add
              (get_local $$165)
              (i32.const 1)
             )
            )
            (set_local $$32
             (get_local $$166)
            )
            (br $while-in1)
           )
          )
          (set_local $$167
           (get_local $$31)
          )
          (set_local $$168
           (i32.add
            (get_local $$167)
            (i32.const 1)
           )
          )
          (set_local $$31
           (get_local $$168)
          )
          (br $while-in)
         )
        )
        (br $switch)
       )
      )
      (block
       (set_local $$169
        (get_local $$27)
       )
       (set_local $$170
        (i32.sub
         (get_local $$169)
         (i32.const 1)
        )
       )
       (set_local $$40
        (get_local $$170)
       )
       (loop $while-in7
        (block $while-out6
         (set_local $$171
          (get_local $$40)
         )
         (set_local $$172
          (get_local $$27)
         )
         (set_local $$173
          (i32.add
           (get_local $$172)
           (i32.const 1)
          )
         )
         (set_local $$174
          (i32.le_s
           (get_local $$171)
           (get_local $$173)
          )
         )
         (if
          (i32.eqz
           (get_local $$174)
          )
          (br $label$break$L1)
         )
         (set_local $$175
          (get_local $$28)
         )
         (set_local $$176
          (i32.sub
           (get_local $$175)
           (i32.const 1)
          )
         )
         (set_local $$41
          (get_local $$176)
         )
         (loop $while-in9
          (block $while-out8
           (set_local $$177
            (get_local $$41)
           )
           (set_local $$178
            (get_local $$28)
           )
           (set_local $$179
            (i32.add
             (get_local $$178)
             (i32.const 1)
            )
           )
           (set_local $$180
            (i32.le_s
             (get_local $$177)
             (get_local $$179)
            )
           )
           (if
            (i32.eqz
             (get_local $$180)
            )
            (br $while-out8)
           )
           (set_local $$181
            (get_local $$29)
           )
           (set_local $$182
            (i32.sub
             (get_local $$181)
             (i32.const 1)
            )
           )
           (set_local $$42
            (get_local $$182)
           )
           (loop $while-in11
            (block $while-out10
             (set_local $$183
              (get_local $$42)
             )
             (set_local $$184
              (get_local $$29)
             )
             (set_local $$185
              (i32.add
               (get_local $$184)
               (i32.const 1)
              )
             )
             (set_local $$186
              (i32.le_s
               (get_local $$183)
               (get_local $$185)
              )
             )
             (if
              (i32.eqz
               (get_local $$186)
              )
              (br $while-out10)
             )
             (set_local $$187
              (get_local $$40)
             )
             (set_local $$188
              (get_local $$41)
             )
             (set_local $$189
              (get_local $$42)
             )
             (set_local $$190
              (call $__ZNK9FastNoise11Index3D_256Ehiii
               (get_local $$58)
               (i32.const 0)
               (get_local $$187)
               (get_local $$188)
               (get_local $$189)
              )
             )
             (set_local $$43
              (get_local $$190)
             )
             (set_local $$191
              (get_local $$40)
             )
             (set_local $$192
              (f32.convert_s/i32
               (get_local $$191)
              )
             )
             (set_local $$193
              (get_local $$24)
             )
             (set_local $$194
              (f32.sub
               (get_local $$192)
               (get_local $$193)
              )
             )
             (set_local $$195
              (get_local $$43)
             )
             (set_local $$196
              (i32.and
               (get_local $$195)
               (i32.const 255)
              )
             )
             (set_local $$197
              (i32.add
               (i32.const 2712)
               (i32.shl
                (get_local $$196)
                (i32.const 2)
               )
              )
             )
             (set_local $$198
              (f32.load
               (get_local $$197)
              )
             )
             (set_local $$199
              (i32.add
               (get_local $$58)
               (i32.const 1080)
              )
             )
             (set_local $$200
              (f32.load
               (get_local $$199)
              )
             )
             (set_local $$201
              (f32.mul
               (get_local $$198)
               (get_local $$200)
              )
             )
             (set_local $$202
              (f32.add
               (get_local $$194)
               (get_local $$201)
              )
             )
             (set_local $$44
              (get_local $$202)
             )
             (set_local $$203
              (get_local $$41)
             )
             (set_local $$204
              (f32.convert_s/i32
               (get_local $$203)
              )
             )
             (set_local $$205
              (get_local $$25)
             )
             (set_local $$206
              (f32.sub
               (get_local $$204)
               (get_local $$205)
              )
             )
             (set_local $$207
              (get_local $$43)
             )
             (set_local $$208
              (i32.and
               (get_local $$207)
               (i32.const 255)
              )
             )
             (set_local $$209
              (i32.add
               (i32.const 3736)
               (i32.shl
                (get_local $$208)
                (i32.const 2)
               )
              )
             )
             (set_local $$210
              (f32.load
               (get_local $$209)
              )
             )
             (set_local $$211
              (i32.add
               (get_local $$58)
               (i32.const 1080)
              )
             )
             (set_local $$212
              (f32.load
               (get_local $$211)
              )
             )
             (set_local $$213
              (f32.mul
               (get_local $$210)
               (get_local $$212)
              )
             )
             (set_local $$214
              (f32.add
               (get_local $$206)
               (get_local $$213)
              )
             )
             (set_local $$45
              (get_local $$214)
             )
             (set_local $$215
              (get_local $$42)
             )
             (set_local $$216
              (f32.convert_s/i32
               (get_local $$215)
              )
             )
             (set_local $$217
              (get_local $$26)
             )
             (set_local $$218
              (f32.sub
               (get_local $$216)
               (get_local $$217)
              )
             )
             (set_local $$219
              (get_local $$43)
             )
             (set_local $$220
              (i32.and
               (get_local $$219)
               (i32.const 255)
              )
             )
             (set_local $$221
              (i32.add
               (i32.const 4760)
               (i32.shl
                (get_local $$220)
                (i32.const 2)
               )
              )
             )
             (set_local $$222
              (f32.load
               (get_local $$221)
              )
             )
             (set_local $$223
              (i32.add
               (get_local $$58)
               (i32.const 1080)
              )
             )
             (set_local $$224
              (f32.load
               (get_local $$223)
              )
             )
             (set_local $$225
              (f32.mul
               (get_local $$222)
               (get_local $$224)
              )
             )
             (set_local $$226
              (f32.add
               (get_local $$218)
               (get_local $$225)
              )
             )
             (set_local $$46
              (get_local $$226)
             )
             (set_local $$227
              (get_local $$44)
             )
             (set_local $$228
              (call $__ZL7FastAbsf
               (get_local $$227)
              )
             )
             (set_local $$229
              (get_local $$45)
             )
             (set_local $$230
              (call $__ZL7FastAbsf
               (get_local $$229)
              )
             )
             (set_local $$231
              (f32.add
               (get_local $$228)
               (get_local $$230)
              )
             )
             (set_local $$232
              (get_local $$46)
             )
             (set_local $$233
              (call $__ZL7FastAbsf
               (get_local $$232)
              )
             )
             (set_local $$234
              (f32.add
               (get_local $$231)
               (get_local $$233)
              )
             )
             (set_local $$47
              (get_local $$234)
             )
             (set_local $$235
              (i32.add
               (get_local $$58)
               (i32.const 1076)
              )
             )
             (set_local $$236
              (i32.load
               (get_local $$235)
              )
             )
             (set_local $$48
              (get_local $$236)
             )
             (loop $while-in13
              (block $while-out12
               (set_local $$237
                (get_local $$48)
               )
               (set_local $$238
                (i32.gt_s
                 (get_local $$237)
                 (i32.const 0)
                )
               )
               (if
                (i32.eqz
                 (get_local $$238)
                )
                (br $while-out12)
               )
               (set_local $$239
                (get_local $$48)
               )
               (set_local $$240
                (i32.add
                 (get_local $$30)
                 (i32.shl
                  (get_local $$239)
                  (i32.const 2)
                 )
                )
               )
               (set_local $$241
                (f32.load
                 (get_local $$240)
                )
               )
               (set_local $$242
                (get_local $$47)
               )
               (set_local $$14
                (get_local $$241)
               )
               (set_local $$15
                (get_local $$242)
               )
               (set_local $$243
                (get_local $$14)
               )
               (set_local $$244
                (get_local $$15)
               )
               (set_local $$245
                (call $_fminf
                 (get_local $$243)
                 (get_local $$244)
                )
               )
               (set_local $$246
                (get_local $$48)
               )
               (set_local $$247
                (i32.sub
                 (get_local $$246)
                 (i32.const 1)
                )
               )
               (set_local $$248
                (i32.add
                 (get_local $$30)
                 (i32.shl
                  (get_local $$247)
                  (i32.const 2)
                 )
                )
               )
               (set_local $$249
                (f32.load
                 (get_local $$248)
                )
               )
               (set_local $$12
                (get_local $$245)
               )
               (set_local $$13
                (get_local $$249)
               )
               (set_local $$250
                (get_local $$12)
               )
               (set_local $$251
                (get_local $$13)
               )
               (set_local $$252
                (call $_fmaxf
                 (get_local $$250)
                 (get_local $$251)
                )
               )
               (set_local $$253
                (get_local $$48)
               )
               (set_local $$254
                (i32.add
                 (get_local $$30)
                 (i32.shl
                  (get_local $$253)
                  (i32.const 2)
                 )
                )
               )
               (f32.store
                (get_local $$254)
                (get_local $$252)
               )
               (set_local $$255
                (get_local $$48)
               )
               (set_local $$256
                (i32.add
                 (get_local $$255)
                 (i32.const -1)
                )
               )
               (set_local $$48
                (get_local $$256)
               )
               (br $while-in13)
              )
             )
             (set_local $$257
              (f32.load
               (get_local $$30)
              )
             )
             (set_local $$258
              (get_local $$47)
             )
             (set_local $$10
              (get_local $$257)
             )
             (set_local $$11
              (get_local $$258)
             )
             (set_local $$259
              (get_local $$10)
             )
             (set_local $$260
              (get_local $$11)
             )
             (set_local $$261
              (call $_fminf
               (get_local $$259)
               (get_local $$260)
              )
             )
             (f32.store
              (get_local $$30)
              (get_local $$261)
             )
             (set_local $$262
              (get_local $$42)
             )
             (set_local $$263
              (i32.add
               (get_local $$262)
               (i32.const 1)
              )
             )
             (set_local $$42
              (get_local $$263)
             )
             (br $while-in11)
            )
           )
           (set_local $$264
            (get_local $$41)
           )
           (set_local $$265
            (i32.add
             (get_local $$264)
             (i32.const 1)
            )
           )
           (set_local $$41
            (get_local $$265)
           )
           (br $while-in9)
          )
         )
         (set_local $$266
          (get_local $$40)
         )
         (set_local $$267
          (i32.add
           (get_local $$266)
           (i32.const 1)
          )
         )
         (set_local $$40
          (get_local $$267)
         )
         (br $while-in7)
        )
       )
       (br $switch)
      )
     )
     (block
      (set_local $$268
       (get_local $$27)
      )
      (set_local $$269
       (i32.sub
        (get_local $$268)
        (i32.const 1)
       )
      )
      (set_local $$49
       (get_local $$269)
      )
      (loop $while-in16
       (block $while-out15
        (set_local $$270
         (get_local $$49)
        )
        (set_local $$271
         (get_local $$27)
        )
        (set_local $$272
         (i32.add
          (get_local $$271)
          (i32.const 1)
         )
        )
        (set_local $$273
         (i32.le_s
          (get_local $$270)
          (get_local $$272)
         )
        )
        (if
         (i32.eqz
          (get_local $$273)
         )
         (br $label$break$L1)
        )
        (set_local $$274
         (get_local $$28)
        )
        (set_local $$275
         (i32.sub
          (get_local $$274)
          (i32.const 1)
         )
        )
        (set_local $$50
         (get_local $$275)
        )
        (loop $while-in18
         (block $while-out17
          (set_local $$276
           (get_local $$50)
          )
          (set_local $$277
           (get_local $$28)
          )
          (set_local $$278
           (i32.add
            (get_local $$277)
            (i32.const 1)
           )
          )
          (set_local $$279
           (i32.le_s
            (get_local $$276)
            (get_local $$278)
           )
          )
          (if
           (i32.eqz
            (get_local $$279)
           )
           (br $while-out17)
          )
          (set_local $$280
           (get_local $$29)
          )
          (set_local $$281
           (i32.sub
            (get_local $$280)
            (i32.const 1)
           )
          )
          (set_local $$51
           (get_local $$281)
          )
          (loop $while-in20
           (block $while-out19
            (set_local $$282
             (get_local $$51)
            )
            (set_local $$283
             (get_local $$29)
            )
            (set_local $$284
             (i32.add
              (get_local $$283)
              (i32.const 1)
             )
            )
            (set_local $$285
             (i32.le_s
              (get_local $$282)
              (get_local $$284)
             )
            )
            (if
             (i32.eqz
              (get_local $$285)
             )
             (br $while-out19)
            )
            (set_local $$286
             (get_local $$49)
            )
            (set_local $$287
             (get_local $$50)
            )
            (set_local $$288
             (get_local $$51)
            )
            (set_local $$289
             (call $__ZNK9FastNoise11Index3D_256Ehiii
              (get_local $$58)
              (i32.const 0)
              (get_local $$286)
              (get_local $$287)
              (get_local $$288)
             )
            )
            (set_local $$52
             (get_local $$289)
            )
            (set_local $$290
             (get_local $$49)
            )
            (set_local $$291
             (f32.convert_s/i32
              (get_local $$290)
             )
            )
            (set_local $$292
             (get_local $$24)
            )
            (set_local $$293
             (f32.sub
              (get_local $$291)
              (get_local $$292)
             )
            )
            (set_local $$294
             (get_local $$52)
            )
            (set_local $$295
             (i32.and
              (get_local $$294)
              (i32.const 255)
             )
            )
            (set_local $$296
             (i32.add
              (i32.const 2712)
              (i32.shl
               (get_local $$295)
               (i32.const 2)
              )
             )
            )
            (set_local $$297
             (f32.load
              (get_local $$296)
             )
            )
            (set_local $$298
             (i32.add
              (get_local $$58)
              (i32.const 1080)
             )
            )
            (set_local $$299
             (f32.load
              (get_local $$298)
             )
            )
            (set_local $$300
             (f32.mul
              (get_local $$297)
              (get_local $$299)
             )
            )
            (set_local $$301
             (f32.add
              (get_local $$293)
              (get_local $$300)
             )
            )
            (set_local $$53
             (get_local $$301)
            )
            (set_local $$302
             (get_local $$50)
            )
            (set_local $$303
             (f32.convert_s/i32
              (get_local $$302)
             )
            )
            (set_local $$304
             (get_local $$25)
            )
            (set_local $$305
             (f32.sub
              (get_local $$303)
              (get_local $$304)
             )
            )
            (set_local $$306
             (get_local $$52)
            )
            (set_local $$307
             (i32.and
              (get_local $$306)
              (i32.const 255)
             )
            )
            (set_local $$308
             (i32.add
              (i32.const 3736)
              (i32.shl
               (get_local $$307)
               (i32.const 2)
              )
             )
            )
            (set_local $$309
             (f32.load
              (get_local $$308)
             )
            )
            (set_local $$310
             (i32.add
              (get_local $$58)
              (i32.const 1080)
             )
            )
            (set_local $$311
             (f32.load
              (get_local $$310)
             )
            )
            (set_local $$312
             (f32.mul
              (get_local $$309)
              (get_local $$311)
             )
            )
            (set_local $$313
             (f32.add
              (get_local $$305)
              (get_local $$312)
             )
            )
            (set_local $$54
             (get_local $$313)
            )
            (set_local $$314
             (get_local $$51)
            )
            (set_local $$315
             (f32.convert_s/i32
              (get_local $$314)
             )
            )
            (set_local $$316
             (get_local $$26)
            )
            (set_local $$317
             (f32.sub
              (get_local $$315)
              (get_local $$316)
             )
            )
            (set_local $$318
             (get_local $$52)
            )
            (set_local $$319
             (i32.and
              (get_local $$318)
              (i32.const 255)
             )
            )
            (set_local $$320
             (i32.add
              (i32.const 4760)
              (i32.shl
               (get_local $$319)
               (i32.const 2)
              )
             )
            )
            (set_local $$321
             (f32.load
              (get_local $$320)
             )
            )
            (set_local $$322
             (i32.add
              (get_local $$58)
              (i32.const 1080)
             )
            )
            (set_local $$323
             (f32.load
              (get_local $$322)
             )
            )
            (set_local $$324
             (f32.mul
              (get_local $$321)
              (get_local $$323)
             )
            )
            (set_local $$325
             (f32.add
              (get_local $$317)
              (get_local $$324)
             )
            )
            (set_local $$55
             (get_local $$325)
            )
            (set_local $$326
             (get_local $$53)
            )
            (set_local $$327
             (call $__ZL7FastAbsf
              (get_local $$326)
             )
            )
            (set_local $$328
             (get_local $$54)
            )
            (set_local $$329
             (call $__ZL7FastAbsf
              (get_local $$328)
             )
            )
            (set_local $$330
             (f32.add
              (get_local $$327)
              (get_local $$329)
             )
            )
            (set_local $$331
             (get_local $$55)
            )
            (set_local $$332
             (call $__ZL7FastAbsf
              (get_local $$331)
             )
            )
            (set_local $$333
             (f32.add
              (get_local $$330)
              (get_local $$332)
             )
            )
            (set_local $$334
             (get_local $$53)
            )
            (set_local $$335
             (get_local $$53)
            )
            (set_local $$336
             (f32.mul
              (get_local $$334)
              (get_local $$335)
             )
            )
            (set_local $$337
             (get_local $$54)
            )
            (set_local $$338
             (get_local $$54)
            )
            (set_local $$339
             (f32.mul
              (get_local $$337)
              (get_local $$338)
             )
            )
            (set_local $$340
             (f32.add
              (get_local $$336)
              (get_local $$339)
             )
            )
            (set_local $$341
             (get_local $$55)
            )
            (set_local $$342
             (get_local $$55)
            )
            (set_local $$343
             (f32.mul
              (get_local $$341)
              (get_local $$342)
             )
            )
            (set_local $$344
             (f32.add
              (get_local $$340)
              (get_local $$343)
             )
            )
            (set_local $$345
             (f32.add
              (get_local $$333)
              (get_local $$344)
             )
            )
            (set_local $$56
             (get_local $$345)
            )
            (set_local $$346
             (i32.add
              (get_local $$58)
              (i32.const 1076)
             )
            )
            (set_local $$347
             (i32.load
              (get_local $$346)
             )
            )
            (set_local $$57
             (get_local $$347)
            )
            (loop $while-in22
             (block $while-out21
              (set_local $$348
               (get_local $$57)
              )
              (set_local $$349
               (i32.gt_s
                (get_local $$348)
                (i32.const 0)
               )
              )
              (if
               (i32.eqz
                (get_local $$349)
               )
               (br $while-out21)
              )
              (set_local $$350
               (get_local $$57)
              )
              (set_local $$351
               (i32.add
                (get_local $$30)
                (i32.shl
                 (get_local $$350)
                 (i32.const 2)
                )
               )
              )
              (set_local $$352
               (f32.load
                (get_local $$351)
               )
              )
              (set_local $$353
               (get_local $$56)
              )
              (set_local $$8
               (get_local $$352)
              )
              (set_local $$9
               (get_local $$353)
              )
              (set_local $$354
               (get_local $$8)
              )
              (set_local $$355
               (get_local $$9)
              )
              (set_local $$356
               (call $_fminf
                (get_local $$354)
                (get_local $$355)
               )
              )
              (set_local $$357
               (get_local $$57)
              )
              (set_local $$358
               (i32.sub
                (get_local $$357)
                (i32.const 1)
               )
              )
              (set_local $$359
               (i32.add
                (get_local $$30)
                (i32.shl
                 (get_local $$358)
                 (i32.const 2)
                )
               )
              )
              (set_local $$360
               (f32.load
                (get_local $$359)
               )
              )
              (set_local $$6
               (get_local $$356)
              )
              (set_local $$7
               (get_local $$360)
              )
              (set_local $$361
               (get_local $$6)
              )
              (set_local $$362
               (get_local $$7)
              )
              (set_local $$363
               (call $_fmaxf
                (get_local $$361)
                (get_local $$362)
               )
              )
              (set_local $$364
               (get_local $$57)
              )
              (set_local $$365
               (i32.add
                (get_local $$30)
                (i32.shl
                 (get_local $$364)
                 (i32.const 2)
                )
               )
              )
              (f32.store
               (get_local $$365)
               (get_local $$363)
              )
              (set_local $$366
               (get_local $$57)
              )
              (set_local $$367
               (i32.add
                (get_local $$366)
                (i32.const -1)
               )
              )
              (set_local $$57
               (get_local $$367)
              )
              (br $while-in22)
             )
            )
            (set_local $$368
             (f32.load
              (get_local $$30)
             )
            )
            (set_local $$369
             (get_local $$56)
            )
            (set_local $$4
             (get_local $$368)
            )
            (set_local $$5
             (get_local $$369)
            )
            (set_local $$370
             (get_local $$4)
            )
            (set_local $$371
             (get_local $$5)
            )
            (set_local $$372
             (call $_fminf
              (get_local $$370)
              (get_local $$371)
             )
            )
            (f32.store
             (get_local $$30)
             (get_local $$372)
            )
            (set_local $$373
             (get_local $$51)
            )
            (set_local $$374
             (i32.add
              (get_local $$373)
              (i32.const 1)
             )
            )
            (set_local $$51
             (get_local $$374)
            )
            (br $while-in20)
           )
          )
          (set_local $$375
           (get_local $$50)
          )
          (set_local $$376
           (i32.add
            (get_local $$375)
            (i32.const 1)
           )
          )
          (set_local $$50
           (get_local $$376)
          )
          (br $while-in18)
         )
        )
        (set_local $$377
         (get_local $$49)
        )
        (set_local $$378
         (i32.add
          (get_local $$377)
          (i32.const 1)
         )
        )
        (set_local $$49
         (get_local $$378)
        )
        (br $while-in16)
       )
      )
      (br $switch)
     )
    )
    (nop)
   )
  )
  (set_local $$379
   (i32.add
    (get_local $$58)
    (i32.const 1064)
   )
  )
  (set_local $$380
   (i32.load
    (get_local $$379)
   )
  )
  (block $switch24
   (block $switch-default30
    (block $switch-case29
     (block $switch-case28
      (block $switch-case27
       (block $switch-case26
        (block $switch-case25
         (br_table $switch-case25 $switch-case26 $switch-case27 $switch-case28 $switch-case29 $switch-default30
          (i32.sub
           (get_local $$380)
           (i32.const 3)
          )
         )
        )
        (block
         (set_local $$381
          (i32.add
           (get_local $$58)
           (i32.const 1076)
          )
         )
         (set_local $$382
          (i32.load
           (get_local $$381)
          )
         )
         (set_local $$383
          (i32.add
           (get_local $$30)
           (i32.shl
            (get_local $$382)
            (i32.const 2)
           )
          )
         )
         (set_local $$384
          (f32.load
           (get_local $$383)
          )
         )
         (set_local $$22
          (get_local $$384)
         )
         (set_local $$421
          (get_local $$22)
         )
         (set_global $STACKTOP
          (get_local $sp)
         )
         (return
          (get_local $$421)
         )
         (br $switch24)
        )
       )
       (block
        (set_local $$385
         (i32.add
          (get_local $$58)
          (i32.const 1076)
         )
        )
        (set_local $$386
         (i32.load
          (get_local $$385)
         )
        )
        (set_local $$387
         (i32.add
          (get_local $$30)
          (i32.shl
           (get_local $$386)
           (i32.const 2)
          )
         )
        )
        (set_local $$388
         (f32.load
          (get_local $$387)
         )
        )
        (set_local $$389
         (i32.add
          (get_local $$58)
          (i32.const 1072)
         )
        )
        (set_local $$390
         (i32.load
          (get_local $$389)
         )
        )
        (set_local $$391
         (i32.add
          (get_local $$30)
          (i32.shl
           (get_local $$390)
           (i32.const 2)
          )
         )
        )
        (set_local $$392
         (f32.load
          (get_local $$391)
         )
        )
        (set_local $$393
         (f32.add
          (get_local $$388)
          (get_local $$392)
         )
        )
        (set_local $$22
         (get_local $$393)
        )
        (set_local $$421
         (get_local $$22)
        )
        (set_global $STACKTOP
         (get_local $sp)
        )
        (return
         (get_local $$421)
        )
        (br $switch24)
       )
      )
      (block
       (set_local $$394
        (i32.add
         (get_local $$58)
         (i32.const 1076)
        )
       )
       (set_local $$395
        (i32.load
         (get_local $$394)
        )
       )
       (set_local $$396
        (i32.add
         (get_local $$30)
         (i32.shl
          (get_local $$395)
          (i32.const 2)
         )
        )
       )
       (set_local $$397
        (f32.load
         (get_local $$396)
        )
       )
       (set_local $$398
        (i32.add
         (get_local $$58)
         (i32.const 1072)
        )
       )
       (set_local $$399
        (i32.load
         (get_local $$398)
        )
       )
       (set_local $$400
        (i32.add
         (get_local $$30)
         (i32.shl
          (get_local $$399)
          (i32.const 2)
         )
        )
       )
       (set_local $$401
        (f32.load
         (get_local $$400)
        )
       )
       (set_local $$402
        (f32.sub
         (get_local $$397)
         (get_local $$401)
        )
       )
       (set_local $$22
        (get_local $$402)
       )
       (set_local $$421
        (get_local $$22)
       )
       (set_global $STACKTOP
        (get_local $sp)
       )
       (return
        (get_local $$421)
       )
       (br $switch24)
      )
     )
     (block
      (set_local $$403
       (i32.add
        (get_local $$58)
        (i32.const 1076)
       )
      )
      (set_local $$404
       (i32.load
        (get_local $$403)
       )
      )
      (set_local $$405
       (i32.add
        (get_local $$30)
        (i32.shl
         (get_local $$404)
         (i32.const 2)
        )
       )
      )
      (set_local $$406
       (f32.load
        (get_local $$405)
       )
      )
      (set_local $$407
       (i32.add
        (get_local $$58)
        (i32.const 1072)
       )
      )
      (set_local $$408
       (i32.load
        (get_local $$407)
       )
      )
      (set_local $$409
       (i32.add
        (get_local $$30)
        (i32.shl
         (get_local $$408)
         (i32.const 2)
        )
       )
      )
      (set_local $$410
       (f32.load
        (get_local $$409)
       )
      )
      (set_local $$411
       (f32.mul
        (get_local $$406)
        (get_local $$410)
       )
      )
      (set_local $$22
       (get_local $$411)
      )
      (set_local $$421
       (get_local $$22)
      )
      (set_global $STACKTOP
       (get_local $sp)
      )
      (return
       (get_local $$421)
      )
      (br $switch24)
     )
    )
    (block
     (set_local $$412
      (i32.add
       (get_local $$58)
       (i32.const 1072)
      )
     )
     (set_local $$413
      (i32.load
       (get_local $$412)
      )
     )
     (set_local $$414
      (i32.add
       (get_local $$30)
       (i32.shl
        (get_local $$413)
        (i32.const 2)
       )
      )
     )
     (set_local $$415
      (f32.load
       (get_local $$414)
      )
     )
     (set_local $$416
      (i32.add
       (get_local $$58)
       (i32.const 1076)
      )
     )
     (set_local $$417
      (i32.load
       (get_local $$416)
      )
     )
     (set_local $$418
      (i32.add
       (get_local $$30)
       (i32.shl
        (get_local $$417)
        (i32.const 2)
       )
      )
     )
     (set_local $$419
      (f32.load
       (get_local $$418)
      )
     )
     (set_local $$420
      (f32.div
       (get_local $$415)
       (get_local $$419)
      )
     )
     (set_local $$22
      (get_local $$420)
     )
     (set_local $$421
      (get_local $$22)
     )
     (set_global $STACKTOP
      (get_local $sp)
     )
     (return
      (get_local $$421)
     )
     (br $switch24)
    )
   )
   (block
    (set_local $$22
     (f32.const 0)
    )
    (set_local $$421
     (get_local $$22)
    )
    (set_global $STACKTOP
     (get_local $sp)
    )
    (return
     (get_local $$421)
    )
   )
  )
  (return
   (f32.const 0)
  )
 )
 (func $__ZNK9FastNoise13GetWhiteNoiseEfff (param $$0 i32) (param $$1 f32) (param $$2 f32) (param $$3 f32) (result f32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 i32)
  (local $$14 i32)
  (local $$15 i32)
  (local $$16 i32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$19 i32)
  (local $$20 i32)
  (local $$21 i32)
  (local $$22 i32)
  (local $$23 f32)
  (local $$4 i32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$5
   (i32.add
    (get_local $sp)
    (i32.const 8)
   )
  )
  (set_local $$6
   (i32.add
    (get_local $sp)
    (i32.const 4)
   )
  )
  (set_local $$7
   (get_local $sp)
  )
  (set_local $$4
   (get_local $$0)
  )
  (f32.store
   (get_local $$5)
   (get_local $$1)
  )
  (f32.store
   (get_local $$6)
   (get_local $$2)
  )
  (f32.store
   (get_local $$7)
   (get_local $$3)
  )
  (set_local $$8
   (get_local $$4)
  )
  (set_local $$9
   (i32.add
    (get_local $$8)
    (i32.const 1024)
   )
  )
  (set_local $$10
   (i32.load
    (get_local $$9)
   )
  )
  (set_local $$11
   (i32.load
    (get_local $$5)
   )
  )
  (set_local $$12
   (i32.load
    (get_local $$5)
   )
  )
  (set_local $$13
   (i32.shr_s
    (get_local $$12)
    (i32.const 16)
   )
  )
  (set_local $$14
   (i32.xor
    (get_local $$11)
    (get_local $$13)
   )
  )
  (set_local $$15
   (i32.load
    (get_local $$6)
   )
  )
  (set_local $$16
   (i32.load
    (get_local $$6)
   )
  )
  (set_local $$17
   (i32.shr_s
    (get_local $$16)
    (i32.const 16)
   )
  )
  (set_local $$18
   (i32.xor
    (get_local $$15)
    (get_local $$17)
   )
  )
  (set_local $$19
   (i32.load
    (get_local $$7)
   )
  )
  (set_local $$20
   (i32.load
    (get_local $$7)
   )
  )
  (set_local $$21
   (i32.shr_s
    (get_local $$20)
    (i32.const 16)
   )
  )
  (set_local $$22
   (i32.xor
    (get_local $$19)
    (get_local $$21)
   )
  )
  (set_local $$23
   (call $__ZL10ValCoord3Diiii
    (get_local $$10)
    (get_local $$14)
    (get_local $$18)
    (get_local $$22)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$23)
  )
 )
 (func $__ZNK9FastNoise11SingleCubicEhfff (param $$0 i32) (param $$1 i32) (param $$2 f32) (param $$3 f32) (param $$4 f32) (result f32)
  (local $$10 i32)
  (local $$100 i32)
  (local $$101 i32)
  (local $$102 i32)
  (local $$103 f32)
  (local $$104 f32)
  (local $$105 f32)
  (local $$106 i32)
  (local $$107 i32)
  (local $$108 i32)
  (local $$109 i32)
  (local $$11 i32)
  (local $$110 f32)
  (local $$111 i32)
  (local $$112 i32)
  (local $$113 i32)
  (local $$114 i32)
  (local $$115 f32)
  (local $$116 i32)
  (local $$117 i32)
  (local $$118 i32)
  (local $$119 i32)
  (local $$12 i32)
  (local $$120 f32)
  (local $$121 i32)
  (local $$122 i32)
  (local $$123 i32)
  (local $$124 i32)
  (local $$125 f32)
  (local $$126 f32)
  (local $$127 f32)
  (local $$128 i32)
  (local $$129 i32)
  (local $$13 i32)
  (local $$130 i32)
  (local $$131 i32)
  (local $$132 f32)
  (local $$133 i32)
  (local $$134 i32)
  (local $$135 i32)
  (local $$136 i32)
  (local $$137 f32)
  (local $$138 i32)
  (local $$139 i32)
  (local $$14 i32)
  (local $$140 i32)
  (local $$141 i32)
  (local $$142 f32)
  (local $$143 i32)
  (local $$144 i32)
  (local $$145 i32)
  (local $$146 i32)
  (local $$147 f32)
  (local $$148 f32)
  (local $$149 f32)
  (local $$15 i32)
  (local $$150 f32)
  (local $$151 f32)
  (local $$152 i32)
  (local $$153 i32)
  (local $$154 i32)
  (local $$155 i32)
  (local $$156 f32)
  (local $$157 i32)
  (local $$158 i32)
  (local $$159 i32)
  (local $$16 i32)
  (local $$160 i32)
  (local $$161 f32)
  (local $$162 i32)
  (local $$163 i32)
  (local $$164 i32)
  (local $$165 i32)
  (local $$166 f32)
  (local $$167 i32)
  (local $$168 i32)
  (local $$169 i32)
  (local $$17 i32)
  (local $$170 i32)
  (local $$171 f32)
  (local $$172 f32)
  (local $$173 f32)
  (local $$174 i32)
  (local $$175 i32)
  (local $$176 i32)
  (local $$177 i32)
  (local $$178 f32)
  (local $$179 i32)
  (local $$18 i32)
  (local $$180 i32)
  (local $$181 i32)
  (local $$182 i32)
  (local $$183 f32)
  (local $$184 i32)
  (local $$185 i32)
  (local $$186 i32)
  (local $$187 i32)
  (local $$188 f32)
  (local $$189 i32)
  (local $$19 i32)
  (local $$190 i32)
  (local $$191 i32)
  (local $$192 i32)
  (local $$193 f32)
  (local $$194 f32)
  (local $$195 f32)
  (local $$196 i32)
  (local $$197 i32)
  (local $$198 i32)
  (local $$199 i32)
  (local $$20 i32)
  (local $$200 f32)
  (local $$201 i32)
  (local $$202 i32)
  (local $$203 i32)
  (local $$204 i32)
  (local $$205 f32)
  (local $$206 i32)
  (local $$207 i32)
  (local $$208 i32)
  (local $$209 i32)
  (local $$21 i32)
  (local $$210 f32)
  (local $$211 i32)
  (local $$212 i32)
  (local $$213 i32)
  (local $$214 i32)
  (local $$215 f32)
  (local $$216 f32)
  (local $$217 f32)
  (local $$218 i32)
  (local $$219 i32)
  (local $$22 f32)
  (local $$220 i32)
  (local $$221 i32)
  (local $$222 f32)
  (local $$223 i32)
  (local $$224 i32)
  (local $$225 i32)
  (local $$226 i32)
  (local $$227 f32)
  (local $$228 i32)
  (local $$229 i32)
  (local $$23 f32)
  (local $$230 i32)
  (local $$231 i32)
  (local $$232 f32)
  (local $$233 i32)
  (local $$234 i32)
  (local $$235 i32)
  (local $$236 i32)
  (local $$237 f32)
  (local $$238 f32)
  (local $$239 f32)
  (local $$24 f32)
  (local $$240 f32)
  (local $$241 f32)
  (local $$242 i32)
  (local $$243 i32)
  (local $$244 i32)
  (local $$245 i32)
  (local $$246 f32)
  (local $$247 i32)
  (local $$248 i32)
  (local $$249 i32)
  (local $$25 i32)
  (local $$250 i32)
  (local $$251 f32)
  (local $$252 i32)
  (local $$253 i32)
  (local $$254 i32)
  (local $$255 i32)
  (local $$256 f32)
  (local $$257 i32)
  (local $$258 i32)
  (local $$259 i32)
  (local $$26 f32)
  (local $$260 i32)
  (local $$261 f32)
  (local $$262 f32)
  (local $$263 f32)
  (local $$264 i32)
  (local $$265 i32)
  (local $$266 i32)
  (local $$267 i32)
  (local $$268 f32)
  (local $$269 i32)
  (local $$27 i32)
  (local $$270 i32)
  (local $$271 i32)
  (local $$272 i32)
  (local $$273 f32)
  (local $$274 i32)
  (local $$275 i32)
  (local $$276 i32)
  (local $$277 i32)
  (local $$278 f32)
  (local $$279 i32)
  (local $$28 f32)
  (local $$280 i32)
  (local $$281 i32)
  (local $$282 i32)
  (local $$283 f32)
  (local $$284 f32)
  (local $$285 f32)
  (local $$286 i32)
  (local $$287 i32)
  (local $$288 i32)
  (local $$289 i32)
  (local $$29 i32)
  (local $$290 f32)
  (local $$291 i32)
  (local $$292 i32)
  (local $$293 i32)
  (local $$294 i32)
  (local $$295 f32)
  (local $$296 i32)
  (local $$297 i32)
  (local $$298 i32)
  (local $$299 i32)
  (local $$30 f32)
  (local $$300 f32)
  (local $$301 i32)
  (local $$302 i32)
  (local $$303 i32)
  (local $$304 i32)
  (local $$305 f32)
  (local $$306 f32)
  (local $$307 f32)
  (local $$308 i32)
  (local $$309 i32)
  (local $$31 i32)
  (local $$310 i32)
  (local $$311 i32)
  (local $$312 f32)
  (local $$313 i32)
  (local $$314 i32)
  (local $$315 i32)
  (local $$316 i32)
  (local $$317 f32)
  (local $$318 i32)
  (local $$319 i32)
  (local $$32 i32)
  (local $$320 i32)
  (local $$321 i32)
  (local $$322 f32)
  (local $$323 i32)
  (local $$324 i32)
  (local $$325 i32)
  (local $$326 i32)
  (local $$327 f32)
  (local $$328 f32)
  (local $$329 f32)
  (local $$33 i32)
  (local $$330 f32)
  (local $$331 f32)
  (local $$332 i32)
  (local $$333 i32)
  (local $$334 i32)
  (local $$335 i32)
  (local $$336 f32)
  (local $$337 i32)
  (local $$338 i32)
  (local $$339 i32)
  (local $$34 i32)
  (local $$340 i32)
  (local $$341 f32)
  (local $$342 i32)
  (local $$343 i32)
  (local $$344 i32)
  (local $$345 i32)
  (local $$346 f32)
  (local $$347 i32)
  (local $$348 i32)
  (local $$349 i32)
  (local $$35 i32)
  (local $$350 i32)
  (local $$351 f32)
  (local $$352 f32)
  (local $$353 f32)
  (local $$354 i32)
  (local $$355 i32)
  (local $$356 i32)
  (local $$357 i32)
  (local $$358 f32)
  (local $$359 i32)
  (local $$36 i32)
  (local $$360 i32)
  (local $$361 i32)
  (local $$362 i32)
  (local $$363 f32)
  (local $$364 i32)
  (local $$365 i32)
  (local $$366 i32)
  (local $$367 i32)
  (local $$368 f32)
  (local $$369 i32)
  (local $$37 i32)
  (local $$370 i32)
  (local $$371 i32)
  (local $$372 i32)
  (local $$373 f32)
  (local $$374 f32)
  (local $$375 f32)
  (local $$376 i32)
  (local $$377 i32)
  (local $$378 i32)
  (local $$379 i32)
  (local $$38 i32)
  (local $$380 f32)
  (local $$381 i32)
  (local $$382 i32)
  (local $$383 i32)
  (local $$384 i32)
  (local $$385 f32)
  (local $$386 i32)
  (local $$387 i32)
  (local $$388 i32)
  (local $$389 i32)
  (local $$39 i32)
  (local $$390 f32)
  (local $$391 i32)
  (local $$392 i32)
  (local $$393 i32)
  (local $$394 i32)
  (local $$395 f32)
  (local $$396 f32)
  (local $$397 f32)
  (local $$398 i32)
  (local $$399 i32)
  (local $$40 i32)
  (local $$400 i32)
  (local $$401 i32)
  (local $$402 f32)
  (local $$403 i32)
  (local $$404 i32)
  (local $$405 i32)
  (local $$406 i32)
  (local $$407 f32)
  (local $$408 i32)
  (local $$409 i32)
  (local $$41 i32)
  (local $$410 i32)
  (local $$411 i32)
  (local $$412 f32)
  (local $$413 i32)
  (local $$414 i32)
  (local $$415 i32)
  (local $$416 i32)
  (local $$417 f32)
  (local $$418 f32)
  (local $$419 f32)
  (local $$42 i32)
  (local $$420 f32)
  (local $$421 f32)
  (local $$422 f32)
  (local $$423 f32)
  (local $$424 f32)
  (local $$43 i32)
  (local $$44 i32)
  (local $$45 i32)
  (local $$46 i32)
  (local $$47 i32)
  (local $$48 i32)
  (local $$49 i32)
  (local $$5 i32)
  (local $$50 f32)
  (local $$51 i32)
  (local $$52 f32)
  (local $$53 f32)
  (local $$54 f32)
  (local $$55 i32)
  (local $$56 f32)
  (local $$57 f32)
  (local $$58 f32)
  (local $$59 i32)
  (local $$6 i32)
  (local $$60 f32)
  (local $$61 f32)
  (local $$62 i32)
  (local $$63 i32)
  (local $$64 i32)
  (local $$65 i32)
  (local $$66 f32)
  (local $$67 i32)
  (local $$68 i32)
  (local $$69 i32)
  (local $$7 f32)
  (local $$70 i32)
  (local $$71 f32)
  (local $$72 i32)
  (local $$73 i32)
  (local $$74 i32)
  (local $$75 i32)
  (local $$76 f32)
  (local $$77 i32)
  (local $$78 i32)
  (local $$79 i32)
  (local $$8 f32)
  (local $$80 i32)
  (local $$81 f32)
  (local $$82 f32)
  (local $$83 f32)
  (local $$84 i32)
  (local $$85 i32)
  (local $$86 i32)
  (local $$87 i32)
  (local $$88 f32)
  (local $$89 i32)
  (local $$9 f32)
  (local $$90 i32)
  (local $$91 i32)
  (local $$92 i32)
  (local $$93 f32)
  (local $$94 i32)
  (local $$95 i32)
  (local $$96 i32)
  (local $$97 i32)
  (local $$98 f32)
  (local $$99 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 80)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 80)
   )
  )
  (set_local $$5
   (get_local $$0)
  )
  (set_local $$6
   (get_local $$1)
  )
  (set_local $$7
   (get_local $$2)
  )
  (set_local $$8
   (get_local $$3)
  )
  (set_local $$9
   (get_local $$4)
  )
  (set_local $$25
   (get_local $$5)
  )
  (set_local $$26
   (get_local $$7)
  )
  (set_local $$27
   (call $__ZL9FastFloorf
    (get_local $$26)
   )
  )
  (set_local $$10
   (get_local $$27)
  )
  (set_local $$28
   (get_local $$8)
  )
  (set_local $$29
   (call $__ZL9FastFloorf
    (get_local $$28)
   )
  )
  (set_local $$11
   (get_local $$29)
  )
  (set_local $$30
   (get_local $$9)
  )
  (set_local $$31
   (call $__ZL9FastFloorf
    (get_local $$30)
   )
  )
  (set_local $$12
   (get_local $$31)
  )
  (set_local $$32
   (get_local $$10)
  )
  (set_local $$33
   (i32.sub
    (get_local $$32)
    (i32.const 1)
   )
  )
  (set_local $$13
   (get_local $$33)
  )
  (set_local $$34
   (get_local $$11)
  )
  (set_local $$35
   (i32.sub
    (get_local $$34)
    (i32.const 1)
   )
  )
  (set_local $$14
   (get_local $$35)
  )
  (set_local $$36
   (get_local $$12)
  )
  (set_local $$37
   (i32.sub
    (get_local $$36)
    (i32.const 1)
   )
  )
  (set_local $$15
   (get_local $$37)
  )
  (set_local $$38
   (get_local $$10)
  )
  (set_local $$39
   (i32.add
    (get_local $$38)
    (i32.const 1)
   )
  )
  (set_local $$16
   (get_local $$39)
  )
  (set_local $$40
   (get_local $$11)
  )
  (set_local $$41
   (i32.add
    (get_local $$40)
    (i32.const 1)
   )
  )
  (set_local $$17
   (get_local $$41)
  )
  (set_local $$42
   (get_local $$12)
  )
  (set_local $$43
   (i32.add
    (get_local $$42)
    (i32.const 1)
   )
  )
  (set_local $$18
   (get_local $$43)
  )
  (set_local $$44
   (get_local $$10)
  )
  (set_local $$45
   (i32.add
    (get_local $$44)
    (i32.const 2)
   )
  )
  (set_local $$19
   (get_local $$45)
  )
  (set_local $$46
   (get_local $$11)
  )
  (set_local $$47
   (i32.add
    (get_local $$46)
    (i32.const 2)
   )
  )
  (set_local $$20
   (get_local $$47)
  )
  (set_local $$48
   (get_local $$12)
  )
  (set_local $$49
   (i32.add
    (get_local $$48)
    (i32.const 2)
   )
  )
  (set_local $$21
   (get_local $$49)
  )
  (set_local $$50
   (get_local $$7)
  )
  (set_local $$51
   (get_local $$10)
  )
  (set_local $$52
   (f32.convert_s/i32
    (get_local $$51)
   )
  )
  (set_local $$53
   (f32.sub
    (get_local $$50)
    (get_local $$52)
   )
  )
  (set_local $$22
   (get_local $$53)
  )
  (set_local $$54
   (get_local $$8)
  )
  (set_local $$55
   (get_local $$11)
  )
  (set_local $$56
   (f32.convert_s/i32
    (get_local $$55)
   )
  )
  (set_local $$57
   (f32.sub
    (get_local $$54)
    (get_local $$56)
   )
  )
  (set_local $$23
   (get_local $$57)
  )
  (set_local $$58
   (get_local $$9)
  )
  (set_local $$59
   (get_local $$12)
  )
  (set_local $$60
   (f32.convert_s/i32
    (get_local $$59)
   )
  )
  (set_local $$61
   (f32.sub
    (get_local $$58)
    (get_local $$60)
   )
  )
  (set_local $$24
   (get_local $$61)
  )
  (set_local $$62
   (get_local $$6)
  )
  (set_local $$63
   (get_local $$13)
  )
  (set_local $$64
   (get_local $$14)
  )
  (set_local $$65
   (get_local $$15)
  )
  (set_local $$66
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$62)
    (get_local $$63)
    (get_local $$64)
    (get_local $$65)
   )
  )
  (set_local $$67
   (get_local $$6)
  )
  (set_local $$68
   (get_local $$10)
  )
  (set_local $$69
   (get_local $$14)
  )
  (set_local $$70
   (get_local $$15)
  )
  (set_local $$71
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$67)
    (get_local $$68)
    (get_local $$69)
    (get_local $$70)
   )
  )
  (set_local $$72
   (get_local $$6)
  )
  (set_local $$73
   (get_local $$16)
  )
  (set_local $$74
   (get_local $$14)
  )
  (set_local $$75
   (get_local $$15)
  )
  (set_local $$76
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$72)
    (get_local $$73)
    (get_local $$74)
    (get_local $$75)
   )
  )
  (set_local $$77
   (get_local $$6)
  )
  (set_local $$78
   (get_local $$19)
  )
  (set_local $$79
   (get_local $$14)
  )
  (set_local $$80
   (get_local $$15)
  )
  (set_local $$81
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$77)
    (get_local $$78)
    (get_local $$79)
    (get_local $$80)
   )
  )
  (set_local $$82
   (get_local $$22)
  )
  (set_local $$83
   (call $__ZL9CubicLerpfffff
    (get_local $$66)
    (get_local $$71)
    (get_local $$76)
    (get_local $$81)
    (get_local $$82)
   )
  )
  (set_local $$84
   (get_local $$6)
  )
  (set_local $$85
   (get_local $$13)
  )
  (set_local $$86
   (get_local $$11)
  )
  (set_local $$87
   (get_local $$15)
  )
  (set_local $$88
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$84)
    (get_local $$85)
    (get_local $$86)
    (get_local $$87)
   )
  )
  (set_local $$89
   (get_local $$6)
  )
  (set_local $$90
   (get_local $$10)
  )
  (set_local $$91
   (get_local $$11)
  )
  (set_local $$92
   (get_local $$15)
  )
  (set_local $$93
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$89)
    (get_local $$90)
    (get_local $$91)
    (get_local $$92)
   )
  )
  (set_local $$94
   (get_local $$6)
  )
  (set_local $$95
   (get_local $$16)
  )
  (set_local $$96
   (get_local $$11)
  )
  (set_local $$97
   (get_local $$15)
  )
  (set_local $$98
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$94)
    (get_local $$95)
    (get_local $$96)
    (get_local $$97)
   )
  )
  (set_local $$99
   (get_local $$6)
  )
  (set_local $$100
   (get_local $$19)
  )
  (set_local $$101
   (get_local $$11)
  )
  (set_local $$102
   (get_local $$15)
  )
  (set_local $$103
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$99)
    (get_local $$100)
    (get_local $$101)
    (get_local $$102)
   )
  )
  (set_local $$104
   (get_local $$22)
  )
  (set_local $$105
   (call $__ZL9CubicLerpfffff
    (get_local $$88)
    (get_local $$93)
    (get_local $$98)
    (get_local $$103)
    (get_local $$104)
   )
  )
  (set_local $$106
   (get_local $$6)
  )
  (set_local $$107
   (get_local $$13)
  )
  (set_local $$108
   (get_local $$17)
  )
  (set_local $$109
   (get_local $$15)
  )
  (set_local $$110
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$106)
    (get_local $$107)
    (get_local $$108)
    (get_local $$109)
   )
  )
  (set_local $$111
   (get_local $$6)
  )
  (set_local $$112
   (get_local $$10)
  )
  (set_local $$113
   (get_local $$17)
  )
  (set_local $$114
   (get_local $$15)
  )
  (set_local $$115
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$111)
    (get_local $$112)
    (get_local $$113)
    (get_local $$114)
   )
  )
  (set_local $$116
   (get_local $$6)
  )
  (set_local $$117
   (get_local $$16)
  )
  (set_local $$118
   (get_local $$17)
  )
  (set_local $$119
   (get_local $$15)
  )
  (set_local $$120
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$116)
    (get_local $$117)
    (get_local $$118)
    (get_local $$119)
   )
  )
  (set_local $$121
   (get_local $$6)
  )
  (set_local $$122
   (get_local $$19)
  )
  (set_local $$123
   (get_local $$17)
  )
  (set_local $$124
   (get_local $$15)
  )
  (set_local $$125
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$121)
    (get_local $$122)
    (get_local $$123)
    (get_local $$124)
   )
  )
  (set_local $$126
   (get_local $$22)
  )
  (set_local $$127
   (call $__ZL9CubicLerpfffff
    (get_local $$110)
    (get_local $$115)
    (get_local $$120)
    (get_local $$125)
    (get_local $$126)
   )
  )
  (set_local $$128
   (get_local $$6)
  )
  (set_local $$129
   (get_local $$13)
  )
  (set_local $$130
   (get_local $$20)
  )
  (set_local $$131
   (get_local $$15)
  )
  (set_local $$132
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$128)
    (get_local $$129)
    (get_local $$130)
    (get_local $$131)
   )
  )
  (set_local $$133
   (get_local $$6)
  )
  (set_local $$134
   (get_local $$10)
  )
  (set_local $$135
   (get_local $$20)
  )
  (set_local $$136
   (get_local $$15)
  )
  (set_local $$137
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$133)
    (get_local $$134)
    (get_local $$135)
    (get_local $$136)
   )
  )
  (set_local $$138
   (get_local $$6)
  )
  (set_local $$139
   (get_local $$16)
  )
  (set_local $$140
   (get_local $$20)
  )
  (set_local $$141
   (get_local $$15)
  )
  (set_local $$142
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$138)
    (get_local $$139)
    (get_local $$140)
    (get_local $$141)
   )
  )
  (set_local $$143
   (get_local $$6)
  )
  (set_local $$144
   (get_local $$19)
  )
  (set_local $$145
   (get_local $$20)
  )
  (set_local $$146
   (get_local $$15)
  )
  (set_local $$147
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$143)
    (get_local $$144)
    (get_local $$145)
    (get_local $$146)
   )
  )
  (set_local $$148
   (get_local $$22)
  )
  (set_local $$149
   (call $__ZL9CubicLerpfffff
    (get_local $$132)
    (get_local $$137)
    (get_local $$142)
    (get_local $$147)
    (get_local $$148)
   )
  )
  (set_local $$150
   (get_local $$23)
  )
  (set_local $$151
   (call $__ZL9CubicLerpfffff
    (get_local $$83)
    (get_local $$105)
    (get_local $$127)
    (get_local $$149)
    (get_local $$150)
   )
  )
  (set_local $$152
   (get_local $$6)
  )
  (set_local $$153
   (get_local $$13)
  )
  (set_local $$154
   (get_local $$14)
  )
  (set_local $$155
   (get_local $$12)
  )
  (set_local $$156
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$152)
    (get_local $$153)
    (get_local $$154)
    (get_local $$155)
   )
  )
  (set_local $$157
   (get_local $$6)
  )
  (set_local $$158
   (get_local $$10)
  )
  (set_local $$159
   (get_local $$14)
  )
  (set_local $$160
   (get_local $$12)
  )
  (set_local $$161
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$157)
    (get_local $$158)
    (get_local $$159)
    (get_local $$160)
   )
  )
  (set_local $$162
   (get_local $$6)
  )
  (set_local $$163
   (get_local $$16)
  )
  (set_local $$164
   (get_local $$14)
  )
  (set_local $$165
   (get_local $$12)
  )
  (set_local $$166
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$162)
    (get_local $$163)
    (get_local $$164)
    (get_local $$165)
   )
  )
  (set_local $$167
   (get_local $$6)
  )
  (set_local $$168
   (get_local $$19)
  )
  (set_local $$169
   (get_local $$14)
  )
  (set_local $$170
   (get_local $$12)
  )
  (set_local $$171
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$167)
    (get_local $$168)
    (get_local $$169)
    (get_local $$170)
   )
  )
  (set_local $$172
   (get_local $$22)
  )
  (set_local $$173
   (call $__ZL9CubicLerpfffff
    (get_local $$156)
    (get_local $$161)
    (get_local $$166)
    (get_local $$171)
    (get_local $$172)
   )
  )
  (set_local $$174
   (get_local $$6)
  )
  (set_local $$175
   (get_local $$13)
  )
  (set_local $$176
   (get_local $$11)
  )
  (set_local $$177
   (get_local $$12)
  )
  (set_local $$178
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$174)
    (get_local $$175)
    (get_local $$176)
    (get_local $$177)
   )
  )
  (set_local $$179
   (get_local $$6)
  )
  (set_local $$180
   (get_local $$10)
  )
  (set_local $$181
   (get_local $$11)
  )
  (set_local $$182
   (get_local $$12)
  )
  (set_local $$183
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$179)
    (get_local $$180)
    (get_local $$181)
    (get_local $$182)
   )
  )
  (set_local $$184
   (get_local $$6)
  )
  (set_local $$185
   (get_local $$16)
  )
  (set_local $$186
   (get_local $$11)
  )
  (set_local $$187
   (get_local $$12)
  )
  (set_local $$188
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$184)
    (get_local $$185)
    (get_local $$186)
    (get_local $$187)
   )
  )
  (set_local $$189
   (get_local $$6)
  )
  (set_local $$190
   (get_local $$19)
  )
  (set_local $$191
   (get_local $$11)
  )
  (set_local $$192
   (get_local $$12)
  )
  (set_local $$193
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$189)
    (get_local $$190)
    (get_local $$191)
    (get_local $$192)
   )
  )
  (set_local $$194
   (get_local $$22)
  )
  (set_local $$195
   (call $__ZL9CubicLerpfffff
    (get_local $$178)
    (get_local $$183)
    (get_local $$188)
    (get_local $$193)
    (get_local $$194)
   )
  )
  (set_local $$196
   (get_local $$6)
  )
  (set_local $$197
   (get_local $$13)
  )
  (set_local $$198
   (get_local $$17)
  )
  (set_local $$199
   (get_local $$12)
  )
  (set_local $$200
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$196)
    (get_local $$197)
    (get_local $$198)
    (get_local $$199)
   )
  )
  (set_local $$201
   (get_local $$6)
  )
  (set_local $$202
   (get_local $$10)
  )
  (set_local $$203
   (get_local $$17)
  )
  (set_local $$204
   (get_local $$12)
  )
  (set_local $$205
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$201)
    (get_local $$202)
    (get_local $$203)
    (get_local $$204)
   )
  )
  (set_local $$206
   (get_local $$6)
  )
  (set_local $$207
   (get_local $$16)
  )
  (set_local $$208
   (get_local $$17)
  )
  (set_local $$209
   (get_local $$12)
  )
  (set_local $$210
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$206)
    (get_local $$207)
    (get_local $$208)
    (get_local $$209)
   )
  )
  (set_local $$211
   (get_local $$6)
  )
  (set_local $$212
   (get_local $$19)
  )
  (set_local $$213
   (get_local $$17)
  )
  (set_local $$214
   (get_local $$12)
  )
  (set_local $$215
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$211)
    (get_local $$212)
    (get_local $$213)
    (get_local $$214)
   )
  )
  (set_local $$216
   (get_local $$22)
  )
  (set_local $$217
   (call $__ZL9CubicLerpfffff
    (get_local $$200)
    (get_local $$205)
    (get_local $$210)
    (get_local $$215)
    (get_local $$216)
   )
  )
  (set_local $$218
   (get_local $$6)
  )
  (set_local $$219
   (get_local $$13)
  )
  (set_local $$220
   (get_local $$20)
  )
  (set_local $$221
   (get_local $$12)
  )
  (set_local $$222
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$218)
    (get_local $$219)
    (get_local $$220)
    (get_local $$221)
   )
  )
  (set_local $$223
   (get_local $$6)
  )
  (set_local $$224
   (get_local $$10)
  )
  (set_local $$225
   (get_local $$20)
  )
  (set_local $$226
   (get_local $$12)
  )
  (set_local $$227
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$223)
    (get_local $$224)
    (get_local $$225)
    (get_local $$226)
   )
  )
  (set_local $$228
   (get_local $$6)
  )
  (set_local $$229
   (get_local $$16)
  )
  (set_local $$230
   (get_local $$20)
  )
  (set_local $$231
   (get_local $$12)
  )
  (set_local $$232
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$228)
    (get_local $$229)
    (get_local $$230)
    (get_local $$231)
   )
  )
  (set_local $$233
   (get_local $$6)
  )
  (set_local $$234
   (get_local $$19)
  )
  (set_local $$235
   (get_local $$20)
  )
  (set_local $$236
   (get_local $$12)
  )
  (set_local $$237
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$233)
    (get_local $$234)
    (get_local $$235)
    (get_local $$236)
   )
  )
  (set_local $$238
   (get_local $$22)
  )
  (set_local $$239
   (call $__ZL9CubicLerpfffff
    (get_local $$222)
    (get_local $$227)
    (get_local $$232)
    (get_local $$237)
    (get_local $$238)
   )
  )
  (set_local $$240
   (get_local $$23)
  )
  (set_local $$241
   (call $__ZL9CubicLerpfffff
    (get_local $$173)
    (get_local $$195)
    (get_local $$217)
    (get_local $$239)
    (get_local $$240)
   )
  )
  (set_local $$242
   (get_local $$6)
  )
  (set_local $$243
   (get_local $$13)
  )
  (set_local $$244
   (get_local $$14)
  )
  (set_local $$245
   (get_local $$18)
  )
  (set_local $$246
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$242)
    (get_local $$243)
    (get_local $$244)
    (get_local $$245)
   )
  )
  (set_local $$247
   (get_local $$6)
  )
  (set_local $$248
   (get_local $$10)
  )
  (set_local $$249
   (get_local $$14)
  )
  (set_local $$250
   (get_local $$18)
  )
  (set_local $$251
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$247)
    (get_local $$248)
    (get_local $$249)
    (get_local $$250)
   )
  )
  (set_local $$252
   (get_local $$6)
  )
  (set_local $$253
   (get_local $$16)
  )
  (set_local $$254
   (get_local $$14)
  )
  (set_local $$255
   (get_local $$18)
  )
  (set_local $$256
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$252)
    (get_local $$253)
    (get_local $$254)
    (get_local $$255)
   )
  )
  (set_local $$257
   (get_local $$6)
  )
  (set_local $$258
   (get_local $$19)
  )
  (set_local $$259
   (get_local $$14)
  )
  (set_local $$260
   (get_local $$18)
  )
  (set_local $$261
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$257)
    (get_local $$258)
    (get_local $$259)
    (get_local $$260)
   )
  )
  (set_local $$262
   (get_local $$22)
  )
  (set_local $$263
   (call $__ZL9CubicLerpfffff
    (get_local $$246)
    (get_local $$251)
    (get_local $$256)
    (get_local $$261)
    (get_local $$262)
   )
  )
  (set_local $$264
   (get_local $$6)
  )
  (set_local $$265
   (get_local $$13)
  )
  (set_local $$266
   (get_local $$11)
  )
  (set_local $$267
   (get_local $$18)
  )
  (set_local $$268
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$264)
    (get_local $$265)
    (get_local $$266)
    (get_local $$267)
   )
  )
  (set_local $$269
   (get_local $$6)
  )
  (set_local $$270
   (get_local $$10)
  )
  (set_local $$271
   (get_local $$11)
  )
  (set_local $$272
   (get_local $$18)
  )
  (set_local $$273
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$269)
    (get_local $$270)
    (get_local $$271)
    (get_local $$272)
   )
  )
  (set_local $$274
   (get_local $$6)
  )
  (set_local $$275
   (get_local $$16)
  )
  (set_local $$276
   (get_local $$11)
  )
  (set_local $$277
   (get_local $$18)
  )
  (set_local $$278
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$274)
    (get_local $$275)
    (get_local $$276)
    (get_local $$277)
   )
  )
  (set_local $$279
   (get_local $$6)
  )
  (set_local $$280
   (get_local $$19)
  )
  (set_local $$281
   (get_local $$11)
  )
  (set_local $$282
   (get_local $$18)
  )
  (set_local $$283
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$279)
    (get_local $$280)
    (get_local $$281)
    (get_local $$282)
   )
  )
  (set_local $$284
   (get_local $$22)
  )
  (set_local $$285
   (call $__ZL9CubicLerpfffff
    (get_local $$268)
    (get_local $$273)
    (get_local $$278)
    (get_local $$283)
    (get_local $$284)
   )
  )
  (set_local $$286
   (get_local $$6)
  )
  (set_local $$287
   (get_local $$13)
  )
  (set_local $$288
   (get_local $$17)
  )
  (set_local $$289
   (get_local $$18)
  )
  (set_local $$290
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$286)
    (get_local $$287)
    (get_local $$288)
    (get_local $$289)
   )
  )
  (set_local $$291
   (get_local $$6)
  )
  (set_local $$292
   (get_local $$10)
  )
  (set_local $$293
   (get_local $$17)
  )
  (set_local $$294
   (get_local $$18)
  )
  (set_local $$295
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$291)
    (get_local $$292)
    (get_local $$293)
    (get_local $$294)
   )
  )
  (set_local $$296
   (get_local $$6)
  )
  (set_local $$297
   (get_local $$16)
  )
  (set_local $$298
   (get_local $$17)
  )
  (set_local $$299
   (get_local $$18)
  )
  (set_local $$300
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$296)
    (get_local $$297)
    (get_local $$298)
    (get_local $$299)
   )
  )
  (set_local $$301
   (get_local $$6)
  )
  (set_local $$302
   (get_local $$19)
  )
  (set_local $$303
   (get_local $$17)
  )
  (set_local $$304
   (get_local $$18)
  )
  (set_local $$305
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$301)
    (get_local $$302)
    (get_local $$303)
    (get_local $$304)
   )
  )
  (set_local $$306
   (get_local $$22)
  )
  (set_local $$307
   (call $__ZL9CubicLerpfffff
    (get_local $$290)
    (get_local $$295)
    (get_local $$300)
    (get_local $$305)
    (get_local $$306)
   )
  )
  (set_local $$308
   (get_local $$6)
  )
  (set_local $$309
   (get_local $$13)
  )
  (set_local $$310
   (get_local $$20)
  )
  (set_local $$311
   (get_local $$18)
  )
  (set_local $$312
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$308)
    (get_local $$309)
    (get_local $$310)
    (get_local $$311)
   )
  )
  (set_local $$313
   (get_local $$6)
  )
  (set_local $$314
   (get_local $$10)
  )
  (set_local $$315
   (get_local $$20)
  )
  (set_local $$316
   (get_local $$18)
  )
  (set_local $$317
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$313)
    (get_local $$314)
    (get_local $$315)
    (get_local $$316)
   )
  )
  (set_local $$318
   (get_local $$6)
  )
  (set_local $$319
   (get_local $$16)
  )
  (set_local $$320
   (get_local $$20)
  )
  (set_local $$321
   (get_local $$18)
  )
  (set_local $$322
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$318)
    (get_local $$319)
    (get_local $$320)
    (get_local $$321)
   )
  )
  (set_local $$323
   (get_local $$6)
  )
  (set_local $$324
   (get_local $$19)
  )
  (set_local $$325
   (get_local $$20)
  )
  (set_local $$326
   (get_local $$18)
  )
  (set_local $$327
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$323)
    (get_local $$324)
    (get_local $$325)
    (get_local $$326)
   )
  )
  (set_local $$328
   (get_local $$22)
  )
  (set_local $$329
   (call $__ZL9CubicLerpfffff
    (get_local $$312)
    (get_local $$317)
    (get_local $$322)
    (get_local $$327)
    (get_local $$328)
   )
  )
  (set_local $$330
   (get_local $$23)
  )
  (set_local $$331
   (call $__ZL9CubicLerpfffff
    (get_local $$263)
    (get_local $$285)
    (get_local $$307)
    (get_local $$329)
    (get_local $$330)
   )
  )
  (set_local $$332
   (get_local $$6)
  )
  (set_local $$333
   (get_local $$13)
  )
  (set_local $$334
   (get_local $$14)
  )
  (set_local $$335
   (get_local $$21)
  )
  (set_local $$336
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$332)
    (get_local $$333)
    (get_local $$334)
    (get_local $$335)
   )
  )
  (set_local $$337
   (get_local $$6)
  )
  (set_local $$338
   (get_local $$10)
  )
  (set_local $$339
   (get_local $$14)
  )
  (set_local $$340
   (get_local $$21)
  )
  (set_local $$341
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$337)
    (get_local $$338)
    (get_local $$339)
    (get_local $$340)
   )
  )
  (set_local $$342
   (get_local $$6)
  )
  (set_local $$343
   (get_local $$16)
  )
  (set_local $$344
   (get_local $$14)
  )
  (set_local $$345
   (get_local $$21)
  )
  (set_local $$346
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$342)
    (get_local $$343)
    (get_local $$344)
    (get_local $$345)
   )
  )
  (set_local $$347
   (get_local $$6)
  )
  (set_local $$348
   (get_local $$19)
  )
  (set_local $$349
   (get_local $$14)
  )
  (set_local $$350
   (get_local $$21)
  )
  (set_local $$351
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$347)
    (get_local $$348)
    (get_local $$349)
    (get_local $$350)
   )
  )
  (set_local $$352
   (get_local $$22)
  )
  (set_local $$353
   (call $__ZL9CubicLerpfffff
    (get_local $$336)
    (get_local $$341)
    (get_local $$346)
    (get_local $$351)
    (get_local $$352)
   )
  )
  (set_local $$354
   (get_local $$6)
  )
  (set_local $$355
   (get_local $$13)
  )
  (set_local $$356
   (get_local $$11)
  )
  (set_local $$357
   (get_local $$21)
  )
  (set_local $$358
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$354)
    (get_local $$355)
    (get_local $$356)
    (get_local $$357)
   )
  )
  (set_local $$359
   (get_local $$6)
  )
  (set_local $$360
   (get_local $$10)
  )
  (set_local $$361
   (get_local $$11)
  )
  (set_local $$362
   (get_local $$21)
  )
  (set_local $$363
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$359)
    (get_local $$360)
    (get_local $$361)
    (get_local $$362)
   )
  )
  (set_local $$364
   (get_local $$6)
  )
  (set_local $$365
   (get_local $$16)
  )
  (set_local $$366
   (get_local $$11)
  )
  (set_local $$367
   (get_local $$21)
  )
  (set_local $$368
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$364)
    (get_local $$365)
    (get_local $$366)
    (get_local $$367)
   )
  )
  (set_local $$369
   (get_local $$6)
  )
  (set_local $$370
   (get_local $$19)
  )
  (set_local $$371
   (get_local $$11)
  )
  (set_local $$372
   (get_local $$21)
  )
  (set_local $$373
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$369)
    (get_local $$370)
    (get_local $$371)
    (get_local $$372)
   )
  )
  (set_local $$374
   (get_local $$22)
  )
  (set_local $$375
   (call $__ZL9CubicLerpfffff
    (get_local $$358)
    (get_local $$363)
    (get_local $$368)
    (get_local $$373)
    (get_local $$374)
   )
  )
  (set_local $$376
   (get_local $$6)
  )
  (set_local $$377
   (get_local $$13)
  )
  (set_local $$378
   (get_local $$17)
  )
  (set_local $$379
   (get_local $$21)
  )
  (set_local $$380
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$376)
    (get_local $$377)
    (get_local $$378)
    (get_local $$379)
   )
  )
  (set_local $$381
   (get_local $$6)
  )
  (set_local $$382
   (get_local $$10)
  )
  (set_local $$383
   (get_local $$17)
  )
  (set_local $$384
   (get_local $$21)
  )
  (set_local $$385
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$381)
    (get_local $$382)
    (get_local $$383)
    (get_local $$384)
   )
  )
  (set_local $$386
   (get_local $$6)
  )
  (set_local $$387
   (get_local $$16)
  )
  (set_local $$388
   (get_local $$17)
  )
  (set_local $$389
   (get_local $$21)
  )
  (set_local $$390
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$386)
    (get_local $$387)
    (get_local $$388)
    (get_local $$389)
   )
  )
  (set_local $$391
   (get_local $$6)
  )
  (set_local $$392
   (get_local $$19)
  )
  (set_local $$393
   (get_local $$17)
  )
  (set_local $$394
   (get_local $$21)
  )
  (set_local $$395
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$391)
    (get_local $$392)
    (get_local $$393)
    (get_local $$394)
   )
  )
  (set_local $$396
   (get_local $$22)
  )
  (set_local $$397
   (call $__ZL9CubicLerpfffff
    (get_local $$380)
    (get_local $$385)
    (get_local $$390)
    (get_local $$395)
    (get_local $$396)
   )
  )
  (set_local $$398
   (get_local $$6)
  )
  (set_local $$399
   (get_local $$13)
  )
  (set_local $$400
   (get_local $$20)
  )
  (set_local $$401
   (get_local $$21)
  )
  (set_local $$402
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$398)
    (get_local $$399)
    (get_local $$400)
    (get_local $$401)
   )
  )
  (set_local $$403
   (get_local $$6)
  )
  (set_local $$404
   (get_local $$10)
  )
  (set_local $$405
   (get_local $$20)
  )
  (set_local $$406
   (get_local $$21)
  )
  (set_local $$407
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$403)
    (get_local $$404)
    (get_local $$405)
    (get_local $$406)
   )
  )
  (set_local $$408
   (get_local $$6)
  )
  (set_local $$409
   (get_local $$16)
  )
  (set_local $$410
   (get_local $$20)
  )
  (set_local $$411
   (get_local $$21)
  )
  (set_local $$412
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$408)
    (get_local $$409)
    (get_local $$410)
    (get_local $$411)
   )
  )
  (set_local $$413
   (get_local $$6)
  )
  (set_local $$414
   (get_local $$19)
  )
  (set_local $$415
   (get_local $$20)
  )
  (set_local $$416
   (get_local $$21)
  )
  (set_local $$417
   (call $__ZNK9FastNoise14ValCoord3DFastEhiii
    (get_local $$25)
    (get_local $$413)
    (get_local $$414)
    (get_local $$415)
    (get_local $$416)
   )
  )
  (set_local $$418
   (get_local $$22)
  )
  (set_local $$419
   (call $__ZL9CubicLerpfffff
    (get_local $$402)
    (get_local $$407)
    (get_local $$412)
    (get_local $$417)
    (get_local $$418)
   )
  )
  (set_local $$420
   (get_local $$23)
  )
  (set_local $$421
   (call $__ZL9CubicLerpfffff
    (get_local $$353)
    (get_local $$375)
    (get_local $$397)
    (get_local $$419)
    (get_local $$420)
   )
  )
  (set_local $$422
   (get_local $$24)
  )
  (set_local $$423
   (call $__ZL9CubicLerpfffff
    (get_local $$151)
    (get_local $$241)
    (get_local $$331)
    (get_local $$421)
    (get_local $$422)
   )
  )
  (set_local $$424
   (f32.mul
    (get_local $$423)
    (f32.const 0.29629629850387573)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$424)
  )
 )
 (func $__ZNK9FastNoise21SingleCubicFractalFBMEfff (param $$0 i32) (param $$1 f32) (param $$2 f32) (param $$3 f32) (result f32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 f32)
  (local $$14 f32)
  (local $$15 f32)
  (local $$16 f32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$19 i32)
  (local $$20 i32)
  (local $$21 i32)
  (local $$22 i32)
  (local $$23 f32)
  (local $$24 f32)
  (local $$25 f32)
  (local $$26 i32)
  (local $$27 f32)
  (local $$28 f32)
  (local $$29 f32)
  (local $$30 i32)
  (local $$31 f32)
  (local $$32 f32)
  (local $$33 f32)
  (local $$34 i32)
  (local $$35 f32)
  (local $$36 f32)
  (local $$37 f32)
  (local $$38 i32)
  (local $$39 i32)
  (local $$4 i32)
  (local $$40 i32)
  (local $$41 f32)
  (local $$42 f32)
  (local $$43 f32)
  (local $$44 f32)
  (local $$45 f32)
  (local $$46 f32)
  (local $$47 f32)
  (local $$48 f32)
  (local $$49 f32)
  (local $$5 f32)
  (local $$50 i32)
  (local $$51 f32)
  (local $$52 f32)
  (local $$6 f32)
  (local $$7 f32)
  (local $$8 f32)
  (local $$9 f32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 32)
   )
  )
  (set_local $$4
   (get_local $$0)
  )
  (set_local $$5
   (get_local $$1)
  )
  (set_local $$6
   (get_local $$2)
  )
  (set_local $$7
   (get_local $$3)
  )
  (set_local $$11
   (get_local $$4)
  )
  (set_local $$12
   (i32.load8_s
    (get_local $$11)
   )
  )
  (set_local $$13
   (get_local $$5)
  )
  (set_local $$14
   (get_local $$6)
  )
  (set_local $$15
   (get_local $$7)
  )
  (set_local $$16
   (call $__ZNK9FastNoise11SingleCubicEhfff
    (get_local $$11)
    (get_local $$12)
    (get_local $$13)
    (get_local $$14)
    (get_local $$15)
   )
  )
  (set_local $$8
   (get_local $$16)
  )
  (set_local $$9
   (f32.const 1)
  )
  (set_local $$10
   (i32.const 0)
  )
  (loop $while-in
   (block $while-out
    (set_local $$17
     (get_local $$10)
    )
    (set_local $$18
     (i32.add
      (get_local $$17)
      (i32.const 1)
     )
    )
    (set_local $$10
     (get_local $$18)
    )
    (set_local $$19
     (i32.add
      (get_local $$11)
      (i32.const 1040)
     )
    )
    (set_local $$20
     (i32.load
      (get_local $$19)
     )
    )
    (set_local $$21
     (i32.lt_s
      (get_local $$18)
      (get_local $$20)
     )
    )
    (if
     (i32.eqz
      (get_local $$21)
     )
     (br $while-out)
    )
    (set_local $$22
     (i32.add
      (get_local $$11)
      (i32.const 1044)
     )
    )
    (set_local $$23
     (f32.load
      (get_local $$22)
     )
    )
    (set_local $$24
     (get_local $$5)
    )
    (set_local $$25
     (f32.mul
      (get_local $$24)
      (get_local $$23)
     )
    )
    (set_local $$5
     (get_local $$25)
    )
    (set_local $$26
     (i32.add
      (get_local $$11)
      (i32.const 1044)
     )
    )
    (set_local $$27
     (f32.load
      (get_local $$26)
     )
    )
    (set_local $$28
     (get_local $$6)
    )
    (set_local $$29
     (f32.mul
      (get_local $$28)
      (get_local $$27)
     )
    )
    (set_local $$6
     (get_local $$29)
    )
    (set_local $$30
     (i32.add
      (get_local $$11)
      (i32.const 1044)
     )
    )
    (set_local $$31
     (f32.load
      (get_local $$30)
     )
    )
    (set_local $$32
     (get_local $$7)
    )
    (set_local $$33
     (f32.mul
      (get_local $$32)
      (get_local $$31)
     )
    )
    (set_local $$7
     (get_local $$33)
    )
    (set_local $$34
     (i32.add
      (get_local $$11)
      (i32.const 1048)
     )
    )
    (set_local $$35
     (f32.load
      (get_local $$34)
     )
    )
    (set_local $$36
     (get_local $$9)
    )
    (set_local $$37
     (f32.mul
      (get_local $$36)
      (get_local $$35)
     )
    )
    (set_local $$9
     (get_local $$37)
    )
    (set_local $$38
     (get_local $$10)
    )
    (set_local $$39
     (i32.add
      (get_local $$11)
      (get_local $$38)
     )
    )
    (set_local $$40
     (i32.load8_s
      (get_local $$39)
     )
    )
    (set_local $$41
     (get_local $$5)
    )
    (set_local $$42
     (get_local $$6)
    )
    (set_local $$43
     (get_local $$7)
    )
    (set_local $$44
     (call $__ZNK9FastNoise11SingleCubicEhfff
      (get_local $$11)
      (get_local $$40)
      (get_local $$41)
      (get_local $$42)
      (get_local $$43)
     )
    )
    (set_local $$45
     (get_local $$9)
    )
    (set_local $$46
     (f32.mul
      (get_local $$44)
      (get_local $$45)
     )
    )
    (set_local $$47
     (get_local $$8)
    )
    (set_local $$48
     (f32.add
      (get_local $$47)
      (get_local $$46)
     )
    )
    (set_local $$8
     (get_local $$48)
    )
    (br $while-in)
   )
  )
  (set_local $$49
   (get_local $$8)
  )
  (set_local $$50
   (i32.add
    (get_local $$11)
    (i32.const 1056)
   )
  )
  (set_local $$51
   (f32.load
    (get_local $$50)
   )
  )
  (set_local $$52
   (f32.mul
    (get_local $$49)
    (get_local $$51)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$52)
  )
 )
 (func $__ZNK9FastNoise24SingleCubicFractalBillowEfff (param $$0 i32) (param $$1 f32) (param $$2 f32) (param $$3 f32) (result f32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 f32)
  (local $$14 f32)
  (local $$15 f32)
  (local $$16 f32)
  (local $$17 f32)
  (local $$18 f32)
  (local $$19 f32)
  (local $$20 i32)
  (local $$21 i32)
  (local $$22 i32)
  (local $$23 i32)
  (local $$24 i32)
  (local $$25 i32)
  (local $$26 f32)
  (local $$27 f32)
  (local $$28 f32)
  (local $$29 i32)
  (local $$30 f32)
  (local $$31 f32)
  (local $$32 f32)
  (local $$33 i32)
  (local $$34 f32)
  (local $$35 f32)
  (local $$36 f32)
  (local $$37 i32)
  (local $$38 f32)
  (local $$39 f32)
  (local $$4 i32)
  (local $$40 f32)
  (local $$41 i32)
  (local $$42 i32)
  (local $$43 i32)
  (local $$44 f32)
  (local $$45 f32)
  (local $$46 f32)
  (local $$47 f32)
  (local $$48 f32)
  (local $$49 f32)
  (local $$5 f32)
  (local $$50 f32)
  (local $$51 f32)
  (local $$52 f32)
  (local $$53 f32)
  (local $$54 f32)
  (local $$55 f32)
  (local $$56 i32)
  (local $$57 f32)
  (local $$58 f32)
  (local $$6 f32)
  (local $$7 f32)
  (local $$8 f32)
  (local $$9 f32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 32)
   )
  )
  (set_local $$4
   (get_local $$0)
  )
  (set_local $$5
   (get_local $$1)
  )
  (set_local $$6
   (get_local $$2)
  )
  (set_local $$7
   (get_local $$3)
  )
  (set_local $$11
   (get_local $$4)
  )
  (set_local $$12
   (i32.load8_s
    (get_local $$11)
   )
  )
  (set_local $$13
   (get_local $$5)
  )
  (set_local $$14
   (get_local $$6)
  )
  (set_local $$15
   (get_local $$7)
  )
  (set_local $$16
   (call $__ZNK9FastNoise11SingleCubicEhfff
    (get_local $$11)
    (get_local $$12)
    (get_local $$13)
    (get_local $$14)
    (get_local $$15)
   )
  )
  (set_local $$17
   (call $__ZL7FastAbsf
    (get_local $$16)
   )
  )
  (set_local $$18
   (f32.mul
    (get_local $$17)
    (f32.const 2)
   )
  )
  (set_local $$19
   (f32.sub
    (get_local $$18)
    (f32.const 1)
   )
  )
  (set_local $$8
   (get_local $$19)
  )
  (set_local $$9
   (f32.const 1)
  )
  (set_local $$10
   (i32.const 0)
  )
  (loop $while-in
   (block $while-out
    (set_local $$20
     (get_local $$10)
    )
    (set_local $$21
     (i32.add
      (get_local $$20)
      (i32.const 1)
     )
    )
    (set_local $$10
     (get_local $$21)
    )
    (set_local $$22
     (i32.add
      (get_local $$11)
      (i32.const 1040)
     )
    )
    (set_local $$23
     (i32.load
      (get_local $$22)
     )
    )
    (set_local $$24
     (i32.lt_s
      (get_local $$21)
      (get_local $$23)
     )
    )
    (if
     (i32.eqz
      (get_local $$24)
     )
     (br $while-out)
    )
    (set_local $$25
     (i32.add
      (get_local $$11)
      (i32.const 1044)
     )
    )
    (set_local $$26
     (f32.load
      (get_local $$25)
     )
    )
    (set_local $$27
     (get_local $$5)
    )
    (set_local $$28
     (f32.mul
      (get_local $$27)
      (get_local $$26)
     )
    )
    (set_local $$5
     (get_local $$28)
    )
    (set_local $$29
     (i32.add
      (get_local $$11)
      (i32.const 1044)
     )
    )
    (set_local $$30
     (f32.load
      (get_local $$29)
     )
    )
    (set_local $$31
     (get_local $$6)
    )
    (set_local $$32
     (f32.mul
      (get_local $$31)
      (get_local $$30)
     )
    )
    (set_local $$6
     (get_local $$32)
    )
    (set_local $$33
     (i32.add
      (get_local $$11)
      (i32.const 1044)
     )
    )
    (set_local $$34
     (f32.load
      (get_local $$33)
     )
    )
    (set_local $$35
     (get_local $$7)
    )
    (set_local $$36
     (f32.mul
      (get_local $$35)
      (get_local $$34)
     )
    )
    (set_local $$7
     (get_local $$36)
    )
    (set_local $$37
     (i32.add
      (get_local $$11)
      (i32.const 1048)
     )
    )
    (set_local $$38
     (f32.load
      (get_local $$37)
     )
    )
    (set_local $$39
     (get_local $$9)
    )
    (set_local $$40
     (f32.mul
      (get_local $$39)
      (get_local $$38)
     )
    )
    (set_local $$9
     (get_local $$40)
    )
    (set_local $$41
     (get_local $$10)
    )
    (set_local $$42
     (i32.add
      (get_local $$11)
      (get_local $$41)
     )
    )
    (set_local $$43
     (i32.load8_s
      (get_local $$42)
     )
    )
    (set_local $$44
     (get_local $$5)
    )
    (set_local $$45
     (get_local $$6)
    )
    (set_local $$46
     (get_local $$7)
    )
    (set_local $$47
     (call $__ZNK9FastNoise11SingleCubicEhfff
      (get_local $$11)
      (get_local $$43)
      (get_local $$44)
      (get_local $$45)
      (get_local $$46)
     )
    )
    (set_local $$48
     (call $__ZL7FastAbsf
      (get_local $$47)
     )
    )
    (set_local $$49
     (f32.mul
      (get_local $$48)
      (f32.const 2)
     )
    )
    (set_local $$50
     (f32.sub
      (get_local $$49)
      (f32.const 1)
     )
    )
    (set_local $$51
     (get_local $$9)
    )
    (set_local $$52
     (f32.mul
      (get_local $$50)
      (get_local $$51)
     )
    )
    (set_local $$53
     (get_local $$8)
    )
    (set_local $$54
     (f32.add
      (get_local $$53)
      (get_local $$52)
     )
    )
    (set_local $$8
     (get_local $$54)
    )
    (br $while-in)
   )
  )
  (set_local $$55
   (get_local $$8)
  )
  (set_local $$56
   (i32.add
    (get_local $$11)
    (i32.const 1056)
   )
  )
  (set_local $$57
   (f32.load
    (get_local $$56)
   )
  )
  (set_local $$58
   (f32.mul
    (get_local $$55)
    (get_local $$57)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$58)
  )
 )
 (func $__ZNK9FastNoise28SingleCubicFractalRigidMultiEfff (param $$0 i32) (param $$1 f32) (param $$2 f32) (param $$3 f32) (result f32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 f32)
  (local $$14 f32)
  (local $$15 f32)
  (local $$16 f32)
  (local $$17 f32)
  (local $$18 f32)
  (local $$19 i32)
  (local $$20 i32)
  (local $$21 i32)
  (local $$22 i32)
  (local $$23 i32)
  (local $$24 i32)
  (local $$25 f32)
  (local $$26 f32)
  (local $$27 f32)
  (local $$28 i32)
  (local $$29 f32)
  (local $$30 f32)
  (local $$31 f32)
  (local $$32 i32)
  (local $$33 f32)
  (local $$34 f32)
  (local $$35 f32)
  (local $$36 i32)
  (local $$37 f32)
  (local $$38 f32)
  (local $$39 f32)
  (local $$4 i32)
  (local $$40 i32)
  (local $$41 i32)
  (local $$42 i32)
  (local $$43 f32)
  (local $$44 f32)
  (local $$45 f32)
  (local $$46 f32)
  (local $$47 f32)
  (local $$48 f32)
  (local $$49 f32)
  (local $$5 f32)
  (local $$50 f32)
  (local $$51 f32)
  (local $$52 f32)
  (local $$53 f32)
  (local $$6 f32)
  (local $$7 f32)
  (local $$8 f32)
  (local $$9 f32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 32)
   )
  )
  (set_local $$4
   (get_local $$0)
  )
  (set_local $$5
   (get_local $$1)
  )
  (set_local $$6
   (get_local $$2)
  )
  (set_local $$7
   (get_local $$3)
  )
  (set_local $$11
   (get_local $$4)
  )
  (set_local $$12
   (i32.load8_s
    (get_local $$11)
   )
  )
  (set_local $$13
   (get_local $$5)
  )
  (set_local $$14
   (get_local $$6)
  )
  (set_local $$15
   (get_local $$7)
  )
  (set_local $$16
   (call $__ZNK9FastNoise11SingleCubicEhfff
    (get_local $$11)
    (get_local $$12)
    (get_local $$13)
    (get_local $$14)
    (get_local $$15)
   )
  )
  (set_local $$17
   (call $__ZL7FastAbsf
    (get_local $$16)
   )
  )
  (set_local $$18
   (f32.sub
    (f32.const 1)
    (get_local $$17)
   )
  )
  (set_local $$8
   (get_local $$18)
  )
  (set_local $$9
   (f32.const 1)
  )
  (set_local $$10
   (i32.const 0)
  )
  (loop $while-in
   (block $while-out
    (set_local $$19
     (get_local $$10)
    )
    (set_local $$20
     (i32.add
      (get_local $$19)
      (i32.const 1)
     )
    )
    (set_local $$10
     (get_local $$20)
    )
    (set_local $$21
     (i32.add
      (get_local $$11)
      (i32.const 1040)
     )
    )
    (set_local $$22
     (i32.load
      (get_local $$21)
     )
    )
    (set_local $$23
     (i32.lt_s
      (get_local $$20)
      (get_local $$22)
     )
    )
    (if
     (i32.eqz
      (get_local $$23)
     )
     (br $while-out)
    )
    (set_local $$24
     (i32.add
      (get_local $$11)
      (i32.const 1044)
     )
    )
    (set_local $$25
     (f32.load
      (get_local $$24)
     )
    )
    (set_local $$26
     (get_local $$5)
    )
    (set_local $$27
     (f32.mul
      (get_local $$26)
      (get_local $$25)
     )
    )
    (set_local $$5
     (get_local $$27)
    )
    (set_local $$28
     (i32.add
      (get_local $$11)
      (i32.const 1044)
     )
    )
    (set_local $$29
     (f32.load
      (get_local $$28)
     )
    )
    (set_local $$30
     (get_local $$6)
    )
    (set_local $$31
     (f32.mul
      (get_local $$30)
      (get_local $$29)
     )
    )
    (set_local $$6
     (get_local $$31)
    )
    (set_local $$32
     (i32.add
      (get_local $$11)
      (i32.const 1044)
     )
    )
    (set_local $$33
     (f32.load
      (get_local $$32)
     )
    )
    (set_local $$34
     (get_local $$7)
    )
    (set_local $$35
     (f32.mul
      (get_local $$34)
      (get_local $$33)
     )
    )
    (set_local $$7
     (get_local $$35)
    )
    (set_local $$36
     (i32.add
      (get_local $$11)
      (i32.const 1048)
     )
    )
    (set_local $$37
     (f32.load
      (get_local $$36)
     )
    )
    (set_local $$38
     (get_local $$9)
    )
    (set_local $$39
     (f32.mul
      (get_local $$38)
      (get_local $$37)
     )
    )
    (set_local $$9
     (get_local $$39)
    )
    (set_local $$40
     (get_local $$10)
    )
    (set_local $$41
     (i32.add
      (get_local $$11)
      (get_local $$40)
     )
    )
    (set_local $$42
     (i32.load8_s
      (get_local $$41)
     )
    )
    (set_local $$43
     (get_local $$5)
    )
    (set_local $$44
     (get_local $$6)
    )
    (set_local $$45
     (get_local $$7)
    )
    (set_local $$46
     (call $__ZNK9FastNoise11SingleCubicEhfff
      (get_local $$11)
      (get_local $$42)
      (get_local $$43)
      (get_local $$44)
      (get_local $$45)
     )
    )
    (set_local $$47
     (call $__ZL7FastAbsf
      (get_local $$46)
     )
    )
    (set_local $$48
     (f32.sub
      (f32.const 1)
      (get_local $$47)
     )
    )
    (set_local $$49
     (get_local $$9)
    )
    (set_local $$50
     (f32.mul
      (get_local $$48)
      (get_local $$49)
     )
    )
    (set_local $$51
     (get_local $$8)
    )
    (set_local $$52
     (f32.sub
      (get_local $$51)
      (get_local $$50)
     )
    )
    (set_local $$8
     (get_local $$52)
    )
    (br $while-in)
   )
  )
  (set_local $$53
   (get_local $$8)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$53)
  )
 )
 (func $__ZL7FastAbsf (param $$0 f32) (result f32)
  (local $$1 f32)
  (local $$2 f32)
  (local $$3 f32)
  (local $$4 f32)
  (local $$5 f32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$2
   (get_local $$0)
  )
  (set_local $$3
   (get_local $$2)
  )
  (set_local $$1
   (get_local $$3)
  )
  (set_local $$4
   (get_local $$1)
  )
  (set_local $$5
   (f32.abs
    (get_local $$4)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$5)
  )
 )
 (func $__ZL9FastFloorf (param $$0 f32) (result i32)
  (local $$1 f32)
  (local $$2 f32)
  (local $$3 i32)
  (local $$4 f32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (get_local $$1)
  )
  (set_local $$3
   (f32.ge
    (get_local $$2)
    (f32.const 0)
   )
  )
  (set_local $$4
   (get_local $$1)
  )
  (set_local $$5
   (call $f64-to-int
    (f64.promote/f32
     (get_local $$4)
    )
   )
  )
  (set_local $$6
   (i32.sub
    (get_local $$5)
    (i32.const 1)
   )
  )
  (set_local $$7
   (if (result i32)
    (get_local $$3)
    (get_local $$5)
    (get_local $$6)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$7)
  )
 )
 (func $__ZNK9FastNoise14ValCoord3DFastEhiii (param $$0 i32) (param $$1 i32) (param $$2 i32) (param $$3 i32) (param $$4 i32) (result f32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 i32)
  (local $$14 i32)
  (local $$15 i32)
  (local $$16 i32)
  (local $$17 i32)
  (local $$18 f32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 32)
   )
  )
  (set_local $$5
   (get_local $$0)
  )
  (set_local $$6
   (get_local $$1)
  )
  (set_local $$7
   (get_local $$2)
  )
  (set_local $$8
   (get_local $$3)
  )
  (set_local $$9
   (get_local $$4)
  )
  (set_local $$10
   (get_local $$5)
  )
  (set_local $$11
   (get_local $$6)
  )
  (set_local $$12
   (get_local $$7)
  )
  (set_local $$13
   (get_local $$8)
  )
  (set_local $$14
   (get_local $$9)
  )
  (set_local $$15
   (call $__ZNK9FastNoise11Index3D_256Ehiii
    (get_local $$10)
    (get_local $$11)
    (get_local $$12)
    (get_local $$13)
    (get_local $$14)
   )
  )
  (set_local $$16
   (i32.and
    (get_local $$15)
    (i32.const 255)
   )
  )
  (set_local $$17
   (i32.add
    (i32.const 1688)
    (i32.shl
     (get_local $$16)
     (i32.const 2)
    )
   )
  )
  (set_local $$18
   (f32.load
    (get_local $$17)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$18)
  )
 )
 (func $__ZL9CubicLerpfffff (param $$0 f32) (param $$1 f32) (param $$2 f32) (param $$3 f32) (param $$4 f32) (result f32)
  (local $$10 f32)
  (local $$11 f32)
  (local $$12 f32)
  (local $$13 f32)
  (local $$14 f32)
  (local $$15 f32)
  (local $$16 f32)
  (local $$17 f32)
  (local $$18 f32)
  (local $$19 f32)
  (local $$20 f32)
  (local $$21 f32)
  (local $$22 f32)
  (local $$23 f32)
  (local $$24 f32)
  (local $$25 f32)
  (local $$26 f32)
  (local $$27 f32)
  (local $$28 f32)
  (local $$29 f32)
  (local $$30 f32)
  (local $$31 f32)
  (local $$32 f32)
  (local $$33 f32)
  (local $$34 f32)
  (local $$35 f32)
  (local $$36 f32)
  (local $$37 f32)
  (local $$38 f32)
  (local $$39 f32)
  (local $$40 f32)
  (local $$41 f32)
  (local $$42 f32)
  (local $$5 f32)
  (local $$6 f32)
  (local $$7 f32)
  (local $$8 f32)
  (local $$9 f32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 32)
   )
  )
  (set_local $$5
   (get_local $$0)
  )
  (set_local $$6
   (get_local $$1)
  )
  (set_local $$7
   (get_local $$2)
  )
  (set_local $$8
   (get_local $$3)
  )
  (set_local $$9
   (get_local $$4)
  )
  (set_local $$11
   (get_local $$8)
  )
  (set_local $$12
   (get_local $$7)
  )
  (set_local $$13
   (f32.sub
    (get_local $$11)
    (get_local $$12)
   )
  )
  (set_local $$14
   (get_local $$5)
  )
  (set_local $$15
   (get_local $$6)
  )
  (set_local $$16
   (f32.sub
    (get_local $$14)
    (get_local $$15)
   )
  )
  (set_local $$17
   (f32.sub
    (get_local $$13)
    (get_local $$16)
   )
  )
  (set_local $$10
   (get_local $$17)
  )
  (set_local $$18
   (get_local $$9)
  )
  (set_local $$19
   (get_local $$9)
  )
  (set_local $$20
   (f32.mul
    (get_local $$18)
    (get_local $$19)
   )
  )
  (set_local $$21
   (get_local $$9)
  )
  (set_local $$22
   (f32.mul
    (get_local $$20)
    (get_local $$21)
   )
  )
  (set_local $$23
   (get_local $$10)
  )
  (set_local $$24
   (f32.mul
    (get_local $$22)
    (get_local $$23)
   )
  )
  (set_local $$25
   (get_local $$9)
  )
  (set_local $$26
   (get_local $$9)
  )
  (set_local $$27
   (f32.mul
    (get_local $$25)
    (get_local $$26)
   )
  )
  (set_local $$28
   (get_local $$5)
  )
  (set_local $$29
   (get_local $$6)
  )
  (set_local $$30
   (f32.sub
    (get_local $$28)
    (get_local $$29)
   )
  )
  (set_local $$31
   (get_local $$10)
  )
  (set_local $$32
   (f32.sub
    (get_local $$30)
    (get_local $$31)
   )
  )
  (set_local $$33
   (f32.mul
    (get_local $$27)
    (get_local $$32)
   )
  )
  (set_local $$34
   (f32.add
    (get_local $$24)
    (get_local $$33)
   )
  )
  (set_local $$35
   (get_local $$9)
  )
  (set_local $$36
   (get_local $$7)
  )
  (set_local $$37
   (get_local $$5)
  )
  (set_local $$38
   (f32.sub
    (get_local $$36)
    (get_local $$37)
   )
  )
  (set_local $$39
   (f32.mul
    (get_local $$35)
    (get_local $$38)
   )
  )
  (set_local $$40
   (f32.add
    (get_local $$34)
    (get_local $$39)
   )
  )
  (set_local $$41
   (get_local $$6)
  )
  (set_local $$42
   (f32.add
    (get_local $$40)
    (get_local $$41)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$42)
  )
 )
 (func $__ZNK9FastNoise11Index3D_256Ehiii (param $$0 i32) (param $$1 i32) (param $$2 i32) (param $$3 i32) (param $$4 i32) (result i32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 i32)
  (local $$14 i32)
  (local $$15 i32)
  (local $$16 i32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$19 i32)
  (local $$20 i32)
  (local $$21 i32)
  (local $$22 i32)
  (local $$23 i32)
  (local $$24 i32)
  (local $$25 i32)
  (local $$26 i32)
  (local $$27 i32)
  (local $$28 i32)
  (local $$29 i32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 32)
   )
  )
  (set_local $$5
   (get_local $$0)
  )
  (set_local $$6
   (get_local $$1)
  )
  (set_local $$7
   (get_local $$2)
  )
  (set_local $$8
   (get_local $$3)
  )
  (set_local $$9
   (get_local $$4)
  )
  (set_local $$10
   (get_local $$5)
  )
  (set_local $$11
   (get_local $$7)
  )
  (set_local $$12
   (i32.and
    (get_local $$11)
    (i32.const 255)
   )
  )
  (set_local $$13
   (get_local $$8)
  )
  (set_local $$14
   (i32.and
    (get_local $$13)
    (i32.const 255)
   )
  )
  (set_local $$15
   (get_local $$9)
  )
  (set_local $$16
   (i32.and
    (get_local $$15)
    (i32.const 255)
   )
  )
  (set_local $$17
   (get_local $$6)
  )
  (set_local $$18
   (i32.and
    (get_local $$17)
    (i32.const 255)
   )
  )
  (set_local $$19
   (i32.add
    (get_local $$16)
    (get_local $$18)
   )
  )
  (set_local $$20
   (i32.add
    (get_local $$10)
    (get_local $$19)
   )
  )
  (set_local $$21
   (i32.load8_s
    (get_local $$20)
   )
  )
  (set_local $$22
   (i32.and
    (get_local $$21)
    (i32.const 255)
   )
  )
  (set_local $$23
   (i32.add
    (get_local $$14)
    (get_local $$22)
   )
  )
  (set_local $$24
   (i32.add
    (get_local $$10)
    (get_local $$23)
   )
  )
  (set_local $$25
   (i32.load8_s
    (get_local $$24)
   )
  )
  (set_local $$26
   (i32.and
    (get_local $$25)
    (i32.const 255)
   )
  )
  (set_local $$27
   (i32.add
    (get_local $$12)
    (get_local $$26)
   )
  )
  (set_local $$28
   (i32.add
    (get_local $$10)
    (get_local $$27)
   )
  )
  (set_local $$29
   (i32.load8_s
    (get_local $$28)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$29)
  )
 )
 (func $__ZL10ValCoord3Diiii (param $$0 i32) (param $$1 i32) (param $$2 i32) (param $$3 i32) (result f32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 i32)
  (local $$14 i32)
  (local $$15 i32)
  (local $$16 i32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$19 i32)
  (local $$20 i32)
  (local $$21 i32)
  (local $$22 i32)
  (local $$23 i32)
  (local $$24 i32)
  (local $$25 i32)
  (local $$26 i32)
  (local $$27 i32)
  (local $$28 f32)
  (local $$29 f32)
  (local $$4 i32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 32)
   )
  )
  (set_local $$4
   (get_local $$0)
  )
  (set_local $$5
   (get_local $$1)
  )
  (set_local $$6
   (get_local $$2)
  )
  (set_local $$7
   (get_local $$3)
  )
  (set_local $$9
   (get_local $$4)
  )
  (set_local $$8
   (get_local $$9)
  )
  (set_local $$10
   (get_local $$5)
  )
  (set_local $$11
   (i32.mul
    (get_local $$10)
    (i32.const 1619)
   )
  )
  (set_local $$12
   (get_local $$8)
  )
  (set_local $$13
   (i32.xor
    (get_local $$12)
    (get_local $$11)
   )
  )
  (set_local $$8
   (get_local $$13)
  )
  (set_local $$14
   (get_local $$6)
  )
  (set_local $$15
   (i32.mul
    (get_local $$14)
    (i32.const 31337)
   )
  )
  (set_local $$16
   (get_local $$8)
  )
  (set_local $$17
   (i32.xor
    (get_local $$16)
    (get_local $$15)
   )
  )
  (set_local $$8
   (get_local $$17)
  )
  (set_local $$18
   (get_local $$7)
  )
  (set_local $$19
   (i32.mul
    (get_local $$18)
    (i32.const 6971)
   )
  )
  (set_local $$20
   (get_local $$8)
  )
  (set_local $$21
   (i32.xor
    (get_local $$20)
    (get_local $$19)
   )
  )
  (set_local $$8
   (get_local $$21)
  )
  (set_local $$22
   (get_local $$8)
  )
  (set_local $$23
   (get_local $$8)
  )
  (set_local $$24
   (i32.mul
    (get_local $$22)
    (get_local $$23)
   )
  )
  (set_local $$25
   (get_local $$8)
  )
  (set_local $$26
   (i32.mul
    (get_local $$24)
    (get_local $$25)
   )
  )
  (set_local $$27
   (i32.mul
    (get_local $$26)
    (i32.const 60493)
   )
  )
  (set_local $$28
   (f32.convert_s/i32
    (get_local $$27)
   )
  )
  (set_local $$29
   (f32.div
    (get_local $$28)
    (f32.const 2147483648)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$29)
  )
 )
 (func $__ZL9FastRoundf (param $$0 f32) (result i32)
  (local $$$sink f32)
  (local $$1 f32)
  (local $$2 f32)
  (local $$3 i32)
  (local $$4 f32)
  (local $$5 f32)
  (local $$6 f32)
  (local $$7 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (get_local $$1)
  )
  (set_local $$3
   (f32.ge
    (get_local $$2)
    (f32.const 0)
   )
  )
  (set_local $$4
   (get_local $$1)
  )
  (set_local $$5
   (f32.add
    (get_local $$4)
    (f32.const 0.5)
   )
  )
  (set_local $$6
   (f32.sub
    (get_local $$4)
    (f32.const 0.5)
   )
  )
  (set_local $$$sink
   (if (result f32)
    (get_local $$3)
    (get_local $$5)
    (get_local $$6)
   )
  )
  (set_local $$7
   (call $f64-to-int
    (f64.promote/f32
     (get_local $$$sink)
    )
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$7)
  )
 )
 (func $__ZNK9FastNoise11GradCoord3DEhiiifff (param $$0 i32) (param $$1 i32) (param $$2 i32) (param $$3 i32) (param $$4 i32) (param $$5 f32) (param $$6 f32) (param $$7 f32) (result f32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 f32)
  (local $$14 f32)
  (local $$15 f32)
  (local $$16 i32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$19 i32)
  (local $$20 i32)
  (local $$21 i32)
  (local $$22 i32)
  (local $$23 f32)
  (local $$24 i32)
  (local $$25 i32)
  (local $$26 i32)
  (local $$27 f32)
  (local $$28 f32)
  (local $$29 f32)
  (local $$30 i32)
  (local $$31 i32)
  (local $$32 i32)
  (local $$33 f32)
  (local $$34 f32)
  (local $$35 f32)
  (local $$36 f32)
  (local $$37 i32)
  (local $$38 i32)
  (local $$39 i32)
  (local $$40 f32)
  (local $$41 f32)
  (local $$42 f32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 32)
   )
  )
  (set_local $$8
   (get_local $$0)
  )
  (set_local $$9
   (get_local $$1)
  )
  (set_local $$10
   (get_local $$2)
  )
  (set_local $$11
   (get_local $$3)
  )
  (set_local $$12
   (get_local $$4)
  )
  (set_local $$13
   (get_local $$5)
  )
  (set_local $$14
   (get_local $$6)
  )
  (set_local $$15
   (get_local $$7)
  )
  (set_local $$17
   (get_local $$8)
  )
  (set_local $$18
   (get_local $$9)
  )
  (set_local $$19
   (get_local $$10)
  )
  (set_local $$20
   (get_local $$11)
  )
  (set_local $$21
   (get_local $$12)
  )
  (set_local $$22
   (call $__ZNK9FastNoise10Index3D_12Ehiii
    (get_local $$17)
    (get_local $$18)
    (get_local $$19)
    (get_local $$20)
    (get_local $$21)
   )
  )
  (set_local $$16
   (get_local $$22)
  )
  (set_local $$23
   (get_local $$13)
  )
  (set_local $$24
   (get_local $$16)
  )
  (set_local $$25
   (i32.and
    (get_local $$24)
    (i32.const 255)
   )
  )
  (set_local $$26
   (i32.add
    (i32.const 5784)
    (i32.shl
     (get_local $$25)
     (i32.const 2)
    )
   )
  )
  (set_local $$27
   (f32.load
    (get_local $$26)
   )
  )
  (set_local $$28
   (f32.mul
    (get_local $$23)
    (get_local $$27)
   )
  )
  (set_local $$29
   (get_local $$14)
  )
  (set_local $$30
   (get_local $$16)
  )
  (set_local $$31
   (i32.and
    (get_local $$30)
    (i32.const 255)
   )
  )
  (set_local $$32
   (i32.add
    (i32.const 5832)
    (i32.shl
     (get_local $$31)
     (i32.const 2)
    )
   )
  )
  (set_local $$33
   (f32.load
    (get_local $$32)
   )
  )
  (set_local $$34
   (f32.mul
    (get_local $$29)
    (get_local $$33)
   )
  )
  (set_local $$35
   (f32.add
    (get_local $$28)
    (get_local $$34)
   )
  )
  (set_local $$36
   (get_local $$15)
  )
  (set_local $$37
   (get_local $$16)
  )
  (set_local $$38
   (i32.and
    (get_local $$37)
    (i32.const 255)
   )
  )
  (set_local $$39
   (i32.add
    (i32.const 5880)
    (i32.shl
     (get_local $$38)
     (i32.const 2)
    )
   )
  )
  (set_local $$40
   (f32.load
    (get_local $$39)
   )
  )
  (set_local $$41
   (f32.mul
    (get_local $$36)
    (get_local $$40)
   )
  )
  (set_local $$42
   (f32.add
    (get_local $$35)
    (get_local $$41)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$42)
  )
 )
 (func $__ZNK9FastNoise10Index3D_12Ehiii (param $$0 i32) (param $$1 i32) (param $$2 i32) (param $$3 i32) (param $$4 i32) (result i32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 i32)
  (local $$14 i32)
  (local $$15 i32)
  (local $$16 i32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$19 i32)
  (local $$20 i32)
  (local $$21 i32)
  (local $$22 i32)
  (local $$23 i32)
  (local $$24 i32)
  (local $$25 i32)
  (local $$26 i32)
  (local $$27 i32)
  (local $$28 i32)
  (local $$29 i32)
  (local $$30 i32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 32)
   )
  )
  (set_local $$5
   (get_local $$0)
  )
  (set_local $$6
   (get_local $$1)
  )
  (set_local $$7
   (get_local $$2)
  )
  (set_local $$8
   (get_local $$3)
  )
  (set_local $$9
   (get_local $$4)
  )
  (set_local $$10
   (get_local $$5)
  )
  (set_local $$11
   (get_local $$7)
  )
  (set_local $$12
   (i32.and
    (get_local $$11)
    (i32.const 255)
   )
  )
  (set_local $$13
   (get_local $$8)
  )
  (set_local $$14
   (i32.and
    (get_local $$13)
    (i32.const 255)
   )
  )
  (set_local $$15
   (get_local $$9)
  )
  (set_local $$16
   (i32.and
    (get_local $$15)
    (i32.const 255)
   )
  )
  (set_local $$17
   (get_local $$6)
  )
  (set_local $$18
   (i32.and
    (get_local $$17)
    (i32.const 255)
   )
  )
  (set_local $$19
   (i32.add
    (get_local $$16)
    (get_local $$18)
   )
  )
  (set_local $$20
   (i32.add
    (get_local $$10)
    (get_local $$19)
   )
  )
  (set_local $$21
   (i32.load8_s
    (get_local $$20)
   )
  )
  (set_local $$22
   (i32.and
    (get_local $$21)
    (i32.const 255)
   )
  )
  (set_local $$23
   (i32.add
    (get_local $$14)
    (get_local $$22)
   )
  )
  (set_local $$24
   (i32.add
    (get_local $$10)
    (get_local $$23)
   )
  )
  (set_local $$25
   (i32.load8_s
    (get_local $$24)
   )
  )
  (set_local $$26
   (i32.and
    (get_local $$25)
    (i32.const 255)
   )
  )
  (set_local $$27
   (i32.add
    (get_local $$12)
    (get_local $$26)
   )
  )
  (set_local $$28
   (i32.add
    (get_local $$10)
    (i32.const 512)
   )
  )
  (set_local $$29
   (i32.add
    (get_local $$28)
    (get_local $$27)
   )
  )
  (set_local $$30
   (i32.load8_s
    (get_local $$29)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$30)
  )
 )
 (func $__ZL17InterpHermiteFuncf (param $$0 f32) (result f32)
  (local $$1 f32)
  (local $$2 f32)
  (local $$3 f32)
  (local $$4 f32)
  (local $$5 f32)
  (local $$6 f32)
  (local $$7 f32)
  (local $$8 f32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (get_local $$1)
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$4
   (f32.mul
    (get_local $$2)
    (get_local $$3)
   )
  )
  (set_local $$5
   (get_local $$1)
  )
  (set_local $$6
   (f32.mul
    (f32.const 2)
    (get_local $$5)
   )
  )
  (set_local $$7
   (f32.sub
    (f32.const 3)
    (get_local $$6)
   )
  )
  (set_local $$8
   (f32.mul
    (get_local $$4)
    (get_local $$7)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$8)
  )
 )
 (func $__ZL17InterpQuinticFuncf (param $$0 f32) (result f32)
  (local $$1 f32)
  (local $$10 f32)
  (local $$11 f32)
  (local $$12 f32)
  (local $$13 f32)
  (local $$2 f32)
  (local $$3 f32)
  (local $$4 f32)
  (local $$5 f32)
  (local $$6 f32)
  (local $$7 f32)
  (local $$8 f32)
  (local $$9 f32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$1
   (get_local $$0)
  )
  (set_local $$2
   (get_local $$1)
  )
  (set_local $$3
   (get_local $$1)
  )
  (set_local $$4
   (f32.mul
    (get_local $$2)
    (get_local $$3)
   )
  )
  (set_local $$5
   (get_local $$1)
  )
  (set_local $$6
   (f32.mul
    (get_local $$4)
    (get_local $$5)
   )
  )
  (set_local $$7
   (get_local $$1)
  )
  (set_local $$8
   (get_local $$1)
  )
  (set_local $$9
   (f32.mul
    (get_local $$8)
    (f32.const 6)
   )
  )
  (set_local $$10
   (f32.sub
    (get_local $$9)
    (f32.const 15)
   )
  )
  (set_local $$11
   (f32.mul
    (get_local $$7)
    (get_local $$10)
   )
  )
  (set_local $$12
   (f32.add
    (get_local $$11)
    (f32.const 10)
   )
  )
  (set_local $$13
   (f32.mul
    (get_local $$6)
    (get_local $$12)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$13)
  )
 )
 (func $__ZL4Lerpfff (param $$0 f32) (param $$1 f32) (param $$2 f32) (result f32)
  (local $$10 f32)
  (local $$11 f32)
  (local $$12 f32)
  (local $$3 f32)
  (local $$4 f32)
  (local $$5 f32)
  (local $$6 f32)
  (local $$7 f32)
  (local $$8 f32)
  (local $$9 f32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$3
   (get_local $$0)
  )
  (set_local $$4
   (get_local $$1)
  )
  (set_local $$5
   (get_local $$2)
  )
  (set_local $$6
   (get_local $$3)
  )
  (set_local $$7
   (get_local $$5)
  )
  (set_local $$8
   (get_local $$4)
  )
  (set_local $$9
   (get_local $$3)
  )
  (set_local $$10
   (f32.sub
    (get_local $$8)
    (get_local $$9)
   )
  )
  (set_local $$11
   (f32.mul
    (get_local $$7)
    (get_local $$10)
   )
  )
  (set_local $$12
   (f32.add
    (get_local $$6)
    (get_local $$11)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$12)
  )
 )
 (func $__ZNK9FastNoise8GetNoiseEff (param $$0 i32) (param $$1 f32) (param $$2 f32) (result f32)
  (local $$10 f32)
  (local $$11 f32)
  (local $$12 i32)
  (local $$13 f32)
  (local $$14 f32)
  (local $$15 f32)
  (local $$16 i32)
  (local $$17 i32)
  (local $$18 f32)
  (local $$19 f32)
  (local $$20 f32)
  (local $$21 i32)
  (local $$22 i32)
  (local $$23 f32)
  (local $$24 f32)
  (local $$25 f32)
  (local $$26 f32)
  (local $$27 f32)
  (local $$28 f32)
  (local $$29 f32)
  (local $$3 f32)
  (local $$30 f32)
  (local $$31 f32)
  (local $$32 f32)
  (local $$33 f32)
  (local $$34 f32)
  (local $$35 i32)
  (local $$36 i32)
  (local $$37 f32)
  (local $$38 f32)
  (local $$39 f32)
  (local $$4 i32)
  (local $$40 f32)
  (local $$41 f32)
  (local $$42 f32)
  (local $$43 f32)
  (local $$44 f32)
  (local $$45 f32)
  (local $$46 f32)
  (local $$47 f32)
  (local $$48 f32)
  (local $$49 i32)
  (local $$5 f32)
  (local $$50 i32)
  (local $$51 f32)
  (local $$52 f32)
  (local $$53 f32)
  (local $$54 f32)
  (local $$55 f32)
  (local $$56 f32)
  (local $$57 f32)
  (local $$58 f32)
  (local $$59 f32)
  (local $$6 f32)
  (local $$60 i32)
  (local $$61 i32)
  (local $$62 f32)
  (local $$63 f32)
  (local $$64 f32)
  (local $$65 f32)
  (local $$66 f32)
  (local $$67 f32)
  (local $$68 f32)
  (local $$69 f32)
  (local $$7 i32)
  (local $$70 f32)
  (local $$71 f32)
  (local $$72 i32)
  (local $$73 i32)
  (local $$74 f32)
  (local $$75 f32)
  (local $$76 f32)
  (local $$77 f32)
  (local $$78 f32)
  (local $$79 f32)
  (local $$8 i32)
  (local $$80 f32)
  (local $$81 f32)
  (local $$82 f32)
  (local $$83 f32)
  (local $$9 f32)
  (local $$switch i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$4
   (get_local $$0)
  )
  (set_local $$5
   (get_local $$1)
  )
  (set_local $$6
   (get_local $$2)
  )
  (set_local $$7
   (get_local $$4)
  )
  (set_local $$8
   (i32.add
    (get_local $$7)
    (i32.const 1028)
   )
  )
  (set_local $$9
   (f32.load
    (get_local $$8)
   )
  )
  (set_local $$10
   (get_local $$5)
  )
  (set_local $$11
   (f32.mul
    (get_local $$10)
    (get_local $$9)
   )
  )
  (set_local $$5
   (get_local $$11)
  )
  (set_local $$12
   (i32.add
    (get_local $$7)
    (i32.const 1028)
   )
  )
  (set_local $$13
   (f32.load
    (get_local $$12)
   )
  )
  (set_local $$14
   (get_local $$6)
  )
  (set_local $$15
   (f32.mul
    (get_local $$14)
    (get_local $$13)
   )
  )
  (set_local $$6
   (get_local $$15)
  )
  (set_local $$16
   (i32.add
    (get_local $$7)
    (i32.const 1036)
   )
  )
  (set_local $$17
   (i32.load
    (get_local $$16)
   )
  )
  (block $label$break$L1
   (block $switch
    (block $switch-default28
     (block $switch-case27
      (block $switch-case21
       (block $switch-case20
        (block $switch-case19
         (block $switch-case18
          (block $switch-case12
           (block $switch-case11
            (block $switch-case5
             (block $switch-case4
              (block $switch-case
               (br_table $switch-case $switch-case4 $switch-case5 $switch-case11 $switch-case12 $switch-case18 $switch-case19 $switch-case20 $switch-case21 $switch-case27 $switch-default28
                (i32.sub
                 (get_local $$17)
                 (i32.const 0)
                )
               )
              )
              (block
               (set_local $$18
                (get_local $$5)
               )
               (set_local $$19
                (get_local $$6)
               )
               (set_local $$20
                (call $__ZNK9FastNoise11SingleValueEhff
                 (get_local $$7)
                 (i32.const 0)
                 (get_local $$18)
                 (get_local $$19)
                )
               )
               (set_local $$3
                (get_local $$20)
               )
               (br $switch)
              )
             )
             (block
              (set_local $$21
               (i32.add
                (get_local $$7)
                (i32.const 1052)
               )
              )
              (set_local $$22
               (i32.load
                (get_local $$21)
               )
              )
              (block $switch0
               (block $switch-default
                (block $switch-case3
                 (block $switch-case2
                  (block $switch-case1
                   (br_table $switch-case1 $switch-case2 $switch-case3 $switch-default
                    (i32.sub
                     (get_local $$22)
                     (i32.const 0)
                    )
                   )
                  )
                  (block
                   (set_local $$23
                    (get_local $$5)
                   )
                   (set_local $$24
                    (get_local $$6)
                   )
                   (set_local $$25
                    (call $__ZNK9FastNoise21SingleValueFractalFBMEff
                     (get_local $$7)
                     (get_local $$23)
                     (get_local $$24)
                    )
                   )
                   (set_local $$3
                    (get_local $$25)
                   )
                   (br $label$break$L1)
                   (br $switch0)
                  )
                 )
                 (block
                  (set_local $$26
                   (get_local $$5)
                  )
                  (set_local $$27
                   (get_local $$6)
                  )
                  (set_local $$28
                   (call $__ZNK9FastNoise24SingleValueFractalBillowEff
                    (get_local $$7)
                    (get_local $$26)
                    (get_local $$27)
                   )
                  )
                  (set_local $$3
                   (get_local $$28)
                  )
                  (br $label$break$L1)
                  (br $switch0)
                 )
                )
                (block
                 (set_local $$29
                  (get_local $$5)
                 )
                 (set_local $$30
                  (get_local $$6)
                 )
                 (set_local $$31
                  (call $__ZNK9FastNoise28SingleValueFractalRigidMultiEff
                   (get_local $$7)
                   (get_local $$29)
                   (get_local $$30)
                  )
                 )
                 (set_local $$3
                  (get_local $$31)
                 )
                 (br $label$break$L1)
                 (br $switch0)
                )
               )
               (block
                (set_local $label
                 (i32.const 7)
                )
                (br $label$break$L1)
               )
              )
              (br $switch)
             )
            )
            (block
             (set_local $label
              (i32.const 7)
             )
             (br $switch)
            )
           )
           (block
            (set_local $$35
             (i32.add
              (get_local $$7)
              (i32.const 1052)
             )
            )
            (set_local $$36
             (i32.load
              (get_local $$35)
             )
            )
            (block $switch6
             (block $switch-default10
              (block $switch-case9
               (block $switch-case8
                (block $switch-case7
                 (br_table $switch-case7 $switch-case8 $switch-case9 $switch-default10
                  (i32.sub
                   (get_local $$36)
                   (i32.const 0)
                  )
                 )
                )
                (block
                 (set_local $$37
                  (get_local $$5)
                 )
                 (set_local $$38
                  (get_local $$6)
                 )
                 (set_local $$39
                  (call $__ZNK9FastNoise22SinglePerlinFractalFBMEff
                   (get_local $$7)
                   (get_local $$37)
                   (get_local $$38)
                  )
                 )
                 (set_local $$3
                  (get_local $$39)
                 )
                 (br $label$break$L1)
                 (br $switch6)
                )
               )
               (block
                (set_local $$40
                 (get_local $$5)
                )
                (set_local $$41
                 (get_local $$6)
                )
                (set_local $$42
                 (call $__ZNK9FastNoise25SinglePerlinFractalBillowEff
                  (get_local $$7)
                  (get_local $$40)
                  (get_local $$41)
                 )
                )
                (set_local $$3
                 (get_local $$42)
                )
                (br $label$break$L1)
                (br $switch6)
               )
              )
              (block
               (set_local $$43
                (get_local $$5)
               )
               (set_local $$44
                (get_local $$6)
               )
               (set_local $$45
                (call $__ZNK9FastNoise29SinglePerlinFractalRigidMultiEff
                 (get_local $$7)
                 (get_local $$43)
                 (get_local $$44)
                )
               )
               (set_local $$3
                (get_local $$45)
               )
               (br $label$break$L1)
               (br $switch6)
              )
             )
             (block
              (set_local $label
               (i32.const 12)
              )
              (br $label$break$L1)
             )
            )
            (br $switch)
           )
          )
          (block
           (set_local $label
            (i32.const 12)
           )
           (br $switch)
          )
         )
         (block
          (set_local $$49
           (i32.add
            (get_local $$7)
            (i32.const 1052)
           )
          )
          (set_local $$50
           (i32.load
            (get_local $$49)
           )
          )
          (block $switch13
           (block $switch-default17
            (block $switch-case16
             (block $switch-case15
              (block $switch-case14
               (br_table $switch-case14 $switch-case15 $switch-case16 $switch-default17
                (i32.sub
                 (get_local $$50)
                 (i32.const 0)
                )
               )
              )
              (block
               (set_local $$51
                (get_local $$5)
               )
               (set_local $$52
                (get_local $$6)
               )
               (set_local $$53
                (call $__ZNK9FastNoise23SingleSimplexFractalFBMEff
                 (get_local $$7)
                 (get_local $$51)
                 (get_local $$52)
                )
               )
               (set_local $$3
                (get_local $$53)
               )
               (br $label$break$L1)
               (br $switch13)
              )
             )
             (block
              (set_local $$54
               (get_local $$5)
              )
              (set_local $$55
               (get_local $$6)
              )
              (set_local $$56
               (call $__ZNK9FastNoise26SingleSimplexFractalBillowEff
                (get_local $$7)
                (get_local $$54)
                (get_local $$55)
               )
              )
              (set_local $$3
               (get_local $$56)
              )
              (br $label$break$L1)
              (br $switch13)
             )
            )
            (block
             (set_local $$57
              (get_local $$5)
             )
             (set_local $$58
              (get_local $$6)
             )
             (set_local $$59
              (call $__ZNK9FastNoise30SingleSimplexFractalRigidMultiEff
               (get_local $$7)
               (get_local $$57)
               (get_local $$58)
              )
             )
             (set_local $$3
              (get_local $$59)
             )
             (br $label$break$L1)
             (br $switch13)
            )
           )
           (block
            (set_local $label
             (i32.const 17)
            )
            (br $label$break$L1)
           )
          )
          (br $switch)
         )
        )
        (block
         (set_local $label
          (i32.const 17)
         )
         (br $switch)
        )
       )
       (block
        (set_local $$66
         (get_local $$5)
        )
        (set_local $$67
         (get_local $$6)
        )
        (set_local $$68
         (call $__ZNK9FastNoise13GetWhiteNoiseEff
          (get_local $$7)
          (get_local $$66)
          (get_local $$67)
         )
        )
        (set_local $$3
         (get_local $$68)
        )
        (br $switch)
       )
      )
      (block
       (set_local $$69
        (get_local $$5)
       )
       (set_local $$70
        (get_local $$6)
       )
       (set_local $$71
        (call $__ZNK9FastNoise11SingleCubicEhff
         (get_local $$7)
         (i32.const 0)
         (get_local $$69)
         (get_local $$70)
        )
       )
       (set_local $$3
        (get_local $$71)
       )
       (br $switch)
      )
     )
     (block
      (set_local $$72
       (i32.add
        (get_local $$7)
        (i32.const 1052)
       )
      )
      (set_local $$73
       (i32.load
        (get_local $$72)
       )
      )
      (block $switch22
       (block $switch-default26
        (block $switch-case25
         (block $switch-case24
          (block $switch-case23
           (br_table $switch-case23 $switch-case24 $switch-case25 $switch-default26
            (i32.sub
             (get_local $$73)
             (i32.const 0)
            )
           )
          )
          (block
           (set_local $$74
            (get_local $$5)
           )
           (set_local $$75
            (get_local $$6)
           )
           (set_local $$76
            (call $__ZNK9FastNoise21SingleCubicFractalFBMEff
             (get_local $$7)
             (get_local $$74)
             (get_local $$75)
            )
           )
           (set_local $$3
            (get_local $$76)
           )
           (br $label$break$L1)
           (br $switch22)
          )
         )
         (block
          (set_local $$77
           (get_local $$5)
          )
          (set_local $$78
           (get_local $$6)
          )
          (set_local $$79
           (call $__ZNK9FastNoise24SingleCubicFractalBillowEff
            (get_local $$7)
            (get_local $$77)
            (get_local $$78)
           )
          )
          (set_local $$3
           (get_local $$79)
          )
          (br $label$break$L1)
          (br $switch22)
         )
        )
        (block
         (set_local $$80
          (get_local $$5)
         )
         (set_local $$81
          (get_local $$6)
         )
         (set_local $$82
          (call $__ZNK9FastNoise28SingleCubicFractalRigidMultiEff
           (get_local $$7)
           (get_local $$80)
           (get_local $$81)
          )
         )
         (set_local $$3
          (get_local $$82)
         )
         (br $label$break$L1)
         (br $switch22)
        )
       )
       (block
        (set_local $label
         (i32.const 26)
        )
        (br $label$break$L1)
       )
      )
      (br $switch)
     )
    )
    (set_local $label
     (i32.const 26)
    )
   )
  )
  (block $do-once
   (if
    (i32.eq
     (get_local $label)
     (i32.const 7)
    )
    (block
     (set_local $$32
      (get_local $$5)
     )
     (set_local $$33
      (get_local $$6)
     )
     (set_local $$34
      (call $__ZNK9FastNoise12SinglePerlinEhff
       (get_local $$7)
       (i32.const 0)
       (get_local $$32)
       (get_local $$33)
      )
     )
     (set_local $$3
      (get_local $$34)
     )
    )
    (if
     (i32.eq
      (get_local $label)
      (i32.const 12)
     )
     (block
      (set_local $$46
       (get_local $$5)
      )
      (set_local $$47
       (get_local $$6)
      )
      (set_local $$48
       (call $__ZNK9FastNoise13SingleSimplexEhff
        (get_local $$7)
        (i32.const 0)
        (get_local $$46)
        (get_local $$47)
       )
      )
      (set_local $$3
       (get_local $$48)
      )
     )
     (if
      (i32.eq
       (get_local $label)
       (i32.const 17)
      )
      (block
       (set_local $$60
        (i32.add
         (get_local $$7)
         (i32.const 1064)
        )
       )
       (set_local $$61
        (i32.load
         (get_local $$60)
        )
       )
       (set_local $$switch
        (i32.lt_u
         (get_local $$61)
         (i32.const 3)
        )
       )
       (set_local $$62
        (get_local $$5)
       )
       (set_local $$63
        (get_local $$6)
       )
       (if
        (get_local $$switch)
        (block
         (set_local $$64
          (call $__ZNK9FastNoise14SingleCellularEff
           (get_local $$7)
           (get_local $$62)
           (get_local $$63)
          )
         )
         (set_local $$3
          (get_local $$64)
         )
         (br $do-once)
        )
        (block
         (set_local $$65
          (call $__ZNK9FastNoise19SingleCellular2EdgeEff
           (get_local $$7)
           (get_local $$62)
           (get_local $$63)
          )
         )
         (set_local $$3
          (get_local $$65)
         )
         (br $do-once)
        )
       )
      )
      (if
       (i32.eq
        (get_local $label)
        (i32.const 26)
       )
       (set_local $$3
        (f32.const 0)
       )
      )
     )
    )
   )
  )
  (set_local $$83
   (get_local $$3)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$83)
  )
 )
 (func $__ZNK9FastNoise11SingleValueEhff (param $$0 i32) (param $$1 i32) (param $$2 f32) (param $$3 f32) (result f32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 f32)
  (local $$13 f32)
  (local $$14 f32)
  (local $$15 f32)
  (local $$16 i32)
  (local $$17 f32)
  (local $$18 i32)
  (local $$19 f32)
  (local $$20 i32)
  (local $$21 i32)
  (local $$22 i32)
  (local $$23 i32)
  (local $$24 i32)
  (local $$25 i32)
  (local $$26 i32)
  (local $$27 f32)
  (local $$28 i32)
  (local $$29 f32)
  (local $$30 f32)
  (local $$31 f32)
  (local $$32 i32)
  (local $$33 f32)
  (local $$34 f32)
  (local $$35 f32)
  (local $$36 i32)
  (local $$37 f32)
  (local $$38 f32)
  (local $$39 f32)
  (local $$4 i32)
  (local $$40 f32)
  (local $$41 i32)
  (local $$42 f32)
  (local $$43 f32)
  (local $$44 f32)
  (local $$45 f32)
  (local $$46 i32)
  (local $$47 f32)
  (local $$48 f32)
  (local $$49 f32)
  (local $$5 i32)
  (local $$50 f32)
  (local $$51 i32)
  (local $$52 f32)
  (local $$53 f32)
  (local $$54 f32)
  (local $$55 i32)
  (local $$56 i32)
  (local $$57 i32)
  (local $$58 f32)
  (local $$59 i32)
  (local $$6 f32)
  (local $$60 i32)
  (local $$61 i32)
  (local $$62 f32)
  (local $$63 f32)
  (local $$64 f32)
  (local $$65 i32)
  (local $$66 i32)
  (local $$67 i32)
  (local $$68 f32)
  (local $$69 i32)
  (local $$7 f32)
  (local $$70 i32)
  (local $$71 i32)
  (local $$72 f32)
  (local $$73 f32)
  (local $$74 f32)
  (local $$75 f32)
  (local $$76 f32)
  (local $$77 f32)
  (local $$78 f32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 48)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 48)
   )
  )
  (set_local $$4
   (get_local $$0)
  )
  (set_local $$5
   (get_local $$1)
  )
  (set_local $$6
   (get_local $$2)
  )
  (set_local $$7
   (get_local $$3)
  )
  (set_local $$16
   (get_local $$4)
  )
  (set_local $$17
   (get_local $$6)
  )
  (set_local $$18
   (call $__ZL9FastFloorf
    (get_local $$17)
   )
  )
  (set_local $$8
   (get_local $$18)
  )
  (set_local $$19
   (get_local $$7)
  )
  (set_local $$20
   (call $__ZL9FastFloorf
    (get_local $$19)
   )
  )
  (set_local $$9
   (get_local $$20)
  )
  (set_local $$21
   (get_local $$8)
  )
  (set_local $$22
   (i32.add
    (get_local $$21)
    (i32.const 1)
   )
  )
  (set_local $$10
   (get_local $$22)
  )
  (set_local $$23
   (get_local $$9)
  )
  (set_local $$24
   (i32.add
    (get_local $$23)
    (i32.const 1)
   )
  )
  (set_local $$11
   (get_local $$24)
  )
  (set_local $$25
   (i32.add
    (get_local $$16)
    (i32.const 1032)
   )
  )
  (set_local $$26
   (i32.load
    (get_local $$25)
   )
  )
  (block $switch
   (block $switch-default
    (block $switch-case1
     (block $switch-case0
      (block $switch-case
       (br_table $switch-case $switch-case0 $switch-case1 $switch-default
        (i32.sub
         (get_local $$26)
         (i32.const 0)
        )
       )
      )
      (block
       (set_local $$27
        (get_local $$6)
       )
       (set_local $$28
        (get_local $$8)
       )
       (set_local $$29
        (f32.convert_s/i32
         (get_local $$28)
        )
       )
       (set_local $$30
        (f32.sub
         (get_local $$27)
         (get_local $$29)
        )
       )
       (set_local $$12
        (get_local $$30)
       )
       (set_local $$31
        (get_local $$7)
       )
       (set_local $$32
        (get_local $$9)
       )
       (set_local $$33
        (f32.convert_s/i32
         (get_local $$32)
        )
       )
       (set_local $$34
        (f32.sub
         (get_local $$31)
         (get_local $$33)
        )
       )
       (set_local $$13
        (get_local $$34)
       )
       (br $switch)
      )
     )
     (block
      (set_local $$35
       (get_local $$6)
      )
      (set_local $$36
       (get_local $$8)
      )
      (set_local $$37
       (f32.convert_s/i32
        (get_local $$36)
       )
      )
      (set_local $$38
       (f32.sub
        (get_local $$35)
        (get_local $$37)
       )
      )
      (set_local $$39
       (call $__ZL17InterpHermiteFuncf
        (get_local $$38)
       )
      )
      (set_local $$12
       (get_local $$39)
      )
      (set_local $$40
       (get_local $$7)
      )
      (set_local $$41
       (get_local $$9)
      )
      (set_local $$42
       (f32.convert_s/i32
        (get_local $$41)
       )
      )
      (set_local $$43
       (f32.sub
        (get_local $$40)
        (get_local $$42)
       )
      )
      (set_local $$44
       (call $__ZL17InterpHermiteFuncf
        (get_local $$43)
       )
      )
      (set_local $$13
       (get_local $$44)
      )
      (br $switch)
     )
    )
    (block
     (set_local $$45
      (get_local $$6)
     )
     (set_local $$46
      (get_local $$8)
     )
     (set_local $$47
      (f32.convert_s/i32
       (get_local $$46)
      )
     )
     (set_local $$48
      (f32.sub
       (get_local $$45)
       (get_local $$47)
      )
     )
     (set_local $$49
      (call $__ZL17InterpQuinticFuncf
       (get_local $$48)
      )
     )
     (set_local $$12
      (get_local $$49)
     )
     (set_local $$50
      (get_local $$7)
     )
     (set_local $$51
      (get_local $$9)
     )
     (set_local $$52
      (f32.convert_s/i32
       (get_local $$51)
      )
     )
     (set_local $$53
      (f32.sub
       (get_local $$50)
       (get_local $$52)
      )
     )
     (set_local $$54
      (call $__ZL17InterpQuinticFuncf
       (get_local $$53)
      )
     )
     (set_local $$13
      (get_local $$54)
     )
     (br $switch)
    )
   )
   (nop)
  )
  (set_local $$55
   (get_local $$5)
  )
  (set_local $$56
   (get_local $$8)
  )
  (set_local $$57
   (get_local $$9)
  )
  (set_local $$58
   (call $__ZNK9FastNoise14ValCoord2DFastEhii
    (get_local $$16)
    (get_local $$55)
    (get_local $$56)
    (get_local $$57)
   )
  )
  (set_local $$59
   (get_local $$5)
  )
  (set_local $$60
   (get_local $$10)
  )
  (set_local $$61
   (get_local $$9)
  )
  (set_local $$62
   (call $__ZNK9FastNoise14ValCoord2DFastEhii
    (get_local $$16)
    (get_local $$59)
    (get_local $$60)
    (get_local $$61)
   )
  )
  (set_local $$63
   (get_local $$12)
  )
  (set_local $$64
   (call $__ZL4Lerpfff
    (get_local $$58)
    (get_local $$62)
    (get_local $$63)
   )
  )
  (set_local $$14
   (get_local $$64)
  )
  (set_local $$65
   (get_local $$5)
  )
  (set_local $$66
   (get_local $$8)
  )
  (set_local $$67
   (get_local $$11)
  )
  (set_local $$68
   (call $__ZNK9FastNoise14ValCoord2DFastEhii
    (get_local $$16)
    (get_local $$65)
    (get_local $$66)
    (get_local $$67)
   )
  )
  (set_local $$69
   (get_local $$5)
  )
  (set_local $$70
   (get_local $$10)
  )
  (set_local $$71
   (get_local $$11)
  )
  (set_local $$72
   (call $__ZNK9FastNoise14ValCoord2DFastEhii
    (get_local $$16)
    (get_local $$69)
    (get_local $$70)
    (get_local $$71)
   )
  )
  (set_local $$73
   (get_local $$12)
  )
  (set_local $$74
   (call $__ZL4Lerpfff
    (get_local $$68)
    (get_local $$72)
    (get_local $$73)
   )
  )
  (set_local $$15
   (get_local $$74)
  )
  (set_local $$75
   (get_local $$14)
  )
  (set_local $$76
   (get_local $$15)
  )
  (set_local $$77
   (get_local $$13)
  )
  (set_local $$78
   (call $__ZL4Lerpfff
    (get_local $$75)
    (get_local $$76)
    (get_local $$77)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$78)
  )
 )
 (func $__ZNK9FastNoise21SingleValueFractalFBMEff (param $$0 i32) (param $$1 f32) (param $$2 f32) (result f32)
  (local $$10 i32)
  (local $$11 f32)
  (local $$12 f32)
  (local $$13 f32)
  (local $$14 i32)
  (local $$15 i32)
  (local $$16 i32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$19 i32)
  (local $$20 f32)
  (local $$21 f32)
  (local $$22 f32)
  (local $$23 i32)
  (local $$24 f32)
  (local $$25 f32)
  (local $$26 f32)
  (local $$27 i32)
  (local $$28 f32)
  (local $$29 f32)
  (local $$3 i32)
  (local $$30 f32)
  (local $$31 i32)
  (local $$32 i32)
  (local $$33 i32)
  (local $$34 f32)
  (local $$35 f32)
  (local $$36 f32)
  (local $$37 f32)
  (local $$38 f32)
  (local $$39 f32)
  (local $$4 f32)
  (local $$40 f32)
  (local $$41 f32)
  (local $$42 i32)
  (local $$43 f32)
  (local $$44 f32)
  (local $$5 f32)
  (local $$6 f32)
  (local $$7 f32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 32)
   )
  )
  (set_local $$3
   (get_local $$0)
  )
  (set_local $$4
   (get_local $$1)
  )
  (set_local $$5
   (get_local $$2)
  )
  (set_local $$9
   (get_local $$3)
  )
  (set_local $$10
   (i32.load8_s
    (get_local $$9)
   )
  )
  (set_local $$11
   (get_local $$4)
  )
  (set_local $$12
   (get_local $$5)
  )
  (set_local $$13
   (call $__ZNK9FastNoise11SingleValueEhff
    (get_local $$9)
    (get_local $$10)
    (get_local $$11)
    (get_local $$12)
   )
  )
  (set_local $$6
   (get_local $$13)
  )
  (set_local $$7
   (f32.const 1)
  )
  (set_local $$8
   (i32.const 0)
  )
  (loop $while-in
   (block $while-out
    (set_local $$14
     (get_local $$8)
    )
    (set_local $$15
     (i32.add
      (get_local $$14)
      (i32.const 1)
     )
    )
    (set_local $$8
     (get_local $$15)
    )
    (set_local $$16
     (i32.add
      (get_local $$9)
      (i32.const 1040)
     )
    )
    (set_local $$17
     (i32.load
      (get_local $$16)
     )
    )
    (set_local $$18
     (i32.lt_s
      (get_local $$15)
      (get_local $$17)
     )
    )
    (if
     (i32.eqz
      (get_local $$18)
     )
     (br $while-out)
    )
    (set_local $$19
     (i32.add
      (get_local $$9)
      (i32.const 1044)
     )
    )
    (set_local $$20
     (f32.load
      (get_local $$19)
     )
    )
    (set_local $$21
     (get_local $$4)
    )
    (set_local $$22
     (f32.mul
      (get_local $$21)
      (get_local $$20)
     )
    )
    (set_local $$4
     (get_local $$22)
    )
    (set_local $$23
     (i32.add
      (get_local $$9)
      (i32.const 1044)
     )
    )
    (set_local $$24
     (f32.load
      (get_local $$23)
     )
    )
    (set_local $$25
     (get_local $$5)
    )
    (set_local $$26
     (f32.mul
      (get_local $$25)
      (get_local $$24)
     )
    )
    (set_local $$5
     (get_local $$26)
    )
    (set_local $$27
     (i32.add
      (get_local $$9)
      (i32.const 1048)
     )
    )
    (set_local $$28
     (f32.load
      (get_local $$27)
     )
    )
    (set_local $$29
     (get_local $$7)
    )
    (set_local $$30
     (f32.mul
      (get_local $$29)
      (get_local $$28)
     )
    )
    (set_local $$7
     (get_local $$30)
    )
    (set_local $$31
     (get_local $$8)
    )
    (set_local $$32
     (i32.add
      (get_local $$9)
      (get_local $$31)
     )
    )
    (set_local $$33
     (i32.load8_s
      (get_local $$32)
     )
    )
    (set_local $$34
     (get_local $$4)
    )
    (set_local $$35
     (get_local $$5)
    )
    (set_local $$36
     (call $__ZNK9FastNoise11SingleValueEhff
      (get_local $$9)
      (get_local $$33)
      (get_local $$34)
      (get_local $$35)
     )
    )
    (set_local $$37
     (get_local $$7)
    )
    (set_local $$38
     (f32.mul
      (get_local $$36)
      (get_local $$37)
     )
    )
    (set_local $$39
     (get_local $$6)
    )
    (set_local $$40
     (f32.add
      (get_local $$39)
      (get_local $$38)
     )
    )
    (set_local $$6
     (get_local $$40)
    )
    (br $while-in)
   )
  )
  (set_local $$41
   (get_local $$6)
  )
  (set_local $$42
   (i32.add
    (get_local $$9)
    (i32.const 1056)
   )
  )
  (set_local $$43
   (f32.load
    (get_local $$42)
   )
  )
  (set_local $$44
   (f32.mul
    (get_local $$41)
    (get_local $$43)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$44)
  )
 )
 (func $__ZNK9FastNoise24SingleValueFractalBillowEff (param $$0 i32) (param $$1 f32) (param $$2 f32) (result f32)
  (local $$10 i32)
  (local $$11 f32)
  (local $$12 f32)
  (local $$13 f32)
  (local $$14 f32)
  (local $$15 f32)
  (local $$16 f32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$19 i32)
  (local $$20 i32)
  (local $$21 i32)
  (local $$22 i32)
  (local $$23 f32)
  (local $$24 f32)
  (local $$25 f32)
  (local $$26 i32)
  (local $$27 f32)
  (local $$28 f32)
  (local $$29 f32)
  (local $$3 i32)
  (local $$30 i32)
  (local $$31 f32)
  (local $$32 f32)
  (local $$33 f32)
  (local $$34 i32)
  (local $$35 i32)
  (local $$36 i32)
  (local $$37 f32)
  (local $$38 f32)
  (local $$39 f32)
  (local $$4 f32)
  (local $$40 f32)
  (local $$41 f32)
  (local $$42 f32)
  (local $$43 f32)
  (local $$44 f32)
  (local $$45 f32)
  (local $$46 f32)
  (local $$47 f32)
  (local $$48 i32)
  (local $$49 f32)
  (local $$5 f32)
  (local $$50 f32)
  (local $$6 f32)
  (local $$7 f32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 32)
   )
  )
  (set_local $$3
   (get_local $$0)
  )
  (set_local $$4
   (get_local $$1)
  )
  (set_local $$5
   (get_local $$2)
  )
  (set_local $$9
   (get_local $$3)
  )
  (set_local $$10
   (i32.load8_s
    (get_local $$9)
   )
  )
  (set_local $$11
   (get_local $$4)
  )
  (set_local $$12
   (get_local $$5)
  )
  (set_local $$13
   (call $__ZNK9FastNoise11SingleValueEhff
    (get_local $$9)
    (get_local $$10)
    (get_local $$11)
    (get_local $$12)
   )
  )
  (set_local $$14
   (call $__ZL7FastAbsf
    (get_local $$13)
   )
  )
  (set_local $$15
   (f32.mul
    (get_local $$14)
    (f32.const 2)
   )
  )
  (set_local $$16
   (f32.sub
    (get_local $$15)
    (f32.const 1)
   )
  )
  (set_local $$6
   (get_local $$16)
  )
  (set_local $$7
   (f32.const 1)
  )
  (set_local $$8
   (i32.const 0)
  )
  (loop $while-in
   (block $while-out
    (set_local $$17
     (get_local $$8)
    )
    (set_local $$18
     (i32.add
      (get_local $$17)
      (i32.const 1)
     )
    )
    (set_local $$8
     (get_local $$18)
    )
    (set_local $$19
     (i32.add
      (get_local $$9)
      (i32.const 1040)
     )
    )
    (set_local $$20
     (i32.load
      (get_local $$19)
     )
    )
    (set_local $$21
     (i32.lt_s
      (get_local $$18)
      (get_local $$20)
     )
    )
    (if
     (i32.eqz
      (get_local $$21)
     )
     (br $while-out)
    )
    (set_local $$22
     (i32.add
      (get_local $$9)
      (i32.const 1044)
     )
    )
    (set_local $$23
     (f32.load
      (get_local $$22)
     )
    )
    (set_local $$24
     (get_local $$4)
    )
    (set_local $$25
     (f32.mul
      (get_local $$24)
      (get_local $$23)
     )
    )
    (set_local $$4
     (get_local $$25)
    )
    (set_local $$26
     (i32.add
      (get_local $$9)
      (i32.const 1044)
     )
    )
    (set_local $$27
     (f32.load
      (get_local $$26)
     )
    )
    (set_local $$28
     (get_local $$5)
    )
    (set_local $$29
     (f32.mul
      (get_local $$28)
      (get_local $$27)
     )
    )
    (set_local $$5
     (get_local $$29)
    )
    (set_local $$30
     (i32.add
      (get_local $$9)
      (i32.const 1048)
     )
    )
    (set_local $$31
     (f32.load
      (get_local $$30)
     )
    )
    (set_local $$32
     (get_local $$7)
    )
    (set_local $$33
     (f32.mul
      (get_local $$32)
      (get_local $$31)
     )
    )
    (set_local $$7
     (get_local $$33)
    )
    (set_local $$34
     (get_local $$8)
    )
    (set_local $$35
     (i32.add
      (get_local $$9)
      (get_local $$34)
     )
    )
    (set_local $$36
     (i32.load8_s
      (get_local $$35)
     )
    )
    (set_local $$37
     (get_local $$4)
    )
    (set_local $$38
     (get_local $$5)
    )
    (set_local $$39
     (call $__ZNK9FastNoise11SingleValueEhff
      (get_local $$9)
      (get_local $$36)
      (get_local $$37)
      (get_local $$38)
     )
    )
    (set_local $$40
     (call $__ZL7FastAbsf
      (get_local $$39)
     )
    )
    (set_local $$41
     (f32.mul
      (get_local $$40)
      (f32.const 2)
     )
    )
    (set_local $$42
     (f32.sub
      (get_local $$41)
      (f32.const 1)
     )
    )
    (set_local $$43
     (get_local $$7)
    )
    (set_local $$44
     (f32.mul
      (get_local $$42)
      (get_local $$43)
     )
    )
    (set_local $$45
     (get_local $$6)
    )
    (set_local $$46
     (f32.add
      (get_local $$45)
      (get_local $$44)
     )
    )
    (set_local $$6
     (get_local $$46)
    )
    (br $while-in)
   )
  )
  (set_local $$47
   (get_local $$6)
  )
  (set_local $$48
   (i32.add
    (get_local $$9)
    (i32.const 1056)
   )
  )
  (set_local $$49
   (f32.load
    (get_local $$48)
   )
  )
  (set_local $$50
   (f32.mul
    (get_local $$47)
    (get_local $$49)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$50)
  )
 )
 (func $__ZNK9FastNoise28SingleValueFractalRigidMultiEff (param $$0 i32) (param $$1 f32) (param $$2 f32) (result f32)
  (local $$10 i32)
  (local $$11 f32)
  (local $$12 f32)
  (local $$13 f32)
  (local $$14 f32)
  (local $$15 f32)
  (local $$16 i32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$19 i32)
  (local $$20 i32)
  (local $$21 i32)
  (local $$22 f32)
  (local $$23 f32)
  (local $$24 f32)
  (local $$25 i32)
  (local $$26 f32)
  (local $$27 f32)
  (local $$28 f32)
  (local $$29 i32)
  (local $$3 i32)
  (local $$30 f32)
  (local $$31 f32)
  (local $$32 f32)
  (local $$33 i32)
  (local $$34 i32)
  (local $$35 i32)
  (local $$36 f32)
  (local $$37 f32)
  (local $$38 f32)
  (local $$39 f32)
  (local $$4 f32)
  (local $$40 f32)
  (local $$41 f32)
  (local $$42 f32)
  (local $$43 f32)
  (local $$44 f32)
  (local $$45 f32)
  (local $$5 f32)
  (local $$6 f32)
  (local $$7 f32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 32)
   )
  )
  (set_local $$3
   (get_local $$0)
  )
  (set_local $$4
   (get_local $$1)
  )
  (set_local $$5
   (get_local $$2)
  )
  (set_local $$9
   (get_local $$3)
  )
  (set_local $$10
   (i32.load8_s
    (get_local $$9)
   )
  )
  (set_local $$11
   (get_local $$4)
  )
  (set_local $$12
   (get_local $$5)
  )
  (set_local $$13
   (call $__ZNK9FastNoise11SingleValueEhff
    (get_local $$9)
    (get_local $$10)
    (get_local $$11)
    (get_local $$12)
   )
  )
  (set_local $$14
   (call $__ZL7FastAbsf
    (get_local $$13)
   )
  )
  (set_local $$15
   (f32.sub
    (f32.const 1)
    (get_local $$14)
   )
  )
  (set_local $$6
   (get_local $$15)
  )
  (set_local $$7
   (f32.const 1)
  )
  (set_local $$8
   (i32.const 0)
  )
  (loop $while-in
   (block $while-out
    (set_local $$16
     (get_local $$8)
    )
    (set_local $$17
     (i32.add
      (get_local $$16)
      (i32.const 1)
     )
    )
    (set_local $$8
     (get_local $$17)
    )
    (set_local $$18
     (i32.add
      (get_local $$9)
      (i32.const 1040)
     )
    )
    (set_local $$19
     (i32.load
      (get_local $$18)
     )
    )
    (set_local $$20
     (i32.lt_s
      (get_local $$17)
      (get_local $$19)
     )
    )
    (if
     (i32.eqz
      (get_local $$20)
     )
     (br $while-out)
    )
    (set_local $$21
     (i32.add
      (get_local $$9)
      (i32.const 1044)
     )
    )
    (set_local $$22
     (f32.load
      (get_local $$21)
     )
    )
    (set_local $$23
     (get_local $$4)
    )
    (set_local $$24
     (f32.mul
      (get_local $$23)
      (get_local $$22)
     )
    )
    (set_local $$4
     (get_local $$24)
    )
    (set_local $$25
     (i32.add
      (get_local $$9)
      (i32.const 1044)
     )
    )
    (set_local $$26
     (f32.load
      (get_local $$25)
     )
    )
    (set_local $$27
     (get_local $$5)
    )
    (set_local $$28
     (f32.mul
      (get_local $$27)
      (get_local $$26)
     )
    )
    (set_local $$5
     (get_local $$28)
    )
    (set_local $$29
     (i32.add
      (get_local $$9)
      (i32.const 1048)
     )
    )
    (set_local $$30
     (f32.load
      (get_local $$29)
     )
    )
    (set_local $$31
     (get_local $$7)
    )
    (set_local $$32
     (f32.mul
      (get_local $$31)
      (get_local $$30)
     )
    )
    (set_local $$7
     (get_local $$32)
    )
    (set_local $$33
     (get_local $$8)
    )
    (set_local $$34
     (i32.add
      (get_local $$9)
      (get_local $$33)
     )
    )
    (set_local $$35
     (i32.load8_s
      (get_local $$34)
     )
    )
    (set_local $$36
     (get_local $$4)
    )
    (set_local $$37
     (get_local $$5)
    )
    (set_local $$38
     (call $__ZNK9FastNoise11SingleValueEhff
      (get_local $$9)
      (get_local $$35)
      (get_local $$36)
      (get_local $$37)
     )
    )
    (set_local $$39
     (call $__ZL7FastAbsf
      (get_local $$38)
     )
    )
    (set_local $$40
     (f32.sub
      (f32.const 1)
      (get_local $$39)
     )
    )
    (set_local $$41
     (get_local $$7)
    )
    (set_local $$42
     (f32.mul
      (get_local $$40)
      (get_local $$41)
     )
    )
    (set_local $$43
     (get_local $$6)
    )
    (set_local $$44
     (f32.sub
      (get_local $$43)
      (get_local $$42)
     )
    )
    (set_local $$6
     (get_local $$44)
    )
    (br $while-in)
   )
  )
  (set_local $$45
   (get_local $$6)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$45)
  )
 )
 (func $__ZNK9FastNoise12SinglePerlinEhff (param $$0 i32) (param $$1 i32) (param $$2 f32) (param $$3 f32) (result f32)
  (local $$10 i32)
  (local $$100 f32)
  (local $$101 f32)
  (local $$102 f32)
  (local $$11 i32)
  (local $$12 f32)
  (local $$13 f32)
  (local $$14 f32)
  (local $$15 f32)
  (local $$16 f32)
  (local $$17 f32)
  (local $$18 f32)
  (local $$19 f32)
  (local $$20 i32)
  (local $$21 f32)
  (local $$22 i32)
  (local $$23 f32)
  (local $$24 i32)
  (local $$25 i32)
  (local $$26 i32)
  (local $$27 i32)
  (local $$28 i32)
  (local $$29 i32)
  (local $$30 i32)
  (local $$31 f32)
  (local $$32 i32)
  (local $$33 f32)
  (local $$34 f32)
  (local $$35 f32)
  (local $$36 i32)
  (local $$37 f32)
  (local $$38 f32)
  (local $$39 f32)
  (local $$4 i32)
  (local $$40 i32)
  (local $$41 f32)
  (local $$42 f32)
  (local $$43 f32)
  (local $$44 f32)
  (local $$45 i32)
  (local $$46 f32)
  (local $$47 f32)
  (local $$48 f32)
  (local $$49 f32)
  (local $$5 i32)
  (local $$50 i32)
  (local $$51 f32)
  (local $$52 f32)
  (local $$53 f32)
  (local $$54 f32)
  (local $$55 i32)
  (local $$56 f32)
  (local $$57 f32)
  (local $$58 f32)
  (local $$59 f32)
  (local $$6 f32)
  (local $$60 i32)
  (local $$61 f32)
  (local $$62 f32)
  (local $$63 f32)
  (local $$64 i32)
  (local $$65 f32)
  (local $$66 f32)
  (local $$67 f32)
  (local $$68 f32)
  (local $$69 f32)
  (local $$7 f32)
  (local $$70 f32)
  (local $$71 i32)
  (local $$72 i32)
  (local $$73 i32)
  (local $$74 f32)
  (local $$75 f32)
  (local $$76 f32)
  (local $$77 i32)
  (local $$78 i32)
  (local $$79 i32)
  (local $$8 i32)
  (local $$80 f32)
  (local $$81 f32)
  (local $$82 f32)
  (local $$83 f32)
  (local $$84 f32)
  (local $$85 i32)
  (local $$86 i32)
  (local $$87 i32)
  (local $$88 f32)
  (local $$89 f32)
  (local $$9 i32)
  (local $$90 f32)
  (local $$91 i32)
  (local $$92 i32)
  (local $$93 i32)
  (local $$94 f32)
  (local $$95 f32)
  (local $$96 f32)
  (local $$97 f32)
  (local $$98 f32)
  (local $$99 f32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 64)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 64)
   )
  )
  (set_local $$4
   (get_local $$0)
  )
  (set_local $$5
   (get_local $$1)
  )
  (set_local $$6
   (get_local $$2)
  )
  (set_local $$7
   (get_local $$3)
  )
  (set_local $$20
   (get_local $$4)
  )
  (set_local $$21
   (get_local $$6)
  )
  (set_local $$22
   (call $__ZL9FastFloorf
    (get_local $$21)
   )
  )
  (set_local $$8
   (get_local $$22)
  )
  (set_local $$23
   (get_local $$7)
  )
  (set_local $$24
   (call $__ZL9FastFloorf
    (get_local $$23)
   )
  )
  (set_local $$9
   (get_local $$24)
  )
  (set_local $$25
   (get_local $$8)
  )
  (set_local $$26
   (i32.add
    (get_local $$25)
    (i32.const 1)
   )
  )
  (set_local $$10
   (get_local $$26)
  )
  (set_local $$27
   (get_local $$9)
  )
  (set_local $$28
   (i32.add
    (get_local $$27)
    (i32.const 1)
   )
  )
  (set_local $$11
   (get_local $$28)
  )
  (set_local $$29
   (i32.add
    (get_local $$20)
    (i32.const 1032)
   )
  )
  (set_local $$30
   (i32.load
    (get_local $$29)
   )
  )
  (block $switch
   (block $switch-default
    (block $switch-case1
     (block $switch-case0
      (block $switch-case
       (br_table $switch-case $switch-case0 $switch-case1 $switch-default
        (i32.sub
         (get_local $$30)
         (i32.const 0)
        )
       )
      )
      (block
       (set_local $$31
        (get_local $$6)
       )
       (set_local $$32
        (get_local $$8)
       )
       (set_local $$33
        (f32.convert_s/i32
         (get_local $$32)
        )
       )
       (set_local $$34
        (f32.sub
         (get_local $$31)
         (get_local $$33)
        )
       )
       (set_local $$12
        (get_local $$34)
       )
       (set_local $$35
        (get_local $$7)
       )
       (set_local $$36
        (get_local $$9)
       )
       (set_local $$37
        (f32.convert_s/i32
         (get_local $$36)
        )
       )
       (set_local $$38
        (f32.sub
         (get_local $$35)
         (get_local $$37)
        )
       )
       (set_local $$13
        (get_local $$38)
       )
       (br $switch)
      )
     )
     (block
      (set_local $$39
       (get_local $$6)
      )
      (set_local $$40
       (get_local $$8)
      )
      (set_local $$41
       (f32.convert_s/i32
        (get_local $$40)
       )
      )
      (set_local $$42
       (f32.sub
        (get_local $$39)
        (get_local $$41)
       )
      )
      (set_local $$43
       (call $__ZL17InterpHermiteFuncf
        (get_local $$42)
       )
      )
      (set_local $$12
       (get_local $$43)
      )
      (set_local $$44
       (get_local $$7)
      )
      (set_local $$45
       (get_local $$9)
      )
      (set_local $$46
       (f32.convert_s/i32
        (get_local $$45)
       )
      )
      (set_local $$47
       (f32.sub
        (get_local $$44)
        (get_local $$46)
       )
      )
      (set_local $$48
       (call $__ZL17InterpHermiteFuncf
        (get_local $$47)
       )
      )
      (set_local $$13
       (get_local $$48)
      )
      (br $switch)
     )
    )
    (block
     (set_local $$49
      (get_local $$6)
     )
     (set_local $$50
      (get_local $$8)
     )
     (set_local $$51
      (f32.convert_s/i32
       (get_local $$50)
      )
     )
     (set_local $$52
      (f32.sub
       (get_local $$49)
       (get_local $$51)
      )
     )
     (set_local $$53
      (call $__ZL17InterpQuinticFuncf
       (get_local $$52)
      )
     )
     (set_local $$12
      (get_local $$53)
     )
     (set_local $$54
      (get_local $$7)
     )
     (set_local $$55
      (get_local $$9)
     )
     (set_local $$56
      (f32.convert_s/i32
       (get_local $$55)
      )
     )
     (set_local $$57
      (f32.sub
       (get_local $$54)
       (get_local $$56)
      )
     )
     (set_local $$58
      (call $__ZL17InterpQuinticFuncf
       (get_local $$57)
      )
     )
     (set_local $$13
      (get_local $$58)
     )
     (br $switch)
    )
   )
   (nop)
  )
  (set_local $$59
   (get_local $$6)
  )
  (set_local $$60
   (get_local $$8)
  )
  (set_local $$61
   (f32.convert_s/i32
    (get_local $$60)
   )
  )
  (set_local $$62
   (f32.sub
    (get_local $$59)
    (get_local $$61)
   )
  )
  (set_local $$14
   (get_local $$62)
  )
  (set_local $$63
   (get_local $$7)
  )
  (set_local $$64
   (get_local $$9)
  )
  (set_local $$65
   (f32.convert_s/i32
    (get_local $$64)
   )
  )
  (set_local $$66
   (f32.sub
    (get_local $$63)
    (get_local $$65)
   )
  )
  (set_local $$15
   (get_local $$66)
  )
  (set_local $$67
   (get_local $$14)
  )
  (set_local $$68
   (f32.sub
    (get_local $$67)
    (f32.const 1)
   )
  )
  (set_local $$16
   (get_local $$68)
  )
  (set_local $$69
   (get_local $$15)
  )
  (set_local $$70
   (f32.sub
    (get_local $$69)
    (f32.const 1)
   )
  )
  (set_local $$17
   (get_local $$70)
  )
  (set_local $$71
   (get_local $$5)
  )
  (set_local $$72
   (get_local $$8)
  )
  (set_local $$73
   (get_local $$9)
  )
  (set_local $$74
   (get_local $$14)
  )
  (set_local $$75
   (get_local $$15)
  )
  (set_local $$76
   (call $__ZNK9FastNoise11GradCoord2DEhiiff
    (get_local $$20)
    (get_local $$71)
    (get_local $$72)
    (get_local $$73)
    (get_local $$74)
    (get_local $$75)
   )
  )
  (set_local $$77
   (get_local $$5)
  )
  (set_local $$78
   (get_local $$10)
  )
  (set_local $$79
   (get_local $$9)
  )
  (set_local $$80
   (get_local $$16)
  )
  (set_local $$81
   (get_local $$15)
  )
  (set_local $$82
   (call $__ZNK9FastNoise11GradCoord2DEhiiff
    (get_local $$20)
    (get_local $$77)
    (get_local $$78)
    (get_local $$79)
    (get_local $$80)
    (get_local $$81)
   )
  )
  (set_local $$83
   (get_local $$12)
  )
  (set_local $$84
   (call $__ZL4Lerpfff
    (get_local $$76)
    (get_local $$82)
    (get_local $$83)
   )
  )
  (set_local $$18
   (get_local $$84)
  )
  (set_local $$85
   (get_local $$5)
  )
  (set_local $$86
   (get_local $$8)
  )
  (set_local $$87
   (get_local $$11)
  )
  (set_local $$88
   (get_local $$14)
  )
  (set_local $$89
   (get_local $$17)
  )
  (set_local $$90
   (call $__ZNK9FastNoise11GradCoord2DEhiiff
    (get_local $$20)
    (get_local $$85)
    (get_local $$86)
    (get_local $$87)
    (get_local $$88)
    (get_local $$89)
   )
  )
  (set_local $$91
   (get_local $$5)
  )
  (set_local $$92
   (get_local $$10)
  )
  (set_local $$93
   (get_local $$11)
  )
  (set_local $$94
   (get_local $$16)
  )
  (set_local $$95
   (get_local $$17)
  )
  (set_local $$96
   (call $__ZNK9FastNoise11GradCoord2DEhiiff
    (get_local $$20)
    (get_local $$91)
    (get_local $$92)
    (get_local $$93)
    (get_local $$94)
    (get_local $$95)
   )
  )
  (set_local $$97
   (get_local $$12)
  )
  (set_local $$98
   (call $__ZL4Lerpfff
    (get_local $$90)
    (get_local $$96)
    (get_local $$97)
   )
  )
  (set_local $$19
   (get_local $$98)
  )
  (set_local $$99
   (get_local $$18)
  )
  (set_local $$100
   (get_local $$19)
  )
  (set_local $$101
   (get_local $$13)
  )
  (set_local $$102
   (call $__ZL4Lerpfff
    (get_local $$99)
    (get_local $$100)
    (get_local $$101)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$102)
  )
 )
 (func $__ZNK9FastNoise22SinglePerlinFractalFBMEff (param $$0 i32) (param $$1 f32) (param $$2 f32) (result f32)
  (local $$10 i32)
  (local $$11 f32)
  (local $$12 f32)
  (local $$13 f32)
  (local $$14 i32)
  (local $$15 i32)
  (local $$16 i32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$19 i32)
  (local $$20 f32)
  (local $$21 f32)
  (local $$22 f32)
  (local $$23 i32)
  (local $$24 f32)
  (local $$25 f32)
  (local $$26 f32)
  (local $$27 i32)
  (local $$28 f32)
  (local $$29 f32)
  (local $$3 i32)
  (local $$30 f32)
  (local $$31 i32)
  (local $$32 i32)
  (local $$33 i32)
  (local $$34 f32)
  (local $$35 f32)
  (local $$36 f32)
  (local $$37 f32)
  (local $$38 f32)
  (local $$39 f32)
  (local $$4 f32)
  (local $$40 f32)
  (local $$41 f32)
  (local $$42 i32)
  (local $$43 f32)
  (local $$44 f32)
  (local $$5 f32)
  (local $$6 f32)
  (local $$7 f32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 32)
   )
  )
  (set_local $$3
   (get_local $$0)
  )
  (set_local $$4
   (get_local $$1)
  )
  (set_local $$5
   (get_local $$2)
  )
  (set_local $$9
   (get_local $$3)
  )
  (set_local $$10
   (i32.load8_s
    (get_local $$9)
   )
  )
  (set_local $$11
   (get_local $$4)
  )
  (set_local $$12
   (get_local $$5)
  )
  (set_local $$13
   (call $__ZNK9FastNoise12SinglePerlinEhff
    (get_local $$9)
    (get_local $$10)
    (get_local $$11)
    (get_local $$12)
   )
  )
  (set_local $$6
   (get_local $$13)
  )
  (set_local $$7
   (f32.const 1)
  )
  (set_local $$8
   (i32.const 0)
  )
  (loop $while-in
   (block $while-out
    (set_local $$14
     (get_local $$8)
    )
    (set_local $$15
     (i32.add
      (get_local $$14)
      (i32.const 1)
     )
    )
    (set_local $$8
     (get_local $$15)
    )
    (set_local $$16
     (i32.add
      (get_local $$9)
      (i32.const 1040)
     )
    )
    (set_local $$17
     (i32.load
      (get_local $$16)
     )
    )
    (set_local $$18
     (i32.lt_s
      (get_local $$15)
      (get_local $$17)
     )
    )
    (if
     (i32.eqz
      (get_local $$18)
     )
     (br $while-out)
    )
    (set_local $$19
     (i32.add
      (get_local $$9)
      (i32.const 1044)
     )
    )
    (set_local $$20
     (f32.load
      (get_local $$19)
     )
    )
    (set_local $$21
     (get_local $$4)
    )
    (set_local $$22
     (f32.mul
      (get_local $$21)
      (get_local $$20)
     )
    )
    (set_local $$4
     (get_local $$22)
    )
    (set_local $$23
     (i32.add
      (get_local $$9)
      (i32.const 1044)
     )
    )
    (set_local $$24
     (f32.load
      (get_local $$23)
     )
    )
    (set_local $$25
     (get_local $$5)
    )
    (set_local $$26
     (f32.mul
      (get_local $$25)
      (get_local $$24)
     )
    )
    (set_local $$5
     (get_local $$26)
    )
    (set_local $$27
     (i32.add
      (get_local $$9)
      (i32.const 1048)
     )
    )
    (set_local $$28
     (f32.load
      (get_local $$27)
     )
    )
    (set_local $$29
     (get_local $$7)
    )
    (set_local $$30
     (f32.mul
      (get_local $$29)
      (get_local $$28)
     )
    )
    (set_local $$7
     (get_local $$30)
    )
    (set_local $$31
     (get_local $$8)
    )
    (set_local $$32
     (i32.add
      (get_local $$9)
      (get_local $$31)
     )
    )
    (set_local $$33
     (i32.load8_s
      (get_local $$32)
     )
    )
    (set_local $$34
     (get_local $$4)
    )
    (set_local $$35
     (get_local $$5)
    )
    (set_local $$36
     (call $__ZNK9FastNoise12SinglePerlinEhff
      (get_local $$9)
      (get_local $$33)
      (get_local $$34)
      (get_local $$35)
     )
    )
    (set_local $$37
     (get_local $$7)
    )
    (set_local $$38
     (f32.mul
      (get_local $$36)
      (get_local $$37)
     )
    )
    (set_local $$39
     (get_local $$6)
    )
    (set_local $$40
     (f32.add
      (get_local $$39)
      (get_local $$38)
     )
    )
    (set_local $$6
     (get_local $$40)
    )
    (br $while-in)
   )
  )
  (set_local $$41
   (get_local $$6)
  )
  (set_local $$42
   (i32.add
    (get_local $$9)
    (i32.const 1056)
   )
  )
  (set_local $$43
   (f32.load
    (get_local $$42)
   )
  )
  (set_local $$44
   (f32.mul
    (get_local $$41)
    (get_local $$43)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$44)
  )
 )
 (func $__ZNK9FastNoise25SinglePerlinFractalBillowEff (param $$0 i32) (param $$1 f32) (param $$2 f32) (result f32)
  (local $$10 i32)
  (local $$11 f32)
  (local $$12 f32)
  (local $$13 f32)
  (local $$14 f32)
  (local $$15 f32)
  (local $$16 f32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$19 i32)
  (local $$20 i32)
  (local $$21 i32)
  (local $$22 i32)
  (local $$23 f32)
  (local $$24 f32)
  (local $$25 f32)
  (local $$26 i32)
  (local $$27 f32)
  (local $$28 f32)
  (local $$29 f32)
  (local $$3 i32)
  (local $$30 i32)
  (local $$31 f32)
  (local $$32 f32)
  (local $$33 f32)
  (local $$34 i32)
  (local $$35 i32)
  (local $$36 i32)
  (local $$37 f32)
  (local $$38 f32)
  (local $$39 f32)
  (local $$4 f32)
  (local $$40 f32)
  (local $$41 f32)
  (local $$42 f32)
  (local $$43 f32)
  (local $$44 f32)
  (local $$45 f32)
  (local $$46 f32)
  (local $$47 f32)
  (local $$48 i32)
  (local $$49 f32)
  (local $$5 f32)
  (local $$50 f32)
  (local $$6 f32)
  (local $$7 f32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 32)
   )
  )
  (set_local $$3
   (get_local $$0)
  )
  (set_local $$4
   (get_local $$1)
  )
  (set_local $$5
   (get_local $$2)
  )
  (set_local $$9
   (get_local $$3)
  )
  (set_local $$10
   (i32.load8_s
    (get_local $$9)
   )
  )
  (set_local $$11
   (get_local $$4)
  )
  (set_local $$12
   (get_local $$5)
  )
  (set_local $$13
   (call $__ZNK9FastNoise12SinglePerlinEhff
    (get_local $$9)
    (get_local $$10)
    (get_local $$11)
    (get_local $$12)
   )
  )
  (set_local $$14
   (call $__ZL7FastAbsf
    (get_local $$13)
   )
  )
  (set_local $$15
   (f32.mul
    (get_local $$14)
    (f32.const 2)
   )
  )
  (set_local $$16
   (f32.sub
    (get_local $$15)
    (f32.const 1)
   )
  )
  (set_local $$6
   (get_local $$16)
  )
  (set_local $$7
   (f32.const 1)
  )
  (set_local $$8
   (i32.const 0)
  )
  (loop $while-in
   (block $while-out
    (set_local $$17
     (get_local $$8)
    )
    (set_local $$18
     (i32.add
      (get_local $$17)
      (i32.const 1)
     )
    )
    (set_local $$8
     (get_local $$18)
    )
    (set_local $$19
     (i32.add
      (get_local $$9)
      (i32.const 1040)
     )
    )
    (set_local $$20
     (i32.load
      (get_local $$19)
     )
    )
    (set_local $$21
     (i32.lt_s
      (get_local $$18)
      (get_local $$20)
     )
    )
    (if
     (i32.eqz
      (get_local $$21)
     )
     (br $while-out)
    )
    (set_local $$22
     (i32.add
      (get_local $$9)
      (i32.const 1044)
     )
    )
    (set_local $$23
     (f32.load
      (get_local $$22)
     )
    )
    (set_local $$24
     (get_local $$4)
    )
    (set_local $$25
     (f32.mul
      (get_local $$24)
      (get_local $$23)
     )
    )
    (set_local $$4
     (get_local $$25)
    )
    (set_local $$26
     (i32.add
      (get_local $$9)
      (i32.const 1044)
     )
    )
    (set_local $$27
     (f32.load
      (get_local $$26)
     )
    )
    (set_local $$28
     (get_local $$5)
    )
    (set_local $$29
     (f32.mul
      (get_local $$28)
      (get_local $$27)
     )
    )
    (set_local $$5
     (get_local $$29)
    )
    (set_local $$30
     (i32.add
      (get_local $$9)
      (i32.const 1048)
     )
    )
    (set_local $$31
     (f32.load
      (get_local $$30)
     )
    )
    (set_local $$32
     (get_local $$7)
    )
    (set_local $$33
     (f32.mul
      (get_local $$32)
      (get_local $$31)
     )
    )
    (set_local $$7
     (get_local $$33)
    )
    (set_local $$34
     (get_local $$8)
    )
    (set_local $$35
     (i32.add
      (get_local $$9)
      (get_local $$34)
     )
    )
    (set_local $$36
     (i32.load8_s
      (get_local $$35)
     )
    )
    (set_local $$37
     (get_local $$4)
    )
    (set_local $$38
     (get_local $$5)
    )
    (set_local $$39
     (call $__ZNK9FastNoise12SinglePerlinEhff
      (get_local $$9)
      (get_local $$36)
      (get_local $$37)
      (get_local $$38)
     )
    )
    (set_local $$40
     (call $__ZL7FastAbsf
      (get_local $$39)
     )
    )
    (set_local $$41
     (f32.mul
      (get_local $$40)
      (f32.const 2)
     )
    )
    (set_local $$42
     (f32.sub
      (get_local $$41)
      (f32.const 1)
     )
    )
    (set_local $$43
     (get_local $$7)
    )
    (set_local $$44
     (f32.mul
      (get_local $$42)
      (get_local $$43)
     )
    )
    (set_local $$45
     (get_local $$6)
    )
    (set_local $$46
     (f32.add
      (get_local $$45)
      (get_local $$44)
     )
    )
    (set_local $$6
     (get_local $$46)
    )
    (br $while-in)
   )
  )
  (set_local $$47
   (get_local $$6)
  )
  (set_local $$48
   (i32.add
    (get_local $$9)
    (i32.const 1056)
   )
  )
  (set_local $$49
   (f32.load
    (get_local $$48)
   )
  )
  (set_local $$50
   (f32.mul
    (get_local $$47)
    (get_local $$49)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$50)
  )
 )
 (func $__ZNK9FastNoise29SinglePerlinFractalRigidMultiEff (param $$0 i32) (param $$1 f32) (param $$2 f32) (result f32)
  (local $$10 i32)
  (local $$11 f32)
  (local $$12 f32)
  (local $$13 f32)
  (local $$14 f32)
  (local $$15 f32)
  (local $$16 i32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$19 i32)
  (local $$20 i32)
  (local $$21 i32)
  (local $$22 f32)
  (local $$23 f32)
  (local $$24 f32)
  (local $$25 i32)
  (local $$26 f32)
  (local $$27 f32)
  (local $$28 f32)
  (local $$29 i32)
  (local $$3 i32)
  (local $$30 f32)
  (local $$31 f32)
  (local $$32 f32)
  (local $$33 i32)
  (local $$34 i32)
  (local $$35 i32)
  (local $$36 f32)
  (local $$37 f32)
  (local $$38 f32)
  (local $$39 f32)
  (local $$4 f32)
  (local $$40 f32)
  (local $$41 f32)
  (local $$42 f32)
  (local $$43 f32)
  (local $$44 f32)
  (local $$45 f32)
  (local $$5 f32)
  (local $$6 f32)
  (local $$7 f32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 32)
   )
  )
  (set_local $$3
   (get_local $$0)
  )
  (set_local $$4
   (get_local $$1)
  )
  (set_local $$5
   (get_local $$2)
  )
  (set_local $$9
   (get_local $$3)
  )
  (set_local $$10
   (i32.load8_s
    (get_local $$9)
   )
  )
  (set_local $$11
   (get_local $$4)
  )
  (set_local $$12
   (get_local $$5)
  )
  (set_local $$13
   (call $__ZNK9FastNoise12SinglePerlinEhff
    (get_local $$9)
    (get_local $$10)
    (get_local $$11)
    (get_local $$12)
   )
  )
  (set_local $$14
   (call $__ZL7FastAbsf
    (get_local $$13)
   )
  )
  (set_local $$15
   (f32.sub
    (f32.const 1)
    (get_local $$14)
   )
  )
  (set_local $$6
   (get_local $$15)
  )
  (set_local $$7
   (f32.const 1)
  )
  (set_local $$8
   (i32.const 0)
  )
  (loop $while-in
   (block $while-out
    (set_local $$16
     (get_local $$8)
    )
    (set_local $$17
     (i32.add
      (get_local $$16)
      (i32.const 1)
     )
    )
    (set_local $$8
     (get_local $$17)
    )
    (set_local $$18
     (i32.add
      (get_local $$9)
      (i32.const 1040)
     )
    )
    (set_local $$19
     (i32.load
      (get_local $$18)
     )
    )
    (set_local $$20
     (i32.lt_s
      (get_local $$17)
      (get_local $$19)
     )
    )
    (if
     (i32.eqz
      (get_local $$20)
     )
     (br $while-out)
    )
    (set_local $$21
     (i32.add
      (get_local $$9)
      (i32.const 1044)
     )
    )
    (set_local $$22
     (f32.load
      (get_local $$21)
     )
    )
    (set_local $$23
     (get_local $$4)
    )
    (set_local $$24
     (f32.mul
      (get_local $$23)
      (get_local $$22)
     )
    )
    (set_local $$4
     (get_local $$24)
    )
    (set_local $$25
     (i32.add
      (get_local $$9)
      (i32.const 1044)
     )
    )
    (set_local $$26
     (f32.load
      (get_local $$25)
     )
    )
    (set_local $$27
     (get_local $$5)
    )
    (set_local $$28
     (f32.mul
      (get_local $$27)
      (get_local $$26)
     )
    )
    (set_local $$5
     (get_local $$28)
    )
    (set_local $$29
     (i32.add
      (get_local $$9)
      (i32.const 1048)
     )
    )
    (set_local $$30
     (f32.load
      (get_local $$29)
     )
    )
    (set_local $$31
     (get_local $$7)
    )
    (set_local $$32
     (f32.mul
      (get_local $$31)
      (get_local $$30)
     )
    )
    (set_local $$7
     (get_local $$32)
    )
    (set_local $$33
     (get_local $$8)
    )
    (set_local $$34
     (i32.add
      (get_local $$9)
      (get_local $$33)
     )
    )
    (set_local $$35
     (i32.load8_s
      (get_local $$34)
     )
    )
    (set_local $$36
     (get_local $$4)
    )
    (set_local $$37
     (get_local $$5)
    )
    (set_local $$38
     (call $__ZNK9FastNoise12SinglePerlinEhff
      (get_local $$9)
      (get_local $$35)
      (get_local $$36)
      (get_local $$37)
     )
    )
    (set_local $$39
     (call $__ZL7FastAbsf
      (get_local $$38)
     )
    )
    (set_local $$40
     (f32.sub
      (f32.const 1)
      (get_local $$39)
     )
    )
    (set_local $$41
     (get_local $$7)
    )
    (set_local $$42
     (f32.mul
      (get_local $$40)
      (get_local $$41)
     )
    )
    (set_local $$43
     (get_local $$6)
    )
    (set_local $$44
     (f32.sub
      (get_local $$43)
      (get_local $$42)
     )
    )
    (set_local $$6
     (get_local $$44)
    )
    (br $while-in)
   )
  )
  (set_local $$45
   (get_local $$6)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$45)
  )
 )
 (func $__ZNK9FastNoise13SingleSimplexEhff (param $$0 i32) (param $$1 i32) (param $$2 f32) (param $$3 f32) (result f32)
  (local $$10 i32)
  (local $$100 f32)
  (local $$101 f32)
  (local $$102 f32)
  (local $$103 f32)
  (local $$104 f32)
  (local $$105 f32)
  (local $$106 f32)
  (local $$107 i32)
  (local $$108 f32)
  (local $$109 f32)
  (local $$11 f32)
  (local $$110 f32)
  (local $$111 f32)
  (local $$112 f32)
  (local $$113 f32)
  (local $$114 i32)
  (local $$115 i32)
  (local $$116 i32)
  (local $$117 i32)
  (local $$118 i32)
  (local $$119 i32)
  (local $$12 f32)
  (local $$120 i32)
  (local $$121 f32)
  (local $$122 f32)
  (local $$123 f32)
  (local $$124 f32)
  (local $$125 f32)
  (local $$126 f32)
  (local $$127 f32)
  (local $$128 f32)
  (local $$129 f32)
  (local $$13 f32)
  (local $$130 f32)
  (local $$131 f32)
  (local $$132 f32)
  (local $$133 f32)
  (local $$134 i32)
  (local $$135 f32)
  (local $$136 f32)
  (local $$137 f32)
  (local $$138 f32)
  (local $$139 f32)
  (local $$14 f32)
  (local $$140 f32)
  (local $$141 i32)
  (local $$142 i32)
  (local $$143 i32)
  (local $$144 i32)
  (local $$145 i32)
  (local $$146 f32)
  (local $$147 f32)
  (local $$148 f32)
  (local $$149 f32)
  (local $$15 i32)
  (local $$150 f32)
  (local $$151 f32)
  (local $$152 f32)
  (local $$153 f32)
  (local $$154 f32)
  (local $$155 f32)
  (local $$16 i32)
  (local $$17 f32)
  (local $$18 f32)
  (local $$19 f32)
  (local $$20 f32)
  (local $$21 f32)
  (local $$22 f32)
  (local $$23 f32)
  (local $$24 i32)
  (local $$25 f32)
  (local $$26 f32)
  (local $$27 f32)
  (local $$28 f32)
  (local $$29 f32)
  (local $$30 f32)
  (local $$31 f32)
  (local $$32 i32)
  (local $$33 f32)
  (local $$34 f32)
  (local $$35 f32)
  (local $$36 i32)
  (local $$37 i32)
  (local $$38 i32)
  (local $$39 i32)
  (local $$4 i32)
  (local $$40 f32)
  (local $$41 f32)
  (local $$42 i32)
  (local $$43 f32)
  (local $$44 f32)
  (local $$45 f32)
  (local $$46 i32)
  (local $$47 f32)
  (local $$48 f32)
  (local $$49 f32)
  (local $$5 i32)
  (local $$50 f32)
  (local $$51 f32)
  (local $$52 f32)
  (local $$53 f32)
  (local $$54 f32)
  (local $$55 f32)
  (local $$56 f32)
  (local $$57 f32)
  (local $$58 i32)
  (local $$59 f32)
  (local $$6 f32)
  (local $$60 i32)
  (local $$61 f32)
  (local $$62 f32)
  (local $$63 f32)
  (local $$64 f32)
  (local $$65 i32)
  (local $$66 f32)
  (local $$67 f32)
  (local $$68 f32)
  (local $$69 f32)
  (local $$7 f32)
  (local $$70 f32)
  (local $$71 f32)
  (local $$72 f32)
  (local $$73 f32)
  (local $$74 f32)
  (local $$75 f32)
  (local $$76 f32)
  (local $$77 f32)
  (local $$78 f32)
  (local $$79 f32)
  (local $$8 f32)
  (local $$80 f32)
  (local $$81 f32)
  (local $$82 f32)
  (local $$83 f32)
  (local $$84 i32)
  (local $$85 f32)
  (local $$86 f32)
  (local $$87 f32)
  (local $$88 f32)
  (local $$89 f32)
  (local $$9 i32)
  (local $$90 f32)
  (local $$91 i32)
  (local $$92 i32)
  (local $$93 i32)
  (local $$94 f32)
  (local $$95 f32)
  (local $$96 f32)
  (local $$97 f32)
  (local $$98 f32)
  (local $$99 f32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 80)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 80)
   )
  )
  (set_local $$4
   (get_local $$0)
  )
  (set_local $$5
   (get_local $$1)
  )
  (set_local $$6
   (get_local $$2)
  )
  (set_local $$7
   (get_local $$3)
  )
  (set_local $$24
   (get_local $$4)
  )
  (set_local $$25
   (get_local $$6)
  )
  (set_local $$26
   (get_local $$7)
  )
  (set_local $$27
   (f32.add
    (get_local $$25)
    (get_local $$26)
   )
  )
  (set_local $$28
   (f32.mul
    (get_local $$27)
    (f32.const 0.3660253882408142)
   )
  )
  (set_local $$8
   (get_local $$28)
  )
  (set_local $$29
   (get_local $$6)
  )
  (set_local $$30
   (get_local $$8)
  )
  (set_local $$31
   (f32.add
    (get_local $$29)
    (get_local $$30)
   )
  )
  (set_local $$32
   (call $__ZL9FastFloorf
    (get_local $$31)
   )
  )
  (set_local $$9
   (get_local $$32)
  )
  (set_local $$33
   (get_local $$7)
  )
  (set_local $$34
   (get_local $$8)
  )
  (set_local $$35
   (f32.add
    (get_local $$33)
    (get_local $$34)
   )
  )
  (set_local $$36
   (call $__ZL9FastFloorf
    (get_local $$35)
   )
  )
  (set_local $$10
   (get_local $$36)
  )
  (set_local $$37
   (get_local $$9)
  )
  (set_local $$38
   (get_local $$10)
  )
  (set_local $$39
   (i32.add
    (get_local $$37)
    (get_local $$38)
   )
  )
  (set_local $$40
   (f32.convert_s/i32
    (get_local $$39)
   )
  )
  (set_local $$41
   (f32.mul
    (get_local $$40)
    (f32.const 0.21132487058639526)
   )
  )
  (set_local $$8
   (get_local $$41)
  )
  (set_local $$42
   (get_local $$9)
  )
  (set_local $$43
   (f32.convert_s/i32
    (get_local $$42)
   )
  )
  (set_local $$44
   (get_local $$8)
  )
  (set_local $$45
   (f32.sub
    (get_local $$43)
    (get_local $$44)
   )
  )
  (set_local $$11
   (get_local $$45)
  )
  (set_local $$46
   (get_local $$10)
  )
  (set_local $$47
   (f32.convert_s/i32
    (get_local $$46)
   )
  )
  (set_local $$48
   (get_local $$8)
  )
  (set_local $$49
   (f32.sub
    (get_local $$47)
    (get_local $$48)
   )
  )
  (set_local $$12
   (get_local $$49)
  )
  (set_local $$50
   (get_local $$6)
  )
  (set_local $$51
   (get_local $$11)
  )
  (set_local $$52
   (f32.sub
    (get_local $$50)
    (get_local $$51)
   )
  )
  (set_local $$13
   (get_local $$52)
  )
  (set_local $$53
   (get_local $$7)
  )
  (set_local $$54
   (get_local $$12)
  )
  (set_local $$55
   (f32.sub
    (get_local $$53)
    (get_local $$54)
   )
  )
  (set_local $$14
   (get_local $$55)
  )
  (set_local $$56
   (get_local $$13)
  )
  (set_local $$57
   (get_local $$14)
  )
  (set_local $$58
   (f32.gt
    (get_local $$56)
    (get_local $$57)
   )
  )
  (if
   (get_local $$58)
   (block
    (set_local $$15
     (i32.const 1)
    )
    (set_local $$16
     (i32.const 0)
    )
   )
   (block
    (set_local $$15
     (i32.const 0)
    )
    (set_local $$16
     (i32.const 1)
    )
   )
  )
  (set_local $$59
   (get_local $$13)
  )
  (set_local $$60
   (get_local $$15)
  )
  (set_local $$61
   (f32.convert_s/i32
    (get_local $$60)
   )
  )
  (set_local $$62
   (f32.sub
    (get_local $$59)
    (get_local $$61)
   )
  )
  (set_local $$63
   (f32.add
    (get_local $$62)
    (f32.const 0.21132487058639526)
   )
  )
  (set_local $$17
   (get_local $$63)
  )
  (set_local $$64
   (get_local $$14)
  )
  (set_local $$65
   (get_local $$16)
  )
  (set_local $$66
   (f32.convert_s/i32
    (get_local $$65)
   )
  )
  (set_local $$67
   (f32.sub
    (get_local $$64)
    (get_local $$66)
   )
  )
  (set_local $$68
   (f32.add
    (get_local $$67)
    (f32.const 0.21132487058639526)
   )
  )
  (set_local $$18
   (get_local $$68)
  )
  (set_local $$69
   (get_local $$13)
  )
  (set_local $$70
   (f32.sub
    (get_local $$69)
    (f32.const 1)
   )
  )
  (set_local $$71
   (f32.add
    (get_local $$70)
    (f32.const 0.4226497411727905)
   )
  )
  (set_local $$19
   (get_local $$71)
  )
  (set_local $$72
   (get_local $$14)
  )
  (set_local $$73
   (f32.sub
    (get_local $$72)
    (f32.const 1)
   )
  )
  (set_local $$74
   (f32.add
    (get_local $$73)
    (f32.const 0.4226497411727905)
   )
  )
  (set_local $$20
   (get_local $$74)
  )
  (set_local $$75
   (get_local $$13)
  )
  (set_local $$76
   (get_local $$13)
  )
  (set_local $$77
   (f32.mul
    (get_local $$75)
    (get_local $$76)
   )
  )
  (set_local $$78
   (f32.sub
    (f32.const 0.5)
    (get_local $$77)
   )
  )
  (set_local $$79
   (get_local $$14)
  )
  (set_local $$80
   (get_local $$14)
  )
  (set_local $$81
   (f32.mul
    (get_local $$79)
    (get_local $$80)
   )
  )
  (set_local $$82
   (f32.sub
    (get_local $$78)
    (get_local $$81)
   )
  )
  (set_local $$8
   (get_local $$82)
  )
  (set_local $$83
   (get_local $$8)
  )
  (set_local $$84
   (f32.lt
    (get_local $$83)
    (f32.const 0)
   )
  )
  (if
   (get_local $$84)
   (set_local $$21
    (f32.const 0)
   )
   (block
    (set_local $$85
     (get_local $$8)
    )
    (set_local $$86
     (get_local $$8)
    )
    (set_local $$87
     (f32.mul
      (get_local $$86)
      (get_local $$85)
     )
    )
    (set_local $$8
     (get_local $$87)
    )
    (set_local $$88
     (get_local $$8)
    )
    (set_local $$89
     (get_local $$8)
    )
    (set_local $$90
     (f32.mul
      (get_local $$88)
      (get_local $$89)
     )
    )
    (set_local $$91
     (get_local $$5)
    )
    (set_local $$92
     (get_local $$9)
    )
    (set_local $$93
     (get_local $$10)
    )
    (set_local $$94
     (get_local $$13)
    )
    (set_local $$95
     (get_local $$14)
    )
    (set_local $$96
     (call $__ZNK9FastNoise11GradCoord2DEhiiff
      (get_local $$24)
      (get_local $$91)
      (get_local $$92)
      (get_local $$93)
      (get_local $$94)
      (get_local $$95)
     )
    )
    (set_local $$97
     (f32.mul
      (get_local $$90)
      (get_local $$96)
     )
    )
    (set_local $$21
     (get_local $$97)
    )
   )
  )
  (set_local $$98
   (get_local $$17)
  )
  (set_local $$99
   (get_local $$17)
  )
  (set_local $$100
   (f32.mul
    (get_local $$98)
    (get_local $$99)
   )
  )
  (set_local $$101
   (f32.sub
    (f32.const 0.5)
    (get_local $$100)
   )
  )
  (set_local $$102
   (get_local $$18)
  )
  (set_local $$103
   (get_local $$18)
  )
  (set_local $$104
   (f32.mul
    (get_local $$102)
    (get_local $$103)
   )
  )
  (set_local $$105
   (f32.sub
    (get_local $$101)
    (get_local $$104)
   )
  )
  (set_local $$8
   (get_local $$105)
  )
  (set_local $$106
   (get_local $$8)
  )
  (set_local $$107
   (f32.lt
    (get_local $$106)
    (f32.const 0)
   )
  )
  (if
   (get_local $$107)
   (set_local $$22
    (f32.const 0)
   )
   (block
    (set_local $$108
     (get_local $$8)
    )
    (set_local $$109
     (get_local $$8)
    )
    (set_local $$110
     (f32.mul
      (get_local $$109)
      (get_local $$108)
     )
    )
    (set_local $$8
     (get_local $$110)
    )
    (set_local $$111
     (get_local $$8)
    )
    (set_local $$112
     (get_local $$8)
    )
    (set_local $$113
     (f32.mul
      (get_local $$111)
      (get_local $$112)
     )
    )
    (set_local $$114
     (get_local $$5)
    )
    (set_local $$115
     (get_local $$9)
    )
    (set_local $$116
     (get_local $$15)
    )
    (set_local $$117
     (i32.add
      (get_local $$115)
      (get_local $$116)
     )
    )
    (set_local $$118
     (get_local $$10)
    )
    (set_local $$119
     (get_local $$16)
    )
    (set_local $$120
     (i32.add
      (get_local $$118)
      (get_local $$119)
     )
    )
    (set_local $$121
     (get_local $$17)
    )
    (set_local $$122
     (get_local $$18)
    )
    (set_local $$123
     (call $__ZNK9FastNoise11GradCoord2DEhiiff
      (get_local $$24)
      (get_local $$114)
      (get_local $$117)
      (get_local $$120)
      (get_local $$121)
      (get_local $$122)
     )
    )
    (set_local $$124
     (f32.mul
      (get_local $$113)
      (get_local $$123)
     )
    )
    (set_local $$22
     (get_local $$124)
    )
   )
  )
  (set_local $$125
   (get_local $$19)
  )
  (set_local $$126
   (get_local $$19)
  )
  (set_local $$127
   (f32.mul
    (get_local $$125)
    (get_local $$126)
   )
  )
  (set_local $$128
   (f32.sub
    (f32.const 0.5)
    (get_local $$127)
   )
  )
  (set_local $$129
   (get_local $$20)
  )
  (set_local $$130
   (get_local $$20)
  )
  (set_local $$131
   (f32.mul
    (get_local $$129)
    (get_local $$130)
   )
  )
  (set_local $$132
   (f32.sub
    (get_local $$128)
    (get_local $$131)
   )
  )
  (set_local $$8
   (get_local $$132)
  )
  (set_local $$133
   (get_local $$8)
  )
  (set_local $$134
   (f32.lt
    (get_local $$133)
    (f32.const 0)
   )
  )
  (if
   (get_local $$134)
   (block
    (set_local $$23
     (f32.const 0)
    )
    (set_local $$150
     (get_local $$21)
    )
    (set_local $$151
     (get_local $$22)
    )
    (set_local $$152
     (f32.add
      (get_local $$150)
      (get_local $$151)
     )
    )
    (set_local $$153
     (get_local $$23)
    )
    (set_local $$154
     (f32.add
      (get_local $$152)
      (get_local $$153)
     )
    )
    (set_local $$155
     (f32.mul
      (f32.const 70)
      (get_local $$154)
     )
    )
    (set_global $STACKTOP
     (get_local $sp)
    )
    (return
     (get_local $$155)
    )
   )
   (block
    (set_local $$135
     (get_local $$8)
    )
    (set_local $$136
     (get_local $$8)
    )
    (set_local $$137
     (f32.mul
      (get_local $$136)
      (get_local $$135)
     )
    )
    (set_local $$8
     (get_local $$137)
    )
    (set_local $$138
     (get_local $$8)
    )
    (set_local $$139
     (get_local $$8)
    )
    (set_local $$140
     (f32.mul
      (get_local $$138)
      (get_local $$139)
     )
    )
    (set_local $$141
     (get_local $$5)
    )
    (set_local $$142
     (get_local $$9)
    )
    (set_local $$143
     (i32.add
      (get_local $$142)
      (i32.const 1)
     )
    )
    (set_local $$144
     (get_local $$10)
    )
    (set_local $$145
     (i32.add
      (get_local $$144)
      (i32.const 1)
     )
    )
    (set_local $$146
     (get_local $$19)
    )
    (set_local $$147
     (get_local $$20)
    )
    (set_local $$148
     (call $__ZNK9FastNoise11GradCoord2DEhiiff
      (get_local $$24)
      (get_local $$141)
      (get_local $$143)
      (get_local $$145)
      (get_local $$146)
      (get_local $$147)
     )
    )
    (set_local $$149
     (f32.mul
      (get_local $$140)
      (get_local $$148)
     )
    )
    (set_local $$23
     (get_local $$149)
    )
    (set_local $$150
     (get_local $$21)
    )
    (set_local $$151
     (get_local $$22)
    )
    (set_local $$152
     (f32.add
      (get_local $$150)
      (get_local $$151)
     )
    )
    (set_local $$153
     (get_local $$23)
    )
    (set_local $$154
     (f32.add
      (get_local $$152)
      (get_local $$153)
     )
    )
    (set_local $$155
     (f32.mul
      (f32.const 70)
      (get_local $$154)
     )
    )
    (set_global $STACKTOP
     (get_local $sp)
    )
    (return
     (get_local $$155)
    )
   )
  )
  (return
   (f32.const 0)
  )
 )
 (func $__ZNK9FastNoise23SingleSimplexFractalFBMEff (param $$0 i32) (param $$1 f32) (param $$2 f32) (result f32)
  (local $$10 i32)
  (local $$11 f32)
  (local $$12 f32)
  (local $$13 f32)
  (local $$14 i32)
  (local $$15 i32)
  (local $$16 i32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$19 i32)
  (local $$20 f32)
  (local $$21 f32)
  (local $$22 f32)
  (local $$23 i32)
  (local $$24 f32)
  (local $$25 f32)
  (local $$26 f32)
  (local $$27 i32)
  (local $$28 f32)
  (local $$29 f32)
  (local $$3 i32)
  (local $$30 f32)
  (local $$31 i32)
  (local $$32 i32)
  (local $$33 i32)
  (local $$34 f32)
  (local $$35 f32)
  (local $$36 f32)
  (local $$37 f32)
  (local $$38 f32)
  (local $$39 f32)
  (local $$4 f32)
  (local $$40 f32)
  (local $$41 f32)
  (local $$42 i32)
  (local $$43 f32)
  (local $$44 f32)
  (local $$5 f32)
  (local $$6 f32)
  (local $$7 f32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 32)
   )
  )
  (set_local $$3
   (get_local $$0)
  )
  (set_local $$4
   (get_local $$1)
  )
  (set_local $$5
   (get_local $$2)
  )
  (set_local $$9
   (get_local $$3)
  )
  (set_local $$10
   (i32.load8_s
    (get_local $$9)
   )
  )
  (set_local $$11
   (get_local $$4)
  )
  (set_local $$12
   (get_local $$5)
  )
  (set_local $$13
   (call $__ZNK9FastNoise13SingleSimplexEhff
    (get_local $$9)
    (get_local $$10)
    (get_local $$11)
    (get_local $$12)
   )
  )
  (set_local $$6
   (get_local $$13)
  )
  (set_local $$7
   (f32.const 1)
  )
  (set_local $$8
   (i32.const 0)
  )
  (loop $while-in
   (block $while-out
    (set_local $$14
     (get_local $$8)
    )
    (set_local $$15
     (i32.add
      (get_local $$14)
      (i32.const 1)
     )
    )
    (set_local $$8
     (get_local $$15)
    )
    (set_local $$16
     (i32.add
      (get_local $$9)
      (i32.const 1040)
     )
    )
    (set_local $$17
     (i32.load
      (get_local $$16)
     )
    )
    (set_local $$18
     (i32.lt_s
      (get_local $$15)
      (get_local $$17)
     )
    )
    (if
     (i32.eqz
      (get_local $$18)
     )
     (br $while-out)
    )
    (set_local $$19
     (i32.add
      (get_local $$9)
      (i32.const 1044)
     )
    )
    (set_local $$20
     (f32.load
      (get_local $$19)
     )
    )
    (set_local $$21
     (get_local $$4)
    )
    (set_local $$22
     (f32.mul
      (get_local $$21)
      (get_local $$20)
     )
    )
    (set_local $$4
     (get_local $$22)
    )
    (set_local $$23
     (i32.add
      (get_local $$9)
      (i32.const 1044)
     )
    )
    (set_local $$24
     (f32.load
      (get_local $$23)
     )
    )
    (set_local $$25
     (get_local $$5)
    )
    (set_local $$26
     (f32.mul
      (get_local $$25)
      (get_local $$24)
     )
    )
    (set_local $$5
     (get_local $$26)
    )
    (set_local $$27
     (i32.add
      (get_local $$9)
      (i32.const 1048)
     )
    )
    (set_local $$28
     (f32.load
      (get_local $$27)
     )
    )
    (set_local $$29
     (get_local $$7)
    )
    (set_local $$30
     (f32.mul
      (get_local $$29)
      (get_local $$28)
     )
    )
    (set_local $$7
     (get_local $$30)
    )
    (set_local $$31
     (get_local $$8)
    )
    (set_local $$32
     (i32.add
      (get_local $$9)
      (get_local $$31)
     )
    )
    (set_local $$33
     (i32.load8_s
      (get_local $$32)
     )
    )
    (set_local $$34
     (get_local $$4)
    )
    (set_local $$35
     (get_local $$5)
    )
    (set_local $$36
     (call $__ZNK9FastNoise13SingleSimplexEhff
      (get_local $$9)
      (get_local $$33)
      (get_local $$34)
      (get_local $$35)
     )
    )
    (set_local $$37
     (get_local $$7)
    )
    (set_local $$38
     (f32.mul
      (get_local $$36)
      (get_local $$37)
     )
    )
    (set_local $$39
     (get_local $$6)
    )
    (set_local $$40
     (f32.add
      (get_local $$39)
      (get_local $$38)
     )
    )
    (set_local $$6
     (get_local $$40)
    )
    (br $while-in)
   )
  )
  (set_local $$41
   (get_local $$6)
  )
  (set_local $$42
   (i32.add
    (get_local $$9)
    (i32.const 1056)
   )
  )
  (set_local $$43
   (f32.load
    (get_local $$42)
   )
  )
  (set_local $$44
   (f32.mul
    (get_local $$41)
    (get_local $$43)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$44)
  )
 )
 (func $__ZNK9FastNoise26SingleSimplexFractalBillowEff (param $$0 i32) (param $$1 f32) (param $$2 f32) (result f32)
  (local $$10 i32)
  (local $$11 f32)
  (local $$12 f32)
  (local $$13 f32)
  (local $$14 f32)
  (local $$15 f32)
  (local $$16 f32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$19 i32)
  (local $$20 i32)
  (local $$21 i32)
  (local $$22 i32)
  (local $$23 f32)
  (local $$24 f32)
  (local $$25 f32)
  (local $$26 i32)
  (local $$27 f32)
  (local $$28 f32)
  (local $$29 f32)
  (local $$3 i32)
  (local $$30 i32)
  (local $$31 f32)
  (local $$32 f32)
  (local $$33 f32)
  (local $$34 i32)
  (local $$35 i32)
  (local $$36 i32)
  (local $$37 f32)
  (local $$38 f32)
  (local $$39 f32)
  (local $$4 f32)
  (local $$40 f32)
  (local $$41 f32)
  (local $$42 f32)
  (local $$43 f32)
  (local $$44 f32)
  (local $$45 f32)
  (local $$46 f32)
  (local $$47 f32)
  (local $$48 i32)
  (local $$49 f32)
  (local $$5 f32)
  (local $$50 f32)
  (local $$6 f32)
  (local $$7 f32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 32)
   )
  )
  (set_local $$3
   (get_local $$0)
  )
  (set_local $$4
   (get_local $$1)
  )
  (set_local $$5
   (get_local $$2)
  )
  (set_local $$9
   (get_local $$3)
  )
  (set_local $$10
   (i32.load8_s
    (get_local $$9)
   )
  )
  (set_local $$11
   (get_local $$4)
  )
  (set_local $$12
   (get_local $$5)
  )
  (set_local $$13
   (call $__ZNK9FastNoise13SingleSimplexEhff
    (get_local $$9)
    (get_local $$10)
    (get_local $$11)
    (get_local $$12)
   )
  )
  (set_local $$14
   (call $__ZL7FastAbsf
    (get_local $$13)
   )
  )
  (set_local $$15
   (f32.mul
    (get_local $$14)
    (f32.const 2)
   )
  )
  (set_local $$16
   (f32.sub
    (get_local $$15)
    (f32.const 1)
   )
  )
  (set_local $$6
   (get_local $$16)
  )
  (set_local $$7
   (f32.const 1)
  )
  (set_local $$8
   (i32.const 0)
  )
  (loop $while-in
   (block $while-out
    (set_local $$17
     (get_local $$8)
    )
    (set_local $$18
     (i32.add
      (get_local $$17)
      (i32.const 1)
     )
    )
    (set_local $$8
     (get_local $$18)
    )
    (set_local $$19
     (i32.add
      (get_local $$9)
      (i32.const 1040)
     )
    )
    (set_local $$20
     (i32.load
      (get_local $$19)
     )
    )
    (set_local $$21
     (i32.lt_s
      (get_local $$18)
      (get_local $$20)
     )
    )
    (if
     (i32.eqz
      (get_local $$21)
     )
     (br $while-out)
    )
    (set_local $$22
     (i32.add
      (get_local $$9)
      (i32.const 1044)
     )
    )
    (set_local $$23
     (f32.load
      (get_local $$22)
     )
    )
    (set_local $$24
     (get_local $$4)
    )
    (set_local $$25
     (f32.mul
      (get_local $$24)
      (get_local $$23)
     )
    )
    (set_local $$4
     (get_local $$25)
    )
    (set_local $$26
     (i32.add
      (get_local $$9)
      (i32.const 1044)
     )
    )
    (set_local $$27
     (f32.load
      (get_local $$26)
     )
    )
    (set_local $$28
     (get_local $$5)
    )
    (set_local $$29
     (f32.mul
      (get_local $$28)
      (get_local $$27)
     )
    )
    (set_local $$5
     (get_local $$29)
    )
    (set_local $$30
     (i32.add
      (get_local $$9)
      (i32.const 1048)
     )
    )
    (set_local $$31
     (f32.load
      (get_local $$30)
     )
    )
    (set_local $$32
     (get_local $$7)
    )
    (set_local $$33
     (f32.mul
      (get_local $$32)
      (get_local $$31)
     )
    )
    (set_local $$7
     (get_local $$33)
    )
    (set_local $$34
     (get_local $$8)
    )
    (set_local $$35
     (i32.add
      (get_local $$9)
      (get_local $$34)
     )
    )
    (set_local $$36
     (i32.load8_s
      (get_local $$35)
     )
    )
    (set_local $$37
     (get_local $$4)
    )
    (set_local $$38
     (get_local $$5)
    )
    (set_local $$39
     (call $__ZNK9FastNoise13SingleSimplexEhff
      (get_local $$9)
      (get_local $$36)
      (get_local $$37)
      (get_local $$38)
     )
    )
    (set_local $$40
     (call $__ZL7FastAbsf
      (get_local $$39)
     )
    )
    (set_local $$41
     (f32.mul
      (get_local $$40)
      (f32.const 2)
     )
    )
    (set_local $$42
     (f32.sub
      (get_local $$41)
      (f32.const 1)
     )
    )
    (set_local $$43
     (get_local $$7)
    )
    (set_local $$44
     (f32.mul
      (get_local $$42)
      (get_local $$43)
     )
    )
    (set_local $$45
     (get_local $$6)
    )
    (set_local $$46
     (f32.add
      (get_local $$45)
      (get_local $$44)
     )
    )
    (set_local $$6
     (get_local $$46)
    )
    (br $while-in)
   )
  )
  (set_local $$47
   (get_local $$6)
  )
  (set_local $$48
   (i32.add
    (get_local $$9)
    (i32.const 1056)
   )
  )
  (set_local $$49
   (f32.load
    (get_local $$48)
   )
  )
  (set_local $$50
   (f32.mul
    (get_local $$47)
    (get_local $$49)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$50)
  )
 )
 (func $__ZNK9FastNoise30SingleSimplexFractalRigidMultiEff (param $$0 i32) (param $$1 f32) (param $$2 f32) (result f32)
  (local $$10 i32)
  (local $$11 f32)
  (local $$12 f32)
  (local $$13 f32)
  (local $$14 f32)
  (local $$15 f32)
  (local $$16 i32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$19 i32)
  (local $$20 i32)
  (local $$21 i32)
  (local $$22 f32)
  (local $$23 f32)
  (local $$24 f32)
  (local $$25 i32)
  (local $$26 f32)
  (local $$27 f32)
  (local $$28 f32)
  (local $$29 i32)
  (local $$3 i32)
  (local $$30 f32)
  (local $$31 f32)
  (local $$32 f32)
  (local $$33 i32)
  (local $$34 i32)
  (local $$35 i32)
  (local $$36 f32)
  (local $$37 f32)
  (local $$38 f32)
  (local $$39 f32)
  (local $$4 f32)
  (local $$40 f32)
  (local $$41 f32)
  (local $$42 f32)
  (local $$43 f32)
  (local $$44 f32)
  (local $$45 f32)
  (local $$5 f32)
  (local $$6 f32)
  (local $$7 f32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 32)
   )
  )
  (set_local $$3
   (get_local $$0)
  )
  (set_local $$4
   (get_local $$1)
  )
  (set_local $$5
   (get_local $$2)
  )
  (set_local $$9
   (get_local $$3)
  )
  (set_local $$10
   (i32.load8_s
    (get_local $$9)
   )
  )
  (set_local $$11
   (get_local $$4)
  )
  (set_local $$12
   (get_local $$5)
  )
  (set_local $$13
   (call $__ZNK9FastNoise13SingleSimplexEhff
    (get_local $$9)
    (get_local $$10)
    (get_local $$11)
    (get_local $$12)
   )
  )
  (set_local $$14
   (call $__ZL7FastAbsf
    (get_local $$13)
   )
  )
  (set_local $$15
   (f32.sub
    (f32.const 1)
    (get_local $$14)
   )
  )
  (set_local $$6
   (get_local $$15)
  )
  (set_local $$7
   (f32.const 1)
  )
  (set_local $$8
   (i32.const 0)
  )
  (loop $while-in
   (block $while-out
    (set_local $$16
     (get_local $$8)
    )
    (set_local $$17
     (i32.add
      (get_local $$16)
      (i32.const 1)
     )
    )
    (set_local $$8
     (get_local $$17)
    )
    (set_local $$18
     (i32.add
      (get_local $$9)
      (i32.const 1040)
     )
    )
    (set_local $$19
     (i32.load
      (get_local $$18)
     )
    )
    (set_local $$20
     (i32.lt_s
      (get_local $$17)
      (get_local $$19)
     )
    )
    (if
     (i32.eqz
      (get_local $$20)
     )
     (br $while-out)
    )
    (set_local $$21
     (i32.add
      (get_local $$9)
      (i32.const 1044)
     )
    )
    (set_local $$22
     (f32.load
      (get_local $$21)
     )
    )
    (set_local $$23
     (get_local $$4)
    )
    (set_local $$24
     (f32.mul
      (get_local $$23)
      (get_local $$22)
     )
    )
    (set_local $$4
     (get_local $$24)
    )
    (set_local $$25
     (i32.add
      (get_local $$9)
      (i32.const 1044)
     )
    )
    (set_local $$26
     (f32.load
      (get_local $$25)
     )
    )
    (set_local $$27
     (get_local $$5)
    )
    (set_local $$28
     (f32.mul
      (get_local $$27)
      (get_local $$26)
     )
    )
    (set_local $$5
     (get_local $$28)
    )
    (set_local $$29
     (i32.add
      (get_local $$9)
      (i32.const 1048)
     )
    )
    (set_local $$30
     (f32.load
      (get_local $$29)
     )
    )
    (set_local $$31
     (get_local $$7)
    )
    (set_local $$32
     (f32.mul
      (get_local $$31)
      (get_local $$30)
     )
    )
    (set_local $$7
     (get_local $$32)
    )
    (set_local $$33
     (get_local $$8)
    )
    (set_local $$34
     (i32.add
      (get_local $$9)
      (get_local $$33)
     )
    )
    (set_local $$35
     (i32.load8_s
      (get_local $$34)
     )
    )
    (set_local $$36
     (get_local $$4)
    )
    (set_local $$37
     (get_local $$5)
    )
    (set_local $$38
     (call $__ZNK9FastNoise13SingleSimplexEhff
      (get_local $$9)
      (get_local $$35)
      (get_local $$36)
      (get_local $$37)
     )
    )
    (set_local $$39
     (call $__ZL7FastAbsf
      (get_local $$38)
     )
    )
    (set_local $$40
     (f32.sub
      (f32.const 1)
      (get_local $$39)
     )
    )
    (set_local $$41
     (get_local $$7)
    )
    (set_local $$42
     (f32.mul
      (get_local $$40)
      (get_local $$41)
     )
    )
    (set_local $$43
     (get_local $$6)
    )
    (set_local $$44
     (f32.sub
      (get_local $$43)
      (get_local $$42)
     )
    )
    (set_local $$6
     (get_local $$44)
    )
    (br $while-in)
   )
  )
  (set_local $$45
   (get_local $$6)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$45)
  )
 )
 (func $__ZNK9FastNoise14SingleCellularEff (param $$0 i32) (param $$1 f32) (param $$2 f32) (result f32)
  (local $$10 i32)
  (local $$100 i32)
  (local $$101 i32)
  (local $$102 i32)
  (local $$103 i32)
  (local $$104 i32)
  (local $$105 i32)
  (local $$106 i32)
  (local $$107 i32)
  (local $$108 i32)
  (local $$109 f32)
  (local $$11 i32)
  (local $$110 f32)
  (local $$111 f32)
  (local $$112 i32)
  (local $$113 i32)
  (local $$114 i32)
  (local $$115 f32)
  (local $$116 i32)
  (local $$117 f32)
  (local $$118 f32)
  (local $$119 f32)
  (local $$12 i32)
  (local $$120 i32)
  (local $$121 f32)
  (local $$122 f32)
  (local $$123 f32)
  (local $$124 i32)
  (local $$125 i32)
  (local $$126 i32)
  (local $$127 f32)
  (local $$128 i32)
  (local $$129 f32)
  (local $$13 i32)
  (local $$130 f32)
  (local $$131 f32)
  (local $$132 f32)
  (local $$133 f32)
  (local $$134 f32)
  (local $$135 f32)
  (local $$136 f32)
  (local $$137 f32)
  (local $$138 f32)
  (local $$139 i32)
  (local $$14 i32)
  (local $$140 f32)
  (local $$141 i32)
  (local $$142 i32)
  (local $$143 i32)
  (local $$144 i32)
  (local $$145 i32)
  (local $$146 i32)
  (local $$147 i32)
  (local $$148 i32)
  (local $$149 i32)
  (local $$15 f32)
  (local $$150 i32)
  (local $$151 i32)
  (local $$152 i32)
  (local $$153 i32)
  (local $$154 i32)
  (local $$155 i32)
  (local $$156 i32)
  (local $$157 i32)
  (local $$158 i32)
  (local $$159 i32)
  (local $$16 f32)
  (local $$160 i32)
  (local $$161 i32)
  (local $$162 f32)
  (local $$163 f32)
  (local $$164 f32)
  (local $$165 i32)
  (local $$166 i32)
  (local $$167 i32)
  (local $$168 f32)
  (local $$169 i32)
  (local $$17 f32)
  (local $$170 f32)
  (local $$171 f32)
  (local $$172 f32)
  (local $$173 i32)
  (local $$174 f32)
  (local $$175 f32)
  (local $$176 f32)
  (local $$177 i32)
  (local $$178 i32)
  (local $$179 i32)
  (local $$18 i32)
  (local $$180 f32)
  (local $$181 i32)
  (local $$182 f32)
  (local $$183 f32)
  (local $$184 f32)
  (local $$185 f32)
  (local $$186 f32)
  (local $$187 f32)
  (local $$188 f32)
  (local $$189 f32)
  (local $$19 i32)
  (local $$190 f32)
  (local $$191 f32)
  (local $$192 f32)
  (local $$193 f32)
  (local $$194 f32)
  (local $$195 f32)
  (local $$196 f32)
  (local $$197 f32)
  (local $$198 f32)
  (local $$199 f32)
  (local $$20 i32)
  (local $$200 i32)
  (local $$201 f32)
  (local $$202 i32)
  (local $$203 i32)
  (local $$204 i32)
  (local $$205 i32)
  (local $$206 i32)
  (local $$207 i32)
  (local $$208 i32)
  (local $$209 i32)
  (local $$21 f32)
  (local $$210 i32)
  (local $$211 i32)
  (local $$212 i32)
  (local $$213 f32)
  (local $$214 i32)
  (local $$215 i32)
  (local $$216 i32)
  (local $$217 i32)
  (local $$218 i32)
  (local $$219 i32)
  (local $$22 f32)
  (local $$220 i32)
  (local $$221 i32)
  (local $$222 i32)
  (local $$223 f32)
  (local $$224 i32)
  (local $$225 i32)
  (local $$226 i32)
  (local $$227 f32)
  (local $$228 i32)
  (local $$229 f32)
  (local $$23 f32)
  (local $$230 f32)
  (local $$231 f32)
  (local $$232 i32)
  (local $$233 f32)
  (local $$234 i32)
  (local $$235 i32)
  (local $$236 i32)
  (local $$237 f32)
  (local $$238 i32)
  (local $$239 f32)
  (local $$24 i32)
  (local $$240 f32)
  (local $$241 f32)
  (local $$242 f32)
  (local $$243 f32)
  (local $$244 f32)
  (local $$25 i32)
  (local $$26 i32)
  (local $$27 f32)
  (local $$28 f32)
  (local $$29 f32)
  (local $$3 f32)
  (local $$30 i32)
  (local $$31 i32)
  (local $$32 f32)
  (local $$33 i32)
  (local $$34 f32)
  (local $$35 i32)
  (local $$36 i32)
  (local $$37 i32)
  (local $$38 i32)
  (local $$39 i32)
  (local $$4 i32)
  (local $$40 i32)
  (local $$41 i32)
  (local $$42 i32)
  (local $$43 i32)
  (local $$44 i32)
  (local $$45 i32)
  (local $$46 i32)
  (local $$47 i32)
  (local $$48 i32)
  (local $$49 i32)
  (local $$5 f32)
  (local $$50 i32)
  (local $$51 i32)
  (local $$52 i32)
  (local $$53 i32)
  (local $$54 f32)
  (local $$55 f32)
  (local $$56 f32)
  (local $$57 i32)
  (local $$58 i32)
  (local $$59 i32)
  (local $$6 f32)
  (local $$60 f32)
  (local $$61 i32)
  (local $$62 f32)
  (local $$63 f32)
  (local $$64 f32)
  (local $$65 i32)
  (local $$66 f32)
  (local $$67 f32)
  (local $$68 f32)
  (local $$69 i32)
  (local $$7 i32)
  (local $$70 i32)
  (local $$71 i32)
  (local $$72 f32)
  (local $$73 i32)
  (local $$74 f32)
  (local $$75 f32)
  (local $$76 f32)
  (local $$77 f32)
  (local $$78 f32)
  (local $$79 f32)
  (local $$8 i32)
  (local $$80 f32)
  (local $$81 f32)
  (local $$82 f32)
  (local $$83 f32)
  (local $$84 f32)
  (local $$85 f32)
  (local $$86 i32)
  (local $$87 f32)
  (local $$88 i32)
  (local $$89 i32)
  (local $$9 f32)
  (local $$90 i32)
  (local $$91 i32)
  (local $$92 i32)
  (local $$93 i32)
  (local $$94 i32)
  (local $$95 i32)
  (local $$96 i32)
  (local $$97 i32)
  (local $$98 i32)
  (local $$99 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 112)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 112)
   )
  )
  (set_local $$4
   (get_local $$0)
  )
  (set_local $$5
   (get_local $$1)
  )
  (set_local $$6
   (get_local $$2)
  )
  (set_local $$31
   (get_local $$4)
  )
  (set_local $$32
   (get_local $$5)
  )
  (set_local $$33
   (call $__ZL9FastRoundf
    (get_local $$32)
   )
  )
  (set_local $$7
   (get_local $$33)
  )
  (set_local $$34
   (get_local $$6)
  )
  (set_local $$35
   (call $__ZL9FastRoundf
    (get_local $$34)
   )
  )
  (set_local $$8
   (get_local $$35)
  )
  (set_local $$9
   (f32.const 999999)
  )
  (set_local $$36
   (i32.add
    (get_local $$31)
    (i32.const 1060)
   )
  )
  (set_local $$37
   (i32.load
    (get_local $$36)
   )
  )
  (block $label$break$L1
   (block $switch
    (block $switch-default
     (block $switch-case6
      (block $switch-case
       (br_table $switch-case6 $switch-case $switch-default
        (i32.sub
         (get_local $$37)
         (i32.const 1)
        )
       )
      )
      (block
       (set_local $$146
        (get_local $$7)
       )
       (set_local $$147
        (i32.sub
         (get_local $$146)
         (i32.const 1)
        )
       )
       (set_local $$24
        (get_local $$147)
       )
       (loop $while-in
        (block $while-out
         (set_local $$148
          (get_local $$24)
         )
         (set_local $$149
          (get_local $$7)
         )
         (set_local $$150
          (i32.add
           (get_local $$149)
           (i32.const 1)
          )
         )
         (set_local $$151
          (i32.le_s
           (get_local $$148)
           (get_local $$150)
          )
         )
         (if
          (i32.eqz
           (get_local $$151)
          )
          (br $label$break$L1)
         )
         (set_local $$152
          (get_local $$8)
         )
         (set_local $$153
          (i32.sub
           (get_local $$152)
           (i32.const 1)
          )
         )
         (set_local $$25
          (get_local $$153)
         )
         (loop $while-in1
          (block $while-out0
           (set_local $$154
            (get_local $$25)
           )
           (set_local $$155
            (get_local $$8)
           )
           (set_local $$156
            (i32.add
             (get_local $$155)
             (i32.const 1)
            )
           )
           (set_local $$157
            (i32.le_s
             (get_local $$154)
             (get_local $$156)
            )
           )
           (set_local $$158
            (get_local $$24)
           )
           (if
            (i32.eqz
             (get_local $$157)
            )
            (br $while-out0)
           )
           (set_local $$159
            (get_local $$25)
           )
           (set_local $$160
            (call $__ZNK9FastNoise11Index2D_256Ehii
             (get_local $$31)
             (i32.const 0)
             (get_local $$158)
             (get_local $$159)
            )
           )
           (set_local $$26
            (get_local $$160)
           )
           (set_local $$161
            (get_local $$24)
           )
           (set_local $$162
            (f32.convert_s/i32
             (get_local $$161)
            )
           )
           (set_local $$163
            (get_local $$5)
           )
           (set_local $$164
            (f32.sub
             (get_local $$162)
             (get_local $$163)
            )
           )
           (set_local $$165
            (get_local $$26)
           )
           (set_local $$166
            (i32.and
             (get_local $$165)
             (i32.const 255)
            )
           )
           (set_local $$167
            (i32.add
             (i32.const 5944)
             (i32.shl
              (get_local $$166)
              (i32.const 2)
             )
            )
           )
           (set_local $$168
            (f32.load
             (get_local $$167)
            )
           )
           (set_local $$169
            (i32.add
             (get_local $$31)
             (i32.const 1080)
            )
           )
           (set_local $$170
            (f32.load
             (get_local $$169)
            )
           )
           (set_local $$171
            (f32.mul
             (get_local $$168)
             (get_local $$170)
            )
           )
           (set_local $$172
            (f32.add
             (get_local $$164)
             (get_local $$171)
            )
           )
           (set_local $$27
            (get_local $$172)
           )
           (set_local $$173
            (get_local $$25)
           )
           (set_local $$174
            (f32.convert_s/i32
             (get_local $$173)
            )
           )
           (set_local $$175
            (get_local $$6)
           )
           (set_local $$176
            (f32.sub
             (get_local $$174)
             (get_local $$175)
            )
           )
           (set_local $$177
            (get_local $$26)
           )
           (set_local $$178
            (i32.and
             (get_local $$177)
             (i32.const 255)
            )
           )
           (set_local $$179
            (i32.add
             (i32.const 6968)
             (i32.shl
              (get_local $$178)
              (i32.const 2)
             )
            )
           )
           (set_local $$180
            (f32.load
             (get_local $$179)
            )
           )
           (set_local $$181
            (i32.add
             (get_local $$31)
             (i32.const 1080)
            )
           )
           (set_local $$182
            (f32.load
             (get_local $$181)
            )
           )
           (set_local $$183
            (f32.mul
             (get_local $$180)
             (get_local $$182)
            )
           )
           (set_local $$184
            (f32.add
             (get_local $$176)
             (get_local $$183)
            )
           )
           (set_local $$28
            (get_local $$184)
           )
           (set_local $$185
            (get_local $$27)
           )
           (set_local $$186
            (call $__ZL7FastAbsf
             (get_local $$185)
            )
           )
           (set_local $$187
            (get_local $$28)
           )
           (set_local $$188
            (call $__ZL7FastAbsf
             (get_local $$187)
            )
           )
           (set_local $$189
            (f32.add
             (get_local $$186)
             (get_local $$188)
            )
           )
           (set_local $$190
            (get_local $$27)
           )
           (set_local $$191
            (get_local $$27)
           )
           (set_local $$192
            (f32.mul
             (get_local $$190)
             (get_local $$191)
            )
           )
           (set_local $$193
            (get_local $$28)
           )
           (set_local $$194
            (get_local $$28)
           )
           (set_local $$195
            (f32.mul
             (get_local $$193)
             (get_local $$194)
            )
           )
           (set_local $$196
            (f32.add
             (get_local $$192)
             (get_local $$195)
            )
           )
           (set_local $$197
            (f32.add
             (get_local $$189)
             (get_local $$196)
            )
           )
           (set_local $$29
            (get_local $$197)
           )
           (set_local $$198
            (get_local $$29)
           )
           (set_local $$199
            (get_local $$9)
           )
           (set_local $$200
            (f32.lt
             (get_local $$198)
             (get_local $$199)
            )
           )
           (if
            (get_local $$200)
            (block
             (set_local $$201
              (get_local $$29)
             )
             (set_local $$9
              (get_local $$201)
             )
             (set_local $$202
              (get_local $$24)
             )
             (set_local $$10
              (get_local $$202)
             )
             (set_local $$203
              (get_local $$25)
             )
             (set_local $$11
              (get_local $$203)
             )
            )
           )
           (set_local $$204
            (get_local $$25)
           )
           (set_local $$205
            (i32.add
             (get_local $$204)
             (i32.const 1)
            )
           )
           (set_local $$25
            (get_local $$205)
           )
           (br $while-in1)
          )
         )
         (set_local $$206
          (i32.add
           (get_local $$158)
           (i32.const 1)
          )
         )
         (set_local $$24
          (get_local $$206)
         )
         (br $while-in)
        )
       )
       (br $switch)
      )
     )
     (block
      (set_local $$93
       (get_local $$7)
      )
      (set_local $$94
       (i32.sub
        (get_local $$93)
        (i32.const 1)
       )
      )
      (set_local $$18
       (get_local $$94)
      )
      (loop $while-in3
       (block $while-out2
        (set_local $$95
         (get_local $$18)
        )
        (set_local $$96
         (get_local $$7)
        )
        (set_local $$97
         (i32.add
          (get_local $$96)
          (i32.const 1)
         )
        )
        (set_local $$98
         (i32.le_s
          (get_local $$95)
          (get_local $$97)
         )
        )
        (if
         (i32.eqz
          (get_local $$98)
         )
         (br $label$break$L1)
        )
        (set_local $$99
         (get_local $$8)
        )
        (set_local $$100
         (i32.sub
          (get_local $$99)
          (i32.const 1)
         )
        )
        (set_local $$19
         (get_local $$100)
        )
        (loop $while-in5
         (block $while-out4
          (set_local $$101
           (get_local $$19)
          )
          (set_local $$102
           (get_local $$8)
          )
          (set_local $$103
           (i32.add
            (get_local $$102)
            (i32.const 1)
           )
          )
          (set_local $$104
           (i32.le_s
            (get_local $$101)
            (get_local $$103)
           )
          )
          (set_local $$105
           (get_local $$18)
          )
          (if
           (i32.eqz
            (get_local $$104)
           )
           (br $while-out4)
          )
          (set_local $$106
           (get_local $$19)
          )
          (set_local $$107
           (call $__ZNK9FastNoise11Index2D_256Ehii
            (get_local $$31)
            (i32.const 0)
            (get_local $$105)
            (get_local $$106)
           )
          )
          (set_local $$20
           (get_local $$107)
          )
          (set_local $$108
           (get_local $$18)
          )
          (set_local $$109
           (f32.convert_s/i32
            (get_local $$108)
           )
          )
          (set_local $$110
           (get_local $$5)
          )
          (set_local $$111
           (f32.sub
            (get_local $$109)
            (get_local $$110)
           )
          )
          (set_local $$112
           (get_local $$20)
          )
          (set_local $$113
           (i32.and
            (get_local $$112)
            (i32.const 255)
           )
          )
          (set_local $$114
           (i32.add
            (i32.const 5944)
            (i32.shl
             (get_local $$113)
             (i32.const 2)
            )
           )
          )
          (set_local $$115
           (f32.load
            (get_local $$114)
           )
          )
          (set_local $$116
           (i32.add
            (get_local $$31)
            (i32.const 1080)
           )
          )
          (set_local $$117
           (f32.load
            (get_local $$116)
           )
          )
          (set_local $$118
           (f32.mul
            (get_local $$115)
            (get_local $$117)
           )
          )
          (set_local $$119
           (f32.add
            (get_local $$111)
            (get_local $$118)
           )
          )
          (set_local $$21
           (get_local $$119)
          )
          (set_local $$120
           (get_local $$19)
          )
          (set_local $$121
           (f32.convert_s/i32
            (get_local $$120)
           )
          )
          (set_local $$122
           (get_local $$6)
          )
          (set_local $$123
           (f32.sub
            (get_local $$121)
            (get_local $$122)
           )
          )
          (set_local $$124
           (get_local $$20)
          )
          (set_local $$125
           (i32.and
            (get_local $$124)
            (i32.const 255)
           )
          )
          (set_local $$126
           (i32.add
            (i32.const 6968)
            (i32.shl
             (get_local $$125)
             (i32.const 2)
            )
           )
          )
          (set_local $$127
           (f32.load
            (get_local $$126)
           )
          )
          (set_local $$128
           (i32.add
            (get_local $$31)
            (i32.const 1080)
           )
          )
          (set_local $$129
           (f32.load
            (get_local $$128)
           )
          )
          (set_local $$130
           (f32.mul
            (get_local $$127)
            (get_local $$129)
           )
          )
          (set_local $$131
           (f32.add
            (get_local $$123)
            (get_local $$130)
           )
          )
          (set_local $$22
           (get_local $$131)
          )
          (set_local $$132
           (get_local $$21)
          )
          (set_local $$133
           (call $__ZL7FastAbsf
            (get_local $$132)
           )
          )
          (set_local $$134
           (get_local $$22)
          )
          (set_local $$135
           (call $__ZL7FastAbsf
            (get_local $$134)
           )
          )
          (set_local $$136
           (f32.add
            (get_local $$133)
            (get_local $$135)
           )
          )
          (set_local $$23
           (get_local $$136)
          )
          (set_local $$137
           (get_local $$23)
          )
          (set_local $$138
           (get_local $$9)
          )
          (set_local $$139
           (f32.lt
            (get_local $$137)
            (get_local $$138)
           )
          )
          (if
           (get_local $$139)
           (block
            (set_local $$140
             (get_local $$23)
            )
            (set_local $$9
             (get_local $$140)
            )
            (set_local $$141
             (get_local $$18)
            )
            (set_local $$10
             (get_local $$141)
            )
            (set_local $$142
             (get_local $$19)
            )
            (set_local $$11
             (get_local $$142)
            )
           )
          )
          (set_local $$143
           (get_local $$19)
          )
          (set_local $$144
           (i32.add
            (get_local $$143)
            (i32.const 1)
           )
          )
          (set_local $$19
           (get_local $$144)
          )
          (br $while-in5)
         )
        )
        (set_local $$145
         (i32.add
          (get_local $$105)
          (i32.const 1)
         )
        )
        (set_local $$18
         (get_local $$145)
        )
        (br $while-in3)
       )
      )
      (br $switch)
     )
    )
    (block
     (set_local $$38
      (get_local $$7)
     )
     (set_local $$39
      (i32.sub
       (get_local $$38)
       (i32.const 1)
      )
     )
     (set_local $$12
      (get_local $$39)
     )
     (loop $while-in8
      (block $while-out7
       (set_local $$40
        (get_local $$12)
       )
       (set_local $$41
        (get_local $$7)
       )
       (set_local $$42
        (i32.add
         (get_local $$41)
         (i32.const 1)
        )
       )
       (set_local $$43
        (i32.le_s
         (get_local $$40)
         (get_local $$42)
        )
       )
       (if
        (i32.eqz
         (get_local $$43)
        )
        (br $label$break$L1)
       )
       (set_local $$44
        (get_local $$8)
       )
       (set_local $$45
        (i32.sub
         (get_local $$44)
         (i32.const 1)
        )
       )
       (set_local $$13
        (get_local $$45)
       )
       (loop $while-in10
        (block $while-out9
         (set_local $$46
          (get_local $$13)
         )
         (set_local $$47
          (get_local $$8)
         )
         (set_local $$48
          (i32.add
           (get_local $$47)
           (i32.const 1)
          )
         )
         (set_local $$49
          (i32.le_s
           (get_local $$46)
           (get_local $$48)
          )
         )
         (set_local $$50
          (get_local $$12)
         )
         (if
          (i32.eqz
           (get_local $$49)
          )
          (br $while-out9)
         )
         (set_local $$51
          (get_local $$13)
         )
         (set_local $$52
          (call $__ZNK9FastNoise11Index2D_256Ehii
           (get_local $$31)
           (i32.const 0)
           (get_local $$50)
           (get_local $$51)
          )
         )
         (set_local $$14
          (get_local $$52)
         )
         (set_local $$53
          (get_local $$12)
         )
         (set_local $$54
          (f32.convert_s/i32
           (get_local $$53)
          )
         )
         (set_local $$55
          (get_local $$5)
         )
         (set_local $$56
          (f32.sub
           (get_local $$54)
           (get_local $$55)
          )
         )
         (set_local $$57
          (get_local $$14)
         )
         (set_local $$58
          (i32.and
           (get_local $$57)
           (i32.const 255)
          )
         )
         (set_local $$59
          (i32.add
           (i32.const 5944)
           (i32.shl
            (get_local $$58)
            (i32.const 2)
           )
          )
         )
         (set_local $$60
          (f32.load
           (get_local $$59)
          )
         )
         (set_local $$61
          (i32.add
           (get_local $$31)
           (i32.const 1080)
          )
         )
         (set_local $$62
          (f32.load
           (get_local $$61)
          )
         )
         (set_local $$63
          (f32.mul
           (get_local $$60)
           (get_local $$62)
          )
         )
         (set_local $$64
          (f32.add
           (get_local $$56)
           (get_local $$63)
          )
         )
         (set_local $$15
          (get_local $$64)
         )
         (set_local $$65
          (get_local $$13)
         )
         (set_local $$66
          (f32.convert_s/i32
           (get_local $$65)
          )
         )
         (set_local $$67
          (get_local $$6)
         )
         (set_local $$68
          (f32.sub
           (get_local $$66)
           (get_local $$67)
          )
         )
         (set_local $$69
          (get_local $$14)
         )
         (set_local $$70
          (i32.and
           (get_local $$69)
           (i32.const 255)
          )
         )
         (set_local $$71
          (i32.add
           (i32.const 6968)
           (i32.shl
            (get_local $$70)
            (i32.const 2)
           )
          )
         )
         (set_local $$72
          (f32.load
           (get_local $$71)
          )
         )
         (set_local $$73
          (i32.add
           (get_local $$31)
           (i32.const 1080)
          )
         )
         (set_local $$74
          (f32.load
           (get_local $$73)
          )
         )
         (set_local $$75
          (f32.mul
           (get_local $$72)
           (get_local $$74)
          )
         )
         (set_local $$76
          (f32.add
           (get_local $$68)
           (get_local $$75)
          )
         )
         (set_local $$16
          (get_local $$76)
         )
         (set_local $$77
          (get_local $$15)
         )
         (set_local $$78
          (get_local $$15)
         )
         (set_local $$79
          (f32.mul
           (get_local $$77)
           (get_local $$78)
          )
         )
         (set_local $$80
          (get_local $$16)
         )
         (set_local $$81
          (get_local $$16)
         )
         (set_local $$82
          (f32.mul
           (get_local $$80)
           (get_local $$81)
          )
         )
         (set_local $$83
          (f32.add
           (get_local $$79)
           (get_local $$82)
          )
         )
         (set_local $$17
          (get_local $$83)
         )
         (set_local $$84
          (get_local $$17)
         )
         (set_local $$85
          (get_local $$9)
         )
         (set_local $$86
          (f32.lt
           (get_local $$84)
           (get_local $$85)
          )
         )
         (if
          (get_local $$86)
          (block
           (set_local $$87
            (get_local $$17)
           )
           (set_local $$9
            (get_local $$87)
           )
           (set_local $$88
            (get_local $$12)
           )
           (set_local $$10
            (get_local $$88)
           )
           (set_local $$89
            (get_local $$13)
           )
           (set_local $$11
            (get_local $$89)
           )
          )
         )
         (set_local $$90
          (get_local $$13)
         )
         (set_local $$91
          (i32.add
           (get_local $$90)
           (i32.const 1)
          )
         )
         (set_local $$13
          (get_local $$91)
         )
         (br $while-in10)
        )
       )
       (set_local $$92
        (i32.add
         (get_local $$50)
         (i32.const 1)
        )
       )
       (set_local $$12
        (get_local $$92)
       )
       (br $while-in8)
      )
     )
    )
   )
  )
  (set_local $$207
   (i32.add
    (get_local $$31)
    (i32.const 1064)
   )
  )
  (set_local $$208
   (i32.load
    (get_local $$207)
   )
  )
  (block $switch11
   (block $switch-default15
    (block $switch-case14
     (block $switch-case13
      (block $switch-case12
       (br_table $switch-case12 $switch-case13 $switch-case14 $switch-default15
        (i32.sub
         (get_local $$208)
         (i32.const 0)
        )
       )
      )
      (block
       (set_local $$209
        (i32.add
         (get_local $$31)
         (i32.const 1024)
        )
       )
       (set_local $$210
        (i32.load
         (get_local $$209)
        )
       )
       (set_local $$211
        (get_local $$10)
       )
       (set_local $$212
        (get_local $$11)
       )
       (set_local $$213
        (call $__ZL10ValCoord2Diii
         (get_local $$210)
         (get_local $$211)
         (get_local $$212)
        )
       )
       (set_local $$3
        (get_local $$213)
       )
       (set_local $$244
        (get_local $$3)
       )
       (set_global $STACKTOP
        (get_local $sp)
       )
       (return
        (get_local $$244)
       )
       (br $switch11)
      )
     )
     (block
      (set_local $$214
       (i32.add
        (get_local $$31)
        (i32.const 1068)
       )
      )
      (set_local $$215
       (i32.load
        (get_local $$214)
       )
      )
      (set_local $$216
       (i32.ne
        (get_local $$215)
        (i32.const 0)
       )
      )
      (if
       (i32.eqz
        (get_local $$216)
       )
       (call $___assert_fail
        (i32.const 9925)
        (i32.const 9947)
        (i32.const 2006)
        (i32.const 9971)
       )
      )
      (set_local $$217
       (get_local $$10)
      )
      (set_local $$218
       (get_local $$11)
      )
      (set_local $$219
       (call $__ZNK9FastNoise11Index2D_256Ehii
        (get_local $$31)
        (i32.const 0)
        (get_local $$217)
        (get_local $$218)
       )
      )
      (set_local $$30
       (get_local $$219)
      )
      (set_local $$220
       (i32.add
        (get_local $$31)
        (i32.const 1068)
       )
      )
      (set_local $$221
       (i32.load
        (get_local $$220)
       )
      )
      (set_local $$222
       (get_local $$10)
      )
      (set_local $$223
       (f32.convert_s/i32
        (get_local $$222)
       )
      )
      (set_local $$224
       (get_local $$30)
      )
      (set_local $$225
       (i32.and
        (get_local $$224)
        (i32.const 255)
       )
      )
      (set_local $$226
       (i32.add
        (i32.const 5944)
        (i32.shl
         (get_local $$225)
         (i32.const 2)
        )
       )
      )
      (set_local $$227
       (f32.load
        (get_local $$226)
       )
      )
      (set_local $$228
       (i32.add
        (get_local $$31)
        (i32.const 1080)
       )
      )
      (set_local $$229
       (f32.load
        (get_local $$228)
       )
      )
      (set_local $$230
       (f32.mul
        (get_local $$227)
        (get_local $$229)
       )
      )
      (set_local $$231
       (f32.add
        (get_local $$223)
        (get_local $$230)
       )
      )
      (set_local $$232
       (get_local $$11)
      )
      (set_local $$233
       (f32.convert_s/i32
        (get_local $$232)
       )
      )
      (set_local $$234
       (get_local $$30)
      )
      (set_local $$235
       (i32.and
        (get_local $$234)
        (i32.const 255)
       )
      )
      (set_local $$236
       (i32.add
        (i32.const 6968)
        (i32.shl
         (get_local $$235)
         (i32.const 2)
        )
       )
      )
      (set_local $$237
       (f32.load
        (get_local $$236)
       )
      )
      (set_local $$238
       (i32.add
        (get_local $$31)
        (i32.const 1080)
       )
      )
      (set_local $$239
       (f32.load
        (get_local $$238)
       )
      )
      (set_local $$240
       (f32.mul
        (get_local $$237)
        (get_local $$239)
       )
      )
      (set_local $$241
       (f32.add
        (get_local $$233)
        (get_local $$240)
       )
      )
      (set_local $$242
       (call $__ZNK9FastNoise8GetNoiseEff
        (get_local $$221)
        (get_local $$231)
        (get_local $$241)
       )
      )
      (set_local $$3
       (get_local $$242)
      )
      (set_local $$244
       (get_local $$3)
      )
      (set_global $STACKTOP
       (get_local $sp)
      )
      (return
       (get_local $$244)
      )
      (br $switch11)
     )
    )
    (block
     (set_local $$243
      (get_local $$9)
     )
     (set_local $$3
      (get_local $$243)
     )
     (set_local $$244
      (get_local $$3)
     )
     (set_global $STACKTOP
      (get_local $sp)
     )
     (return
      (get_local $$244)
     )
     (br $switch11)
    )
   )
   (block
    (set_local $$3
     (f32.const 0)
    )
    (set_local $$244
     (get_local $$3)
    )
    (set_global $STACKTOP
     (get_local $sp)
    )
    (return
     (get_local $$244)
    )
   )
  )
  (return
   (f32.const 0)
  )
 )
 (func $__ZNK9FastNoise19SingleCellular2EdgeEff (param $$0 i32) (param $$1 f32) (param $$2 f32) (result f32)
  (local $$10 f32)
  (local $$100 f32)
  (local $$101 f32)
  (local $$102 i32)
  (local $$103 i32)
  (local $$104 i32)
  (local $$105 i32)
  (local $$106 i32)
  (local $$107 i32)
  (local $$108 f32)
  (local $$109 f32)
  (local $$11 f32)
  (local $$110 f32)
  (local $$111 f32)
  (local $$112 f32)
  (local $$113 i32)
  (local $$114 i32)
  (local $$115 i32)
  (local $$116 f32)
  (local $$117 f32)
  (local $$118 f32)
  (local $$119 f32)
  (local $$12 f32)
  (local $$120 i32)
  (local $$121 i32)
  (local $$122 i32)
  (local $$123 i32)
  (local $$124 f32)
  (local $$125 f32)
  (local $$126 f32)
  (local $$127 f32)
  (local $$128 f32)
  (local $$129 i32)
  (local $$13 f32)
  (local $$130 i32)
  (local $$131 i32)
  (local $$132 i32)
  (local $$133 i32)
  (local $$134 i32)
  (local $$135 i32)
  (local $$136 i32)
  (local $$137 i32)
  (local $$138 i32)
  (local $$139 i32)
  (local $$14 f32)
  (local $$140 i32)
  (local $$141 i32)
  (local $$142 i32)
  (local $$143 i32)
  (local $$144 i32)
  (local $$145 i32)
  (local $$146 i32)
  (local $$147 i32)
  (local $$148 f32)
  (local $$149 f32)
  (local $$15 f32)
  (local $$150 f32)
  (local $$151 i32)
  (local $$152 i32)
  (local $$153 i32)
  (local $$154 f32)
  (local $$155 i32)
  (local $$156 f32)
  (local $$157 f32)
  (local $$158 f32)
  (local $$159 i32)
  (local $$16 f32)
  (local $$160 f32)
  (local $$161 f32)
  (local $$162 f32)
  (local $$163 i32)
  (local $$164 i32)
  (local $$165 i32)
  (local $$166 f32)
  (local $$167 i32)
  (local $$168 f32)
  (local $$169 f32)
  (local $$17 f32)
  (local $$170 f32)
  (local $$171 f32)
  (local $$172 f32)
  (local $$173 f32)
  (local $$174 f32)
  (local $$175 f32)
  (local $$176 i32)
  (local $$177 i32)
  (local $$178 i32)
  (local $$179 i32)
  (local $$18 f32)
  (local $$180 i32)
  (local $$181 i32)
  (local $$182 f32)
  (local $$183 f32)
  (local $$184 f32)
  (local $$185 f32)
  (local $$186 f32)
  (local $$187 i32)
  (local $$188 i32)
  (local $$189 i32)
  (local $$19 f32)
  (local $$190 f32)
  (local $$191 f32)
  (local $$192 f32)
  (local $$193 f32)
  (local $$194 i32)
  (local $$195 i32)
  (local $$196 i32)
  (local $$197 i32)
  (local $$198 f32)
  (local $$199 f32)
  (local $$20 f32)
  (local $$200 f32)
  (local $$201 f32)
  (local $$202 f32)
  (local $$203 i32)
  (local $$204 i32)
  (local $$205 i32)
  (local $$206 i32)
  (local $$207 i32)
  (local $$208 i32)
  (local $$209 i32)
  (local $$21 f32)
  (local $$210 i32)
  (local $$211 i32)
  (local $$212 i32)
  (local $$213 i32)
  (local $$214 i32)
  (local $$215 i32)
  (local $$216 i32)
  (local $$217 i32)
  (local $$218 i32)
  (local $$219 i32)
  (local $$22 i32)
  (local $$220 i32)
  (local $$221 i32)
  (local $$222 f32)
  (local $$223 f32)
  (local $$224 f32)
  (local $$225 i32)
  (local $$226 i32)
  (local $$227 i32)
  (local $$228 f32)
  (local $$229 i32)
  (local $$23 f32)
  (local $$230 f32)
  (local $$231 f32)
  (local $$232 f32)
  (local $$233 i32)
  (local $$234 f32)
  (local $$235 f32)
  (local $$236 f32)
  (local $$237 i32)
  (local $$238 i32)
  (local $$239 i32)
  (local $$24 f32)
  (local $$240 f32)
  (local $$241 i32)
  (local $$242 f32)
  (local $$243 f32)
  (local $$244 f32)
  (local $$245 f32)
  (local $$246 f32)
  (local $$247 f32)
  (local $$248 f32)
  (local $$249 f32)
  (local $$25 i32)
  (local $$250 f32)
  (local $$251 f32)
  (local $$252 f32)
  (local $$253 f32)
  (local $$254 f32)
  (local $$255 f32)
  (local $$256 f32)
  (local $$257 f32)
  (local $$258 i32)
  (local $$259 i32)
  (local $$26 i32)
  (local $$260 i32)
  (local $$261 i32)
  (local $$262 i32)
  (local $$263 i32)
  (local $$264 f32)
  (local $$265 f32)
  (local $$266 f32)
  (local $$267 f32)
  (local $$268 f32)
  (local $$269 i32)
  (local $$27 i32)
  (local $$270 i32)
  (local $$271 i32)
  (local $$272 f32)
  (local $$273 f32)
  (local $$274 f32)
  (local $$275 f32)
  (local $$276 i32)
  (local $$277 i32)
  (local $$278 i32)
  (local $$279 i32)
  (local $$28 i32)
  (local $$280 f32)
  (local $$281 f32)
  (local $$282 f32)
  (local $$283 f32)
  (local $$284 f32)
  (local $$285 i32)
  (local $$286 i32)
  (local $$287 i32)
  (local $$288 i32)
  (local $$289 i32)
  (local $$29 i32)
  (local $$290 i32)
  (local $$291 i32)
  (local $$292 i32)
  (local $$293 f32)
  (local $$294 i32)
  (local $$295 i32)
  (local $$296 i32)
  (local $$297 f32)
  (local $$298 i32)
  (local $$299 i32)
  (local $$3 f32)
  (local $$30 i32)
  (local $$300 i32)
  (local $$301 f32)
  (local $$302 f32)
  (local $$303 i32)
  (local $$304 i32)
  (local $$305 i32)
  (local $$306 f32)
  (local $$307 i32)
  (local $$308 i32)
  (local $$309 i32)
  (local $$31 f32)
  (local $$310 f32)
  (local $$311 f32)
  (local $$312 i32)
  (local $$313 i32)
  (local $$314 i32)
  (local $$315 f32)
  (local $$316 i32)
  (local $$317 i32)
  (local $$318 i32)
  (local $$319 f32)
  (local $$32 f32)
  (local $$320 f32)
  (local $$321 i32)
  (local $$322 i32)
  (local $$323 i32)
  (local $$324 f32)
  (local $$325 i32)
  (local $$326 i32)
  (local $$327 i32)
  (local $$328 f32)
  (local $$329 f32)
  (local $$33 f32)
  (local $$330 f32)
  (local $$34 i32)
  (local $$35 i32)
  (local $$36 i32)
  (local $$37 i32)
  (local $$38 f32)
  (local $$39 f32)
  (local $$4 f32)
  (local $$40 f32)
  (local $$41 i32)
  (local $$42 i32)
  (local $$43 i32)
  (local $$44 i32)
  (local $$45 f32)
  (local $$46 f32)
  (local $$47 f32)
  (local $$48 i32)
  (local $$49 i32)
  (local $$5 f32)
  (local $$50 f32)
  (local $$51 i32)
  (local $$52 f32)
  (local $$53 i32)
  (local $$54 i32)
  (local $$55 i32)
  (local $$56 i32)
  (local $$57 i32)
  (local $$58 i32)
  (local $$59 i32)
  (local $$6 f32)
  (local $$60 i32)
  (local $$61 i32)
  (local $$62 i32)
  (local $$63 i32)
  (local $$64 i32)
  (local $$65 i32)
  (local $$66 i32)
  (local $$67 i32)
  (local $$68 i32)
  (local $$69 i32)
  (local $$7 f32)
  (local $$70 i32)
  (local $$71 i32)
  (local $$72 f32)
  (local $$73 f32)
  (local $$74 f32)
  (local $$75 i32)
  (local $$76 i32)
  (local $$77 i32)
  (local $$78 f32)
  (local $$79 i32)
  (local $$8 f32)
  (local $$80 f32)
  (local $$81 f32)
  (local $$82 f32)
  (local $$83 i32)
  (local $$84 f32)
  (local $$85 f32)
  (local $$86 f32)
  (local $$87 i32)
  (local $$88 i32)
  (local $$89 i32)
  (local $$9 f32)
  (local $$90 f32)
  (local $$91 i32)
  (local $$92 f32)
  (local $$93 f32)
  (local $$94 f32)
  (local $$95 f32)
  (local $$96 f32)
  (local $$97 f32)
  (local $$98 f32)
  (local $$99 f32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 192)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 192)
   )
  )
  (set_local $$27
   (i32.add
    (get_local $sp)
    (i32.const 72)
   )
  )
  (set_local $$22
   (get_local $$0)
  )
  (set_local $$23
   (get_local $$1)
  )
  (set_local $$24
   (get_local $$2)
  )
  (set_local $$49
   (get_local $$22)
  )
  (set_local $$50
   (get_local $$23)
  )
  (set_local $$51
   (call $__ZL9FastRoundf
    (get_local $$50)
   )
  )
  (set_local $$25
   (get_local $$51)
  )
  (set_local $$52
   (get_local $$24)
  )
  (set_local $$53
   (call $__ZL9FastRoundf
    (get_local $$52)
   )
  )
  (set_local $$26
   (get_local $$53)
  )
  (i64.store align=4
   (get_local $$27)
   (i64.load align=4
    (i32.const 5928)
   )
  )
  (i64.store align=4
   (i32.add
    (get_local $$27)
    (i32.const 8)
   )
   (i64.load align=4
    (i32.add
     (i32.const 5928)
     (i32.const 8)
    )
   )
  )
  (set_local $$54
   (i32.add
    (get_local $$49)
    (i32.const 1060)
   )
  )
  (set_local $$55
   (i32.load
    (get_local $$54)
   )
  )
  (block $label$break$L1
   (block $switch
    (block $switch-default
     (block $switch-case10
      (block $switch-case
       (br_table $switch-case10 $switch-case $switch-default
        (i32.sub
         (get_local $$55)
         (i32.const 1)
        )
       )
      )
      (block
       (set_local $$206
        (get_local $$25)
       )
       (set_local $$207
        (i32.sub
         (get_local $$206)
         (i32.const 1)
        )
       )
       (set_local $$42
        (get_local $$207)
       )
       (loop $while-in
        (block $while-out
         (set_local $$208
          (get_local $$42)
         )
         (set_local $$209
          (get_local $$25)
         )
         (set_local $$210
          (i32.add
           (get_local $$209)
           (i32.const 1)
          )
         )
         (set_local $$211
          (i32.le_s
           (get_local $$208)
           (get_local $$210)
          )
         )
         (if
          (i32.eqz
           (get_local $$211)
          )
          (br $label$break$L1)
         )
         (set_local $$212
          (get_local $$26)
         )
         (set_local $$213
          (i32.sub
           (get_local $$212)
           (i32.const 1)
          )
         )
         (set_local $$43
          (get_local $$213)
         )
         (loop $while-in1
          (block $while-out0
           (set_local $$214
            (get_local $$43)
           )
           (set_local $$215
            (get_local $$26)
           )
           (set_local $$216
            (i32.add
             (get_local $$215)
             (i32.const 1)
            )
           )
           (set_local $$217
            (i32.le_s
             (get_local $$214)
             (get_local $$216)
            )
           )
           (set_local $$218
            (get_local $$42)
           )
           (if
            (i32.eqz
             (get_local $$217)
            )
            (br $while-out0)
           )
           (set_local $$219
            (get_local $$43)
           )
           (set_local $$220
            (call $__ZNK9FastNoise11Index2D_256Ehii
             (get_local $$49)
             (i32.const 0)
             (get_local $$218)
             (get_local $$219)
            )
           )
           (set_local $$44
            (get_local $$220)
           )
           (set_local $$221
            (get_local $$42)
           )
           (set_local $$222
            (f32.convert_s/i32
             (get_local $$221)
            )
           )
           (set_local $$223
            (get_local $$23)
           )
           (set_local $$224
            (f32.sub
             (get_local $$222)
             (get_local $$223)
            )
           )
           (set_local $$225
            (get_local $$44)
           )
           (set_local $$226
            (i32.and
             (get_local $$225)
             (i32.const 255)
            )
           )
           (set_local $$227
            (i32.add
             (i32.const 5944)
             (i32.shl
              (get_local $$226)
              (i32.const 2)
             )
            )
           )
           (set_local $$228
            (f32.load
             (get_local $$227)
            )
           )
           (set_local $$229
            (i32.add
             (get_local $$49)
             (i32.const 1080)
            )
           )
           (set_local $$230
            (f32.load
             (get_local $$229)
            )
           )
           (set_local $$231
            (f32.mul
             (get_local $$228)
             (get_local $$230)
            )
           )
           (set_local $$232
            (f32.add
             (get_local $$224)
             (get_local $$231)
            )
           )
           (set_local $$45
            (get_local $$232)
           )
           (set_local $$233
            (get_local $$43)
           )
           (set_local $$234
            (f32.convert_s/i32
             (get_local $$233)
            )
           )
           (set_local $$235
            (get_local $$24)
           )
           (set_local $$236
            (f32.sub
             (get_local $$234)
             (get_local $$235)
            )
           )
           (set_local $$237
            (get_local $$44)
           )
           (set_local $$238
            (i32.and
             (get_local $$237)
             (i32.const 255)
            )
           )
           (set_local $$239
            (i32.add
             (i32.const 6968)
             (i32.shl
              (get_local $$238)
              (i32.const 2)
             )
            )
           )
           (set_local $$240
            (f32.load
             (get_local $$239)
            )
           )
           (set_local $$241
            (i32.add
             (get_local $$49)
             (i32.const 1080)
            )
           )
           (set_local $$242
            (f32.load
             (get_local $$241)
            )
           )
           (set_local $$243
            (f32.mul
             (get_local $$240)
             (get_local $$242)
            )
           )
           (set_local $$244
            (f32.add
             (get_local $$236)
             (get_local $$243)
            )
           )
           (set_local $$46
            (get_local $$244)
           )
           (set_local $$245
            (get_local $$45)
           )
           (set_local $$246
            (call $__ZL7FastAbsf
             (get_local $$245)
            )
           )
           (set_local $$247
            (get_local $$46)
           )
           (set_local $$248
            (call $__ZL7FastAbsf
             (get_local $$247)
            )
           )
           (set_local $$249
            (f32.add
             (get_local $$246)
             (get_local $$248)
            )
           )
           (set_local $$250
            (get_local $$45)
           )
           (set_local $$251
            (get_local $$45)
           )
           (set_local $$252
            (f32.mul
             (get_local $$250)
             (get_local $$251)
            )
           )
           (set_local $$253
            (get_local $$46)
           )
           (set_local $$254
            (get_local $$46)
           )
           (set_local $$255
            (f32.mul
             (get_local $$253)
             (get_local $$254)
            )
           )
           (set_local $$256
            (f32.add
             (get_local $$252)
             (get_local $$255)
            )
           )
           (set_local $$257
            (f32.add
             (get_local $$249)
             (get_local $$256)
            )
           )
           (set_local $$47
            (get_local $$257)
           )
           (set_local $$258
            (i32.add
             (get_local $$49)
             (i32.const 1076)
            )
           )
           (set_local $$259
            (i32.load
             (get_local $$258)
            )
           )
           (set_local $$48
            (get_local $$259)
           )
           (loop $while-in3
            (block $while-out2
             (set_local $$260
              (get_local $$48)
             )
             (set_local $$261
              (i32.gt_s
               (get_local $$260)
               (i32.const 0)
              )
             )
             (if
              (i32.eqz
               (get_local $$261)
              )
              (br $while-out2)
             )
             (set_local $$262
              (get_local $$48)
             )
             (set_local $$263
              (i32.add
               (get_local $$27)
               (i32.shl
                (get_local $$262)
                (i32.const 2)
               )
              )
             )
             (set_local $$264
              (f32.load
               (get_local $$263)
              )
             )
             (set_local $$265
              (get_local $$47)
             )
             (set_local $$7
              (get_local $$264)
             )
             (set_local $$8
              (get_local $$265)
             )
             (set_local $$266
              (get_local $$7)
             )
             (set_local $$267
              (get_local $$8)
             )
             (set_local $$268
              (call $_fminf
               (get_local $$266)
               (get_local $$267)
              )
             )
             (set_local $$269
              (get_local $$48)
             )
             (set_local $$270
              (i32.sub
               (get_local $$269)
               (i32.const 1)
              )
             )
             (set_local $$271
              (i32.add
               (get_local $$27)
               (i32.shl
                (get_local $$270)
                (i32.const 2)
               )
              )
             )
             (set_local $$272
              (f32.load
               (get_local $$271)
              )
             )
             (set_local $$5
              (get_local $$268)
             )
             (set_local $$6
              (get_local $$272)
             )
             (set_local $$273
              (get_local $$5)
             )
             (set_local $$274
              (get_local $$6)
             )
             (set_local $$275
              (call $_fmaxf
               (get_local $$273)
               (get_local $$274)
              )
             )
             (set_local $$276
              (get_local $$48)
             )
             (set_local $$277
              (i32.add
               (get_local $$27)
               (i32.shl
                (get_local $$276)
                (i32.const 2)
               )
              )
             )
             (f32.store
              (get_local $$277)
              (get_local $$275)
             )
             (set_local $$278
              (get_local $$48)
             )
             (set_local $$279
              (i32.add
               (get_local $$278)
               (i32.const -1)
              )
             )
             (set_local $$48
              (get_local $$279)
             )
             (br $while-in3)
            )
           )
           (set_local $$280
            (f32.load
             (get_local $$27)
            )
           )
           (set_local $$281
            (get_local $$47)
           )
           (set_local $$3
            (get_local $$280)
           )
           (set_local $$4
            (get_local $$281)
           )
           (set_local $$282
            (get_local $$3)
           )
           (set_local $$283
            (get_local $$4)
           )
           (set_local $$284
            (call $_fminf
             (get_local $$282)
             (get_local $$283)
            )
           )
           (f32.store
            (get_local $$27)
            (get_local $$284)
           )
           (set_local $$285
            (get_local $$43)
           )
           (set_local $$286
            (i32.add
             (get_local $$285)
             (i32.const 1)
            )
           )
           (set_local $$43
            (get_local $$286)
           )
           (br $while-in1)
          )
         )
         (set_local $$287
          (i32.add
           (get_local $$218)
           (i32.const 1)
          )
         )
         (set_local $$42
          (get_local $$287)
         )
         (br $while-in)
        )
       )
       (br $switch)
      )
     )
     (block
      (set_local $$132
       (get_local $$25)
      )
      (set_local $$133
       (i32.sub
        (get_local $$132)
        (i32.const 1)
       )
      )
      (set_local $$35
       (get_local $$133)
      )
      (loop $while-in5
       (block $while-out4
        (set_local $$134
         (get_local $$35)
        )
        (set_local $$135
         (get_local $$25)
        )
        (set_local $$136
         (i32.add
          (get_local $$135)
          (i32.const 1)
         )
        )
        (set_local $$137
         (i32.le_s
          (get_local $$134)
          (get_local $$136)
         )
        )
        (if
         (i32.eqz
          (get_local $$137)
         )
         (br $label$break$L1)
        )
        (set_local $$138
         (get_local $$26)
        )
        (set_local $$139
         (i32.sub
          (get_local $$138)
          (i32.const 1)
         )
        )
        (set_local $$36
         (get_local $$139)
        )
        (loop $while-in7
         (block $while-out6
          (set_local $$140
           (get_local $$36)
          )
          (set_local $$141
           (get_local $$26)
          )
          (set_local $$142
           (i32.add
            (get_local $$141)
            (i32.const 1)
           )
          )
          (set_local $$143
           (i32.le_s
            (get_local $$140)
            (get_local $$142)
           )
          )
          (set_local $$144
           (get_local $$35)
          )
          (if
           (i32.eqz
            (get_local $$143)
           )
           (br $while-out6)
          )
          (set_local $$145
           (get_local $$36)
          )
          (set_local $$146
           (call $__ZNK9FastNoise11Index2D_256Ehii
            (get_local $$49)
            (i32.const 0)
            (get_local $$144)
            (get_local $$145)
           )
          )
          (set_local $$37
           (get_local $$146)
          )
          (set_local $$147
           (get_local $$35)
          )
          (set_local $$148
           (f32.convert_s/i32
            (get_local $$147)
           )
          )
          (set_local $$149
           (get_local $$23)
          )
          (set_local $$150
           (f32.sub
            (get_local $$148)
            (get_local $$149)
           )
          )
          (set_local $$151
           (get_local $$37)
          )
          (set_local $$152
           (i32.and
            (get_local $$151)
            (i32.const 255)
           )
          )
          (set_local $$153
           (i32.add
            (i32.const 5944)
            (i32.shl
             (get_local $$152)
             (i32.const 2)
            )
           )
          )
          (set_local $$154
           (f32.load
            (get_local $$153)
           )
          )
          (set_local $$155
           (i32.add
            (get_local $$49)
            (i32.const 1080)
           )
          )
          (set_local $$156
           (f32.load
            (get_local $$155)
           )
          )
          (set_local $$157
           (f32.mul
            (get_local $$154)
            (get_local $$156)
           )
          )
          (set_local $$158
           (f32.add
            (get_local $$150)
            (get_local $$157)
           )
          )
          (set_local $$38
           (get_local $$158)
          )
          (set_local $$159
           (get_local $$36)
          )
          (set_local $$160
           (f32.convert_s/i32
            (get_local $$159)
           )
          )
          (set_local $$161
           (get_local $$24)
          )
          (set_local $$162
           (f32.sub
            (get_local $$160)
            (get_local $$161)
           )
          )
          (set_local $$163
           (get_local $$37)
          )
          (set_local $$164
           (i32.and
            (get_local $$163)
            (i32.const 255)
           )
          )
          (set_local $$165
           (i32.add
            (i32.const 6968)
            (i32.shl
             (get_local $$164)
             (i32.const 2)
            )
           )
          )
          (set_local $$166
           (f32.load
            (get_local $$165)
           )
          )
          (set_local $$167
           (i32.add
            (get_local $$49)
            (i32.const 1080)
           )
          )
          (set_local $$168
           (f32.load
            (get_local $$167)
           )
          )
          (set_local $$169
           (f32.mul
            (get_local $$166)
            (get_local $$168)
           )
          )
          (set_local $$170
           (f32.add
            (get_local $$162)
            (get_local $$169)
           )
          )
          (set_local $$39
           (get_local $$170)
          )
          (set_local $$171
           (get_local $$38)
          )
          (set_local $$172
           (call $__ZL7FastAbsf
            (get_local $$171)
           )
          )
          (set_local $$173
           (get_local $$39)
          )
          (set_local $$174
           (call $__ZL7FastAbsf
            (get_local $$173)
           )
          )
          (set_local $$175
           (f32.add
            (get_local $$172)
            (get_local $$174)
           )
          )
          (set_local $$40
           (get_local $$175)
          )
          (set_local $$176
           (i32.add
            (get_local $$49)
            (i32.const 1076)
           )
          )
          (set_local $$177
           (i32.load
            (get_local $$176)
           )
          )
          (set_local $$41
           (get_local $$177)
          )
          (loop $while-in9
           (block $while-out8
            (set_local $$178
             (get_local $$41)
            )
            (set_local $$179
             (i32.gt_s
              (get_local $$178)
              (i32.const 0)
             )
            )
            (if
             (i32.eqz
              (get_local $$179)
             )
             (br $while-out8)
            )
            (set_local $$180
             (get_local $$41)
            )
            (set_local $$181
             (i32.add
              (get_local $$27)
              (i32.shl
               (get_local $$180)
               (i32.const 2)
              )
             )
            )
            (set_local $$182
             (f32.load
              (get_local $$181)
             )
            )
            (set_local $$183
             (get_local $$40)
            )
            (set_local $$13
             (get_local $$182)
            )
            (set_local $$14
             (get_local $$183)
            )
            (set_local $$184
             (get_local $$13)
            )
            (set_local $$185
             (get_local $$14)
            )
            (set_local $$186
             (call $_fminf
              (get_local $$184)
              (get_local $$185)
             )
            )
            (set_local $$187
             (get_local $$41)
            )
            (set_local $$188
             (i32.sub
              (get_local $$187)
              (i32.const 1)
             )
            )
            (set_local $$189
             (i32.add
              (get_local $$27)
              (i32.shl
               (get_local $$188)
               (i32.const 2)
              )
             )
            )
            (set_local $$190
             (f32.load
              (get_local $$189)
             )
            )
            (set_local $$11
             (get_local $$186)
            )
            (set_local $$12
             (get_local $$190)
            )
            (set_local $$191
             (get_local $$11)
            )
            (set_local $$192
             (get_local $$12)
            )
            (set_local $$193
             (call $_fmaxf
              (get_local $$191)
              (get_local $$192)
             )
            )
            (set_local $$194
             (get_local $$41)
            )
            (set_local $$195
             (i32.add
              (get_local $$27)
              (i32.shl
               (get_local $$194)
               (i32.const 2)
              )
             )
            )
            (f32.store
             (get_local $$195)
             (get_local $$193)
            )
            (set_local $$196
             (get_local $$41)
            )
            (set_local $$197
             (i32.add
              (get_local $$196)
              (i32.const -1)
             )
            )
            (set_local $$41
             (get_local $$197)
            )
            (br $while-in9)
           )
          )
          (set_local $$198
           (f32.load
            (get_local $$27)
           )
          )
          (set_local $$199
           (get_local $$40)
          )
          (set_local $$9
           (get_local $$198)
          )
          (set_local $$10
           (get_local $$199)
          )
          (set_local $$200
           (get_local $$9)
          )
          (set_local $$201
           (get_local $$10)
          )
          (set_local $$202
           (call $_fminf
            (get_local $$200)
            (get_local $$201)
           )
          )
          (f32.store
           (get_local $$27)
           (get_local $$202)
          )
          (set_local $$203
           (get_local $$36)
          )
          (set_local $$204
           (i32.add
            (get_local $$203)
            (i32.const 1)
           )
          )
          (set_local $$36
           (get_local $$204)
          )
          (br $while-in7)
         )
        )
        (set_local $$205
         (i32.add
          (get_local $$144)
          (i32.const 1)
         )
        )
        (set_local $$35
         (get_local $$205)
        )
        (br $while-in5)
       )
      )
      (br $switch)
     )
    )
    (block
     (set_local $$56
      (get_local $$25)
     )
     (set_local $$57
      (i32.sub
       (get_local $$56)
       (i32.const 1)
      )
     )
     (set_local $$28
      (get_local $$57)
     )
     (loop $while-in12
      (block $while-out11
       (set_local $$58
        (get_local $$28)
       )
       (set_local $$59
        (get_local $$25)
       )
       (set_local $$60
        (i32.add
         (get_local $$59)
         (i32.const 1)
        )
       )
       (set_local $$61
        (i32.le_s
         (get_local $$58)
         (get_local $$60)
        )
       )
       (if
        (i32.eqz
         (get_local $$61)
        )
        (br $label$break$L1)
       )
       (set_local $$62
        (get_local $$26)
       )
       (set_local $$63
        (i32.sub
         (get_local $$62)
         (i32.const 1)
        )
       )
       (set_local $$29
        (get_local $$63)
       )
       (loop $while-in14
        (block $while-out13
         (set_local $$64
          (get_local $$29)
         )
         (set_local $$65
          (get_local $$26)
         )
         (set_local $$66
          (i32.add
           (get_local $$65)
           (i32.const 1)
          )
         )
         (set_local $$67
          (i32.le_s
           (get_local $$64)
           (get_local $$66)
          )
         )
         (set_local $$68
          (get_local $$28)
         )
         (if
          (i32.eqz
           (get_local $$67)
          )
          (br $while-out13)
         )
         (set_local $$69
          (get_local $$29)
         )
         (set_local $$70
          (call $__ZNK9FastNoise11Index2D_256Ehii
           (get_local $$49)
           (i32.const 0)
           (get_local $$68)
           (get_local $$69)
          )
         )
         (set_local $$30
          (get_local $$70)
         )
         (set_local $$71
          (get_local $$28)
         )
         (set_local $$72
          (f32.convert_s/i32
           (get_local $$71)
          )
         )
         (set_local $$73
          (get_local $$23)
         )
         (set_local $$74
          (f32.sub
           (get_local $$72)
           (get_local $$73)
          )
         )
         (set_local $$75
          (get_local $$30)
         )
         (set_local $$76
          (i32.and
           (get_local $$75)
           (i32.const 255)
          )
         )
         (set_local $$77
          (i32.add
           (i32.const 5944)
           (i32.shl
            (get_local $$76)
            (i32.const 2)
           )
          )
         )
         (set_local $$78
          (f32.load
           (get_local $$77)
          )
         )
         (set_local $$79
          (i32.add
           (get_local $$49)
           (i32.const 1080)
          )
         )
         (set_local $$80
          (f32.load
           (get_local $$79)
          )
         )
         (set_local $$81
          (f32.mul
           (get_local $$78)
           (get_local $$80)
          )
         )
         (set_local $$82
          (f32.add
           (get_local $$74)
           (get_local $$81)
          )
         )
         (set_local $$31
          (get_local $$82)
         )
         (set_local $$83
          (get_local $$29)
         )
         (set_local $$84
          (f32.convert_s/i32
           (get_local $$83)
          )
         )
         (set_local $$85
          (get_local $$24)
         )
         (set_local $$86
          (f32.sub
           (get_local $$84)
           (get_local $$85)
          )
         )
         (set_local $$87
          (get_local $$30)
         )
         (set_local $$88
          (i32.and
           (get_local $$87)
           (i32.const 255)
          )
         )
         (set_local $$89
          (i32.add
           (i32.const 6968)
           (i32.shl
            (get_local $$88)
            (i32.const 2)
           )
          )
         )
         (set_local $$90
          (f32.load
           (get_local $$89)
          )
         )
         (set_local $$91
          (i32.add
           (get_local $$49)
           (i32.const 1080)
          )
         )
         (set_local $$92
          (f32.load
           (get_local $$91)
          )
         )
         (set_local $$93
          (f32.mul
           (get_local $$90)
           (get_local $$92)
          )
         )
         (set_local $$94
          (f32.add
           (get_local $$86)
           (get_local $$93)
          )
         )
         (set_local $$32
          (get_local $$94)
         )
         (set_local $$95
          (get_local $$31)
         )
         (set_local $$96
          (get_local $$31)
         )
         (set_local $$97
          (f32.mul
           (get_local $$95)
           (get_local $$96)
          )
         )
         (set_local $$98
          (get_local $$32)
         )
         (set_local $$99
          (get_local $$32)
         )
         (set_local $$100
          (f32.mul
           (get_local $$98)
           (get_local $$99)
          )
         )
         (set_local $$101
          (f32.add
           (get_local $$97)
           (get_local $$100)
          )
         )
         (set_local $$33
          (get_local $$101)
         )
         (set_local $$102
          (i32.add
           (get_local $$49)
           (i32.const 1076)
          )
         )
         (set_local $$103
          (i32.load
           (get_local $$102)
          )
         )
         (set_local $$34
          (get_local $$103)
         )
         (loop $while-in16
          (block $while-out15
           (set_local $$104
            (get_local $$34)
           )
           (set_local $$105
            (i32.gt_s
             (get_local $$104)
             (i32.const 0)
            )
           )
           (if
            (i32.eqz
             (get_local $$105)
            )
            (br $while-out15)
           )
           (set_local $$106
            (get_local $$34)
           )
           (set_local $$107
            (i32.add
             (get_local $$27)
             (i32.shl
              (get_local $$106)
              (i32.const 2)
             )
            )
           )
           (set_local $$108
            (f32.load
             (get_local $$107)
            )
           )
           (set_local $$109
            (get_local $$33)
           )
           (set_local $$19
            (get_local $$108)
           )
           (set_local $$20
            (get_local $$109)
           )
           (set_local $$110
            (get_local $$19)
           )
           (set_local $$111
            (get_local $$20)
           )
           (set_local $$112
            (call $_fminf
             (get_local $$110)
             (get_local $$111)
            )
           )
           (set_local $$113
            (get_local $$34)
           )
           (set_local $$114
            (i32.sub
             (get_local $$113)
             (i32.const 1)
            )
           )
           (set_local $$115
            (i32.add
             (get_local $$27)
             (i32.shl
              (get_local $$114)
              (i32.const 2)
             )
            )
           )
           (set_local $$116
            (f32.load
             (get_local $$115)
            )
           )
           (set_local $$17
            (get_local $$112)
           )
           (set_local $$18
            (get_local $$116)
           )
           (set_local $$117
            (get_local $$17)
           )
           (set_local $$118
            (get_local $$18)
           )
           (set_local $$119
            (call $_fmaxf
             (get_local $$117)
             (get_local $$118)
            )
           )
           (set_local $$120
            (get_local $$34)
           )
           (set_local $$121
            (i32.add
             (get_local $$27)
             (i32.shl
              (get_local $$120)
              (i32.const 2)
             )
            )
           )
           (f32.store
            (get_local $$121)
            (get_local $$119)
           )
           (set_local $$122
            (get_local $$34)
           )
           (set_local $$123
            (i32.add
             (get_local $$122)
             (i32.const -1)
            )
           )
           (set_local $$34
            (get_local $$123)
           )
           (br $while-in16)
          )
         )
         (set_local $$124
          (f32.load
           (get_local $$27)
          )
         )
         (set_local $$125
          (get_local $$33)
         )
         (set_local $$15
          (get_local $$124)
         )
         (set_local $$16
          (get_local $$125)
         )
         (set_local $$126
          (get_local $$15)
         )
         (set_local $$127
          (get_local $$16)
         )
         (set_local $$128
          (call $_fminf
           (get_local $$126)
           (get_local $$127)
          )
         )
         (f32.store
          (get_local $$27)
          (get_local $$128)
         )
         (set_local $$129
          (get_local $$29)
         )
         (set_local $$130
          (i32.add
           (get_local $$129)
           (i32.const 1)
          )
         )
         (set_local $$29
          (get_local $$130)
         )
         (br $while-in14)
        )
       )
       (set_local $$131
        (i32.add
         (get_local $$68)
         (i32.const 1)
        )
       )
       (set_local $$28
        (get_local $$131)
       )
       (br $while-in12)
      )
     )
    )
   )
  )
  (set_local $$288
   (i32.add
    (get_local $$49)
    (i32.const 1064)
   )
  )
  (set_local $$289
   (i32.load
    (get_local $$288)
   )
  )
  (block $switch17
   (block $switch-default23
    (block $switch-case22
     (block $switch-case21
      (block $switch-case20
       (block $switch-case19
        (block $switch-case18
         (br_table $switch-case18 $switch-case19 $switch-case20 $switch-case21 $switch-case22 $switch-default23
          (i32.sub
           (get_local $$289)
           (i32.const 3)
          )
         )
        )
        (block
         (set_local $$290
          (i32.add
           (get_local $$49)
           (i32.const 1076)
          )
         )
         (set_local $$291
          (i32.load
           (get_local $$290)
          )
         )
         (set_local $$292
          (i32.add
           (get_local $$27)
           (i32.shl
            (get_local $$291)
            (i32.const 2)
           )
          )
         )
         (set_local $$293
          (f32.load
           (get_local $$292)
          )
         )
         (set_local $$21
          (get_local $$293)
         )
         (set_local $$330
          (get_local $$21)
         )
         (set_global $STACKTOP
          (get_local $sp)
         )
         (return
          (get_local $$330)
         )
         (br $switch17)
        )
       )
       (block
        (set_local $$294
         (i32.add
          (get_local $$49)
          (i32.const 1076)
         )
        )
        (set_local $$295
         (i32.load
          (get_local $$294)
         )
        )
        (set_local $$296
         (i32.add
          (get_local $$27)
          (i32.shl
           (get_local $$295)
           (i32.const 2)
          )
         )
        )
        (set_local $$297
         (f32.load
          (get_local $$296)
         )
        )
        (set_local $$298
         (i32.add
          (get_local $$49)
          (i32.const 1072)
         )
        )
        (set_local $$299
         (i32.load
          (get_local $$298)
         )
        )
        (set_local $$300
         (i32.add
          (get_local $$27)
          (i32.shl
           (get_local $$299)
           (i32.const 2)
          )
         )
        )
        (set_local $$301
         (f32.load
          (get_local $$300)
         )
        )
        (set_local $$302
         (f32.add
          (get_local $$297)
          (get_local $$301)
         )
        )
        (set_local $$21
         (get_local $$302)
        )
        (set_local $$330
         (get_local $$21)
        )
        (set_global $STACKTOP
         (get_local $sp)
        )
        (return
         (get_local $$330)
        )
        (br $switch17)
       )
      )
      (block
       (set_local $$303
        (i32.add
         (get_local $$49)
         (i32.const 1076)
        )
       )
       (set_local $$304
        (i32.load
         (get_local $$303)
        )
       )
       (set_local $$305
        (i32.add
         (get_local $$27)
         (i32.shl
          (get_local $$304)
          (i32.const 2)
         )
        )
       )
       (set_local $$306
        (f32.load
         (get_local $$305)
        )
       )
       (set_local $$307
        (i32.add
         (get_local $$49)
         (i32.const 1072)
        )
       )
       (set_local $$308
        (i32.load
         (get_local $$307)
        )
       )
       (set_local $$309
        (i32.add
         (get_local $$27)
         (i32.shl
          (get_local $$308)
          (i32.const 2)
         )
        )
       )
       (set_local $$310
        (f32.load
         (get_local $$309)
        )
       )
       (set_local $$311
        (f32.sub
         (get_local $$306)
         (get_local $$310)
        )
       )
       (set_local $$21
        (get_local $$311)
       )
       (set_local $$330
        (get_local $$21)
       )
       (set_global $STACKTOP
        (get_local $sp)
       )
       (return
        (get_local $$330)
       )
       (br $switch17)
      )
     )
     (block
      (set_local $$312
       (i32.add
        (get_local $$49)
        (i32.const 1076)
       )
      )
      (set_local $$313
       (i32.load
        (get_local $$312)
       )
      )
      (set_local $$314
       (i32.add
        (get_local $$27)
        (i32.shl
         (get_local $$313)
         (i32.const 2)
        )
       )
      )
      (set_local $$315
       (f32.load
        (get_local $$314)
       )
      )
      (set_local $$316
       (i32.add
        (get_local $$49)
        (i32.const 1072)
       )
      )
      (set_local $$317
       (i32.load
        (get_local $$316)
       )
      )
      (set_local $$318
       (i32.add
        (get_local $$27)
        (i32.shl
         (get_local $$317)
         (i32.const 2)
        )
       )
      )
      (set_local $$319
       (f32.load
        (get_local $$318)
       )
      )
      (set_local $$320
       (f32.mul
        (get_local $$315)
        (get_local $$319)
       )
      )
      (set_local $$21
       (get_local $$320)
      )
      (set_local $$330
       (get_local $$21)
      )
      (set_global $STACKTOP
       (get_local $sp)
      )
      (return
       (get_local $$330)
      )
      (br $switch17)
     )
    )
    (block
     (set_local $$321
      (i32.add
       (get_local $$49)
       (i32.const 1072)
      )
     )
     (set_local $$322
      (i32.load
       (get_local $$321)
      )
     )
     (set_local $$323
      (i32.add
       (get_local $$27)
       (i32.shl
        (get_local $$322)
        (i32.const 2)
       )
      )
     )
     (set_local $$324
      (f32.load
       (get_local $$323)
      )
     )
     (set_local $$325
      (i32.add
       (get_local $$49)
       (i32.const 1076)
      )
     )
     (set_local $$326
      (i32.load
       (get_local $$325)
      )
     )
     (set_local $$327
      (i32.add
       (get_local $$27)
       (i32.shl
        (get_local $$326)
        (i32.const 2)
       )
      )
     )
     (set_local $$328
      (f32.load
       (get_local $$327)
      )
     )
     (set_local $$329
      (f32.div
       (get_local $$324)
       (get_local $$328)
      )
     )
     (set_local $$21
      (get_local $$329)
     )
     (set_local $$330
      (get_local $$21)
     )
     (set_global $STACKTOP
      (get_local $sp)
     )
     (return
      (get_local $$330)
     )
     (br $switch17)
    )
   )
   (block
    (set_local $$21
     (f32.const 0)
    )
    (set_local $$330
     (get_local $$21)
    )
    (set_global $STACKTOP
     (get_local $sp)
    )
    (return
     (get_local $$330)
    )
   )
  )
  (return
   (f32.const 0)
  )
 )
 (func $__ZNK9FastNoise13GetWhiteNoiseEff (param $$0 i32) (param $$1 f32) (param $$2 f32) (result f32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 i32)
  (local $$14 i32)
  (local $$15 i32)
  (local $$16 i32)
  (local $$17 f32)
  (local $$3 i32)
  (local $$4 i32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$4
   (i32.add
    (get_local $sp)
    (i32.const 4)
   )
  )
  (set_local $$5
   (get_local $sp)
  )
  (set_local $$3
   (get_local $$0)
  )
  (f32.store
   (get_local $$4)
   (get_local $$1)
  )
  (f32.store
   (get_local $$5)
   (get_local $$2)
  )
  (set_local $$6
   (get_local $$3)
  )
  (set_local $$7
   (i32.add
    (get_local $$6)
    (i32.const 1024)
   )
  )
  (set_local $$8
   (i32.load
    (get_local $$7)
   )
  )
  (set_local $$9
   (i32.load
    (get_local $$4)
   )
  )
  (set_local $$10
   (i32.load
    (get_local $$4)
   )
  )
  (set_local $$11
   (i32.shr_s
    (get_local $$10)
    (i32.const 16)
   )
  )
  (set_local $$12
   (i32.xor
    (get_local $$9)
    (get_local $$11)
   )
  )
  (set_local $$13
   (i32.load
    (get_local $$5)
   )
  )
  (set_local $$14
   (i32.load
    (get_local $$5)
   )
  )
  (set_local $$15
   (i32.shr_s
    (get_local $$14)
    (i32.const 16)
   )
  )
  (set_local $$16
   (i32.xor
    (get_local $$13)
    (get_local $$15)
   )
  )
  (set_local $$17
   (call $__ZL10ValCoord2Diii
    (get_local $$8)
    (get_local $$12)
    (get_local $$16)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$17)
  )
 )
 (func $__ZNK9FastNoise11SingleCubicEhff (param $$0 i32) (param $$1 i32) (param $$2 f32) (param $$3 f32) (result f32)
  (local $$10 i32)
  (local $$100 f32)
  (local $$101 i32)
  (local $$102 i32)
  (local $$103 i32)
  (local $$104 f32)
  (local $$105 i32)
  (local $$106 i32)
  (local $$107 i32)
  (local $$108 f32)
  (local $$109 i32)
  (local $$11 i32)
  (local $$110 i32)
  (local $$111 i32)
  (local $$112 f32)
  (local $$113 f32)
  (local $$114 f32)
  (local $$115 f32)
  (local $$116 f32)
  (local $$117 f32)
  (local $$12 i32)
  (local $$13 i32)
  (local $$14 i32)
  (local $$15 i32)
  (local $$16 f32)
  (local $$17 f32)
  (local $$18 i32)
  (local $$19 f32)
  (local $$20 i32)
  (local $$21 f32)
  (local $$22 i32)
  (local $$23 i32)
  (local $$24 i32)
  (local $$25 i32)
  (local $$26 i32)
  (local $$27 i32)
  (local $$28 i32)
  (local $$29 i32)
  (local $$30 i32)
  (local $$31 i32)
  (local $$32 i32)
  (local $$33 i32)
  (local $$34 i32)
  (local $$35 f32)
  (local $$36 i32)
  (local $$37 f32)
  (local $$38 f32)
  (local $$39 f32)
  (local $$4 i32)
  (local $$40 i32)
  (local $$41 f32)
  (local $$42 f32)
  (local $$43 i32)
  (local $$44 i32)
  (local $$45 i32)
  (local $$46 f32)
  (local $$47 i32)
  (local $$48 i32)
  (local $$49 i32)
  (local $$5 i32)
  (local $$50 f32)
  (local $$51 i32)
  (local $$52 i32)
  (local $$53 i32)
  (local $$54 f32)
  (local $$55 i32)
  (local $$56 i32)
  (local $$57 i32)
  (local $$58 f32)
  (local $$59 f32)
  (local $$6 f32)
  (local $$60 f32)
  (local $$61 i32)
  (local $$62 i32)
  (local $$63 i32)
  (local $$64 f32)
  (local $$65 i32)
  (local $$66 i32)
  (local $$67 i32)
  (local $$68 f32)
  (local $$69 i32)
  (local $$7 f32)
  (local $$70 i32)
  (local $$71 i32)
  (local $$72 f32)
  (local $$73 i32)
  (local $$74 i32)
  (local $$75 i32)
  (local $$76 f32)
  (local $$77 f32)
  (local $$78 f32)
  (local $$79 i32)
  (local $$8 i32)
  (local $$80 i32)
  (local $$81 i32)
  (local $$82 f32)
  (local $$83 i32)
  (local $$84 i32)
  (local $$85 i32)
  (local $$86 f32)
  (local $$87 i32)
  (local $$88 i32)
  (local $$89 i32)
  (local $$9 i32)
  (local $$90 f32)
  (local $$91 i32)
  (local $$92 i32)
  (local $$93 i32)
  (local $$94 f32)
  (local $$95 f32)
  (local $$96 f32)
  (local $$97 i32)
  (local $$98 i32)
  (local $$99 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 64)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 64)
   )
  )
  (set_local $$4
   (get_local $$0)
  )
  (set_local $$5
   (get_local $$1)
  )
  (set_local $$6
   (get_local $$2)
  )
  (set_local $$7
   (get_local $$3)
  )
  (set_local $$18
   (get_local $$4)
  )
  (set_local $$19
   (get_local $$6)
  )
  (set_local $$20
   (call $__ZL9FastFloorf
    (get_local $$19)
   )
  )
  (set_local $$8
   (get_local $$20)
  )
  (set_local $$21
   (get_local $$7)
  )
  (set_local $$22
   (call $__ZL9FastFloorf
    (get_local $$21)
   )
  )
  (set_local $$9
   (get_local $$22)
  )
  (set_local $$23
   (get_local $$8)
  )
  (set_local $$24
   (i32.sub
    (get_local $$23)
    (i32.const 1)
   )
  )
  (set_local $$10
   (get_local $$24)
  )
  (set_local $$25
   (get_local $$9)
  )
  (set_local $$26
   (i32.sub
    (get_local $$25)
    (i32.const 1)
   )
  )
  (set_local $$11
   (get_local $$26)
  )
  (set_local $$27
   (get_local $$8)
  )
  (set_local $$28
   (i32.add
    (get_local $$27)
    (i32.const 1)
   )
  )
  (set_local $$12
   (get_local $$28)
  )
  (set_local $$29
   (get_local $$9)
  )
  (set_local $$30
   (i32.add
    (get_local $$29)
    (i32.const 1)
   )
  )
  (set_local $$13
   (get_local $$30)
  )
  (set_local $$31
   (get_local $$8)
  )
  (set_local $$32
   (i32.add
    (get_local $$31)
    (i32.const 2)
   )
  )
  (set_local $$14
   (get_local $$32)
  )
  (set_local $$33
   (get_local $$9)
  )
  (set_local $$34
   (i32.add
    (get_local $$33)
    (i32.const 2)
   )
  )
  (set_local $$15
   (get_local $$34)
  )
  (set_local $$35
   (get_local $$6)
  )
  (set_local $$36
   (get_local $$8)
  )
  (set_local $$37
   (f32.convert_s/i32
    (get_local $$36)
   )
  )
  (set_local $$38
   (f32.sub
    (get_local $$35)
    (get_local $$37)
   )
  )
  (set_local $$16
   (get_local $$38)
  )
  (set_local $$39
   (get_local $$7)
  )
  (set_local $$40
   (get_local $$9)
  )
  (set_local $$41
   (f32.convert_s/i32
    (get_local $$40)
   )
  )
  (set_local $$42
   (f32.sub
    (get_local $$39)
    (get_local $$41)
   )
  )
  (set_local $$17
   (get_local $$42)
  )
  (set_local $$43
   (get_local $$5)
  )
  (set_local $$44
   (get_local $$10)
  )
  (set_local $$45
   (get_local $$11)
  )
  (set_local $$46
   (call $__ZNK9FastNoise14ValCoord2DFastEhii
    (get_local $$18)
    (get_local $$43)
    (get_local $$44)
    (get_local $$45)
   )
  )
  (set_local $$47
   (get_local $$5)
  )
  (set_local $$48
   (get_local $$8)
  )
  (set_local $$49
   (get_local $$11)
  )
  (set_local $$50
   (call $__ZNK9FastNoise14ValCoord2DFastEhii
    (get_local $$18)
    (get_local $$47)
    (get_local $$48)
    (get_local $$49)
   )
  )
  (set_local $$51
   (get_local $$5)
  )
  (set_local $$52
   (get_local $$12)
  )
  (set_local $$53
   (get_local $$11)
  )
  (set_local $$54
   (call $__ZNK9FastNoise14ValCoord2DFastEhii
    (get_local $$18)
    (get_local $$51)
    (get_local $$52)
    (get_local $$53)
   )
  )
  (set_local $$55
   (get_local $$5)
  )
  (set_local $$56
   (get_local $$14)
  )
  (set_local $$57
   (get_local $$11)
  )
  (set_local $$58
   (call $__ZNK9FastNoise14ValCoord2DFastEhii
    (get_local $$18)
    (get_local $$55)
    (get_local $$56)
    (get_local $$57)
   )
  )
  (set_local $$59
   (get_local $$16)
  )
  (set_local $$60
   (call $__ZL9CubicLerpfffff
    (get_local $$46)
    (get_local $$50)
    (get_local $$54)
    (get_local $$58)
    (get_local $$59)
   )
  )
  (set_local $$61
   (get_local $$5)
  )
  (set_local $$62
   (get_local $$10)
  )
  (set_local $$63
   (get_local $$9)
  )
  (set_local $$64
   (call $__ZNK9FastNoise14ValCoord2DFastEhii
    (get_local $$18)
    (get_local $$61)
    (get_local $$62)
    (get_local $$63)
   )
  )
  (set_local $$65
   (get_local $$5)
  )
  (set_local $$66
   (get_local $$8)
  )
  (set_local $$67
   (get_local $$9)
  )
  (set_local $$68
   (call $__ZNK9FastNoise14ValCoord2DFastEhii
    (get_local $$18)
    (get_local $$65)
    (get_local $$66)
    (get_local $$67)
   )
  )
  (set_local $$69
   (get_local $$5)
  )
  (set_local $$70
   (get_local $$12)
  )
  (set_local $$71
   (get_local $$9)
  )
  (set_local $$72
   (call $__ZNK9FastNoise14ValCoord2DFastEhii
    (get_local $$18)
    (get_local $$69)
    (get_local $$70)
    (get_local $$71)
   )
  )
  (set_local $$73
   (get_local $$5)
  )
  (set_local $$74
   (get_local $$14)
  )
  (set_local $$75
   (get_local $$9)
  )
  (set_local $$76
   (call $__ZNK9FastNoise14ValCoord2DFastEhii
    (get_local $$18)
    (get_local $$73)
    (get_local $$74)
    (get_local $$75)
   )
  )
  (set_local $$77
   (get_local $$16)
  )
  (set_local $$78
   (call $__ZL9CubicLerpfffff
    (get_local $$64)
    (get_local $$68)
    (get_local $$72)
    (get_local $$76)
    (get_local $$77)
   )
  )
  (set_local $$79
   (get_local $$5)
  )
  (set_local $$80
   (get_local $$10)
  )
  (set_local $$81
   (get_local $$13)
  )
  (set_local $$82
   (call $__ZNK9FastNoise14ValCoord2DFastEhii
    (get_local $$18)
    (get_local $$79)
    (get_local $$80)
    (get_local $$81)
   )
  )
  (set_local $$83
   (get_local $$5)
  )
  (set_local $$84
   (get_local $$8)
  )
  (set_local $$85
   (get_local $$13)
  )
  (set_local $$86
   (call $__ZNK9FastNoise14ValCoord2DFastEhii
    (get_local $$18)
    (get_local $$83)
    (get_local $$84)
    (get_local $$85)
   )
  )
  (set_local $$87
   (get_local $$5)
  )
  (set_local $$88
   (get_local $$12)
  )
  (set_local $$89
   (get_local $$13)
  )
  (set_local $$90
   (call $__ZNK9FastNoise14ValCoord2DFastEhii
    (get_local $$18)
    (get_local $$87)
    (get_local $$88)
    (get_local $$89)
   )
  )
  (set_local $$91
   (get_local $$5)
  )
  (set_local $$92
   (get_local $$14)
  )
  (set_local $$93
   (get_local $$13)
  )
  (set_local $$94
   (call $__ZNK9FastNoise14ValCoord2DFastEhii
    (get_local $$18)
    (get_local $$91)
    (get_local $$92)
    (get_local $$93)
   )
  )
  (set_local $$95
   (get_local $$16)
  )
  (set_local $$96
   (call $__ZL9CubicLerpfffff
    (get_local $$82)
    (get_local $$86)
    (get_local $$90)
    (get_local $$94)
    (get_local $$95)
   )
  )
  (set_local $$97
   (get_local $$5)
  )
  (set_local $$98
   (get_local $$10)
  )
  (set_local $$99
   (get_local $$15)
  )
  (set_local $$100
   (call $__ZNK9FastNoise14ValCoord2DFastEhii
    (get_local $$18)
    (get_local $$97)
    (get_local $$98)
    (get_local $$99)
   )
  )
  (set_local $$101
   (get_local $$5)
  )
  (set_local $$102
   (get_local $$8)
  )
  (set_local $$103
   (get_local $$15)
  )
  (set_local $$104
   (call $__ZNK9FastNoise14ValCoord2DFastEhii
    (get_local $$18)
    (get_local $$101)
    (get_local $$102)
    (get_local $$103)
   )
  )
  (set_local $$105
   (get_local $$5)
  )
  (set_local $$106
   (get_local $$12)
  )
  (set_local $$107
   (get_local $$15)
  )
  (set_local $$108
   (call $__ZNK9FastNoise14ValCoord2DFastEhii
    (get_local $$18)
    (get_local $$105)
    (get_local $$106)
    (get_local $$107)
   )
  )
  (set_local $$109
   (get_local $$5)
  )
  (set_local $$110
   (get_local $$14)
  )
  (set_local $$111
   (get_local $$15)
  )
  (set_local $$112
   (call $__ZNK9FastNoise14ValCoord2DFastEhii
    (get_local $$18)
    (get_local $$109)
    (get_local $$110)
    (get_local $$111)
   )
  )
  (set_local $$113
   (get_local $$16)
  )
  (set_local $$114
   (call $__ZL9CubicLerpfffff
    (get_local $$100)
    (get_local $$104)
    (get_local $$108)
    (get_local $$112)
    (get_local $$113)
   )
  )
  (set_local $$115
   (get_local $$17)
  )
  (set_local $$116
   (call $__ZL9CubicLerpfffff
    (get_local $$60)
    (get_local $$78)
    (get_local $$96)
    (get_local $$114)
    (get_local $$115)
   )
  )
  (set_local $$117
   (f32.mul
    (get_local $$116)
    (f32.const 0.4444444477558136)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$117)
  )
 )
 (func $__ZNK9FastNoise21SingleCubicFractalFBMEff (param $$0 i32) (param $$1 f32) (param $$2 f32) (result f32)
  (local $$10 i32)
  (local $$11 f32)
  (local $$12 f32)
  (local $$13 f32)
  (local $$14 i32)
  (local $$15 i32)
  (local $$16 i32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$19 i32)
  (local $$20 f32)
  (local $$21 f32)
  (local $$22 f32)
  (local $$23 i32)
  (local $$24 f32)
  (local $$25 f32)
  (local $$26 f32)
  (local $$27 i32)
  (local $$28 f32)
  (local $$29 f32)
  (local $$3 i32)
  (local $$30 f32)
  (local $$31 i32)
  (local $$32 i32)
  (local $$33 i32)
  (local $$34 f32)
  (local $$35 f32)
  (local $$36 f32)
  (local $$37 f32)
  (local $$38 f32)
  (local $$39 f32)
  (local $$4 f32)
  (local $$40 f32)
  (local $$41 f32)
  (local $$42 i32)
  (local $$43 f32)
  (local $$44 f32)
  (local $$5 f32)
  (local $$6 f32)
  (local $$7 f32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 32)
   )
  )
  (set_local $$3
   (get_local $$0)
  )
  (set_local $$4
   (get_local $$1)
  )
  (set_local $$5
   (get_local $$2)
  )
  (set_local $$9
   (get_local $$3)
  )
  (set_local $$10
   (i32.load8_s
    (get_local $$9)
   )
  )
  (set_local $$11
   (get_local $$4)
  )
  (set_local $$12
   (get_local $$5)
  )
  (set_local $$13
   (call $__ZNK9FastNoise11SingleCubicEhff
    (get_local $$9)
    (get_local $$10)
    (get_local $$11)
    (get_local $$12)
   )
  )
  (set_local $$6
   (get_local $$13)
  )
  (set_local $$7
   (f32.const 1)
  )
  (set_local $$8
   (i32.const 0)
  )
  (loop $while-in
   (block $while-out
    (set_local $$14
     (get_local $$8)
    )
    (set_local $$15
     (i32.add
      (get_local $$14)
      (i32.const 1)
     )
    )
    (set_local $$8
     (get_local $$15)
    )
    (set_local $$16
     (i32.add
      (get_local $$9)
      (i32.const 1040)
     )
    )
    (set_local $$17
     (i32.load
      (get_local $$16)
     )
    )
    (set_local $$18
     (i32.lt_s
      (get_local $$15)
      (get_local $$17)
     )
    )
    (if
     (i32.eqz
      (get_local $$18)
     )
     (br $while-out)
    )
    (set_local $$19
     (i32.add
      (get_local $$9)
      (i32.const 1044)
     )
    )
    (set_local $$20
     (f32.load
      (get_local $$19)
     )
    )
    (set_local $$21
     (get_local $$4)
    )
    (set_local $$22
     (f32.mul
      (get_local $$21)
      (get_local $$20)
     )
    )
    (set_local $$4
     (get_local $$22)
    )
    (set_local $$23
     (i32.add
      (get_local $$9)
      (i32.const 1044)
     )
    )
    (set_local $$24
     (f32.load
      (get_local $$23)
     )
    )
    (set_local $$25
     (get_local $$5)
    )
    (set_local $$26
     (f32.mul
      (get_local $$25)
      (get_local $$24)
     )
    )
    (set_local $$5
     (get_local $$26)
    )
    (set_local $$27
     (i32.add
      (get_local $$9)
      (i32.const 1048)
     )
    )
    (set_local $$28
     (f32.load
      (get_local $$27)
     )
    )
    (set_local $$29
     (get_local $$7)
    )
    (set_local $$30
     (f32.mul
      (get_local $$29)
      (get_local $$28)
     )
    )
    (set_local $$7
     (get_local $$30)
    )
    (set_local $$31
     (get_local $$8)
    )
    (set_local $$32
     (i32.add
      (get_local $$9)
      (get_local $$31)
     )
    )
    (set_local $$33
     (i32.load8_s
      (get_local $$32)
     )
    )
    (set_local $$34
     (get_local $$4)
    )
    (set_local $$35
     (get_local $$5)
    )
    (set_local $$36
     (call $__ZNK9FastNoise11SingleCubicEhff
      (get_local $$9)
      (get_local $$33)
      (get_local $$34)
      (get_local $$35)
     )
    )
    (set_local $$37
     (get_local $$7)
    )
    (set_local $$38
     (f32.mul
      (get_local $$36)
      (get_local $$37)
     )
    )
    (set_local $$39
     (get_local $$6)
    )
    (set_local $$40
     (f32.add
      (get_local $$39)
      (get_local $$38)
     )
    )
    (set_local $$6
     (get_local $$40)
    )
    (br $while-in)
   )
  )
  (set_local $$41
   (get_local $$6)
  )
  (set_local $$42
   (i32.add
    (get_local $$9)
    (i32.const 1056)
   )
  )
  (set_local $$43
   (f32.load
    (get_local $$42)
   )
  )
  (set_local $$44
   (f32.mul
    (get_local $$41)
    (get_local $$43)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$44)
  )
 )
 (func $__ZNK9FastNoise24SingleCubicFractalBillowEff (param $$0 i32) (param $$1 f32) (param $$2 f32) (result f32)
  (local $$10 i32)
  (local $$11 f32)
  (local $$12 f32)
  (local $$13 f32)
  (local $$14 f32)
  (local $$15 f32)
  (local $$16 f32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$19 i32)
  (local $$20 i32)
  (local $$21 i32)
  (local $$22 i32)
  (local $$23 f32)
  (local $$24 f32)
  (local $$25 f32)
  (local $$26 i32)
  (local $$27 f32)
  (local $$28 f32)
  (local $$29 f32)
  (local $$3 i32)
  (local $$30 i32)
  (local $$31 f32)
  (local $$32 f32)
  (local $$33 f32)
  (local $$34 i32)
  (local $$35 i32)
  (local $$36 i32)
  (local $$37 f32)
  (local $$38 f32)
  (local $$39 f32)
  (local $$4 f32)
  (local $$40 f32)
  (local $$41 f32)
  (local $$42 f32)
  (local $$43 f32)
  (local $$44 f32)
  (local $$45 f32)
  (local $$46 f32)
  (local $$47 f32)
  (local $$48 i32)
  (local $$49 f32)
  (local $$5 f32)
  (local $$50 f32)
  (local $$6 f32)
  (local $$7 f32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 32)
   )
  )
  (set_local $$3
   (get_local $$0)
  )
  (set_local $$4
   (get_local $$1)
  )
  (set_local $$5
   (get_local $$2)
  )
  (set_local $$9
   (get_local $$3)
  )
  (set_local $$10
   (i32.load8_s
    (get_local $$9)
   )
  )
  (set_local $$11
   (get_local $$4)
  )
  (set_local $$12
   (get_local $$5)
  )
  (set_local $$13
   (call $__ZNK9FastNoise11SingleCubicEhff
    (get_local $$9)
    (get_local $$10)
    (get_local $$11)
    (get_local $$12)
   )
  )
  (set_local $$14
   (call $__ZL7FastAbsf
    (get_local $$13)
   )
  )
  (set_local $$15
   (f32.mul
    (get_local $$14)
    (f32.const 2)
   )
  )
  (set_local $$16
   (f32.sub
    (get_local $$15)
    (f32.const 1)
   )
  )
  (set_local $$6
   (get_local $$16)
  )
  (set_local $$7
   (f32.const 1)
  )
  (set_local $$8
   (i32.const 0)
  )
  (loop $while-in
   (block $while-out
    (set_local $$17
     (get_local $$8)
    )
    (set_local $$18
     (i32.add
      (get_local $$17)
      (i32.const 1)
     )
    )
    (set_local $$8
     (get_local $$18)
    )
    (set_local $$19
     (i32.add
      (get_local $$9)
      (i32.const 1040)
     )
    )
    (set_local $$20
     (i32.load
      (get_local $$19)
     )
    )
    (set_local $$21
     (i32.lt_s
      (get_local $$18)
      (get_local $$20)
     )
    )
    (if
     (i32.eqz
      (get_local $$21)
     )
     (br $while-out)
    )
    (set_local $$22
     (i32.add
      (get_local $$9)
      (i32.const 1044)
     )
    )
    (set_local $$23
     (f32.load
      (get_local $$22)
     )
    )
    (set_local $$24
     (get_local $$4)
    )
    (set_local $$25
     (f32.mul
      (get_local $$24)
      (get_local $$23)
     )
    )
    (set_local $$4
     (get_local $$25)
    )
    (set_local $$26
     (i32.add
      (get_local $$9)
      (i32.const 1044)
     )
    )
    (set_local $$27
     (f32.load
      (get_local $$26)
     )
    )
    (set_local $$28
     (get_local $$5)
    )
    (set_local $$29
     (f32.mul
      (get_local $$28)
      (get_local $$27)
     )
    )
    (set_local $$5
     (get_local $$29)
    )
    (set_local $$30
     (i32.add
      (get_local $$9)
      (i32.const 1048)
     )
    )
    (set_local $$31
     (f32.load
      (get_local $$30)
     )
    )
    (set_local $$32
     (get_local $$7)
    )
    (set_local $$33
     (f32.mul
      (get_local $$32)
      (get_local $$31)
     )
    )
    (set_local $$7
     (get_local $$33)
    )
    (set_local $$34
     (get_local $$8)
    )
    (set_local $$35
     (i32.add
      (get_local $$9)
      (get_local $$34)
     )
    )
    (set_local $$36
     (i32.load8_s
      (get_local $$35)
     )
    )
    (set_local $$37
     (get_local $$4)
    )
    (set_local $$38
     (get_local $$5)
    )
    (set_local $$39
     (call $__ZNK9FastNoise11SingleCubicEhff
      (get_local $$9)
      (get_local $$36)
      (get_local $$37)
      (get_local $$38)
     )
    )
    (set_local $$40
     (call $__ZL7FastAbsf
      (get_local $$39)
     )
    )
    (set_local $$41
     (f32.mul
      (get_local $$40)
      (f32.const 2)
     )
    )
    (set_local $$42
     (f32.sub
      (get_local $$41)
      (f32.const 1)
     )
    )
    (set_local $$43
     (get_local $$7)
    )
    (set_local $$44
     (f32.mul
      (get_local $$42)
      (get_local $$43)
     )
    )
    (set_local $$45
     (get_local $$6)
    )
    (set_local $$46
     (f32.add
      (get_local $$45)
      (get_local $$44)
     )
    )
    (set_local $$6
     (get_local $$46)
    )
    (br $while-in)
   )
  )
  (set_local $$47
   (get_local $$6)
  )
  (set_local $$48
   (i32.add
    (get_local $$9)
    (i32.const 1056)
   )
  )
  (set_local $$49
   (f32.load
    (get_local $$48)
   )
  )
  (set_local $$50
   (f32.mul
    (get_local $$47)
    (get_local $$49)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$50)
  )
 )
 (func $__ZNK9FastNoise28SingleCubicFractalRigidMultiEff (param $$0 i32) (param $$1 f32) (param $$2 f32) (result f32)
  (local $$10 i32)
  (local $$11 f32)
  (local $$12 f32)
  (local $$13 f32)
  (local $$14 f32)
  (local $$15 f32)
  (local $$16 i32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$19 i32)
  (local $$20 i32)
  (local $$21 i32)
  (local $$22 f32)
  (local $$23 f32)
  (local $$24 f32)
  (local $$25 i32)
  (local $$26 f32)
  (local $$27 f32)
  (local $$28 f32)
  (local $$29 i32)
  (local $$3 i32)
  (local $$30 f32)
  (local $$31 f32)
  (local $$32 f32)
  (local $$33 i32)
  (local $$34 i32)
  (local $$35 i32)
  (local $$36 f32)
  (local $$37 f32)
  (local $$38 f32)
  (local $$39 f32)
  (local $$4 f32)
  (local $$40 f32)
  (local $$41 f32)
  (local $$42 f32)
  (local $$43 f32)
  (local $$44 f32)
  (local $$45 f32)
  (local $$5 f32)
  (local $$6 f32)
  (local $$7 f32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 32)
   )
  )
  (set_local $$3
   (get_local $$0)
  )
  (set_local $$4
   (get_local $$1)
  )
  (set_local $$5
   (get_local $$2)
  )
  (set_local $$9
   (get_local $$3)
  )
  (set_local $$10
   (i32.load8_s
    (get_local $$9)
   )
  )
  (set_local $$11
   (get_local $$4)
  )
  (set_local $$12
   (get_local $$5)
  )
  (set_local $$13
   (call $__ZNK9FastNoise11SingleCubicEhff
    (get_local $$9)
    (get_local $$10)
    (get_local $$11)
    (get_local $$12)
   )
  )
  (set_local $$14
   (call $__ZL7FastAbsf
    (get_local $$13)
   )
  )
  (set_local $$15
   (f32.sub
    (f32.const 1)
    (get_local $$14)
   )
  )
  (set_local $$6
   (get_local $$15)
  )
  (set_local $$7
   (f32.const 1)
  )
  (set_local $$8
   (i32.const 0)
  )
  (loop $while-in
   (block $while-out
    (set_local $$16
     (get_local $$8)
    )
    (set_local $$17
     (i32.add
      (get_local $$16)
      (i32.const 1)
     )
    )
    (set_local $$8
     (get_local $$17)
    )
    (set_local $$18
     (i32.add
      (get_local $$9)
      (i32.const 1040)
     )
    )
    (set_local $$19
     (i32.load
      (get_local $$18)
     )
    )
    (set_local $$20
     (i32.lt_s
      (get_local $$17)
      (get_local $$19)
     )
    )
    (if
     (i32.eqz
      (get_local $$20)
     )
     (br $while-out)
    )
    (set_local $$21
     (i32.add
      (get_local $$9)
      (i32.const 1044)
     )
    )
    (set_local $$22
     (f32.load
      (get_local $$21)
     )
    )
    (set_local $$23
     (get_local $$4)
    )
    (set_local $$24
     (f32.mul
      (get_local $$23)
      (get_local $$22)
     )
    )
    (set_local $$4
     (get_local $$24)
    )
    (set_local $$25
     (i32.add
      (get_local $$9)
      (i32.const 1044)
     )
    )
    (set_local $$26
     (f32.load
      (get_local $$25)
     )
    )
    (set_local $$27
     (get_local $$5)
    )
    (set_local $$28
     (f32.mul
      (get_local $$27)
      (get_local $$26)
     )
    )
    (set_local $$5
     (get_local $$28)
    )
    (set_local $$29
     (i32.add
      (get_local $$9)
      (i32.const 1048)
     )
    )
    (set_local $$30
     (f32.load
      (get_local $$29)
     )
    )
    (set_local $$31
     (get_local $$7)
    )
    (set_local $$32
     (f32.mul
      (get_local $$31)
      (get_local $$30)
     )
    )
    (set_local $$7
     (get_local $$32)
    )
    (set_local $$33
     (get_local $$8)
    )
    (set_local $$34
     (i32.add
      (get_local $$9)
      (get_local $$33)
     )
    )
    (set_local $$35
     (i32.load8_s
      (get_local $$34)
     )
    )
    (set_local $$36
     (get_local $$4)
    )
    (set_local $$37
     (get_local $$5)
    )
    (set_local $$38
     (call $__ZNK9FastNoise11SingleCubicEhff
      (get_local $$9)
      (get_local $$35)
      (get_local $$36)
      (get_local $$37)
     )
    )
    (set_local $$39
     (call $__ZL7FastAbsf
      (get_local $$38)
     )
    )
    (set_local $$40
     (f32.sub
      (f32.const 1)
      (get_local $$39)
     )
    )
    (set_local $$41
     (get_local $$7)
    )
    (set_local $$42
     (f32.mul
      (get_local $$40)
      (get_local $$41)
     )
    )
    (set_local $$43
     (get_local $$6)
    )
    (set_local $$44
     (f32.sub
      (get_local $$43)
      (get_local $$42)
     )
    )
    (set_local $$6
     (get_local $$44)
    )
    (br $while-in)
   )
  )
  (set_local $$45
   (get_local $$6)
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$45)
  )
 )
 (func $__ZNK9FastNoise14ValCoord2DFastEhii (param $$0 i32) (param $$1 i32) (param $$2 i32) (param $$3 i32) (result f32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 i32)
  (local $$14 i32)
  (local $$15 f32)
  (local $$4 i32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$4
   (get_local $$0)
  )
  (set_local $$5
   (get_local $$1)
  )
  (set_local $$6
   (get_local $$2)
  )
  (set_local $$7
   (get_local $$3)
  )
  (set_local $$8
   (get_local $$4)
  )
  (set_local $$9
   (get_local $$5)
  )
  (set_local $$10
   (get_local $$6)
  )
  (set_local $$11
   (get_local $$7)
  )
  (set_local $$12
   (call $__ZNK9FastNoise11Index2D_256Ehii
    (get_local $$8)
    (get_local $$9)
    (get_local $$10)
    (get_local $$11)
   )
  )
  (set_local $$13
   (i32.and
    (get_local $$12)
    (i32.const 255)
   )
  )
  (set_local $$14
   (i32.add
    (i32.const 1688)
    (i32.shl
     (get_local $$13)
     (i32.const 2)
    )
   )
  )
  (set_local $$15
   (f32.load
    (get_local $$14)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$15)
  )
 )
 (func $__ZNK9FastNoise11Index2D_256Ehii (param $$0 i32) (param $$1 i32) (param $$2 i32) (param $$3 i32) (result i32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 i32)
  (local $$14 i32)
  (local $$15 i32)
  (local $$16 i32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$19 i32)
  (local $$20 i32)
  (local $$21 i32)
  (local $$4 i32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$4
   (get_local $$0)
  )
  (set_local $$5
   (get_local $$1)
  )
  (set_local $$6
   (get_local $$2)
  )
  (set_local $$7
   (get_local $$3)
  )
  (set_local $$8
   (get_local $$4)
  )
  (set_local $$9
   (get_local $$6)
  )
  (set_local $$10
   (i32.and
    (get_local $$9)
    (i32.const 255)
   )
  )
  (set_local $$11
   (get_local $$7)
  )
  (set_local $$12
   (i32.and
    (get_local $$11)
    (i32.const 255)
   )
  )
  (set_local $$13
   (get_local $$5)
  )
  (set_local $$14
   (i32.and
    (get_local $$13)
    (i32.const 255)
   )
  )
  (set_local $$15
   (i32.add
    (get_local $$12)
    (get_local $$14)
   )
  )
  (set_local $$16
   (i32.add
    (get_local $$8)
    (get_local $$15)
   )
  )
  (set_local $$17
   (i32.load8_s
    (get_local $$16)
   )
  )
  (set_local $$18
   (i32.and
    (get_local $$17)
    (i32.const 255)
   )
  )
  (set_local $$19
   (i32.add
    (get_local $$10)
    (get_local $$18)
   )
  )
  (set_local $$20
   (i32.add
    (get_local $$8)
    (get_local $$19)
   )
  )
  (set_local $$21
   (i32.load8_s
    (get_local $$20)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$21)
  )
 )
 (func $__ZL10ValCoord2Diii (param $$0 i32) (param $$1 i32) (param $$2 i32) (result f32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 i32)
  (local $$14 i32)
  (local $$15 i32)
  (local $$16 i32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$19 i32)
  (local $$20 i32)
  (local $$21 i32)
  (local $$22 f32)
  (local $$23 f32)
  (local $$3 i32)
  (local $$4 i32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$3
   (get_local $$0)
  )
  (set_local $$4
   (get_local $$1)
  )
  (set_local $$5
   (get_local $$2)
  )
  (set_local $$7
   (get_local $$3)
  )
  (set_local $$6
   (get_local $$7)
  )
  (set_local $$8
   (get_local $$4)
  )
  (set_local $$9
   (i32.mul
    (get_local $$8)
    (i32.const 1619)
   )
  )
  (set_local $$10
   (get_local $$6)
  )
  (set_local $$11
   (i32.xor
    (get_local $$10)
    (get_local $$9)
   )
  )
  (set_local $$6
   (get_local $$11)
  )
  (set_local $$12
   (get_local $$5)
  )
  (set_local $$13
   (i32.mul
    (get_local $$12)
    (i32.const 31337)
   )
  )
  (set_local $$14
   (get_local $$6)
  )
  (set_local $$15
   (i32.xor
    (get_local $$14)
    (get_local $$13)
   )
  )
  (set_local $$6
   (get_local $$15)
  )
  (set_local $$16
   (get_local $$6)
  )
  (set_local $$17
   (get_local $$6)
  )
  (set_local $$18
   (i32.mul
    (get_local $$16)
    (get_local $$17)
   )
  )
  (set_local $$19
   (get_local $$6)
  )
  (set_local $$20
   (i32.mul
    (get_local $$18)
    (get_local $$19)
   )
  )
  (set_local $$21
   (i32.mul
    (get_local $$20)
    (i32.const 60493)
   )
  )
  (set_local $$22
   (f32.convert_s/i32
    (get_local $$21)
   )
  )
  (set_local $$23
   (f32.div
    (get_local $$22)
    (f32.const 2147483648)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$23)
  )
 )
 (func $__ZNK9FastNoise11GradCoord2DEhiiff (param $$0 i32) (param $$1 i32) (param $$2 i32) (param $$3 i32) (param $$4 f32) (param $$5 f32) (result f32)
  (local $$10 f32)
  (local $$11 f32)
  (local $$12 i32)
  (local $$13 i32)
  (local $$14 i32)
  (local $$15 i32)
  (local $$16 i32)
  (local $$17 i32)
  (local $$18 f32)
  (local $$19 i32)
  (local $$20 i32)
  (local $$21 i32)
  (local $$22 f32)
  (local $$23 f32)
  (local $$24 f32)
  (local $$25 i32)
  (local $$26 i32)
  (local $$27 i32)
  (local $$28 f32)
  (local $$29 f32)
  (local $$30 f32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 32)
   )
  )
  (set_local $$6
   (get_local $$0)
  )
  (set_local $$7
   (get_local $$1)
  )
  (set_local $$8
   (get_local $$2)
  )
  (set_local $$9
   (get_local $$3)
  )
  (set_local $$10
   (get_local $$4)
  )
  (set_local $$11
   (get_local $$5)
  )
  (set_local $$13
   (get_local $$6)
  )
  (set_local $$14
   (get_local $$7)
  )
  (set_local $$15
   (get_local $$8)
  )
  (set_local $$16
   (get_local $$9)
  )
  (set_local $$17
   (call $__ZNK9FastNoise10Index2D_12Ehii
    (get_local $$13)
    (get_local $$14)
    (get_local $$15)
    (get_local $$16)
   )
  )
  (set_local $$12
   (get_local $$17)
  )
  (set_local $$18
   (get_local $$10)
  )
  (set_local $$19
   (get_local $$12)
  )
  (set_local $$20
   (i32.and
    (get_local $$19)
    (i32.const 255)
   )
  )
  (set_local $$21
   (i32.add
    (i32.const 5784)
    (i32.shl
     (get_local $$20)
     (i32.const 2)
    )
   )
  )
  (set_local $$22
   (f32.load
    (get_local $$21)
   )
  )
  (set_local $$23
   (f32.mul
    (get_local $$18)
    (get_local $$22)
   )
  )
  (set_local $$24
   (get_local $$11)
  )
  (set_local $$25
   (get_local $$12)
  )
  (set_local $$26
   (i32.and
    (get_local $$25)
    (i32.const 255)
   )
  )
  (set_local $$27
   (i32.add
    (i32.const 5832)
    (i32.shl
     (get_local $$26)
     (i32.const 2)
    )
   )
  )
  (set_local $$28
   (f32.load
    (get_local $$27)
   )
  )
  (set_local $$29
   (f32.mul
    (get_local $$24)
    (get_local $$28)
   )
  )
  (set_local $$30
   (f32.add
    (get_local $$23)
    (get_local $$29)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$30)
  )
 )
 (func $__ZNK9FastNoise10Index2D_12Ehii (param $$0 i32) (param $$1 i32) (param $$2 i32) (param $$3 i32) (result i32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 i32)
  (local $$14 i32)
  (local $$15 i32)
  (local $$16 i32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$19 i32)
  (local $$20 i32)
  (local $$21 i32)
  (local $$22 i32)
  (local $$4 i32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$4
   (get_local $$0)
  )
  (set_local $$5
   (get_local $$1)
  )
  (set_local $$6
   (get_local $$2)
  )
  (set_local $$7
   (get_local $$3)
  )
  (set_local $$8
   (get_local $$4)
  )
  (set_local $$9
   (get_local $$6)
  )
  (set_local $$10
   (i32.and
    (get_local $$9)
    (i32.const 255)
   )
  )
  (set_local $$11
   (get_local $$7)
  )
  (set_local $$12
   (i32.and
    (get_local $$11)
    (i32.const 255)
   )
  )
  (set_local $$13
   (get_local $$5)
  )
  (set_local $$14
   (i32.and
    (get_local $$13)
    (i32.const 255)
   )
  )
  (set_local $$15
   (i32.add
    (get_local $$12)
    (get_local $$14)
   )
  )
  (set_local $$16
   (i32.add
    (get_local $$8)
    (get_local $$15)
   )
  )
  (set_local $$17
   (i32.load8_s
    (get_local $$16)
   )
  )
  (set_local $$18
   (i32.and
    (get_local $$17)
    (i32.const 255)
   )
  )
  (set_local $$19
   (i32.add
    (get_local $$10)
    (get_local $$18)
   )
  )
  (set_local $$20
   (i32.add
    (get_local $$8)
    (i32.const 512)
   )
  )
  (set_local $$21
   (i32.add
    (get_local $$20)
    (get_local $$19)
   )
  )
  (set_local $$22
   (i32.load8_s
    (get_local $$21)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$22)
  )
 )
 (func $__ZNK9FastNoise13GetWhiteNoiseEffff (param $$0 i32) (param $$1 f32) (param $$2 f32) (param $$3 f32) (param $$4 f32) (result f32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 i32)
  (local $$14 i32)
  (local $$15 i32)
  (local $$16 i32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$19 i32)
  (local $$20 i32)
  (local $$21 i32)
  (local $$22 i32)
  (local $$23 i32)
  (local $$24 i32)
  (local $$25 i32)
  (local $$26 i32)
  (local $$27 i32)
  (local $$28 i32)
  (local $$29 f32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 32)
   )
  )
  (set_local $$6
   (i32.add
    (get_local $sp)
    (i32.const 12)
   )
  )
  (set_local $$7
   (i32.add
    (get_local $sp)
    (i32.const 8)
   )
  )
  (set_local $$8
   (i32.add
    (get_local $sp)
    (i32.const 4)
   )
  )
  (set_local $$9
   (get_local $sp)
  )
  (set_local $$5
   (get_local $$0)
  )
  (f32.store
   (get_local $$6)
   (get_local $$1)
  )
  (f32.store
   (get_local $$7)
   (get_local $$2)
  )
  (f32.store
   (get_local $$8)
   (get_local $$3)
  )
  (f32.store
   (get_local $$9)
   (get_local $$4)
  )
  (set_local $$10
   (get_local $$5)
  )
  (set_local $$11
   (i32.add
    (get_local $$10)
    (i32.const 1024)
   )
  )
  (set_local $$12
   (i32.load
    (get_local $$11)
   )
  )
  (set_local $$13
   (i32.load
    (get_local $$6)
   )
  )
  (set_local $$14
   (i32.load
    (get_local $$6)
   )
  )
  (set_local $$15
   (i32.shr_s
    (get_local $$14)
    (i32.const 16)
   )
  )
  (set_local $$16
   (i32.xor
    (get_local $$13)
    (get_local $$15)
   )
  )
  (set_local $$17
   (i32.load
    (get_local $$7)
   )
  )
  (set_local $$18
   (i32.load
    (get_local $$7)
   )
  )
  (set_local $$19
   (i32.shr_s
    (get_local $$18)
    (i32.const 16)
   )
  )
  (set_local $$20
   (i32.xor
    (get_local $$17)
    (get_local $$19)
   )
  )
  (set_local $$21
   (i32.load
    (get_local $$8)
   )
  )
  (set_local $$22
   (i32.load
    (get_local $$8)
   )
  )
  (set_local $$23
   (i32.shr_s
    (get_local $$22)
    (i32.const 16)
   )
  )
  (set_local $$24
   (i32.xor
    (get_local $$21)
    (get_local $$23)
   )
  )
  (set_local $$25
   (i32.load
    (get_local $$9)
   )
  )
  (set_local $$26
   (i32.load
    (get_local $$9)
   )
  )
  (set_local $$27
   (i32.shr_s
    (get_local $$26)
    (i32.const 16)
   )
  )
  (set_local $$28
   (i32.xor
    (get_local $$25)
    (get_local $$27)
   )
  )
  (set_local $$29
   (call $__ZL10ValCoord4Diiiii
    (get_local $$12)
    (get_local $$16)
    (get_local $$20)
    (get_local $$24)
    (get_local $$28)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$29)
  )
 )
 (func $__ZL10ValCoord4Diiiii (param $$0 i32) (param $$1 i32) (param $$2 i32) (param $$3 i32) (param $$4 i32) (result f32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 i32)
  (local $$14 i32)
  (local $$15 i32)
  (local $$16 i32)
  (local $$17 i32)
  (local $$18 i32)
  (local $$19 i32)
  (local $$20 i32)
  (local $$21 i32)
  (local $$22 i32)
  (local $$23 i32)
  (local $$24 i32)
  (local $$25 i32)
  (local $$26 i32)
  (local $$27 i32)
  (local $$28 i32)
  (local $$29 i32)
  (local $$30 i32)
  (local $$31 i32)
  (local $$32 i32)
  (local $$33 i32)
  (local $$34 f32)
  (local $$35 f32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 32)
   )
  )
  (set_local $$5
   (get_local $$0)
  )
  (set_local $$6
   (get_local $$1)
  )
  (set_local $$7
   (get_local $$2)
  )
  (set_local $$8
   (get_local $$3)
  )
  (set_local $$9
   (get_local $$4)
  )
  (set_local $$11
   (get_local $$5)
  )
  (set_local $$10
   (get_local $$11)
  )
  (set_local $$12
   (get_local $$6)
  )
  (set_local $$13
   (i32.mul
    (get_local $$12)
    (i32.const 1619)
   )
  )
  (set_local $$14
   (get_local $$10)
  )
  (set_local $$15
   (i32.xor
    (get_local $$14)
    (get_local $$13)
   )
  )
  (set_local $$10
   (get_local $$15)
  )
  (set_local $$16
   (get_local $$7)
  )
  (set_local $$17
   (i32.mul
    (get_local $$16)
    (i32.const 31337)
   )
  )
  (set_local $$18
   (get_local $$10)
  )
  (set_local $$19
   (i32.xor
    (get_local $$18)
    (get_local $$17)
   )
  )
  (set_local $$10
   (get_local $$19)
  )
  (set_local $$20
   (get_local $$8)
  )
  (set_local $$21
   (i32.mul
    (get_local $$20)
    (i32.const 6971)
   )
  )
  (set_local $$22
   (get_local $$10)
  )
  (set_local $$23
   (i32.xor
    (get_local $$22)
    (get_local $$21)
   )
  )
  (set_local $$10
   (get_local $$23)
  )
  (set_local $$24
   (get_local $$9)
  )
  (set_local $$25
   (i32.mul
    (get_local $$24)
    (i32.const 1013)
   )
  )
  (set_local $$26
   (get_local $$10)
  )
  (set_local $$27
   (i32.xor
    (get_local $$26)
    (get_local $$25)
   )
  )
  (set_local $$10
   (get_local $$27)
  )
  (set_local $$28
   (get_local $$10)
  )
  (set_local $$29
   (get_local $$10)
  )
  (set_local $$30
   (i32.mul
    (get_local $$28)
    (get_local $$29)
   )
  )
  (set_local $$31
   (get_local $$10)
  )
  (set_local $$32
   (i32.mul
    (get_local $$30)
    (get_local $$31)
   )
  )
  (set_local $$33
   (i32.mul
    (get_local $$32)
    (i32.const 60493)
   )
  )
  (set_local $$34
   (f32.convert_s/i32
    (get_local $$33)
   )
  )
  (set_local $$35
   (f32.div
    (get_local $$34)
    (f32.const 2147483648)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$35)
  )
 )
 (func $__ZNK9FastNoise16GetWhiteNoiseIntEiiii (param $$0 i32) (param $$1 i32) (param $$2 i32) (param $$3 i32) (param $$4 i32) (result f32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 i32)
  (local $$14 i32)
  (local $$15 i32)
  (local $$16 i32)
  (local $$17 f32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 32)
   )
  )
  (set_local $$5
   (get_local $$0)
  )
  (set_local $$6
   (get_local $$1)
  )
  (set_local $$7
   (get_local $$2)
  )
  (set_local $$8
   (get_local $$3)
  )
  (set_local $$9
   (get_local $$4)
  )
  (set_local $$10
   (get_local $$5)
  )
  (set_local $$11
   (i32.add
    (get_local $$10)
    (i32.const 1024)
   )
  )
  (set_local $$12
   (i32.load
    (get_local $$11)
   )
  )
  (set_local $$13
   (get_local $$6)
  )
  (set_local $$14
   (get_local $$7)
  )
  (set_local $$15
   (get_local $$8)
  )
  (set_local $$16
   (get_local $$9)
  )
  (set_local $$17
   (call $__ZL10ValCoord4Diiiii
    (get_local $$12)
    (get_local $$13)
    (get_local $$14)
    (get_local $$15)
    (get_local $$16)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$17)
  )
 )
 (func $__ZNK9FastNoise16GetWhiteNoiseIntEiii (param $$0 i32) (param $$1 i32) (param $$2 i32) (param $$3 i32) (result f32)
  (local $$10 i32)
  (local $$11 i32)
  (local $$12 i32)
  (local $$13 i32)
  (local $$14 f32)
  (local $$4 i32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$4
   (get_local $$0)
  )
  (set_local $$5
   (get_local $$1)
  )
  (set_local $$6
   (get_local $$2)
  )
  (set_local $$7
   (get_local $$3)
  )
  (set_local $$8
   (get_local $$4)
  )
  (set_local $$9
   (i32.add
    (get_local $$8)
    (i32.const 1024)
   )
  )
  (set_local $$10
   (i32.load
    (get_local $$9)
   )
  )
  (set_local $$11
   (get_local $$5)
  )
  (set_local $$12
   (get_local $$6)
  )
  (set_local $$13
   (get_local $$7)
  )
  (set_local $$14
   (call $__ZL10ValCoord3Diiii
    (get_local $$10)
    (get_local $$11)
    (get_local $$12)
    (get_local $$13)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$14)
  )
 )
 (func $__ZNK9FastNoise16GetWhiteNoiseIntEii (param $$0 i32) (param $$1 i32) (param $$2 i32) (result f32)
  (local $$10 i32)
  (local $$11 f32)
  (local $$3 i32)
  (local $$4 i32)
  (local $$5 i32)
  (local $$6 i32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$3
   (get_local $$0)
  )
  (set_local $$4
   (get_local $$1)
  )
  (set_local $$5
   (get_local $$2)
  )
  (set_local $$6
   (get_local $$3)
  )
  (set_local $$7
   (i32.add
    (get_local $$6)
    (i32.const 1024)
   )
  )
  (set_local $$8
   (i32.load
    (get_local $$7)
   )
  )
  (set_local $$9
   (get_local $$4)
  )
  (set_local $$10
   (get_local $$5)
  )
  (set_local $$11
   (call $__ZL10ValCoord2Diii
    (get_local $$8)
    (get_local $$9)
    (get_local $$10)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$11)
  )
 )
 (func $__ZNK9FastNoise15GetValueFractalEfff (param $$0 i32) (param $$1 f32) (param $$2 f32) (param $$3 f32) (result f32)
  (local $$10 i32)
  (local $$11 f32)
  (local $$12 f32)
  (local $$13 f32)
  (local $$14 i32)
  (local $$15 f32)
  (local $$16 f32)
  (local $$17 f32)
  (local $$18 i32)
  (local $$19 f32)
  (local $$20 f32)
  (local $$21 f32)
  (local $$22 i32)
  (local $$23 i32)
  (local $$24 f32)
  (local $$25 f32)
  (local $$26 f32)
  (local $$27 f32)
  (local $$28 f32)
  (local $$29 f32)
  (local $$30 f32)
  (local $$31 f32)
  (local $$32 f32)
  (local $$33 f32)
  (local $$34 f32)
  (local $$35 f32)
  (local $$36 f32)
  (local $$4 f32)
  (local $$5 i32)
  (local $$6 f32)
  (local $$7 f32)
  (local $$8 f32)
  (local $$9 i32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 32)
   )
  )
  (set_local $$5
   (get_local $$0)
  )
  (set_local $$6
   (get_local $$1)
  )
  (set_local $$7
   (get_local $$2)
  )
  (set_local $$8
   (get_local $$3)
  )
  (set_local $$9
   (get_local $$5)
  )
  (set_local $$10
   (i32.add
    (get_local $$9)
    (i32.const 1028)
   )
  )
  (set_local $$11
   (f32.load
    (get_local $$10)
   )
  )
  (set_local $$12
   (get_local $$6)
  )
  (set_local $$13
   (f32.mul
    (get_local $$12)
    (get_local $$11)
   )
  )
  (set_local $$6
   (get_local $$13)
  )
  (set_local $$14
   (i32.add
    (get_local $$9)
    (i32.const 1028)
   )
  )
  (set_local $$15
   (f32.load
    (get_local $$14)
   )
  )
  (set_local $$16
   (get_local $$7)
  )
  (set_local $$17
   (f32.mul
    (get_local $$16)
    (get_local $$15)
   )
  )
  (set_local $$7
   (get_local $$17)
  )
  (set_local $$18
   (i32.add
    (get_local $$9)
    (i32.const 1028)
   )
  )
  (set_local $$19
   (f32.load
    (get_local $$18)
   )
  )
  (set_local $$20
   (get_local $$8)
  )
  (set_local $$21
   (f32.mul
    (get_local $$20)
    (get_local $$19)
   )
  )
  (set_local $$8
   (get_local $$21)
  )
  (set_local $$22
   (i32.add
    (get_local $$9)
    (i32.const 1052)
   )
  )
  (set_local $$23
   (i32.load
    (get_local $$22)
   )
  )
  (block $switch
   (block $switch-default
    (block $switch-case1
     (block $switch-case0
      (block $switch-case
       (br_table $switch-case $switch-case0 $switch-case1 $switch-default
        (i32.sub
         (get_local $$23)
         (i32.const 0)
        )
       )
      )
      (block
       (set_local $$24
        (get_local $$6)
       )
       (set_local $$25
        (get_local $$7)
       )
       (set_local $$26
        (get_local $$8)
       )
       (set_local $$27
        (call $__ZNK9FastNoise21SingleValueFractalFBMEfff
         (get_local $$9)
         (get_local $$24)
         (get_local $$25)
         (get_local $$26)
        )
       )
       (set_local $$4
        (get_local $$27)
       )
       (set_local $$36
        (get_local $$4)
       )
       (set_global $STACKTOP
        (get_local $sp)
       )
       (return
        (get_local $$36)
       )
       (br $switch)
      )
     )
     (block
      (set_local $$28
       (get_local $$6)
      )
      (set_local $$29
       (get_local $$7)
      )
      (set_local $$30
       (get_local $$8)
      )
      (set_local $$31
       (call $__ZNK9FastNoise24SingleValueFractalBillowEfff
        (get_local $$9)
        (get_local $$28)
        (get_local $$29)
        (get_local $$30)
       )
      )
      (set_local $$4
       (get_local $$31)
      )
      (set_local $$36
       (get_local $$4)
      )
      (set_global $STACKTOP
       (get_local $sp)
      )
      (return
       (get_local $$36)
      )
      (br $switch)
     )
    )
    (block
     (set_local $$32
      (get_local $$6)
     )
     (set_local $$33
      (get_local $$7)
     )
     (set_local $$34
      (get_local $$8)
     )
     (set_local $$35
      (call $__ZNK9FastNoise28SingleValueFractalRigidMultiEfff
       (get_local $$9)
       (get_local $$32)
       (get_local $$33)
       (get_local $$34)
      )
     )
     (set_local $$4
      (get_local $$35)
     )
     (set_local $$36
      (get_local $$4)
     )
     (set_global $STACKTOP
      (get_local $sp)
     )
     (return
      (get_local $$36)
     )
     (br $switch)
    )
   )
   (block
    (set_local $$4
     (f32.const 0)
    )
    (set_local $$36
     (get_local $$4)
    )
    (set_global $STACKTOP
     (get_local $sp)
    )
    (return
     (get_local $$36)
    )
   )
  )
  (return
   (f32.const 0)
  )
 )
 (func $__ZNK9FastNoise8GetValueEfff (param $$0 i32) (param $$1 f32) (param $$2 f32) (param $$3 f32) (result f32)
  (local $$10 i32)
  (local $$11 f32)
  (local $$12 f32)
  (local $$13 f32)
  (local $$14 i32)
  (local $$15 f32)
  (local $$16 f32)
  (local $$17 f32)
  (local $$18 i32)
  (local $$19 f32)
  (local $$20 f32)
  (local $$21 f32)
  (local $$4 i32)
  (local $$5 f32)
  (local $$6 f32)
  (local $$7 f32)
  (local $$8 i32)
  (local $$9 f32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abortStackOverflow
    (i32.const 16)
   )
  )
  (set_local $$4
   (get_local $$0)
  )
  (set_local $$5
   (get_local $$1)
  )
  (set_local $$6
   (get_local $$2)
  )
  (set_local $$7
   (get_local $$3)
  )
  (set_local $$8
   (get_local $$4)
  )
  (set_local $$9
   (get_local $$5)
  )
  (set_local $$10
   (i32.add
    (get_local $$8)
    (i32.const 1028)
   )
  )
  (set_local $$11
   (f32.load
    (get_local $$10)
   )
  )
  (set_local $$12
   (f32.mul
    (get_local $$9)
    (get_local $$11)
   )
  )
  (set_local $$13
   (get_local $$6)
  )
  (set_local $$14
   (i32.add
    (get_local $$8)
    (i32.const 1028)
   )
  )
  (set_local $$15
   (f32.load
    (get_local $$14)
   )
  )
  (set_local $$16
   (f32.mul
    (get_local $$13)
    (get_local $$15)
   )
  )
  (set_local $$17
   (get_local $$7)
  )
  (set_local $$18
   (i32.add
    (get_local $$8)
    (i32.const 1028)
   )
  )
  (set_local $$19
   (f32.load
    (get_local $$18)
   )
  )
  (set_local $$20
   (f32.mul
    (get_local $$17)
    (get_local $$19)
   )
  )
  (set_local $$21
   (call $__ZNK9FastNoise11SingleValueEhfff
    (get_local $$8)
    (i32.const 0)
    (get_local $$12)
    (get_local $$16)
    (get_local $$20)
   )
  )
  (set_global $STACKTOP
   (get_local $sp)
  )
  (return
   (get_local $$21)
  )
 )
 (func $__ZNK9FastNoise15GetValueFractalEff (param $$0 i32) (param $$1 f32) (param $$2 f32) (result f32)
  (local $$10 f32)
  (local $$11 f32)
  (local $$12 i32)
  (local $$13 f32)
  (local $$14 f32)
  (local $$15 f32)
  (local $$16 i32)
  (local $$17 i32)
  (local $$18 f32)
  (local $$19 f32)
  (local $$20 f32)
  (local $$21 f32)
  (local $$22 f32)
  (local $$23 f32)
  (local $$24 f32)
  (local $$25 f32)
  (local $$26 f32)
  (local $$27 f32)
  (local $$3 f32)
  (local $$4 i32)
  (local $$5 f32)
  (local $$6 f32)
  (local $$7 i32)
  (local $$8 i32)
  (local $$9 f32)
  (local $label i32)
  (local $sp i32)
  (set_local $sp
  )
   (i32.add