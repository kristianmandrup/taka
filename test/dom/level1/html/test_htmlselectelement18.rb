
###
# This Ruby source file was generated by test-to-ruby.xsl
# and is a derived work from the source document.
# The source document contained the following notice:
=begin


Copyright (c) 2004 World Wide Web Consortium, 
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
# Add a new option at the end of an select using HTMLSelectElement.add.
# @author Curt Arnold
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-html#ID-14493106]
##
DOMTestCase('HTMLSelectElement18') do

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
    preload(contentType, "select", true)
  end

  ###
  # Runs the test case.
  # @throws Throwable Any uncaught exception causes test to fail
  #
  def test_HTMLSelectElement18
    nodeList = nil
    testNode = nil
    doc = nil
    optLength = nil
    selected = nil
    newOpt = nil
    newOptText = nil
    opt = nil
    optText = nil
    optValue = nil
    retNode = nil
    nullNode = nil;

    doc = load_document("select", true)
      nodeList = doc.getElementsByTagName("select")
      assertSize("Asize", 3, nodeList)
      testNode = nodeList.item(0)
      newOpt = doc.createElement("option")
      newOptText = doc.createTextNode("EMP31415")
      retNode = newOpt.appendChild(newOptText)
      testNode.add(newOpt, nullNode)
      optLength = testNode.length()
      assert_equal(6, optLength, "optLength")
            selected = testNode.selectedIndex()
      assert_equal(0, selected, "selected")
            opt = testNode.lastChild()
      optText = opt.firstChild()
      optValue = optText.nodeValue()
      assert_equal("EMP31415", optValue, "lastValue")
            
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/level1/html/HTMLSelectElement18"
  end
end

