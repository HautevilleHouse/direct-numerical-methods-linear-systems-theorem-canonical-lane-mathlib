import DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean.LinearSystemAdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean

def bridgeClosed (A : LinearSystemAdmissibleClass) : Prop :=
  DNWitnessClosed A.object

theorem bridge_from_admissible_class (A : LinearSystemAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean
end HautevilleHouse