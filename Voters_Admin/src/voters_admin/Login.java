/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package voters_admin;

import java.text.SimpleDateFormat;
import java.util.Date;
import javax.swing.JOptionPane;

/**
 *
 * @author tosyngy
 */
public class Login extends javax.swing.JFrame {

    Variables var;
    DbConnect db;
    JOptionPane jp;
    static String permit = "";

    /**
     * Creates new form Login
     */
    public Login() {
        initComponents();
        jp = new JOptionPane();
        db = new DbConnect();
        var = new Variables();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jTextField1 = new javax.swing.JTextField();
        jPasswordField1 = new javax.swing.JPasswordField();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jLabel3 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setResizable(false);

        jPanel1.setLayout(null);

        jLabel1.setText("Username: ");
        jPanel1.add(jLabel1);
        jLabel1.setBounds(30, 40, 80, 30);

        jLabel2.setText("Password");
        jPanel1.add(jLabel2);
        jLabel2.setBounds(30, 90, 80, 30);

        jTextField1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jTextField1MouseClicked(evt);
            }
        });
        jTextField1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField1ActionPerformed(evt);
            }
        });
        jTextField1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jTextField1KeyPressed(evt);
            }
        });
        jPanel1.add(jTextField1);
        jTextField1.setBounds(110, 40, 200, 30);

        jPasswordField1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jPasswordField1MouseClicked(evt);
            }
        });
        jPasswordField1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                jPasswordField1KeyPressed(evt);
            }
        });
        jPanel1.add(jPasswordField1);
        jPasswordField1.setBounds(110, 90, 200, 30);

        jButton1.setText("Login");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton1);
        jButton1.setBounds(40, 140, 130, 23);

        jButton2.setText("Exit");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton2);
        jButton2.setBounds(180, 140, 130, 23);

        jLabel3.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)), "Admin Login"));
        jPanel1.add(jLabel3);
        jLabel3.setBounds(0, 20, 350, 160);

        jLabel5.setFont(new java.awt.Font("DejaVu Sans", 2, 13)); // NOI18N
        jLabel5.setText("Powered by Groupname");
        jPanel1.add(jLabel5);
        jLabel5.setBounds(10, 190, 150, 20);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 366, javax.swing.GroupLayout.PREFERRED_SIZE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 217, javax.swing.GroupLayout.PREFERRED_SIZE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jTextField1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jTextField1MouseClicked
        jTextField1.setSelectionStart(0);
    }//GEN-LAST:event_jTextField1MouseClicked

    private void jTextField1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jTextField1KeyPressed

        if (evt.getKeyCode() == 10) {
            jPasswordField1.requestFocus();
        }
    }//GEN-LAST:event_jTextField1KeyPressed

    private void jPasswordField1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jPasswordField1MouseClicked
        jPasswordField1.setSelectionStart(0);
    }//GEN-LAST:event_jPasswordField1MouseClicked

    private void jPasswordField1KeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jPasswordField1KeyPressed
        if (evt.getKeyCode() == 10) {
            jButton1ActionPerformed(null);
        }
        // TODO add your handling code here:
    }//GEN-LAST:event_jPasswordField1KeyPressed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        userLogin();        // TODO add your handling code here:
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        System.exit(0);        // TODO add your handling code here:
    }//GEN-LAST:event_jButton2ActionPerformed

    private void jTextField1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_jTextField1ActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Login.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Login().setVisible(true);
            }
        });
    }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPasswordField jPasswordField1;
    private javax.swing.JTextField jTextField1;
    // End of variables declaration//GEN-END:variables

    void userLogin() {
        if (jTextField1.getText().isEmpty()) {
            jp.showMessageDialog(rootPane, "Username require", "Login", jp.ERROR_MESSAGE);
            jTextField1.requestFocus();
            return;
        }
        if (jPasswordField1.getText().isEmpty()) {
            jp.showMessageDialog(rootPane, "Password require", "Login", jp.ERROR_MESSAGE);
            jPasswordField1.requestFocus();
            return;
        }
        //testing if internet connection is available

        try {
            String sqlQuery = "select password as pass from admin where username='" + jTextField1.getText() + "'";
            db.rs = db.st.executeQuery(sqlQuery);
            while (db.rs.next()) {
                if (db.rs.getString("pass").equals(jPasswordField1.getText())) {
                    var.setUsername(jTextField1.getText());
//                    String test = String.valueOf(testInet("google.com") || testInet("amazon.com"));
//                    if (test.equals("true")) {
//                        permit = "connected";
//                    } else if (test.equals("false")) {
//                        JOptionPane.showMessageDialog(rootPane, "Your system is not connected to internet,\npls Connect to internet or set your \nSystem time and restart the app ..");
//                        permit = "Not Connected";
//                    }
                    Welcome wel = new Welcome();
                    log("Admin login");
                    this.dispose();
                    wel.setVisible(true);
                    return;
                }
            }
            JOptionPane.showMessageDialog(rootPane, "Invalid Username or Password!!!");
            return;
        } catch (Exception e) {
            JOptionPane.showMessageDialog(rootPane, "Database Connection Problem");
            e.printStackTrace();
        }
    }

    void log(String event) {
        try {
            Date d = new Date();
            db.ps = db.con.prepareStatement("INSERT INTO `voters_reg`.`log` (`transactiontype` ,`agentid` ,`systemid` ,`date` ,`status`)VALUES (?,?,?,?,?) ");
            db.ps.setString(1, event);
            db.ps.setString(2, var.getUsername());
            db.ps.setString(3, "");//system id goes here
            SimpleDateFormat dateTime = new SimpleDateFormat("HH:mm:ss dd-MMM-yyyy");
            db.ps.setString(4, dateTime.format(d.getTime()));
            db.ps.setString(5, "0");
            db.ps.executeUpdate();
        } catch (Exception e) {
        }

    }
}
