
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
try {
Class.forName("com.mysql.jdbc.Driver");
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Connection connection_cntn = null;
Statement statement = null;
Statement statement_cntn = null;
ResultSet resultSet = null;
ResultSet resultSet_cntn = null;
String matiere = "<div class='nav flex-column nav-pills me-3 col-2' id='v-pills-tab' role='tablist' aria-orientation='vertical'>";String matiere_cont ="<div class='tab-content col-10' id='v-pills-tabContent'>";
%>

<%
try{
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/alamni","root","");
statement=connection.createStatement();
String sql ="select c.classe , m.matiere , clr.id , e.nom , e.prenom from classroom clr , classe c ,enseignant e , matiere m where ( e.id = clr.id_ens and clr.id_matiere = m.id and c.id = clr.id_classe and clr.id_ens = 12 )";
resultSet = statement.executeQuery(sql);
int i= 0 ; int x = 0 ;
while(resultSet.next()){
    if (i==0){
        i++;
        matiere = matiere+ "<button class='nav-link active' id='v-pills-home-tab' data-bs-toggle='pill' data-bs-target='#v"+resultSet.getString("id")+"' type='button' role='tab' aria-controls='v-pills-home' aria-selected='true'>"+resultSet.getString("classe")+" ( "+resultSet.getString("matiere") +") </button>";
    }else{
        matiere = matiere+ "<button class='nav-link' id='v-pills-home-tab' data-bs-toggle='pill' data-bs-target='#v"+resultSet.getString("id")+"' type='button' role='tab' aria-controls='v-pills-home' aria-selected='true'>"+resultSet.getString("classe")+" ( "+resultSet.getString("matiere") +") </button>";

    }
try{
connection_cntn = DriverManager.getConnection("jdbc:mysql://localhost:3306/alamni","root","");
statement_cntn=connection_cntn.createStatement();
String sql1 ="select * from travail where id_classroom =" +resultSet.getString("id");
resultSet_cntn = statement_cntn.executeQuery(sql1);
if ( x== 0){
    x++;
matiere_cont =matiere_cont+"<div class='tab-pane fade show active' id='v"+resultSet.getString("id")+"' role='tabpanel' aria-labelledby='v-pills-messages-tab'><div class='row justify-content-end px-4'><div class='btn btn-alamni w-200px'  id-data='"+resultSet.getString("id")+"' data-bs-toggle='modal' data-bs-target='#add' id='add_cours'>Ajouter un Travail</div>";

}else{
matiere_cont =matiere_cont+"<div class='tab-pane fade' id='v"+resultSet.getString("id")+"' role='tabpanel' aria-labelledby='v-pills-messages-tab'><div class='row justify-content-end px-4'><div class='btn btn-alamni w-200px' id-data='"+resultSet.getString("id")+"' data-bs-toggle='modal' data-bs-target='#add' id='add_cours'>Ajouter un Travail</div>";
}

while(resultSet_cntn.next()){





matiere_cont = matiere_cont+"<div class='row'><div class='col-12'><div class='card m-2'><div class='row p-2 px-3'><div class='col-7'><p>Zareb Feres</p></div><div class='col-5 text-end'><div class='row px-3 pb-1'><div class='doc'><div class='card p-1'>TP_AJA_JSON.pdf</div></div></div></div></div><div class='row px-4'></div></div></div></div>" ;









}

matiere_cont = matiere_cont+"</div></div>";

connection_cntn.close();
} catch (Exception e) {
e.printStackTrace();
}



}
matiere = matiere + "</div>";
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
out.print(matiere);
out.print(matiere_cont);
%>







