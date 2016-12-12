package com.ELearningAcademic.config;

import com.ELearningAcademic.authentication.DBAuthenticationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import javax.sql.DataSource;

/**
 * Created by root on 12/11/16.
 */
@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private DBAuthenticationService dbAuthenticationService;

    @Autowired
    private DataSource dataSource;

    @Autowired
    public void configureGlobal( AuthenticationManagerBuilder authenticationManagerBuilder ) throws Exception {
        authenticationManagerBuilder
                .userDetailsService( dbAuthenticationService )
                .passwordEncoder( passwordEncoder() );
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    protected void configure( HttpSecurity httpSecurity ) throws Exception {

        httpSecurity.csrf().disable();

        httpSecurity.authorizeRequests().antMatchers("/account_info")
                .access("hasAnyRole('ROLE_EMPLOYEE','ROLE_MANAGER','ROLE_USER','ROLE_SUPPLIER')");
        httpSecurity.authorizeRequests().antMatchers("/create_product")
                .access("hasAnyRole('ROLE_MANAGER','ROLE_SUPPLIER')");
        httpSecurity.authorizeRequests().antMatchers("/order_list", "/order")
                .access("hasAnyRole('ROLE_EMPLOYEE','ROLE_MANAGER')");
        httpSecurity.authorizeRequests().antMatchers("/product_admin")
                .access("hasRole('ROLE_MANAGER')");

        httpSecurity.authorizeRequests().and().exceptionHandling().accessDeniedPage("/403");
        httpSecurity.authorizeRequests().and().formLogin()
                .loginProcessingUrl("/j_spring_security_check")
                .loginPage("/index")
                .defaultSuccessUrl("/index")
                .failureUrl("/intro")
                .usernameParameter("username")
                .passwordParameter("password")
                .and().logout().logoutUrl("/logout").logoutSuccessUrl("/index");
    }
}
