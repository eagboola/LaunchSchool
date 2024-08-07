=begin

When blocks are passed during method invocation, inside the method the blocks can be called in two different ways. Name each approach and discuss when they can be used, as well as when they can't be used.

Blocks can be called from within a method by yielding or by using an explicit block parameter. Yielding to block interrupts execution within the method definition and begins the execution of the provided block. Yielding can be done when a block is passed to a method at invocation. Yielding cannot be done when no block is provided, so we make use of a conditional using the predicate method #block_given? to instruct the program how to act when a block is or isn't provided. Blocks called with yield cannot be passed to other methods. Explicit Block parameters are used to treat a block as a named object, giving it a "handle" by which it can be "moved" and passed around the program. The block is converted to a simple Proc Object, and can be referenced by name. This allows the block to be passed to other methods.

=end