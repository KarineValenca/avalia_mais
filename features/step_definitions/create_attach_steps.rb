And (/^I will press "Solicitar Vínculo" button$/) do
	find("#btn-vinculo").click
end

And (/^I should be redirect to new attach request$/) do
	expect(page).to have_content("CNPJ")
end

And (/^I fill "CNPJ" field with "00000111110000"$/) do
	fill_in 'attach_cnpj', :with => '00000111110000'
end

And (/^I fill "Endereço" field with "Rua do comercio, bloco K, loja 10"$/) do
	fill_in 'attach_address', :with => 'Rua do comercio, bloco K, loja 10'
end

#And (/^I fill "Imagem" field with "foto_test_attach"$/) do
#	attach_file(attach_photo, '/home/lucas/Imagens/foto_test_attach.jpeg') 
#end

Then (/^I should be redirect to company page with a notice "Solicitação feita com sucesso!"/) do
	expect(page).to have_content("Solicitação feita com sucesso!")
end
