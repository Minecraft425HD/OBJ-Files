package de.objfiles.mod.registry;

import de.objfiles.mod.ObjFilesMod;
import net.minecraft.world.item.BlockItem;
import net.minecraft.world.item.Item;
import net.minecraft.world.level.block.Block;
import net.minecraft.world.level.block.SoundType;
import net.minecraft.world.level.block.state.BlockBehaviour;
import net.minecraftforge.eventbus.api.IEventBus;
import net.minecraftforge.registries.DeferredRegister;
import net.minecraftforge.registries.ForgeRegistries;
import net.minecraftforge.registries.RegistryObject;

public final class ModBlocks {
    private static final DeferredRegister<Block> BLOCKS =
            DeferredRegister.create(ForgeRegistries.BLOCKS, ObjFilesMod.MOD_ID);
    private static final DeferredRegister<Item> ITEMS =
            DeferredRegister.create(ForgeRegistries.ITEMS, ObjFilesMod.MOD_ID);

    public static final RegistryObject<Block> DESTILLERY = BLOCKS.register("destillery",
            () -> new Block(BlockBehaviour.Properties.of()
                    .strength(2.5F)
                    .sound(SoundType.METAL)
                    .noOcclusion()));

    static {
        ITEMS.register("destillery", () -> new BlockItem(DESTILLERY.get(), new Item.Properties()));
    }

    private ModBlocks() {}

    public static void register(IEventBus eventBus) {
        BLOCKS.register(eventBus);
        ITEMS.register(eventBus);
    }
}
