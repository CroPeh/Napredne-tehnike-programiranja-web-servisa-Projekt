
<?php 
print '
		<h1>Contact Form</h1>
		<div id="contact">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2781.510448555175!2d15.889758415775226!3d45.80103461892487!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4765d16937e7e201%3A0x46942fe567fe5b15!2sUl.%20Drage%20Gervaisa%2025%2C%2010000%2C%20Zagreb!5e0!3m2!1shr!2shr!4v1635353494554!5m2!1shr!2shr" width="100%" height="400" frameborder="0" style="border:0" allowfullscreen></iframe>
			<form action="" id="contact-form" name="contact_form" method="POST">
				<label for="name">First Name *</label>
				<input type="text" id="name" name="name" placeholder="First name" required>

				<label for="surname">Last Name *</label>
				<input type="text" id="surname" name="surname" placeholder="Last name" required>
				
				<label for="email">Your E-mail *</label>
				<input type="email" id="email" name="email" placeholder="E-mail" required>

				<label for="country">Country</label>
				<select id="country" name="country">
				  <option value="">Select:</option>
				  <option value="HR" selected>Croatia</option>
                  <option value="GR">Germany</option>
				  <option value="UK">United Kingdom</option>
				  <option value="HU">Hungary</option>
                  <option value="SLO">Slovenia</option>
                  <option value="ESP">Spain</option>
				</select>

				<label for="description">Description</label>
				<textarea id="description" name="description" placeholder="Write description" style="height:200px"></textarea>

				<input type="submit" value="Submit">
			</form>
		</div>';
?>