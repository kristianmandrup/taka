
###
# This Ruby source file was generated by test-to-ruby.xsl
# and is a derived work from the source document.
# The source document contained the following notice:
=begin


Copyright (c) 2001-2004 World Wide Web Consortium, 
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
#     The insertRow() method inserts a new empty table row.  
#     
#     Retrieve the first TBODY element and invoke the insertRow() method
#     with an index of two.  The number of rows in the TBODY section before 
#     insertion of the new row is two therefore the row is appended. 
#     After the new row is inserted the number of rows in the TBODY section is 
#     three.
# @author NIST
# @author Rick Rivello
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-html#ID-93995626]
# see[http://www.w3.org/Bugs/Public/show_bug.cgi?id=502]
##
DOMTestCase('HTMLTableSectionElement21') do

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
    preload(contentType, "tablesection", true)
  end

  ###
  # Runs the test case.
  # @throws Throwable Any uncaught exception causes test to fail
  #
  def test_HTMLTableSectionElement21
    nodeList = nil
    testNode = nil
    newRow = nil
    rowsnodeList = nil
    vrows = nil
    doc = nil
    doc = load_document("tablesection", true)
      nodeList = doc.getElementsByTagName("tbody")
      assertSize("Asize", 2, nodeList)
      testNode = nodeList.item(1)
      rowsnodeList = testNode.rows()
      vrows = rowsnodeList.length()
      assert_equal(2, vrows, "rowsLink1")
            newRow = testNode.insertRow(2)
      rowsnodeList = testNode.rows()
      vrows = rowsnodeList.length()
      assert_equal(3, vrows, "rowsLink2")
            
  end

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/level1/html/HTMLTableSectionElement21"
  end
end

