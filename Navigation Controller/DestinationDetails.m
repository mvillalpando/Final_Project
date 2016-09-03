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
@property NSMutableArray *dPrice;
@property NSMutableArray *dPhotos;
@property NSMutableArray *dImages;

@property NSString *stTitleSelected;
@property NSString *stDescriptionSelected;
@property NSString *stPriceSelected;
@property NSString *stPhotoSelected;
@property NSString *stImageSelected;

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
    
    if ([self.MySelection isEqual:@"Café & Té"]){
        self.dTitles               = [[NSMutableArray alloc] initWithObjects: @"Gourmet Café Negro", @"Gourmet Café Latte", @"Gourmet Café Mocha", @"Gourmet Chocolate Caliente", @"Gourmet Café Supreme", @"Premium Gourmet King of Coffee", @"Té Verde Organico", @"Té Rojo Organico", @"Black Ice", nil];
        self.dPhotos               = [[NSMutableArray alloc] initWithObjects: @"black_coffee.jpg", @"cafelatte.jpg", @"cafe_mocha.jpg", @"hot_chocolate.jpg", @"cafe_supreme.jpg", @"King_of_coffee.jpg", @"green_tea.jpg", @"red_tea.jpg", @"black_ice.jpg", nil];
        self.dPrice         = [[NSMutableArray alloc] initWithObjects: @"446.50", @"525.00", @"446.50", @"525.00", @"446.50", @"591.00", @"814.00", @"446.50", @"446.50", nil];
        self.dImages               = [[NSMutableArray alloc] initWithObjects: @"cafe.jpg", @"latte_lentes.jpg", @"vasos_mocha.jpg", @"taza_chocolate.jpg", @"taza_supreme.jpg", @"bolsa_king.jpg", @"jarra_te_verde.jpg", @"mesa_terojo.jpg", @"vaso_backice.jpg", nil];
        self.dDescriptions   = [[NSMutableArray alloc] initWithObjects: @"Experimente en un instante el aroma del café recién hecho con el Café Negro Gourmet de ORGANO™. Los expertos apreciarán su sabor robusto y suave, enriquecido con rico Ganoderma lucidum. Despierte sus sentidos y enriquezca su día con una clásica taza de café tan sabrosa como estimulante.", @"Disfrute en un instante de un delicioso latte al alcance de su mano con el Café Latte Gourmet de ORGANO™. Nuestros delicados granos de café Arábica de gran calidad y el Ganoderma se mezclan con crema y azúcar para conseguir un latte ligero y cremoso, ¡y sin tener que esperar en fila para conseguirlo! Sabroso, rápido y deliciosamente revitalizante, el Café Latte Gourmet es la forma en que deseará empezar cada mañana.", @"La exquisitez y la delicia van de la mano en esta lujosa bebida. Una mezcla de nuestro café de gran calidad con el cacao más delicado y nuestro famoso Ganoderma, el Café Moca Gourmet de ORGANO™ le ofrece el rico sabor con un toque de cacao que esperaría de un moca. Perfecto tras la cena o para darse un lujo a media tarde.", @"Experimente el lujo de nuestro increíblemente conocido chocolate caliente: su gran sabor también está infusionado con nuestro exclusivo Ganoderma lucidum. Su confort, calor y una textura suave como la seda hacen que ésta resulte una taza llena de felicidad para toda la familia.", @"Este ligero, cremoso y suave café gourmet está enriquecido con dos poderosos ingredientes para aportar aún más entusiasmo a su día: nuestro Ganoderma lucidum puro y la apreciada raíz de Panax Ginseng, que en la antigüedad se consideraba tan valiosa que sólo estaba disponible para la élite más privilegiada. El Gignseng añade prestigio a su experiencia cafetera de cada día.", @"Disfrute del lujo de un café orgánico de primera calidad, con el añadido extra de esporas puras y orgánicas de Ganoderma lucidum. Únicamente se seleccionan los granos de café orgánicos más delicados para conseguir este intenso y sabroso café, que le ayudará a mejorar su día. Piense en él como un lujo necesario y un deleite para tomar en cualquier momento.", @"Añada un elemento zen a su día con una relajante taza de nuestro Té Verde Orgánico. Este sabroso té combina las mejores hojas orgánicas de té verde, cargadas de flavonoides, con nuestra reconocida seta orgánica de Ganoderma lucidum para lograr una taza de té realmente revitalizante.", @"Este té revitalizante mezcla las más delicadas hojas de té rojo con dos ingredientes largamente venerados en China: Cordyceps militaris y nuestro distintivo Ganoderma lucidum orgánico. Refrescante, vigorizante y positivamente equilibrador.", @"Refrésquese con un fresco estallido de este té negro helado naturalmente revitalizante. Elaborado con miel pura y natural, y enriquecido con Ganoderma y Guaraná Amazónico, ésta es la bebida ideal para reanimarlo – en cuerpo y alma – en un caluroso día de verano.", nil];
        }
    
        else if ([self.MySelection isEqual:@"Nutracéuticos"]){
        self.dTitles          = [[NSMutableArray alloc] initWithObjects: @"G-Caps", @"Mycecare", @"Enerfense SP", nil];
        self.dPhotos          = [[NSMutableArray alloc] initWithObjects: @"ganoderma_lucidum.jpg", @"lucidum_mycelium.jpg", @"ganoderma_polvo.jpg", nil];
        self.dDescriptions   = [[NSMutableArray alloc] initWithObjects: @"90 capsulas por envase", @"90 capsulas por envase", @"90 capsulas por envase", nil];
        }
    
        else if ([self.MySelection isEqual:@"Cuidado personal"]){
        self.dTitles          = [[NSMutableArray alloc] initWithObjects: @"Premium jabon de belleza G3", @"Pasta dental OG Smile", @"Kit de pasta dental OG ", nil];
        self.dPhotos          = [[NSMutableArray alloc] initWithObjects: @"g3_soap", @"og_smile.png", @"og_smile_set", nil];
        self.dDescriptions   = [[NSMutableArray alloc] initWithObjects: @"3 barras por paquete", @"1 tubo por caja", @"10 tubos por caja", nil];
        }
    
//        else if ([self.MySelection isEqual:@"Suplementos alimenticios"]){
//        self.dTitles          = [[NSMutableArray alloc] initWithObjects: @"Hermosillo", @"Agua Prieta", nil];
//        self.dPhotos          = [[NSMutableArray alloc] initWithObjects: @"Hermosillo.jpg", @"AguaPrieta.jpg", @"SanCarlos.jpg", @"Bahia.jpg", @"Guaymas.jpg", nil];
//        self.dDescriptions   = [[NSMutableArray alloc] initWithObjects: @"", @"", nil];
//        }
    
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
    self.stImageSelected        = self.dImages[indexPath.row];
    self.stPriceSelected        = self.dPrice[indexPath.row];
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
        destination.dImages        = self.stImageSelected;
        destination.dPrice        = self.stPriceSelected;
        
    }
}

@end
