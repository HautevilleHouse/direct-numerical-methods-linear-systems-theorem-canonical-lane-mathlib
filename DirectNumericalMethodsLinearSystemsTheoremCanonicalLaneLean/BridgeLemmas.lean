import DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean.AdmissibleClass
import DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DirectNumericalMethodsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean
end HautevilleHouse