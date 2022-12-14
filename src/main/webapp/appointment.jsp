<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="model">
    <!-- Contact Form -->
    <div class="contact-form-two">
        <div class="title-box">
            <h4>Make an Appointment</h4>
            <div class="text">We provide the most full medical services,so every person could have the <br>oportunity to
                receive qualitative medical help.</div>
        </div>
        <form method="post" action="setappointment.php" id="contact-form">
            <div class="row clearfix">
                <div class="col-lg-6 col-md-6 col-sm-12 form-group"><input type="text" name="username"
                        placeholder="Your Name" required=""></div>
                <div class="col-lg-6 col-md-6 col-sm-12 form-group"><input type="text" name="phone"
                        placeholder="Your Phone" required=""></div>
                <div class="col-lg-6 col-md-6 col-sm-12 form-group"><input type="email" name="email"
                        placeholder="Email Address" required=""></div>
                <div class="col-lg-6 col-md-6 col-sm-12 form-group"><select name="vehicle" required>
                        <option value="">Select Departments</option>
                        <option value="Audi">Cardiology</option>
                        <option value="BMW">Neurology</option>
                        <option value="Bugatti">Urology</option>
                        <option value="Honda">Gynecological</option>
                        <option value="Jaguar">Pediatrical</option>
                        <option value="Hyundai">Laboratory</option>
                    </select></div>
                <div class="col-lg-6 col-md-6 col-sm-12 form-group"><input type="date" name="date"
                        placeholder="Select Date" required=""></div>
                <div class="col-lg-6 col-md-6 col-sm-12 form-group"><select name="time" required>
                        <option value="">Select Time</option>
                        <option value="10:00AM - 12:00AM">10:00AM - 12:00AM</option>
                        <option value="12:00AM - 02:00AM">12:00AM - 02:00AM</option>
                        <option value="02:00PM - 04:00PM">02:00PM - 04:00PM</option>
                        <option value="04:00PM - 06:00PM">04:00PM - 06:00PM</option>
                        <option value="06:00PM - 08:00PM">06:00PM - 08:00PM</option>
                    </select></div>
                <div class="col-lg-12 col-md-12 col-sm-12 form-group"><textarea name="message" placeholder="Message"
                        required=""></textarea></div>
                <div class="col-lg-12 col-md-12 col-sm-12 form-group"><button class="theme-btn btn-style-three small"
                        type="submit" name="submit-form"><span class="btn-title">Submit Now</span></button></div>
            </div>
        </form>
    </div>
</div>