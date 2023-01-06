package controller;

import dao.UserDAO;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.User;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;


@WebServlet(name = "UserServlet", value = "/users")
public class UserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserDAO userDAO;

    @Override
    public void init() {
        userDAO = new UserDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showNewForm(request, response);
                break;
            case "search":
                search(request, response);
                break;
            case "order":
                order(request, response);
                break;
            case "edit":
                showEditForm(request, response);
                break;
            case "delete":
                showComfirmDelete(request, response);
                break;
            default:
                listUser(request, response);
                break;
        }
    }

    private void search(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String query = request.getParameter("q");
        List<User> users = userDAO.search(query);
        request.setAttribute("listUser", users);
        request.getRequestDispatcher("user/list.jsp").forward(request, response);
    }


    private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        User existingUser = userDAO.selectUser(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("user/edit.jsp");
        request.setAttribute("id", existingUser);
        dispatcher.forward(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("user/create.jsp");
        dispatcher.forward(request, response);
    }

    private void order(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> orderUser = userDAO.orderByNameASC();
        request.setAttribute("listUser", orderUser);
        RequestDispatcher dispatcher = request.getRequestDispatcher("user/list.jsp");
        dispatcher.forward(request, response);
    }

    private void listUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> listUser = userDAO.selectAllUsers();
        request.setAttribute("listUser", listUser);
        RequestDispatcher dispatcher = request.getRequestDispatcher("user/list.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "create":
                    insertUser(request, response);
                    break;
                case "edit":
                    updateUser(request, response);
                    break;
                case "delete":
                    deleteUser(request,response);
                    break;
            }
        } catch (SQLException e) {
            throw new ServletException(e);
        }
    }

    private void deleteUser(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
       userDAO.deleteUser(id);
        request.setAttribute("listUser", userDAO.selectAllUsers());
        RequestDispatcher dispatcher = request.getRequestDispatcher("user/list.jsp");
        dispatcher.forward(request, response);
    }

    private void showComfirmDelete(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));

        User user = userDAO.selectUser(id);
        request.setAttribute("user", user);
        RequestDispatcher dispatcher = request.getRequestDispatcher("user/delete.jsp");
        dispatcher.forward(request, response);
    }

    private void updateUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");

        User book = new User(id, name, email, country);
        userDAO.updateUser(book);
        RequestDispatcher dispatcher = request.getRequestDispatcher("user/edit.jsp");
        dispatcher.forward(request, response);
    }

    private void insertUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");
        User newUser = new User(name, email, country);
        userDAO.insertUser(newUser);
        RequestDispatcher dispatcher = request.getRequestDispatcher("user/create.jsp");
        dispatcher.forward(request, response);
    }
}
