
###
# This Ruby source file was generated by test-to-ruby.xsl
# and is a derived work from the source document.
# The source document contained the following notice:
=begin


Copyright (c) 2001 World Wide Web Consortium, 
(Massachusetts Institute of Technology, Institut National de
Recherche en Informatique et en Automatique, Keio University).  All 
Rights Reserved.  This program is distributed under the W3C's Software
Intellectual Property License.  This program is distributed in the 
hope that it will be useful, but WITHOUT ANY WARRANTY; without even
the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR 
PURPOSE.  

See W3C License http://www.w3.org/Consortium/Legal/ for more details.


=end
#

require File.expand_path(File.join(File.dirname(__FILE__), '..', '..', '..', 'helper'))


###
#     The namedItem(name) method retrieves a node using a name.  It first   
#     searches for a node with a matching id attribute.  If it doesn't find
#     one, it then searches for a Node with a matching name attribute, but only
#     on those elements that are allowed a name attribute.
#     Retrieve the first FORM element and create a HTMLCollection by invoking
#     the elements attribute.  The first SELECT element is further retrieved 
#     using the elements id attribute.
# @author NIST
# @author Rick Rivello
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-html#ID-76728479]
##
DOMTestCase('HTMLCollection11') do

  ###
  # Constructor.
  # @param factory document factory, may not be null
  # @throws org.w3c.domts.DOMTestIncompatibleException Thrown if test is not compatible with parser configuration
  ##
  def setup
    ##
    ##   check if loaded documents are supported for content type
    ##
    contentType = getContentType()
    preload(contentType, "collection", false)
  end

  ###
  # Runs the test case.
  # @throws Throwable Any uncaught exception causes test to fail
  #
  def test_HTMLCollection11
    nodeList = nil
    testNode = nil
    formNode = nil
    formsnodeList = nil
    vname = nil
    doc = nil
    doc = load_document("collection", false)
      nodeList = doc.getElementsByTagName("form")
      assertSize("Asize", 1, nodeList)
      testNode = nodeList.item(0)
      formsnodeList = testNode.elements()
      formNode = formsnodeList.namedItem("selectId")
      vname = formNode.nodeName()
      assertEqualsAutoCase("element", "nameIndexLink", "select", vname)
        
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/level1/html/HTMLCollection11"
  end
end

