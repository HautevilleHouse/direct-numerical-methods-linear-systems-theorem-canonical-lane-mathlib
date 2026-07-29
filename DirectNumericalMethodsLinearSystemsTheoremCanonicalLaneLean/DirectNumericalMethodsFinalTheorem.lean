import DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean.DirectNumericalMethodsGateLemmas

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean

def DirectNumericalMethodsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem direct_numerical_methods_endgame (A : AdmissibleClass) :
    DirectNumericalMethodsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean
end HautevilleHouse