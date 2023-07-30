public class Motor {
    boolean ligado = false;
    double fatorInjecao = 1;

    int giros(){
        if(!ligado){
            return 0;
        } else {
            return (int) Math.round(fatorInjecao * 3000);
            // aqui esta sendo feito um arredondamento usando o Math.round e convertendo o valor para inteiro
        }
    }
    
}
