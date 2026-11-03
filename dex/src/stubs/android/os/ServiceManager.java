package android.os;

/**
 * Compile-time-only stub for the hidden framework class {@code android.os.ServiceManager}.
 *
 * <p>This file is compiled into {@code stubs_bin} and is <b>never dexed</b> (see
 * {@code make_p16.py::build_mpl}): at runtime the real {@code android.os.ServiceManager} from
 * the boot classpath is resolved, exactly like every other {@code @hide} API this dex calls.
 * The stub only exists so {@code javac} has a signature to type-check against {@code android.jar},
 * which deliberately does not ship hidden framework classes.</p>
 *
 * <p>{@code getService(String)} is an {@code @UnsupportedAppUsage} (greylist) member, i.e. it is
 * reachable from a plain {@code app_process} main - which is why {@link mpl.HalProbe} still keeps
 * reflective fallbacks for ROMs that move it to a stricter list.</p>
 */
public final class ServiceManager {

    private ServiceManager() {
    }

    /** Returns the binder for {@code name}, or {@code null} when it is not registered/visible. */
    public static IBinder getService(String name) {
        throw new UnsupportedOperationException("compile-time stub");
    }

    /** Names of every service currently registered with the framework servicemanager. */
    public static String[] listServices() throws RemoteException {
        throw new UnsupportedOperationException("compile-time stub");
    }
}
