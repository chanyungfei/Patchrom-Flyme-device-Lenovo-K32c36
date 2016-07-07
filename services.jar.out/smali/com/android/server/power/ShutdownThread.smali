.class public final Lcom/android/server/power/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownThread$FlymeInjector;,
        Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_RADIO_WAIT_TIME:I = 0x2ee0

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final OEM_BOOTANIMATION_FILE:Ljava/lang/String; = "/oem/media/shutdownanimation.zip"

.field private static final OEM_SHUTDOWN_MUSIC_FILE:Ljava/lang/String; = "/oem/media/shutdown.wav"

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_MUSIC_FILE:Ljava/lang/String; = "/system/media/shutdown.wav"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final SYSTEM_BOOTANIMATION_FILE:Ljava/lang/String; = "/system/media/shutdownanimation.zip"

.field private static final SYSTEM_ENCRYPTED_BOOTANIMATION_FILE:Ljava/lang/String; = "/system/media/shutdownanimation-encrypted.zip"

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static isConfirmed:Z

.field private static isIPOSupport:Z

.field private static mAudioManager:Landroid/media/AudioManager;

.field private static mMediaPlayer:Landroid/media/MediaPlayer;

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mRebootSafeMode:Z

.field private static sConfirmDialog:Landroid/app/AlertDialog;

.field private static final sInstance:Lcom/android/server/power/ShutdownThread;

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;


# instance fields
.field private isShutdownMusicPlaying:Z

