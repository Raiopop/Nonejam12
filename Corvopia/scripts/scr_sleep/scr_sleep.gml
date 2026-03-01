function sleep(_ms) {
    var tt = current_time + _ms;
    while (current_time < tt) { /* loop */ }
}