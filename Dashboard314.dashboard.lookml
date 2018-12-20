
- dashboard: dashboard314
  title: Dashboard314
  layout: newspaper
  elements:
  - title: Untitled
    name: Untitled
    model: pg_test_model_DEV
    explore: factvenue
    type: table
    fields:
    - dimworklistvenue.name
    - factvenue.count
    sorts:
    - factvenue.count desc
    limit: 500
    series_types: {}
    row: 0
    col: 0
    width: 8
    height: 6
