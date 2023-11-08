package com.bcbsm.springjwt.controllers;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin(origins = "*", maxAge = 3600)
public class EmailController {

//	@Autowired
//	private EmailService emailService;

//	private static final Logger logger = LoggerFactory.getLogger(EmailController.class);

	@RequestMapping("/welcome")
	public String welcome() {
		return "Hello";
	}

//	@RequestMapping(value = "/sendemail", method = RequestMethod.POST)
//	public ResponseEntity<?> sendEmail(@RequestBody Email mailDetails) {
//		try {
//			Email email = new Email();
//			email.setMailFrom(mailDetails.getMailFrom());
//			email.setMailTo(mailDetails.getMailTo());
//			email.setMailCc(mailDetails.getMailCc());
//			email.setMailBcc(mailDetails.getMailBcc());
//			email.setMailSubject(mailDetails.getMailSubject());
//			email.setMailContent(mailDetails.getMailContent());
//			email.setAttachments(mailDetails.getAttachments());
////			emailService.save(email);
//			return ResponseEntity.ok(HttpStatus.OK);
//		} catch (Exception ex) {
//			ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(HttpStatus.BAD_REQUEST);
//			logger.error("Unauthorized error: {}", ex.getMessage());
//			ex.printStackTrace();
//		}
//		return null;
//	}

//	@GetMapping(value = "/listOfUsers")
//	public List<Email> getEmailList(@PathVariable List<Integer> ids) {
//		return emailService.findAllById(ids);
//	}

}
