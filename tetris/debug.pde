class Debug {
  void board( ) {
    for (int u=0;  u<board.length;  u++) {
      for (int i=0;  i<board[0].length;  i++) {
        if(board[u][i]){
          print(board[u][i] + "  ");
        }else{
          print(board[u][i] + " ");
        }
      }
      print("\n");
    }
    print("\n\n");
  }
}
