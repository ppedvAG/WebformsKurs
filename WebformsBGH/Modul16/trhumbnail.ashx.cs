using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Web;

namespace WebformsBGH.Modul16
{
    /// <summary>
    /// Zusammenfassungsbeschreibung für trhumbnail
    /// </summary>
    public class trhumbnail : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            var name = context.Request.QueryString[0];
            var img = new Bitmap(context.Server.MapPath("~/Modul16/bilder/" + name+".jpg"));
            var thumb = img.GetThumbnailImage(300, 200, null, IntPtr.Zero);
            img.Dispose();
            var stream = new MemoryStream();
            thumb.Save(stream, ImageFormat.Jpeg);
            Byte[] buffer;
            buffer = stream.GetBuffer();
            context.Response.ContentType = "image/jpg";
            context.Response.OutputStream.Write(buffer, 0, buffer.Length);
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}