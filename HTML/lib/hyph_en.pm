#!/usr/local/bin/perl
##*****************************************************************************
## $Id: hyph_en.pm,v 1.1 2010-05-31 04:01:54 gene Exp $
##*****************************************************************************
## Author: Gerd Neugebauer
##=============================================================================

=head1 NAME

hyph_en.pm - ...

=head1 SYNOPSIS

hyph_en.pm

=head1 DESCRIPTION

=head1 Attributes

=head1 Methods

=head1 AUTHOR

Gerd Neugebauer

=head1 BUGS

=over 4

=item *

...

=back

=cut

#------------------------------------------------------------------------------
package hyph_en;

use strict;
use Exporter;
our @ISA       = qw(Exporter);
our @EXPORT    = qw(hyph);
our @EXPORT_OK = qw(hyph);

#------------------------------------------------------------------------------
# Variable:	$VERSION
# Description:	
#
our $VERSION = ('$Revision: 1.1 $ ' =~ m/[0-9.]+/ ? $& : '0.0' );

my %hyph	  = (
  'abbreviate'	=> 'abbre&shy;vi&shy;ate',
  'according'	=> 'accor&shy;ding',
  'activated'	=> 'ac&shy;ti&shy;va&shy;ted',
  'activities'	=> 'ac&shy;ti&shy;vi&shy;ties',
  'additional'	=> 'addi&shy;ti&shy;o&shy;nal',
  'after'	=> 'af&shy;ter',
  'afterwards'	=> 'after&shy;wards',
  'algorithm'	=> 'al&shy;go&shy;rithm',
  'Algorithm'	=> 'Al&shy;go&shy;rithm',
  'already'	=> 'al&shy;ready',
  'alternative'	=> 'alter&shy;native',
  'Alternatively'	=> 'Alter&shy;na&shy;tive&shy;ly',
  'Analogously'	=> 'Ana&shy;logous&shy;ly',
  'anchor'	=> 'an&shy;chor',
  'anyone'	=> 'any&shy;one',
  'arbitrary'	=> 'ar&shy;bi&shy;tra&shy;ry',
  'architecture-dependent'	=> 'archi&shy;tec&shy;ture-de&shy;pen&shy;dent',
  'architecture-independent'	=> 'archi&shy;tec&shy;ture-in&shy;de&shy;pen&shy;dent',
  'arguments'	=> 'ar&shy;gu&shy;ments',
  'associated'	=> 'asso&shy;cia&shy;ted',
  'author'	=> 'au&shy;thor',
  'Author'	=> 'Au&shy;thor',
  'authors'	=> 'au&shy;thors',
  'backslash'	=> 'back&shy;slash',
  'backward'	=> 'back&shy;ward',
  'because'	=> 'be&shy;cause',
  'before'	=> 'be&shy;fore',
  'beginning'	=> 'begin&shy;ning',
  'behavior'	=> 'be&shy;havior',
  'Beside'	=> 'Be&shy;side',
  'between'	=> 'be&shy;tween',
  'bibliographic'	=> 'bib&shy;lio&shy;graph&shy;ic',
  'bibliographies' => 'bib&shy;lio&shy;gra&shy;phies',
  'bibtexing\''	=> 'bibtex&shy;ing\'',
  'BibTool'	=> 'Bib&shy;Tool',
  'BibTool'	  => 'Bib&shy;Tool',
  'carefully'	=> 'care&shy;fully',
  'certain'	=> 'cer&shy;tain',
  'Certain'	=> 'Cer&shy;tain',
  'character'	=> 'cha&shy;rac&shy;ter',
  'characterizing'	=> 'cha&shy;rac&shy;teri&shy;zing',
  'characters'	=> 'cha&shy;rac&shy;ters',
  'checking'	=> 'check&shy;ing',
  'combined'	=> 'com&shy;bined',
  'command'	=> 'com&shy;mand',
  'command'	  => 'com&shy;mand',
  'Command'	=> 'Com&shy;mand',
  'Command'	  => 'Com&shy;mand',
  'commands'	=> 'com&shy;mands',
  'comment'	=> 'com&shy;ment',
  'comments'	=> 'com&shy;ments',
  'comments'	  => 'com&shy;ments',
  'Company'	  => 'Com&shy;pa&shy;ny',
  'compilation'	=> 'com&shy;pi&shy;la&shy;tion',
  'compilation'	  => 'com&shy;pi&shy;la&shy;tion',
  'compile'	=> 'com&shy;pile',
  'completely'	=> 'com&shy;plete&shy;ly',
  'Computer'	=> 'Com&shy;pu&shy;ter',
  'condition'	=> 'con&shy;di&shy;tion',
  'configuration' => 'con&shy;fi&shy;gu&shy;ra&shy;tion',
  'configuration'	=> 'con&shy;fi&shy;gu&shy;ra&shy;tion',
  'configured'	=> 'con&shy;figured',
  'confused'	=> 'con&shy;fused',
  'conservative'	=> 'con&shy;ser&shy;va&shy;tive',
  'considered'	=> 'con&shy;si&shy;dered',
  'consisting'	=> 'con&shy;sis&shy;ting',
  'consists'	=> 'con&shy;sists',
  'constant'	=> 'con&shy;stant',
  'Constant'	=> 'Con&shy;stant',
  'Constant'	  => 'Con&shy;stant',
  'construction'	=> 'con&shy;struc&shy;tion',
  'constructions'	=> 'con&shy;struc&shy;tions',
  'contain'	=> 'con&shy;tain',
  'contained'	=> 'con&shy;tained',
  'containing'	=> 'con&shy;tain&shy;ing',
  'contains'	=> 'con&shy;tains',
  'contains'	  => 'con&shy;tains',
  'contents'	=> 'con&shy;tents',
  'context'	=> 'con&shy;text',
  'contrast'	=> 'con&shy;trast',
  'Contributing'  => 'Con&shy;tri&shy;bu&shy;ting',
  'Contributing'	=> 'Con&shy;tri&shy;bu&shy;ting',
  'controlled'	=> 'con&shy;trolled',
  'convention'	=> 'con&shy;ven&shy;tion',
  'convention'	  => 'con&shy;ven&shy;tion',
  'Correctly'	=> 'Correct&shy;ly',
  'Correctly'	  => 'Correct&shy;ly',
  'corresponding'	=> 'corres&shy;pon&shy;ding',
  'counterpart'	=> 'counter&shy;part',
  'counterparts'	=> 'counter&shy;parts',
  'crossreferenced'	=> 'cross&shy;refer&shy;enced',
  'Crossreferenced'	=> 'Cross&shy;refer&shy;enced',
  'databases'	=> 'data&shy;bases',
  'deactivating'	=> 'de&shy;acti&shy;va&shy;ting',
  'default'	=> 'de&shy;fault',
  'default'	  => 'de&shy;fault',
  'Default'	=> 'De&shy;fault',
  'Default'	  => 'De&shy;fault',
  'define'	=> 'de&shy;fine',
  'Define'	=> 'De&shy;fine',
  'definition'	=> 'de&shy;fi&shy;ni&shy;tion',
  'definitions'	=> 'de&shy;fi&shy;ni&shy;tions',
  'deleted'	=> 'de&shy;le&shy;ted',
  'deleted'	  => 'de&shy;le&shy;ted',
  'delete'	=> 'de&shy;lete',
  'delete'	  => 'de&shy;lete',
  'Delete'	=> 'De&shy;lete',
  'deletes'	=> 'de&shy;letes',
  'Deleting'	=> 'De&shy;le&shy;ting',
  'Deleting'	  => 'De&shy;le&shy;ting',
  'delimiters'	=> 'de&shy;limi&shy;ters',
  'delimiting'	=> 'de&shy;limi&shy;ting',
  'depending'	=> 'de&shy;pen&shy;ding',
  'described'	=> 'de&shy;scribed',
  'described'	  => 'de&shy;scribed',
  'describe'	=> 'de&shy;scribe',
  'description'	=> 'de&shy;scrip&shy;tion',
  'designing\''	=> 'de&shy;signing\'',
  'desirable'	=> 'de&shy;sirable',
  'detail'	=> 'de&shy;tail',
  'details'	=> 'de&shy;tails',
  'determined'	=> 'de&shy;ter&shy;mined',
  'Determine'	=> 'De&shy;ter&shy;mine',
  'determines'	=> 'de&shy;term&shy;ines',
  'difference'	=> 'differ&shy;ence',
  'difference'	  => 'differ&shy;ence',
  'different'	=> 'differ&shy;ent',
  'differently'	=> 'differ&shy;ent&shy;ly',
  'directories'	=> 'di&shy;rec&shy;to&shy;ries',
  'directory'	=> 'di&shy;rec&shy;to&shy;ry',
  'disable'	=> 'dis&shy;able',
  'disambiguating'	=> 'dis&shy;ambi&shy;guating',
  'disambiguation'	=> 'dis&shy;ambi&shy;guation',
  'discard'	=> 'dis&shy;card',
  'Discouraged'	=> 'Dis&shy;couraged',
  'disjunctive'	=> 'dis&shy;junc&shy;tive',
  'distinguish'	=> 'dis&shy;tinguish',
  'distributed'	=> 'dis&shy;tri&shy;bu&shy;ted',
  'division'	=> 'di&shy;vi&shy;sion',
  'documentation'	=> 'do&shy;cu&shy;men&shy;ta&shy;tion',
  'document'	=> 'do&shy;cu&shy;ment',
  'Document'	=> 'Do&shy;cu&shy;ment',
  'documents'	=> 'do&shy;cu&shy;ments',
  'during'	=> 'du&shy;ring',
  'during'	  => 'du&shy;ring',
  'During'	=> 'Du&shy;ring',
  'easily'	=> 'easi&shy;ly',
  'enabled'	=> 'en&shy;abled',
  'enabled'	  => 'en&shy;abled',
  'Enable'	=> 'En&shy;able',
  'enables'	=> 'en&shy;ables',
  'encapsulating'	=> 'en&shy;cap&shy;su&shy;la&shy;ting',
  'enclosed'	=> 'en&shy;closed',
  'enclosed'	  => 'en&shy;closed',
  'enclose'	=> 'en&shy;close',
  'Enclose'	=> 'En&shy;close',
  'ending'	=> 'end&shy;ing',
  'ending'	  => 'end&shy;ing',
  'environment'	=> 'en&shy;vi&shy;ron&shy;ment',
  'epsilon'	=> 'epsi&shy;lon',
  'equality'	=> 'equa&shy;li&shy;ty',
  'escaping'	=> 'escap&shy;ing',
  'escaping'	  => 'escap&shy;ing',
  'evaluated'	=> 'evalu&shy;ated',
  'Evaluate'	=> 'Eval&shy;uate',
  'evaluate'	=> 'evalu&shy;ate',
  'exact'	=> 'ex&shy;act',
  'exact'	  => 'ex&shy;act',
  'example'	=> 'ex&shy;ample',
  'executable'	=> 'exe&shy;cutable',
  'existing'	=> 'exis&shy;ting',
  'expanded'	=> 'ex&shy;panded',
  'expand'	=> 'ex&shy;pand',
  'expand'	  => 'ex&shy;pand',
  'Expand'	=> 'Ex&shy;pand',
  'Expanding'	=> 'Ex&shy;pand&shy;ing',
  'Expanding'	  => 'Ex&shy;pand&shy;ing',
  'expansion'	=> 'ex&shy;pansion',
  'experimental'	=> 'ex&shy;peri&shy;men&shy;tal',
  'explain'	=> 'ex&shy;plain',
  'explicitly'	=> 'ex&shy;pli&shy;cit&shy;ly',
  'exploit'	=> 'ex&shy;ploit',
  'expression'	=> 'ex&shy;pression',
  'expression'	  => 'ex&shy;pression',
  'expression"'	=> 'ex&shy;pression"',
  'Expression'	=> 'Ex&shy;pression',
  'Expression'	  => 'Ex&shy;pression',
  'expressions'	=> 'ex&shy;pressions',
  'Expressions'	=> 'Ex&shy;pressions',
  'extended'	=> 'ex&shy;tended',
  'extension'	=> 'ex&shy;ten&shy;sion',
  'extension'	  => 'ex&shy;ten&shy;sion',
  'extract'	=> 'ex&shy;tract',
  'extract'	  => 'ex&shy;tract',
  'Extract'	=> 'Ex&shy;tract',
  'Extracting'	=> 'Ex&shy;tract&shy;ing',
  'Extracting'	  => 'Ex&shy;tract&shy;ing',
  'feedback'	=> 'feed&shy;back',
  'Forget'	=> 'For&shy;get',
  'format'	=> 'for&shy;mat',
  'Format'	=> 'For&shy;mat',
  'formating'	=> 'for&shy;mating',
  'formats'	=> 'for&shy;mats',
  'formatting'	=> 'for&shy;matting',
  'Formatting'	=> 'For&shy;matting',
  'Future'	=> 'Fu&shy;ture',
  'general'	=> 'ge&shy;ne&shy;ral',
  'generalized'	=> 'ge&shy;ne&shy;ra&shy;lized',
  'generated'	=> 'ge&shy;ne&shy;ra&shy;ted',
  'generate'	=> 'ge&shy;ne&shy;rate',
  'generation'	=> 'ge&shy;ne&shy;ra&shy;tion',
  'Generation'	=> 'Ge&shy;ne&shy;ra&shy;tion',
  'Generic'	=> 'Ge&shy;ne&shy;ric',
  'Generic'	  => 'Ge&shy;ne&shy;ric',
  'German'	=> 'Ger&shy;man',
  'German'	  => 'Ger&shy;man',
  'Germany'	=> 'Ger&shy;many',
  'However'	=> 'How&shy;ever',
  'identical'	=> 'iden&shy;ti&shy;cal',
  'Immediately'	=> 'Imme&shy;dia&shy;te&shy;ly',
  'inactive'	=> 'in&shy;active',
  'including'	=> 'in&shy;clu&shy;ding',
  'inclusion'	=> 'in&shy;clusion',
  'indent'	=> 'in&shy;dent',
  'Indent'	=> 'In&shy;dent',
  'index'	=> 'in&shy;dex',
  'information'	=> 'in&shy;for&shy;ma&shy;tion',
  'informative'	=> 'in&shy;for&shy;ma&shy;tive',
  'initial'	=> 'ini&shy;tial',
  'initial'	  => 'ini&shy;tial',
  'input'	=> 'in&shy;put',
  'insensitive'	=> 'in&shy;sensi&shy;tive',
  'inserted'	=> 'in&shy;serted',
  'Installation'  => 'In&shy;stalla&shy;tion',
  'Installation'	=> 'In&shy;stalla&shy;tion',
  'install'	=> 'in&shy;stall',
  'instead'	=> 'in&shy;stead',
  'Instead'	=> 'In&shy;stead',
  'instruction'	=> 'in&shy;struc&shy;tion',
  'instruction'	  => 'in&shy;struc&shy;tion',
  'Instructive'	=> 'In&shy;struc&shy;tive',
  'Instructive'	  => 'In&shy;struc&shy;tive',
  'integrating'	=> 'in&shy;te&shy;gra&shy;ting',
  'integration'	=> 'in&shy;te&shy;gra&shy;tion',
  'intentions'	=> 'in&shy;ten&shy;tions',
  'Interfacing'	=> 'Inter&shy;facing',
  'Interfacing'	  => 'Inter&shy;facing',
  'Internally'	=> 'In&shy;ter&shy;nally',
  'Internally'	  => 'In&shy;ter&shy;nally',
  'international'	=> 'inter&shy;natio&shy;nal',
  'interpreters'  => 'inter&shy;pre&shy;ters',
  'interpreters'	=> 'inter&shy;pre&shy;ters',
  'intuitive'	=> 'in&shy;tui&shy;tive',
  'invocation'	=> 'in&shy;vo&shy;ca&shy;tion',
  'library'	=> 'lib&shy;ra&shy;ry',
  'library'	  => 'lib&shy;ra&shy;ry',
  'likely'	=> 'like&shy;ly',
  'lowercase'	=> 'lower&shy;case',
  'mainly'	=> 'main&shy;ly',
  'mainly'	  => 'main&shy;ly',
  'makefile'	=> 'make&shy;file',
  'makeindex'	=> 'make&shy;index',
  'Matching'	=> 'Match&shy;ing',
  'Matching'	  => 'Match&shy;ing',
  'Maybe'	=> 'May&shy;be',
  'Maybe'	  => 'May&shy;be',
  'mechanism.'	=> 'me&shy;cha&shy;nism.',
  'mechanisms'	=> 'me&shy;cha&shy;nisms',
  'memory'	=> 'mem&shy;ory',
  'memory'	  => 'mem&shy;ory',
  'minimal'	=> 'mini&shy;mal',
  'necessary'	=> 'necessa&shy;ry',
  'negated'	=> 'ne&shy;ga&shy;ted',
  'negation'	=> 'ne&shy;ga&shy;tion',
  'negative'	=> 'ne&shy;ga&shy;tive',
  'nonsense'	=> 'non&shy;sense',
  'nonsense'	  => 'non&shy;sense',
  'normalization'	=> 'nor&shy;ma&shy;li&shy;za&shy;tion',
  'Normalization'	=> 'Nor&shy;ma&shy;li&shy;za&shy;tion',
  'normalized'	=> 'nor&shy;ma&shy;lized',
  'normal'	=> 'nor&shy;mal',
  'notation'	=> 'no&shy;ta&shy;tion',
  'notation'	  => 'no&shy;ta&shy;tion',
  'nothing'	=> 'no&shy;thing',
  'number'	=> 'num&shy;ber',
  'Number'	=> 'Num&shy;ber',
  'numbers'	=> 'num&shy;bers',
  'obsolete'	=> 'ob&shy;so&shy;lete',
  'obsolete'	  => 'ob&shy;so&shy;lete',
  'operating'	=> 'ope&shy;ra&shy;ting',
  'optional'	=> 'optio&shy;nal',
  'ordinary'	=> 'ordi&shy;nary',
  'otherwise'	=> 'other&shy;wise',
  'Otherwise'	=> 'Other&shy;wise',
  'output'	=> 'out&shy;put',
  'output'	  => 'out&shy;put',
  'Output'	=> 'Out&shy;put',
  'Output'	  => 'Out&shy;put',
  'parentheses'	=> 'pa&shy;ren&shy;the&shy;ses',
  'Parsing'	=> 'Pars&shy;ing',
  'Parsing'	  => 'Pars&shy;ing',
  'particular'	=> 'par&shy;ti&shy;cu&shy;lar',
  'performed'	=> 'per&shy;formed',
  'perform'	=> 'per&shy;form',
  'Perform'	=> 'Per&shy;form',
  'personal'	=> 'per&shy;so&shy;nal',
  'platforms'	=> 'plat&shy;forms',
  'positive'	=> 'po&shy;si&shy;tive',
  'Positive'	=> 'Po&shy;si&shy;tive',
  'possibilities'	=> 'pos&shy;si&shy;bi&shy;li&shy;ties',
  'preamble'	=> 'pre&shy;amble',
  'preceeded'	=> 'pre&shy;ceeded',
  'preferably'	=> 'pre&shy;ferab&shy;ly',
  'preference'	=> 'pre&shy;fer&shy;ence',
  'Preparation'	=> 'Pre&shy;pa&shy;ra&shy;tion',
  'presence'	=> 'pre&shy;sence',
  'present'	=> 'pre&shy;sent',
  'preserve'	=> 'pre&shy;serve',
  'problem'	=> 'prob&shy;lem',
  'problems'	=> 'prob&shy;lems',
  'Problems'	=> 'Prob&shy;lems',
  'Problems'	  => 'Prob&shy;lems',
  'Procedure'	=> 'Pro&shy;ce&shy;du&shy;re',
  'proceedings'	=> 'pro&shy;cee&shy;dings',
  '"Proceedings"'	=> '"Pro&shy;cee&shy;dings"',
  'processed'	=> 'pro&shy;cessed',
  'produced'	=> 'pro&shy;duced',
  'produce'	=> 'pro&shy;duce',
  'produces'	=> 'pro&shy;duces',
  'Programming'	=> 'Pro&shy;gram&shy;ming',
  'Programming'	  => 'Pro&shy;gram&shy;ming',
  'program'	=> 'pro&shy;gram',
  'protect'	=> 'pro&shy;tect',
  'provide'	=> 'pro&shy;vide',
  'provides'	=> 'pro&shy;vides',
  'Public'	  => 'Pub&shy;lic',
  'publication'	=> 'pub&shy;li&shy;ca&shy;tion',
  'published'	  => 'pub&shy;lish&shy;ed',
  'Publishing'	  => 'Pub&shy;li&shy;sh&shy;ing',
  'purpose'	=> 'pur&shy;pose',
  'purposes'	=> 'pur&shy;poses',
  'purposes'	  => 'pur&shy;poses',
  'question'	=> 'ques&shy;tion',
  'quoting'	=> 'quo&shy;ting',
  'rather'	=> 'ra&shy;ther',
  'records'	=> 're&shy;cords',
  'recursive'	=> 're&shy;cur&shy;sive',
  'redefined'	=> 're&shy;de&shy;fined',
  'reference'	=> 're&shy;fer&shy;ence',
  'Reference'	=> 'Re&shy;fer&shy;ence',
  'Reference'	  => 'Re&shy;fer&shy;ence',
  'references'	=> 're&shy;fer&shy;ences',
  'register'	=> 're&shy;gis&shy;ter',
  'Regular'	=> 'Re&shy;gular',
  'regular'	=> 're&shy;gu&shy;lar',
  'Related'	  => 'Re&shy;la&shy;ted',
  'releases'	=> 're&shy;leases',
  'releases'	  => 're&shy;leases',
  'remain'	=> 're&shy;main',
  'remains'	=> 're&shy;mains',
  'remove'	=> 're&shy;move',
  'replaced'	=> 're&shy;placed',
  'replacement'	=> 're&shy;place&shy;ment',
  'Replace'	=> 'Re&shy;place',
  'representations'	=> 're&shy;pre&shy;sen&shy;ta&shy;tions',
  'requested'	=> 're&shy;ques&shy;ted',
  'requesting'	=> 're&shy;ques&shy;ting',
  'require'	=> 're&shy;quire',
  'resource'	=> 're&shy;source',
  'resource'	  => 're&shy;source',
  'Resource'	=> 'Re&shy;source',
  'Resource'	  => 'Re&shy;source',
  'respective'	=> 're&shy;spec&shy;tive',
  'restriction'	=> 're&shy;striction',
  'restriction'	  => 're&shy;striction',
  'resulting'	=> 're&shy;sul&shy;ting',
  'result'	=> 're&shy;sult',
  'results'	=> 're&shy;sults',
  'reverse'	=> 're&shy;verse',
  'Reverse'	=> 'Re&shy;verse',
  'revision'	=> 're&shy;vision',
  'revision'	  => 're&shy;vision',
  'rewrite'	=> 're&shy;write',
  'rewrite'	  => 're&shy;write',
  'rewriting'	=> 're&shy;wri&shy;ting',
  'Rewriting'	=> 'Re&shy;wri&shy;ting',
  'running'	=> 'run&shy;ning',
  'second'	=> 'se&shy;cond',
  'section'	=> 'sec&shy;tion',
  'Selecting'	=> 'Selec&shy;ting',
  'Selecting'	  => 'Selec&shy;ting',
  'selection'	=> 'se&shy;lec&shy;tion',
  'semantic'	=> 'se&shy;man&shy;tic',
  'Semantic'	=> 'Se&shy;man&shy;tic',
  'Semantic'	  => 'Se&shy;man&shy;tic',
  'sensitive'	=> 'sen&shy;si&shy;ti&shy;ve',
  'sentences'	=> 'sen&shy;tences',
  'separated'	=> 'se&shy;pa&shy;ra&shy;ted',
  'separate'	=> 'se&shy;pa&shy;ra&shy;te',
  'separates'	=> 'se&shy;pa&shy;ra&shy;tes',
  'separating'	=> 'se&shy;pa&shy;ra&shy;ting',
  'separator'	=> 'se&shy;pa&shy;ra&shy;tor',
  'sequences'	=> 'sequen&shy;ces',
  'Shamelessly'	=> 'Shame&shy;less&shy;ly',
  'Shamelessly'	  => 'Shame&shy;less&shy;ly',
  'simply'	=> 'simp&shy;ly',
  'solution'	=> 'so&shy;lu&shy;tion',
  'sometimes'	=> 'some&shy;times',
  'Sometimes'	=> 'Some&shy;times',
  'sorted'	=> 'sor&shy;ted',
  'sorting'	=> 'sor&shy;ting',
  'Sorting'	=> 'Sort&shy;ing',
  'Sorting'	  => 'Sort&shy;ing',
  'special'	=> 'spe&shy;ci&shy;al',
  'specification'	=> 'spe&shy;ci&shy;fi&shy;ca&shy;tion',
  'Specification' => 'Spe&shy;ci&shy;fi&shy;ca&shy;tion',
  'Specification'	=> 'Spe&shy;ci&shy;fi&shy;ca&shy;tion',
  'specified'	=> 'spe&shy;ci&shy;fied',
  'specifier'	=> 'spe&shy;ci&shy;fier',
  'specifiers'	=> 'spe&shy;ci&shy;fiers',
  'specifying'	=> 'spe&shy;ci&shy;fying',
  'specify'	=> 'spe&shy;cify',
  'Specify'	=> 'Spe&shy;cify',
  'standard'	=> 'stan&shy;dard',
  'starting'	=> 'star&shy;ting',
  'statistics'	=> 'sta&shy;tis&shy;tics',
  'Status'	=> 'Sta&shy;tus',
  'Status'	  => 'Sta&shy;tus',
  'strategy'	=> 'stra&shy;te&shy;gy',
  'subdirectory'	=> 'sub&shy;di&shy;rec&shy;to&shy;ry',
  'subdirectories'	=> 'sub&shy;di&shy;rec&shy;to&shy;ries',
  'substring'	=> 'sub&shy;string',
  'Substring'	=> 'Sub&shy;string',
  'Substring'	  => 'Sub&shy;string',
  'symbols'	=> 'sym&shy;bols',
  'symbol'	=> 'sym&shy;bol',
  'syntactical'	=> 'syn&shy;tac&shy;ti&shy;cal',
  'syntactical'	  => 'syn&shy;tac&shy;ti&shy;cal',
  'syntactic'	=> 'syn&shy;tac&shy;tic',
  'syntactic'	  => 'syn&shy;tac&shy;tic',
  'syntax'	=> 'syn&shy;tax',
  'systems'	=> 'sys&shy;tems',
  'system'	=> 'sys&shy;tem',
  'terminal'	=> 'ter&shy;mi&shy;nal',
  'terminal'	  => 'ter&shy;mi&shy;nal',
  'therein'	=> 'there&shy;in',
  'timestamp'	=> 'time&shy;stamp',
  'towards'	=> 'to&shy;wards',
  'translated'	=> 'trans&shy;la&shy;ted',
  'translates'	=> 'trans&shy;la&shy;tes',
  'translate'	=> 'trans&shy;late',
  'Translate'	=> 'Trans&shy;late',
  'Translating'	=> 'Trans&shy;la&shy;ting',
  'Translating'	  => 'Trans&shy;la&shy;ting',
  'translating'	=> 'trans&shy;lating',
  'translation'	=> 'trans&shy;la&shy;tion',
  'understood'	=> 'under&shy;stood',
  'understood'	  => 'under&shy;stood',
  'until'	=> 'un&shy;til',
  'update'	=> 'up&shy;date',
  'uppercase'	=> 'upper&shy;case',
  'useful'	=> 'use&shy;ful',
  'Useful'	=> 'Use&shy;ful',
  'Useful'	  => 'Use&shy;ful',
  'useless'	=> 'use&shy;less',
  'usually'	=> 'usual&shy;ly',
  'Usually'	=> 'Usual&shy;ly',
  'utilities'	=> 'uti&shy;li&shy;ties',
  'utilizing'	=> 'uti&shy;li&shy;zing',
  'valid'	=> 'va&shy;lid',
  'variable'	=> 'va&shy;ri&shy;able',
  'variants'	=> 'va&shy;ri&shy;ants',
  'verbose'	=> 'ver&shy;bose',
  'warnings'	=> 'warn&shy;ings',
  'whitespace'	=> 'white&shy;space',
  'without'	=> 'with&shy;out',
  'without'	  => 'with&shy;out',
  'Without'	=> 'With&shy;out',
  'writing'	=> 'wri&shy;ting',
    );

sub hyph
{ my $_ = shift;

  return $hyph{$_} || $_;
}

1;
##-----------------------------------------------------------------------------
## Local Variables: 
## mode: perl
## End: 
