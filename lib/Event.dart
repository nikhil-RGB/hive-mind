class Event {
  String eventText;
  EventType type;
  int reputationChange;
  int moraleChange;

  Event({
    required this.eventText,
    required this.type,
    required this.reputationChange,
    required this.moraleChange,
  });
}

// Define an enum to represent event types
//positive events are ones which positively impact the target's morale and/or reputation
//negative event are ones which negatively impact the target's morale and/or reputation
enum EventType { positive, negative }
