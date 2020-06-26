package com.cliente.action;
import java.io.IOException;

import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.util.EntityUtils;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import com.cibertec.entidad.Cliente;
import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionSupport;

@ParentPackage("dawi")
public class ClienteAction extends ActionSupport{
	
	private String URL_SERVICIO = "http://localhost:8080/CL3_Servidor_LuisBustamante/rest/cliente/";

	private Cliente cliente;
	
	private Cliente[] listaClientes;
	private int minimo;
	private int maximo;
	
	private HttpClient httpClient;

	public ClienteAction() {
		httpClient = HttpClientBuilder.create().build();
	}

	@Action(value="/guardarCliente", 
			results= {@Result(name="ok", type="redirect", location="/guardarCliente.jsp")}
	)
	public String guardarCliente() throws ClientProtocolException, IOException {
		Gson gson = new Gson();
		String dataJSON = gson.toJson(cliente);
		
		HttpPost httpPost = new HttpPost(URL_SERVICIO + "guardar");
		StringEntity string = new StringEntity(dataJSON.toString(),"UTF-8");
		httpPost.setHeader("Content-Type","application/json;charset=UTF-8");
		httpPost.setEntity(string);
		HttpResponse httpResponse = httpClient.execute(httpPost);
		return  "ok";
	}
	
	
	@Action(value="/listarClientesPorEdad", 
			results= {@Result(name="ok",type="json")}
	)
	public String listarClientesPorEdad() throws ClientProtocolException, IOException {
		String rutaServicio = URL_SERVICIO + "listarPorEdad/" + minimo + "/" + maximo;
		HttpGet httpGet = new HttpGet(rutaServicio);
		HttpResponse httpResponse = httpClient.execute(httpGet);
		
		String json = EntityUtils.toString(httpResponse.getEntity());
		Gson gson = new Gson();
		listaClientes = gson.fromJson(json, Cliente[].class);
		return "ok";
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public Cliente[] getListaClientes() {
		return listaClientes;
	}

	public void setListaClientes(Cliente[] listaClientes) {
		this.listaClientes = listaClientes;
	}

	public int getMinimo() {
		return minimo;
	}

	public void setMinimo(int minimo) {
		this.minimo = minimo;
	}

	public int getMaximo() {
		return maximo;
	}

	public void setMaximo(int maximo) {
		this.maximo = maximo;
	}
}






