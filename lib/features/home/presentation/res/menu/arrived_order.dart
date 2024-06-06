enum ArrivedOrderMenu {
  partialOrder(
    label: "Partial Order",
  ),
  allOrder(
    label: "All Order",
  );

  final String label;
  const ArrivedOrderMenu({
    required this.label,
  });
}
