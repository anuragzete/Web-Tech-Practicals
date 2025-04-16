package Assignment10;

import javax.ejb.Local;

@Local
public interface calcbeanLocal {

    Integer calculator(int a, int b, int c);
}
