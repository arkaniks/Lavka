//
//  Lavka.swift
//  lavka
//
//  Created by Владислав on 20.06.2020.
//  Copyright © 2020 Владислав. All rights reserved.
//

import Foundation
import MapKit

class Lavka:NSObject, MKAnnotation
{
    let number:String?
    let coordinate: CLLocationCoordinate2D
    
    
    init(
        number:String? ,
        coordinate: CLLocationCoordinate2D) {
        self.number = number
        self.coordinate = coordinate
        
        
        super .init()
    }
    var subtitle: String? {
        return number
    }
    
    var title: String? {
        return nil
    }
    
    var ColorLavka:UIColor
    {
        switch number {
        case "99999":
            return .black
        default:
            return .yellow
        }
    }
    
    var img: UIImage{
        switch number {
        case "99999":
            return #imageLiteral(resourceName: "settings")
        default:
            return #imageLiteral(resourceName: "lavka")
        }
    }
    
   static let trinopya = Lavka(number:"305", coordinate: CLLocationCoordinate2D(latitude : 59.9369688, longitude :30.3085200))

   static let trinoche = Lavka(number:"304", coordinate: CLLocationCoordinate2D(latitude : 59.9369900, longitude :30.3085850))

   static let one = Lavka(number:"303", coordinate: CLLocationCoordinate2D(latitude : 59.9370110, longitude :30.3086340))

   static let trinodva = Lavka(number:"302", coordinate: CLLocationCoordinate2D(latitude : 59.9370295, longitude :30.3086849))

   static let trinood = Lavka(number:"301", coordinate: CLLocationCoordinate2D(latitude : 59.9370573, longitude :30.3087433))

   static let trinono = Lavka(number:"300", coordinate: CLLocationCoordinate2D(latitude : 59.9370768, longitude :30.3088033))

   static let dvadede = Lavka(number:"299", coordinate: CLLocationCoordinate2D(latitude : 59.9370993, longitude :30.3088549))

   static let dvadevo = Lavka(number:"298", coordinate: CLLocationCoordinate2D(latitude : 59.9372606, longitude :30.3092096))

   static let dvadese = Lavka(number:"297", coordinate: CLLocationCoordinate2D(latitude : 59.9372606, longitude :30.3092707))

   static let dvedeshe = Lavka(number:"296", coordinate: CLLocationCoordinate2D(latitude : 59.9372805, longitude :30.3093203))

   static let dvedepya = Lavka(number:"295", coordinate: CLLocationCoordinate2D(latitude : 59.9373005, longitude :30.3093655))

   static let dvedeche = Lavka(number:"294", coordinate: CLLocationCoordinate2D(latitude : 59.9373269, longitude :30.3094370))

   static let dvadetri = Lavka(number:"293", coordinate: CLLocationCoordinate2D(latitude : 59.9373445, longitude :30.3094812))

   static let dvadedva = Lavka(number:"292", coordinate: CLLocationCoordinate2D(latitude : 59.9373691, longitude :30.3095506))

   static let dvadeod = Lavka(number:"291", coordinate: CLLocationCoordinate2D(latitude : 59.9374299, longitude :30.3097092))

   static let dvadeno = Lavka(number:"290", coordinate: CLLocationCoordinate2D(latitude : 59.9374549, longitude :30.3097669))

   static let dvavode = Lavka(number:"289", coordinate: CLLocationCoordinate2D(latitude : 59.9374767, longitude :30.3098192))

   static let dvavovo = Lavka(number:"288", coordinate: CLLocationCoordinate2D(latitude : 59.9374989, longitude :30.3098859))

   static let dvavose = Lavka(number:"287", coordinate: CLLocationCoordinate2D(latitude : 59.9375263, longitude:30.3099540))

   static let dvavoshe = Lavka(number:"286", coordinate: CLLocationCoordinate2D(latitude : 59.9375454, longitude:30.3100039))

   static let dvavopya = Lavka(number:"285", coordinate: CLLocationCoordinate2D(latitude : 59.9375688, longitude:30.3100643))

   static let dvavoche = Lavka(number:"284", coordinate: CLLocationCoordinate2D(latitude : 59.9375918, longitude:30.3101276))

   static let dvavotri = Lavka(number:"283", coordinate: CLLocationCoordinate2D(latitude : 59.9376200, longitude:30.3101984))

   static let dvavodva = Lavka(number:"282", coordinate: CLLocationCoordinate2D(latitude : 59.9376480, longitude:30.3102725))

   static let dvavood = Lavka(number:"281", coordinate: CLLocationCoordinate2D(latitude : 59.9376729, longitude:30.3103301))

   static let dvavono = Lavka(number:"280", coordinate: CLLocationCoordinate2D(latitude : 59.9376919, longitude:30.3103895))

   static let dvesede = Lavka(number:"279", coordinate: CLLocationCoordinate2D(latitude : 59.9377112, longitude:30.3104287))

   static let dvesevo = Lavka(number:"278", coordinate: CLLocationCoordinate2D(latitude : 59.9377382, longitude:30.3105078))

   static let dvasese = Lavka(number:"277 ", coordinate: CLLocationCoordinate2D(latitude : 59.9377545, longitude:30.3105514))

   static let dvaseshe = Lavka(number:"276 ", coordinate: CLLocationCoordinate2D(latitude : 59.9377812, longitude:30.3106235))

   static let dvasepya = Lavka(number:"275 ", coordinate: CLLocationCoordinate2D(latitude : 59.9378022, longitude:30.3106771))

   static let dvaseche = Lavka(number:"274 ", coordinate: CLLocationCoordinate2D(latitude : 59.9378267, longitude:30.3107355))

