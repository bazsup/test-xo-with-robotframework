/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BoardGame.Tests;

import BoardGame.Models.BoardXO;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Rei
 */
public class EntityTest {
    
    public EntityTest() {
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
    public void CreateBoard(){
        BoardXO board = new BoardXO();
        assertNotNull(board);
    }
    
    @Test 
    public void BoardSetStart(){
        BoardXO board =new BoardXO();
        assertEquals(0, board.getP1Score());
        assertEquals(0,board.getP2Score());
        assertEquals(0,board.getTieScore());
    }
}
