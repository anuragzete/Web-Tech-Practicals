package Assignment10;

import javax.ejb.Stateless;

@Stateless
public class calcbean implements calcbeanLocal {

    @Override
    public Integer calculator(int a, int b, int c) {
        if(c==1)
        {
            return (a+b);
        }
        else if(c==2)
        {
            return (a-b);
        }
        else if(c==3)
        {
            return (a*b);
        }
        else
        {
            return Math.round(a/b);
        }
    }
}