   static let dvasetri = Lavka(number:"273 ", coordinate: CLLocationCoordinate2D(latitude : 59.9378445, longitude:30.3107948))

   static let dvasedva = Lavka(number:"272 ", coordinate: CLLocationCoordinate2D(latitude : 59.9378744, longitude:30.3107948))

   static let dvaseod = Lavka(number:"271 ", coordinate: CLLocationCoordinate2D(latitude : 59.9378146, longitude:30.3117135))

   static let dvaseno = Lavka(number:"270 ", coordinate: CLLocationCoordinate2D(latitude : 59.9378081, longitude:30.3116447))

   static let dvashede = Lavka(number:"269 ", coordinate: CLLocationCoordinate2D(latitude : 59.9378049, longitude:30.3115733))

   static let dvashevo = Lavka(number:"268 ", coordinate: CLLocationCoordinate2D(latitude : 59.9377191, longitude:30.3113782))

   static let dvashese = Lavka(number:"267 ", coordinate: CLLocationCoordinate2D(latitude : 59.9376852, longitude:30.3113407))

   static let dvasheshe = Lavka(number:"266 ", coordinate: CLLocationCoordinate2D(latitude : 59.9376576, longitude:30.3113011))

   static let dvashepya = Lavka(number:"265 ", coordinate: CLLocationCoordinate2D(latitude : 59.9368679, longitude:30.3099429))

   static let dvasheche = Lavka(number:"264 ", coordinate: CLLocationCoordinate2D(latitude : 59.9369075, longitude:30.3099308))

   static let dvesshetr = Lavka(number:"263 ", coordinate: CLLocationCoordinate2D(latitude : 59.9369423, longitude:30.3099483))

   static let dveshedva = Lavka(number:"262 ", coordinate: CLLocationCoordinate2D(latitude : 59.9369860, longitude:30.3099697))

   static let dvesheod = Lavka(number:"261 ", coordinate: CLLocationCoordinate2D(latitude : 59.9370209, longitude:30.3099382))

   static let dvasheno = Lavka(number:"260", coordinate: CLLocationCoordinate2D(latitude : 59.9370421, longitude:30.3098738))

   static let dvapyade = Lavka(number:"259", coordinate: CLLocationCoordinate2D(latitude : 59.9370407, longitude:30.3098108))

   static let dvapyavo = Lavka(number:"258", coordinate: CLLocationCoordinate2D(latitude : 59.9370377, longitude:30.3097461))

   static let dvapyase = Lavka(number:"257", coordinate: CLLocationCoordinate2D(latitude : 59.9370464, longitude:30.3096871))

   static let dvapyashe = Lavka(number:"256", coordinate: CLLocationCoordinate2D(latitude : 59.9368492, longitude:30.3091027))

   static let dvapyapya = Lavka(number:"255", coordinate: CLLocationCoordinate2D(latitude : 59.9368492, longitude:30.3091027))

   static let dvapyache = Lavka(number:"254", coordinate: CLLocationCoordinate2D(latitude : 59.9368099, longitude:30.3091050))

   static let dvapyatri = Lavka(number:"253", coordinate: CLLocationCoordinate2D(latitude : 59.9367716, longitude:30.3090963))

   static let dvapyadva = Lavka(number:"252", coordinate: CLLocationCoordinate2D(latitude : 59.9367392, longitude:30.3090655))

   static let dvapyaod = Lavka(number:"251", coordinate: CLLocationCoordinate2D(latitude : 59.9367060, longitude:30.3090749))

   static let dvapyano = Lavka(number:"250", coordinate: CLLocationCoordinate2D(latitude : 59.9366789, longitude:30.3091194))

   static let dvachede = Lavka(number:"249", coordinate: CLLocationCoordinate2D(latitude : 59.9366736, longitude:30.3091868))

   static let dvachevo = Lavka(number:"248", coordinate: CLLocationCoordinate2D(latitude : 59.9366744, longitude:30.3092509))

   static let dvachese = Lavka(number:"247", coordinate: CLLocationCoordinate2D(latitude : 59.9366683, longitude:30.3093277))

   static let dvacheshe = Lavka(number:"246", coordinate: CLLocationCoordinate2D(latitude : 59.9366576, longitude:30.3093820))

   static let dvachepya = Lavka(number:"245", coordinate: CLLocationCoordinate2D(latitude : 59.9359960, longitude:30.3070783))

   static let dvacheche = Lavka(number:"244", coordinate: CLLocationCoordinate2D(latitude : 59.9359753, longitude:30.3071296))

   static let dvachetri = Lavka(number:"243 ", coordinate: CLLocationCoordinate2D(latitude : 59.9359483, longitude:30.3071859))

   static let dvachedva = Lavka(number:"242 ", coordinate: CLLocationCoordinate2D(latitude : 59.9278697, longitude:30.2962284))

   static let dvacheod = Lavka(number:"241 ", coordinate: CLLocationCoordinate2D(latitude : 59.9278275, longitude:30.2963387))

   static let dvacheno = Lavka(number:"240", coordinate: CLLocationCoordinate2D(latitude : 59.9279505, longitude:30.2997555))

   static let dvatride = Lavka(number:"239", coordinate: CLLocationCoordinate2D(latitude : 59.9279238, longitude:30.2997743))

   static let dvatrivo = Lavka(number:"238", coordinate: CLLocationCoordinate2D(latitude : 59.9278678, longitude:30.2998206))

   static let dvatrise = Lavka(number:"237", coordinate: CLLocationCoordinate2D(latitude : 59.9278371, longitude:30.2998444))

