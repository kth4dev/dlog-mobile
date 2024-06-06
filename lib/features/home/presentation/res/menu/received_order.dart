enum ReceivedOrderMenu {
  partialOrder(
    label: "Partial Order",
  ),
  allOrder(
    label: "All Order",
  );

  final String label;
  const ReceivedOrderMenu({
    required this.label,
  });
}
