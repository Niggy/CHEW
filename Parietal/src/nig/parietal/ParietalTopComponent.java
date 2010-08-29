/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package nig.parietal;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Logger;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;
import org.openide.util.Exceptions;
import org.openide.util.NbBundle;
import org.openide.windows.TopComponent;
import org.openide.windows.WindowManager;
//import org.openide.util.ImageUtilities;
import org.netbeans.api.settings.ConvertAsProperties;
import nig.frontal.*;
import org.openide.awt.StatusDisplayer;

/**
 * Top component which displays something.
 */
@ConvertAsProperties(dtd = "-//nig.parietal//Parietal//EN",
autostore = false)
public final class ParietalTopComponent extends TopComponent {

    private static ParietalTopComponent instance;
    /** path to the icon used by the component and its open action */
//    static final String ICON_PATH = "SET/PATH/TO/ICON/HERE";
    private static final String PREFERRED_ID = "ParietalTopComponent";
    private Connection con;
    private ParietalInfo temp;
    private Object[][] o;
    private Reaction reaction;
    private ArrayList<Reaction> l=null;
    private ArrayList<Plan> m;
    private Plan plan;
    private Frontal_RightTopComponent ftc2;

    public ParietalTopComponent() {
        initComponents();
        setName(NbBundle.getMessage(ParietalTopComponent.class, "CTL_ParietalTopComponent"));
        setToolTipText(NbBundle.getMessage(ParietalTopComponent.class, "HINT_ParietalTopComponent"));
//        setIcon(ImageUtilities.loadImage(ICON_PATH, true));

    }

    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc="Generated Code">
    private void initComponents() {

        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();

        setLayout(new java.awt.BorderLayout());

        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {},
                {},
                {},
                {}
            },
            new String [] {

            }
        ));
        jTable1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseReleased(java.awt.event.MouseEvent evt) {
                jTable1MouseReleased(evt);
            }
        });
        jScrollPane1.setViewportView(jTable1);

        add(jScrollPane1, java.awt.BorderLayout.CENTER);
    }// </editor-fold>

    private void jTable1MouseReleased(java.awt.event.MouseEvent evt) {
        // TODO add your handling code here:
       
        
       
            if (temp.getType().equals("Direction")){
                 JTable jt=(JTable)evt.getSource();
                int row=jt.getSelectedRow();
        Reaction r=l.get(row);

        FrontalTopComponent ftc=FrontalTopComponent.findInstance();
        if (!ftc.isOpened()){
        ftc.requestActive();
        ftc.setDisplayName("Left Frontal");
        ftc.open();
        ftc.fillStrategy(con);
        }
        ftc.setResponse(r.getId(),r.getResponse(), r.getDeficiency(), r.getEscResponse(), r.getEscDeficiency(),r.getEmotion_id());
        }
            else if(temp.getType().equals("Strategy")){
                 JTable jt=(JTable)evt.getSource();
            int row=jt.getSelectedRow();
            Plan p=m.get(row);
            ftc2=Frontal_RightTopComponent.findInstance();
if (!ftc2.isOpened())ftc2.close();
            
            
        ftc2.open();
            ftc2.setDisplayName("Right Frontal - "+p.getDeficiency());
            ftc2.requestActive();
            ftc2.setConnect(this.con,p.getDeficiency(),p.getEmotion_id(),p.getDirection(),p.getAction_id(),p.getEmotion());
            StatusDisplayer.getDefault().setStatusText(p.getDeficiency());
            }
        
    }

    // Variables declaration - do not modify
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable jTable1;
    // End of variables declaration
    /**
     * Gets default instance. Do not use directly: reserved for *.settings files only,
     * i.e. deserialization routines; otherwise you could get a non-deserialized instance.
     * To obtain the singleton instance, use {@link #findInstance}.
     */
    public static synchronized ParietalTopComponent getDefault() {
        if (instance == null) {
            instance = new ParietalTopComponent();
        }
        return instance;
    }

    /**
     * Obtain the ParietalTopComponent instance. Never call {@link #getDefault} directly!
     */
    public static synchronized ParietalTopComponent findInstance() {
        TopComponent win = WindowManager.getDefault().findTopComponent(PREFERRED_ID);
        if (win == null) {
            Logger.getLogger(ParietalTopComponent.class.getName()).warning(
                    "Cannot find " + PREFERRED_ID + " component. It will not be located properly in the window system.");
            return getDefault();
        }
        if (win instanceof ParietalTopComponent) {
            return (ParietalTopComponent) win;
        }
        Logger.getLogger(ParietalTopComponent.class.getName()).warning(
                "There seem to be multiple components with the '" + PREFERRED_ID
                + "' ID. That is a potential source of errors and unexpected behavior.");
        return getDefault();
    }

    @Override
    public int getPersistenceType() {
        return TopComponent.PERSISTENCE_ALWAYS;
    }

    @Override
    public void componentOpened() {
        // TODO add custom code on component opening
        //Statement stmt;

if (temp.getType().equals("Direction")){
        try {
            Statement stmt = this.con.createStatement();

            ResultSet result = stmt.executeQuery("select e.id,e.Emotion,e.A,r.R,r.C,r.id as response_id,r.def as deficiency,a.Need,a.def as neg_need from Approach_E e,Response r,Action a where a.id=r.id and e.A=r.D and r.E=e.id and r.P="+temp.getTemp());
            result.last();
            int objectLen=result.getRow();
            result.beforeFirst();
            o=new Object[objectLen][3];
            int i=0;
            String[] cols={"Response","Need","Deficiency"};
            l=new ArrayList<Reaction>();
            while (result.next()){
                reaction=new Reaction();
                reaction.setId(result.getInt("response_id"));
                reaction.setEmotion(result.getString("Emotion"));
                reaction.setResponse(result.getString("R"));
                reaction.setDeficiency(result.getString("deficiency"));
                reaction.setEscResponse(result.getString("Need"));
                reaction.setEscDeficiency(result.getString("neg_need"));
                reaction.setEmotion_id(result.getInt("id"));
                reaction.setType(temp.getType());
                l.add(reaction);

                o[i][0]=reaction.getEmotion();
                o[i][1]=reaction.getEscResponse();
                o[i][2]=reaction.getEscDeficiency();

                i++;

            }
 jTable1.setModel(new DefaultTableModel(o,cols));

        } catch (Exception ex) {
            Exceptions.printStackTrace(ex);
        }
}
else{
             l=null;
    try {
            Statement stmt = this.con.createStatement();
String query="select a.id as action_id,a.Need,s.strategy as Strategy,d.response as Polar,a.D as direction,dir.D,a.def,e.Emotion,e.id,p.Concern "+
"from Decision d,Action a,Strategy s,Direction dir,Approach_E e,Approach_P p,Control i "+
"where a.id=d.idea_id and a.D=dir.id and a.A_P=p.id and e.id=a.A_E and p.D=dir.id and p.C=i.id and d.strategy=s.id "+
"and s.id="+temp.getTemp();
            ResultSet result = stmt.executeQuery(query);
            result.last();
            int objectLen=result.getRow();
            result.beforeFirst();
            o=new Object[objectLen][7];
            int i=0;
            String[] cols={"Need","Strategy","Polar","Direction","Deficiency","Emotion","Concern"};
            m=new ArrayList<Plan>();
            while (result.next()){
                plan=new Plan();
                plan.setDeficiency(result.getString("Need"));
                plan.setEmotion_id(result.getInt("id"));
                plan.setDirection(result.getInt("direction"));
                plan.setAction_id(result.getInt("action_id"));
                plan.setEmotion(result.getString("Emotion"));
                m.add(plan);

                o[i][0]=result.getString("Need");
                o[i][1]=result.getString("Strategy");
                o[i][2]=result.getString("Polar");
                o[i][3]=result.getString("D");
                o[i][4]=result.getString("def");
                o[i][5]=result.getString("Emotion");
                o[i][6]=result.getString("Concern");

                i++;

            }
 jTable1.setModel(new DefaultTableModel(o,cols));

        } catch (Exception ex) {
            Exceptions.printStackTrace(ex);
        }

}

        }

    @Override
    public void componentClosed() {
        // TODO add custom code on component closing
    }

    void writeProperties(java.util.Properties p) {
        // better to version settings since initial version as advocated at
        // http://wiki.apidesign.org/wiki/PropertyFiles
        p.setProperty("version", "1.0");
        // TODO store your settings
    }

    Object readProperties(java.util.Properties p) {
        if (instance == null) {
            instance = this;
        }
        instance.readPropertiesImpl(p);
        return instance;
    }

    private void readPropertiesImpl(java.util.Properties p) {
        String version = p.getProperty("version");
        // TODO read your settings according to their version
    }

    @Override
    protected String preferredID() {
        return PREFERRED_ID;
    }
    public void passTemporal(Connection con,ParietalInfo temp){
        this.con=con;
        this.temp=temp;
    }
}