   static let dvatrishe = Lavka(number:"236", coordinate: CLLocationCoordinate2D(latitude : 59.9229770, longitude:30.3147611))

   static let dvatripya = Lavka(number:"235", coordinate: CLLocationCoordinate2D(latitude : 59.9229784, longitude:30.3148386))

   static let dvatriche = Lavka(number:"234", coordinate: CLLocationCoordinate2D(latitude : 59.9229570, longitude:30.3149107))

   static let dvatritri = Lavka(number:"233", coordinate: CLLocationCoordinate2D(latitude : 59.9229253, longitude:30.3149455))

   static let dvatridva = Lavka(number:"232", coordinate: CLLocationCoordinate2D(latitude : 59.9228853, longitude:30.3149368))
     
   static let dvatriod = Lavka(number:"231", coordinate: CLLocationCoordinate2D(latitude : 59.9228503, longitude:30.3148879))

   static let dvatrino = Lavka(number:"230", coordinate: CLLocationCoordinate2D(latitude : 59.9220582, longitude:30.3154951))

   static let dvadvade = Lavka(number:"229", coordinate: CLLocationCoordinate2D(latitude : 59.9220201, longitude:30.3155122))

   static let dvadvavo = Lavka(number:"228", coordinate: CLLocationCoordinate2D(latitude : 59.9217590, longitude:30.3154521))

   static let dvadvase = Lavka(number:"227", coordinate: CLLocationCoordinate2D(latitude : 59.9217197, longitude:30.3154092))

   static let dvadvashe = Lavka(number:"226", coordinate: CLLocationCoordinate2D(latitude : 59.9215657, longitude:30.3149606))

   static let dvadvapya = Lavka(number:"225", coordinate: CLLocationCoordinate2D(latitude : 59.9215587, longitude:30.3148691))

    static let dvadvache = Lavka(number:"224", coordinate: CLLocationCoordinate2D(latitude : 59.9216119, longitude:30.3144302))

   static let dvadvatri = Lavka(number:"223", coordinate: CLLocationCoordinate2D(latitude : 59.9216343, longitude:30.3143658))

   static let dvadvadva = Lavka(number:"222", coordinate: CLLocationCoordinate2D(latitude : 59.9232739, longitude:30.3118446))

   static let dvadvaod = Lavka(number:"221", coordinate: CLLocationCoordinate2D(latitude : 59.9232588, longitude:30.3117735))

   static let dvadvano = Lavka(number:"220", coordinate: CLLocationCoordinate2D(latitude : 59.9232250, longitude:30.3117423))

   static let dvaodde = Lavka(number:"219", coordinate: CLLocationCoordinate2D(latitude : 59.9231876, longitude:30.3117594))

   static let dvaodvo = Lavka(number:"218", coordinate: CLLocationCoordinate2D(latitude : 59.9239588, longitude:30.3123294))

   static let dvaodse = Lavka(number:"217", coordinate: CLLocationCoordinate2D(latitude : 59.9239632, longitude:30.3122784))

   static let dvaodshe = Lavka(number:"216", coordinate: CLLocationCoordinate2D(latitude : 59.9239652, longitude:30.3122258))

   static let dvaodpya = Lavka(number:"215", coordinate: CLLocationCoordinate2D(latitude : 59.9239670, longitude:30.3121684))

  static  let dvaodche = Lavka(number:"214", coordinate: CLLocationCoordinate2D(latitude : 59.9238882, longitude:30.3119971))

   static let dvaodtri = Lavka(number:"213", coordinate: CLLocationCoordinate2D(latitude : 59.9238619, longitude:30.3119820))

   static let dvaoddva = Lavka(number:"212", coordinate: CLLocationCoordinate2D(latitude : 59.9238335, longitude:30.3119790))

   static let dvaodod = Lavka(number:"211", coordinate: CLLocationCoordinate2D(latitude : 59.9238086, longitude:30.3119928))

   static let dvaodno = Lavka(number:"210", coordinate: CLLocationCoordinate2D(latitude : 59.9224057, longitude:30.3127126))

   static let dvanode = Lavka(number:"209", coordinate: CLLocationCoordinate2D(latitude : 59.9223772, longitude:30.3126871))

   static let dvanovo = Lavka(number:"208", coordinate: CLLocationCoordinate2D(latitude : 59.9222854, longitude:30.3129594))

   static let dvanose = Lavka(number:"207", coordinate: CLLocationCoordinate2D(latitude : 59.9222854, longitude:30.3129131))

   static let dvanoshe = Lavka(number:"206", coordinate: CLLocationCoordinate2D(latitude : 59.9191483, longitude:30.3138177))

   static let dvanopya = Lavka(number:"205", coordinate: CLLocationCoordinate2D(latitude : 59.9186638, longitude:30.3132444))

   static let dvanoche = Lavka(number:"204", coordinate: CLLocationCoordinate2D(latitude : 59.9186791, longitude:30.3133845))

   static let dvanotri = Lavka(number:"203", coordinate: CLLocationCoordinate2D(latitude : 59.9186470, longitude:30.3130915))

   static let dvanodva = Lavka(number:"202", coordinate: CLLocationCoordinate2D(latitude : 59.9182603, longitude:30.3115992))

   static let dvanood = Lavka(number:"201", coordinate: CLLocationCoordinate2D(latitude : 59.9188396, longitude:30.3110047))
    
   static let dvanono = Lavka(number:"200", coordinate: CLLocationCoordinate2D(latitude : 59.9188256, longitude:30.3109387))

   static let oddede = Lavka(number:"199", coordinate: CLLocationCoordinate2D(latitude : 59.9188145, longitude:30.3108515))

