void UnidadeDeControle(int Command)
{
    switch (Command)
    {
      // Para o Robô
      case 7:
            Sentido('S');
      break;

      // Rigth
      case 11:
            Sentido('D');
            SetVelocity(150);
      break;

      // Left
      case 3:
            Sentido('E');
            SetVelocity(150);
      break;

      // Up
      case 8:
            Sentido('F');
            SetVelocity(150);
      break;

      // Down
      case 6:
            Sentido('R');
            SetVelocity(150);
      break;

    }
}


