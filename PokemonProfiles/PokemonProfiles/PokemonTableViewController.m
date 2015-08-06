//
//  PokemonTableViewController.m
//  PokemonProfiles
//
//  Created by MacMan on 8/5/15.
//  Copyright (c) 2015 MacManApp. All rights reserved.
//

#import "PokemonTableViewController.h"

@interface PokemonTableViewController ()

{
    NSDictionary *pokemonTypes;
    NSArray *pokemonSectionTitles;
    
    NSArray *pokemonIndexTitles;
   // NSArray *thumbnails;
 
}

@end

@implementation PokemonTableViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
        pokemonTypes =

            @{
            
            @"A" : @[@"Abra",@"Aerodactyl",@"Alakazam",@"Arbok", @"Arcanine",@"Articuno"],
              
            @"B" : @[@"Beedrill",@"Bellsprout",@"Blastoise",@"Bulbasaur",@"Butterfree"],

            @"C" : @[@"Caterpie",@"Chansey",@"Charizard",@"Charmander",@"Charmeleon",@"Clefable",@"Clefairy", @"Cloyster",@"Cubone"],
              
            @"D" : @[@"Dewgong",@"Diglett",@"Ditto",@"Dodrio",@"Doduo", @"Dragonair",@"Dragonite",@"Dratini",@"Drowzee",@"Dugtrio"],
            
            @"E" : @[@"Eevee",@"Ekans",@"Electabuzz",@"Electrode",@"Exeggcute",@"Exeggutor"],
            
            @"F" : @[@"Farfetch'd",@"Fearow",@"Flareon"],
              
            @"G" : @[@"Gastly",@"Gengar",@"Geodude",@"Gloom",@"Golbat",@"Goldeen",@"Golduck",@"Golem",@"Graveler",@"Grimer",@"Growlithe",@"Gyarados"],
              
            @"H" : @[@"Haunter",@"Hitmonchan",@"Hitmonlee",@"Horsea",@"Hypno"],

            @"I" : @[@"Ivysaur"],
              
            @"J" : @[@"Jigglypuff",@"Jolteon",@"Jynx"],
            
            @"K" : @[@"Kabuto",@"Kabutops",@"Kadabra",@"Kakuna",@"Kangaskhan",@"Kingler",@"Koffing",@"Krabby"],
            
              
            @"L" : @[@"Lapras",@"Lickitung"],
              
            @"M" :@[@"Machamp",@"Machoke",@"Machop",@"Magikarp",@"Magmar",@"Magnemite",@"Magneton",@"Mankey",@"Marowak",@"Meowth",@"Metapod",@"Mew",@"Mewtwo",@"Moltres",@"Mr. Mime",@"Muk"],
              
            @"N" : @[@"Nidoking",@"Nidoqueen",@"Nidoran♀",@"Nidoran♂",@"Nidorina",@"Nidorino",@"Ninetales"],
              
            @"O" : @[@"Oddish",@"Omanyte",@"Omastar",@"Onix"],

            @"P" : @[@"Paras",@"Parasect",@"Persian",@"Pidgeot",@"Pidgeotto",@"Pidgey",@"Pikachu",@"Pinsir",@"Poliwag",@"Poliwhirl",@"Poliwrath",@"Ponyta",@"Porygon",@"Primeape",@"Psyduck"],

            @"R" : @[@"Raichu",@"Rapidash",@"Raticate",@"Rattata",@"Rhydon",@"Rhyhorn"],
              
              
            @"S" : @[@"Sandshrew",@"Sandslash",@"Scyther",@"Seadra",@"Seaking",@"Seel",@"Shellder",@"Slowbro",@"Slowpoke",@"Snorlax",@"Spearow",@"Squirtle",@"Starmie",@"Staryu"],

            @"T" : @[@"Tangela",@"Tauros",@"Tentacool",@"Tentacruel"],
            
            @"U" : @[@"Univercat"],
            
              
            @"V" : @[@"Vaporeon",@"Venomoth",@"Venonat",@"Venusaur",@"Victreebel",@"Vileplume",@"Voltorb",@"Vulpix",@"Wartortle"],
                     
            @"W" : @[@"Weedle",@"Weepinbell",@"Weezing",@"Wigglytuff"],
                     
            @"X" : @[@"Univercat"],
                     
            @"Y" : @[@"YCAT"],
                     
                     
            @"Z" : @[@"Zapdos",@"Zubat"]};
    
    
    pokemonSectionTitles = [[pokemonTypes allKeys] sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    
 pokemonIndexTitles = @[@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"J",@"K",@"L",@"M",@"N",@"O",@"P",@"Q",@"R",@"S",@"T",@"U",@"V",@"W",@"X",@"Y",@"Z"];

/*
thumbnails  = [NSArray arrayWithObjects:
              
              @"abra@2x.png",
              @"aerodactyl.png",
              @"alakazam.png",
              @"arbok@2x.png",
              @"arcanine@2x.png",
              @"articuno@2x.png",
              @"beedrill.png",
              @"bellsprout.png",
              @"blastoise.png",
              @"bulbasaur.png",
              @"butterfree.png",
              @"caterpie.png",
              @"chansey.png",
              @"charizard.png",
              @"charmander.png",
              @"charmeleon.png",
              @"clefable.png",
              @"clefairy.png",
              @"cloyster.png",
              @"cubone.png",
              @"dewgong.png",
              @"diglett.png",
              @"ditto.png",
              @"dodrio.png",
              @"doduo.png",
              @"dragonair.png",
              @"dragonite.png",
              @"dratini.png",
              @"drowzee.png",
              @"dugtrio.png",
              @"eevee.png",
              @"ekans.png",
              @"electabuzz.png",
              @"electrode.png",
              @"exeggcute.png",
              @"exeggutor.png",
              @"farfetchd.png",
              @"fearow.png",
              @"flareon.png",
              @"gastly.png",
              @"gengar.png",
              @"geodude.png",
              @"gloom.png",
              @"golbat.png",
              @"goldeen.png",
              @"golduck.png",
              @"golem.png",
              @"graveler.png",
              @"grimer.png",
              @"growlithe.png",
              @"gyarados.png",
              @"haunter.png",
              @"hitmonchan.png",
              @"hitmonlee.png",
              @"horsea.png",
              @"hypno.png",
              @"ivysaur.png",
              @"jigglypuff.png",
              @"jolteon.png",
              @"jynx.png",
              @"kabuto.png",
              @"kabutops.png",
              @"kadabra.png",
              @"kakuna.png",
              @"kangaskhan.png",
              @"kingler.png",
              @"koffing.png",
              @"krabby.png",
              @"lapras.png",
              @"lickitung.png",
              @"machamp.png",
              @"machoke.png",
              @"machop.png",
              @"magikarp.png",
              @"magmar.png",
              @"magnemite.png",
              @"magneton.png",
              @"mankey.png",
              @"marowak.png",
              @"meowth.png",
              @"metapod.png",
              @"mew.png",
              @"mewtwo.png",
              @"moltres.png",
              @"mr-mime.png",
              @"muk.png",
              @"nidoking.png",
              @"nidoqueen.png",
              @"nidoran-f.png",
              @"nidoran.png",
              @"nidorina.png",
              @"nidorino.png",
              @"ninetales.png",
              @"oddish.png",
              @"omanyte.png",
              @"omastar.png",
              @"onix.png",
              @"paras.png",
              @"parasect.png",
              @"persian.png",
              @"pidgeot.png",
              @"pidgeotto.png",
              @"pidgey.png",
              @"pikachu.png",
              @"pinsir.png",
              @"poliwag.png",
              @"poliwhirl.png",
              @"poliwrath.png",
              @"ponyta.png",
              @"porygon.png",
              @"primeape.png",
              @"psyduck.png",
              @"raichu.png",
              @"rapidash.png",
              @"ratatta.png",
              @"raticate.png",
              @"rattata.png",
              @"rhydon.png",
              @"rhyhorn.png",
              @"sandshrew.png",
              @"sandslash.png",
              @"scyther.png",
              @"seadra.png",
              @"seaking.png",
              @"seel.png",
              @"shellder.png",
              @"slowbro.png",
              @"slowpoke.png",
              @"snorlax.png",
              @"spearow.png",
              @"squirtle.png",
              @"starmie.png",
              @"staryu.png",
              @"tangela.png",
              @"tauros.png",
              @"tentacool.png",
              @"tentacruel.png",
              @"vaporeon.png",
              @"venomoth.png",
              @"venonat.png",
              @"venusaur.png",
              @"victreebel.png",
              @"vileplume.png",
              @"voltorb.png",
              @"vulpix.png",
              @"wartortle.png",
              @"weedle.png",
              @"weepinbell.png",
              @"weezing.png",
              @"wigglytuff.png",
              @"zapdos.png",
              @"zubat.png",
              nil];

    
    */
}


