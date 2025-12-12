namespace SweeticeUI
{
    partial class NuevoCliente
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            guardarCliente = new Button();
            txtEmail = new TextBox();
            txtTelefono = new TextBox();
            txtApellido = new TextBox();
            txtNombre = new TextBox();
            nombre = new Label();
            apellido = new Label();
            telefoni = new Label();
            email = new Label();
            instruccion = new Label();
            SuspendLayout();
            // 
            // guardarCliente
            // 
            guardarCliente.Location = new Point(389, 285);
            guardarCliente.Name = "guardarCliente";
            guardarCliente.Size = new Size(94, 29);
            guardarCliente.TabIndex = 0;
            guardarCliente.Text = "Guardar";
            guardarCliente.UseVisualStyleBackColor = true;
            guardarCliente.Click += button1_Click;
            // 
            // txtEmail
            // 
            txtEmail.Location = new Point(358, 222);
            txtEmail.Name = "txtEmail";
            txtEmail.Size = new Size(125, 27);
            txtEmail.TabIndex = 1;
            // 
            // txtTelefono
            // 
            txtTelefono.Location = new Point(358, 189);
            txtTelefono.Name = "txtTelefono";
            txtTelefono.Size = new Size(125, 27);
            txtTelefono.TabIndex = 2;
            // 
            // txtApellido
            // 
            txtApellido.Location = new Point(358, 156);
            txtApellido.Name = "txtApellido";
            txtApellido.Size = new Size(125, 27);
            txtApellido.TabIndex = 3;
            // 
            // txtNombre
            // 
            txtNombre.Location = new Point(358, 122);
            txtNombre.Name = "txtNombre";
            txtNombre.Size = new Size(125, 27);
            txtNombre.TabIndex = 4;
            // 
            // nombre
            // 
            nombre.AutoSize = true;
            nombre.Location = new Point(260, 125);
            nombre.Name = "nombre";
            nombre.Size = new Size(67, 20);
            nombre.TabIndex = 5;
            nombre.Text = "Nombre:";
            nombre.Click += label1_Click;
            // 
            // apellido
            // 
            apellido.AutoSize = true;
            apellido.Location = new Point(260, 159);
            apellido.Name = "apellido";
            apellido.Size = new Size(73, 20);
            apellido.TabIndex = 6;
            apellido.Text = "Apellido: ";
            // 
            // telefoni
            // 
            telefoni.AutoSize = true;
            telefoni.Location = new Point(260, 192);
            telefoni.Name = "telefoni";
            telefoni.Size = new Size(70, 20);
            telefoni.TabIndex = 7;
            telefoni.Text = "Telefono:";
            // 
            // email
            // 
            email.AutoSize = true;
            email.Location = new Point(260, 225);
            email.Name = "email";
            email.Size = new Size(53, 20);
            email.TabIndex = 8;
            email.Text = "Email: ";
            // 
            // instruccion
            // 
            instruccion.AutoSize = true;
            instruccion.Location = new Point(260, 66);
            instruccion.Name = "instruccion";
            instruccion.Size = new Size(147, 20);
            instruccion.TabIndex = 9;
            instruccion.Text = "DATOS DEL CLIENTE:";
            // 
            // NuevoCliente
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(776, 449);
            Controls.Add(instruccion);
            Controls.Add(email);
            Controls.Add(telefoni);
            Controls.Add(apellido);
            Controls.Add(nombre);
            Controls.Add(txtNombre);
            Controls.Add(txtApellido);
            Controls.Add(txtTelefono);
            Controls.Add(txtEmail);
            Controls.Add(guardarCliente);
            Name = "NuevoCliente";
            Text = "NuevoCliente";
            Load += Form1_Load;
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Button guardarCliente;
        private TextBox txtEmail;
        private TextBox txtTelefono;
        private TextBox txtApellido;
        private TextBox txtNombre;
        private Label nombre;
        private Label apellido;
        private Label telefoni;
        private Label email;
        private Label instruccion;
    }
}
