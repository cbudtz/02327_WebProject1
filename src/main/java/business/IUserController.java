package business;

import data.IUserDAO;
import data.IUserDTO;

import java.util.NoSuchElementException;

public interface IUserController {
    IUserDTO getUser(int id);
}
