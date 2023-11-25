import streamlit as st
import mysql.connector
from datetime import datetime

# Connect to the MySQL database
db = mysql.connector.connect(
    host="localhost",
    user="root",
    password="your_password",
    database="project"
)

cursor = db.cursor()



# Function to perform user signup
def perform_signup(email, password, first_name, last_name, contact_no, date_of_birth, role):
    query = "CALL user_signup(%s, %s, %s, %s, %s, %s, %s)"
    values = (email, password, first_name, last_name, contact_no, date_of_birth, role)
    cursor.execute(query, values)
    db.commit()

# Function to perform user login
def perform_login(email, password):
    query = "SELECT * FROM user WHERE email = %s AND password = %s"
    values = (email, password)
    cursor.execute(query, values)
    res = cursor.fetchone()
    print(res)
    
    # print(st.session_state.user_id ,
    # st.session_state.flagL,
    # st.session_state.flagAdmin)
    return res



# Function to fetch travel schedules
def get_travel_schedules():
    query = "SELECT * FROM travel_schedule"
    cursor.execute(query)
    return cursor.fetchall()

# Function to perform booking
def perform_booking(user_id, schedule_id, no_of_tickets):
    query = "CALL perform_booking(%s, %s, %s, @booking_id)"
    values = (user_id, schedule_id, no_of_tickets)
    cursor.execute(query, values)

    s_query = "SELECT amount FROM travel_schedule WHERE id = %s"
    s_values = (schedule_id,)
    cursor.execute(s_query, s_values)
    result = cursor.fetchone()
    
    if result:
        amt = result[0]
        print(amt)
        #st.session_state.amt = amt  # Store the booking ID in the session state
    else:
        print("Amount not found")
    
    st.session_state.amt = no_of_tickets * amt



    # Fetch the booking ID using a SELECT statement
    select_query = "SELECT booking_id FROM booking WHERE travel_schedule_id = %s AND no_of_tickets = %s ORDER BY date_of_booking DESC, time_of_booking DESC LIMIT 1"
    select_values = (schedule_id, no_of_tickets)
    cursor.execute(select_query, select_values)
    result = cursor.fetchone()
    if result:
        booking_id = result[0]
        print(booking_id)
        st.session_state.booking_id = booking_id  # Store the booking ID in the session state
    else:
        print("Booking ID not found")


    db.commit()

# Function to schedule travel
def schedule_travel(route, source,destination,departure_date, arrival_time,departure_time, total_seats,amt,driver_name,driver_contact,DL,bus_no,bus_type):
    query = "CALL schedule_travel(%s,%s,%s, %s, %s,%s, %s,%s, @result_message)"
    values = (route,source,destination, departure_date, arrival_time,departure_time,  total_seats,amt)
    cursor.execute(query, values)
    cursor.execute("SELECT @result_message")
    result_message = cursor.fetchone()[0]
    query_dri = "INSERT INTO driver (name,contact_no,dl) VALUES (%s,%s,%s)"
    values_dri = (driver_name,driver_contact,DL)
    res_dri = cursor.execute(query_dri,values_dri)
    print(res_dri)
    query_bus = "INSERT INTO bus (capacity,plate_no,type,depot) VALUES (%s,%s,%s,%s)"
    values_bus = (total_seats,bus_no,bus_type,source)
    res_bus = cursor.execute(query_bus,values_bus)
    print(res_bus)
    db.commit()
    return result_message


def make_payment (payment_option):
    query = "CALL make_payment(%s,%s,%s,@resmes)"
    values = (st.session_state.booking_id,st.session_state.amt,payment_option)
    cursor.execute(query, values)
    res = cursor.fetchone()
    return res

# Function to fetch booked tickets for a user
def get_booked_tickets():
    query = "CALL show_user_tickets(%s)"
    values = (st.session_state.user_id,)
    cursor.execute(query, values)
    return cursor.fetchall()

def unschedule_travel(schudle_id):
    query = "DELETE FROM travel_schedule WHERE id =%s"
    values = (schudle_id,)
    res = cursor.execute(query, values)
    return res

def logincheck():
    # print('check')
    # print(st.session_state.user_id)
    return st.session_state.flagL != 0
def rolecheck():
    return st.session_state.flagAdmin == 1 
def bookcheck():
    return st.session_state.flagBooked == 1

