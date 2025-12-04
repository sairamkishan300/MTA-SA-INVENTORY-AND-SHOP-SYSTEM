# MTA:SA Inventory, Shops & House Storage

Advanced inventory + shop system for MTA:SA roleplay servers, including:

- **Standalone inventory** with item weights, persistent storage and GUI.
- **Item-based shops** with owners, refill system, logs and Discord webhook.
- **View other player inventory** via `/invsee` (ACL-controlled).
- **House storage system** with persistent storages and capacity limits.

This README is ready to be used directly on GitHub for selling the script.

---

## 1. Requirements

- MTA:SA 1.5+
- Resource path: `mods/deathmatch/resources/[players]/inventory`
- Other required resources / systems:
  - `money` (exports: `getMoney`, `giveMoney`, `takeMoney`)
  - Standard MTA accounts + ACL (e.g. `Admin` group)
  - Notification system listening to `add:notification` client event

---

## 2. Installation

1. **Upload** the `inventory` resource folder to:
   - `mods/deathmatch/resources/[players]/inventory`

2. Make sure the included subfolders are present:
   - `shopSystem/` (shop server/client logic + HTML/CSS/JS)
   - `util/` (utility functions)

3. **Add resource to `mtaserver.conf`:**
   ```xml
   <resource src="inventory" startup="1" protected="0" />
   ```

4. **Start / restart** in console or in-game:
   ```
   refresh
   start inventory
   ```

5. On first run, the script will automatically create SQLite DBs:
   - `shops.db` for shops + logs (tables: `shops`, `shop_logs`, etc.)
   - `inventory.db` for player inventories, alternate inventories and house storage

---

## 3. Configuration (config.lua)

All main settings are in `config.lua` inside this resource.

### 3.1. Items

- Define all usable items in the `items` table:
  - `name` – display name
  - `weight` – used for inventory capacity
  - `image` – path to item icon (used by GUI)

Every item used by shops or scripts must be declared here.

### 3.2. Shops (predefinedShops)

- `predefinedShops` defines all static shops:
  - `id`, `name`, `owner`
  - `x, y, z, interior, dimension`
  - `items = { [itemID] = { quantity, price }, ... }`

On resource start, config shops are synced to `shops.db` (insert / update / clean up).

### 3.3. Permissions (ACL groups)

In `config.lua` you configure the ACL groups allowed to use special features:

- **View other player inventory**:
  ```lua
  inventorySeeACLGroups = {
      "Admin", -- add more groups if needed
  }
  ```

- **Create / delete house storage**:
  ```lua
  houseStorageDefaultCapacity = 10000

  houseStorageACLGroups = {
      "Admin", -- groups that can use /hstorage and /delhstorage
  }
  ```

Make sure your staff accounts are in these ACL groups.

---

## 4. Inventory System (Players)

- Each player has a **persistent inventory** stored in `inventory.db`.
- Items have **weights** and are displayed in a clean GUI.
- Basic exported helpers are available server-side (e.g. `giveItem`, `takeItem`).

### Test / utility commands

- `/giveitem [itemName] [amount]`
- `/takeitem [itemName] [amount]`
- `/getitem [itemName]`
- `/removeallitems`

These commands are mainly for testing; you can restrict them or remove them if needed.

---

## 5. Shop System

- Stand near a shop marker (distance <= 3) and press your interaction key (e.g. `E`).
- Shop GUI shows items, quantities and prices.
- Purchases:
  - Take money with `exports.money:takeMoney`
  - Give items using the inventory system
  - Update stock and save to `shops.db`

### 5.1. Shop Owner Commands

- **`/shopmanage`**
  - Who: Shop owner or Admin, near their shop.
  - Opens **Shop Management GUI**.
  - Owners refill shop stock using items from their own inventory.

### 5.2. Admin Shop Commands

- **`/shopid`**
  - Shows ID of nearest shop (<= 3 units).

- **`/shopsetowner [shopID] [accountName]`**
  - Sets the owner of a shop and saves it to DB.

- **`/shoprefill [shopID]`**
  - Fully refills a shop stock by ID and logs it.

---

## 6. View Other Player Inventory (/invsee)

This feature lets staff open a **read-only alternate inventory** showing another player’s items.

- **Export** (server): `inventorySee(viewerPlayer, targetPlayer)`
- Permission is controlled by `inventorySeeACLGroups` (see section 3.3).

### Command

- **`/invsee [accountName]`**
  - Finds the player by **MTA account name**.
  - Opens:
    - Left side: viewer’s own inventory.
    - Right side: target player inventory (alternate view).
  - Useful for staff checks and support.

---

## 7. House Storage System

Persistent, configurable storages that act as alternate inventories (e.g. house safes).

- Each storage has:
  - Unique numeric ID.
  - Position (x, y, z, interior, dimension).
  - Capacity (default from `houseStorageDefaultCapacity`).
  - Items saved in `inventory.db` (`houseStorage` + `altInventory` tables).

### 7.1. Creating House Storage

- **Command:**
  ```sql
  /hstorage [capacity]
  ```

  - Who: Players in `houseStorageACLGroups`.
  - Creates a house storage marker at your **current position** (and interior/dimension).
  - `capacity` is optional; if not set, uses `houseStorageDefaultCapacity`.
  - Chat output: `House storage created with ID X and capacity Y.`

### 7.2. Deleting House Storage

- **Command:**
  ```sql
  /delhstorage [id]
  ```

  - Who: Players in `houseStorageACLGroups`.
  - Deletes storage with that ID:
    - Removes from `houseStorage` table.
    - Clears its items from `altInventory` (`invID = "house_[id]").
    - Destroys marker and colshape in the world.
    - Removes runtime entry so it can no longer be used.

### 7.3. Using House Storage In-Game

1. Go to a house interior or desired location.
2. Use `/hstorage` to place a storage marker.
3. Any player who **hits the marker** receives a notification:
   - `Press 'B' to open house storage.`
4. When near the marker, pressing `B` will:
   - Open the **main inventory** on the left.
   - Open **house storage inventory** on the right.
   - Show storage ID and capacity in the UI.
5. Closing the main inventory also closes the house storage window.

---

## 8. For Buyers (Quick Steps)

1. Upload `inventory` resource to your server.
2. Configure items, shops, and ACL groups in `config.lua`.
3. Ensure your `money` and notification resources are running.
4. Add the resource to `mtaserver.conf` and start it.
5. Test:
   - Shops: go to a shop marker, press `E`, buy items.
   - Inventory: use `/giveitem` and `/takeitem`.
   - Staff tools: `/invsee [accountName]`, `/hstorage`, `/delhstorage`.
6. Adjust texts, icons, and positions to match your server style.

This README is intentionally short and focused so you can use it directly on your GitHub page.
