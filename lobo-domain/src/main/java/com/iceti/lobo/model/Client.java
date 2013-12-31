package com.iceti.lobo.model;

import java.util.List;

import com.google.common.collect.Lists;

// TODO: listado de clientes (resumen) en donde se muestre la relacion entre 
//       el cliente y el saldo con nuestra empresa
// 		Clientes activos e inactivos ,,, dividir!!!

public class Client {

	private String name;
	private String razonSocial;
	private IdentificationType identificationType;
	private String identificacion;
	private String address;
	private String city;
	private String zip;
	private String provincia;
	private String pais;
	private String phone;
	private String email;
	private List<String> contactos = Lists.newArrayList(); // TODO pensar?
	private String comentarios; // TODO pensar?
	private String historia; // TODO pensar?
	private String facturasRecurrentes; // TODO pensar?
}
