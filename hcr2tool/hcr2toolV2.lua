function cik()
	cikis = gg.choice({'Evet', 'Hayır'}, nil, 'Çıkış yapacak mısın')
	if cikis == 1 then os.exit() end
	if cikis == 2 then main() end
end
function para()
	sett = gg.choice({'Değer ara', 'Değer değiştir', 'ikiside'})
	if sett == 1 then
		money = gg.prompt({'Paranızın Değeri'}, {[1] = 0},{[1] = 'number'})
		gg.searchNumber(money[1]+1, gg.TYPE_DWORD)
		devam = gg.choice({'Devam', 'Menü', 'Çıkış'})
		if devam == 1 then para() end
		if devam == 2 then main() end
		if devam == 3 then cik() end
	end
	if sett == 2 then
		yenimoney = gg.prompt({'Paranızın yeni değeri'}, {[1] = 0}, {[1] = 'number'})
		gg.getResults(1)
		gg.editAll(yenimoney[1]+1, gg.TYPE_DWORD)
		gg.alert('Para hileniz başarıyla gerçekleşmiştir. Lütfen internetinizi açınız.')
		gg.alert('Eğer açmazsanız paranız tekrar eski haline geri döner ve hack kapanır.')
		cik()
	end
	if sett == 3 then
		money = gg.prompt({'Paranızın Değeri'}, {[1] = 0},{[1] = 'number'})
		yenimoney = gg.prompt({'Paranızın yeni değeri'}, {[1] = 0}, {[1] = 'number'})
		gg.searchNumber(money[1]+1, gg.TYPE_DWORD)
		gg.getResults(1)
		gg.editAll(yenimoney[1]+1, gg.TYPE_DWORD)
		cik()
	end
	if sett == nil then main() end
end
function elmas()
	sett = gg.choice({'Değer ara', 'Değer değiştir', 'ikiside'})
	if sett == 1 then
		elma = gg.prompt({'Paranızın Değeri'}, {[1] = 0},{[1] = 'number'})
		gg.searchNumber(elma[1]+1, gg.TYPE_DWORD)
		devam = gg.choice({'Devam', 'Menü', 'Çıkış'})
		if devam == 1 then elmas() end
		if devam == 2 then main() end
		if devam == 3 then cik() end
	end
	if sett == 2 then
		yenielmas = gg.prompt({'Paranızın yeni değeri'}, {[1] = 0}, {[1] = 'number'})
		gg.getResults(1)
		gg.editAll(yenielmas[1]+1, gg.TYPE_DWORD)
		gg.alert('Elmas hileniz başarıyla gerçekleşmiştir. Lütfen internetinizi açınız.')
		gg.alert('Eğer açmazsanız elmasınız tekrar eski haline geri döner ve hack kapanır.')
		cik()
	end
	if sett == 3 then
		elma = gg.prompt({'Paranızın Değeri'}, {[1] = 0},{[1] = 'number'})
		yenielmas = gg.prompt({'Paranızın yeni değeri'}, {[1] = 0}, {[1] = 'number'})
		gg.searchNumber(elma[1]+1, gg.TYPE_DWORD)
		gg.getResults(1)
		gg.editAll(yenielmas[1]+1, gg.TYPE_DWORD)
		cik()
	end
	if sett == nil then main() end
end
function hak()
	h = gg.choice({'Versiyon', 'Yardım', 'Daha Fazla', 'Geri'})
	if h == 1 then
		gg.alert('1.0.0')
		hak()
	end
	if h == 2 then
		y = gg.choice({'Ban engeline takilmadan nasıl hile yaparım', 'Para/Elmas hilesini nasıl yaparım', ''})
		if y == 1then
			gg.alert('Öncelikle işlemi yapmadan önce internetinizi kapatmanız gerekecek.')
			gg.alert('Böylece oyun ile sunucunun bağlantısı kesilecek siz de ban yemeden hile yapabilirsiniz.')
			gg.alert('Hilenizi yaptıktan sonra internetinizi geri açın.')
			gg.alert('Bu sayede paranızı ve elmasınızı sunucuya tanıtmış ve verilerin silinmesini engellemiş olursunuz.')
		end
		if y == 2 then
			gg.alert('1- İnternetinizi kapatın ve sonra Para/Elmas hilesini seçin')
			gg.alert('2- Paranızla aynı miktarda başka değişken olmadığından emin olunuz eğer 1 den fazla değişken ekrana girerse oyuna dönün ve para/elmasınızın değerini değiştirin(harcayın veya arttırın)')
			gg.alert('3- Yukarıdaki işlemi değişkenler 1 tane olana kadar tekrarlayın')
			gg.alert('4- Değişkenler 1 e indikten sonra Para/Elmas hilesin seçip, Değer değiştir bölününe tıklayın ve istediğiniz Para/Elmas değerini yazın')
			gg.alert('5- Sonra tooldan çıkın ve internetinizi açın')
			gg.alert('6- Ve son olarak oyunun tadını çıkartın')
		end
		hak()
	end
	if h == 3 then
		gg.alert('link')
		hak()
	end
end
function main()
	gg.alert('Lütfen internetinizin kapalı olduğundan emin olunuz aksi taktirde hesabınız banlanabilir.')
	menu = gg.choice({'Para Hilesi', 'Elmas Hilesi' , 'Hakkında', 'Çıkış'})
	if menu == 1 then para() end
	if menu == 2 then elmas() end
	if menu == 3 then hak() end
	if menu == 4 then cik() end
	if menu == nil then cik() end
	xxx = -1
end
if gg.isVisible(true) then
	gg.setVisible(false) 
end 
gg.alert('Hill Climb Racing 2 Tool')
gg.alert('Kullanım hakkına bütün bilgileri ve yöntemleri toolda yer verdim.')
gg.alert('Bu bilgileri ve yöntemleri döğru bir şekilde kullanmanızı tavsiye ederim.')
main()
