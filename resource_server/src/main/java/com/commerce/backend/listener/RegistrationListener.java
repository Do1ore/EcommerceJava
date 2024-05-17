package com.commerce.backend.listener;

import com.commerce.backend.constants.MailConstants;
import com.commerce.backend.model.event.OnRegistrationCompleteEvent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;


@Component
public class RegistrationListener implements ApplicationListener<OnRegistrationCompleteEvent> {

    private final JavaMailSender mailSender;

    private final MailConstants mailConstants;

    public RegistrationListener(JavaMailSender mailSender, MailConstants mailConstants) {
        this.mailSender = mailSender;
        this.mailConstants = mailConstants;
    }

    @Override
    public void onApplicationEvent(OnRegistrationCompleteEvent event) {
        this.confirmRegistration(event);
    }

    private void confirmRegistration(OnRegistrationCompleteEvent event) {
        String recipientAddress = event.getUser().getEmail();
        String subject = "🛍️ ECommerce - Подтверждение регистрации";
        String confirmationUrl = mailConstants.getHostAddress() + "/registrationConfirm?token=" + event.getToken();
        String message = "Привет ,\n\nПожалуйста, подтвердите свою почту, перейдя по ссылке. ";

        SimpleMailMessage email = new SimpleMailMessage();
        email.setTo(recipientAddress);
        email.setSubject(subject);
        email.setText(message + "\n\n" + confirmationUrl + "\n\n\n ECommerce");
        mailSender.send(email);
    }
}