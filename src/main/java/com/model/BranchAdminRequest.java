package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "BRANCHADMINREQUEST_DETAILS")
public class BranchAdminRequest {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer requestId;
	@NotEmpty(message = "firstname should not be empty")
	private String firstName;
	@NotEmpty(message = "lastname should not be empty")
	private String lastName;
	@NotEmpty(message = "contactnumber should not be empty")
	private String contactNumber;
	@NotEmpty(message = "medicine name should not be empty")
	private String medicineName;
	@NotEmpty(message = "city should not be empty")
	private String city;

	public Integer getRequestId() {
		return requestId;
	}

	public void setRequestId(Integer requestId) {
		this.requestId = requestId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	public String getMedicineName() {
		return medicineName;
	}

	public void setMedicineName(String medicineName) {
		this.medicineName = medicineName;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

}
