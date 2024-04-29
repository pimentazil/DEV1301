using System.Linq;

namespace DEV1301.DAL
{
    public class UsuarioDAL
    {
        public void CadastarUsuario(tabUsuario objUsu)
        {
            using (DEV1301Entities ctx = new DEV1301Entities())
            {
                ctx.tabUsuarios.Add(objUsu);
                ctx.SaveChanges();
            }
        }

        public tabUsuario ConsultarUsuario(string usuario, string senha)
        {
            using (DEV1301Entities ctx = new DEV1301Entities())
            {
                return ctx.tabUsuarios.Where(x => x.email == usuario && x.senha == senha).FirstOrDefault();
            }
        }
    }
}