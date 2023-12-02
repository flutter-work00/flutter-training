enum CanPopStatus {
  pop,
  unPop;

  /// スワップバック等を許可する場合は[pop]、許可しない場合は[unPop]
  bool get value => this == pop;
}
