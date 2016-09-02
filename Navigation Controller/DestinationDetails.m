//
//  DestinationDetails.m
//  Navigation Controller
//
//  Created by Mariela Villalpando on 7/1/16.
//  Copyright © 2016 OG. All rights reserved.
//

#import "DestinationDetails.h"
//#import "Description.h"

@interface DestinationDetails()
@property NSMutableArray *dTitles;
@property NSMutableArray *dDescriptions;
@property NSMutableArray *dPhotos;

@property NSString *stTitleSelected;
@property NSString *stDescriptionSelected;
@property NSString *stPhotoSelected;

@end
@implementation DestinationDetails

/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/


- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
    // Do any additional setup after loading the view.
}
//-------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initController {
    /*self.dTitles   = [[NSMutableArray alloc] initWithObjects: @"Guadalajara", @"San Sebastian del Oeste", @"Zapopan", @"Tequila", @"Tapalpa", nil];
     self.dPhotos   = [[NSMutableArray alloc] initWithObjects: @"Guadalajara.png", @"SanSebastian.png", @"Zapopan.jpg", @"Tequila.png", @"Tapalpa.png", nil];
     self.dDescriptions   = [[NSMutableArray alloc] initWithObjects: @"Se localiza en el occidente de México, al centro de Jalisco, en la zona geográfica conocida como Valle de Atemajac. ", @" Se localiza al oeste del estado, en la Región Sierra Occidental. Su extensión territorial es de 1400,13 km2", @"Se localiza en la región centro del estado, en la macro región del Bajío Occidente o Centro Occidente de México", @"El municipio de Tequila está situado en diferentes relieves, tiene pocas tierras planas, a excepción de algunos pequeños valles, su orografía es muy irregular.", @"Tapalpa es un municipio y población del estado de Jalisco, México. Se localiza en la Región Sur, aproximadamente a 118 kilómetros de Guadalajara", nil];*/
    
    if ([self.MySelection isEqual:@"Jalisco"]){
        self.dTitles          = [[NSMutableArray alloc] initWithObjects: @"Guadalajara", @"San Sebastian del Oeste", @"Zapopan", @"Tequila", @"Tapalpa", nil];
        self.dPhotos          = [[NSMutableArray alloc] initWithObjects: @"Guadalajara.png", @"SanSebastian.png", @"Zapopan.jpg", @"Tequila.png", @"Tapalpa.png", nil];
        self.dDescriptions   = [[NSMutableArray alloc] initWithObjects: @"La hermosa ciudad colonial de Guadalajara, es la capital del estado de Jalisco; también es conocida como: la “Ciudad de las Rosas”, “La Perla de Occidente” o “La Perla Tapatía”. La palabra tapatío proviene del vocablo nahuatl “tlapatiotl”, que significa “que vale por tres”, El “tlapatiotl” es el sistema comercial que se utilizaba específicamente en los tianguis de Guadalajara, no en otra parte de México, para el “trueque” o intercambio de productos durante el siglo XVII.", @"Los caminos envueltos en vegetación boscosa y acompañados por perfumes frutales conducen a miradores naturales y sitios de descanso, de aprendizaje o de diversión. Casonas, ex haciendas y casitas coronadas por techos de teja son algunos de los elementos que dan vida a este Pueblo Mágico de pasado minero situado a orillas de la Sierra Madre Occidental.", @"Al abrigo de la infinitamente milagrosa Virgen de Zapopan, la arquitectura y los monumentos históricos de la cabecera municipal explican silenciosamente lo que ocurrió y sigue aconteciendo en la vida de los zapopanos, quienes profesan una fe que viene de siglos atrás y es parte fundamental de su razón de ser. Aquí se concentra la esencia de su identidad y es donde sin esfuerzo alguno se percibe un ambiente diferente, que nos envuelve y transporta lejos de la capital tapatía, mucho más de lo que en realidad estamos.", @"Esta tierra del oro azul se levanta a las faldas del volcán de Tequila y el cañón del Río Grande, entre el paisaje de los cultivos de agave, las antiguas haciendas y las destilerías que fabrican la deliciosa bebida emblema de México. El principal productor del tequila en el mundo, donde todos los sentidos sucumben al dulce aroma de la piña, es una fiesta para el paladar. Además, recorriendo sus estrechas calles empedradas conocerás antiguas leyendas del pueblo y podrás divertirte en sus bares, muchos de ellos “callejeros”.", @"Abrazado por la gran Sierra Madre Occidental, en Jalisco, se encuentra este Pueblo Mágico “tierra  de colores”. El paisaje es de bosques de pino y encino, arroyos de agua cristalina y formaciones  rocosas, que se complementan con las calles empedradas y las casas encaladas de color blanco y  techo de teja roja. Tapalpa conserva un ambiente provinciano que fascina a los visitantes, quienes  también descubrirán en él tradiciones, sabores, clima fresco (con una temperatura media anual de 16°C) y alrededores ideales para disfrutar la naturaleza.", nil];
        }
    
        else if ([self.MySelection isEqual:@"Zacatecas"]){
        self.dTitles          = [[NSMutableArray alloc] initWithObjects: @"Sombrerete", @"Jerez", @"Nochistlán", @"Pinos", @"Teúl de González Ortega", nil];
        self.dPhotos          = [[NSMutableArray alloc] initWithObjects: @"Sombrerete.jpg", @"Jerez.jpg", @"Nochistlan.jpg", @"Pinos.jpg", @"Teul.jpg", nil];
        self.dDescriptions   = [[NSMutableArray alloc] initWithObjects: @"Poco tiempo después de su fundación, este Pueblo Mágico se convirtió en un importante asentamiento minero productor de oro, plata, plomo, estaño y mercurio. La explotación de sus vetas dio vida a uno de los poblados más pintorescos y ricos en tradiciones de la Nueva España, que aún se conservan hasta nuestros días.", @"De calles alegres por la música de la tambora y el repicar de las campanas, en Jerez de García Salinas siempre hay fiesta. Sus edificios neoclásicos son testigos de las historias que se han tejido desde su fundación. Esta tierra estuvo protegida por el político Francisco García Salinas e inspiró bellos versos del poeta Ramón López Velarde.", @"En este poblado rodeado de cerros, donde abundan los nopales llenos de tuna y grana, fundaron los españoles la primera Guadalajara en 1532. Con el tiempo, la identidad de Nochistlán fue conformándose a través de personajes como Francisco Tenamaxtle, de romerías dispuestas a adorar a la Virgen de Toyahua y de músicos tocando sones y jarabes que hacen de éste, un lugar lleno de algarabía y fiesta a lo largo del año.", @"Aunque su nombre evoca a aquellos frondosos árboles que cubrían la abrupta geografía de la región a finales del siglo XVI, la imagen característica de Pinos es una docena de chacuacos o chimeneas que parecen “como emerger de entre las viejas construcciones virreinales y las vetustas haciendas en donde se beneficiaban los metales en aquellos tiempos de bonanza minera”.", @"Custodiado por gárgolas de cantera, casonas, naranjos e impecables calzadas empedradas, Teúl de González Ortega da la bienvenida con un paisaje en el que el tiempo es amigable, digno de una pintura. Aquí el campo es fértil para sembrar el agave azul que culmina con la preparación del mezcal, poderosa bebida que no falta en las festividades. Vale la pena visitar este Pueblo Mágico al sur de la entidad zacatecana por sus edificaciones del siglo XVIII; para conocer sus fábricas de mezcal y probar las exquisitas cremas de agave.", nil];
        }
    
        else if ([self.MySelection isEqual:@"Sinaloa"]){
        self.dTitles          = [[NSMutableArray alloc] initWithObjects: @"Los Mochis", @"Guasave", @"Mazatlan", @"Culiacan", @"El Fuerte", nil];
        self.dPhotos          = [[NSMutableArray alloc] initWithObjects: @"Mochis.jpg", @"Guasave.jpg", @"Mazatlan.jpg", @"Culiacan.jpg", @"Fuerte.jpg", nil];
        self.dDescriptions   = [[NSMutableArray alloc] initWithObjects: @"El ferrocarril Chihuahua-Pacífico, mejor conocido como El Chepe, comienza y finaliza su recorrido en una ciudad de calles limpias, anchas y arboladas: Los Mochis. En este destino sinaloense puedes practicar ecoturismo, visitar un interesante museo que ofrece un vistazo al pasado de la región y deleitarte con una gran variedad de platillos preparados con mariscos frescos.", @"En sus 50 kilómetros de litoral se localiza el sistema lagunario Navachiste, que cuenta con un espejo de agua de 19 400 hectáreas, y es considerado uno de los ecosistemas de mayor riqueza en flora y fauna. Siete de las comunidades se dedican a la pesca, y existen sesenta y nueve granjas acuícolas donde se cría el camarón en gran escala. La ciudad de Guasave no tenía hotel, por lo que sus habitantes, con el entusiasmo y la pujanza que le son característicos, empezaron la construcción del que hoy es el simpático y funcional hotel El Sembrador. Desde Guasave se puede ir a las ruinas de las antiguas misiones jesuitas de El Nío y Pueblo Viejo.", @"Disfruta del sol, la playa y los bellos paisajes que ofrece este tradicional puerto, ubicado al sur del estado de Sinaloa. Aquí podrás tanto relajarte, como disfrutar de sus atractivos culturales o divertirte al ritmo de su famoso carnaval.", @"Culiacán es la ciudad más poblada y extensa del estado de Sinaloa, fue fundada el 29 de septiembre de 1531 por el Conquistador Español Nuño Beltrán de Guzmán. El primer trazo de la ciudad lo realizó el Arquitecto Luis F. Molina.", @"Este Pueblo Mágico está situado a 115 msnm y vale la pena visitarlo por sus danzas indígenas; por su sobresaliente arquitectura colonial y decimonónica; y por su gastronomía ribereña.", nil];
        }
    
        else if ([self.MySelection isEqual:@"Sonora"]){
        self.dTitles          = [[NSMutableArray alloc] initWithObjects: @"Hermosillo", @"Agua Prieta", @"San Carlos", @"Bahia de Kino", @"Guaymas", nil];
        self.dPhotos          = [[NSMutableArray alloc] initWithObjects: @"Hermosillo.jpg", @"AguaPrieta.jpg", @"SanCarlos.jpg", @"Bahia.jpg", @"Guaymas.jpg", nil];
        self.dDescriptions   = [[NSMutableArray alloc] initWithObjects: @"Capital del estado desde 1879, Hermosillo ha alcanzado un desarrollo impresionante, al combinar en su entorno la actividad industrial, agrícola y ganadera, firmemente respaldada por la tenacidad y la frescura de su gente.", @"Agua Prieta es una ciudad mexicana del estado mexicano de Sonora ubicada en la frontera norte de México. Es cabecera municipal del municipio del mismo nombre, el Municipio de Agua Prieta, cuenta con una población de 77,254 habitantes, lo que la convierte en la séptima ciudad más poblada de éste estado.", @"Transitando por la carretera federal 15, el viajero se puede dar cuenta de lo que el hombre es capaz de realizar para doblegar a la naturaleza en beneficio de sí mismo, de la comunidad a la que pertenece: el desierto ha dejado paso a tierras fértiles. Colosales viñedos, plantíos de frutales, garbanzo, sorgo, trigo se extienden hasta formar horizonte. Allí, en Sonora, se capta fácilmente lo que verdaderamente significa inmenso.", @"En esta playa conocerá la reserva ecológica de Isla Tiburón, donde habitan especies en peligro de extinción como la tortuga del desierto, el borrego cimarrón, el venado bura y el venado cola blanca.", @"Lo que fuera una pequeña misión en las cercanías del lugar se convirtió, al correr de los años, en una ciudad que conserva el abolengo de los viejos tiempos. Conoce uno de los encantos de Sonora.", nil];
        }
    
        else if ([self.MySelection isEqual:@"Quintana Roo"]){
        self.dTitles          = [[NSMutableArray alloc] initWithObjects: @"Cancun", @"Cozumel", @"Playa del Carmen", @"Tulum", @"Isla Mujeres", nil];
        self.dPhotos          = [[NSMutableArray alloc] initWithObjects: @"Cancun.jpg", @"Cozumel.jpg", @"Playa.jpg", @"Tulum.jpg", @"Isla.jpg", nil];
        self.dDescriptions   = [[NSMutableArray alloc] initWithObjects: @"Ubicado en Quintana Roo, este destino playero es la principal puerta de entrada a los secretos del Mundo Maya y a las maravillas naturales del Mar Caribe. Aguas azul turquesa, vestigios prehispánicos, diversión nocturna y emocionantes parques ecoturísticos son parte de los atractivos que te esperan en Cancún.", @"En Cozumel, o tierra de golondrinas, también descubrirás vestigios mayas y hoy se posiciona como un destino ideal para descansar, bucear en su maravilloso arrecife y hacer muy buenas compras.", @"La pequeña villa de pescadores que en un principio fue Playa del Carmen es ahora el destino más importante de la Riviera Maya, con un crecimiento notable durante los últimos 15 años (de 30,000 habitantes a 170,000). Aún con proyección de desarrollo, los pobladores aseguran que quien ha dado vida al municipio es la Quinta Avenida, la arteria principal que continúa expandiéndose.", @"Ubicada en un acantilado que mira al mar Caribe, Tulum es un Pueblo Mágico y una zona arqueológica única en el mundo, dotada de paisajes de ensueño. ", @"El centro de Isla Mujeres cuenta con numerosos establecimientos donde lo mismo se pueden encontrar trajes de baño y bronceadores, que artesanías y los famosos souvenirs del lugar entre los que destacan: playeras, gorras y hasta cocos grabados con el nombre del visitantes.", nil];
    }
    }
