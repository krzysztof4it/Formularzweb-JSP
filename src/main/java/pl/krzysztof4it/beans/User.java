package pl.krzysztof4it.beans;

/**
 * Created by Krzysztof on 2017-05-24.
 */
public class User {
    private String login;

    public User(String login ) {
        this.login = login;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }


}
