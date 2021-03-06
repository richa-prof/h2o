# frozen_string_literal: true

FactoryBot.define do
  factory :persona_locale do
    locale { 'en-US' }
    nome   { 'Super Athlete' }
    association :persona
  end
end
