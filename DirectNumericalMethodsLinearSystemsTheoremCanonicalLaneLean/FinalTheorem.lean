import DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean

def ConstrainedDirectNumericalMethodsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_direct_numerical_methods_endgame (A : AdmissibleClass) :
    ConstrainedDirectNumericalMethodsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean
end HautevilleHouse