-(NSString *)getImageFilename:(NSString *)pokemon
{
    NSString *imageFilename = [[pokemon lowercaseString] stringByReplacingOccurrencesOfString:@" " withString:@"_"];
    imageFilename = [imageFilename stringByAppendingString:@".png"];
    
    return imageFilename;
    
}


//- (void)didReceiveMemoryWarning
//{
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}
//
//#pragma mark - Table view data source
//



-(NSInteger ) numberOfSectionsInTableView:(UITableView *)tableView
  {
      return [pokemonSectionTitles count];
  }


-(NSInteger )tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
  {
      NSString *sectionTitle = [pokemonSectionTitles objectAtIndex:section];
      NSArray *sectionPokemonTypes = [pokemonTypes objectForKey:sectionTitle];
      
      return [sectionPokemonTypes count];
      
  }
  
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [pokemonSectionTitles objectAtIndex:section];
    
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
    {
       
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
   
    NSString *sectionTitle = [pokemonSectionTitles objectAtIndex:indexPath.section];
    NSArray *sectionPokemonTypes = [pokemonTypes objectForKey:sectionTitle];
    NSString *pokemon = [sectionPokemonTypes objectAtIndex:indexPath.row];
  
    cell.textLabel.text = pokemon;
    cell.imageView.image = [UIImage imageNamed:[self getImageFilename:pokemon]];
       return cell;
}

-(NSArray *)sectionInedxTitlesForTableView:(UITableView *)tableView
{
    
      return pokemonIndexTitles;
  }
  

-(NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index

  {
      return [pokemonSectionTitles indexOfObject:title];
  }
  
  
      

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
     //Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
  