.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private shutdownMusicHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->isIPOSupport:Z

    .line 111
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 112
    sput-boolean v1, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 126
    new-instance v0, Lcom/android/server/power/ShutdownThread;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    .line 128
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 133
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/ShutdownThread;->isShutdownMusicPlaying:Z

    .line 983
    new-instance v0, Lcom/android/server/power/ShutdownThread$9;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownThread$9;-><init>(Lcom/android/server/power/ShutdownThread;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownThread;->shutdownMusicHandler:Landroid/os/Handler;

    .line 155
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 96
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->isConfirmed:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 96
    sput-boolean p0, Lcom/android/server/power/ShutdownThread;->isConfirmed:Z

    return p0
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 96
    sget-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    return v0
.end method

.method static synthetic access$300(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->recoverSystemProvivion(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/android/server/power/ShutdownThread;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$402(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 96
    sput-object p0, Lcom/android/server/power/ShutdownThread;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/power/ShutdownThread;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/ShutdownThread;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/power/ShutdownThread;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/ShutdownThread;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/server/power/ShutdownThread;->isShutdownMusicPlaying:Z

    return p1
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 478
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v6

    .line 479
    :try_start_0
    sget-boolean v5, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v5, :cond_0

    .line 480
    const-string v5, "ShutdownThread"

    const-string v7, "Shutdown sequence already running, returning."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    monitor-exit v6

    .line 580
    :goto_0
    return-void

    .line 483
    :cond_0
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    .line 484
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    sput-object v5, Lcom/android/server/power/ShutdownThread;->mAudioManager:Landroid/media/AudioManager;

    .line 488
    sget-object v5, Lcom/android/server/power/ShutdownThread;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x3

    invoke-virtual {v5, v9, v6, v7}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 493
    const/4 v2, 0x0

    .line 494
    .local v2, "isSilentShutdown":Z
    const-string v5, "persist.sys.shutdown_silently"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 495
    const/4 v2, 0x1

    .line 506
    :cond_1
    :goto_1
    if-nez v2, :cond_2

    .line 508
    new-instance v3, Lcom/android/server/power/ShutdownThread$4;

    invoke-direct {v3}, Lcom/android/server/power/ShutdownThread$4;-><init>()V

    .line 514
    .local v3, "listener":Landroid/media/AudioManager$OnAudioFocusChangeListener;
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 515
    .local v0, "audioMgr":Landroid/media/AudioManager;
    const/4 v5, 0x7

    invoke-virtual {v0, v3, v5, v7}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 519
    .end local v0    # "audioMgr":Landroid/media/AudioManager;
    .end local v3    # "listener":Landroid/media/AudioManager$OnAudioFocusChangeListener;
    :cond_2
    const-string v5, "sys.power.startup_mode"

    const-string v6, "poweroff"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string v5, "service.bootanim.done"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const-string v5, "service.bootanim.exit"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    if-eqz v2, :cond_5

    .line 539
    const-string v5, "ctl.start"

    const-string v6, "bootanim:silent"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    :goto_2
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object p0, v5, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    .line 548
    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    const-string v5, "power"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, v6, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 551
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v9, v5, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 553
    :try_start_1
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v6, v6, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v7, 0x1

    const-string v8, "ShutdownThread-cpu"

    invoke-virtual {v6, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 555
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v5, v5, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 556
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v5, v5, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 563
    :goto_3
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v9, v5, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 564
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v5, v5, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 566
    :try_start_2
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    sget-object v6, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v6, v6, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v7, 0x1a

    const-string v8, "ShutdownThread-screen"

    invoke-virtual {v6, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 568
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v5, v5, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 569
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v5, v5, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    .line 577
    :cond_3
    :goto_4
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    new-instance v6, Lcom/android/server/power/ShutdownThread$5;

    invoke-direct {v6}, Lcom/android/server/power/ShutdownThread$5;-><init>()V

    iput-object v6, v5, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 579
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    invoke-virtual {v5}, Lcom/android/server/power/ShutdownThread;->start()V

    goto/16 :goto_0

    .line 484
    .end local v2    # "isSilentShutdown":Z
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 496
    .restart local v2    # "isSilentShutdown":Z
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, #android:bool@config_voice_capable#t

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 499
    :try_start_4
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 501
    .local v4, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v2

    goto/16 :goto_1

    .line 502
    .end local v4    # "phone":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 503
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "ShutdownThread"

    const-string v6, "Coundn\'t connect to phone service"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 541
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5
    const-string v5, "ctl.start"

    const-string v6, "bootanim"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 557
    :catch_1
    move-exception v1

    .line 558
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v5, "ShutdownThread"

    const-string v6, "No permission to acquire wake lock"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 559
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v9, v5, Lcom/android/server/power/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_3

    .line 570
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v1

    .line 571
    .restart local v1    # "e":Ljava/lang/SecurityException;
    const-string v5, "ShutdownThread"

    const-string v6, "No permission to acquire wake lock"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 572
    sget-object v5, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iput-object v9, v5, Lcom/android/server/power/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_4
.end method

.method private static checkAnimationFileExist()Z
    .locals 2

    .prologue
    .line 958
    new-instance v0, Ljava/io/File;

    const-string v1, "/oem/media/shutdownanimation.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/media/shutdownanimation.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/media/shutdownanimation-encrypted.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 961
    :cond_0
    const/4 v0, 0x1

    .line 963
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static deviceRebootOrShutdown(ZLjava/lang/String;)V
    .locals 10
    .param p0, "reboot"    # Z
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 935
    new-instance v5, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/oem-services.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 937
    .local v5, "oemClassLoader":Ldalvik/system/PathClassLoader;
    const-string v1, "com.qti.server.power.ShutdownOem"

    .line 939
    .local v1, "deviceShutdownClassName":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 942
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string v6, "rebootOrShutdown"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 943
    .local v4, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 955
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 944
    .restart local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    .line 945
    .local v3, "ex":Ljava/lang/NoSuchMethodException;
    :try_start_2
    const-string v6, "ShutdownThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "rebootOrShutdown method not found in class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 950
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 951
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string v6, "ShutdownThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to find class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 947
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_2
    move-exception v3

    .line 948
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "ShutdownThread"

    const-string v7, "Unknown exception hit while trying to invoke rebootOrShutdown"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 952
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 953
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "ShutdownThread"

    const-string v7, "Unknown exception while trying to invoke rebootOrShutdown"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getShutdownMusicFilePath()Ljava/lang/String;
    .locals 8

    .prologue
    .line 438
    const/4 v6, 0x2

    new-array v2, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "/oem/media/shutdown.wav"

    aput-object v7, v2, v6

    const/4 v6, 0x1

    const-string v7, "/system/media/shutdown.wav"

    aput-object v7, v2, v6

    .line 439
    .local v2, "fileName":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 440
    .local v1, "checkFile":Ljava/io/File;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 441
    .local v5, "music":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    .end local v1    # "checkFile":Ljava/io/File;
    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 442
    .restart local v1    # "checkFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 446
    .end local v5    # "music":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 440
    .restart local v5    # "music":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 446
    .end local v5    # "music":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private static isSilentMode()Z
    .locals 1

    .prologue
    .line 967
    sget-object v0, Lcom/android/server/power/ShutdownThread;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSilentMode()Z

    move-result v0

    return v0
.end method

.method private static lockDevice()V
    .locals 4

    .prologue
    .line 450
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 453
    .local v1, "wm":Landroid/view/IWindowManager;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :goto_0
    return-void

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "boot animation can not lock device!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "confirm"    # Z

    .prologue
    .line 426
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 427
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 428
    sput-object p1, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 430
    const-string v1, "ShutdownThread"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SHTDWN] reboot, reboot requested reason="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_0

    .end local p1    # "reason":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " confirm="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_1

    const-string v0, "yes"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-static {p0, p2}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 435
    return-void

    .line 430
    .restart local p1    # "reason":Ljava/lang/String;
    :cond_0
    const-string p1, "null"

    goto :goto_0

    .end local p1    # "reason":Ljava/lang/String;
    :cond_1
    const-string v0, "no"

    goto :goto_1
.end method

.method public static rebootOrShutdown(ZLjava/lang/String;)V
    .locals 13
    .param p0, "reboot"    # Z
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 868
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->deviceRebootOrShutdown(ZLjava/lang/String;)V

    .line 879
    const-string v7, "ShutdownThread"

    const-string v8, "waiting for poweroff animation finished.."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 881
    .local v4, "start":J
    const/4 v1, 0x0

    .line 885
    .local v1, "steps":I
    :goto_0
    add-int/lit8 v1, v1, 0x1

    const/16 v7, 0x32

    if-gt v1, v7, :cond_0

    :try_start_0
    const-string v7, "service.bootanim.done"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 888
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 889
    .local v2, "end":J
    const-string v7, "ShutdownThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "waiting animation :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v10, v2, v4

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 899
    sget-object v7, Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;

    iget-object v7, v7, Lcom/android/server/power/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v7, v12}, Landroid/os/PowerManager;->setBacklightBrightness(I)V

    .line 902
    new-instance v6, Landroid/os/SystemVibrator;

    invoke-direct {v6}, Landroid/os/SystemVibrator;-><init>()V

    .line 904
    .local v6, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v8, 0x1f4

    :try_start_1
    invoke-virtual {v6, v8, v9}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 912
    :goto_1
    const-wide/16 v8, 0x1f4

    :try_start_2
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    .line 917
    :goto_2
    if-eqz p0, :cond_2

    .line 918
    const-string v7, "ShutdownThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Rebooting, reason: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :try_start_3
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 931
    :goto_3
    return-void

    .line 892
    .end local v2    # "end":J
    .end local v6    # "vibrator":Landroid/os/Vibrator;
    :cond_1
    const-wide/16 v8, 0x64

    :try_start_4
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 893
    :catch_0
    move-exception v0

    .line 894
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "ShutdownThread"

    const-string v8, "interrupted exception occurred"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 905
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "end":J
    .restart local v6    # "vibrator":Landroid/os/Vibrator;
    :catch_1
    move-exception v0

    .line 907
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v7, "ShutdownThread"

    const-string v8, "Failed to vibrate during shutdown."

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 921
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 922
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v7, "ShutdownThread"

    const-string v8, "Reboot failed, will attempt shutdown instead"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 926
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v7, "ShutdownThread"

    const-string v8, "Performing low-level shutdown..."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    const-string v7, "ShutdownThread"

    const-string v8, "[SHTDWN] rebootOrShutdown, shutdown"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown()V

    goto :goto_3

    .line 913
    :catch_3
    move-exception v7

    goto :goto_2
.end method

.method public static rebootSafeMode(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v0, 0x1

    .line 466
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 467
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 468
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 470
    const-string v1, "ShutdownThread"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SHTDWN] reboot, rebootSafeMode requested reason=null confirm="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v0, "yes"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 475
    return-void

    .line 470
    :cond_0
    const-string v0, "no"

    goto :goto_0
.end method

.method private static recoverSystemProvivion(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 173
    if-eqz p0, :cond_0

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "is_factory_device_provisioned"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 176
    .local v1, "isfactoryMode":I
    const-string v3, "ShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RecoverSystemProvivion  factoryMode status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    if-ne v1, v7, :cond_0

    .line 179
    :try_start_0
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.lenovo.setupwizard"

    const-string v4, "com.lenovo.setupwizard.DefaultActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .local v2, "name":Landroid/content/ComponentName;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_provisioned"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 186
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "user_setup_complete"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .end local v1    # "isfactoryMode":I
    .end local v2    # "name":Landroid/content/ComponentName;
    :cond_0
    :goto_0
    return-void

    .line 187
    .restart local v1    # "isfactoryMode":I
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    const-string v3, "ShutdownThread"

    const-string v4, "recoverSystemProvivion error!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_provisioned"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "user_setup_complete"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private static showShutdownAnimation()V
    .locals 2

    .prologue
    .line 978
    const-string v0, "service.bootanim.exit"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    const-string v0, "ctl.start"

    const-string v1, "bootanim"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    return-void
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    const/4 v0, 0x0

    .line 166
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    .line 167
    sput-boolean v0, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    .line 168
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V

    .line 169
    return-void
.end method

.method static shutdownInner(Landroid/content/Context;Z)V
    .locals 28
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "confirm"    # Z

    .prologue
    .line 201
    sget-object v24, Lcom/android/server/power/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v24

    .line 202
    :try_start_0
    sget-boolean v23, Lcom/android/server/power/ShutdownThread;->sIsStarted:Z

    if-eqz v23, :cond_0

    .line 203
    const-string v23, "ShutdownThread"

    const-string v25, "Request to shutdown already running, returning."

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    monitor-exit v24

    .line 387
    :goto_0
    return-void

    .line 206
    :cond_0
    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    const/16 v20, 0x0

    .line 209
    .local v20, "showRebootOption":Z
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, #android:array@config_globalActionsList#t

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 211
    .local v11, "defaultActions":[Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    array-length v0, v11

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v14, v0, :cond_1

    .line 212
    aget-object v23, v11, v14

    const-string v24, "reboot"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 213
    const/16 v20, 0x1

    .line 219
    :cond_1
    const/16 v18, 0x0

    .line 220
    .local v18, "newAlarmSet":Z
    const-string v23, "persist.sys.rtc_alarm_time"

    const-string v24, "0"

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 221
    .local v4, "alarmTime":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    cmp-long v23, v24, v26

    if-lez v23, :cond_8

    .line 222
    const/16 v18, 0x1

    .line 223
    new-instance v9, Ljava/util/Date;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-direct {v9, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 224
    .local v9, "date":Ljava/util/Date;
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v16

    .line 225
    .local v16, "is24Format":Z
    const/4 v13, 0x0

    .line 226
    .local v13, "format":Ljava/lang/String;
    if-eqz v16, :cond_7

    .line 227
    const-string v13, "E HH:mm"

    .line 231
    :goto_2
    new-instance v10, Ljava/text/SimpleDateFormat;

    invoke-direct {v10, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 232
    .local v10, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v10, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 237
    .end local v9    # "date":Ljava/util/Date;
    .end local v10    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v13    # "format":Ljava/lang/String;
    .end local v16    # "is24Format":Z
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, #android:integer@config_longPressOnPowerBehavior#t

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    .line 240
    .local v17, "longPressBehavior":I
    sget-boolean v23, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v23, :cond_9

    const v19, #android:string@reboot_safemode_confirm#t

    .line 247
    .local v19, "resourceId":I
    :goto_4
    if-eqz v20, :cond_2

    sget-boolean v23, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-nez v23, :cond_2

    sget-boolean v23, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v23, :cond_2

    const v19, #android:string@reboot_confirm#t

    :cond_2
    const-string v23, "ShutdownThread"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Notifying thread to start shutdown longPressBehavior="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string v23, "ShutdownThread"

    const-string v24, "[SHTDWN] My call stack is:"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance v12, Ljava/lang/RuntimeException;

    const-string v23, "here"

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 257
    .local v12, "e":Ljava/lang/RuntimeException;
    const-string v23, "ShutdownThread"

    const-string v24, "shutdown call stack"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    const/16 v22, 0x0

    .line 263
    .local v22, "view":Landroid/view/View;
    sget-boolean v23, Lcom/android/server/power/ShutdownThread;->isIPOSupport:Z

    if-eqz v23, :cond_3

    .line 264
    new-instance v23, Landroid/view/ContextThemeWrapper;

    const v24, #android:style@Theme.DeviceDefault#t

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static/range {v23 .. v23}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v23

    const v24, #android:layout@wt_reboot_dialog_content#t

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v22

    .line 270
    :cond_3
    if-eqz p1, :cond_10

    .line 271
    new-instance v7, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 272
    .local v7, "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    sget-object v23, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v23, :cond_4

    .line 273
    sget-object v23, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual/range {v23 .. v23}, Landroid/app/AlertDialog;->dismiss()V

    .line 276
    :cond_4
    const/16 v23, 0x0

    sput-boolean v23, Lcom/android/server/power/ShutdownThread;->isConfirmed:Z

    .line 277
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 280
    .local v8, "confirmFormat":Ljava/lang/CharSequence;
    sget-boolean v23, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-nez v23, :cond_d

    sget-boolean v23, Lcom/android/server/power/ShutdownThread;->isIPOSupport:Z

    if-eqz v23, :cond_d

    const v23, #android:id@checkbox_linearLayout#t

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 282
    .local v6, "cbLinearLayout":Landroid/widget/LinearLayout;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v23, #android:id@checkbox#t

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 284
    .local v5, "cb":Landroid/widget/CheckBox;
    const v23, #android:id@status#t

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 285
    .local v21, "statusView":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "enable_quickboot"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    const/4 v15, 0x1

    .line 286
    .local v15, "ipoSettingEnabled":Z
    :goto_5
    if-eqz v5, :cond_5

    .line 287
    invoke-virtual {v5, v15}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 289
    :cond_5
    new-instance v23, Lcom/android/server/power/ShutdownThread$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$1;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 299
    .end local v6    # "cbLinearLayout":Landroid/widget/LinearLayout;
    .end local v15    # "ipoSettingEnabled":Z
    .end local v21    # "statusView":Landroid/widget/TextView;
    :goto_6
    new-instance v24, Landroid/app/AlertDialog$Builder;

    const v23, 0x90302d2

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget-boolean v23, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v23, :cond_e

    const v23, #android:string@reboot_safemode_title#t

    :goto_7
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v4, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    const v24, #android:string@yes#t

    new-instance v25, Lcom/android/server/power/ShutdownThread$3;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v5, v1}, Lcom/android/server/power/ShutdownThread$3;-><init>(Landroid/widget/CheckBox;Landroid/content/Context;)V

    invoke-virtual/range {v23 .. v25}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    const v24, #android:string@no#t

    new-instance v25, Lcom/android/server/power/ShutdownThread$2;

    invoke-direct/range {v25 .. v25}, Lcom/android/server/power/ShutdownThread$2;-><init>()V

    invoke-virtual/range {v23 .. v25}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v23

    sput-object v23, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    .line 345
    sget-object v23, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, v23

    iput-object v0, v7, Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 346
    sget-object v23, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 347
    sget-object v23, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual/range {v23 .. v23}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v23

    const/16 v24, 0x7d9

    invoke-virtual/range {v23 .. v24}, Landroid/view/Window;->setType(I)V

    .line 348
    sget-object v23, Lcom/android/server/power/ShutdownThread;->sConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual/range {v23 .. v23}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 206
    .end local v4    # "alarmTime":Ljava/lang/String;
    .end local v5    # "cb":Landroid/widget/CheckBox;
    .end local v7    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .end local v8    # "confirmFormat":Ljava/lang/CharSequence;
    .end local v11    # "defaultActions":[Ljava/lang/String;
    .end local v12    # "e":Ljava/lang/RuntimeException;
    .end local v14    # "i":I
    .end local v17    # "longPressBehavior":I
    .end local v18    # "newAlarmSet":Z
    .end local v19    # "resourceId":I
    .end local v20    # "showRebootOption":Z
    .end local v22    # "view":Landroid/view/View;
    :catchall_0
    move-exception v23

    :try_start_1
    monitor-exit v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v23

    .line 211
    .restart local v11    # "defaultActions":[Ljava/lang/String;
    .restart local v14    # "i":I
    .restart local v20    # "showRebootOption":Z
    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 229
    .restart local v4    # "alarmTime":Ljava/lang/String;
    .restart local v9    # "date":Ljava/util/Date;
    .restart local v13    # "format":Ljava/lang/String;
    .restart local v16    # "is24Format":Z
    .restart local v18    # "newAlarmSet":Z
    :cond_7
    const-string v13, "E hh:mma"

    goto/16 :goto_2

    .line 234
    .end local v9    # "date":Ljava/util/Date;
    .end local v13    # "format":Ljava/lang/String;
    .end local v16    # "is24Format":Z
    :cond_8
    const-string v4, ""

    goto/16 :goto_3

    .line 240
    .restart local v17    # "longPressBehavior":I
    :cond_9
    const/16 v23, 0x2

    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    const v19, #android:string@shutdown_confirm_question#t

    goto/16 :goto_4

    :cond_a
    if-eqz v18, :cond_b

    const v19, 0x9090040

    goto/16 :goto_4

    :cond_b
    const v19, #android:string@shutdown_confirm#t

    goto/16 :goto_4

    .line 285
    .restart local v5    # "cb":Landroid/widget/CheckBox;
    .restart local v6    # "cbLinearLayout":Landroid/widget/LinearLayout;
    .restart local v7    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .restart local v8    # "confirmFormat":Ljava/lang/CharSequence;
    .restart local v12    # "e":Ljava/lang/RuntimeException;
    .restart local v19    # "resourceId":I
    .restart local v21    # "statusView":Landroid/widget/TextView;
    .restart local v22    # "view":Landroid/view/View;
    :cond_c
    const/4 v15, 0x0

    goto/16 :goto_5

    .line 296
    .end local v5    # "cb":Landroid/widget/CheckBox;
    .end local v6    # "cbLinearLayout":Landroid/widget/LinearLayout;
    .end local v21    # "statusView":Landroid/widget/TextView;
    :cond_d
    const/4 v5, 0x0

    .restart local v5    # "cb":Landroid/widget/CheckBox;
    goto/16 :goto_6

    .line 299
    :cond_e
    if-eqz v20, :cond_f

    sget-boolean v23, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v23, :cond_f

    const v23, #android:string@reboot_title#t

    goto/16 :goto_7

    :cond_f
    const v23, #android:string@power_off#t

    goto/16 :goto_7

    .line 380
    .end local v5    # "cb":Landroid/widget/CheckBox;
    .end local v7    # "closer":Lcom/android/server/power/ShutdownThread$CloseDialogReceiver;
    .end local v8    # "confirmFormat":Ljava/lang/CharSequence;
    :cond_10
    sget-boolean v23, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-nez v23, :cond_11

    .line 381
    invoke-static/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->recoverSystemProvivion(Landroid/content/Context;)V

    .line 384
    :cond_11
    invoke-static/range {p0 .. p0}, Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method private shutdownRadios(I)V
    .locals 8
    .param p1, "timeout"    # I

    .prologue
    .line 754
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, p1

    add-long v2, v4, v6

    .line 755
    .local v2, "endTime":J
    const/4 v4, 0x1

    new-array v0, v4, [Z

    .line 756
    .local v0, "done":[Z
    new-instance v1, Lcom/android/server/power/ShutdownThread$8;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/server/power/ShutdownThread$8;-><init>(Lcom/android/server/power/ShutdownThread;J[Z)V

    .line 850
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 852
    int-to-long v4, p1

    :try_start_0
    invoke-virtual {v1, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 855
    :goto_0
    const/4 v4, 0x0

    aget-boolean v4, v0, v4

    if-nez v4, :cond_0

    .line 856
    const-string v4, "ShutdownThread"

    const-string v5, "Timed out waiting for NFC, Radio and Bluetooth shutdown."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :cond_0
    return-void

    .line 853
    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 583
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 584
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 585
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 586
    monitor-exit v1

    .line 587
    return-void

    .line 586
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 26

    .prologue
    .line 594
    new-instance v6, Lcom/android/server/power/ShutdownThread$6;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/power/ShutdownThread$6;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 607
    .local v6, "br":Landroid/content/BroadcastReceiver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_8

    const-string v2, "1"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_9

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 608
    .local v24, "reason":Ljava/lang/String;
    const-string v2, "sys.shutdown.requested"

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const-string v2, "sys.power.off"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mRebootSafeMode:Z

    if-eqz v2, :cond_0

    .line 619
    const-string v2, "persist.sys.safemode"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    :cond_0
    const-string v2, "ShutdownThread"

    const-string v3, "Sending shutdown broadcast..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 631
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/power/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 635
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long v18, v2, v4

    .line 636
    .local v18, "endTime":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 637
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_1

    .line 638
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v12, v18, v4

    .line 639
    .local v12, "delay":J
    const-wide/16 v4, 0x0

    cmp-long v2, v12, v4

    if-gtz v2, :cond_a

    .line 640
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown broadcast timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    .end local v12    # "delay":J
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down activity manager..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v11

    .line 654
    .local v11, "am":Landroid/app/IActivityManager;
    if-eqz v11, :cond_2

    .line 656
    const/16 v2, 0x2710

    :try_start_1
    invoke-interface {v11, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    .line 661
    :cond_2
    :goto_3
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down package manager..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v23

    check-cast v23, Lcom/android/server/pm/PackageManagerService;

    .line 665
    .local v23, "pm":Lcom/android/server/pm/PackageManagerService;
    if-eqz v23, :cond_3

    .line 666
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/pm/PackageManagerService;->shutdown()V

    .line 669
    :cond_3
    const/16 v25, 0x0

    .line 673
    .local v25, "shutDownFile":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->checkAnimationFileExist()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 674
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->lockDevice()V

    .line 675
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->showShutdownAnimation()V

    .line 677
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->isSilentMode()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->getShutdownMusicFilePath()Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_4

    .line 679
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->isShutdownMusicPlaying:Z

    .line 680
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->shutdownMusicHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 684
    :cond_4
    const-string v2, "ShutdownThread"

    const-string v3, "wait for shutdown music"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long v20, v2, v4

    .line 686
    .local v20, "endTimeForMusic":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 687
    :goto_4
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->isShutdownMusicPlaying:Z

    if-eqz v2, :cond_5

    .line 688
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v12, v20, v4

    .line 689
    .restart local v12    # "delay":J
    const-wide/16 v4, 0x0

    cmp-long v2, v12, v4

    if-gtz v2, :cond_b

    .line 690
    const-string v2, "ShutdownThread"

    const-string v4, "play shutdown music timeout!"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    .end local v12    # "delay":J
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->isShutdownMusicPlaying:Z

    if-nez v2, :cond_6

    .line 699
    const-string v2, "ShutdownThread"

    const-string v4, "play shutdown music complete."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :cond_6
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 704
    const/16 v2, 0x2ee0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V

    .line 707
    new-instance v22, Lcom/android/server/power/ShutdownThread$7;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/power/ShutdownThread$7;-><init>(Lcom/android/server/power/ShutdownThread;)V

    .line 714
    .local v22, "observer":Landroid/os/storage/IMountShutdownObserver;
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down MountService"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    .line 718
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x4e20

    add-long v16, v2, v4

    .line 719
    .local v16, "endShutTime":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 721
    :try_start_3
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v15

    .line 723
    .local v15, "mount":Landroid/os/storage/IMountService;
    if-eqz v15, :cond_c

    .line 724
    move-object/from16 v0, v22

    invoke-interface {v15, v0}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 731
    .end local v15    # "mount":Landroid/os/storage/IMountService;
    :goto_5
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_7

    .line 732
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v12, v16, v4

    .line 733
    .restart local v12    # "delay":J
    const-wide/16 v4, 0x0

    cmp-long v2, v12, v4

    if-gtz v2, :cond_d

    .line 734
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown wait timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    .end local v12    # "delay":J
    :cond_7
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 744
    const-string v3, "ShutdownThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SHTDWN] run, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_e

    const-string v2, "reboot"

    :goto_6
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " requested "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "reason="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_f

    sget-object v2, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_7
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    sget-boolean v2, Lcom/android/server/power/ShutdownThread;->mReboot:Z

    sget-object v3, Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 749
    return-void

    .line 607
    .end local v11    # "am":Landroid/app/IActivityManager;
    .end local v16    # "endShutTime":J
    .end local v18    # "endTime":J
    .end local v20    # "endTimeForMusic":J
    .end local v22    # "observer":Landroid/os/storage/IMountShutdownObserver;
    .end local v23    # "pm":Lcom/android/server/pm/PackageManagerService;
    .end local v24    # "reason":Ljava/lang/String;
    .end local v25    # "shutDownFile":Ljava/lang/String;
    :cond_8
    const-string v2, "0"

    goto/16 :goto_0

    :cond_9
    const-string v2, ""

    goto/16 :goto_1

    .line 644
    .restart local v12    # "delay":J
    .restart local v18    # "endTime":J
    .restart local v24    # "reason":Ljava/lang/String;
    :cond_a
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 645
    :catch_0
    move-exception v2

    goto/16 :goto_2

    .line 648
    .end local v12    # "delay":J
    :catchall_0
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v2

    .line 694
    .restart local v11    # "am":Landroid/app/IActivityManager;
    .restart local v12    # "delay":J
    .restart local v20    # "endTimeForMusic":J
    .restart local v23    # "pm":Lcom/android/server/pm/PackageManagerService;
    .restart local v25    # "shutDownFile":Ljava/lang/String;
    :cond_b
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_4

    .line 695
    :catch_1
    move-exception v2

    goto/16 :goto_4

    .line 701
    .end local v12    # "delay":J
    :catchall_1
    move-exception v2

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v2

    .line 726
    .restart local v15    # "mount":Landroid/os/storage/IMountService;
    .restart local v16    # "endShutTime":J
    .restart local v22    # "observer":Landroid/os/storage/IMountShutdownObserver;
    :cond_c
    :try_start_9
    const-string v2, "ShutdownThread"

    const-string v4, "MountService unavailable for shutdown"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_5

    .line 728
    .end local v15    # "mount":Landroid/os/storage/IMountService;
    :catch_2
    move-exception v14

    .line 729
    .local v14, "e":Ljava/lang/Exception;
    :try_start_a
    const-string v2, "ShutdownThread"

    const-string v4, "Exception during MountService shutdown"

    invoke-static {v2, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 742
    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v2

    .line 738
    .restart local v12    # "delay":J
    :cond_d
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto/16 :goto_5

    .line 739
    :catch_3
    move-exception v2

    goto/16 :goto_5

    .line 744
    .end local v12    # "delay":J
    :cond_e
    const-string v2, "shutdown"

    goto :goto_6

    :cond_f
    const-string v2, "null"

    goto :goto_7

    .line 657
    .end local v16    # "endShutTime":J
    .end local v20    # "endTimeForMusic":J
    .end local v22    # "observer":Landroid/os/storage/IMountShutdownObserver;
    .end local v23    # "pm":Lcom/android/server/pm/PackageManagerService;
    .end local v25    # "shutDownFile":Ljava/lang/String;
    :catch_4
    move-exception v2

    goto/16 :goto_3
.end method
