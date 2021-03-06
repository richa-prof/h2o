# frozen_string_literal: true

require 'rails_helper'

feature 'person removes hotel from cart' do
  scenario 'successfully' do
    build_session_cart_with_hotel

    visit '/carrinho/add_to_cart'

    accept_alert do
      find('a.cart-delete').click
    end

    expect(page).to have_content 'Sem Resultados'
  end
end
