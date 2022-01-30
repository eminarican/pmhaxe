package pocketmine.utils;

@:native("Ramsey\\Uuid\\UuidInterface")
extern interface UuidInterface {
    
    /**
     * Returns -1, 0, or 1 if the UUID is less than, equal to, or greater than
     * the other UUID
     *
     * The first of two UUIDs is greater than the second if the most
     * significant field in which the UUIDs differ is greater for the first
     * UUID.
     *
     * * Q. What's the value of being able to sort UUIDs?
     * * A. Use them as keys in a B-Tree or similar mapping.
     *
     * @param UuidInterface $other The UUID to compare
     *
     * @return int -1, 0, or 1 if the UUID is less than, equal to, or greater than $other
     */
     public function compareTo(other: UuidInterface): Int;

     /**
      * Returns true if the UUID is equal to the provided object
      *
      * The result is true if and only if the argument is not null, is a UUID
      * object, has the same variant, and contains the same value, bit for bit,
      * as the UUID.
      *
      * @param object|null $other An object to test for equality with this UUID
      *
      * @return bool True if the other object is equal to this UUID
      */
     public function equals(other: Null<Any>): Bool;
 
     /**
      * Returns the binary string representation of the UUID
      *
      * @psalm-return non-empty-string
      */
     public function getBytes(): String;
 
     /**
      * Returns the fields that comprise this UUID
      */
     //public function getFields(): FieldsInterface;
 
     /**
      * Returns the hexadecimal representation of the UUID
      */
     //public function getHex(): Hexadecimal;
 
     /**
      * Returns the integer representation of the UUID
      */
     //public function getInteger(): IntegerObject;
 
     /**
      * Returns the string standard representation of the UUID
      *
      * @psalm-return non-empty-string
      */
     public function toString(): String;
 
     /**
      * Casts the UUID to the string standard representation
      *
      * @psalm-return non-empty-string
      */
     public function __toString(): String;
}
