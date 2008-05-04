multipd - a collaborative patching system for and in Pd.
=======

authors:
	IOhannes m zmölnig
	with help/ideas/... by pd-graz (Peter Plessas, Georg Holzmann, Florian Hollerweger et al.)

license:
	see LICENSE.txt


getting multipd:
 the latest and greatest version of this stuff can be obtained via subversion from
	https://svn.umlaeute.mur.at/svnroot/zmoelnig/projects/multipd/

architecture:
 usually Pd runs as 2 processes: the pd-gui and the pd-engine
 both are connected via network
 multipd provides a proxy that transparently intersects this connection
 this allows to connect several guis to one pd-engine


 normal pd:			    multipd:

   [pd-gui]			[pd-gui] [pd-gui]
      |				    |        |
 [pd-engine]			    [pd-proxy]
					 |
				    [pd-engine]

usage:
  1st start the proxy  ( ./startPROXY.sh)
  2nd start the engine ( ./startDSP.sh)
  3rd start the GUIs   ( ./startGUI.sh [<host>])

  4th start patching


dependencies:
  the PROXY depends on serveral externals
   - netserver (by martin peach)
	(pure-data repository /externals/mrpeach/net/)
   - pdstring (by bryan jurish), >=0.05
	(pure-data repository /externals/moocow/pdstring/)
   - zexy (by IOhannes m zmölnig), >=2.3
	(pure-data repository /externals/zexy/)
 

