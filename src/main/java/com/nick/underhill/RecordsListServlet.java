package com.nick.underhill;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@WebServlet("/records/list")
public class RecordsListServlet extends HttpServlet {

    private AddressBook addressBook;

    @Override
    public void init() {
        addressBook = AddressBook.getInstance();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/WEB-INF/records-list.jsp");

        List<Record> records = new ArrayList<>();
        String sortMethod = String.valueOf(request.getParameter("sort"));

        switch (sortMethod) {
            case "asc":
                addressBook.sortedBy(SortOrder.ASC);
                break;
            case "desc":
                addressBook.sortedBy(SortOrder.DESC);
                break;
        }

        //Convert address book objects to List<Record>
        for (Object o : addressBook) {
            String s = o.toString();
            //Split object to stream and add to map
            Map<String, String> record =
                    Arrays.stream(s.split(","))
                            .map(str -> str.split(":"))
                            .collect(Collectors.toMap(
                                    a -> a[0].trim(),
                                    a -> a[1].trim()
                            ));
            //create new Record from Map entries and add it to List<Record>
            records.add(new Record(
                    record.get("First name"),
                    record.get("Last name"),
                    record.get("Address")));
        }

        request.setAttribute("records", records);
        requestDispatcher.forward(request, response);
    }
}
