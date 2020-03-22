function exi(lang)
	e = {}
	c = ''
	if lang == 'tr' then
		e = {'Evet','Hayır'}
		c = ''
	end
	if lang == 'en' then
		e = {'Yes','No'}
		c = 'do you want exit'
	end
	if lang == 'ru' then
		e = {'Да','Нет'}
		c = 'ты хочешь выход'
	end
	ex = gg.choice(e,nil,c)
	if ex == 1 then
		os.exit()
	end
	if ex == 2 then
		main()
	end
	if ex == nil then
		exi(lang)
	end
end
function pro(lang)
	lang = lang
	mes = ''
	if lang == 'tr' then
		mes = 'dükkanın sonundaki sandıkları açabilirsiniz'
	end
	if lang == 'en' then
		mes = 'you can open chests at the end of the shop'
	end
	if lang == 'ru' then
		mes = 'вы можете открыть сундуки в конце магазина'
	end
	gg.clearResults()
	gg.searchNumber('20;50;140;280', gg.TYPE_DWORD)
	revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
	gg.editAll('-9999', gg.TYPE_DWORD)
	gg.alert(mes)
	exi(lang)
end
function main()
	langs = gg.choice({'Türkçe','English','Рyccкий'},nil,'select a language')
	lang = ''
	men = {}
	if langs == 1 then
		lang = 'tr'
		men = {'Başla','Çıkış'}
	end
	if langs == 2 then
		lang = 'en'
		men = {'Start','Exit'}
	end
	if langs == 3 then
		lang = 'ru'
		men = {'Haчaлo','Выход'}
	end
	if langs == nil then
		gg.alert('please select a language')
		main()
	end
	menu = gg.choice(men,nil,'Brawl Stars Tool')
	if menu == 1 then
		pro(lang)
	end
	if menu == 2 then
		exi(lang)
	end
end
if gg.isVisible(true) then
	gg.setVisible(false)
end
gg.alert('    BayAndroMod    \n  Brawl Stars Tool V1  ')
gg.alert('lütfen bu aracı kullanmadan önce dükkana gidiniz\nplease go to shop before use to tool\nпожалуйста перейдите в магазин прежде чем использовать инструмент')
main()
