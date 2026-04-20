package de.objfiles.mod;

import com.mojang.logging.LogUtils;
import de.objfiles.mod.registry.ModBlocks;
import net.minecraftforge.eventbus.api.IEventBus;
import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.fml.javafmlmod.FMLJavaModLoadingContext;
import org.slf4j.Logger;

@Mod(ObjFilesMod.MOD_ID)
public class ObjFilesMod {
    public static final String MOD_ID = "objfilesmod";
    public static final Logger LOGGER = LogUtils.getLogger();

    public ObjFilesMod() {
        IEventBus modEventBus = FMLJavaModLoadingContext.get().getModEventBus();
        ModBlocks.register(modEventBus);
    }
}
