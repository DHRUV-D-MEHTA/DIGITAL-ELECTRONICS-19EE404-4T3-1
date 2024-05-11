module EX2 (a, b, c, d, w, x, y, z, f1, f2);
  input a, b, c, d, w, x, y, z;
  output f1, f2;
  wire adash, bdash, cdash, ddash, ydash, zdash, xdash;
  not u1(adash, a);
  not u2(bdash, b);
  not u3(cdash, c);
  not u4(ddash, d);
  not u5(ydash, y);
  not u6(zdash, z);
  not u7(xdash, x);

  and u8(p, adash, bdash, ddash);
  and u9(q, a, bdash, c, ddash);
  and u10(r, adash, b, c, cdash);
  and u11(s, a, bdash, cdash, ddash);
  and u12(t, w, xdash, ydash);
  and u13(u, wdash, x, ydash);
  and u14(v, w, xdash, y);

  or o1(f1, p, q, r, s);
  or o2(f2, t, u, v);
endmodule