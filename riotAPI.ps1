##########################################################################################
#GetJsonData_byRiotAPI

##########################################################################################
#Defines
#RiotAPIKey
set-variable -name str_apiKey_RiotApi -value "***" -option constant

#Region
set-variable -name str_region_RiotApi -value "***" -option constant

#TargetUserName
set-variable -name str_inGame_playerName_RiotApi -value "***" -option constant

##########################################################################################
#Init
function Initialize_RiotApi_variables{
}

##########################################################################################
#DataDragonから画像取得の際、専用の名前になるため定義
#APIから取得したIDをどこかでspellsのJsonに取り込める値に変える必要あり
#Spells Jsonから直接IDと名前を紐づける形にあとで変えたい_メンテナンス性
function Get-summonerSpell_name_byId($summonerSpell_id){
    if($summonerSpell_id -eq 1){
        return "SummonerBoost"
    }
    elseif($summonerSpell_id -eq 3){
        return "SummonerExhaust"
    }
    elseif($summonerSpell_id -eq 4){
        return "SummonerFlash"
    }
    elseif($summonerSpell_id -eq 6){
        return "SummonerHaste"
    }
    elseif($summonerSpell_id -eq 7){
        return "SummonerHeal"
    }
    elseif($summonerSpell_id -eq 21){
        return "SummonerBarrier"
    }
    elseif($summonerSpell_id -eq 11){
        return "SummonerSmite"
    }
    elseif($summonerSpell_id -eq 12){
        return "SummonerTeleport"
    }
    elseif($summonerSpell_id -eq 13){
        return "SummonerMana"
    }
    elseif($summonerSpell_id -eq 14){
        return "SummonerDot"
    }
}

