class bar-chart {
  has Int @.bar-values;
  method plot {
    say @.bar-values;
  }
}

class line-chart {
  has Int @.line-values;
  method plot {
    say @.line-values;
  }
}

class combo-chart is bar-chart is line-chart {
  method plot {
    say @.bar-values;
    say @.line-values;
  }
}

my $actual-sales = bar-chart.new(bar-values => [10,9,11,8,7,10]);
my $forecast-sales = line-chart.new(line-values => [9,8,10,7,6,9]);

my $actual-vs-forecast = combo-chart.new(bar-values => [10,9,11,8,7,10],
                                         line-values => [9,8,10,7,6,9]);
say "Actual sales:";
$actual-sales.plot;
say "Forecast sales:";
$forecast-sales.plot;
say "Actual vs Forecast:";
$actual-vs-forecast.plot;