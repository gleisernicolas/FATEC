package layouts;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;

public class LayoutPanel {
	
	public static void Panel(){
	JFrame frame = new JFrame();
	JPanel panel = new JPanel();
	
	for (int i=0;i<2;i++) {
		JButton btn = new JButton("Botao");
		btn.setSize(300,300);
		panel.add(btn);
	}
	
	frame.getContentPane().add(panel);
	frame.setSize(450, 70);
	frame.setVisible(true);
	}
}