##########################################################################################
#DataDragonから画像取得の際、専用の名前になるため定義
#APIから取得したIDをどこかでChampionsのJsonを参照可能な値に変える必要あり
#Champions Jsonから直接IDと名前を紐づける形にあとで変えたい_メンテナンス性
function Get-Champion_name_byId($Champion_id){
    #"id": "Aatrox",
    #"key": "266",
    if($Champion_id -eq 266){
        return "Aatrox"
    }
    #"id": "Ahri",
    #"key": "103",
    if($Champion_id -eq 103){
        return "Ahri"
    }
    #"id": "Akali",
    #"key": "84",
    elseif($Champion_id -eq 84){
        return "Akali"
    }
    #"id": "Alistar",
    #"key": "12",
    elseif($Champion_id -eq 12){
        return "Alistar"
    }
    #"id": "Amumu",
    #"key": "32",
    elseif($Champion_id -eq 32){
        return "Amumu"
    }
    #"id": "Anivia",
    #"key": "34",
    elseif($Champion_id -eq 34){
        return "Anivia"
    }
    #"id": "Annie",
    #"key": "1",
    elseif($Champion_id -eq 1){
        return "Annie"
    }
    #"id": "Ashe",
    #"key": "22",
    elseif($Champion_id -eq 22){
        return "Ashe"
    }
    #"id": "AurelionSol",
    #"key": "136",
    elseif($Champion_id -eq 136){
        return "AurelionSol"
    }
    #"id": "Azir",
    #"key": "268",
    elseif($Champion_id -eq 268){
        return "Azir"
    }
    #"id": "Bard",
    #"key": "432",
    elseif($Champion_id -eq 432){
        return "Bard"
    }
    #"id": "Blitzcrank",
    #"key": "53",
    elseif($Champion_id -eq 53){
        return "Blitzcrank"
    }
    #"id": "Brand",
    #"key": "63",
    elseif($Champion_id -eq 63){
        return "Brand"
    }
    #"id": "Braum",
    #"key": "201",
    elseif($Champion_id -eq 201){
        return "Braum"
    }
    #"id": "Caitlyn",
    #"key": "51",
    elseif($Champion_id -eq 51){
        return "Caitlyn"
    }
    #"id": "Camille",
    #"key": "164",
    elseif($Champion_id -eq 164){
        return "Camille"
    }
    #"id": "Cassiopeia",
    #"key": "69",
    elseif($Champion_id -eq 69){
        return "Cassiopeia"
    }
    #"id": "Chogath",
    #"key": "31",
    elseif($Champion_id -eq 31){
        return "Chogath"
    }
    #"id": "Corki",
    #"key": "42",
    elseif($Champion_id -eq 42){
        return "Corki"
    }
    #"id": "Darius",
    #"key": "122",
    elseif($Champion_id -eq 122){
        return "Darius"
    }
    #"id": "Diana",
    #"key": "131",
    elseif($Champion_id -eq 131){
        return "Diana"
    }
    #"id": "Draven",
    #"key": "119",
    elseif($Champion_id -eq 119){
        return "Draven"
    }
    #"id": "DrMundo",
    #"key": "36",
    elseif($Champion_id -eq 36){
        return "DrMundo"
    }
    #"id": "Ekko",
    #"key": "245",
    elseif($Champion_id -eq 245){
        return "Ekko"
    }
    #"id": "Elise",
    #"key": "60",
    elseif($Champion_id -eq 60){
        return "Elise"
    }
    #"id": "Evelynn",
    #"key": "28",
    elseif($Champion_id -eq 28){
        return "Evelynn"
    }
    #"id": "Ezreal",
    #"key": "81",
    elseif($Champion_id -eq 81){
        return "Ezreal"
    }
    #"id": "Fiddlesticks",
    #"key": "9",
    elseif($Champion_id -eq 9){
        return "Fiddlesticks"
    }
    #"id": "Fiora",
    #"key": "114",
    elseif($Champion_id -eq 114){
        return "Fiora"
    }
    #"id": "Fizz",
    #"key": "105",
    elseif($Champion_id -eq 105){
        return "Fizz"
    }
    #"id": "Galio",
    #"key": "3",
    elseif($Champion_id -eq 3){
        return "Galio"
    }
    #"id": "Gangplank",
    #"key": "41",
    elseif($Champion_id -eq 41){
        return "Gangplank"
    }
    #"id": "Garen",
    #"key": "86",
    elseif($Champion_id -eq 86){
        return "Garen"
    }
    #"id": "Gnar",
    #"key": "150",
    elseif($Champion_id -eq 150){
        return "Gnar"
    }
    #"id": "Gragas",
    #"key": "79",
    elseif($Champion_id -eq 79){
        return "Gragas"
    }
    #"id": "Graves",
    #"key": "104",
    elseif($Champion_id -eq 104){
        return "Graves"
    }
    #"id": "Hecarim",
    #"key": "120",
    elseif($Champion_id -eq 120){
        return "Hecarim"
    }
    #"id": "Heimerdinger",
    #"key": "74",
    elseif($Champion_id -eq 74){
        return "Heimerdinger"
    }
    #"id": "Illaoi",
    #"key": "420",
    elseif($Champion_id -eq 420){
        return "Illaoi"
    }
    #"id": "Irelia",
    #"key": "39",
    elseif($Champion_id -eq 39){
        return "Irelia"
    }
    #"id": "Ivern",
    #"key": "427",
    elseif($Champion_id -eq 427){
        return "Ivern"
    }
    #"id": "Janna",
    #"key": "40",
    elseif($Champion_id -eq 40){
        return "Janna"
    }
    #"id": "JarvanIV",
    #"key": "59",
    elseif($Champion_id -eq 59){
        return "JarvanIV"
    }
    #"id": "Jax",
    #"key": "24",
    elseif($Champion_id -eq 24){
        return "Jax"
    }
    #"id": "Jayce",
    #"key": "126",
    elseif($Champion_id -eq 126){
        return "Jayce"
    }
    #"id": "Jhin",
    #"key": "202",
    elseif($Champion_id -eq 202){
        return "Jhin"
    }
    #"id": "Jinx",
    #"key": "222",
    elseif($Champion_id -eq 222){
        return "Jinx"
    }
    #"id": "Kaisa",
    #"key": "145",
    elseif($Champion_id -eq 145){
        return "Kaisa"
    }
    #"id": "Kalista",
    #"key": "429",
    elseif($Champion_id -eq 429){
        return "Kalista"
    }
    #"id": "Karma",
    #"key": "43",
    elseif($Champion_id -eq 43){
        return "Karma"
    }
    #"id": "Karthus",
    #"key": "30",
    elseif($Champion_id -eq 30){
        return "Karthus"
    }
    #"id": "Kassadin",
    #"key": "38",
    elseif($Champion_id -eq 38){
        return "Kassadin"
    }
    #"id": "Katarina",
    #"key": "55",
    elseif($Champion_id -eq 55){
        return "Katarina"
    }
    #"id": "Kayle",
    #"key": "10",
    elseif($Champion_id -eq 10){
        return "Kayle"
    }
    #"id": "Kayn",
    #"key": "141",
    elseif($Champion_id -eq 141){
        return "Kayn"
    }
    #"id": "Kennen",
    #"key": "85",
    elseif($Champion_id -eq 85){
        return "Kennen"
    }
    #"id": "Khazix",
    #"key": "121",
    elseif($Champion_id -eq 121){
        return "Khazix"
    }
    #"id": "Kindred",
    #"key": "203",
    elseif($Champion_id -eq 203){
        return "Kindred"
    }
    #"id": "Kled",
    #"key": "240",
    elseif($Champion_id -eq 240){
        return "Kled"
    }
    #"id": "KogMaw",
    #"key": "96",
    elseif($Champion_id -eq 96){
        return "KogMaw"
    }
    #"id": "Leblanc",
    #"key": "7",
    elseif($Champion_id -eq 7){
        return "Leblanc"
    }
    #"id": "LeeSin",
    #"key": "64",
    elseif($Champion_id -eq 64){
        return "LeeSin"
    }
    #"id": "Leona",
    #"key": "89",
    elseif($Champion_id -eq 89){
        return "Leona"
    }
    #"id": "Lissandra",
    #"key": "127",
    elseif($Champion_id -eq 127){
        return "Lissandra"
    }
    #"id": "Lucian",
    #"key": "236",
    elseif($Champion_id -eq 236){
        return "Lucian"
    }
    #"id": "Lulu",
    #"key": "117",
    elseif($Champion_id -eq 117){
        return "Lulu"
    }
    #"id": "Lux",
    #"key": "99",
    elseif($Champion_id -eq 99){
        return "Lux"
    }
    #"id": "Malphite",
    #"key": "54",
    elseif($Champion_id -eq 54){
        return "Malphite"
    }
    #"id": "Malzahar",
    #"key": "90",
    elseif($Champion_id -eq 90){
        return "Malzahar"
    }
    #"id": "Maokai",
    #"key": "57",
    elseif($Champion_id -eq 57){
        return "Maokai"
    }
    #"id": "MasterYi",
    #"key": "11",
    elseif($Champion_id -eq 11){
        return "MasterYi"
    }
    #"id": "MissFortune",
    #"key": "21",
    elseif($Champion_id -eq 21){
        return "MissFortune"
    }
    #"id": "MonkeyKing",
    #"key": "62",
    elseif($Champion_id -eq 62){
        return "MonkeyKing"
    }
    #"id": "Mordekaiser",
    #"key": "82",
    elseif($Champion_id -eq 82){
        return "Mordekaiser"
    }
    #"id": "Morgana",
    #"key": "25",
    elseif($Champion_id -eq 25){
        return "Morgana"
    }
    #"id": "Nami",
    #"key": "267",
    elseif($Champion_id -eq 267){
        return "Nami"
    }
    #"id": "Nasus",
    #"key": "75",
    elseif($Champion_id -eq 75){
        return "Nasus"
    }
    #"id": "Nautilus",
    #"key": "111",
    elseif($Champion_id -eq 111){
        return "Nautilus"
    }
    #"id": "Neeko",
    #"key": "518",
    elseif($Champion_id -eq 518){
        return "Neeko"
    }
    #"id": "Nidalee",
    #"key": "76",
    elseif($Champion_id -eq 76){
        return "Nidalee"
    }
    #"id": "Nocturne",
    #"key": "56",
    elseif($Champion_id -eq 56){
        return "Nocturne"
    }
    #"id": "Nunu",
    #"key": "20",
    elseif($Champion_id -eq 20){
        return "Nunu"
    }
    #"id": "Olaf",
    #"key": "2",
    elseif($Champion_id -eq 2){
        return "Olaf"
    }
    #"id": "Orianna",
    #"key": "61",
    elseif($Champion_id -eq 61){
        return "Orianna"
    }
    #"id": "Ornn",
    #"key": "516",
    elseif($Champion_id -eq 516){
        return "Ornn"
    }
    #"id": "Pantheon",
    #"key": "80",
    elseif($Champion_id -eq 80){
        return "Pantheon"
    }
    #"id": "Poppy",
    #"key": "78",
    elseif($Champion_id -eq 78){
        return "Poppy"
    }
    #"id": "Pyke",
    #"key": "555",
    elseif($Champion_id -eq 555){
        return "Pyke"
    }
    #"id": "Quinn",
    #"key": "133",
    elseif($Champion_id -eq 133){
        return "Quinn"
    }
    #"id": "Rakan",
    #"key": "497",
    elseif($Champion_id -eq 497){
        return "Rakan"
    }
    #"id": "Rammus",
    #"key": "33",
    elseif($Champion_id -eq 33){
        return "Rammus"
    }
    #"id": "RekSai",
    #"key": "421",
    elseif($Champion_id -eq 421){
        return "RekSai"
    }
    #"id": "Renekton",
    #"key": "58",
    elseif($Champion_id -eq 58){
        return "Renekton"
    }
    #"id": "Rengar",
    #"key": "107",
    elseif($Champion_id -eq 107){
        return "Rengar"
    }
    #"id": "Riven",
    #"key": "92",
    elseif($Champion_id -eq 92){
        return "Riven"
    }
    #"id": "Rumble",
    #"key": "68",
    elseif($Champion_id -eq 68){
        return "Rumble"
    }
    #"id": "Ryze",
    #"key": "13",
    elseif($Champion_id -eq 13){
        return "Ryze"
    }
    #"id": "Sejuani",
    #"key": "113",
    elseif($Champion_id -eq 113){
        return "Sejuani"
    }
    #"id": "Shaco",
    #"key": "35",
    elseif($Champion_id -eq 35){
        return "Shaco"
    }
    #"id": "Shen",
    #"key": "98",
    elseif($Champion_id -eq 98){
        return "Shen"
    }
    #"id": "Shyvana",
    #"key": "102",
    elseif($Champion_id -eq 102){
        return "Shyvana"
    }
    #"id": "Singed",
    #"key": "27",
    elseif($Champion_id -eq 27){
        return "Singed"
    }
    #"id": "Sion",
    #"key": "14",
    elseif($Champion_id -eq 14){
        return "Sion"
    }
    #"id": "Sivir",
    #"key": "15",
    elseif($Champion_id -eq 15){
        return "Sivir"
    }
    #"id": "Skarner",
    #"key": "72",
    elseif($Champion_id -eq 72){
        return "Skarner"
    }
    #"id": "Sona",
    #"key": "37",
    elseif($Champion_id -eq 37){
        return "Sona"
    }
    #"id": "Soraka",
    #"key": "16",
    elseif($Champion_id -eq 16){
        return "Soraka"
    }
    #"id": "Swain",
    #"key": "50",
    elseif($Champion_id -eq 50){
        return "Swain"
    }
    #"id": "Sylas",
    #"key": "517",
    elseif($Champion_id -eq 517){
        return "Sylas"
    }
    #"id": "Syndra",
    #"key": "134",
    elseif($Champion_id -eq 134){
        return "Syndra"
    }
    #"id": "TahmKench",
    #"key": "223",
    elseif($Champion_id -eq 223){
        return "TahmKench"
    }
    #"id": "Taliyah",
    #"key": "163",
    elseif($Champion_id -eq 163){
        return "Taliyah"
    }
    #"id": "Talon",
    #"key": "91",
    elseif($Champion_id -eq 91){
        return "Talon"
    }
    #"id": "Taric",
    #"key": "44",
    elseif($Champion_id -eq 44){
        return "Taric"
    }
    #"id": "Teemo",
    #"key": "17",
    elseif($Champion_id -eq 17){
        return "Teemo"
    }
    #"id": "Thresh",
    #"key": "412",
    elseif($Champion_id -eq 412){
        return "Thresh"
    }
    #"id": "Tristana",
    #"key": "18",
    elseif($Champion_id -eq 18){
        return "Tristana"
    }
    #"id": "Trundle",
    #"key": "48",
    elseif($Champion_id -eq 48){
        return "Trundle"
    }
    #"id": "Tryndamere",
    #"key": "23",
    elseif($Champion_id -eq 23){
        return "Tryndamere"
    }
    #"id": "TwistedFate",
    #"key": "4",
    elseif($Champion_id -eq 4){
        return "TwistedFate"
    }
    #"id": "Twitch",
    #"key": "29",
    elseif($Champion_id -eq 29){
        return "Twitch"
    }
    #"id": "Udyr",
    #"key": "77",
    elseif($Champion_id -eq 77){
        return "Udyr"
    }
    #"id": "Urgot",
    #"key": "6",
    elseif($Champion_id -eq 6){
        return "Urgot"
    }
    #"id": "Varus",
    #"key": "110",
    elseif($Champion_id -eq 110){
        return "Varus"
    }
    #"id": "Vayne",
    #"key": "67",
    elseif($Champion_id -eq 67){
        return "Vayne"
    }
    #"id": "Veigar",
    #"key": "45",
    elseif($Champion_id -eq 45){
        return "Veigar"
    }
    #"id": "Velkoz",
    #"key": "161",
    elseif($Champion_id -eq 161){
        return "Velkoz"
    }
    #"id": "Vi",
    #"key": "254",
    elseif($Champion_id -eq 254){
        return "Vi"
    }
    #"id": "Viktor",
    #"key": "112",
    elseif($Champion_id -eq 112){
        return "Viktor"
    }
    #"id": "Vladimir",
    #"key": "8",
    elseif($Champion_id -eq 8){
        return "Vladimir"
    }
    #"id": "Volibear",
    #"key": "106",
    elseif($Champion_id -eq 106){
        return "Volibear"
    }
    #"id": "Warwick",
    #"key": "19",
    elseif($Champion_id -eq 19){
        return "Warwick"
    }
    #"id": "Xayah",
    #"key": "498",
    elseif($Champion_id -eq 498){
        return "Xayah"
    }
    #"id": "Xerath",
    #"key": "101",
    elseif($Champion_id -eq 101){
        return "Xerath"
    }
    #"id": "XinZhao",
    #"key": "5",
    elseif($Champion_id -eq 5){
        return "XinZhao"
    }
    #"id": "Yasuo",
    #"key": "157",
    elseif($Champion_id -eq 157){
        return "Yasuo"
    }
    #"id": "Yorick",
    #"key": "83",
    elseif($Champion_id -eq 83){
        return "Yorick"
    }
    #"id": "Zac",
    #"key": "154",
    elseif($Champion_id -eq 154){
        return "Zac"
    }
    #"id": "Zed",
    #"key": "238",
    elseif($Champion_id -eq 238){
        return "Zed"
    }
    #"id": "Ziggs",
    #"key": "115",
    elseif($Champion_id -eq 115){
        return "Ziggs"
    }
    #"id": "Zilean",
    #"key": "26",
    elseif($Champion_id -eq 26){
        return "Zilean"
    }
    #"id": "Zoe",
    #"key": "142",
    elseif($Champion_id -eq 142){
        return "Zoe"
    }
    #"id": "Zyra",
    #"key": "143",
    elseif($Champion_id -eq 143){
        return "Zyra"
    }
    #"id": "Aphelios",
    #"key": "523",
    elseif($Champion_id -eq 523){
        return "Aphelios"
    }
    #"id": "Qiyana",
    #"key": "246",
    elseif($Champion_id -eq 246){
        return "Qiyana"
    }
    #"id": "Senna",
    #"key": "235",
    elseif($Champion_id -eq 235){
        return "Senna"
    }
    #"id": "Sett",
    #"key": "875",
    elseif($Champion_id -eq 875){
        return "Sett"
    }
    #"id": "Yuumi",
    #"key": "350",
    elseif($Champion_id -eq 350){
        return "Yuumi"
    }
}

