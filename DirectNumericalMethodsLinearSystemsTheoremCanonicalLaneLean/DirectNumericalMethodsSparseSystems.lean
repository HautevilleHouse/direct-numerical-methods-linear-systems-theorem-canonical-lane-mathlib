import DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean.DirectNumericalMethodsAdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean

structure SparseSystemPackage where
  sparsityPattern : Type
  directSolverMethod : Type
  fillInAnalysis : Prop
  orderingStrategy : Prop
  complexityBound : Prop

structure SparseSystemEvidence (S : SparseSystemPackage) where
  fillInAnalysisClosed : S.fillInAnalysis
  orderingStrategyClosed : S.orderingStrategy
  complexityBoundClosed : S.complexityBound

def SparseSystemClosed (S : SparseSystemPackage) : Prop :=
  S.fillInAnalysis ∧ S.orderingStrategy ∧ S.complexityBound

theorem sparse_system_closed_from_evidence (S : SparseSystemPackage)
    (E : SparseSystemEvidence S) : SparseSystemClosed S := by
  exact And.intro E.fillInAnalysisClosed
    (And.intro E.orderingStrategyClosed E.complexityBoundClosed)

end DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean
end HautevilleHouse