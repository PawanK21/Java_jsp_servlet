package MyPackage;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.Date;
import java.util.Scanner;

import com.google.gson.Gson;
import com.google.gson.JsonObject;


/**
 * Servlet implementation class MyServlet
 */
@WebServlet("/MyServlet")
public class MyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("deprecation")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		//API setup
		String apiKey = "a020b6598da3ee692f8984296d578634";
		
		//get the city from the form input
		String city = request.getParameter("city");
		
		//create the url for the OpenWheatherMap API request
		String apiUrl = "https://api.openweathermap.org/data/2.5/weather?q=" + city + "&appid=" + apiKey;
		
		//API Integeration
		URL url = new URL(apiUrl);
		HttpURLConnection connection = (HttpURLConnection)url.openConnection();
		connection.setRequestMethod("GET");
		
		//Reading the data from network
		InputStream inputStream = connection.getInputStream();
		InputStreamReader reader = new InputStreamReader(inputStream);
		
		//wants to store in string
		StringBuilder responseContent = new StringBuilder();
		
		//input lene ke liye from the reader, will create Scanner object
		Scanner scanner = new Scanner(reader);
		
		while(scanner.hasNext()) {
			responseContent.append(scanner.nextLine());
		}
		scanner.close();
		
		//TypeCasting: parsing the data into JSON
		Gson gson = new Gson();
		JsonObject jsonobject = gson.fromJson(responseContent.toString(), JsonObject.class);
//		System.out.println(jsonobject);
		
		//date and time
		long dateTimestamp = jsonobject.get("dt").getAsLong()*1000;
		String date = new Date(dateTimestamp).toString();
		
		//temperature
		double temperatureKelvin = jsonobject.getAsJsonObject("main").get("temp").getAsDouble();
		int temperatureCelsius = (int)(temperatureKelvin - 273.15);
		
		//humidity
		int humidity = jsonobject.getAsJsonObject("main").get("humidity").getAsInt();
		
		//wind speed
		double windSpeed = jsonobject.getAsJsonObject("wind").get("speed").getAsDouble();
		
		//wheather condition
		String weatherCondition = jsonobject.getAsJsonArray("weather").get(0).getAsJsonObject().get("main").getAsString();
		
		//set the data as request Attribute (for sending to jsp page)
		request.setAttribute("date", date);
		request.setAttribute("city", city);
		request.setAttribute("temperature", temperatureCelsius);
		request.setAttribute("wheatherCondition", weatherCondition);
		request.setAttribute("humidity", humidity);
		request.setAttribute("windSpeed", windSpeed);
		request.setAttribute("wheatherData", responseContent.toString());
		
		connection.disconnect();
		
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
	}

}
