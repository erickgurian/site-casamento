Rails.application.routes.draw do
  devise_for :users
  root to: 'marriage#index'

  controller :marriage do
    get :o_casamento, action: 'the_marriage'
    get :confirme_sua_presenca, action: 'confirm_your_presence'
    get :lista_presentes, action: 'gifts_list' 
    get :nosso_cha, action: 'bridal_shower'
    get :nossa_historia, action: 'our_story'
    get :nossas_memorias, action: 'our_memories'
    get :o_que_vestir, action: 'what_to_wear'
    get :fornecedores, action: 'providers'
    get :nao_peguei_o_buque, action: 'the_bouquet'
  end

  resources :guests, only: %i[create]
end
