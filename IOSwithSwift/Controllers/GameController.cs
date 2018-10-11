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

#region Namespaces
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text.RegularExpressions;
using System.Web.Http;
#endregion


namespace IOSwithSwift.Controllers
{
    public class GameController : ApiController
    {

        /// <summary>
        /// This method is to get the games types.
        /// </summary>
        /// <returns>Returns Games Type List.
        /// </returns>
        [HttpGet]
        public List<GameType> GetGameTypes()
        {
            List<GameType> types = new List<GameType>();

            using (SIMSGamesEntities context = new SIMSGamesEntities())
            {
                context.Configuration.LazyLoadingEnabled = false;
                context.Configuration.ProxyCreationEnabled = false;
                types = (from u in context.GameTypes
                         select u).ToList();
            }

            if (types == null)
            {
                return null;
            }
            return types;
        }

        /// <summary>
        /// This method will return the Random word based on the Paramter i.e. word with Missing Letters and Jambuled.
        /// </summary>
        /// <param name="GameType">Parameter value can be M (Missing Letters) or J (Jambuled).</param>
        /// <returns>Return the a string.</returns>
        [HttpGet]
        public WordsList GetRandomWord(string GameType)
        {
            int recmaxcount = 100; // this need to assign from database.
            WordsList word = new WordsList();
            Random rand = new Random();
            int toSkip = rand.Next(0, recmaxcount);

            using (SIMSGamesEntities context = new SIMSGamesEntities())
            {
                context.Configuration.LazyLoadingEnabled = false;
                context.Configuration.ProxyCreationEnabled = false;
                word = (from u in context.WordsLists
                        select u).OrderBy(x => x.WordString).Skip(toSkip).Take(1).FirstOrDefault();
            }

            //If the words list is empty then it will return null object.
            if (word == null)
            {
                return null;
            }

            if (GameType == "J") // for getting Jambuled word.
            {
                word.WordStringChar = JumbleWord(word.WordString);
            }
            else if (GameType == "M") // it will return the word with Missing letters.
            {
                word.WordStringChar = MissingLetters(word.WordString);
            }

            word.WordString = word.WordString.ToUpper();
            word.WordStringChar = word.WordStringChar.ToUpper();

            return word;
        }

        [HttpGet]
        public List<PastHistory> GetPasHistory(string userid)
        {
            List<PastHistory> history = new List<PastHistory>();

            using (SIMSGamesEntities context = new SIMSGamesEntities())
            {
                context.Configuration.LazyLoadingEnabled = false;
                context.Configuration.ProxyCreationEnabled = false;
                history = (from u in context.PastHistories
                           orderby u.Datetime descending
                           select u).ToList();
            }

            if (history == null)
            {
                return null;
            }

            return history;
        }

        /// <summary>
        /// This method will jumble the word.
        /// </summary>
        /// <param name="word">String need to provide.</param>
        /// <returns>Return the Jumbled string.</returns>
        static private string JumbleWord(string word)
        {
            char[] ans = new char[word.Length];
            string jWord = String.Empty;
            for (int count = 0; count <= word.Length - 1; count++)
            {
                ans[count] = word[count];
            }
            Random rd = new Random();
            for (int count = 0; count <= word.Length - 1; count++)
            {
                int index = rd.Next(0, word.Length) % word.Length;
                char temp = ans[count];
                ans[count] = ans[index];
                ans[index] = temp;
            }
            for (int count = 0; count <= word.Length - 1; count++)
            {
                jWord = jWord + ans[count];
            }
            return jWord;
        }

        /// <summary>
        /// This method will miss random charactors.
        /// </summary>
        /// <param name="word">Word need to provide as string.</param>
        /// <returns>Returned the word with missing letters.</returns>
        static private string MissingLetters(string word)
        {
            string temp = String.Empty;
            Random rd = new Random();
            int index = 0;
            int repeatCount = 2;
            if (word.Length >= 3 && word.Length <= 10)
            {
                if (word.Length >= 3 && word.Length <= 7)
                {
                    repeatCount = 2;
                }
                else if (word.Length >= 8 && word.Length <= 10)
                {
                    repeatCount = 4;
                }

                for (int i = 0; i < repeatCount; i++)
                {
                    index = rd.Next(0, word.Length) % word.Length;
                    if (index <= word.Length && index < word.Length)
                    {
                        temp = word.Substring(index, 1);
                        var regex = new Regex(Regex.Escape(temp));
                        word = regex.Replace(word, "_", 1);
                    }
                }
            }

            return word;
        }

        [HttpGet]
        public string InsertGameHistory(string userId, string origialWord, string displayString, string gameType)
        {
            string result = "Fail";
            PastHistory game = new PastHistory();
            game.GameId = System.Guid.NewGuid().ToString();
            game.UserId = userId;
            game.Datetime = System.DateTime.Now;

            game.ActualString = origialWord;
            game.DisplayString = displayString;
            game.GameTypeId = gameType;

            game.TempDateTime = System.DateTime.Today.ToShortDateString();

            if (origialWord.Trim().ToLower().Equals(displayString.Trim().ToLower()))
            {
                game.Score = 10;
                game.GameStatus = "Success";
            }
            else
            {
                game.Score = 0;
                game.GameStatus = "Fail";
            }

            //insert the record into the database
            using (SIMSGamesEntities context = new SIMSGamesEntities())
            {
                context.Configuration.LazyLoadingEnabled = false;
                context.Configuration.ProxyCreationEnabled = false;
                context.PastHistories.Add(game);
                context.SaveChanges();
                result = "Success";
            }
            return game.GameStatus;
        }
    }
}
