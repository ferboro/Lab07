//
//  SecondDisplay.m
//  Lab05
//
//  Created by Fer on 6/30/16.
//  Copyright © 2016 Fer. All rights reserved.
//

#import "SecondDisplay.h"

@interface SecondDisplay ()

@property NSMutableArray *destinationTitles;
@property NSMutableArray *destinationDescriptions;
@property NSMutableArray *destinationPhotos;

@property NSString *stTitleSelected;
@property NSString *stDescriptionSelected;
@property NSString *stPhotoSelected;
@end

@implementation SecondDisplay
/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
}
//-------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//-------------------------------------------------------------------------------
- (void)initController {
    //self.lblDestinationTitle.text          = self.destinationTitle;
    if([self.destinationTitle  isEqual: @"Jalisco"])
    {
        self.destinationTitles  = [[NSMutableArray alloc] initWithObjects: @"Chapala", @"Mazamitla", @"Tapalpa", @"Puerto Vallarta", @"Tequila", nil];
        self.destinationPhotos          = [[NSMutableArray alloc] initWithObjects: @"chapala.png", @"mazamitla.png", @"tapalpa.png", @"puertovallarta.png", @"tequila.png", nil];
        self.destinationDescriptions   = [[NSMutableArray alloc] initWithObjects: @"Ven y disfruta de Chapala", @"Ven y disfruta de Mazamitla", @"Ven y disfruta de Tapalpa", @"Ven y disfruta de Puerto Vallarta", @"Ven y disfruta de Tequila", nil];
    }
    else if ([self.destinationTitle  isEqual: @"Quintana Roo"])
    {
    self.destinationTitles          = [[NSMutableArray alloc] initWithObjects: @"Bacalar", @"Cozumel", @"Isla Mujeres", @"Puerto Morelos", @"Tulum", nil];
    self.destinationPhotos          = [[NSMutableArray alloc] initWithObjects: @"bacalar.png", @"cozumel.png", @"islamujeres.png", @"puertomorelos.png", @"tulum.png", nil];
    self.destinationDescriptions   = [[NSMutableArray alloc] initWithObjects: @"Ven y disfruta de Bacalar", @"Ven y disfruta de Cozumel", @"Ven y disfruta de Isla Mujeres", @"Ven y disfruta de Puerto Morelos", @"Ven y disfruta de Tulum", nil];
    }
    else if ([self.destinationTitle  isEqual: @"Oaxaca"])
    {
        self.destinationTitles          = [[NSMutableArray alloc] initWithObjects: @"Mazunte", @"Pluma Hidalgo", @"Teposcolula", @"Santa Catarina", @"Tilcajete", nil];
        self.destinationPhotos          = [[NSMutableArray alloc] initWithObjects: @"mazunte.png", @"plumahidalgo.png", @"sanpabloteposcolula.png", @"santacatarina.png", @"tilcajete.png", nil];
        self.destinationDescriptions   = [[NSMutableArray alloc] initWithObjects: @"Ven y disfruta de Mazunte", @"Ven y disfruta de Pluma Hidalgo", @"Ven y disfruta de Teposcolula", @"Ven y disfruta de Santa Catarina", @"Ven y disfruta de Tilcajete", nil];
    }
    else if ([self.destinationTitle  isEqual: @"Chiapas"])
    {
        self.destinationTitles          = [[NSMutableArray alloc] initWithObjects: @"Chiapa de Corzo", @"Comitan", @"Palenque", @"San Cristobal", @"Tapachula", nil];
        self.destinationPhotos          = [[NSMutableArray alloc] initWithObjects: @"chiapadecorzo.png", @"comitandedominguez.png", @"palenque.png", @"sancristobal.png", @"tapachula.png", nil];
        self.destinationDescriptions   = [[NSMutableArray alloc] initWithObjects: @"Ven y disfruta de Chiapa de Corzo", @"Ven y disfruta de Comitan", @"Ven y disfruta de Palenque", @"Ven y disfruta de San Cristobal", @"Ven y disfruta de Tapachula", nil];
    }
    else
    {
        //Sonora
        self.destinationTitles          = [[NSMutableArray alloc] initWithObjects: @"Ciudad Obregon", @"Guaymas", @"Hermosillo", @"Navojoa", @"Puerto Penasco", nil];
        self.destinationPhotos          = [[NSMutableArray alloc] initWithObjects: @"cajeme.png", @"guaymas.png", @"hermosillo.png", @"navojoa.png", @"puertopenasco.png", nil];
        self.destinationDescriptions   = [[NSMutableArray alloc] initWithObjects: @"Ven y disfruta de Ciudad Obregon", @"Ven y disfruta de Guaymas", @"Ven y disfruta de Hermosillo", @"Ven y disfruta de Navojoa", @"Ven y disfruta de Puerto Pensaco", nil];
    
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
    return self.destinationTitles.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 190;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    cellHome *cell = (cellHome *)[tableView dequeueReusableCellWithIdentifier:@"cellHome"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"cellHome" bundle:nil] forCellReuseIdentifier:@"cellHome"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellHome"];
    }
    //Fill cell with info from arrays
    cell.lblDestinationTitle.text   = self.destinationTitles[indexPath.row];
    cell.lblDescription.text        = self.destinationDescriptions[indexPath.row];
    cell.imgDestination.image       = [UIImage imageNamed:self.destinationPhotos[indexPath.row]];
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    self.stTitleSelected        = self.destinationTitles[indexPath.row];
    self.stDescriptionSelected  = self.destinationDescriptions[indexPath.row];
    self.stPhotoSelected        = self.destinationPhotos[indexPath.row];
    [self performSegueWithIdentifier:@"DestinationDetails" sender:self];
}
/**********************************************************************************************/
#pragma mark - Navigation
/**********************************************************************************************/
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.destinationViewController isKindOfClass:[DestinationDetails class]]) {
        DestinationDetails *destination     = [segue destinationViewController];
        destination.destinationTitle        = self.stTitleSelected;
        destination.destinationDescription  = self.stDescriptionSelected;
        destination.destinationPhoto        = self.stPhotoSelected;
        
    }
}

@end
