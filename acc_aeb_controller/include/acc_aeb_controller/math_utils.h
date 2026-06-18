#pragma once
//==============================================================================
//  math_utils.h  —  Branch-light scalar helpers shared across the modules.
//  Header-only and ROS-free; everything here is constexpr/inline so the hot
//  path inlines to a handful of instructions with no call overhead.
//==============================================================================
#include <cmath>
#include "acc_aeb_controller/types.h"

namespace acc_aeb {

template <typename T>
[[nodiscard]] constexpr T clampVal(T v, T lo, T hi) noexcept {
    return (v < lo) ? lo : (v > hi) ? hi : v;
}

// Guarded division for the cold/variable-denominator cases (returns a fallback
// instead of inf/NaN). Hot-path divisions by a known-positive denominator are
// turned into reciprocal multiplies at the call site instead of using this.
[[nodiscard]] inline double safeDiv(double num, double den, double fallback = INF_D) noexcept {
    return (std::abs(den) > consts::SAFE_DIV_EPS) ? (num / den) : fallback;
}

[[nodiscard]] inline double computeTTC(double dist, double closing_spd) noexcept {
    return (closing_spd > consts::TTC_CLOSING_EPS) ? (dist / closing_spd) : INF_D;
}

} // namespace acc_aeb
