import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean

structure SparseMatrixStoragePackage where
  formatType : String
  spaceComplexity : Prop
  accessTime : Prop
  arithmeticEfficiency : Prop
  reorderingOptimality : Prop

structure SparseMatrixStorageEvidence
    (S : SparseMatrixStoragePackage) where
  spaceComplexityClosed : S.spaceComplexity
  accessTimeClosed : S.accessTime
  arithmeticEfficiencyClosed : S.arithmeticEfficiency
  reorderingOptimalityClosed : S.reorderingOptimality

def SparseMatrixStorageClosed
    (S : SparseMatrixStoragePackage) : Prop :=
  S.spaceComplexity ∧ S.accessTime ∧
  S.arithmeticEfficiency ∧ S.reorderingOptimality

theorem sparse_matrix_storage_closed_from_evidence
    (S : SparseMatrixStoragePackage)
    (E : SparseMatrixStorageEvidence S) :
    SparseMatrixStorageClosed S := by
  exact And.intro E.spaceComplexityClosed
    (And.intro E.accessTimeClosed
      (And.intro E.arithmeticEfficiencyClosed
        E.reorderingOptimalityClosed))

end DirectNumericalMethodsLinearSystemsTheoremCanonicalLaneLean
end HautevilleHouse