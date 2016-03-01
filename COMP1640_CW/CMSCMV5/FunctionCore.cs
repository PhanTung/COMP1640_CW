using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;

public class CoreFunction
{
    /// <summary>
    /// THANHNX: ham convert datetime -> epoch Time
    /// </summary>
    /// <param name="date">Thoi gian can convert</param>
    /// <returns>epocht Time</returns>
    public static Int64 FomatEpochTime(DateTime? date)
    {
        DateTime datelocal = DateTime.Now;
        if (date != null)
        {
            datelocal = (DateTime)date;
        }
        return (Int64)(datelocal.ToUniversalTime() - new DateTime(1970, 1, 1)).TotalSeconds;
    }

    /// <summary>
    /// THANHNX: ham convert epochTime -> datetime
    /// </summary>
    /// <param name="epochTime">epochtime can convert</param>
    /// <returns>date time</returns>
    public static DateTime FomatLocalTime(Int64 epochTime)
    {
        return new DateTime(1970, 1, 1).AddSeconds(epochTime).ToLocalTime();
    }

    /// <summary>
    /// THANHNX: ham bo dau
    /// </summary>
    /// <param name="s">chuoi can bo dau</param>
    /// <returns>chuoi da duoc bo dau</returns>
    public static string ConvertToUnSign(string s)
    {
        Regex regex = new Regex("\\p{IsCombiningDiacriticalMarks}+");
        string temp = s.Normalize(NormalizationForm.FormD);
        return regex.Replace(temp, String.Empty).Replace('\u0111', 'd').Replace('\u0110', 'D').Replace('&','-').Replace(' ', '-').ToLower();
    }

    /// <summary>
    /// THANHNX: ham ma hoa chuoi thanh md5
    /// </summary>
    /// <param name="input">chuoi can ma hoa</param>
    /// <returns>chuoi da duoc ma hoa</returns>
    public static string GetMd5Hash(string input)
    {
        using (MD5 md5Hash = MD5.Create())
        {
            // Convert the input string to a byte array and compute the hash. 
            byte[] data = md5Hash.ComputeHash(Encoding.UTF8.GetBytes(input));

            // Create a new Stringbuilder to collect the bytes 
            // and create a string.
            StringBuilder sBuilder = new StringBuilder();

            // Loop through each byte of the hashed data  
            // and format each one as a hexadecimal string. 
            for (int i = 0; i < data.Length; i++)
            {
                sBuilder.Append(data[i].ToString("x2"));
            }

            // Return the hexadecimal string. 
            return sBuilder.ToString();
        }
    }

}