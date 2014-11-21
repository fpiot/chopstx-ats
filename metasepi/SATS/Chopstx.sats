(*
** The prelude for Ardunio
*)

%{^
#include "CATS/Chopstx.cats"
%}

typedef chopstx_t = $extype"chopstx_t"
typedef chx_func_t = (ptr) -> ptr

fun chopstx_create (flags_and_prio: uint, stack_addr: uint32, stack_size: size_t,
                    thread_entry: chx_func_t, arg: ptr): chopstx_t = "mac#"
fun chopstx_usec_wait_var (arg: cPtr0(uint)): void = "mac#"
fun chopstx_usec_wait (usec: uint): void = "mac#"

(* mutex *)
abst@ype chopstx_mutex_t = $extype"chopstx_mutex_t"
typedef chopstx_mutex_tp = cPtr0(chopstx_mutex_t)

fun chopstx_mutex_init (chopstx_mutex_tp): void = "mac#"
fun chopstx_mutex_lock (chopstx_mutex_tp): void = "mac#"
fun chopstx_mutex_unlock (chopstx_mutex_tp): void = "mac#"

(* cond var *)
abst@ype chopstx_cond_t = $extype"chopstx_cond_t"
typedef chopstx_cond_tp = cPtr0(chopstx_cond_t)

fun chopstx_cond_init (chopstx_cond_tp): void = "mac#"
fun chopstx_cond_wait (chopstx_cond_tp, chopstx_mutex_tp): void = "mac#"
fun chopstx_cond_signal (chopstx_cond_tp): void = "mac#"
fun chopstx_cond_broadcast (chopstx_cond_tp): void = "mac#"
