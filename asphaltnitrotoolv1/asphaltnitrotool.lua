function cik(lang)
    if lang == "tr" then
        message = "Çıkış yapacak mısın"
        soru = {"Evet", "Hayır"}
    end
    if lang == "en" then
        message = "Will you exit"
        soru = {"Yes", "No"}
    end
    if lang == "du" then
        message = "Wirst du gehen"
        soru = {"Ja", "Nein"}
    end
    cikis = gg.choice(soru, nil, message)
    if cikis == 1 then
        os.exit()
    end
    if cikis == 2 then
        main(lang)
    end
    if cikis == nil then
        main(lang)
    end
end
function money(lang)
    if lang == "tr" then
        gg.alert("Hacki kullanabilmek için oyuna sıfırdan başlamalısın")
        message = "Paranın Değeri [0, 1000000000]"
    end
    if lang == "en" then
        gg.alert("To use hack you must start the game from scratch")
        message = "Value of Money [0, 1000000000]"
    end
    if lang == "du" then
        gg.alert("Um Hack zu verwenden, müssen Sie das Spiel von vorne beginnen")
        message = "Wes des Geldes [0, 1000000000]"
    end
    moneysrc = gg.prompt({message}, {[1] = 0}, {[1] = "number"})
    gg.searchNumber("86;55;10,35;62", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.searchNumber("6;5;0;3;2", gg.TYPE_BYTE)
    gg.clearResults()
    gg.searchNumber("6000;5000;4000;3000;2000", gg.TYPE_DWORD)
    gg.getResults(100)
    gg.editAll(moneysrc[1], gg.TYPE_DWORD)
    gg.clearResults()
    gg.searchNumber("40;90;150;220;620", gg.TYPE_DWORD)
    gg.getResults(100)
    gg.editAll("0", gg.TYPE_DWORD)
    cik(lang)
end
function main(lang)
    if lang == "tr" then
        langs = {"Para Hilesi", "Çıkış"}
    end
    if lang == "en" then
        langs = {"Money Hack",  "Exit"}
    end
    if langs == "du" then
        langs = {"Geld Hack", "Gehen"}
    end
    menu = gg.choice(
    	                 langs,
    	                 nil,
    	                 "BayAndroMood")
    if menu == 1 then
        money(lang)
    end
    if menu == 2 then
        cik(lang)
    end
    if menu == nil then
        cik(lang)
    end
end
function sl()
    sellang = gg.choice({"Türkçe", "English", "Deutsch"}, nil, "BayAndroMod")
    if sellang == 1 then
        main("tr")
    end
    if sellang == 2 then
        main("en")
    end
    if sellang == 3 then
        main("du")
    end
    if sellang == nil then
        gg.alert("Please Select a Language")
        sl()
    end
end
if gg.isVisible() == true then
    gg.setVisible(false)
end
sl()