# Streamlit app
def main():
    st.title("Bus Reservation System")

    # Get the current page from the URL parameters
    current_page = st.experimental_get_query_params().get("page", ["Signup"])[0]

    # Page selection
    page = st.sidebar.radio("Select a page", ["Signup", "Login", "Booking", "Travel Schedule", "Payment", "View Tickets"], index=["Signup", "Login", "Booking", "Travel Schedule", "Payment", "View Tickets"].index(current_page))

    # Automatically navigate to the selected page
    st.experimental_set_query_params(page=page)

    if page == "Signup":
        st.header("Signup")
        email = st.text_input("Email")
        password = st.text_input("Password", type="password")
        first_name = st.text_input("First Name")
        last_name = st.text_input("Last Name")
        contact_no = st.text_input("Contact Number")
        date_of_birth = st.date_input("Date of Birth")
        role = st.text_input("Role")

        if st.button("Signup"):
            perform_signup(email, password, first_name, last_name, contact_no, date_of_birth, role)
            st.success("Signup successful! Please proceed to login.")

    elif page == "Login":
        st.header("Login")
        email = st.text_input("Email")
        password = st.text_input("Password", type="password")

        if st.button("Login"):
            user = perform_login(email, password)
            if user:
                st.session_state.flagL = 1
                st.session_state.flagAdmin = user[-1]
                st.session_state.user_id = user[0]
                st.success(f"Welcome, {user[4]} {user[5]}!")
                #st.rerun()
            else:
                st.error("Invalid email or password. Please try again.")

    elif page == "Booking":
        print(st.session_state.user_id ,
    st.session_state.flagL,
    st.session_state.flagAdmin)
        st.header("Book a Ticket")
        if logincheck():
            travel_schedules = get_travel_schedules()
            st.subheader("Available Travel Schedules")
            for schedule in travel_schedules:
                st.write(f"ID: {schedule[0]}, Route: {schedule[8]}, Departure Time: {schedule[6]}")

            # Allow the user to book a ticket
            selected_schedule_id = st.number_input("Enter the ID of the schedule you want to book", min_value=1, max_value=len(travel_schedules), step=1)
            no_of_tickets = st.number_input("Number of Tickets", min_value=1, step=1)

            if st.button("Book Ticket"):
                # Get the user ID from the session
                user_id = st.session_state.user_id
                # Perform booking logic
                perform_booking(user_id, selected_schedule_id, no_of_tickets)
                st.session_state.flagBooked = 1
                st.success(f"Booking successful! {no_of_tickets} ticket(s) booked for schedule ID {selected_schedule_id}.")

        else:
            st.write("Log In")            

    elif page == "Travel Schedule":
        st.header("Schedule Travel")
        if rolecheck():
            route = st.text_input("Route")
            source = st.number_input("source", min_value=1, step=1)
            destination = st.number_input("destination", min_value=1, step=1)
            departure_date = st.date_input("Departure Date")
            departure_time = st.time_input("Departure Time")
            arrival_time = st.time_input("arrival Time")
            total_seats = st.number_input("Total Seats", min_value=1, step=1)
            amt = st.number_input("amount", min_value=1, step=1)
            driver_name=st.text_input("Driver name")
            driver_contact = st.text_input("Driver conatct")
            DL = st.text_input("Driver License")
            bus_type = st.text_input("bus type")
            bus_no = st.text_input("Bus Plate number")

            if st.button("Schedule Travel"):
                result_message = schedule_travel(route, source,destination,departure_date, arrival_time,departure_time, total_seats,amt,driver_name,driver_contact,DL,bus_no,bus_type)
                st.success(result_message)

            # Fetch and display travel schedules
            travel_schedules = get_travel_schedules()
            st.subheader("Available Travel Schedules")
            for schedule in travel_schedules:
                st.write(f"ID: {schedule[0]}, Route: {schedule[8]}, Departure Time: {schedule[6]}")
            selected_schedule_id = st.number_input("Enter the ID of the schedule you want to book", min_value=1, max_value=len(travel_schedules)+1, step=1)
            if st.button("Unschedule Travel"):
                result_message = unschedule_travel(selected_schedule_id)
                st.success(result_message)
        else:
            st.write("You Dont have the previlages !")
            


    elif page == "Payment":
        st.header("Make a Payment")
        if bookcheck():
            st.subheader(f"Amount  {st.session_state.amt}")
            payment_options = ["UPI", "Credit Card", "Debit Card", "Netbanking"]
            selected_payment_option = st.selectbox("Select Payment Option", payment_options)
            if st.button("Pay"):
                make_payment(selected_payment_option)
                st.success("Payment successful!")
        else:
            st.write("Book Ticket!")
            

    elif page == "View Tickets":
        st.header("View Tickets")
        # Fetch and display booked tickets for the logged-in user
        if logincheck():
            user_id = st.session_state.user_id
            booked_tickets = get_booked_tickets()
            print(booked_tickets)
            st.subheader("Your Booked Tickets")
            for ticket in booked_tickets:
                st.write(f"{ticket}")
        else:
            st.write("Login")
if __name__ == "__main__":
    main()
