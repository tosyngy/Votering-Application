package voters_admin;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



/**
 *
 * @author damhiesax
 */
public class LocHis extends javax.swing.JFrame {
    FormatDate fDate = new FormatDate();
   Date d;
   DefaultTableModel dataSet;
   int j;
    DbConnect dbcon = new DbConnect();
    String query; 
     /**
     * Creates new form LogHistory
     */
    public LocHis() {
        initComponents();
        jButton5ActionPerformed(null);
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
        jButton4 = new javax.swing.JButton();
        jButton5 = new javax.swing.JButton();
        jScrollPane2 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        jLabel9 = new javax.swing.JLabel();
        jComboBox1 = new javax.swing.JComboBox();
        jLabel2 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setResizable(false);

        jPanel1.setLayout(null);

        jButton4.setFont(new java.awt.Font("DejaVu Sans", 1, 13)); // NOI18N
        jButton4.setText("Close");
        jButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton4ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton4);
        jButton4.setBounds(740, 430, 100, 27);

        jButton5.setText("fetch");
        jButton5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton5ActionPerformed(evt);
            }
        });
        jPanel1.add(jButton5);
        jButton5.setBounds(160, 430, 70, 30);

        jTable1 = new javax.swing.JTable(){
            public boolean isCellEditable( int rowIndex, int colIndex){
                return false;
            }
        };
        jTable1.setFont(new java.awt.Font("Tahoma", 1, 10)); // NOI18N
        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {

            }
        ));
        jScrollPane2.setViewportView(jTable1);

        jPanel1.add(jScrollPane2);
        jScrollPane2.setBounds(30, 50, 820, 340);

        jLabel9.setFont(new java.awt.Font("Times New Roman", 1, 21)); // NOI18N
        jLabel9.setText("System Details");
        jPanel1.add(jLabel9);
        jLabel9.setBounds(370, 10, 150, 30);

        jComboBox1.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "All", "Enabled", "Disabled" }));
        jPanel1.add(jComboBox1);
        jComboBox1.setBounds(30, 430, 120, 30);

        jLabel2.setFont(new java.awt.Font("DejaVu Sans", 1, 13)); // NOI18N
        jLabel2.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)), "Fetch Parameters"));
        jPanel1.add(jLabel2);
        jLabel2.setBounds(20, 410, 830, 60);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 864, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 476, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 2, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton4ActionPerformed
       this.setVisible(false);
      
        // TODO add your handling code here:
    }//GEN-LAST:event_jButton4ActionPerformed

    private void jButton5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton5ActionPerformed
   
    if(jComboBox1.getSelectedIndex()==1){
    query="SELECT * FROM poll_centers where status=0  ORDER BY id DESC";
    }else if(jComboBox1.getSelectedIndex()==2){
     query="SELECT * FROM poll_centers where status=1 ORDER BY id DESC";
    }else{
    query="SELECT * FROM poll_centers ORDER BY id DESC";
     }
    fetch(query);

     
        // TODO add your handling code here:
    }//GEN-LAST:event_jButton5ActionPerformed

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
            java.util.logging.Logger.getLogger(LocHis.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(LocHis.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(LocHis.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(LocHis.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new LocHis().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton4;
    private javax.swing.JButton jButton5;
    private javax.swing.JComboBox jComboBox1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JTable jTable1;
    // End of variables declaration//GEN-END:variables
void fetch(String query){
    System.out.println("query "+query);
    j=0;
     dataSet = new DefaultTableModel();
        dataSet.addColumn("S/N");
        dataSet.addColumn("Poll ID");
        dataSet.addColumn("State");
        dataSet.addColumn("Local Govt");
        dataSet.addColumn("Address");
            dataSet.addColumn("Reg Date");
        dataSet.addColumn("Add by");
         dataSet.addColumn("Status");
  try {
         dbcon.rs = dbcon.st.executeQuery(query);
           while (dbcon.rs.next()) { 
               Object[] data = new Object[]{++j,dbcon.rs.getString("pollid"),dbcon.rs.getString("state"),
               dbcon.rs.getString("localgovt"),dbcon.rs.getString("location"),dbcon.rs.getString("regdate"),
               dbcon.rs.getString("adminid"),dbcon.rs.getString("status"),};
                dataSet.addRow(data);
            }
           jTable1.setModel(dataSet); 
           if(dataSet.getRowCount()==0){
           JOptionPane.showMessageDialog(rootPane, "No record within Interval for "+jComboBox1.getSelectedItem().toString());
           }
        } catch (Exception e) {
            e.printStackTrace();
     JOptionPane.showMessageDialog(rootPane, "An Error occur while fecthing information!!!");
    }
          
}
       
}