   static let oddevo = Lavka(number:"198", coordinate: CLLocationCoordinate2D(latitude : 59.9188152, longitude:30.3107864))

   static let oddese = Lavka(number:"197", coordinate: CLLocationCoordinate2D(latitude : 59.9188145, longitude:30.3108515))

   static let oddeshe = Lavka(number:"196", coordinate: CLLocationCoordinate2D(latitude : 59.9178046, longitude:30.3108743))

   static let oddepya = Lavka(number:"195", coordinate: CLLocationCoordinate2D(latitude : 59.9177592, longitude:30.3108159))

   static let oddeche = Lavka(number:"194", coordinate: CLLocationCoordinate2D(latitude : 59.9178410, longitude:30.3107680))

   static let oddetri = Lavka(number:"193", coordinate: CLLocationCoordinate2D(latitude : 59.9177819, longitude:30.3107100))

   static let oddedva = Lavka(number:"192", coordinate: CLLocationCoordinate2D(latitude : 59.9170782, longitude:30.3117862))

   static let oddeod = Lavka(number:"191", coordinate: CLLocationCoordinate2D(latitude : 59.9177819, longitude:30.3107100))

   static let oddeno = Lavka(number:"190", coordinate: CLLocationCoordinate2D(latitude : 59.9175158, longitude:30.3114882))

   static let odvode = Lavka(number:"189", coordinate: CLLocationCoordinate2D(latitude : 59.9177819, longitude:30.3107100))

   static let odvovo = Lavka(number:"188", coordinate: CLLocationCoordinate2D(latitude : 59.9175602, longitude:30.3115633))

   static let odvose = Lavka(number:"187", coordinate: CLLocationCoordinate2D(latitude : 59.9176459, longitude:30.3115844))

   static let odvoshe = Lavka(number:"186", coordinate: CLLocationCoordinate2D(latitude : 59.9176795, longitude:30.3114982))

   static let odvopya = Lavka(number:"185", coordinate: CLLocationCoordinate2D(latitude : 59.9176662, longitude:30.3113866))

   static let odvoche = Lavka(number:"184", coordinate: CLLocationCoordinate2D(latitude : 59.9176054, longitude:30.3113306))

   static let odvotri = Lavka(number:"183", coordinate: CLLocationCoordinate2D(latitude : 59.9175441, longitude:30.3114188))

   static let odvodva = Lavka(number:"182", coordinate: CLLocationCoordinate2D(latitude : 59.9175594, longitude:30.3115633))

   static let odvood = Lavka(number:"181", coordinate: CLLocationCoordinate2D(latitude : 59.8909800, longitude:30.2786402))

   static let odvono = Lavka(number:"180", coordinate: CLLocationCoordinate2D(latitude : 59.8910097, longitude:30.2748378))

   static let odsede = Lavka(number:"179", coordinate: CLLocationCoordinate2D(latitude : 59.8910856, longitude:30.2751647))

   static let odsevo = Lavka(number:"178", coordinate: CLLocationCoordinate2D(latitude : 59.8909430, longitude:30.2752378))

   static let odsese = Lavka(number:"177", coordinate: CLLocationCoordinate2D(latitude : 59.8909083, longitude:30.2752026))

   static let odseshe = Lavka(number:"176", coordinate: CLLocationCoordinate2D(latitude : 59.8914511, longitude:30.2753635))

   static let odsepya = Lavka(number:"175", coordinate: CLLocationCoordinate2D(latitude : 59.8913597, longitude:30.2755982))

   static let odseche = Lavka(number:"174", coordinate: CLLocationCoordinate2D(latitude : 59.8914544, longitude:30.2753571))

   static let odsetri = Lavka(number:"173", coordinate: CLLocationCoordinate2D(latitude : 59.8914559, longitude:30.2758383))

   static let odsedva = Lavka(number:"172", coordinate: CLLocationCoordinate2D(latitude : 59.8915981, longitude:30.2755482))

    static let odseod = Lavka(number:"171", coordinate: CLLocationCoordinate2D(latitude : 59.8915158, longitude:30.2742330))

   static let odseno = Lavka(number:"170", coordinate: CLLocationCoordinate2D(latitude : 59.8916853, longitude:30.2737968))

   static let odshede = Lavka(number:"169", coordinate: CLLocationCoordinate2D(latitude : 59.8921591, longitude:30.2742155))

   static let odshevo = Lavka(number:"168", coordinate: CLLocationCoordinate2D(latitude : 59.8932118, longitude:30.2753293))

   static let odshese = Lavka(number:"167", coordinate: CLLocationCoordinate2D(latitude : 59.8932720, longitude:30.2756703))

   static let odsheshe = Lavka(number:"166", coordinate: CLLocationCoordinate2D(latitude : 59.8932981, longitude:30.2758430))

   static let odshepya = Lavka(number:"165", coordinate: CLLocationCoordinate2D(latitude : 59.8930870, longitude:30.2760549))

   static let odsheche = Lavka(number:"164", coordinate: CLLocationCoordinate2D(latitude : 59.8929635, longitude:30.2759110))

   static let odshetri = Lavka(number:"163", coordinate: CLLocationCoordinate2D(latitude : 59.8929190, longitude:30.2765249))

   static let odshedva = Lavka(number:"162", coordinate: CLLocationCoordinate2D(latitude : 59.8930293, longitude:30.2764511))

   static let odsheod = Lavka(number:"161", coordinate: CLLocationCoordinate2D(latitude : 59.8929175, longitude:30.2765229))

   static let odsheno = Lavka(number:"160", coordinate: CLLocationCoordinate2D(latitude : 59.8927718, longitude:30.2766161))

