class Cell {
  //Repuatation of this particular unit
  double reputation;
  //Morale of this particular unit, refers to self-confidence
  double morale;
  //Max number of events that this unit can fire on that day
  int events;
  //Use this constructor to initialize rep, morale and events
  Cell({required this.reputation, required this.morale, this.events = 4});

  //Use this constructor to initialize a default unit
  Cell.defInit()
      : reputation = 0.4,
        morale = 0.6,
        events = 4;
}
