import twilio
from twilio.rest import TwilioRestClient
import os

TWILIO_ACCOUNT_SID=os.environ.get("TWILIO_ACCOUNT_SID")
TWILIO_AUTH_TOKEN=os.environ.get("TWILIO_AUTH_TOKEN")
TWILIO_NUMBER=os.environ.get("TWILIO_NUMBER")


def send_text_message(phone):
 
    print 'Sending'

    try:
        client = TwilioRestClient(TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN)

        message = client.messages.create(
            body="Great!!",
            to=phone,
            from_=TWILIO_NUMBER
        )
    except twilio.TwilioRestException as e:
        print e


def convert_to_e164(raw_phone):
    
    if not raw_phone:
        return
    if raw_phone[0] == '+':
         parse_type = None
    else:
        
        parse_type = "IN"

    phone_representation = phonenumbers.parse(raw_phone,
                                            parse_type)

    return phonenumbers.format_number(phone_representation,
                        phonenumbers.PhoneNumberFormat.E164)

raw_phone_number = raw_input("Enter a phone number  ")

phone_number = convert_to_e164(raw_phone_number)

send_text_message(phone_number)