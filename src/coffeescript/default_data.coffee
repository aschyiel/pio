((ns) ->
  ns.data = {}

  ns.data.invalid = '{]'    # Simulate invalid JSON user-input.

  ns.data.valid_small = JSON.stringify([
    {
      line_item: 'item1'
      revenue: 1
      type: 'type1'
    }
    {
      line_item: 'item1.2'
      revenue: 1
      type: 'type1'
    }
    {
      line_item: 'item1.3'
      revenue: 1
      type: 'type1'
    }
    {
      line_item: 'item2'
      revenue: 2
      type: 'type2'
    }
    {
      line_item: 'item3'
      revenue: 3
      type: 'type3'
    }
    {
      line_item: 'item4'
      revenue: 4
      type: 'type4'
    }
    {
      line_item: 'item5'
      revenue: 5
      type: 'type5'
    }
    {
      line_item: 'item5.2'
      revenue: 5
      type: 'type5'
    }
    {
      line_item: 'item5.3'
      revenue: 5
      type: 'type5'
    }
    {
      line_item: 'item5.4'
      revenue: 5
      type: 'type5'
    }
    {
      line_item: 'item5.5'
      revenue: 5
      type: 'type5'
    }
  ])

  ns.data.valid_large = JSON.stringify([
    {
      line_item: 'Incredible Wooden Pants'
      revenue: 5.19
      date: '2014-08-18'
      type: 'committed'
    }
    {
      line_item: 'Sleek Concrete Hat'
      revenue: 37.74
      date: '2014-08-10'
      type: 'committed'
    }
    {
      line_item: 'Sleek Plastic Hat'
      revenue: 42.55
      date: '2014-08-21'
      type: 'pipeline'
    }
    {
      line_item: 'Ergonomic Rubber Gloves'
      revenue: 11.62
      date: '2014-08-05'
      type: 'pipeline'
    }
    {
      line_item: 'Small Wooden Pants'
      revenue: 15.55
      date: '2014-08-22'
      type: 'planned'
    }
    {
      line_item: 'Practical Cotton Table'
      revenue: 19.78
      date: '2014-08-18'
      type: 'pipeline'
    }
    {
      line_item: 'Small Rubber Hat'
      revenue: 21.02
      date: '2014-08-04'
      type: 'planned'
    }
    {
      line_item: 'Small Wooden Computer'
      revenue: 39.29
      date: '2014-08-11'
      type: 'pipeline'
    }
    {
      line_item: 'Fantastic Concrete Pants'
      revenue: 23.05
      date: '2014-08-10'
      type: 'committed'
    }
    {
      line_item: 'Gorgeous Granite Shirt'
      revenue: 32.71
      date: '2014-08-29'
      type: 'planned'
    }
    {
      line_item: 'Gorgeous Plastic Computer'
      revenue: 10.71
      date: '2014-08-10'
      type: 'committed'
    }
    {
      line_item: 'Ergonomic Granite Gloves'
      revenue: 23.65
      date: '2014-08-30'
      type: 'pipeline'
    }
    {
      line_item: 'Intelligent Steel Hat'
      revenue: 38.36
      date: '2014-08-07'
      type: 'committed'
    }
    {
      line_item: 'Small Cotton Shoes'
      revenue: 16.39
      date: '2014-08-18'
      type: 'planned'
    }
    {
      line_item: 'Rustic Plastic Computer'
      revenue: 16.45
      date: '2014-08-24'
      type: 'pipeline'
    }
    {
      line_item: 'Awesome Concrete Computer'
      revenue: 39.11
      date: '2014-08-06'
      type: 'pipeline'
    }
    {
      line_item: 'Ergonomic Granite Table'
      revenue: 21.74
      date: '2014-08-18'
      type: 'committed'
    }
    {
      line_item: 'Awesome Cotton Computer'
      revenue: 22.81
      date: '2014-08-08'
      type: 'committed'
    }
    {
      line_item: 'Small Steel Shirt'
      revenue: 32.42
      date: '2014-08-01'
      type: 'planned'
    }
    {
      line_item: 'Ergonomic Plastic Computer'
      revenue: 49.95
      date: '2014-08-07'
      type: 'pipeline'
    }
    {
      line_item: 'Rustic Concrete Pants'
      revenue: 8.08
      date: '2014-08-14'
      type: 'committed'
    }
    {
      line_item: 'Fantastic Cotton Table'
      revenue: 49.33
      date: '2014-08-09'
      type: 'pipeline'
    }
    {
      line_item: 'Awesome Cotton Pants'
      revenue: 10.28
      date: '2014-08-05'
      type: 'planned'
    }
    {
      line_item: 'Small Cotton Shirt'
      revenue: 41.97
      date: '2014-08-01'
      type: 'planned'
    }
    {
      line_item: 'Fantastic Rubber Gloves'
      revenue: 41.88
      date: '2014-08-06'
      type: 'planned'
    }
    {
      line_item: 'Ergonomic Cotton Chair'
      revenue: 29.33
      date: '2014-08-26'
      type: 'planned'
    }
    {
      line_item: 'Gorgeous Plastic Pants'
      revenue: 23.16
      date: '2014-08-26'
      type: 'pipeline'
    }
    {
      line_item: 'Ergonomic Wooden Table'
      revenue: 6.36
      date: '2014-08-02'
      type: 'committed'
    }
    {
      line_item: 'Sleek Granite Shirt'
      revenue: 38.46
      date: '2014-08-07'
      type: 'pipeline'
    }
    {
      line_item: 'Small Wooden Pants'
      revenue: 19.97
      date: '2014-08-16'
      type: 'pipeline'
    }
    {
      line_item: 'Ergonomic Concrete Chair'
      revenue: 48.3
      date: '2014-08-19'
      type: 'pipeline'
    }
    {
      line_item: 'Awesome Plastic Pants'
      revenue: 40.66
      date: '2014-08-21'
      type: 'committed'
    }
    {
      line_item: 'Gorgeous Cotton Pants'
      revenue: 35.17
      date: '2014-08-18'
      type: 'pipeline'
    }
    {
      line_item: 'Practical Concrete Car'
      revenue: 2.19
      date: '2014-08-24'
      type: 'committed'
    }
    {
      line_item: 'Awesome Rubber Table'
      revenue: 8.22
      date: '2014-08-03'
      type: 'pipeline'
    }
    {
      line_item: 'Awesome Wooden Hat'
      revenue: 10.84
      date: '2014-08-20'
      type: 'committed'
    }
    {
      line_item: 'Practical Granite Shoes'
      revenue: 24.01
      date: '2014-08-12'
      type: 'pipeline'
    }
    {
      line_item: 'Ergonomic Granite Chair'
      revenue: 1.47
      date: '2014-08-03'
      type: 'planned'
    }
    {
      line_item: 'Incredible Granite Shirt'
      revenue: 5.63
      date: '2014-08-25'
      type: 'committed'
    }
    {
      line_item: 'Rustic Plastic Shirt'
      revenue: 24.66
      date: '2014-08-11'
      type: 'pipeline'
    }
    {
      line_item: 'Sleek Steel Computer'
      revenue: 4.66
      date: '2014-08-30'
      type: 'planned'
    }
    {
      line_item: 'Fantastic Plastic Shirt'
      revenue: 11.15
      date: '2014-08-06'
      type: 'committed'
    }
    {
      line_item: 'Sleek Concrete Computer'
      revenue: 37.6
      date: '2014-08-17'
      type: 'committed'
    }
    {
      line_item: 'Practical Granite Gloves'
      revenue: 32.26
      date: '2014-08-03'
      type: 'committed'
    }
    {
      line_item: 'Awesome Steel Computer'
      revenue: 10.03
      date: '2014-08-07'
      type: 'planned'
    }
    {
      line_item: 'Awesome Concrete Shirt'
      revenue: 22.72
      date: '2014-08-13'
      type: 'planned'
    }
    {
      line_item: 'Gorgeous Steel Shoes'
      revenue: 14.6
      date: '2014-08-21'
      type: 'planned'
    }
    {
      line_item: 'Awesome Cotton Shoes'
      revenue: 38.17
      date: '2014-08-27'
      type: 'committed'
    }
    {
      line_item: 'Awesome Concrete Shirt'
      revenue: 2.77
      date: '2014-08-09'
      type: 'planned'
    }
    {
      line_item: 'Ergonomic Rubber Shirt'
      revenue: 28.28
      date: '2014-08-04'
      type: 'planned'
    }
    {
      line_item: 'Fantastic Cotton Gloves'
      revenue: 27.32
      date: '2014-08-30'
      type: 'committed'
    }
    {
      line_item: 'Small Wooden Gloves'
      revenue: 41.93
      date: '2014-08-14'
      type: 'committed'
    }
    {
      line_item: 'Rustic Cotton Shirt'
      revenue: 40.81
      date: '2014-08-25'
      type: 'planned'
    }
    {
      line_item: 'Small Granite Shirt'
      revenue: 28.06
      date: '2014-08-02'
      type: 'planned'
    }
    {
      line_item: 'Ergonomic Granite Pants'
      revenue: 6.57
      date: '2014-08-21'
      type: 'pipeline'
    }
    {
      line_item: 'Incredible Concrete Gloves'
      revenue: 5.72
      date: '2014-08-10'
      type: 'pipeline'
    }
    {
      line_item: 'Small Plastic Shoes'
      revenue: 4.39
      date: '2014-08-18'
      type: 'planned'
    }
    {
      line_item: 'Ergonomic Rubber Shoes'
      revenue: 2.38
      date: '2014-08-14'
      type: 'planned'
    }
    {
      line_item: 'Gorgeous Steel Pants'
      revenue: 4.35
      date: '2014-08-06'
      type: 'committed'
    }
    {
      line_item: 'Practical Rubber Gloves'
      revenue: 32.59
      date: '2014-08-11'
      type: 'pipeline'
    }
    {
      line_item: 'Rustic Plastic Computer'
      revenue: 31.83
      date: '2014-08-18'
      type: 'planned'
    }
    {
      line_item: 'Incredible Steel Shoes'
      revenue: 39.73
      date: '2014-08-22'
      type: 'pipeline'
    }
    {
      line_item: 'Practical Steel Pants'
      revenue: 48.04
      date: '2014-08-17'
      type: 'committed'
    }
    {
      line_item: 'Incredible Cotton Chair'
      revenue: 39.96
      date: '2014-08-26'
      type: 'pipeline'
    }
    {
      line_item: 'Ergonomic Wooden Gloves'
      revenue: 10.52
      date: '2014-08-15'
      type: 'planned'
    }
    {
      line_item: 'Incredible Wooden Shoes'
      revenue: 17.98
      date: '2014-08-17'
      type: 'planned'
    }
    {
      line_item: 'Incredible Concrete Car'
      revenue: 38.08
      date: '2014-08-25'
      type: 'pipeline'
    }
    {
      line_item: 'Sleek Wooden Shirt'
      revenue: 40.58
      date: '2014-08-14'
      type: 'planned'
    }
    {
      line_item: 'Awesome Wooden Shirt'
      revenue: 39.54
      date: '2014-08-16'
      type: 'planned'
    }
    {
      line_item: 'Ergonomic Plastic Chair'
      revenue: 40.82
      date: '2014-08-19'
      type: 'pipeline'
    }
    {
      line_item: 'Incredible Concrete Shoes'
      revenue: 25.51
      date: '2014-08-08'
      type: 'planned'
    }
    {
      line_item: 'Ergonomic Concrete Pants'
      revenue: 9.88
      date: '2014-08-12'
      type: 'pipeline'
    }
    {
      line_item: 'Practical Cotton Pants'
      revenue: 14.24
      date: '2014-08-08'
      type: 'pipeline'
    }
    {
      line_item: 'Incredible Wooden Shoes'
      revenue: 32.96
      date: '2014-08-27'
      type: 'committed'
    }
    {
      line_item: 'Incredible Rubber Car'
      revenue: 34.12
      date: '2014-08-01'
      type: 'committed'
    }
    {
      line_item: 'Fantastic Steel Table'
      revenue: 34.62
      date: '2014-08-03'
      type: 'committed'
    }
    {
      line_item: 'Gorgeous Concrete Computer'
      revenue: 34.61
      date: '2014-08-20'
      type: 'committed'
    }
    {
      line_item: 'Intelligent Concrete Shoes'
      revenue: 35.84
      date: '2014-08-09'
      type: 'committed'
    }
    {
      line_item: 'Ergonomic Steel Shoes'
      revenue: 22.18
      date: '2014-08-10'
      type: 'pipeline'
    }
    {
      line_item: 'Incredible Concrete Car'
      revenue: 28.2
      date: '2014-08-22'
      type: 'pipeline'
    }
    {
      line_item: 'Awesome Steel Hat'
      revenue: 26.68
      date: '2014-08-25'
      type: 'planned'
    }
    {
      line_item: 'Gorgeous Rubber Computer'
      revenue: 41.65
      date: '2014-08-17'
      type: 'pipeline'
    }
    {
      line_item: 'Incredible Cotton Chair'
      revenue: 43.98
      date: '2014-08-19'
      type: 'planned'
    }
    {
      line_item: 'Fantastic Cotton Table'
      revenue: 46.97
      date: '2014-08-22'
      type: 'committed'
    }
    {
      line_item: 'Rustic Rubber Table'
      revenue: 19.33
      date: '2014-08-08'
      type: 'committed'
    }
    {
      line_item: 'Ergonomic Concrete Pants'
      revenue: 22.6
      date: '2014-08-01'
      type: 'planned'
    }
    {
      line_item: 'Incredible Wooden Hat'
      revenue: 42.95
      date: '2014-08-06'
      type: 'planned'
    }
    {
      line_item: 'Gorgeous Plastic Shirt'
      revenue: 43.58
      date: '2014-08-19'
      type: 'committed'
    }
    {
      line_item: 'Sleek Steel Gloves'
      revenue: 28.35
      date: '2014-08-02'
      type: 'pipeline'
    }
    {
      line_item: 'Intelligent Steel Shoes'
      revenue: 8.4
      date: '2014-08-13'
      type: 'committed'
    }
    {
      line_item: 'Small Wooden Gloves'
      revenue: 17.98
      date: '2014-08-28'
      type: 'committed'
    }
    {
      line_item: 'Sleek Cotton Hat'
      revenue: 42.48
      date: '2014-08-01'
      type: 'pipeline'
    }
    {
      line_item: 'Fantastic Cotton Chair'
      revenue: 37.15
      date: '2014-08-02'
      type: 'committed'
    }
    {
      line_item: 'Incredible Steel Car'
      revenue: 49.89
      date: '2014-08-01'
      type: 'pipeline'
    }
    {
      line_item: 'Fantastic Plastic Gloves'
      revenue: 20.67
      date: '2014-08-25'
      type: 'committed'
    }
    {
      line_item: 'Intelligent Cotton Table'
      revenue: 34.47
      date: '2014-08-17'
      type: 'planned'
    }
    {
      line_item: 'Practical Cotton Hat'
      revenue: 8.24
      date: '2014-08-16'
      type: 'pipeline'
    }
    {
      line_item: 'Small Plastic Chair'
      revenue: 41.29
      date: '2014-08-29'
      type: 'pipeline'
    }
    {
      line_item: 'Intelligent Concrete Hat'
      revenue: 43.28
      date: '2014-08-07'
      type: 'committed'
    }
    {
      line_item: 'Ergonomic Rubber Table'
      revenue: 15.25
      date: '2014-08-20'
      type: 'committed'
    }
    {
      line_item: 'Sleek Plastic Shoes'
      revenue: 19.92
      date: '2014-08-02'
      type: 'committed'
    }
    {
      line_item: 'Practical Granite Pants'
      revenue: 19.09
      date: '2014-08-25'
      type: 'committed'
    }
    {
      line_item: 'Fantastic Rubber Hat'
      revenue: 10.94
      date: '2014-08-21'
      type: 'planned'
    }
    {
      line_item: 'Awesome Wooden Hat'
      revenue: 26.16
      date: '2014-08-17'
      type: 'committed'
    }
    {
      line_item: 'Incredible Plastic Pants'
      revenue: 2.38
      date: '2014-08-28'
      type: 'planned'
    }
    {
      line_item: 'Sleek Wooden Chair'
      revenue: 8.77
      date: '2014-08-01'
      type: 'pipeline'
    }
    {
      line_item: 'Gorgeous Rubber Shoes'
      revenue: 46.33
      date: '2014-08-13'
      type: 'pipeline'
    }
    {
      line_item: 'Incredible Concrete Shoes'
      revenue: 15.81
      date: '2014-08-30'
      type: 'pipeline'
    }
    {
      line_item: 'Ergonomic Concrete Gloves'
      revenue: 6.93
      date: '2014-08-06'
      type: 'planned'
    }
    {
      line_item: 'Awesome Wooden Chair'
      revenue: 25.62
      date: '2014-08-25'
      type: 'planned'
    }
    {
      line_item: 'Rustic Steel Chair'
      revenue: 12.4
      date: '2014-08-11'
      type: 'planned'
    }
    {
      line_item: 'Gorgeous Granite Table'
      revenue: 15.09
      date: '2014-08-02'
      type: 'planned'
    }
    {
      line_item: 'Small Wooden Car'
      revenue: 36.25
      date: '2014-08-18'
      type: 'committed'
    }
    {
      line_item: 'Sleek Steel Computer'
      revenue: 32.14
      date: '2014-08-28'
      type: 'pipeline'
    }
    {
      line_item: 'Small Steel Table'
      revenue: 26.05
      date: '2014-08-24'
      type: 'committed'
    }
    {
      line_item: 'Practical Cotton Hat'
      revenue: 6.59
      date: '2014-08-06'
      type: 'planned'
    }
    {
      line_item: 'Awesome Plastic Pants'
      revenue: 41.12
      date: '2014-08-01'
      type: 'committed'
    }
    {
      line_item: 'Sleek Steel Shirt'
      revenue: 36.32
      date: '2014-08-03'
      type: 'planned'
    }
    {
      line_item: 'Fantastic Granite Shirt'
      revenue: 34.8
      date: '2014-08-10'
      type: 'committed'
    }
    {
      line_item: 'Intelligent Wooden Shoes'
      revenue: 44.75
      date: '2014-08-12'
      type: 'planned'
    }
    {
      line_item: 'Gorgeous Granite Shirt'
      revenue: 36.73
      date: '2014-08-21'
      type: 'pipeline'
    }
    {
      line_item: 'Rustic Cotton Car'
      revenue: 23.17
      date: '2014-08-30'
      type: 'planned'
    }
    {
      line_item: 'Fantastic Wooden Chair'
      revenue: 21.57
      date: '2014-08-23'
      type: 'planned'
    }
    {
      line_item: 'Awesome Concrete Computer'
      revenue: 21.83
      date: '2014-08-22'
      type: 'committed'
    }
    {
      line_item: 'Sleek Wooden Car'
      revenue: 10.23
      date: '2014-08-17'
      type: 'planned'
    }
    {
      line_item: 'Incredible Plastic Pants'
      revenue: 10.88
      date: '2014-08-29'
      type: 'planned'
    }
    {
      line_item: 'Awesome Wooden Hat'
      revenue: 49.38
      date: '2014-08-28'
      type: 'committed'
    }
    {
      line_item: 'Sleek Concrete Pants'
      revenue: 18
      date: '2014-08-07'
      type: 'planned'
    }
    {
      line_item: 'Rustic Wooden Computer'
      revenue: 37.94
      date: '2014-08-28'
      type: 'pipeline'
    }
    {
      line_item: 'Incredible Rubber Chair'
      revenue: 12.32
      date: '2014-08-30'
      type: 'planned'
    }
    {
      line_item: 'Incredible Plastic Table'
      revenue: 14.02
      date: '2014-08-12'
      type: 'pipeline'
    }
    {
      line_item: 'Intelligent Cotton Gloves'
      revenue: 43.67
      date: '2014-08-23'
      type: 'committed'
    }
    {
      line_item: 'Small Wooden Shirt'
      revenue: 41.99
      date: '2014-08-22'
      type: 'committed'
    }
    {
      line_item: 'Practical Cotton Shoes'
      revenue: 12.83
      date: '2014-08-28'
      type: 'pipeline'
    }
    {
      line_item: 'Sleek Rubber Chair'
      revenue: 4.86
      date: '2014-08-10'
      type: 'committed'
    }
    {
      line_item: 'Intelligent Concrete Shirt'
      revenue: 31.43
      date: '2014-08-25'
      type: 'planned'
    }
    {
      line_item: 'Fantastic Concrete Gloves'
      revenue: 19.02
      date: '2014-08-03'
      type: 'pipeline'
    }
    {
      line_item: 'Awesome Wooden Computer'
      revenue: 18.9
      date: '2014-08-04'
      type: 'pipeline'
    }
    {
      line_item: 'Small Concrete Table'
      revenue: 42.73
      date: '2014-08-03'
      type: 'pipeline'
    }
    {
      line_item: 'Intelligent Steel Shirt'
      revenue: 23.71
      date: '2014-08-14'
      type: 'committed'
    }
    {
      line_item: 'Small Concrete Car'
      revenue: 38.22
      date: '2014-08-08'
      type: 'planned'
    }
    {
      line_item: 'Ergonomic Rubber Shoes'
      revenue: 48.05
      date: '2014-08-26'
      type: 'planned'
    }
    {
      line_item: 'Practical Concrete Gloves'
      revenue: 49.62
      date: '2014-08-29'
      type: 'pipeline'
    }
    {
      line_item: 'Rustic Concrete Computer'
      revenue: 34.01
      date: '2014-08-26'
      type: 'planned'
    }
    {
      line_item: 'Small Steel Gloves'
      revenue: 44.27
      date: '2014-08-06'
      type: 'planned'
    }
    {
      line_item: 'Incredible Concrete Hat'
      revenue: 9.01
      date: '2014-08-10'
      type: 'committed'
    }
    {
      line_item: 'Gorgeous Concrete Shirt'
      revenue: 5.03
      date: '2014-08-29'
      type: 'pipeline'
    }
    {
      line_item: 'Fantastic Wooden Shirt'
      revenue: 45.2
      date: '2014-08-08'
      type: 'committed'
    }
    {
      line_item: 'Small Cotton Car'
      revenue: 21.79
      date: '2014-08-10'
      type: 'planned'
    }
    {
      line_item: 'Gorgeous Concrete Car'
      revenue: 2.84
      date: '2014-08-23'
      type: 'committed'
    }
    {
      line_item: 'Rustic Concrete Shirt'
      revenue: 25.01
      date: '2014-08-07'
      type: 'committed'
    }
    {
      line_item: 'Ergonomic Plastic Hat'
      revenue: 46
      date: '2014-08-07'
      type: 'planned'
    }
    {
      line_item: 'Intelligent Wooden Hat'
      revenue: 17.73
      date: '2014-08-09'
      type: 'committed'
    }
    {
      line_item: 'Gorgeous Rubber Computer'
      revenue: 7.95
      date: '2014-08-13'
      type: 'pipeline'
    }
    {
      line_item: 'Intelligent Steel Shoes'
      revenue: 30.98
      date: '2014-08-25'
      type: 'planned'
    }
    {
      line_item: 'Ergonomic Wooden Hat'
      revenue: 43.85
      date: '2014-08-10'
      type: 'pipeline'
    }
    {
      line_item: 'Awesome Plastic Chair'
      revenue: 16.14
      date: '2014-08-19'
      type: 'planned'
    }
    {
      line_item: 'Practical Plastic Pants'
      revenue: 39.29
      date: '2014-08-07'
      type: 'committed'
    }
    {
      line_item: 'Sleek Steel Shirt'
      revenue: 32.03
      date: '2014-08-19'
      type: 'committed'
    }
    {
      line_item: 'Ergonomic Concrete Chair'
      revenue: 23.61
      date: '2014-08-22'
      type: 'committed'
    }
    {
      line_item: 'Small Steel Computer'
      revenue: 43.3
      date: '2014-08-15'
      type: 'pipeline'
    }
    {
      line_item: 'Gorgeous Wooden Pants'
      revenue: 40.8
      date: '2014-08-06'
      type: 'committed'
    }
    {
      line_item: 'Gorgeous Granite Chair'
      revenue: 38.23
      date: '2014-08-09'
      type: 'planned'
    }
    {
      line_item: 'Intelligent Cotton Car'
      revenue: 12
      date: '2014-08-03'
      type: 'planned'
    }
    {
      line_item: 'Sleek Concrete Hat'
      revenue: 37.83
      date: '2014-08-06'
      type: 'pipeline'
    }
    {
      line_item: 'Practical Steel Car'
      revenue: 20.58
      date: '2014-08-05'
      type: 'planned'
    }
    {
      line_item: 'Gorgeous Granite Car'
      revenue: 18.35
      date: '2014-08-12'
      type: 'planned'
    }
    {
      line_item: 'Small Plastic Shirt'
      revenue: 49.53
      date: '2014-08-01'
      type: 'pipeline'
    }
    {
      line_item: 'Practical Granite Car'
      revenue: 28.92
      date: '2014-08-27'
      type: 'planned'
    }
    {
      line_item: 'Ergonomic Concrete Gloves'
      revenue: 25.24
      date: '2014-08-13'
      type: 'planned'
    }
    {
      line_item: 'Sleek Granite Car'
      revenue: 21.98
      date: '2014-08-14'
      type: 'planned'
    }
    {
      line_item: 'Gorgeous Wooden Hat'
      revenue: 44.49
      date: '2014-08-27'
      type: 'committed'
    }
    {
      line_item: 'Small Steel Chair'
      revenue: 28.89
      date: '2014-08-23'
      type: 'planned'
    }
    {
      line_item: 'Small Plastic Hat'
      revenue: 24.52
      date: '2014-08-09'
      type: 'committed'
    }
    {
      line_item: 'Incredible Granite Hat'
      revenue: 46.63
      date: '2014-08-01'
      type: 'committed'
    }
    {
      line_item: 'Ergonomic Concrete Hat'
      revenue: 37.38
      date: '2014-08-15'
      type: 'planned'
    }
    {
      line_item: 'Sleek Cotton Computer'
      revenue: 29.38
      date: '2014-08-11'
      type: 'committed'
    }
    {
      line_item: 'Awesome Granite Computer'
      revenue: 32.1
      date: '2014-08-27'
      type: 'planned'
    }
    {
      line_item: 'Practical Granite Chair'
      revenue: 10.98
      date: '2014-08-01'
      type: 'committed'
    }
    {
      line_item: 'Fantastic Concrete Computer'
      revenue: 12.97
      date: '2014-08-25'
      type: 'planned'
    }
    {
      line_item: 'Rustic Concrete Chair'
      revenue: 48.19
      date: '2014-08-12'
      type: 'planned'
    }
    {
      line_item: 'Ergonomic Wooden Shirt'
      revenue: 18.95
      date: '2014-08-13'
      type: 'pipeline'
    }
    {
      line_item: 'Gorgeous Rubber Computer'
      revenue: 21.04
      date: '2014-08-16'
      type: 'pipeline'
    }
    {
      line_item: 'Intelligent Wooden Hat'
      revenue: 4.66
      date: '2014-08-24'
      type: 'planned'
    }
    {
      line_item: 'Gorgeous Wooden Pants'
      revenue: 36.97
      date: '2014-08-07'
      type: 'pipeline'
    }
    {
      line_item: 'Gorgeous Plastic Car'
      revenue: 15.22
      date: '2014-08-22'
      type: 'committed'
    }
    {
      line_item: 'Small Steel Shirt'
      revenue: 49.06
      date: '2014-08-25'
      type: 'pipeline'
    }
    {
      line_item: 'Fantastic Granite Shirt'
      revenue: 43.76
      date: '2014-08-22'
      type: 'pipeline'
    }
    {
      line_item: 'Sleek Wooden Gloves'
      revenue: 14.18
      date: '2014-08-08'
      type: 'pipeline'
    }
    {
      line_item: 'Intelligent Granite Shirt'
      revenue: 46.19
      date: '2014-08-15'
      type: 'committed'
    }
    {
      line_item: 'Small Plastic Table'
      revenue: 43.01
      date: '2014-08-11'
      type: 'pipeline'
    }
    {
      line_item: 'Small Wooden Chair'
      revenue: 3.05
      date: '2014-08-27'
      type: 'planned'
    }
    {
      line_item: 'Small Cotton Shoes'
      revenue: 48.91
      date: '2014-08-13'
      type: 'pipeline'
    }
    {
      line_item: 'Incredible Plastic Hat'
      revenue: 6.91
      date: '2014-08-07'
      type: 'pipeline'
    }
    {
      line_item: 'Ergonomic Cotton Shirt'
      revenue: 31.17
      date: '2014-08-11'
      type: 'committed'
    }
    {
      line_item: 'Gorgeous Plastic Hat'
      revenue: 35.91
      date: '2014-08-09'
      type: 'pipeline'
    }
    {
      line_item: 'Intelligent Steel Computer'
      revenue: 15.93
      date: '2014-08-12'
      type: 'planned'
    }
    {
      line_item: 'Intelligent Wooden Shirt'
      revenue: 2.92
      date: '2014-08-28'
      type: 'planned'
    }
    {
      line_item: 'Awesome Wooden Shoes'
      revenue: 32.77
      date: '2014-08-30'
      type: 'pipeline'
    }
    {
      line_item: 'Practical Wooden Shirt'
      revenue: 38.65
      date: '2014-08-29'
      type: 'planned'
    }
    {
      line_item: 'Gorgeous Steel Pants'
      revenue: 12.2
      date: '2014-08-03'
      type: 'pipeline'
    }
    {
      line_item: 'Gorgeous Plastic Shirt'
      revenue: 4.06
      date: '2014-08-08'
      type: 'pipeline'
    }
    {
      line_item: 'Rustic Cotton Hat'
      revenue: 31.25
      date: '2014-08-08'
      type: 'committed'
    }
    {
      line_item: 'Ergonomic Rubber Computer'
      revenue: 49.62
      date: '2014-08-24'
      type: 'pipeline'
    }
    {
      line_item: 'Incredible Concrete Table'
      revenue: 48.7
      date: '2014-08-22'
      type: 'committed'
    }
    {
      line_item: 'Small Rubber Hat'
      revenue: 22.26
      date: '2014-08-09'
      type: 'planned'
    }
    {
      line_item: 'Ergonomic Steel Computer'
      revenue: 28.55
      date: '2014-08-20'
      type: 'planned'
    }
    {
      line_item: 'Intelligent Wooden Shoes'
      revenue: 11.04
      date: '2014-08-03'
      type: 'committed'
    }
    {
      line_item: 'Practical Steel Pants'
      revenue: 46.63
      date: '2014-08-23'
      type: 'committed'
    }
    {
      line_item: 'Fantastic Granite Car'
      revenue: 19.37
      date: '2014-08-22'
      type: 'pipeline'
    }
    {
      line_item: 'Practical Granite Shirt'
      revenue: 18.71
      date: '2014-08-17'
      type: 'planned'
    }
    {
      line_item: 'Sleek Concrete Hat'
      revenue: 23.73
      date: '2014-08-28'
      type: 'pipeline'
    }
    {
      line_item: 'Gorgeous Rubber Gloves'
      revenue: 20.87
      date: '2014-08-06'
      type: 'committed'
    }
    {
      line_item: 'Incredible Steel Pants'
      revenue: 43.44
      date: '2014-08-02'
      type: 'committed'
    }
    {
      line_item: 'Fantastic Granite Hat'
      revenue: 6.04
      date: '2014-08-24'
      type: 'committed'
    }
    {
      line_item: 'Gorgeous Concrete Gloves'
      revenue: 20.93
      date: '2014-08-09'
      type: 'pipeline'
    }
    {
      line_item: 'Gorgeous Cotton Hat'
      revenue: 31.74
      date: '2014-08-12'
      type: 'pipeline'
    }
    {
      line_item: 'Intelligent Steel Table'
      revenue: 33.82
      date: '2014-08-06'
      type: 'planned'
    }
    {
      line_item: 'Rustic Granite Chair'
      revenue: 1.54
      date: '2014-08-17'
      type: 'pipeline'
    }
    {
      line_item: 'Incredible Granite Shirt'
      revenue: 44.02
      date: '2014-08-19'
      type: 'committed'
    }
    {
      line_item: 'Rustic Granite Hat'
      revenue: 34.45
      date: '2014-08-14'
      type: 'pipeline'
    }
    {
      line_item: 'Practical Rubber Chair'
      revenue: 10.19
      date: '2014-08-13'
      type: 'committed'
    }
    {
      line_item: 'Sleek Granite Table'
      revenue: 27.26
      date: '2014-08-25'
      type: 'committed'
    }
    {
      line_item: 'Ergonomic Granite Car'
      revenue: 18.25
      date: '2014-08-01'
      type: 'pipeline'
    }
    {
      line_item: 'Ergonomic Wooden Table'
      revenue: 44.87
      date: '2014-08-26'
      type: 'committed'
    }
    {
      line_item: 'Fantastic Cotton Shoes'
      revenue: 10.64
      date: '2014-08-23'
      type: 'pipeline'
    }
    {
      line_item: 'Small Plastic Computer'
      revenue: 38.62
      date: '2014-08-02'
      type: 'pipeline'
    }
    {
      line_item: 'Small Rubber Table'
      revenue: 13.22
      date: '2014-08-18'
      type: 'pipeline'
    }
    {
      line_item: 'Practical Steel Car'
      revenue: 48.57
      date: '2014-08-25'
      type: 'pipeline'
    }
    {
      line_item: 'Fantastic Granite Car'
      revenue: 33.16
      date: '2014-08-08'
      type: 'planned'
    }
    {
      line_item: 'Rustic Granite Shoes'
      revenue: 35.59
      date: '2014-08-02'
      type: 'planned'
    }
    {
      line_item: 'Small Plastic Pants'
      revenue: 6.62
      date: '2014-08-08'
      type: 'pipeline'
    }
    {
      line_item: 'Sleek Cotton Chair'
      revenue: 29.39
      date: '2014-08-16'
      type: 'pipeline'
    }
    {
      line_item: 'Awesome Cotton Shirt'
      revenue: 48.26
      date: '2014-08-12'
      type: 'committed'
    }
    {
      line_item: 'Rustic Cotton Hat'
      revenue: 32.26
      date: '2014-08-09'
      type: 'committed'
    }
    {
      line_item: 'Small Rubber Computer'
      revenue: 34.83
      date: '2014-08-13'
      type: 'planned'
    }
    {
      line_item: 'Sleek Cotton Chair'
      revenue: 49.76
      date: '2014-08-01'
      type: 'planned'
    }
    {
      line_item: 'Incredible Plastic Shoes'
      revenue: 49.03
      date: '2014-08-15'
      type: 'pipeline'
    }
    {
      line_item: 'Rustic Wooden Gloves'
      revenue: 18.93
      date: '2014-08-08'
      type: 'planned'
    }
    {
      line_item: 'Small Concrete Car'
      revenue: 25
      date: '2014-08-27'
      type: 'pipeline'
    }
  ])

  # Sets the text-area with test-data.
  # @param {String} name Optional ie. invalid|valid_small|valid|large
  ns.use_test_data = (name) ->
    ns.AngularSorterCtrl::set_user_input( ns.data[name] or ns.data.valid_large )

) window.aschyiel