#pragma once
#include "mixer_params.h"
// One call = one sample.  valid_out follows valid_in; i_out/q_out are only
// meaningful when valid_out = 1.
void mixer(bool valid_in, adc_t x, ref_t s, ref_t c,
           bool &valid_out, mix_t &i_out, mix_t &q_out);
