.. The overview file describes the purpose of the specific class
   Added: <date>
   Author: Name <email>

=================
The Awesome Class
=================

.. php:namespace:: Cool\Namespace

.. php:class:: Awesome

    The awesome class does awesome things. Instantiate like so::

        $awesome = new Awesome('param');


:hidden:`someStaticMethod`
""""""""""""""""""""""""""

    .. php:staticmethod:: someStaticMethod($someParam)

        This method is static. See the ``.rst`` source file for how this is defined. Also notice that this method appears in the TOC, there is no section heading in the actual body of the document. This is because of a custom ``hidden`` role which hides the heading in the body, but lets Sphinx render it in the TOC. If you just put a heading there without the "hidden" part, you'd get the same result, except that the heading would show in the content as well, thus duplicating the function name.

        :param string $someParam: A parameter needed by the method
        :returns: void, or throws an \\InvalidArgumentException if the param is invalid

        Usage::

            Awesome::someStaticMethod($someParam);


:hidden:`anotherMethod`
"""""""""""""""""""""""

    .. php:method:: anotherMethod()

        Notice that this method is not static, and thus lacks the "static" prefix in its title. For more example of directives you can use with PHPDomain, see `here <http://mark-story.com/posts/view/sphinx-phpdomain-released>`_.

        :returns: null or string

        Usage::

            echo $awesome->anotherMethod(); // Some result


Keep adding methods like this for everything you want to document. It is recommended to only document public methods like this. Private and protected methods should stay isolated and only documented in the source code.