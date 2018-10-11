using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using IOSwithSwift;

namespace IOSwithSwift.Controllers
{
    public class UserRegistrationsController : ApiController
    {
        private wordgameEntities db = new wordgameEntities();

        // GET: api/UserRegistrations
        public IQueryable<UserRegistration> GetUserRegistrations()
        {
            return db.UserRegistrations;
        }

        // GET: api/UserRegistrations/5
        [ResponseType(typeof(UserRegistration))]
        public IHttpActionResult GetUserRegistration(string id)
        {
            UserRegistration user = null;
            using (wordgameEntities context = new wordgameEntities())
            {
                context.Configuration.LazyLoadingEnabled = false;
                context.Configuration.ProxyCreationEnabled = false;
                user = (from u in context.UserRegistrations  where u.UserId == id select u).FirstOrDefault();
            }

            //UserRegistration userRegistration = db.UserRegistrations.Find(id);
            if (user == null)
            {
                return NotFound();
            }

            return Ok(user);
        }

        // PUT: api/UserRegistrations/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutUserRegistration(string id, UserRegistration userRegistration)
        {
            using (wordgameEntities context = new wordgameEntities())
            {
                context.Configuration.LazyLoadingEnabled = false;
                context.Configuration.ProxyCreationEnabled = false;
                context.Entry(userRegistration).State = EntityState.Modified;
                context.UserRegistrations.Attach(userRegistration);
            }

            

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!UserRegistrationExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST: api/UserRegistrations
        [ResponseType(typeof(UserRegistration))]
        public IHttpActionResult PostUserRegistration(UserRegistration userRegistration)
        {
            using (wordgameEntities context = new wordgameEntities())
            {
                context.Configuration.LazyLoadingEnabled = false;
                context.Configuration.ProxyCreationEnabled = false;
                context.UserRegistrations.Add(userRegistration);
            }

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateException)
            {
                if (UserRegistrationExists(userRegistration.Email))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtRoute("DefaultApi", new { id = userRegistration.UserId }, userRegistration);
        }

        // DELETE: api/UserRegistrations/5
        [ResponseType(typeof(UserRegistration))]
        public IHttpActionResult DeleteUserRegistration(string id)
        {
            UserRegistration userRegistration = db.UserRegistrations.Find(id);
            if (userRegistration == null)
            {
                return NotFound();
            }

            db.UserRegistrations.Remove(userRegistration);
            db.SaveChanges();

            return Ok(userRegistration);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool UserRegistrationExists(string email)
        {
            return db.UserRegistrations.Count(e => e.Email == email) > 0;
        }
    }
}