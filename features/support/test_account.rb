require 'base64'

test_account = RUN_CONFIG['test_account']

test_non_member = {email: test_account['non.member']['test_email'],
                   password: Base64.decode64(test_account['non.member']['test_password'])}

test_trial_voided = {email: test_account['trial.voided']['test_email'],
                     password: Base64.decode64(test_account['trial.voided']['test_password'])}
test_trial_activated = {email: test_account['trial.activated']['test_email'],
                        password: Base64.decode64(test_account['trial.activated']['test_password'])}
test_trial_cancelled = {email: test_account['trial.cancelled']['test_email'],
                        password: Base64.decode64(test_account['trial.cancelled']['test_password'])}
test_trial_expired = {email: test_account['trial.expired']['test_email'],
                      password: Base64.decode64(test_account['trial.expired']['test_password'])}

test_discount_activated = {email: test_account['discount.activated']['test_email'],
                           password: Base64.decode64(test_account['discount.activated']['test_password'])}
test_discount_cancelled = {email: test_account['discount.cancelled']['test_email'],
                           password: Base64.decode64(test_account['discount.cancelled']['test_password'])}
test_discount_expired = {email: test_account['discount.expired']['test_email'],
                         password: Base64.decode64(test_account['discount.expired']['test_password'])}
test_discount_payment_due = {email: test_account['discount.payment.due']['test_email'],
                             password: Base64.decode64(test_account['discount.payment.due']['test_password'])}
test_discount_terminated = {email: test_account['discount.terminated']['test_email'],
                            password: Base64.decode64(test_account['discount.terminated']['test_password'])}

test_normal_activated = {email: test_account['normal.activated']['test_email'],
                         password: Base64.decode64(test_account['normal.activated']['test_password'])}
test_normal_cancelled = {email: test_account['normal.cancelled']['test_email'],
                         password: Base64.decode64(test_account['normal.cancelled']['test_password'])}
test_normal_expired = {email: test_account['normal.expired']['test_email'],
                       password: Base64.decode64(test_account['normal.expired']['test_password'])}
test_normal_payment_due = {email: test_account['normal.payment.due']['test_email'],
                           password: Base64.decode64(test_account['normal.payment.due']['test_password'])}
test_normal_terminated = {email: test_account['normal.terminated']['test_email'],
                          password: Base64.decode64(test_account['normal.terminated']['test_password'])}


TEST_ACCOUNTS = {test_non_member: test_non_member,
                 test_trial_voided: test_trial_voided,
                 test_trial_activated: test_trial_activated,
                 test_trial_cancelled: test_trial_cancelled,
                 test_trial_expired: test_trial_expired,
                 test_discount_activated: test_discount_activated,
                 test_discount_cancelled: test_discount_cancelled,
                 test_discount_expired: test_discount_expired,
                 test_discount_payment_due: test_discount_payment_due,
                 test_discount_terminated: test_discount_terminated,
                 test_normal_activated: test_normal_activated,
                 test_normal_cancelled: test_normal_cancelled,
                 test_normal_expired: test_normal_expired,
                 test_normal_payment_due: test_normal_payment_due,
                 test_normal_terminated: test_normal_terminated,
}