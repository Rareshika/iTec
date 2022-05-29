class Badges {
  bool global_health = false;
  bool polio = false;
  bool maternal_mortality = false;
  bool child_mortaliy = false;
  bool malaria = false;
  bool suicide = false;
  bool burden_of_diseases = false;
  bool eradication_of_diseases = false;
  bool cause_of_death = false;
  bool financing_healthcare = false;
  bool smoking = false;

  Map<String, dynamic> toJson() => {
        'global_health': global_health,
        'polio': polio,
        'maternal_mortality': maternal_mortality,
        'child_mortality': child_mortaliy,
        'malaria': malaria,
        'suicide': suicide,
        'burden_of_diseases': burden_of_diseases,
        'eradication_of_diseases': eradication_of_diseases,
        'cause_of_death': cause_of_death,
        'financing_healthcare': financing_healthcare,
        'smoking': smoking,
      };
}