   static let odpyade = Lavka(number:"159", coordinate: CLLocationCoordinate2D(latitude : 59.8930966, longitude:30.2767898))

   static let odpyavo = Lavka(number:"158", coordinate: CLLocationCoordinate2D(latitude : 59.8912191, longitude:30.2781825))

   static let odpyase = Lavka(number:"157", coordinate: CLLocationCoordinate2D(latitude : 59.8911751, longitude:30.2783810))

   static let odpyashe = Lavka(number:"156", coordinate: CLLocationCoordinate2D(latitude : 59.8912773, longitude:30.2784467))

   static let odpyapya = Lavka(number:"155", coordinate: CLLocationCoordinate2D(latitude : 59.8913715, longitude:30.2780735))

   static let odpyache = Lavka(number:"154", coordinate: CLLocationCoordinate2D(latitude : 59.8919999, longitude:30.2780927))

   static let odpyatri = Lavka(number:"153", coordinate: CLLocationCoordinate2D(latitude : 59.8920557, longitude:30.2775022))

   static let odpyadva = Lavka(number:"152", coordinate: CLLocationCoordinate2D(latitude : 59.8921566, longitude:30.2775944))

   static let odpyaod = Lavka(number:"151", coordinate: CLLocationCoordinate2D(latitude : 59.8922064, longitude:30.2774080))

   static let odpyano = Lavka(number:"150", coordinate: CLLocationCoordinate2D(latitude : 59.8928719, longitude:30.2782707))

   static let odchede = Lavka(number:"149", coordinate: CLLocationCoordinate2D(latitude : 59.8926134, longitude:30.2782955))

   static let odchevo = Lavka(number:"148", coordinate: CLLocationCoordinate2D(latitude : 59.8926400, longitude:30.2778372))

   static let odchese = Lavka(number:"147", coordinate: CLLocationCoordinate2D(latitude : 59.8927658, longitude:30.2777691))

   static let odcheshe = Lavka(number:"146", coordinate: CLLocationCoordinate2D(latitude : 59.8928756, longitude:30.2779435))

   static let odchepya = Lavka(number:"145", coordinate: CLLocationCoordinate2D(latitude : 59.8928692, longitude:30.2782707))

   static let odcheche = Lavka(number:"144", coordinate: CLLocationCoordinate2D(latitude : 59.8895322, longitude:30.2639081))

   static let odchetri = Lavka(number:"143", coordinate: CLLocationCoordinate2D(latitude : 59.8896558, longitude:30.2612484))

   static let odchedva = Lavka(number:"142", coordinate: CLLocationCoordinate2D(latitude : 60.052540, longitude:30.351102))

   static let odcheod = Lavka(number:"141", coordinate: CLLocationCoordinate2D(latitude : 60.052446, longitude:30.350652))

   static let odcheno = Lavka(number:"140", coordinate: CLLocationCoordinate2D(latitude : 60.052348, longitude:30.350822))

   static let odtride = Lavka(number:"139", coordinate: CLLocationCoordinate2D(latitude : 60.052175, longitude:30.350619))

   static let odtrivo = Lavka(number:"138", coordinate: CLLocationCoordinate2D(latitude : 60.052094, longitude:30.350509))

   static let odtrise = Lavka(number:"137", coordinate: CLLocationCoordinate2D(latitude : 59.966846, longitude:30.258418))

   static let odtrishe = Lavka(number:"136", coordinate: CLLocationCoordinate2D(latitude : 59.967031, longitude:30.257951))

   static let odtripya = Lavka(number:"135", coordinate: CLLocationCoordinate2D(latitude : 59.966900, longitude:30.257674))

   static let odtriche = Lavka(number:"134", coordinate: CLLocationCoordinate2D(latitude : 59.966900, longitude:30.257674))

   static let odtritri = Lavka(number:"133", coordinate: CLLocationCoordinate2D(latitude : 59.930718, longitude:30.356645))

   static let odtridva = Lavka(number:"132", coordinate: CLLocationCoordinate2D(latitude : 59.930727, longitude:30.356606))

   static let odtriod = Lavka(number:"131", coordinate: CLLocationCoordinate2D(latitude : 59.930714, longitude:30.356742))
     
   static let odtrino = Lavka(number:"130", coordinate: CLLocationCoordinate2D(latitude : 59.930825, longitude:30.356866))

   static let oddvade = Lavka(number:"129", coordinate: CLLocationCoordinate2D(latitude : 59.930757, longitude:30.356824))

   static let oddvavo = Lavka(number:"128", coordinate: CLLocationCoordinate2D(latitude : 59.901305, longitude:30.321482))

   static let oddvase = Lavka(number:"127", coordinate: CLLocationCoordinate2D(latitude : 59.901305, longitude:30.321354))

   static let oddvashe = Lavka(number:"126", coordinate: CLLocationCoordinate2D(latitude : 59.901175, longitude:30.321349))

   static let oddvapya = Lavka(number:"125", coordinate: CLLocationCoordinate2D(latitude : 59.901175, longitude:30.321483))

   static let oddvache = Lavka(number:"124", coordinate: CLLocationCoordinate2D(latitude : 59.901307, longitude:30.321482))

   static let oddvatri = Lavka(number:"123", coordinate: CLLocationCoordinate2D(latitude : 59.904260, longitude:30.320115))

   static let oddvadva = Lavka(number:"122", coordinate: CLLocationCoordinate2D(latitude : 59.904266, longitude:30.320199))

   static let oddvaod = Lavka(number:"121", coordinate: CLLocationCoordinate2D(latitude : 59.904274, longitude:30.320273))

   static let oddvano = Lavka(number:"120", coordinate: CLLocationCoordinate2D(latitude : 59.904230, longitude:30.320197))

