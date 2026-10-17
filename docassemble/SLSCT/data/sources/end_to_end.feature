@end_to_end
Feature: Applicant completes a standalone bankruptcy pro bono application

  # Seeded with ALDashboard's static fixture generator, then reviewed against the interview.
  Scenario: Complete the interview and reach its final document screen
    Given I start the interview at "main.yml"
    And the maximum seconds for each Step in this Scenario is 240
    And the user gets to "download" with this data:
      | var | value |
      | cba_s1_qa_240 | False |
      | do_you_own_your_home__247 | False |
      | do_you_own_any_other_real_estate_or_interests_254 | False |
      | do_you_own_a_business_or_any_interest_in_a_bu_255 | False |
      | is_your_landlord_trying_to_evict_you__256 | False |
      | do_you_own_a_vehicle_that_is_leased_or_financ_264 | False |
      | are_your_wages_being_garnished__267 | False |
      | has_a_creditor_recently_attached_or_seized_fu_268 | False |
      | have_you_ever_filed_for_bankruptcy__269 | False |
      | marital_status | Single |
      | state_ages_of_all_dependents_under_the_age_of_271 | None |
      | if_you_are_presently_employed_or_self_employe_272 | 0 |
      | if_your_spouse_or_partner__is_employed_or_sel_273 | 0 |
      | if_any_other_person_living_with_you_is_employ_274 | 0 |
      | if_you_receive_any_government_assistance_of_a_275 | None |
      | list_all_of_your_noncash_assets_with_an_estim_276 | Household furnishings worth $500 |
      | list_all_of_your_cash_assets__including_accou_277 | Checking account balance $100 |
      | does_anyone_owe_you_money_or_can_you_sue_anyo_278 | False |
      | have_you_been_involved_in_a_car_accident_with_279 | False |
      | are_you_suing_or_threatening_to_sue_anyone_or_287 | False |
      | do_you_own_or_are_you_contributing_to_any_lif_286 | False |
      | do_you_have_any_other_assets__280 | False |
      | do_you_expect_a_tax_refund_for_this_or_last_y_281 | False |
      | are_you_entitled_to_receive_alimony_or_child__284 | False |
      | attorney_name_and_address_organization_name_288 | No attorney contacted |
      | reason_why_attorney_was_not_employed__describ_289 | Unable to afford representation |
      | include_any_other_information_which_you_belie_290 | None |
      | do_you_need_an_attorney_who_speaks_a_language_291 | False |
      | client.name.first | Jane |
      | client.name.last | Smith |
      | client.address.address | 123 Main Street |
      | client.address.city | Boston |
      | client.address.state | MA |
      | client.address.zip | 02108 |
      | client.address.address_type | other |
      | client.mailing_address | client.address |
      | client.signature | /s/ Jane Smith |
    Then I should see the phrase "Your document is ready"