##########################################################################################
#アクティブなゲームの情報を参照し、配列としてユーザの敵となる5チャンプのチャンプ名・サモスぺ2種の名前を多次元配列として返す
function Get-ActiveGames_Champions_Enemy_informations{

#RiotApiにてプレイヤー名からプレイヤーIDを取得するためのリクエストURL_プレイヤー名のみユーザに入力させるほうがよい（IDは長いので
$str_url_get_summoners_byName_RiotApi = "https://" + $str_region_RiotApi + ".api.riotgames.com/lol/summoner/v4/summoners/by-name/" + $str_inGame_playerName_RiotApi + "?api_key=" + $str_apiKey_RiotApi

#リクエストURLから取得した生のjsonデータ
$ary_json_got_summoners_byName_RiotApi = Invoke-WebRequest $str_url_get_summoners_byName_RiotApi

#jsonデータを分解しキー名でサーチできるように
$ary_got_summoners_byName_RiotApi = ConvertFrom-Json $ary_json_got_summoners_byName_RiotApi

#RiotApiにてプレイヤーIDからアクティブゲームの情報をjsonで取得するためのリクエストURLを指定
$str_url_get_activeGames_bySummoner_RiotApi = "https://" + $str_region_RiotApi + ".api.riotgames.com/lol/spectator/v4/active-games/by-summoner/" + $ary_got_summoners_byName_RiotApi.id + "?api_key=" + $str_apiKey_RiotApi

#リクエストURLから取得した生のjsonデータ
$ary_json_got_activeGames_bySummoner_RiotApi = Invoke-WebRequest $str_url_get_activeGames_bySummoner_RiotApi

#jsonデータを分解しキー名でサーチできるように
$ary_got_activeGames_bySummoner_RiotApi = ConvertFrom-Json $ary_json_got_activeGames_bySummoner_RiotApi

#味方・敵プレイヤーの判別を行うため、取得したアクティブゲームの情報から実行ユーザに紐づくTeamIDを取得
foreach($elements_togetTeamId_got_activeGames_bySummoner_RiotApi in $ary_got_activeGames_bySummoner_RiotApi.participants){
    if($elements_togetTeamId_got_activeGames_bySummoner_RiotApi.summonerName -eq $str_inGame_playerName_RiotApi){
        $str_teamId_forUser_got_activeGames_bySummoner_RiotApi = $elements_togetTeamId_got_activeGames_bySummoner_RiotApi.teamId
    }
}

#当関数の戻り値となる、「実行ユーザの敵チーム側の5チャンプの情報をすべて取得し格納」するための配列を初期化
$ary_informations_enemy_got_activeGames_bySummoner_RiotApi = @()

#取得したアクティブゲームの情報から全てのプレイヤー名・サモスペ1,2、チームID、チャンピオン名を取得し、敵チームのみ関数の戻りとなる配列に格納
foreach($elements_togetEnemyInfo_got_activeGames_bySummoner_RiotApi in $ary_got_activeGames_bySummoner_RiotApi.participants){
    #プレイヤー名、サモスペ２種、チャンピオン名を取得
    $str_summonerName_foreveryone_got_activeGames_bySummoner_RiotApi = $elements_togetEnemyInfo_got_activeGames_bySummoner_RiotApi.summonerName
    $str_summonerSpellName1_foreveryone_got_activeGames_bySummoner_RiotApi = Get-summonerSpell_name_byId($elements_togetEnemyInfo_got_activeGames_bySummoner_RiotApi.spell1Id)
    $str_summonerSpellName2_foreveryone_got_activeGames_bySummoner_RiotApi = Get-summonerSpell_name_byId($elements_togetEnemyInfo_got_activeGames_bySummoner_RiotApi.spell2Id)
    $str_championName_foreveryone_got_activeGames_bySummoner_RiotApi = Get-Champion_name_byId($elements_togetEnemyInfo_got_activeGames_bySummoner_RiotApi.championId)

    #アクティブゲームの情報から各プレイヤーのチームIDが、実行ユーザと同じなら味方、異なれば敵のフラグを立てる
    if($elements_togetEnemyInfo_got_activeGames_bySummoner_RiotApi.teamId -eq $str_teamId_forUser_got_activeGames_bySummoner_RiotApi){
        $str_teamType_foreveryone_got_activeGames_bySummoner_RiotApi = "Ally"
    }
    else {
        $str_teamType_foreveryone_got_activeGames_bySummoner_RiotApi = "Enemy"
    }

    #チームフラグが敵のプレイヤー情報のうち、チャンピオン名、サモスペ２種情報を配列に格納
    if($str_teamType_foreveryone_got_activeGames_bySummoner_RiotApi -eq "Enemy"){
        $ary_informations_enemy_got_activeGames_bySummoner_RiotApi += ,@($str_championName_foreveryone_got_activeGames_bySummoner_RiotApi,$str_summonerSpellName1_foreveryone_got_activeGames_bySummoner_RiotApi,$str_summonerSpellName2_foreveryone_got_activeGames_bySummoner_RiotApi)
    }
    }
    return $ary_informations_enemy_got_activeGames_bySummoner_RiotApi
} 
##########################################################################################