   static let ododde = Lavka(number:"119", coordinate: CLLocationCoordinate2D(latitude : 59.904224, longitude:30.320122))

   static let ododvo = Lavka(number:"118", coordinate: CLLocationCoordinate2D(latitude : 59.904216, longitude:30.320048))

   static let ododse = Lavka(number:"117", coordinate: CLLocationCoordinate2D(latitude : 59.904207, longitude:30.319974))

   static let ododshe = Lavka(number:"116", coordinate: CLLocationCoordinate2D(latitude : 59.904275, longitude:30.319671))

   static let ododpya = Lavka(number:"115", coordinate: CLLocationCoordinate2D(latitude : 59.904286, longitude:30.319605))

   static let ododche = Lavka(number:"114", coordinate: CLLocationCoordinate2D(latitude : 59.904279, longitude:30.319541))

   static let ododtri = Lavka(number:"113", coordinate: CLLocationCoordinate2D(latitude : 59.904248, longitude:30.319503))

   static let ododdva = Lavka(number:"112", coordinate: CLLocationCoordinate2D(latitude : 59.904248, longitude:30.319503))

   static let ododod = Lavka(number:"111", coordinate: CLLocationCoordinate2D(latitude : 59.904593, longitude:30.312933))

   static let ododno = Lavka(number:"110", coordinate: CLLocationCoordinate2D(latitude : 59.904593, longitude:30.313234))

   static let odnode = Lavka(number:"109", coordinate: CLLocationCoordinate2D(latitude : 59.904598, longitude:30.314238))

   static let odnovo = Lavka(number:"108", coordinate: CLLocationCoordinate2D(latitude : 59.904599, longitude:30.313948))

   static let odnose = Lavka(number:"107", coordinate: CLLocationCoordinate2D(latitude : 59.904478, longitude:30.314185))

   static let odnoshe = Lavka(number:"106", coordinate: CLLocationCoordinate2D(latitude : 59.904469, longitude:30.313983))

   static let odnopya = Lavka(number:"105", coordinate: CLLocationCoordinate2D(latitude : 59.904428, longitude:30.313237))

   static let odnoche = Lavka(number:"104", coordinate: CLLocationCoordinate2D(latitude : 59.904428, longitude:30.313232))

   static let odnotri = Lavka(number:"103", coordinate: CLLocationCoordinate2D(latitude : 59.904486, longitude:30.313154))

   static let odnodva = Lavka(number:"102", coordinate: CLLocationCoordinate2D(latitude : 59.904486, longitude:30.313100))

   static let odnood = Lavka(number:"101", coordinate: CLLocationCoordinate2D(latitude : 59.911968, longitude:30.319042))
    
   static let odnono = Lavka(number:"100", coordinate: CLLocationCoordinate2D(latitude : 59.911956, longitude:30.318937 ))
     
   static let dede = Lavka(number:"99", coordinate: CLLocationCoordinate2D(latitude : 59.911984, longitude:30.318841))
     
   static let devo = Lavka(number:"98", coordinate: CLLocationCoordinate2D(latitude : 59.911956, longitude:30.318937 ))
     
   static let dese = Lavka(number:"97", coordinate: CLLocationCoordinate2D(latitude : 59.912069, longitude:30.318882))
     
   static let deshe = Lavka(number:"96", coordinate: CLLocationCoordinate2D(latitude : 59.912600, longitude:30.318772))
     
   static let depya = Lavka(number:"95", coordinate: CLLocationCoordinate2D(latitude : 59.912598, longitude:30.318844 ))
     
   static let deche = Lavka(number:"94", coordinate: CLLocationCoordinate2D(latitude : 59.912583, longitude:30.319148))
     
   static let detri = Lavka(number:"93", coordinate: CLLocationCoordinate2D(latitude : 59.912579, longitude:30.319199))
     
   static let dedva = Lavka(number:"92", coordinate: CLLocationCoordinate2D(latitude : 59.912575, longitude:30.319253))
     
   static let deod = Lavka(number:"91", coordinate: CLLocationCoordinate2D(latitude : 59.912373, longitude:30.319273))
     
   static let deno = Lavka(number:"90", coordinate: CLLocationCoordinate2D(latitude : 59.912374, longitude:30.319198))
     
   static let vode = Lavka(number:"89", coordinate: CLLocationCoordinate2D(latitude : 59.912373, longitude:30.319128))
     
   static let vovo = Lavka(number:"88", coordinate: CLLocationCoordinate2D(latitude : 59.912355, longitude:30.319054))
     
   static let vose = Lavka(number:"87", coordinate: CLLocationCoordinate2D(latitude : 59.912350, longitude:30.318859))
     
   static let voshe = Lavka(number:"86", coordinate: CLLocationCoordinate2D(latitude : 59.912348, longitude:30.318787))
     
   static let vopya = Lavka(number:"85", coordinate: CLLocationCoordinate2D(latitude : 59.912952, longitude:30.318829))
     
   static let voche = Lavka(number:"84", coordinate: CLLocationCoordinate2D(latitude : 59.912927, longitude:30.318832))
     
   static let votri = Lavka(number:"83", coordinate: CLLocationCoordinate2D(latitude : 59.912901, longitude:30.318837))
     
   static let vodva = Lavka(number:"82", coordinate: CLLocationCoordinate2D(latitude : 59.912876, longitude:30.318835))
     
   static let vood = Lavka(number:"81", coordinate: CLLocationCoordinate2D(latitude : 59.915322, longitude:30.319797))
     
   static let vono = Lavka(number:"80", coordinate: CLLocationCoordinate2D(latitude : 59.839090, longitude:30.247955))
     
