package pocketmine.event;

/**
 * Classes implementing this interface can be registered to receive called Events.
 * @see PluginManager::registerEvents()
 *
 * A function in a Listener class must meet the following criteria to be registered as an event handler:
 *
 * - MUST be public
 * - MUST NOT be static
 * - MUST accept EXACTLY ONE class parameter which:
 *   - MUST be a VALID class extending Event
 *   - MUST NOT be abstract, UNLESS it has an `@allowHandle` annotation
 *
 * Event handlers do not have to have any particular name - they are detected using reflection.
 * They SHOULD NOT return any values (but this is not currently enforced).
 *
 * Functions which meet the criteria can have the following annotations in their doc comments:
 *
 * - `@notHandler`: Marks a function as NOT being an event handler. Only needed if the function meets the above criteria.
 * - `@handleCancelled`: Cancelled events will STILL invoke this handler.
 * - `@priority <PRIORITY>`: Sets the priority at which this event handler will receive events.
 *     Example: `@priority HIGHEST`
 *     @see EventPriority for a list of possible options.
 *
 * Event handlers will receive any instanceof the Event class they have chosen to receive. For example, an
 * EntityDamageEvent handler will also receive any subclass of EntityDamageEvent.
 */
@:native("pocketmine\\event\\Listener")
extern interface Listener {}
