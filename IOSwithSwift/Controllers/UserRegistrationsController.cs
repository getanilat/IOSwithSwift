#region Header Info
//-----------------------------------------------------------------------
// <copyright file="BusinessBase.cs" company="Excel Soft India Pvt. Ltd.">
//  Copyright (c) Excel Soft India Pvt. Ltd. All rights reserved. Website: http://www.excelindia.com.
// </copyright>
// <summary>This is the class for all Game ralated methods will be there.</summary>
// <createdby>Anil Karanam</createdby> 
// <createddate>06-Oct-2018</createddate>
// <revisionhistory>
//  <revision modifiedby='' modifieddate='' revisionno=''></revision>
//  <revision modifiedby='Anil Karanam' modifieddate='' revisionno=''> 
//</revision> 
// </revisionhistory>
//-----------------------------------------------------------------------
#endregion

#region Name Spaces
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
#endregion

namespace IOSwithSwift.Controllers
{
    public class UserRegistrationsController : ApiController
    {

        /// <summary>
        /// this method will fetch the user list.
        /// </summary>
        /// <returns>Returned the User List.</returns>
        [HttpGet]
        public List<UserRegistration> GetUsers()
        {
            List<UserRegistration> user = new List<UserRegistration>();

            using (SIMSGamesEntities context = new SIMSGamesEntities())
            {
                context.Configuration.LazyLoadingEnabled = false;
                context.Configuration.ProxyCreationEnabled = false;
                user = (from u in context.UserRegistrations
                        select u).ToList();
            }

            if (user == null)
            {
                return null;
            }

            return user;
        }

        /// <summary>
        /// This method is for creating the new users /registrations.
        /// </summary>
        /// <param name="user">User Object need to send with all values.</param>
        /// <returns>Return the Success / Failure message.</returns>
        [HttpPost]
        public string NewUserRegiration(UserRegistration user)
        {
            string result = string.Empty;
            using (SIMSGamesEntities context = new SIMSGamesEntities())
            {
                UserRegistration tempuser = (from u in context.UserRegistrations
                                             where u.Email == user.Email
                                             select u).FirstOrDefault();

                if (tempuser == null)
                {
                    context.Configuration.LazyLoadingEnabled = false;
                    context.Configuration.ProxyCreationEnabled = false;
                    user.UserId = System.Guid.NewGuid().ToString();
                    context.UserRegistrations.Add(user);
                    context.SaveChanges();
                    result = "User Registered Successfully.";
                }
                else
                {
                    result = "User alredy exist with Email ID.";
                }
            }
            return result;
        }

        /// <summary>
        /// This is for registrating the new users.
        /// </summary>
        /// <param name="Email">Enter Email id.</param>
        /// <param name="Name">Full Name of User.</param>
        /// <param name="Password">Password which helps to login into the application.</param>
        /// <returns>Return user object.</returns>
        [HttpGet]
        public UserRegistration UserRegistration(string Email, string Name, string Password)
        {
            string result = string.Empty;
            UserRegistration user = null;
            

            using (SIMSGamesEntities context = new SIMSGamesEntities())
            {
                UserRegistration tempuser = (from u in context.UserRegistrations
                                             where u.Email == Email
                                             select u).FirstOrDefault();

                if (tempuser == null)
                {
                    user = new UserRegistration();
                    user.UserId = System.Guid.NewGuid().ToString();
                    user.Email = Email;
                    user.FullName = Name;
                    user.Password = Password;
                    user.IsActive = true;

                    context.Configuration.LazyLoadingEnabled = false;
                    context.Configuration.ProxyCreationEnabled = false;
                    
                    context.UserRegistrations.Add(user);
                    context.SaveChanges();
                    result = "User Registered Successfully.";
                }
                else
                {
                    result = "User alredy exist with Email ID.";
                }
            }
            return user;
        }

        /// <summary>
        /// Update the User profile.
        /// </summary>
        /// <param name="user">User Object need to pass.</param>
        /// <returns>Returned the message.</returns>
        [HttpPost]
        public string UpdateUserProfile(UserRegistration user)
        {
            string result = string.Empty;
            using (SIMSGamesEntities context = new SIMSGamesEntities())
            {
                UserRegistration tempuser = (from u in context.UserRegistrations
                                             where u.Email == user.Email
                                             select u).FirstOrDefault();

                if (tempuser == null)
                {
                    context.Configuration.LazyLoadingEnabled = false;
                    context.Configuration.ProxyCreationEnabled = false;
                    context.UserRegistrations.Attach(user);
                    context.Entry(user).State = EntityState.Modified;
                    context.SaveChanges();
                    result = "User updated Successfully.";
                }
                else
                {
                    result = "User alredy exist with Email ID.";
                }
            }
            return result;
        }

        /// <summary>
        /// This method is for deleting the user.
        /// </summary>
        /// <param name="id">User Id need to pass.</param>
        /// <returns>Return the message.</returns>
        [HttpGet]
        public string DeleteUser(string id)
        {
            string result = string.Empty;
            using (SIMSGamesEntities context = new SIMSGamesEntities())
            {
                UserRegistration tempuser = (from u in context.UserRegistrations
                                             where u.UserId == id
                                             select u).FirstOrDefault();

                if (tempuser == null)
                {
                    context.Configuration.LazyLoadingEnabled = false;
                    context.Configuration.ProxyCreationEnabled = false;
                    
                    context.UserRegistrations.Remove(tempuser);
                    context.SaveChanges();
                    result = "User deleted successfully.";
                }
                else
                {
                    result = "User Not Found.";
                }
            }
            return result;
        }

        /// <summary>
        /// User Login is for checking the user creditionals and valiate.
        /// </summary>
        /// <param name="email">User Email value.</param>
        /// <param name="password">User Password.</param>
        /// <returns>Return the User object if validation success otherwise null.</returns>
        /// 
        [HttpGet]
        public UserRegistration UserLogin(string email, string password)
        {
            UserRegistration user = new UserRegistration();

            using (SIMSGamesEntities context = new SIMSGamesEntities())
            {
                context.Configuration.LazyLoadingEnabled = false;
                context.Configuration.ProxyCreationEnabled = false;
                user = (from u in context.UserRegistrations
                        where u.Email == email && u.Password == password
                        select u).FirstOrDefault();
            }

            if (user == null)
            {
                return null;
            }

            return user;
        }

        /// <summary>
        /// This method will return the User Profile.
        /// </summary>
        /// <param name="userid">User Id.</param>
        /// <returns>Returns the User Object.</returns>
        [HttpGet]
        public UserRegistration GetUserProfile(string userid)
        {
            UserRegistration user = new UserRegistration();

            using (SIMSGamesEntities context = new SIMSGamesEntities())
            {
                context.Configuration.LazyLoadingEnabled = false;
                context.Configuration.ProxyCreationEnabled = false;
                user = (from u in context.UserRegistrations
                        where u.UserId == userid
                        select u).FirstOrDefault();
            }

            if (user == null)
            {
                return null;
            }

            return user;
        }

    }
}