   static let sede = Lavka(number:"79", coordinate: CLLocationCoordinate2D(latitude : 59.838808, longitude:30.248482))
     
   static let sevo = Lavka(number:"78", coordinate: CLLocationCoordinate2D(latitude : 59.838583, longitude:30.248893))
     
   static let sese = Lavka(number:"77", coordinate: CLLocationCoordinate2D(latitude : 59.838219, longitude:30.249529))
     
   static let seshe = Lavka(number:"76", coordinate: CLLocationCoordinate2D(latitude : 59.837466, longitude:30.248245))
     
   static let sepya = Lavka(number:"75", coordinate: CLLocationCoordinate2D(latitude : 59.837769, longitude:30.248292))
     
   static let seche = Lavka(number:"74", coordinate: CLLocationCoordinate2D(latitude : 59.838231, longitude:30.248051))
     
   static let setri = Lavka(number:"73", coordinate: CLLocationCoordinate2D(latitude : 59.838428, longitude:30.247686))
     
   static let sedva = Lavka(number:"72", coordinate: CLLocationCoordinate2D(latitude : 59.838710, longitude:30.247024))
     
   static let seod = Lavka(number:"71", coordinate: CLLocationCoordinate2D(latitude : 59.838844, longitude:30.246629))
     
   static let seno = Lavka(number:"70", coordinate: CLLocationCoordinate2D(latitude : 59.839026, longitude:30.245629))
     
   static let shede = Lavka(number:"69", coordinate: CLLocationCoordinate2D(latitude : 59.839569, longitude:30.244816))
     
   static let shevo = Lavka(number:"68", coordinate: CLLocationCoordinate2D(latitude : 59.841848, longitude:30.243700))
     
   static let shese = Lavka(number:"67", coordinate: CLLocationCoordinate2D(latitude : 59.841673, longitude:30.243208))
     
   static let sheshe = Lavka(number:"66", coordinate: CLLocationCoordinate2D(latitude : 59.841566, longitude:30.242904))

   static let shepya = Lavka(number:"65", coordinate: CLLocationCoordinate2D(latitude : 59.841369, longitude:30.242342))
     
   static let sheche = Lavka(number:"64", coordinate: CLLocationCoordinate2D(latitude : 59.840935, longitude:30.241115))
     
   static let shetri = Lavka(number:"63", coordinate: CLLocationCoordinate2D(latitude : 59.841551, longitude:30.239813))
     
   static let shedva = Lavka(number:"62", coordinate: CLLocationCoordinate2D(latitude : 59.841481, longitude:30.239713))
     
   static let sheod = Lavka(number:"61", coordinate: CLLocationCoordinate2D(latitude : 59.842735, longitude:30.237903))
     
   static let sheno = Lavka(number:"60", coordinate: CLLocationCoordinate2D(latitude : 59.844415, longitude:30.237771))
     
   static let pyade = Lavka(number:"59", coordinate: CLLocationCoordinate2D(latitude : 59.844308, longitude:30.237927))
     
   static let pyavo = Lavka(number:"58", coordinate: CLLocationCoordinate2D(latitude : 59.844358, longitude:30.238097))
     
   static let pyase = Lavka(number:"57", coordinate: CLLocationCoordinate2D(latitude : 59.845170, longitude:30.240829))
     
   static let pyashe = Lavka(number:"56", coordinate: CLLocationCoordinate2D(latitude : 59.845085, longitude:30.240990))
     
   static let pyapya = Lavka(number:"55", coordinate: CLLocationCoordinate2D(latitude : 59.845083, longitude:30.240993))
     
   static let pyache = Lavka(number:"54", coordinate: CLLocationCoordinate2D(latitude : 59.844986, longitude:30.241151))
     
   static let pyatri = Lavka(number:"53", coordinate: CLLocationCoordinate2D(latitude : 59.844920, longitude:30.241300))
     
   static let pyadva = Lavka(number:"52", coordinate: CLLocationCoordinate2D(latitude : 59.844823, longitude:30.241443))
     
   static let pyaod = Lavka(number:"51", coordinate: CLLocationCoordinate2D(latitude : 59.844912, longitude:30.240113))
     
   static let pyano = Lavka(number:"50", coordinate: CLLocationCoordinate2D(latitude : 59.844460, longitude:30.241809))
     
   static let chede = Lavka(number:"49", coordinate: CLLocationCoordinate2D(latitude : 59.844371, longitude:30.241962))
     
   static let chevo = Lavka(number:"48", coordinate: CLLocationCoordinate2D(latitude : 59.844278, longitude:30.242097))
     
   static let chese = Lavka(number:"47", coordinate: CLLocationCoordinate2D(latitude : 59.844179, longitude:30.242266))
     
   static let cheshe = Lavka(number:"46", coordinate: CLLocationCoordinate2D(latitude : 59.844087, longitude:30.242389))
     
   static let chepya = Lavka(number:"45", coordinate: CLLocationCoordinate2D(latitude : 59.843846, longitude:30.242375))
     
   static let cheche = Lavka(number:"44", coordinate: CLLocationCoordinate2D(latitude : 59.843755, longitude:30.242522))
     
   static let chetri = Lavka(number:"43", coordinate: CLLocationCoordinate2D(latitude : 59.843649, longitude:30.242670))
     
   static let chedva = Lavka(number:"42", coordinate: CLLocationCoordinate2D(latitude : 59.843553, longitude:30.242826))
     
   static let cheod = Lavka(number:"41", coordinate: CLLocationCoordinate2D(latitude : 59.843452, longitude:30.242974))
     
