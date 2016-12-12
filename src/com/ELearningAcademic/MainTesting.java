//package com.ELearningAcademic;
//
//import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
//import org.springframework.security.authentication.encoding.ShaPasswordEncoder;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//
//import java.util.Random;
//
///**
// * Created by root on 12/12/16.
// */
//public class MainTesting {
//
//    public static String saltGenerate( int length ) {
//        Random random = new Random();
//        StringBuilder stringBuilder = new StringBuilder();
//        for ( int i = 0; i < length; i++ ) {
//            stringBuilder.append( ( char )( 'a' + random.nextInt( 26 ) ) );
//        }
//        return stringBuilder.toString();
//    }
//    public static void main( String[] args ) {
//
//
//        int count;
//        String password = "sdfsdfsdfsdfsdfsd";
//        System.out.println("Origin password : " + password);
//        System.out.println("---------------------------------- BCrypt ----------------------------------------");
//        count = 0;
//        while ( count < 10 ) {
//
//            BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
//            String hashPassword = bCryptPasswordEncoder.encode( password );
//            System.out.printf( "Hashpassword[%d] by Bcrypt : "+ hashPassword + "\n", count );
//            count++;
//        }
//        System.out.println("---------------------------------- SHA ----------------------------------------");
//        count = 0;
//        while ( count < 10 ) {
//
//            String salt = saltGenerate( password.length() );
//            ShaPasswordEncoder shaPasswordEncoder = new ShaPasswordEncoder();
//            String hashPassword = shaPasswordEncoder.encodePassword( password, salt );
//            System.out.printf( "Hashpassword[%d] by SHA with random salt \"%s\" : "+ hashPassword + "\n", count, salt );
//            count++;
//        }
//        System.out.println("---------------------------------- MD5 ----------------------------------------");
//        count = 0;
//        while ( count < 10 ) {
//
//            String salt = saltGenerate( password.length() );
//            Md5PasswordEncoder md5PasswordEncoder = new Md5PasswordEncoder();
//            String hashPassword = md5PasswordEncoder.encodePassword( password, salt );
//            System.out.printf( "Hashpassword[%d] by MD5 with random salt \"%s\" : "+ hashPassword + "\n", count, salt );
//            count++;
//        }
//    }
//}
