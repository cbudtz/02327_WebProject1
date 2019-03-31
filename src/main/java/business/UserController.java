package business;

import data.IUserDAO;
import data.IUserDTO;
import data.UserDAOImpl;
import data.UserDTO;

public class UserController implements IUserController {
    private IUserDAO userDAO = new UserDAOImpl();

    @Override
    public IUserDTO getUser(int id){
        IUserDTO user;
        try {
            user = userDAO.getUser(id);
            if (user == null){
                user = new UserDTO();
                user.setUserName("No User"); //Make a Dummy User - (bad practise)
            }
        } catch (IUserDAO.DALException e) {
            user = new UserDTO();
            user.setUserName("SomeThingWentWrong User");
        }
        return user;
    }

}
