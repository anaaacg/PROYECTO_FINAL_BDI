using System;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace SweeticeUI
{
    public partial class NuevoCliente : Form
    {
        private string connectionString =
    "Server=Anita;Database=Sweetice;Trusted_Connection=True;";

        public NuevoCliente()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            // 1) Leer datos de las cajas de texto
            string nombre = txtNombre.Text.Trim();
            string apellido = txtApellido.Text.Trim();
            string telefonoTexto = txtTelefono.Text.Trim();
            string email = txtEmail.Text.Trim();

            // 2) Validaciones simples
            if (string.IsNullOrEmpty(nombre) || string.IsNullOrEmpty(apellido))
            {
                MessageBox.Show("Nombre y apellido son obligatorios.");
                return;
            }

            if (!int.TryParse(telefonoTexto, out int telefono))
            {
                MessageBox.Show("El teléfono debe ser un número.");
                return;
            }

            if (string.IsNullOrEmpty(email))
            {
                MessageBox.Show("El email no puede estar vacío.");
                return;
            }

            // 3) INSERT a la tabla Cliente
            string query = @"
        INSERT INTO Cliente (Nombre, Apellido, Telefono, Email, Fecha_Registro, Tipo_Cliente, Activo)
        VALUES (@Nombre, @Apellido, @Telefono, @Email, GETDATE(), 'Regular', 1);
    ";

            try
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@Nombre", nombre);
                    cmd.Parameters.AddWithValue("@Apellido", apellido);
                    cmd.Parameters.AddWithValue("@Telefono", telefono);
                    cmd.Parameters.AddWithValue("@Email", email);

                    con.Open();
                    cmd.ExecuteNonQuery();
                }

                MessageBox.Show("Cliente registrado correctamente.");

                // 4) Limpiar campos
                txtNombre.Text = "";
                txtApellido.Text = "";
                txtTelefono.Text = "";
                txtEmail.Text = "";
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al guardar: " + ex.Message);
            }
        }


        private void label1_Click(object sender, EventArgs e)
        {

        }
    }
}
