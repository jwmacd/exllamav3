#pragma once

#include <ATen/Tensor.h>

void quantize_tiles
(
    at::Tensor input_tiles,
    at::Tensor output_tiles,
    at::Tensor output_indices,
    at::Tensor temp_costs,
    at::Tensor temp_edges,
    int K,
    uint32_t mcg_mult,
    uint32_t mul1_mult
);

void decode
(
    at::Tensor input_indices,
    at::Tensor output_tiles,
    uint32_t mcg_mult,
    uint32_t mul1_mult
);

void test_distribution
(
    at::Tensor& input,
    at::Tensor& dist_output,
    const c10::optional<at::Tensor>& ref_output,
    float min_value,
    float max_value,
    uint32_t mcg_mult,
    uint32_t mul1_mult
);