   static let cheno = Lavka(number:"40", coordinate: CLLocationCoordinate2D(latitude : 59.843363, longitude:30.243127))
     
   static let tride = Lavka(number:"39", coordinate: CLLocationCoordinate2D(latitude : 59.843273, longitude:30.243315))
     
   static let trivo = Lavka(number:"38", coordinate: CLLocationCoordinate2D(latitude : 59.844078, longitude:30.241268))
     
   static let trise = Lavka(number:"37", coordinate: CLLocationCoordinate2D(latitude : 59.844091, longitude:30.241204))
     
   static let trishe = Lavka(number:"36", coordinate: CLLocationCoordinate2D(latitude : 59.844117, longitude:30.241183))
     
   static let tripya = Lavka(number:"35", coordinate: CLLocationCoordinate2D(latitude : 59.844157, longitude:30.241303))
     
   static let triche = Lavka(number:"34", coordinate: CLLocationCoordinate2D(latitude : 59.843605, longitude:30.242033))
     
   static let tritri = Lavka(number:"33", coordinate: CLLocationCoordinate2D(latitude : 59.843637, longitude:30.242144))
     
   static let tridva = Lavka(number:"32", coordinate: CLLocationCoordinate2D(latitude : 59.843017, longitude:30.243096))
     
   static let triod = Lavka(number:"31", coordinate: CLLocationCoordinate2D(latitude : 59.842879, longitude:30.243197))
     
   static let trino = Lavka(number:"30", coordinate: CLLocationCoordinate2D(latitude : 59.842909, longitude:30.243265))
     
   static let dvade = Lavka(number:"29", coordinate: CLLocationCoordinate2D(latitude : 59.842777, longitude:30.243472))
     
   static let dvavo = Lavka(number:"28", coordinate: CLLocationCoordinate2D(latitude : 59.842750, longitude:30.243398))
     
   static let dvase = Lavka(number:"27", coordinate: CLLocationCoordinate2D(latitude : 59.842589, longitude:30.243771))
     
   static let dvashe = Lavka(number:"26", coordinate: CLLocationCoordinate2D(latitude : 59.842603, longitude:30.233215))
     
   static let dvapya = Lavka(number:"25", coordinate: CLLocationCoordinate2D(latitude : 59.842644, longitude:30.233165))
     
   static let dvache = Lavka(number:"24", coordinate: CLLocationCoordinate2D(latitude : 59.842610, longitude:30.233384))
     
   static let dvatri = Lavka(number:"23", coordinate: CLLocationCoordinate2D(latitude : 59.842454, longitude:30.233691))
     
   static let dvadva = Lavka(number:"22", coordinate: CLLocationCoordinate2D(latitude : 59.842433, longitude:30.233723))
     
   static let dvaod = Lavka(number:"21", coordinate: CLLocationCoordinate2D(latitude : 59.842372, longitude:30.233674))
     
   static let dvano = Lavka(number:"20", coordinate: CLLocationCoordinate2D(latitude : 59.842578, longitude:30.231461))
     
   static let odde = Lavka(number:"19", coordinate: CLLocationCoordinate2D(latitude : 59.842475, longitude:30.231528))
     
   static let odvo = Lavka(number:"18", coordinate: CLLocationCoordinate2D(latitude : 59.842124, longitude:30.230652))
     
   static let odse = Lavka(number:"17", coordinate: CLLocationCoordinate2D(latitude : 59.841962, longitude:30.230124))
     
   static let odshe = Lavka(number:"16", coordinate: CLLocationCoordinate2D(latitude : 59.841803, longitude:30.229655))
     
   static let odpya = Lavka(number:"15", coordinate: CLLocationCoordinate2D(latitude : 59.841628, longitude:30.229115))
     
   static let odche = Lavka(number:"14", coordinate: CLLocationCoordinate2D(latitude : 59.840718, longitude:30.228843))
     
   static let odtri = Lavka(number:"13", coordinate: CLLocationCoordinate2D(latitude : 59.840828, longitude:30.229037))
     
   static let oddva = Lavka(number:"12", coordinate: CLLocationCoordinate2D(latitude : 59.840908, longitude:30.228945))
     
   static let odod = Lavka(number:"11", coordinate: CLLocationCoordinate2D(latitude : 59.840989, longitude:30.228844))
     
   static let odno = Lavka(number:"10", coordinate: CLLocationCoordinate2D(latitude : 59.841064, longitude:30.228749))
     
   static let de = Lavka(number:"9", coordinate: CLLocationCoordinate2D(latitude : 59.841036, longitude:30.228640))
     
   static let vo = Lavka(number:"8", coordinate: CLLocationCoordinate2D(latitude : 59.840895, longitude:30.228661))
     
   static let se = Lavka(number:"7", coordinate: CLLocationCoordinate2D(latitude : 59.840780, longitude:30.228681))
     
   static let she = Lavka(number:"6", coordinate: CLLocationCoordinate2D(latitude : 59.838447, longitude:30.226136))
     
   static let pya = Lavka(number:"5", coordinate: CLLocationCoordinate2D(latitude : 59.838427, longitude:30.226047 ))
     
   static let che = Lavka(number:"4", coordinate: CLLocationCoordinate2D(latitude : 59.837897, longitude:30.224212))
     
   static let tri = Lavka(number:"3", coordinate: CLLocationCoordinate2D(latitude : 59.837481, longitude:30.222799))
     
    static let dva = Lavka(number:"2", coordinate: CLLocationCoordinate2D(latitude : 59.837462, longitude:30.222729))
    
    static let od = Lavka(number:"1", coordinate: CLLocationCoordinate2D(latitude : 59.836654, longitude:30.219500))
    
}

