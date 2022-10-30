package youkaiyashikiextractor;

import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Set;
import java.util.TreeSet;

import org.apache.commons.cli.CommandLine;
import org.apache.commons.cli.DefaultParser;
import org.apache.commons.cli.Options;
import org.apache.commons.io.IOUtils;

public class YoukaiYashikiExtractorApp {

	public static void main(String[] args) throws Exception {

		final CommandLine command = new DefaultParser().parse(new Options(), args);

		// Reads the ROM image
		final byte[] rom;
		final String path = command.getArgList().remove(0);
		try (InputStream is = new FileInputStream(path)) {
			rom = IOUtils.toByteArray(is);
		}

		YoukaiYashikiExtractorApp instance = new YoukaiYashikiExtractorApp(rom);
		// instance.extractRoomTable();
		// System.out.printf("; $%04x\n", instance.pointer);

		// instance.extractRooms();
		// System.out.printf("; $%04x\n", instance.pointer);

		instance.pointer = instance.ROOM_ENTITIES_TABLE_ADDRESS;

		instance.extractRoomEntitiesTable();
		System.out.printf("; $%04x\n", instance.pointer);

		instance.extractRoomsEntities();
		System.out.printf("; $%04x\n", instance.pointer);

		// instance.extractDecorations();
	}

	private final int BASE_ADDRESS = 0x4000;

	private final int ROOM_TABLE_ADDRESS = 0x41ac;

	private final int FIRST_ROOM_ADDRESS = 0x4240;

	private final int ROOM_ENTITIES_TABLE_ADDRESS = 0x4ebe;

	private final int FIRST_ROOM_ENTITIES_ADDRESS =
			ROOM_ENTITIES_TABLE_ADDRESS
			+ (FIRST_ROOM_ADDRESS - ROOM_TABLE_ADDRESS);

	private final byte[] rom;

	private final Set<Integer> roomAddresses;

	private final Set<Integer> decorationAddresses;

	private final Set<Integer> roomEntitiesAddresses;

	private int pointer = ROOM_TABLE_ADDRESS;

	private YoukaiYashikiExtractorApp(byte[] rom) {
		super();

		this.rom = rom;
		this.roomAddresses = new TreeSet<>();
		this.decorationAddresses = new TreeSet<>();
		this.roomEntitiesAddresses = new TreeSet<>();
	}

	private void extractRoomTable() {

		System.out.printf("ROOMS_TABLE: ; %04x\n", this.pointer);
		for (int i = 1; this.pointer < FIRST_ROOM_ADDRESS; i++) {
			final Integer address = w();
			System.out.printf("\tdw\tROOM_%04x ; %02d\n", address, i);
			roomAddresses.add(address);
		}
		System.out.println();
	}

	private void extractRooms() {

		for (int roomAddress : roomAddresses) {
			while (this.pointer < roomAddress) {
				System.out.printf("\tdb\t$%02x\t; (padding)\n", b());
			}

			extractRoom();
		}
	}

	private void extractRoom() {

		System.out.printf("ROOM_%04x:\n", this.pointer);

		// Floors
		int y;
		while ((y = b()) < 0xfe) {
			int x = b(), length = b(), type = b();
			System.out.printf("\tdb\t%2d,%2d, %2d, %d\t; at (%2d,%2d), %2db of floor #%d\n",
					y, x, length, type, x, y, length, type);
		}
		if (y == 0xfe) {
			// Block
			System.out.println("\tdb\t$fe");
			while ((y = b()) != 0xff) {
				int x = b(), w = b(), h = b();
				System.out.printf("\tdb\t%2d,%2d, %2d,%2d\t; at (%2d,%2d), (%2d x %2d) of ground\n",
						y, x, w, h, x, y, w, h);
			}
		}
		System.out.println("\tdb\t$ff");

		// Ladders
		while ((y = b()) != 0xff) {
			int x = b(), length = b(), type = b();
			System.out.printf("\tdb\t%2d,%2d, %2d, %d\t; at (%2d,%2d), %2db of ladder #%d\n",
					y, x, length, type, x, y, length, type);
		}
		System.out.println("\tdb\t$ff");

		// Decorations
		while ((y = b()) != 0xff) {
			int x = b(), address = w();
			System.out.printf("\tdb\t%2d,%2d\n", y, x);
			System.out.printf("\tdw\tDECO_%04x\t; at (%2d,%2d), decoration $%04x\n", address, x, y, address);
			decorationAddresses.add(address);
		}
		System.out.println("\tdb\t$ff");
		System.out.println();
	}

	private void extractRoomEntitiesTable() {

		System.out.printf("ROOM_ENTITIES_TABLE: ; %04x\n", this.pointer);
		for (int i = 1; this.pointer < FIRST_ROOM_ENTITIES_ADDRESS; i++) {
			final Integer address = w();
			System.out.printf("\tdw\tROOM_ENTITIES_%04x ; %02d\n", address, i);
			roomEntitiesAddresses.add(address);
		}
		System.out.println();
	}

	private void extractRoomsEntities() {

		for (int roomEntitiesAddress : roomEntitiesAddresses) {
			while (this.pointer < roomEntitiesAddress) {
				b(); // System.out.printf("\tdb\t$%02x\t; (padding)\n", b());
			}

			extractRoomEntities();
		}
	}

	private void extractRoomEntities() {

		System.out.printf("ROOM_ENTITIES_%04x:\n", this.pointer);
		int address = w();
		System.out.printf("\tdw\t%04x\n", address);
}

	private void extractDecorations() {

		for (int address : this.decorationAddresses) {
			// System.out.printf("DECO_%04x:\n", address);
		}
	}

	private int w() {

		return b() + b() * 0x100;
	}

	private int b() {

		return b(this.pointer++);
	}

	private int b(int address) {

		return Byte.toUnsignedInt(rom[address - BASE_ADDRESS]);
	}
}
