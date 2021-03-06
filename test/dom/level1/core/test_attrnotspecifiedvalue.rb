
###
# This Ruby source file was generated by test-to-ruby.xsl
# and is a derived work from the source document.
# The source document contained the following notice:
=begin

Copyright (c) 2001-2004 World Wide Web Consortium,
(Massachusetts Institute of Technology, Institut National de
Recherche en Informatique et en Automatique, Keio University). All
Rights Reserved. This program is distributed under the W3C's Software
Intellectual Property License. This program is distributed in the
hope that it will be useful, but WITHOUT ANY WARRANTY; without even
the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
PURPOSE.
See W3C License http://www.w3.org/Consortium/Legal/ for more details.

=end
#

require File.expand_path(File.join(File.dirname(__FILE__), '..', '..', '..', 'helper'))

###
#     The "getSpecified()" method for an Attr node should 
#   be set to false if the attribute was not explicitly given
#   a value.
#   Retrieve the attribute named "street" from the last 
#   child of of the first employee and examine the value 
#   returned by the "getSpecified()" method.  This test uses 
#   the "getNamedItem(name)" method from the NamedNodeMap 
#   interface.
# @author NIST
# @author Mary Brady
# see[http://www.w3.org/TR/1998/REC-DOM-Level-1-19981001/level-one-core#ID-862529273]
# see[http://lists.w3.org/Archives/Public/www-dom-ts/2002Mar/0002.html]
##
DOMTestCase('attrnotspecifiedvalue') do

  ###
  # Constructor.
  # @param factory document factory, may not be null
  # @throws org.w3c.domts.DOMTestIncompatibleException Thrown if test is not compatible with parser configuration
  ##
  def setup
=begin
      org.w3c.domts.DocumentBuilderSetting[] settings = 
          new org.w3c.domts.DocumentBuilderSetting[] {
org.w3c.domts.DocumentBuilderSetting.validating
        };
        DOMTestDocumentBuilderFactory testFactory = factory.newInstance(settings)
        setFactory(testFactory)
=end

    ##
    ##   check if loaded documents are supported for content type
    ##
    contentType = getContentType()
    preload(contentType, "staff", false)
  end

  ###
  # Runs the test case.
  # @throws Throwable Any uncaught exception causes test to fail
  #
  def test_attrnotspecifiedvalue
    doc = nil
    addressList = nil
    testNode = nil
    attributes = nil
    streetAttr = nil
    state = nil
    doc = load_document("staff", false)
      addressList = doc.getElementsByTagName("address")
      testNode = addressList.item(0)
      attributes = testNode.attributes()
      streetAttr = attributes.getNamedItem("street")
      state = streetAttr.specified()
      assertFalse("streetNotSpecified", state)

  end if get_named_item_returning_empty_attribute_solved?

  ###
  # Gets URI that identifies the test.
  # @return uri identifier of test
  #
  def targetURI
    "http://www.w3.org/2001/DOM-Test-Suite/tests/Level-1/attrnotspecifiedvalue"
  end
end

