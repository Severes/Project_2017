ÿþi f   e x i s t s   ( s e l e c t   *   f r o m   d b o . s y s o b j e c t s   w h e r e   i d   =   o b j e c t _ i d ( N ' [ d b o ] . [ T _ L I N K _ C O N T E X T _ _ U S E R ] ' )   a n d   O B J E C T P R O P E R T Y ( i d ,   N ' I s U s e r T a b l e ' )   =   1 ) 
 
 d r o p   t a b l e   [ d b o ] . [ T _ L I N K _ C O N T E X T _ _ U S E R ] 
 
 G O 
 
 
 
 i f   e x i s t s   ( s e l e c t   *   f r o m   d b o . s y s o b j e c t s   w h e r e   i d   =   o b j e c t _ i d ( N ' [ d b o ] . [ T _ U S E R ] ' )   a n d   O B J E C T P R O P E R T Y ( i d ,   N ' I s U s e r T a b l e ' )   =   1 ) 
 
 d r o p   t a b l e   [ d b o ] . [ T _ U S E R ] 
 
 G O 
 
 
 
 
 
 C R E A T E   T A B L E   [ d b o ] . [ T _ U S E R ]   ( 
 
 	 [ U S E R _ i d ]   [ i n t ]   I D E N T I T Y   ( 1 ,   1 )   N O T   N U L L   , 
 
 	 [ U s e r L o g i n ]   [ v a r c h a r ]   ( 5 0 )   C O L L A T E   S Q L _ L a t i n 1 _ G e n e r a l _ C P 1 _ C I _ A S   N U L L   , 
 
 	 [ U s e r P a s s w o r d ]   [ v a r c h a r ]   ( 5 0 )   C O L L A T E   S Q L _ L a t i n 1 _ G e n e r a l _ C P 1 _ C I _ A S   N U L L   , 
 
 	 [ U s e r F i r s t N a m e ]   [ v a r c h a r ]   ( 5 0 )   C O L L A T E   S Q L _ L a t i n 1 _ G e n e r a l _ C P 1 _ C I _ A S   N U L L   , 
 
 	 [ U s e r L a s t N a m e ]   [ v a r c h a r ]   ( 5 0 )   C O L L A T E   S Q L _ L a t i n 1 _ G e n e r a l _ C P 1 _ C I _ A S   N U L L   , 
 
 	 [ U s e r M a i l ]   [ v a r c h a r ]   ( 5 0 )   C O L L A T E   S Q L _ L a t i n 1 _ G e n e r a l _ C P 1 _ C I _ A S   N U L L   , 
 
 	 [ U s e r L a s t R e f r e s h ]   [ i n t ]   N U L L   , 
 
 	 [ U s e r C o n n e x i o n S t a t e ]   [ v a r c h a r ]   ( 5 0 )   C O L L A T E   S Q L _ L a t i n 1 _ G e n e r a l _ C P 1 _ C I _ A S   N U L L ,   
 
 	 [ U s e r S t y l e ]   [ v a r c h a r ]   ( 5 0 )   C O L L A T E   S Q L _ L a t i n 1 _ G e n e r a l _ C P 1 _ C I _ A S   N U L L 
 
 )   O N   [ P R I M A R Y ] 
 
 G O 
 
 
 
 A L T E R   T A B L E   [ d b o ] . [ T _ U S E R ]   W I T H   N O C H E C K   A D D   
 
 	 C O N S T R A I N T   [ P K _ T _ U S E R ]   P R I M A R Y   K E Y     C L U S T E R E D   
 
 	 ( 
 
 	 	 [ U S E R _ i d ] 
 
 	 )     O N   [ P R I M A R Y ]   
 
 G O 
 
 
 
 
 
 C R E A T E   T A B L E   [ d b o ] . [ T _ L I N K _ C O N T E X T _ _ U S E R ]   ( 
 
 	 [ C O N T E X T _ _ U S E R _ C O N T E X T _ i d r ]   [ i n t ]   N O T   N U L L   , 
 
 	 [ C O N T E X T _ _ U S E R _ U S E R _ i d r ]   [ i n t ]   N O T   N U L L   
 
 )   O N   [ P R I M A R Y ] 
 
 G O 
 
 
 
 A L T E R   T A B L E   [ d b o ] . [ T _ L I N K _ C O N T E X T _ _ U S E R ]   W I T H   N O C H E C K   A D D   
 
 	 C O N S T R A I N T   [ P K _ T _ L I N K _ C O N T E X T _ _ U S E R ]   P R I M A R Y   K E Y     C L U S T E R E D   
 
 	 ( 
 
 	 	 [ C O N T E X T _ _ U S E R _ C O N T E X T _ i d r ] , 
 
 	 	 [ C O N T E X T _ _ U S E R _ U S E R _ i d r ] 
 
 	 )     O N   [ P R I M A R Y ]   
 
 G O 
 
 
 
 A L T E R   T A B L E   [ d b o ] . [ T _ L I N K _ C O N T E X T _ _ U S E R ]   A D D   
 
 	 C O N S T R A I N T   [ F K _ T _ L I N K _ C O N T E X T _ _ U S E R _ T _ E D I P _ C O N T E X T ]   F O R E I G N   K E Y   
 
 	 ( 
 
 	 	 [ C O N T E X T _ _ U S E R _ C O N T E X T _ i d r ] 
 
 	 )   R E F E R E N C E S   [ d b o ] . [ T _ E D I P _ C O N T E X T ]   ( 
 
 	 	 [ C O N T E X T _ i d ] 
 
 	 ) , 
 
 	 C O N S T R A I N T   [ F K _ T _ L I N K _ C O N T E X T _ _ U S E R _ T _ U S E R ]   F O R E I G N   K E Y   
 
 	 ( 
 
 	 	 [ C O N T E X T _ _ U S E R _ U S E R _ i d r ] 
 
 	 )   R E F E R E N C E S   [ d b o ] . [ T _ U S E R ]   ( 
 
 	 	 [ U S E R _ i d ] 
 
 	 ) 
 
 G O 
 
 
 
 I N S E R T   
 
 	 I N T O   [ T _ E D I P _ O B J E C T ]   ( [ O b j e c t L a b e l ] , [ O b j e c t D e s c r i p t i o n ] , [ O b j e c t O r d e r ] , [ O b j e c t P r i m a r y K e y ] , [ O b j e c t T a b l e P r i m a r y K e y ] ) 
 
 	 V A L U E S ( ' U s e r ' , ' U s e r ' , 1 , ' U S E R _ i d ' , ' T _ U S E R ' ) 
 
 
 
 G O 
 
 
 
 
 
 I N S E R T   I N T O   [ T _ E D I P _ A T T R I B U T E _ G R O U P ] 
 
 	 ( [ A T T R I B U T E _ G R O U P _ O B J E C T _ i d r ] , [ A t t r i b u t e G r o u p L a b e l ] , [ A t t r i b u t e G r o u p D e s c r i p t i o n ] , [ A t t r i b u t e G r o u p O r d e r ] ) 
 
 	 V A L U E S ( 1 , ' M a i n ' , ' M a i n ' , 1 ) 
 
 	 
 
 G O 
 
 
 
 I N S E R T   
 
 	 I N T O   T _ E D I P _ A T T R I B U T E   ( 
 
 	 	 A T T R I B U T E _ A T T R I B U T E _ G R O U P _ i d r , 
 
 	 	 A t t r i b u t e L a b e l , 
 
 	 	 A t t r i b u t e N a m e , 
 
 	 	 T a b l e N a m e , 
 
 	 	 S e a r c h T y p e , 
 
 	 	 E d i t T y p e , 
 
 	 	 R e d u c e d V i e w , 
 
 	 	 A t t r i b u t e T y p e , 
 
 	 	 A t t r i b u t e O r d e r , 
 
 	 	 A t t r i b u t e D e s c r i p t i o n , 
 
 	 	 V a l u e s L i s t , 
 
 	 	 E x t e r n a l I n t e r f a c e , 
 
 	 	 A t t r i b u t e L i n k e d P a g e , 
 
 	 	 R e p o s i t o r y L o c a t i o n , 
 
 	 	 F a s t S e a r c h , 
 
 	 	 F i e l d S i z e , 
 
 	 	 M a x L e n g t h , 
 
 	 	 R e a d O n l y , 
 
 	 	 M a n d a t o r y )   
 
 	 V A L U E S   ( 
 
 	 	 1 , 
 
 	 	 ' L o g i n ' , 
 
 	 	 ' U s e r L o g i n ' , 
 
 	 	 ' T _ U S E R ' , 
 
 	 	 ' t e x t ' , 
 
 	 	 ' t e x t ' , 
 
 	 	 1 , 
 
 	 	 ' t e x t ' , 
 
 	 	 1 , 
 
 	 	 ' U s e r   l o g i n ' , 
 
 	 	 N U L L , 
 
 	 	 0 , 
 
 	 	 ' ? a c t i o n = c o n s u l t _ f o r m & d a t a = u s e r ' , 
 
 	 	 N U L L , 
 
 	 	 N U L L , 
 
 	 	 1 0 , 
 
 	 	 5 0 , 
 
 	 	 0 , 
 
 	 	 1 	 	 
 
 	 ) 
 
 	 
 
 G O 
 
 
 
 I N S E R T   
 
 	 I N T O   T _ E D I P _ A T T R I B U T E   ( 
 
 	 	 A T T R I B U T E _ A T T R I B U T E _ G R O U P _ i d r , 
 
 	 	 A t t r i b u t e L a b e l , 
 
 	 	 A t t r i b u t e N a m e , 
 
 	 	 T a b l e N a m e , 
 
 	 	 S e a r c h T y p e , 
 
 	 	 E d i t T y p e , 
 
 	 	 R e d u c e d V i e w , 
 
 	 	 A t t r i b u t e T y p e , 
 
 	 	 A t t r i b u t e O r d e r , 
 
 	 	 A t t r i b u t e D e s c r i p t i o n , 
 
 	 	 V a l u e s L i s t , 
 
 	 	 E x t e r n a l I n t e r f a c e , 
 
 	 	 A t t r i b u t e L i n k e d P a g e , 
 
 	 	 R e p o s i t o r y L o c a t i o n , 
 
 	 	 F a s t S e a r c h , 
 
 	 	 F i e l d S i z e , 
 
 	 	 M a x L e n g t h , 
 
 	 	 R e a d O n l y , 
 
 	 	 M a n d a t o r y )   
 
 	 V A L U E S   ( 
 
 	 	 1 , 
 
 	 	 ' F i r s t   n a m e ' , 
 
 	 	 ' U s e r F i r s t N a m e ' , 
 
 	 	 ' T _ U S E R ' , 
 
 	 	 ' t e x t ' , 
 
 	 	 ' t e x t ' , 
 
 	 	 1 , 
 
 	 	 ' t e x t ' , 
 
 	 	 2 , 
 
 	 	 ' U s e r   F i r s t   n a m e ' , 
 
 	 	 N U L L , 
 
 	 	 0 , 
 
 	 	 N U L L , 
 
 	 	 N U L L , 
 
 	 	 N U L L , 
 
 	 	 1 0 , 
 
 	 	 5 0 , 
 
 	 	 0 , 
 
 	 	 N U L L 	 	 
 
 	 ) 
 
 	 
 
 G O 
 
 
 
 I N S E R T   
 
 	 I N T O   T _ E D I P _ A T T R I B U T E   ( 
 
 	 	 A T T R I B U T E _ A T T R I B U T E _ G R O U P _ i d r , 
 
 	 	 A t t r i b u t e L a b e l , 
 
 	 	 A t t r i b u t e N a m e , 
 
 	 	 T a b l e N a m e , 
 
 	 	 S e a r c h T y p e , 
 
 	 	 E d i t T y p e , 
 
 	 	 R e d u c e d V i e w , 
 
 	 	 A t t r i b u t e T y p e , 
 
 	 	 A t t r i b u t e O r d e r , 
 
 	 	 A t t r i b u t e D e s c r i p t i o n , 
 
 	 	 V a l u e s L i s t , 
 
 	 	 E x t e r n a l I n t e r f a c e , 
 
 	 	 A t t r i b u t e L i n k e d P a g e , 
 
 	 	 R e p o s i t o r y L o c a t i o n , 
 
 	 	 F a s t S e a r c h , 
 
 	 	 F i e l d S i z e , 
 
 	 	 M a x L e n g t h , 
 
 	 	 R e a d O n l y , 
 
 	 	 M a n d a t o r y )   
 
 	 V A L U E S   ( 
 
 	 	 1 , 
 
 	 	 ' L a s t   n a m e ' , 
 
 	 	 ' U s e r L a s t N a m e ' , 
 
 	 	 ' T _ U S E R ' , 
 
 	 	 ' t e x t ' , 
 
 	 	 ' t e x t ' , 
 
 	 	 1 , 
 
 	 	 ' t e x t ' , 
 
 	 	 3 , 
 
 	 	 ' U s e r   l a s t   n a m e ' , 
 
 	 	 N U L L , 
 
 	 	 0 , 
 
 	 	 N U L L , 
 
 	 	 N U L L , 
 
 	 	 N U L L , 
 
 	 	 1 0 , 
 
 	 	 5 0 , 
 
 	 	 0 , 
 
 	 	 N U L L 	 	 
 
 	 ) 
 
 	 
 
 G O 
 
 
 
 I N S E R T   
 
 	 I N T O   T _ E D I P _ A T T R I B U T E   ( 
 
 	 	 A T T R I B U T E _ A T T R I B U T E _ G R O U P _ i d r , 
 
 	 	 A t t r i b u t e L a b e l , 
 
 	 	 A t t r i b u t e N a m e , 
 
 	 	 T a b l e N a m e , 
 
 	 	 S e a r c h T y p e , 
 
 	 	 E d i t T y p e , 
 
 	 	 R e d u c e d V i e w , 
 
 	 	 A t t r i b u t e T y p e , 
 
 	 	 A t t r i b u t e O r d e r , 
 
 	 	 A t t r i b u t e D e s c r i p t i o n , 
 
 	 	 V a l u e s L i s t , 
 
 	 	 E x t e r n a l I n t e r f a c e , 
 
 	 	 A t t r i b u t e L i n k e d P a g e , 
 
 	 	 R e p o s i t o r y L o c a t i o n , 
 
 	 	 F a s t S e a r c h , 
 
 	 	 F i e l d S i z e , 
 
 	 	 M a x L e n g t h , 
 
 	 	 R e a d O n l y , 
 
 	 	 M a n d a t o r y )   
 
 	 V A L U E S   ( 
 
 	 	 1 , 
 
 	 	 ' e - m a i l ' , 
 
 	 	 ' U s e r M a i l ' , 
 
 	 	 ' T _ U S E R ' , 
 
 	 	 ' t e x t ' , 
 
 	 	 ' t e x t ' , 
 
 	 	 1 , 
 
 	 	 ' t e x t ' , 
 
 	 	 4 , 
 
 	 	 ' U s e r   e - m a i l   a d d r e s s ' , 
 
 	 	 N U L L , 
 
 	 	 0 , 
 
 	 	 N U L L , 
 
 	 	 N U L L , 
 
 	 	 N U L L , 
 
 	 	 1 0 , 
 
 	 	 5 0 , 
 
 	 	 0 , 
 
 	 	 N U L L 	 	 
 
 	 ) 
 
 	 
 
 G O 
 
 
 
 I N S E R T   
 
 	 I N T O   T _ E D I P _ A T T R I B U T E   ( 
 
 	 	 A T T R I B U T E _ A T T R I B U T E _ G R O U P _ i d r , 
 
 	 	 A t t r i b u t e L a b e l , 
 
 	 	 A t t r i b u t e N a m e , 
 
 	 	 T a b l e N a m e , 
 
 	 	 S e a r c h T y p e , 
 
 	 	 E d i t T y p e , 
 
 	 	 R e d u c e d V i e w , 
 
 	 	 A t t r i b u t e T y p e , 
 
 	 	 A t t r i b u t e O r d e r , 
 
 	 	 A t t r i b u t e D e s c r i p t i o n , 
 
 	 	 V a l u e s L i s t , 
 
 	 	 E x t e r n a l I n t e r f a c e , 
 
 	 	 A t t r i b u t e L i n k e d P a g e , 
 
 	 	 R e p o s i t o r y L o c a t i o n , 
 
 	 	 F a s t S e a r c h , 
 
 	 	 F i e l d S i z e , 
 
 	 	 M a x L e n g t h , 
 
 	 	 R e a d O n l y , 
 
 	 	 M a n d a t o r y )   
 
 	 V A L U E S   ( 
 
 	 	 1 , 
 
 	 	 ' S t y l e ' , 
 
 	 	 ' U s e r S t y l e ' , 
 
 	 	 ' T _ U S E R ' , 
 
 	 	 ' t e x t ' , 
 
 	 	 ' t e x t ' , 
 
 	 	 1 , 
 
 	 	 ' t e x t ' , 
 
 	 	 5 , 
 
 	 	 ' U s e r   s t y l e ' , 
 
 	 	 N U L L , 
 
 	 	 0 , 
 
 	 	 N U L L , 
 
 	 	 N U L L , 
 
 	 	 N U L L , 
 
 	 	 1 0 , 
 
 	 	 5 0 , 
 
 	 	 0 , 
 
 	 	 N U L L 	 	 
 
 	 ) 
 
 	 
 
 G O 
 
 
 
 I N S E R T   
 
 	 I N T O   [ T _ E D I P _ L I N K _ A T T R I B U T E _ _ C O N T E X T ]   ( [ A T T R I B U T E _ _ C O N T E X T _ A T T R I B U T E _ i d r ] , [ A T T R I B U T E _ _ C O N T E X T _ C O N T E X T _ i d r ] , [ A t t r i b u t e C o n t e x t R e a d M o d e ] , [ A t t r i b u t e C o n t e x t W r i t e M o d e ] ) V A L U E S ( 1 , 1 , 1 , 1 ) 
 
 G O 
 
 I N S E R T   
 
 	 I N T O   [ T _ E D I P _ L I N K _ A T T R I B U T E _ _ C O N T E X T ]   ( [ A T T R I B U T E _ _ C O N T E X T _ A T T R I B U T E _ i d r ] , [ A T T R I B U T E _ _ C O N T E X T _ C O N T E X T _ i d r ] , [ A t t r i b u t e C o n t e x t R e a d M o d e ] , [ A t t r i b u t e C o n t e x t W r i t e M o d e ] ) V A L U E S ( 2 , 1 , 1 , 1 ) 
 
 G O 
 
 I N S E R T   
 
 	 I N T O   [ T _ E D I P _ L I N K _ A T T R I B U T E _ _ C O N T E X T ]   ( [ A T T R I B U T E _ _ C O N T E X T _ A T T R I B U T E _ i d r ] , [ A T T R I B U T E _ _ C O N T E X T _ C O N T E X T _ i d r ] , [ A t t r i b u t e C o n t e x t R e a d M o d e ] , [ A t t r i b u t e C o n t e x t W r i t e M o d e ] ) V A L U E S ( 3 , 1 , 1 , 1 ) 
 
 G O 
 
 I N S E R T   
 
 	 I N T O   [ T _ E D I P _ L I N K _ A T T R I B U T E _ _ C O N T E X T ]   ( [ A T T R I B U T E _ _ C O N T E X T _ A T T R I B U T E _ i d r ] , [ A T T R I B U T E _ _ C O N T E X T _ C O N T E X T _ i d r ] , [ A t t r i b u t e C o n t e x t R e a d M o d e ] , [ A t t r i b u t e C o n t e x t W r i t e M o d e ] ) V A L U E S ( 4 , 1 , 1 , 1 ) 
 
 G O 
 
 I N S E R T   
 
 	 I N T O   [ T _ E D I P _ L I N K _ A T T R I B U T E _ _ C O N T E X T ]   ( [ A T T R I B U T E _ _ C O N T E X T _ A T T R I B U T E _ i d r ] , [ A T T R I B U T E _ _ C O N T E X T _ C O N T E X T _ i d r ] , [ A t t r i b u t e C o n t e x t R e a d M o d e ] , [ A t t r i b u t e C o n t e x t W r i t e M o d e ] ) V A L U E S ( 5 , 1 , 1 , 1 ) 
 
 G O 
 
 
 
 I N S E R T   
 
 	 I N T O   [ T _ E D I P _ L I N K _ A T T R I B U T E _ _ C O N T E X T ]   ( [ A T T R I B U T E _ _ C O N T E X T _ A T T R I B U T E _ i d r ] , [ A T T R I B U T E _ _ C O N T E X T _ C O N T E X T _ i d r ] , [ A t t r i b u t e C o n t e x t R e a d M o d e ] , [ A t t r i b u t e C o n t e x t W r i t e M o d e ] ) V A L U E S ( 1 , 2 , 1 , 1 ) 
 
 G O 
 
 I N S E R T   
 
 	 I N T O   [ T _ E D I P _ L I N K _ A T T R I B U T E _ _ C O N T E X T ]   ( [ A T T R I B U T E _ _ C O N T E X T _ A T T R I B U T E _ i d r ] , [ A T T R I B U T E _ _ C O N T E X T _ C O N T E X T _ i d r ] , [ A t t r i b u t e C o n t e x t R e a d M o d e ] , [ A t t r i b u t e C o n t e x t W r i t e M o d e ] ) V A L U E S ( 2 , 2 , 1 , 1 ) 
 
 G O 
 
 I N S E R T   
 
 	 I N T O   [ T _ E D I P _ L I N K _ A T T R I B U T E _ _ C O N T E X T ]   ( [ A T T R I B U T E _ _ C O N T E X T _ A T T R I B U T E _ i d r ] , [ A T T R I B U T E _ _ C O N T E X T _ C O N T E X T _ i d r ] , [ A t t r i b u t e C o n t e x t R e a d M o d e ] , [ A t t r i b u t e C o n t e x t W r i t e M o d e ] ) V A L U E S ( 3 , 2 , 1 , 1 ) 
 
 G O 
 
 I N S E R T   
 
 	 I N T O   [ T _ E D I P _ L I N K _ A T T R I B U T E _ _ C O N T E X T ]   ( [ A T T R I B U T E _ _ C O N T E X T _ A T T R I B U T E _ i d r ] , [ A T T R I B U T E _ _ C O N T E X T _ C O N T E X T _ i d r ] , [ A t t r i b u t e C o n t e x t R e a d M o d e ] , [ A t t r i b u t e C o n t e x t W r i t e M o d e ] ) V A L U E S ( 4 , 2 , 1 , 1 ) 
 
 G O 
 
 I N S E R T   
 
 	 I N T O   [ T _ E D I P _ L I N K _ A T T R I B U T E _ _ C O N T E X T ]   ( [ A T T R I B U T E _ _ C O N T E X T _ A T T R I B U T E _ i d r ] , [ A T T R I B U T E _ _ C O N T E X T _ C O N T E X T _ i d r ] , [ A t t r i b u t e C o n t e x t R e a d M o d e ] , [ A t t r i b u t e C o n t e x t W r i t e M o d e ] ) V A L U E S ( 5 , 2 , 1 , 1 ) 
 
 G O 
 
 
 
 - -   C r e a t e   u s e r   1   -   3 
 
 I N S E R T   I N T O   [ T _ U S E R ]   ( [ U s e r L o g i n ] , [ U s e r P a s s w o r d ] , [ U s e r F i r s t N a m e ] , [ U s e r L a s t N a m e ] , [ U s e r M a i l ] , [ U s e r L a s t R e f r e s h ] , [ U s e r C o n n e x i o n S t a t e ] , [ U s e r S t y l e ] ) V A L U E S ( ' 1 ' , ' e c c b c 8 7 e 4 b 5 c e 2 f e 2 8 3 0 8 f d 9 f 2 a 7 b a f 3 ' , ' A d m i n ' , ' S u p e r ' , ' ' , 0 , N U L L , N U L L ) 
 
 G O 
 
 
 
 
 
 I N S E R T   I N T O   [ T _ L I N K _ C O N T E X T _ _ U S E R ]   ( [ C O N T E X T _ _ U S E R _ C O N T E X T _ i d r ] , [ C O N T E X T _ _ U S E R _ U S E R _ i d r ] ) V A L U E S ( 2 , 1 ) 
 
 G O 
 
 
 
 