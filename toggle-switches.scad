mts_raster = 4.7;
mts_corpus_h = 9.5;
mts_column_l = 13.2;
mts_column_w = 7.9;
mts_affix_inset = 0.5;
mts_mounting_thread_d = 6;
mts_mounting_thread_h = 9;

module mts_toggle_switch(columns = 1) {
  for (column = [1 : columns]) {
    translate([-mts_column_l / 2, (mts_column_w * (columns / 2)) - column * mts_column_w, -mts_corpus_h])
      cube([mts_column_l, mts_column_w, mts_corpus_h]);
  }

  difference() {
    cylinder(d = mts_mounting_thread_d, h = mts_mounting_thread_h);
    cylinder(d = mts_mounting_thread_d - 4 * mts_affix_inset, h = mts_mounting_thread_h);

    translate([mts_mounting_thread_d / 2 - mts_affix_inset, -mts_affix_inset / 2, 0])
      cube([mts_affix_inset, mts_affix_inset, mts_mounting_thread_h]);
  }
}
