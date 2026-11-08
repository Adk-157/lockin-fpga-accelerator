#pragma once
#include "ctrl_params.h"

// One call = one clock.  valid_in = 1 when a new (I,Q) from the chain is present.
// Outputs always show the current state: the shift k in use and the averaged I/Q
// (40-bit, 22 fraction bits).
void adaptive_ctrl(bool rst, bool valid_in, in_t I, in_t Q,
                   k_t &k_out, z_t &zI_out, z_t &zQ_out);

#ifndef __SYNTHESIS__
// Test-only window into the internal state (not part of the hardware).
struct CtrlDebug { long long vh; long long u; };
CtrlDebug ctrl_debug();
#endif