/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dTitles.count;
    
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 190;
}
//-------------------------------------------------------------------------------
-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    //1. Setup the CATransform3D structure
    CATransform3D rotation;
    rotation = CATransform3DMakeRotation( (90.0*M_PI)/180, 0.0, 0.7, 0.4);
    rotation.m34 = 1.0/ -600;
    
    //2. Define the initial state (Before the animation)
    cell.layer.shadowColor = [[UIColor blackColor]CGColor];
    cell.layer.shadowOffset = CGSizeMake(10, 10);
    cell.alpha = 0;
    
    cell.layer.transform = rotation;
    cell.layer.anchorPoint = CGPointMake(0, 0.5);
    
    //3. Define the final state (After the animation) and commit the animation
    [UIView beginAnimations:@"rotation" context:NULL];
    [UIView setAnimationDuration:0.4];
    cell.layer.transform = CATransform3DIdentity;
    cell.alpha = 1;
    cell.layer.shadowOffset = CGSizeMake(0, 0);
    
    //Reassure that cell its in its place (WaGo)
    cell.frame = CGRectMake(0, cell.frame.origin.y, cell.frame.size.width, cell.frame.size.height);
    [UIView commitAnimations];
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    cellDestinations *cell = (cellDestinations *)[tableView dequeueReusableCellWithIdentifier:@"cellDestinations"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"cellDestinations" bundle:nil] forCellReuseIdentifier:@"cellDestinations"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellDestinations"];
    }
    //Fill cell with info from arrays
    cell.lblCity.text = self.dTitles[indexPath.row];
    cell.lblDescription.text = self.dDescriptions[indexPath.row];
    cell.imgDestinations.image = [UIImage imageNamed:self.dPhotos[indexPath.row]];
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    self.stTitleSelected        = self.dTitles[indexPath.row];
    self.stDescriptionSelected  = self.dDescriptions[indexPath.row];
    self.stPhotoSelected        = self.dPhotos[indexPath.row];
    [self performSegueWithIdentifier:@"Description" sender:self];
}
/**********************************************************************************************/
#pragma mark - Navigation
/**********************************************************************************************/

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.destinationViewController isKindOfClass:[DescriptionCity class]]) {
        DescriptionCity *destination     = [segue destinationViewController];
        destination.dTitles        = self.stTitleSelected;
        destination.dDescriptions  = self.stDescriptionSelected;
        destination.dPhotos        = self.stPhotoSelected;
        
    }
}

@end
