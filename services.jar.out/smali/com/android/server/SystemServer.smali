.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemServer$FlymeInjector;
    }
.end annotation

# static fields
.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x14aa2cab000L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"


# instance fields
.field addBootPrecent:Ljava/lang/Runnable;

.field private bootPrecent:I

.field private isAddPreCrent:Z

.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mAlarmManagerService:Lcom/android/server/AlarmManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->isAddPreCrent:Z

    .line 1414
    new-instance v0, Lcom/android/server/SystemServer$3;

    invoke-direct {v0, p0}, Lcom/android/server/SystemServer$3;-><init>(Lcom/android/server/SystemServer;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->addBootPrecent:Ljava/lang/Runnable;

    .line 202
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 203
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SystemServer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/SystemServer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 129
    iget v0, p0, Lcom/android/server/SystemServer;->bootPrecent:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/SystemServer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->isAddPreCrent:Z

    return v0
.end method

.method private createSystemContext()V
    .locals 3

    .prologue
    .line 331
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 332
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, #android:style@Theme.DeviceDefault.Light.DarkActionBar#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 197
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 198
    return-void
.end method

.method private static native nativeInit()V
.end method

.method private performPendingShutdown()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 314
    const-string v4, "sys.shutdown.requested"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, "shutdownAction":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 317
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_0

    move v1, v3

    .line 320
    .local v1, "reboot":Z
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 321
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "reason":Ljava/lang/String;
    :goto_0
    invoke-static {v1, v0}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 328
    .end local v0    # "reason":Ljava/lang/String;
    .end local v1    # "reboot":Z
    :cond_1
    return-void

    .line 323
    .restart local v1    # "reboot":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_0
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 309
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 311
    return-void
.end method

.method private run()V
    .locals 10

    .prologue
    const-wide v8, 0x14aa2cab000L

    const-wide/32 v2, 0x36ee80

    const/4 v7, 0x1

    .line 218
    const-string v0, "SystemServer"

    const-string v1, "Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/16 v0, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 228
    const-string v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 233
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 234
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 243
    :cond_0
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 247
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 251
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 255
    invoke-static {v7}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 258
    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 261
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 263
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 264
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 267
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 268
    invoke-static {}, Lcom/android/server/SystemServer;->nativeInit()V

    .line 272
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 275
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 278
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 279
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 283
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 284
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 285
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V

    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-gez v0, :cond_1

    .line 288
    const-string v0, "SystemServer"

    const-string v1, "<fj>set System clock is 2015.1.1, EARLIEST_SUPPORTED_TIME value:1420070400000"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const-wide v0, 0x14aa2cab000L

    invoke-static {v0, v1}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :cond_1
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 300
    const-string v0, "SystemServer"

    const-string v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_2
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 305
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :catch_0
    move-exception v6

    .line 293
    .local v6, "ex":Ljava/lang/Throwable;
    const-string v0, "System"

    const-string v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const-string v0, "System"

    const-string v1, "************ Failure starting system services"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    throw v6
.end method

.method private startBootstrapServices()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 347
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/pm/Installer;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Installer;

    .line 350
    .local v1, "installer":Lcom/android/server/pm/Installer;
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 352
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 353
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 359
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService;

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 363
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 367
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService;

    iput-object v2, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 370
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 373
    const-string v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "cryptState":Ljava/lang/String;
    const-string v2, "trigger_restart_min_framework"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 375
    const-string v2, "SystemServer"

    const-string v4, "Detected encryption in progress - only parsing core apps"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iput-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 383
    :cond_0
    :goto_0
    const-string v2, "SystemServer"

    const-string v4, "Package Manager"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    iget-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v4, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 386
    iget-object v2, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 387
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 389
    const-string v2, "SystemServer"

    const-string v3, "User Service"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-string v2, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 393
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 396
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 397
    return-void

    .line 377
    :cond_1
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 378
    const-string v2, "SystemServer"

    const-string v4, "Device encrypted - only parsing core apps"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iput-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto :goto_0

    .line 384
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private startCoreServices()V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/lights/LightsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 407
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 410
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 411
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 414
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getUsageStatsIfNoPackageUsageInfo()V

    .line 417
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 418
    return-void
.end method

.method private static final startDpmService(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1387
    const/4 v4, 0x0

    .line 1388
    .local v4, "dpmObj":Ljava/lang/Object;
    :try_start_0
    const-string v6, "persist.dpm.feature"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1389
    .local v3, "dpmFeature":I
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DPM configuration set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    if-lez v3, :cond_0

    const/16 v6, 0x10

    if-ge v3, v6, :cond_0

    .line 1392
    new-instance v1, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/com.qti.dpmframework.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1395
    .local v1, "dpmClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.qti.dpm.DpmService"

    invoke-virtual {v1, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1396
    .local v0, "dpmClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 1398
    .local v2, "dpmConstructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 1400
    if-eqz v4, :cond_0

    :try_start_1
    instance-of v6, v4, Landroid/os/IBinder;

    if-eqz v6, :cond_0

    .line 1401
    const-string v6, "dpmservice"

    check-cast v4, Landroid/os/IBinder;

    .end local v4    # "dpmObj":Ljava/lang/Object;
    invoke-static {v6, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1402
    const-string v6, "SystemServer"

    const-string v7, "Created DPM Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1411
    .end local v0    # "dpmClass":Ljava/lang/Class;
    .end local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .end local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "dpmFeature":I
    :cond_0
    :goto_0
    return-void

    .line 1404
    .restart local v0    # "dpmClass":Ljava/lang/Class;
    .restart local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .restart local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .restart local v3    # "dpmFeature":I
    :catch_0
    move-exception v5

    .line 1405
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "SystemServer"

    const-string v7, "starting DPM Service"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1408
    .end local v0    # "dpmClass":Ljava/lang/Class;
    .end local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .end local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "dpmFeature":I
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 1409
    .local v5, "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string v7, "starting DPM Service"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startOtherServices()V
    .locals 121
    .annotation build Landroid/annotation/VibeHook;
        module = .enum Landroid/annotation/VibeHook$VibeHookModule;->THEME:Landroid/annotation/VibeHook$VibeHookModule;
        note = "Lenovo-SW huangzb1 modify 2014-09-26 ,new LenovoAppIconManager,fixed LVPCCR-19"
        type = .enum Landroid/annotation/VibeHook$VibeHookType;->CHANGE_CODE:Landroid/annotation/VibeHook$VibeHookType;
    .end annotation

    .prologue
    .line 426
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 427
    .local v3, "context":Landroid/content/Context;
    const/16 v34, 0x0

    .line 428
    .local v34, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v54, 0x0

    .line 429
    .local v54, "contentService":Lcom/android/server/content/ContentService;
    const/16 v111, 0x0

    .line 430
    .local v111, "vibrator":Lcom/android/server/VibratorService;
    const/16 v36, 0x0

    .line 431
    .local v36, "alarm":Landroid/app/IAlarmManager;
    const/16 v87, 0x0

    .line 432
    .local v87, "mountService":Lcom/android/server/MountService;
    const/4 v7, 0x0

    .line 433
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v6, 0x0

    .line 434
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v89, 0x0

    .line 435
    .local v89, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v50, 0x0

    .line 436
    .local v50, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v90, 0x0

    .line 437
    .local v90, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v103, 0x0

    .line 438
    .local v103, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v120, 0x0

    .line 439
    .local v120, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v45, 0x0

    .line 440
    .local v45, "bluetooth":Lcom/android/server/BluetoothManagerService;
    const/16 v110, 0x0

    .line 441
    .local v110, "usb":Lcom/android/server/usb/UsbService;
    const/16 v101, 0x0

    .line 442
    .local v101, "serial":Lcom/android/server/SerialService;
    const/16 v93, 0x0

    .line 443
    .local v93, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v47, 0x0

    .line 444
    .local v47, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v75, 0x0

    .line 445
    .local v75, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v106, 0x0

    .line 446
    .local v106, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v52, 0x0

    .line 447
    .local v52, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v43, 0x0

    .line 448
    .local v43, "audioService":Landroid/media/AudioService;
    const/16 v86, 0x0

    .line 449
    .local v86, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v98, 0x0

    .line 452
    .local v98, "profile":Lcom/android/server/ProfileManagerService;
    const/16 v96, 0x0

    .line 456
    .local v96, "powerguru":Lcom/android/server/PowerGuruService;
    const/16 v39, 0x0

    .line 462
    .local v39, "appPcService":Lcom/android/server/am/AppPcService;
    const/16 v37, 0x0

    .line 466
    .local v37, "appIconThemeServices":Lvibeui/content/res/AppIconThemeServices;
    const-string v4, "config.disable_storage"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v69

    .line 467
    .local v69, "disableStorage":Z
    const-string v4, "config.disable_media"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v65

    .line 468
    .local v65, "disableMedia":Z
    const-string v4, "config.disable_bluetooth"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v63

    .line 469
    .local v63, "disableBluetooth":Z
    const-string v4, "config.disable_telephony"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v71

    .line 470
    .local v71, "disableTelephony":Z
    const-string v4, "config.disable_location"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v64

    .line 471
    .local v64, "disableLocation":Z
    const-string v4, "config.disable_systemui"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v70

    .line 472
    .local v70, "disableSystemUI":Z
    const-string v4, "config.disable_noncore"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v68

    .line 473
    .local v68, "disableNonCoreServices":Z
    const-string v4, "config.disable_network"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v66

    .line 474
    .local v66, "disableNetwork":Z
    const-string v4, "config.disable_networktime"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v67

    .line 475
    .local v67, "disableNetworkTime":Z
    const-string v4, "ro.kernel.qemu"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v77

    .line 476
    .local v77, "isEmulator":Z
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, #android:bool@config_digitalPenCapable#t

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v58

    .line 478
    .local v58, "digitalPenCapable":Z
    const-string v4, "config.disable_atlas"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v62

    .line 481
    .local v62, "disableAtlas":Z
    :try_start_0
    const-string v4, "SystemServer"

    const-string v5, "Reading configuration..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 484
    const-string v4, "SystemServer"

    const-string v5, "Scheduling Policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const-string v4, "scheduling_policy"

    new-instance v5, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v5}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 489
    const-string v4, "SystemServer"

    const-string v5, "Telephony Registry"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    new-instance v107, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v107

    invoke-direct {v0, v3}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_46

    .line 491
    .end local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v107, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string v4, "telephony.registry"

    move-object/from16 v0, v107

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 493
    const-string v4, "SystemServer"

    const-string v5, "Entropy Mixer"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const-string v4, "entropy"

    new-instance v5, Lcom/android/server/EntropyMixer;

    invoke-direct {v5, v3}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 496
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 501
    :try_start_2
    const-string v4, "SystemServer"

    const-string v5, "Account Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    new-instance v35, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v35

    invoke-direct {v0, v3}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 503
    .end local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v35, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_3
    const-string v4, "account"

    move-object/from16 v0, v35

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4c
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_47

    move-object/from16 v34, v35

    .line 508
    .end local v35    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_0
    :try_start_4
    const-string v4, "SystemServer"

    const-string v5, "Content Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_27

    const/4 v4, 0x1

    :goto_1
    invoke-static {v3, v4}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v54

    .line 512
    const-string v4, "SystemServer"

    const-string v5, "System Content Providers"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 515
    const-string v4, "SystemServer"

    const-string v5, "Vibrator Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    new-instance v112, Lcom/android/server/VibratorService;

    move-object/from16 v0, v112

    invoke-direct {v0, v3}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 517
    .end local v111    # "vibrator":Lcom/android/server/VibratorService;
    .local v112, "vibrator":Lcom/android/server/VibratorService;
    :try_start_5
    const-string v4, "vibrator"

    move-object/from16 v0, v112

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 519
    const-string v4, "SystemServer"

    const-string v5, "Consumer IR Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    new-instance v53, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v53

    invoke-direct {v0, v3}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_48

    .line 521
    .end local v52    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v53, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_6
    const-string v4, "consumer_ir"

    move-object/from16 v0, v53

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 524
    const-string v4, "SystemServer"

    const-string v5, "PowerGuru Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    new-instance v97, Lcom/android/server/PowerGuruService;

    move-object/from16 v0, v97

    invoke-direct {v0, v3}, Lcom/android/server/PowerGuruService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_49

    .line 526
    .end local v96    # "powerguru":Lcom/android/server/PowerGuruService;
    .local v97, "powerguru":Lcom/android/server/PowerGuruService;
    :try_start_7
    const-string v4, "powerguru"

    move-object/from16 v0, v97

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 528
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mAlarmManagerService:Lcom/android/server/AlarmManagerService;

    .line 529
    const-string v4, "alarm"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v36

    .line 532
    const-string v4, "SystemServer"

    const-string v5, "Init Watchdog"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v116

    .line 534
    .local v116, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v116

    invoke-virtual {v0, v3, v4}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 536
    const-string v4, "SystemServer"

    const-string v5, "Input Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    new-instance v76, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v76

    invoke-direct {v0, v3}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4a

    .line 539
    .end local v75    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v76, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_8
    const-string v4, "SystemServer"

    const-string v5, "Window Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_28

    const/4 v4, 0x1

    move v5, v4

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-nez v4, :cond_29

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move-object/from16 v0, v76

    invoke-static {v3, v0, v5, v4, v8}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v120

    .line 543
    const-string v4, "window"

    move-object/from16 v0, v120

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 544
    const-string v4, "input"

    move-object/from16 v0, v76

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 546
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v120

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 548
    invoke-virtual/range {v120 .. v120}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v4

    move-object/from16 v0, v76

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 549
    invoke-virtual/range {v76 .. v76}, Lcom/android/server/input/InputManagerService;->start()V

    .line 552
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 557
    if-eqz v77, :cond_2a

    .line 558
    const-string v4, "SystemServer"

    const-string v5, "No Bluetooh Service (emulator)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    :goto_4
    move-object/from16 v96, v97

    .end local v97    # "powerguru":Lcom/android/server/PowerGuruService;
    .restart local v96    # "powerguru":Lcom/android/server/PowerGuruService;
    move-object/from16 v52, v53

    .end local v53    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v52    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v106, v107

    .end local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v75, v76

    .end local v76    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v75    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v111, v112

    .line 576
    .end local v112    # "vibrator":Lcom/android/server/VibratorService;
    .end local v116    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v111    # "vibrator":Lcom/android/server/VibratorService;
    :goto_5
    const/16 v104, 0x0

    .line 577
    .local v104, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v95, 0x0

    .line 578
    .local v95, "notification":Landroid/app/INotificationManager;
    const/16 v73, 0x0

    .line 579
    .local v73, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v114, 0x0

    .line 580
    .local v114, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    const/16 v79, 0x0

    .line 581
    .local v79, "location":Lcom/android/server/LocationManagerService;
    const/16 v55, 0x0

    .line 582
    .local v55, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v108, 0x0

    .line 583
    .local v108, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v81, 0x0

    .line 584
    .local v81, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v41, 0x0

    .line 585
    .local v41, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v83, 0x0

    .line 588
    .local v83, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 592
    :try_start_9
    const-string v4, "SystemServer"

    const-string v5, "Input Method Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v74, Lcom/android/server/MzInputMethodManagerService;

    move-object/from16 v0, v74

    move-object/from16 v1, v120

    invoke-direct {v0, v3, v1}, Lcom/android/server/MzInputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    .line 594
    .end local v73    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v74, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_a
    const-string v4, "input_method"

    move-object/from16 v0, v74

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_45

    move-object/from16 v73, v74

    .line 600
    .end local v74    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v73    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_6
    :try_start_b
    const-string v4, "SystemServer"

    const-string v5, "Accessibility Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const-string v4, "accessibility"

    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    .line 610
    :cond_0
    :goto_7
    :try_start_c
    invoke-virtual/range {v120 .. v120}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    .line 615
    :goto_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 616
    if-nez v69, :cond_1

    const-string v4, "0"

    const-string v5, "system_init.startmountservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 623
    :try_start_d
    const-string v4, "SystemServer"

    const-string v5, "Mount Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    new-instance v88, Lcom/android/server/MountService;

    move-object/from16 v0, v88

    invoke-direct {v0, v3}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6

    .line 625
    .end local v87    # "mountService":Lcom/android/server/MountService;
    .local v88, "mountService":Lcom/android/server/MountService;
    :try_start_e
    const-string v4, "mount"

    move-object/from16 v0, v88

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_44

    move-object/from16 v87, v88

    .line 633
    .end local v88    # "mountService":Lcom/android/server/MountService;
    .restart local v87    # "mountService":Lcom/android/server/MountService;
    :cond_1
    :goto_9
    :try_start_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->performBootDexOpt()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_7

    .line 639
    :goto_a
    :try_start_10
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, #android:string@android_upgrading_starting_apps#t

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v8, 0x0

    invoke-interface {v4, v5, v8}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_43

    .line 646
    :goto_b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_31

    .line 647
    if-nez v68, :cond_3

    .line 649
    :try_start_11
    const-string v4, "SystemServer"

    const-string v5, "LockSettingsService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    new-instance v82, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v82

    invoke-direct {v0, v3}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_8

    .line 651
    .end local v81    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v82, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_12
    const-string v4, "lock_settings"

    move-object/from16 v0, v82

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_42

    move-object/from16 v81, v82

    .line 656
    .end local v82    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v81    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_c
    const-string v4, "ro.frp.pst"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 657
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 662
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 665
    :cond_3
    if-nez v70, :cond_4

    .line 667
    :try_start_13
    const-string v4, "SystemServer"

    const-string v5, "Status Bar"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    new-instance v105, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v105

    move-object/from16 v1, v120

    invoke-direct {v0, v3, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_9

    .line 669
    .end local v104    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v105, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_14
    const-string v4, "statusbar"

    move-object/from16 v0, v105

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer$FlymeInjector;->addFlymeStatusBarManagerService()V

    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_41

    move-object/from16 v104, v105

    .line 675
    .end local v105    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v104    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_4
    :goto_d
    if-nez v68, :cond_5

    .line 677
    :try_start_15
    const-string v4, "SystemServer"

    const-string v5, "Clipboard Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    const-string v4, "clipboard"

    new-instance v5, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v5, v3}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_a

    .line 685
    :cond_5
    :goto_e
    if-nez v66, :cond_6

    .line 687
    :try_start_16
    const-string v4, "SystemServer"

    const-string v5, "NetworkManagement Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v7

    const-string v4, "network_management"

    invoke-static {v4, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static/range {p0 .. p0}, Lcom/android/server/SystemServer$FlymeInjector;->addNetworkManagementServiceFlyme(Lcom/android/server/SystemServer;)V

    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_b

    :cond_6
    :goto_f
    if-nez v68, :cond_7

    :try_start_17
    const-string v4, "SystemServer"

    const-string v5, "Text Service Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    new-instance v109, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v109

    invoke-direct {v0, v3}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_c

    .line 699
    .end local v108    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v109, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_18
    const-string v4, "textservices"

    move-object/from16 v0, v109

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_40

    move-object/from16 v108, v109

    .line 705
    .end local v109    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v108    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_7
    :goto_10
    if-nez v66, :cond_30

    .line 707
    :try_start_19
    const-string v4, "SystemServer"

    const-string v5, "Network Score Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    new-instance v91, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v91

    invoke-direct {v0, v3}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_d

    .line 709
    .end local v90    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v91, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_1a
    const-string v4, "network_score"

    move-object/from16 v0, v91

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_3f

    move-object/from16 v90, v91

    .line 715
    .end local v91    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v90    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_11
    :try_start_1b
    const-string v4, "SystemServer"

    const-string v5, "NetworkStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    new-instance v92, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v92

    move-object/from16 v1, v36

    invoke-direct {v0, v3, v7, v1}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_e

    .line 717
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v92, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_1c
    const-string v4, "netstats"

    move-object/from16 v0, v92

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_3e

    move-object/from16 v6, v92

    .line 723
    .end local v92    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_12
    :try_start_1d
    const-string v4, "SystemServer"

    const-string v5, "NetworkPolicy Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Landroid/os/IPowerManager;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_f

    .line 728
    .end local v89    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v2, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_1e
    const-string v4, "netpolicy"

    invoke-static {v4, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_3d

    .line 733
    :goto_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 734
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.WifiService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 735
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.WifiScanningService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 738
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.RttService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 740
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.ethernet"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 741
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 745
    :cond_8
    :try_start_1f
    const-string v4, "SystemServer"

    const-string v5, "Connectivity Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    new-instance v51, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v51

    invoke-direct {v0, v3, v7, v6, v2}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_10

    .line 748
    .end local v50    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v51, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_20
    const-string v4, "connectivity"

    move-object/from16 v0, v51

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 749
    move-object/from16 v0, v51

    invoke-virtual {v6, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 750
    move-object/from16 v0, v51

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_3c

    move-object/from16 v50, v51

    .line 756
    .end local v51    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v50    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_14
    invoke-static/range {p0 .. p0}, Lcom/android/server/SystemServer$FlymeInjector;->addSambaService(Lcom/android/server/SystemServer;)V

    :try_start_21
    const-string v4, "SystemServer"

    const-string v5, "Network Service Discovery Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    invoke-static {v3}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v103

    .line 758
    const-string v4, "servicediscovery"

    move-object/from16 v0, v103

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_11

    .line 764
    :goto_15
    :try_start_22
    const-string v4, "SystemServer"

    const-string v5, "DPM Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-static {v3}, Lcom/android/server/SystemServer;->startDpmService(Landroid/content/Context;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_12

    .line 771
    :goto_16
    if-nez v68, :cond_9

    .line 773
    :try_start_23
    const-string v4, "SystemServer"

    const-string v5, "UpdateLock Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const-string v4, "updatelock"

    new-instance v5, Lcom/android/server/UpdateLockService;

    invoke-direct {v5, v3}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_13

    .line 786
    :cond_9
    :goto_17
    if-eqz v87, :cond_a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v4, :cond_a

    .line 787
    invoke-virtual/range {v87 .. v87}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 791
    :cond_a
    if-eqz v34, :cond_b

    .line 792
    :try_start_24
    invoke-virtual/range {v34 .. v34}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_14

    .line 798
    :cond_b
    :goto_18
    if-eqz v54, :cond_c

    .line 799
    :try_start_25
    invoke-virtual/range {v54 .. v54}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_15

    .line 804
    :cond_c
    :goto_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 805
    const-string v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v95

    .line 807
    move-object/from16 v0, v95

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 809
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 811
    if-nez v64, :cond_d

    .line 813
    :try_start_26
    const-string v4, "SystemServer"

    const-string v5, "Location Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    new-instance v80, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v80

    invoke-direct {v0, v3}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_16

    .line 815
    .end local v79    # "location":Lcom/android/server/LocationManagerService;
    .local v80, "location":Lcom/android/server/LocationManagerService;
    :try_start_27
    const-string v4, "location"

    move-object/from16 v0, v80

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_3b

    move-object/from16 v79, v80

    .line 821
    .end local v80    # "location":Lcom/android/server/LocationManagerService;
    .restart local v79    # "location":Lcom/android/server/LocationManagerService;
    :goto_1a
    :try_start_28
    const-string v4, "SystemServer"

    const-string v5, "Country Detector"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    new-instance v56, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v56

    invoke-direct {v0, v3}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_17

    .line 823
    .end local v55    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v56, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_29
    const-string v4, "country_detector"

    move-object/from16 v0, v56

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_3a

    move-object/from16 v55, v56

    .line 829
    .end local v56    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v55    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_d
    :goto_1b
    if-nez v68, :cond_e

    .line 831
    :try_start_2a
    const-string v4, "SystemServer"

    const-string v5, "Search Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    const-string v4, "search"

    new-instance v5, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_18

    .line 840
    :cond_e
    :goto_1c
    :try_start_2b
    const-string v4, "SystemServer"

    const-string v5, "DropBox Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    const-string v4, "dropbox"

    new-instance v5, Lcom/android/server/DropBoxManagerService;

    new-instance v8, Ljava/io/File;

    const-string v9, "/data/system/dropbox"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v3, v8}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_19

    .line 847
    :goto_1d
    if-nez v68, :cond_f

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, #android:bool@config_enableWallpaperService#t

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 850
    :try_start_2c
    const-string v4, "SystemServer"

    const-string v5, "Wallpaper Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    new-instance v115, Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v115

    invoke-direct {v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_1a

    .line 852
    .end local v114    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v115, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :try_start_2d
    const-string v4, "wallpaper"

    move-object/from16 v0, v115

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_39

    move-object/from16 v114, v115

    .line 858
    .end local v115    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v114    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_f
    :goto_1e
    if-nez v68, :cond_10

    .line 860
    :try_start_2e
    const-string v4, "SystemServer"

    const-string v5, "Profile Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    new-instance v99, Lcom/android/server/ProfileManagerService;

    move-object/from16 v0, v99

    invoke-direct {v0, v3}, Lcom/android/server/ProfileManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_1b

    .line 862
    .end local v98    # "profile":Lcom/android/server/ProfileManagerService;
    .local v99, "profile":Lcom/android/server/ProfileManagerService;
    :try_start_2f
    const-string v4, "profile"

    move-object/from16 v0, v99

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_38

    move-object/from16 v98, v99

    .line 868
    .end local v99    # "profile":Lcom/android/server/ProfileManagerService;
    .restart local v98    # "profile":Lcom/android/server/ProfileManagerService;
    :cond_10
    :goto_1f
    if-nez v65, :cond_11

    const-string v4, "0"

    const-string v5, "system_init.startaudioservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 870
    :try_start_30
    const-string v4, "SystemServer"

    const-string v5, "Audio Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    new-instance v44, Landroid/media/AudioService;

    move-object/from16 v0, v44

    invoke-direct {v0, v3}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_1c

    .line 872
    .end local v43    # "audioService":Landroid/media/AudioService;
    .local v44, "audioService":Landroid/media/AudioService;
    :try_start_31
    const-string v4, "audio"

    move-object/from16 v0, v44

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_37

    move-object/from16 v43, v44

    .line 878
    .end local v44    # "audioService":Landroid/media/AudioService;
    .restart local v43    # "audioService":Landroid/media/AudioService;
    :cond_11
    :goto_20
    if-nez v68, :cond_12

    .line 879
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DockObserver;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 882
    :cond_12
    if-nez v65, :cond_13

    .line 884
    :try_start_32
    const-string v4, "SystemServer"

    const-string v5, "Wired Accessory Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    new-instance v4, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v75

    invoke-direct {v4, v3, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v75

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_1d

    .line 893
    :cond_13
    :goto_21
    if-nez v68, :cond_16

    .line 894
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.accessory"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 898
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 902
    :cond_15
    :try_start_33
    const-string v4, "SystemServer"

    const-string v5, "Serial Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    new-instance v102, Lcom/android/server/SerialService;

    move-object/from16 v0, v102

    invoke-direct {v0, v3}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_1e

    .line 905
    .end local v101    # "serial":Lcom/android/server/SerialService;
    .local v102, "serial":Lcom/android/server/SerialService;
    :try_start_34
    const-string v4, "serial"

    move-object/from16 v0, v102

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_36

    move-object/from16 v101, v102

    .line 911
    .end local v102    # "serial":Lcom/android/server/SerialService;
    .restart local v101    # "serial":Lcom/android/server/SerialService;
    :cond_16
    :goto_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 913
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 915
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 917
    if-nez v68, :cond_19

    .line 918
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.backup"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 919
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 922
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.app_widgets"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 923
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 926
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.voice_recognizers"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 927
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 932
    :cond_19
    :try_start_35
    const-string v4, "SystemServer"

    const-string v5, "DiskStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const-string v4, "diskstats"

    new-instance v5, Lcom/android/server/DiskStatsService;

    invoke-direct {v5, v3}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1f

    .line 943
    :goto_23
    :try_start_36
    const-string v4, "SystemServer"

    const-string v5, "SamplingProfiler Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    const-string v4, "samplingprofiler"

    new-instance v5, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v5, v3}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_20

    .line 950
    :goto_24
    if-nez v66, :cond_1a

    if-nez v67, :cond_1a

    .line 952
    :try_start_37
    const-string v4, "SystemServer"

    const-string v5, "NetworkTimeUpdateService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    new-instance v94, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v94

    invoke-direct {v0, v3}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_21

    .end local v93    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v94, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v93, v94

    .line 959
    .end local v94    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v93    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_1a
    :goto_25
    if-nez v65, :cond_1b

    .line 961
    :try_start_38
    const-string v4, "SystemServer"

    const-string v5, "CommonTimeManagementService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    new-instance v48, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v48

    invoke-direct {v0, v3}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_22

    .line 963
    .end local v47    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v48, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_39
    const-string v4, "commontime_management"

    move-object/from16 v0, v48

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_35

    move-object/from16 v47, v48

    .line 969
    .end local v48    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v47    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :cond_1b
    :goto_26
    if-nez v66, :cond_1c

    .line 971
    :try_start_3a
    const-string v4, "SystemServer"

    const-string v5, "CertBlacklister"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    new-instance v4, Lcom/android/server/CertBlacklister;

    invoke-direct {v4, v3}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_23

    .line 978
    :cond_1c
    :goto_27
    if-nez v68, :cond_1d

    .line 980
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_1d

    goto/16 :goto_flyme_0

    if-nez v68, :cond_1e

    if-nez v62, :cond_1e

    :try_start_3b
    const-string v4, "SystemServer"

    const-string v5, "Assets Atlas Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    new-instance v42, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v42

    invoke-direct {v0, v3}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_24

    .line 987
    .end local v41    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v42, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_3c
    const-string v4, "assetatlas"

    move-object/from16 v0, v42

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_34

    move-object/from16 v41, v42

    .end local v42    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v41    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_1e
    :goto_flyme_0
    :goto_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.print"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.print.PrintManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.hdmi.cec"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.live_tv"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_21
    if-nez v68, :cond_22

    :try_start_3d
    const-string v4, "SystemServer"

    const-string v5, "Media Router Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v84, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v84

    invoke-direct {v0, v3}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_25

    .end local v83    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v84, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_3e
    const-string v4, "media_router"

    move-object/from16 v0, v84

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_33

    move-object/from16 v83, v84

    .end local v84    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v83    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :try_start_3f
    const-string v4, "SystemServer"

    const-string v5, "BackgroundDexOptService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_26

    :cond_22
    :goto_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    const-string v4, "ro.bluetooth.wipower"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v78

    .local v78, "isWipowerEnabled":Z
    if-eqz v78, :cond_2e

    :try_start_40
    const-string v33, "wbc_service"

    .local v33, "WBC_SERVICE_NAME":Ljava/lang/String;
    const-string v4, "SystemServer"

    const-string v5, "WipowerBatteryControl Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v118, Ldalvik/system/PathClassLoader;

    const-string v4, "/system/framework/com.quicinc.wbc.jar:/system/framework/com.quicinc.wbcservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object/from16 v0, v118

    invoke-direct {v0, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .local v118, "wbcClassLoader":Ldalvik/system/PathClassLoader;
    const-string v4, "com.quicinc.wbcservice.WbcService"

    move-object/from16 v0, v118

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v117

    .local v117, "wbcClass":Ljava/lang/Class;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v4, v5

    move-object/from16 v0, v117

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v57

    .local v57, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    move-object/from16 v0, v57

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v119

    .local v119, "wbcObject":Ljava/lang/Object;
    const-string v4, "SystemServer"

    const-string v5, "Successfully loaded WbcService class"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "wbc_service"

    check-cast v119, Landroid/os/IBinder;

    .end local v119    # "wbcObject":Ljava/lang/Object;
    move-object/from16 v0, v119

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_27

    .end local v33    # "WBC_SERVICE_NAME":Ljava/lang/String;
    .end local v57    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v117    # "wbcClass":Ljava/lang/Class;
    .end local v118    # "wbcClassLoader":Ldalvik/system/PathClassLoader;
    :goto_2b
    if-eqz v58, :cond_23

    :try_start_41
    const-string v4, "SystemServer"

    const-string v5, "Digital Pen Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v60, Ldalvik/system/PathClassLoader;

    const-string v4, "/system/framework/DigitalPenService.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object/from16 v0, v60

    invoke-direct {v0, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .local v60, "digitalPenClassLoader":Ldalvik/system/PathClassLoader;
    const-string v4, "com.qti.snapdragon.digitalpen.DigitalPenService"

    move-object/from16 v0, v60

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v59

    .local v59, "digitalPenClass":Ljava/lang/Class;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v4, v5

    move-object/from16 v0, v59

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v57

    .restart local v57    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    move-object/from16 v0, v57

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v61

    .local v61, "digitalPenRemoteObject":Ljava/lang/Object;
    const-string v4, "SystemServer"

    const-string v5, "Successfully loaded DigitalPenService class"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "DigitalPen"

    check-cast v61, Landroid/os/IBinder;

    .end local v61    # "digitalPenRemoteObject":Ljava/lang/Object;
    move-object/from16 v0, v61

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_28

    .end local v57    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v59    # "digitalPenClass":Ljava/lang/Class;
    .end local v60    # "digitalPenClassLoader":Ldalvik/system/PathClassLoader;
    .end local v78    # "isWipowerEnabled":Z
    :cond_23
    :goto_2c
    :try_start_42
    const-string v4, "SystemServer"

    const-string v5, "AppPcService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v40, Lcom/android/server/am/AppPcService;

    move-object/from16 v0, v40

    invoke-direct {v0, v3}, Lcom/android/server/am/AppPcService;-><init>(Landroid/content/Context;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_29

    .end local v39    # "appPcService":Lcom/android/server/am/AppPcService;
    .local v40, "appPcService":Lcom/android/server/am/AppPcService;
    :try_start_43
    const-string v4, "lenovopermission"

    move-object/from16 v0, v40

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_32

    move-object/from16 v39, v40

    .end local v40    # "appPcService":Lcom/android/server/am/AppPcService;
    .restart local v39    # "appPcService":Lcom/android/server/am/AppPcService;
    :goto_2d
    :try_start_44
    const-string v4, "SystemServer"

    const-string v5, "AppIconThemeServices"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v38, Lvibeui/content/res/AppIconThemeServices;

    move-object/from16 v0, v38

    invoke-direct {v0, v3}, Lvibeui/content/res/AppIconThemeServices;-><init>(Landroid/content/Context;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_2a

    .end local v37    # "appIconThemeServices":Lvibeui/content/res/AppIconThemeServices;
    .local v38, "appIconThemeServices":Lvibeui/content/res/AppIconThemeServices;
    :try_start_45
    const-string v4, "AppIconThemeServices"

    move-object/from16 v0, v38

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_31

    move-object/from16 v37, v38

    .end local v38    # "appIconThemeServices":Lvibeui/content/res/AppIconThemeServices;
    .restart local v37    # "appIconThemeServices":Lvibeui/content/res/AppIconThemeServices;
    :goto_2e
    if-nez v68, :cond_24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_24
    invoke-virtual/range {v120 .. v120}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v100

    .local v100, "safeMode":Z
    if-eqz v100, :cond_2f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    :goto_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v86

    .end local v86    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v86, Lcom/android/server/MmsServiceBroker;

    .restart local v86    # "mmsService":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v0, p0

    move-object/from16 v4, v120

    move-object/from16 v5, v114

    invoke-static {v0, v4, v5}, Lcom/android/server/SystemServer$FlymeInjector;->addFlymeServices(Lcom/android/server/SystemServer;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wallpaper/WallpaperManagerService;)V

    :try_start_46
    invoke-virtual/range {v111 .. v111}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_2b

    :goto_30
    if-eqz v81, :cond_25

    :try_start_47
    invoke-virtual/range {v81 .. v81}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_2c

    :cond_25
    :goto_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1e0

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1f4

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    :try_start_48
    invoke-virtual/range {v120 .. v120}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_2d

    :goto_32
    if-eqz v100, :cond_26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    :cond_26
    invoke-virtual/range {v120 .. v120}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v49

    .local v49, "config":Landroid/content/res/Configuration;
    new-instance v85, Landroid/util/DisplayMetrics;

    invoke-direct/range {v85 .. v85}, Landroid/util/DisplayMetrics;-><init>()V

    .local v85, "metrics":Landroid/util/DisplayMetrics;
    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v113

    check-cast v113, Landroid/view/WindowManager;

    .local v113, "w":Landroid/view/WindowManager;
    invoke-interface/range {v113 .. v113}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, v85

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, v49

    move-object/from16 v1, v85

    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :try_start_49
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_2e

    :goto_33
    :try_start_4a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_2f

    :goto_34
    :try_start_4b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v100

    invoke-virtual {v4, v0, v5}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_30

    :goto_35
    move-object/from16 v13, v87

    .local v13, "mountServiceF":Lcom/android/server/MountService;
    move-object v15, v7

    .local v15, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object/from16 v16, v6

    .local v16, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v17, v2

    .local v17, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v18, v50

    .local v18, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v14, v90

    .local v14, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v20, v114

    .local v20, "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    move-object/from16 v21, v73

    .local v21, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v23, v79

    .local v23, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v24, v55

    .local v24, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v25, v93

    .local v25, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v26, v47

    .local v26, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v27, v108

    .local v27, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v22, v104

    .local v22, "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    move-object/from16 v28, v41

    .local v28, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v29, v75

    .local v29, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v30, v106

    .local v30, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v31, v83

    .local v31, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v19, v43

    .local v19, "audioServiceF":Landroid/media/AudioService;
    move-object/from16 v32, v86

    .local v32, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v10, v39

    .local v10, "appPcServiceF":Lcom/android/server/am/AppPcService;
    move-object/from16 v11, v37

    .local v11, "appIconThemeServiceF":Lvibeui/content/res/AppIconThemeServices;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v8, Lcom/android/server/SystemServer$2;

    move-object/from16 v9, p0

    move-object v12, v3

    invoke-direct/range {v8 .. v32}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Lcom/android/server/am/AppPcService;Lvibeui/content/res/AppIconThemeServices;Landroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Landroid/media/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    return-void

    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v10    # "appPcServiceF":Lcom/android/server/am/AppPcService;
    .end local v11    # "appIconThemeServiceF":Lvibeui/content/res/AppIconThemeServices;
    .end local v13    # "mountServiceF":Lcom/android/server/MountService;
    .end local v14    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v15    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v16    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v17    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v18    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v19    # "audioServiceF":Landroid/media/AudioService;
    .end local v20    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v21    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v22    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v23    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v24    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v25    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v26    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v27    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v28    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v29    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v30    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v31    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v32    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v41    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v49    # "config":Landroid/content/res/Configuration;
    .end local v55    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v73    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v79    # "location":Lcom/android/server/LocationManagerService;
    .end local v81    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v83    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v85    # "metrics":Landroid/util/DisplayMetrics;
    .end local v95    # "notification":Landroid/app/INotificationManager;
    .end local v100    # "safeMode":Z
    .end local v104    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v108    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v113    # "w":Landroid/view/WindowManager;
    .end local v114    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v89    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_0
    move-exception v72

    .local v72, "e":Ljava/lang/Throwable;
    :goto_36
    :try_start_4c
    const-string v4, "SystemServer"

    const-string v5, "Failure starting Account Manager"

    move-object/from16 v0, v72

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catch Ljava/lang/RuntimeException; {:try_start_4c .. :try_end_4c} :catch_1

    goto/16 :goto_0

    .end local v72    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v72

    move-object/from16 v106, v107

    .end local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v72, "e":Ljava/lang/RuntimeException;
    .restart local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :goto_37
    const-string v4, "System"

    const-string v5, "******************************************"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "System"

    const-string v5, "************ Failure starting core service"

    move-object/from16 v0, v72

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .end local v72    # "e":Ljava/lang/RuntimeException;
    .end local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :cond_27
    const/4 v4, 0x0

    goto/16 :goto_1

    .end local v52    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v75    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v96    # "powerguru":Lcom/android/server/PowerGuruService;
    .end local v111    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v53    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v76    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v97    # "powerguru":Lcom/android/server/PowerGuruService;
    .restart local v112    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v116    # "watchdog":Lcom/android/server/Watchdog;
    :cond_28
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_2

    :cond_29
    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_2a
    :try_start_4d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2b

    const-string v4, "SystemServer"

    const-string v5, "No Bluetooth Service (factory test)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :catch_2
    move-exception v72

    move-object/from16 v96, v97

    .end local v97    # "powerguru":Lcom/android/server/PowerGuruService;
    .restart local v96    # "powerguru":Lcom/android/server/PowerGuruService;
    move-object/from16 v52, v53

    .end local v53    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v52    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v106, v107

    .end local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v75, v76

    .end local v76    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v75    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v111, v112

    .end local v112    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v111    # "vibrator":Lcom/android/server/VibratorService;
    goto :goto_37

    .end local v52    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v75    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v96    # "powerguru":Lcom/android/server/PowerGuruService;
    .end local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v111    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v53    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v76    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v97    # "powerguru":Lcom/android/server/PowerGuruService;
    .restart local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v112    # "vibrator":Lcom/android/server/VibratorService;
    :cond_2b
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.bluetooth"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2c

    const-string v4, "SystemServer"

    const-string v5, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_2c
    if-eqz v63, :cond_2d

    const-string v4, "SystemServer"

    const-string v5, "Bluetooth Service disabled by config"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_2d
    const-string v4, "SystemServer"

    const-string v5, "Bluetooth Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v46, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v46

    invoke-direct {v0, v3}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4d
    .catch Ljava/lang/RuntimeException; {:try_start_4d .. :try_end_4d} :catch_2

    .end local v45    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .local v46, "bluetooth":Lcom/android/server/BluetoothManagerService;
    :try_start_4e
    const-string v4, "bluetooth_manager"

    move-object/from16 v0, v46

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4e
    .catch Ljava/lang/RuntimeException; {:try_start_4e .. :try_end_4e} :catch_4b

    move-object/from16 v45, v46

    .end local v46    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v45    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_4

    .end local v53    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v76    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v97    # "powerguru":Lcom/android/server/PowerGuruService;
    .end local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v112    # "vibrator":Lcom/android/server/VibratorService;
    .end local v116    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v41    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v52    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v55    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v73    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v75    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v79    # "location":Lcom/android/server/LocationManagerService;
    .restart local v81    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v83    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v95    # "notification":Landroid/app/INotificationManager;
    .restart local v96    # "powerguru":Lcom/android/server/PowerGuruService;
    .restart local v104    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v108    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v111    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v114    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_3
    move-exception v72

    .local v72, "e":Ljava/lang/Throwable;
    :goto_38
    const-string v4, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .end local v72    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .end local v72    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    const-string v4, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .end local v72    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    :goto_39
    const-string v4, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .end local v72    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    const-string v4, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .end local v72    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    :goto_3a
    const-string v4, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .end local v72    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    :goto_3b
    const-string v4, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .end local v72    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .end local v72    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    const-string v4, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .end local v72    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    :goto_3c
    const-string v4, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .end local v72    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    :goto_3d
    const-string v4, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .end local v72    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    :goto_3e
    const-string v4, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .end local v72    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v72

    move-object/from16 v2, v89

    .end local v89    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v72    # "e":Ljava/lang/Throwable;
    :goto_3f
    const-string v4, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .end local v72    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    :goto_40
    const-string v4, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .end local v72    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .end local v72    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    const-string v4, "starting DpmService"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .end local v72    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    const-string v4, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .end local v72    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    const-string v4, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .end local v72    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    const-string v4, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .end local v72    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    :goto_41
    const-string v4, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .end local v72    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    :goto_42
    const-string v4, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .end local v72    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .end local v72    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    const-string v4, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .end local v72    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    :goto_43
    const-string v4, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .end local v72    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    :goto_44
    const-string v4, "Failure starting Profile Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .end local v72    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    :goto_45
    const-string v4, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .end local v72    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    const-string v4, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .end local v72    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    :goto_46
    const-string v4, "SystemServer"

    const-string v5, "Failure starting SerialService"

    move-object/from16 v0, v72

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_22

    .end local v72    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    const-string v4, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .end local v72    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    const-string v4, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .end local v72    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    const-string v4, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .end local v72    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    :goto_47
    const-string v4, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .end local v72    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    const-string v4, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .end local v72    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    :goto_48
    const-string v4, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .end local v72    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    :goto_49
    const-string v4, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .end local v72    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    const-string v4, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .end local v72    # "e":Ljava/lang/Throwable;
    .restart local v78    # "isWipowerEnabled":Z
    :catch_27
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    const-string v4, "starting WipowerBatteryControl Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .end local v72    # "e":Ljava/lang/Throwable;
    :cond_2e
    const-string v4, "SystemServer"

    const-string v5, "Wipower not supported"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b

    :catch_28
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    const-string v4, "starting DigitalPenService"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .end local v72    # "e":Ljava/lang/Throwable;
    .end local v78    # "isWipowerEnabled":Z
    :catch_29
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    :goto_4a
    const-string v4, "SystemServer"

    const-string v5, "FAIL starting AppPcService"

    move-object/from16 v0, v72

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2d

    .end local v72    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    :goto_4b
    const-string v4, "SystemServer"

    const-string v5, "FAIL starting appIconThemeServices"

    move-object/from16 v0, v72

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2e

    .end local v72    # "e":Ljava/lang/Throwable;
    .restart local v100    # "safeMode":Z
    :cond_2f
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_2f

    :catch_2b
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    const-string v4, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .end local v72    # "e":Ljava/lang/Throwable;
    :catch_2c
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    const-string v4, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .end local v72    # "e":Ljava/lang/Throwable;
    :catch_2d
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    const-string v4, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .end local v72    # "e":Ljava/lang/Throwable;
    .restart local v49    # "config":Landroid/content/res/Configuration;
    .restart local v85    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v113    # "w":Landroid/view/WindowManager;
    :catch_2e
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    const-string v4, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .end local v72    # "e":Ljava/lang/Throwable;
    :catch_2f
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    const-string v4, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .end local v72    # "e":Ljava/lang/Throwable;
    :catch_30
    move-exception v72

    .restart local v72    # "e":Ljava/lang/Throwable;
    const-string v4, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .end local v37    # "appIconThemeServices":Lvibeui/content/res/AppIconThemeServices;
    .end local v49    # "config":Landroid/content/res/Configuration;
    .end local v72    # "e":Ljava/lang/Throwable;
    .end local v85    # "metrics":Landroid/util/DisplayMetrics;
    .end local v100    # "safeMode":Z
    .end local v113    # "w":Landroid/view/WindowManager;
    .restart local v38    # "appIconThemeServices":Lvibeui/content/res/AppIconThemeServices;
    :catch_31
    move-exception v72

    move-object/from16 v37, v38

    .end local v38    # "appIconThemeServices":Lvibeui/content/res/AppIconThemeServices;
    .restart local v37    # "appIconThemeServices":Lvibeui/content/res/AppIconThemeServices;
    goto :goto_4b

    .end local v39    # "appPcService":Lcom/android/server/am/AppPcService;
    .restart local v40    # "appPcService":Lcom/android/server/am/AppPcService;
    :catch_32
    move-exception v72

    move-object/from16 v39, v40

    .end local v40    # "appPcService":Lcom/android/server/am/AppPcService;
    .restart local v39    # "appPcService":Lcom/android/server/am/AppPcService;
    goto :goto_4a

    .end local v83    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v84    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_33
    move-exception v72

    move-object/from16 v83, v84

    .end local v84    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v83    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_49

    .end local v41    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v42    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_34
    move-exception v72

    move-object/from16 v41, v42

    .line 993
    .end local v42    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v41    # "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_48

    .end local v47    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v48    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_35
    move-exception v72

    move-object/from16 v47, v48

    .end local v48    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v47    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_47

    .end local v101    # "serial":Lcom/android/server/SerialService;
    .restart local v102    # "serial":Lcom/android/server/SerialService;
    :catch_36
    move-exception v72

    move-object/from16 v101, v102

    .end local v102    # "serial":Lcom/android/server/SerialService;
    .restart local v101    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_46

    .end local v43    # "audioService":Landroid/media/AudioService;
    .restart local v44    # "audioService":Landroid/media/AudioService;
    :catch_37
    move-exception v72

    move-object/from16 v43, v44

    .end local v44    # "audioService":Landroid/media/AudioService;
    .restart local v43    # "audioService":Landroid/media/AudioService;
    goto/16 :goto_45

    .end local v98    # "profile":Lcom/android/server/ProfileManagerService;
    .restart local v99    # "profile":Lcom/android/server/ProfileManagerService;
    :catch_38
    move-exception v72

    move-object/from16 v98, v99

    .end local v99    # "profile":Lcom/android/server/ProfileManagerService;
    .restart local v98    # "profile":Lcom/android/server/ProfileManagerService;
    goto/16 :goto_44

    .end local v114    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v115    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_39
    move-exception v72

    move-object/from16 v114, v115

    .end local v115    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v114    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    goto/16 :goto_43

    .end local v55    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v56    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_3a
    move-exception v72

    move-object/from16 v55, v56

    .end local v56    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v55    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_42

    .end local v79    # "location":Lcom/android/server/LocationManagerService;
    .restart local v80    # "location":Lcom/android/server/LocationManagerService;
    :catch_3b
    move-exception v72

    move-object/from16 v79, v80

    .end local v80    # "location":Lcom/android/server/LocationManagerService;
    .restart local v79    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_41

    .end local v50    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v51    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_3c
    move-exception v72

    move-object/from16 v50, v51

    .end local v51    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v50    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_40

    :catch_3d
    move-exception v72

    goto/16 :goto_3f

    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v89    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v92    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_3e
    move-exception v72

    move-object/from16 v6, v92

    .end local v92    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_3e

    .end local v90    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v91    # "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_3f
    move-exception v72

    move-object/from16 v90, v91

    .end local v91    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v90    # "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_3d

    .end local v108    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v109    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_40
    move-exception v72

    move-object/from16 v108, v109

    .end local v109    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v108    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_3c

    .end local v104    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v105    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_41
    move-exception v72

    move-object/from16 v104, v105

    .end local v105    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v104    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_3b

    .end local v81    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v82    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_42
    move-exception v72

    move-object/from16 v81, v82

    .end local v82    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v81    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_3a

    :catch_43
    move-exception v4

    goto/16 :goto_b

    .end local v87    # "mountService":Lcom/android/server/MountService;
    .restart local v88    # "mountService":Lcom/android/server/MountService;
    :catch_44
    move-exception v72

    move-object/from16 v87, v88

    .end local v88    # "mountService":Lcom/android/server/MountService;
    .restart local v87    # "mountService":Lcom/android/server/MountService;
    goto/16 :goto_39

    .end local v73    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v74    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_45
    move-exception v72

    move-object/from16 v73, v74

    .end local v74    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v73    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_38

    .end local v41    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v55    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v73    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v79    # "location":Lcom/android/server/LocationManagerService;
    .end local v81    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v83    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v95    # "notification":Landroid/app/INotificationManager;
    .end local v104    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v108    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v114    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_46
    move-exception v72

    goto/16 :goto_37

    .end local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v35    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_47
    move-exception v72

    move-object/from16 v106, v107

    .end local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v34, v35

    .end local v35    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_37

    .end local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v111    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v112    # "vibrator":Lcom/android/server/VibratorService;
    :catch_48
    move-exception v72

    move-object/from16 v106, v107

    .end local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v111, v112

    .end local v112    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v111    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_37

    .end local v52    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v111    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v53    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v112    # "vibrator":Lcom/android/server/VibratorService;
    :catch_49
    move-exception v72

    move-object/from16 v52, v53

    .end local v53    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v52    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v106, v107

    .end local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v111, v112

    .end local v112    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v111    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_37

    .line 540
    .end local v52    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v96    # "powerguru":Lcom/android/server/PowerGuruService;
    .end local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v111    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v53    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v97    # "powerguru":Lcom/android/server/PowerGuruService;
    .restart local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v112    # "vibrator":Lcom/android/server/VibratorService;
    :catch_4a
    move-exception v72

    move-object/from16 v96, v97

    .end local v97    # "powerguru":Lcom/android/server/PowerGuruService;
    .restart local v96    # "powerguru":Lcom/android/server/PowerGuruService;
    move-object/from16 v52, v53

    .end local v53    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v52    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v106, v107

    .end local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v111, v112

    .end local v112    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v111    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_37

    .line 569
    .end local v45    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v52    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v75    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v96    # "powerguru":Lcom/android/server/PowerGuruService;
    .end local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v111    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v46    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v53    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v76    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v97    # "powerguru":Lcom/android/server/PowerGuruService;
    .restart local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v112    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v116    # "watchdog":Lcom/android/server/Watchdog;
    :catch_4b
    move-exception v72

    move-object/from16 v96, v97

    .end local v97    # "powerguru":Lcom/android/server/PowerGuruService;
    .restart local v96    # "powerguru":Lcom/android/server/PowerGuruService;
    move-object/from16 v52, v53

    .line 595
    .end local v53    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v52    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v106, v107

    .end local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v75, v76

    .end local v76    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v75    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v45, v46

    .end local v46    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v45    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    move-object/from16 v111, v112

    .end local v112    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v111    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_37

    .line 504
    .end local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v116    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v35    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_4c
    move-exception v72

    move-object/from16 v34, v35

    .end local v35    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v34    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_36

    .end local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v41    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v55    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v73    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v79    # "location":Lcom/android/server/LocationManagerService;
    .restart local v81    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v83    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v95    # "notification":Landroid/app/INotificationManager;
    .restart local v104    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v108    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v114    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_30
    move-object/from16 v2, v89

    .end local v89    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_16

    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v89    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_31
    move-object/from16 v2, v89

    .end local v89    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_2c
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1378
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1379
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1382
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1383
    return-void
.end method

.method flymeGetFieldPackageManagerService()Lcom/android/server/pm/PackageManagerService;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method flymeGetFieldSystemContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    return-object v0
.end method
