/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author jonas
 */
public class ProfessorTest {
    
    public ProfessorTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    @Test
    public void testGetId() {
        System.out.println("getId");
        Professor instance = new Professor();
        int expResult = 0;
        int result = instance.getId();
        assertEquals(expResult, result);
        
    }

    @Test
    public void testSetId() {
        System.out.println("setId");
        int id = 0;
        Professor instance = new Professor();
        instance.setId(id);
       
    }


    @Test
    public void testSetNome() {
        System.out.println("setNome");
        String nome = "";
        Professor instance = new Professor();
        instance.setNome(nome);
        
    }

    

    @Test
    public void testSetEmail() {
        System.out.println("setEmail");
        String email = "";
        Professor instance = new Professor();
        instance.setEmail(email);
        
    }

   

    @Test
    public void testSetTelefone() {
        System.out.println("setTelefone");
        String telefone = "";
        Professor instance = new Professor();
        instance.setTelefone(telefone);
        
    }

    

    @Test
    public void testSetDisciplina() {
        System.out.println("setDisciplina");
        String disciplina = "";
        Professor instance = new Professor();
        instance.setDisciplina(disciplina);
        
    }

    
    @Test
    public void testSetSenha() {
        System.out.println("setSenha");
        String senha = "";
        Professor instance = new Professor();
        instance.setSenha(senha);
        
    }
    
}
