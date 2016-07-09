.class public Lcom/android/ims/ImsManager;
.super Ljava/lang/Object;
.source "ImsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsManager$1;,
        Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;,
        Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;
    }
.end annotation


# static fields
.field public static final ACTION_IMS_INCOMING_CALL:Ljava/lang/String; = "com.android.ims.IMS_INCOMING_CALL"

.field public static final ACTION_IMS_SERVICE_DOWN:Ljava/lang/String; = "com.android.ims.IMS_SERVICE_DOWN"

.field public static final ACTION_IMS_SERVICE_UP:Ljava/lang/String; = "com.android.ims.IMS_SERVICE_UP"

.field public static final CALL_ACTIVE:I = 0x1

.field public static final CALL_ALERTING:I = 0x4

.field public static final CALL_DIALING:I = 0x3

.field public static final CALL_END:I = 0x7

.field public static final CALL_HOLD:I = 0x2

.field public static final CALL_INCOMING:I = 0x5

.field public static final CALL_WAITING:I = 0x6

.field private static final DBG:Z = true

.field public static final EXTRA_CALL_ID:Ljava/lang/String; = "android:imsCallID"

.field public static final EXTRA_IS_UNKNOWN_CALL:Ljava/lang/String; = "codeaurora:isUnknown"

.field public static final EXTRA_PHONEID:Ljava/lang/String; = "android:phoneid"

.field public static final EXTRA_PHONE_ID:Ljava/lang/String; = "android:phone_id"

.field public static final EXTRA_SERVICE_ID:Ljava/lang/String; = "android:imsServiceId"

.field public static final EXTRA_UNKNOWN_CALL_ADDRESS:Ljava/lang/String; = "codeaurora:unknownCallAddress"

.field public static final EXTRA_UNKNOWN_CALL_STATE:Ljava/lang/String; = "codeaurora.unknownCallState"

.field public static final EXTRA_USSD:Ljava/lang/String; = "android:ussd"

.field private static final IMS_SERVICE:Ljava/lang/String; = "ims"

.field public static final INCOMING_CALL_RESULT_CODE:I = 0x65

.field public static final PROPERTY_DBG_VOLTE_AVAIL_OVERRIDE:Ljava/lang/String; = "persist.dbg.volte_avail_ovr"

.field public static final PROPERTY_DBG_VOLTE_AVAIL_OVERRIDE_DEFAULT:I = 0x0

.field public static final PROPERTY_DBG_VT_AVAIL_OVERRIDE:Ljava/lang/String; = "persist.dbg.vt_avail_ovr"

.field public static final PROPERTY_DBG_VT_AVAIL_OVERRIDE_DEFAULT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ImsManager"

.field private static sImsManagerInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/ims/ImsManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConfig:Lcom/android/ims/ImsConfig;

.field private mContext:Landroid/content/Context;

.field private mDeathRecipient:Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;

.field private mEcbm:Lcom/android/ims/ImsEcbm;

.field private mImsService:Lcom/android/ims/internal/IImsService;

.field private mPhoneId:I

.field private mUt:Lcom/android/ims/ImsUt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/ims/ImsManager;->sImsManagerInstances:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .prologue
    const/4 v1, 0x0

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object v1, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    .line 214
    new-instance v0, Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;

    invoke-direct {v0, p0, v1}, Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;-><init>(Lcom/android/ims/ImsManager;Lcom/android/ims/ImsManager$1;)V

    iput-object v0, p0, Lcom/android/ims/ImsManager;->mDeathRecipient:Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;

    .line 216
    iput-object v1, p0, Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;

    .line 218
    iput-object v1, p0, Lcom/android/ims/ImsManager;->mConfig:Lcom/android/ims/ImsConfig;

    .line 221
    iput-object v1, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;

    .line 331
    iput-object p1, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    .line 332
    iput p2, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    .line 333
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->createImsService(Z)V

    .line 334
    return-void
.end method

.method static synthetic access$102(Lcom/android/ims/ImsManager;Lcom/android/ims/internal/IImsService;)Lcom/android/ims/internal/IImsService;
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsManager;
    .param p1, "x1"    # Lcom/android/ims/internal/IImsService;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/ims/ImsManager;Lcom/android/ims/ImsUt;)Lcom/android/ims/ImsUt;
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsManager;
    .param p1, "x1"    # Lcom/android/ims/ImsUt;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/ims/ImsManager;Lcom/android/ims/ImsConfig;)Lcom/android/ims/ImsConfig;
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsManager;
    .param p1, "x1"    # Lcom/android/ims/ImsConfig;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/ims/ImsManager;->mConfig:Lcom/android/ims/ImsConfig;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/ims/ImsManager;Lcom/android/ims/ImsEcbm;)Lcom/android/ims/ImsEcbm;
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsManager;
    .param p1, "x1"    # Lcom/android/ims/ImsEcbm;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/ims/ImsManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/ImsManager;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/ims/ImsManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/ImsManager;

    .prologue
    .line 56
    iget v0, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/ims/ImsManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private checkAndThrowExceptionIfServiceUnavailable()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    if-nez v0, :cond_0

    .line 704
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/ims/ImsManager;->createImsService(Z)V

    .line 706
    iget-object v0, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    if-nez v0, :cond_0

    .line 707
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v1, "Service is unavailable"

    const/16 v2, 0x6a

    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 711
    :cond_0
    return-void
.end method

.method private createCallSession(ILcom/android/ims/ImsCallProfile;)Lcom/android/ims/internal/ImsCallSession;
    .locals 5
    .param p1, "serviceId"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 753
    :try_start_0
    new-instance v1, Lcom/android/ims/internal/ImsCallSession;

    iget-object v3, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    const/4 v4, 0x0

    invoke-interface {v3, p1, p2, v4}, Lcom/android/ims/internal/IImsService;->createCallSession(ILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/ims/internal/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    :goto_0
    return-object v1

    .line 754
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    move-object v1, v2

    .line 755
    goto :goto_0
.end method

.method private createImsService(Z)V
    .locals 4
    .param p1, "checkService"    # Z

    .prologue
    .line 722
    if-eqz p1, :cond_0

    .line 723
    iget v2, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-static {v2}, Lcom/android/ims/ImsManager;->getImsServiceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 725
    .local v1, "binder":Landroid/os/IBinder;
    if-nez v1, :cond_0

    .line 740
    .end local v1    # "binder":Landroid/os/IBinder;
    :goto_0
    return-void

    .line 730
    :cond_0
    iget v2, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-static {v2}, Lcom/android/ims/ImsManager;->getImsServiceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 732
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 734
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mDeathRecipient:Lcom/android/ims/ImsManager$ImsServiceDeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    :cond_1
    :goto_1
    invoke-static {v0}, Lcom/android/ims/internal/IImsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    goto :goto_0

    .line 735
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private createRegistrationListenerProxy(ILcom/android/ims/ImsConnectionStateListener;)Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;
    .locals 1
    .param p1, "serviceClass"    # I
    .param p2, "listener"    # Lcom/android/ims/ImsConnectionStateListener;

    .prologue
    .line 761
    new-instance v0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;-><init>(Lcom/android/ims/ImsManager;ILcom/android/ims/ImsConnectionStateListener;)V

    .line 763
    .local v0, "proxy":Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;
    return-object v0
.end method

.method private static getCallId(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "incomingCallIntent"    # Landroid/content/Intent;

    .prologue
    .line 677
    if-nez p0, :cond_0

    .line 678
    const/4 v0, 0x0

    .line 681
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "android:imsCallID"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getImsServiceName(I)Ljava/lang/String;
    .locals 1
    .param p0, "phoneId"    # I

    .prologue
    .line 715
    const-string v0, "ims"

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .prologue
    .line 231
    sget-object v2, Lcom/android/ims/ImsManager;->sImsManagerInstances:Ljava/util/HashMap;

    monitor-enter v2

    .line 232
    :try_start_0
    sget-object v1, Lcom/android/ims/ImsManager;->sImsManagerInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    sget-object v1, Lcom/android/ims/ImsManager;->sImsManagerInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsManager;

    monitor-exit v2

    .line 238
    :goto_0
    return-object v1

    .line 235
    :cond_0
    new-instance v0, Lcom/android/ims/ImsManager;

    invoke-direct {v0, p0, p1}, Lcom/android/ims/ImsManager;-><init>(Landroid/content/Context;I)V

    .line 236
    .local v0, "mgr":Lcom/android/ims/ImsManager;
    sget-object v1, Lcom/android/ims/ImsManager;->sImsManagerInstances:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    monitor-exit v2

    move-object v1, v0

    goto :goto_0

    .line 239
    .end local v0    # "mgr":Lcom/android/ims/ImsManager;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getServiceId(Landroid/content/Intent;)I
    .locals 2
    .param p0, "incomingCallIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, -0x1

    .line 691
    if-nez p0, :cond_0

    .line 695
    :goto_0
    return v0

    :cond_0
    const-string v1, "android:imsServiceId"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 246
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "volte_vt_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 249
    .local v0, "enabled":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 257
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120090

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 262
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_tty_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isVolteEnabledByPlatform(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 271
    const-string v3, "persist.dbg.volte_avail_ovr"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 280
    :cond_0
    :goto_0
    return v1

    .line 276
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "volte_feature_disabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_3

    move v0, v1

    .line 280
    .local v0, "disabledByGlobalSetting":Z
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x112008c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x112008e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "disabledByGlobalSetting":Z
    :cond_3
    move v0, v2

    .line 276
    goto :goto_1
.end method

.method public static isVolteProvisionedOnDevice(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 290
    const/4 v1, 0x1

    .line 291
    .local v1, "isProvisioned":Z
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x112008f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 293
    const/4 v1, 0x0

    .line 294
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v3

    invoke-static {p0, v3}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v2

    .line 296
    .local v2, "mgr":Lcom/android/ims/ImsManager;
    if-eqz v2, :cond_0

    .line 298
    :try_start_0
    invoke-virtual {v2}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v0

    .line 299
    .local v0, "config":Lcom/android/ims/ImsConfig;
    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0}, Lcom/android/ims/ImsConfig;->getVolteProvisioned()Z
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 308
    .end local v0    # "config":Lcom/android/ims/ImsConfig;
    .end local v2    # "mgr":Lcom/android/ims/ImsManager;
    :cond_0
    :goto_0
    return v1

    .line 302
    .restart local v2    # "mgr":Lcom/android/ims/ImsManager;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static isVtEnabledByPlatform(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 318
    const-string v2, "persist.dbg.vt_avail_ovr"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 323
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120091

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120092

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 767
    const-string v0, "ImsManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 771
    const-string v0, "ImsManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 775
    const-string v0, "ImsManager"

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 776
    return-void
.end method

.method public static setEnhanced4gLteModeSetting(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    .line 181
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 182
    .local v1, "value":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "volte_vt_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 186
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v2

    invoke-static {p0, v2}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 189
    .local v0, "imsManager":Lcom/android/ims/ImsManager;
    if-eqz v0, :cond_0

    .line 191
    :try_start_0
    invoke-direct {v0, p1}, Lcom/android/ims/ImsManager;->setAdvanced4GMode(Z)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .end local v0    # "imsManager":Lcom/android/ims/ImsManager;
    :cond_0
    :goto_1
    return-void

    .line 181
    .end local v1    # "value":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 192
    .restart local v0    # "imsManager":Lcom/android/ims/ImsManager;
    .restart local v1    # "value":I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

# virtual methods
.method public close(I)V
    .locals 5
    .param p1, "serviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 415
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 418
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsService;->close(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    iput-object v4, p0, Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;

    .line 424
    iput-object v4, p0, Lcom/android/ims/ImsManager;->mConfig:Lcom/android/ims/ImsConfig;

    .line 425
    iput-object v4, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;

    .line 427
    return-void

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "close()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 423
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    iput-object v4, p0, Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;

    .line 424
    iput-object v4, p0, Lcom/android/ims/ImsManager;->mConfig:Lcom/android/ims/ImsConfig;

    .line 425
    iput-object v4, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;

    throw v1
.end method

.method public createCallProfile(III)Lcom/android/ims/ImsCallProfile;
    .locals 4
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 529
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 532
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/ims/internal/IImsService;->createCallProfile(III)Lcom/android/ims/ImsCallProfile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "createCallProfile()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public getConfigInterface()Lcom/android/ims/ImsConfig;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 638
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mConfig:Lcom/android/ims/ImsConfig;

    if-nez v2, :cond_1

    .line 639
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 642
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    iget v3, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-interface {v2, v3}, Lcom/android/ims/internal/IImsService;->getConfigInterface(I)Lcom/android/ims/internal/IImsConfig;

    move-result-object v0

    .line 643
    .local v0, "config":Lcom/android/ims/internal/IImsConfig;
    if-nez v0, :cond_0

    .line 644
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "getConfigInterface()"

    const/16 v4, 0x83

    invoke-direct {v2, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    .end local v0    # "config":Lcom/android/ims/internal/IImsConfig;
    :catch_0
    move-exception v1

    .line 649
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "getConfigInterface()"

    const/16 v4, 0x6a

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    .line 647
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "config":Lcom/android/ims/internal/IImsConfig;
    :cond_0
    :try_start_1
    new-instance v2, Lcom/android/ims/ImsConfig;

    iget-object v3, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0, v3}, Lcom/android/ims/ImsConfig;-><init>(Lcom/android/ims/internal/IImsConfig;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/ims/ImsManager;->mConfig:Lcom/android/ims/ImsConfig;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 653
    .end local v0    # "config":Lcom/android/ims/internal/IImsConfig;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfigInterface(), mConfig= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/ImsManager;->mConfig:Lcom/android/ims/ImsConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 654
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mConfig:Lcom/android/ims/ImsConfig;

    return-object v2
.end method

.method public getEcbmInterface(I)Lcom/android/ims/ImsEcbm;
    .locals 5
    .param p1, "serviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 964
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;

    if-nez v2, :cond_1

    .line 965
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 968
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsService;->getEcbmInterface(I)Lcom/android/ims/internal/IImsEcbm;

    move-result-object v1

    .line 970
    .local v1, "iEcbm":Lcom/android/ims/internal/IImsEcbm;
    if-nez v1, :cond_0

    .line 971
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "getEcbmInterface()"

    const/16 v4, 0x385

    invoke-direct {v2, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 975
    .end local v1    # "iEcbm":Lcom/android/ims/internal/IImsEcbm;
    :catch_0
    move-exception v0

    .line 976
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "getEcbmInterface()"

    const/16 v4, 0x6a

    invoke-direct {v2, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    .line 974
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "iEcbm":Lcom/android/ims/internal/IImsEcbm;
    :cond_0
    :try_start_1
    new-instance v2, Lcom/android/ims/ImsEcbm;

    invoke-direct {v2, v1}, Lcom/android/ims/ImsEcbm;-><init>(Lcom/android/ims/internal/IImsEcbm;)V

    iput-object v2, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 980
    .end local v1    # "iEcbm":Lcom/android/ims/internal/IImsEcbm;
    :cond_1
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mEcbm:Lcom/android/ims/ImsEcbm;

    return-object v2
.end method

.method public getSupplementaryServiceConfiguration(I)Lcom/android/ims/ImsUtInterface;
    .locals 5
    .param p1, "serviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 439
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;

    if-nez v2, :cond_1

    .line 440
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 443
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsService;->getUtInterface(I)Lcom/android/ims/internal/IImsUt;

    move-result-object v1

    .line 445
    .local v1, "iUt":Lcom/android/ims/internal/IImsUt;
    if-nez v1, :cond_0

    .line 446
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "getSupplementaryServiceConfiguration()"

    const/16 v4, 0x321

    invoke-direct {v2, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    .end local v1    # "iUt":Lcom/android/ims/internal/IImsUt;
    :catch_0
    move-exception v0

    .line 452
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "getSupplementaryServiceConfiguration()"

    const/16 v4, 0x6a

    invoke-direct {v2, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    .line 450
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "iUt":Lcom/android/ims/internal/IImsUt;
    :cond_0
    :try_start_1
    new-instance v2, Lcom/android/ims/ImsUt;

    invoke-direct {v2, v1}, Lcom/android/ims/ImsUt;-><init>(Lcom/android/ims/internal/IImsUt;)V

    iput-object v2, p0, Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 457
    .end local v1    # "iUt":Lcom/android/ims/internal/IImsUt;
    :cond_1
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mUt:Lcom/android/ims/ImsUt;

    return-object v2
.end method

.method public isConnected(III)Z
    .locals 4
    .param p1, "serviceId"    # I
    .param p2, "serviceType"    # I
    .param p3, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 479
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 482
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/ims/internal/IImsService;->isConnected(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 483
    :catch_0
    move-exception v0

    .line 484
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "isServiceConnected()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public isOpened(I)Z
    .locals 4
    .param p1, "serviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 497
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 500
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsService;->isOpened(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 501
    :catch_0
    move-exception v0

    .line 502
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "isOpened()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public isServiceAvailable()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 340
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    if-eqz v2, :cond_1

    .line 349
    :cond_0
    :goto_0
    return v1

    .line 344
    :cond_1
    iget v2, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-static {v2}, Lcom/android/ims/ImsManager;->getImsServiceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 345
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 349
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public makeCall(ILcom/android/ims/ImsCallProfile;[Ljava/lang/String;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;
    .locals 6
    .param p1, "serviceId"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;
    .param p3, "callees"    # [Ljava/lang/String;
    .param p4, "listener"    # Lcom/android/ims/ImsCall$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 553
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeCall :: serviceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", profile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", callees="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 557
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 559
    new-instance v0, Lcom/android/ims/ImsCall;

    iget-object v3, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, p2}, Lcom/android/ims/ImsCall;-><init>(Landroid/content/Context;Lcom/android/ims/ImsCallProfile;)V

    .line 561
    .local v0, "call":Lcom/android/ims/ImsCall;
    invoke-virtual {v0, p4}, Lcom/android/ims/ImsCall;->setListener(Lcom/android/ims/ImsCall$Listener;)V

    .line 562
    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsManager;->createCallSession(ILcom/android/ims/ImsCallProfile;)Lcom/android/ims/internal/ImsCallSession;

    move-result-object v2

    .line 563
    .local v2, "session":Lcom/android/ims/internal/ImsCallSession;
    const-string v3, "isConferenceUri"

    invoke-virtual {p2, v3, v5}, Lcom/android/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 565
    .local v1, "isConferenceUri":Z
    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    array-length v3, p3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 566
    aget-object v3, p3, v5

    invoke-virtual {v0, v2, v3}, Lcom/android/ims/ImsCall;->start(Lcom/android/ims/internal/ImsCallSession;Ljava/lang/String;)V

    .line 571
    :goto_0
    return-object v0

    .line 568
    :cond_0
    invoke-virtual {v0, v2, p3}, Lcom/android/ims/ImsCall;->start(Lcom/android/ims/internal/ImsCallSession;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public open(ILandroid/app/PendingIntent;Lcom/android/ims/ImsConnectionStateListener;)I
    .locals 5
    .param p1, "serviceClass"    # I
    .param p2, "incomingCallPendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "listener"    # Lcom/android/ims/ImsConnectionStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 377
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 379
    if-nez p2, :cond_0

    .line 380
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "incomingCallPendingIntent can\'t be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 383
    :cond_0
    if-nez p3, :cond_1

    .line 384
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "listener can\'t be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 387
    :cond_1
    const/4 v1, 0x0

    .line 390
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    iget v3, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-direct {p0, p1, p3}, Lcom/android/ims/ImsManager;->createRegistrationListenerProxy(ILcom/android/ims/ImsConnectionStateListener;)Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;

    move-result-object v4

    invoke-interface {v2, v3, p1, p2, v4}, Lcom/android/ims/internal/IImsService;->open(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 397
    if-gtz v1, :cond_2

    .line 401
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "open()"

    mul-int/lit8 v4, v1, -0x1

    invoke-direct {v2, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "open()"

    const/16 v4, 0x6a

    invoke-direct {v2, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    .line 404
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    return v1
.end method

.method private setAdvanced4GMode(Z)V
    .locals 9
    .param p1, "turnOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 792
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 794
    iget-object v5, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x112008a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 798
    .local v0, "allowImsServiceTurnOff":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v1

    .line 799
    .local v1, "config":Lcom/android/ims/ImsConfig;
    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    if-nez v0, :cond_1

    .line 800
    :cond_0
    const/4 v6, 0x0

    const/16 v7, 0xd

    if-eqz p1, :cond_3

    move v5, v3

    :goto_0
    const/4 v8, 0x0

    invoke-virtual {v1, v6, v7, v5, v8}, Lcom/android/ims/ImsConfig;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    .line 802
    iget-object v5, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 805
    const/4 v5, 0x1

    const/16 v6, 0xd

    if-eqz p1, :cond_4

    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v1, v5, v6, v3, v4}, Lcom/android/ims/ImsConfig;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    .end local v1    # "config":Lcom/android/ims/ImsConfig;
    :cond_1
    :goto_2
    if-eqz p1, :cond_5

    .line 813
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->turnOnIms()V

    .line 818
    :cond_2
    :goto_3
    return-void

    .restart local v1    # "config":Lcom/android/ims/ImsConfig;
    :cond_3
    move v5, v4

    .line 800
    goto :goto_0

    :cond_4
    move v3, v4

    .line 805
    goto :goto_1

    .line 809
    .end local v1    # "config":Lcom/android/ims/ImsConfig;
    :catch_0
    move-exception v2

    .line 810
    .local v2, "e":Lcom/android/ims/ImsException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAdvanced4GMode() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 814
    .end local v2    # "e":Lcom/android/ims/ImsException;
    :cond_5
    if-eqz v0, :cond_2

    .line 815
    const-string v3, "setAdvanced4GMode() : imsServiceAllowTurnOff -> turnOffIms"

    invoke-direct {p0, v3}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 816
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->turnOffIms()V

    goto :goto_3
.end method

.method public setUiTTYMode(IILandroid/os/Message;)V
    .locals 4
    .param p1, "serviceId"    # I
    .param p2, "uiTtyMode"    # I
    .param p3, "onComplete"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 660
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 663
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/ims/internal/IImsService;->setUiTTYMode(IILandroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    return-void

    .line 664
    :catch_0
    move-exception v0

    .line 665
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "setTTYMode()"

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public takeCall(ILandroid/content/Intent;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;
    .locals 8
    .param p1, "serviceId"    # I
    .param p2, "incomingCallIntent"    # Landroid/content/Intent;
    .param p3, "listener"    # Lcom/android/ims/ImsCall$Listener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x65

    .line 586
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "takeCall :: serviceId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", incomingCall="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V

    .line 590
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 592
    if-nez p2, :cond_0

    .line 593
    new-instance v5, Lcom/android/ims/ImsException;

    const-string v6, "Can\'t retrieve session with null intent"

    invoke-direct {v5, v6, v7}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 597
    :cond_0
    invoke-static {p2}, Lcom/android/ims/ImsManager;->getServiceId(Landroid/content/Intent;)I

    move-result v2

    .line 599
    .local v2, "incomingServiceId":I
    if-eq p1, v2, :cond_1

    .line 600
    new-instance v5, Lcom/android/ims/ImsException;

    const-string v6, "Service id is mismatched in the incoming call intent"

    invoke-direct {v5, v6, v7}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 604
    :cond_1
    invoke-static {p2}, Lcom/android/ims/ImsManager;->getCallId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 606
    .local v1, "callId":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 607
    new-instance v5, Lcom/android/ims/ImsException;

    const-string v6, "Call ID missing in the incoming call intent"

    invoke-direct {v5, v6, v7}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 612
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    invoke-interface {v5, p1, v1}, Lcom/android/ims/internal/IImsService;->getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 614
    .local v3, "session":Lcom/android/ims/internal/IImsCallSession;
    if-nez v3, :cond_3

    .line 615
    new-instance v5, Lcom/android/ims/ImsException;

    const-string v6, "No pending session for the call"

    const/16 v7, 0x6b

    invoke-direct {v5, v6, v7}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    .end local v3    # "session":Lcom/android/ims/internal/IImsCallSession;
    :catch_0
    move-exception v4

    .line 626
    .local v4, "t":Ljava/lang/Throwable;
    new-instance v5, Lcom/android/ims/ImsException;

    const-string v6, "takeCall()"

    const/4 v7, 0x0

    invoke-direct {v5, v6, v4, v7}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v5

    .line 619
    .end local v4    # "t":Ljava/lang/Throwable;
    .restart local v3    # "session":Lcom/android/ims/internal/IImsCallSession;
    :cond_3
    :try_start_1
    new-instance v0, Lcom/android/ims/ImsCall;

    iget-object v5, p0, Lcom/android/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-interface {v3}, Lcom/android/ims/internal/IImsCallSession;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lcom/android/ims/ImsCall;-><init>(Landroid/content/Context;Lcom/android/ims/ImsCallProfile;)V

    .line 621
    .local v0, "call":Lcom/android/ims/ImsCall;
    new-instance v5, Lcom/android/ims/internal/ImsCallSession;

    invoke-direct {v5, v3}, Lcom/android/ims/internal/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    invoke-virtual {v0, v5}, Lcom/android/ims/ImsCall;->attachSession(Lcom/android/ims/internal/ImsCallSession;)V

    .line 622
    invoke-virtual {v0, p3}, Lcom/android/ims/ImsCall;->setListener(Lcom/android/ims/ImsCall$Listener;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 624
    return-object v0
.end method

.method public turnOffIms()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 825
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 828
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    iget v2, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-interface {v1, v2}, Lcom/android/ims/internal/IImsService;->turnOffIms(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 832
    return-void

    .line 829
    :catch_0
    move-exception v0

    .line 830
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "turnOffIms() "

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public turnOnIms()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 782
    invoke-direct {p0}, Lcom/android/ims/ImsManager;->checkAndThrowExceptionIfServiceUnavailable()V

    .line 785
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsManager;->mImsService:Lcom/android/ims/internal/IImsService;

    iget v2, p0, Lcom/android/ims/ImsManager;->mPhoneId:I

    invoke-interface {v1, v2}, Lcom/android/ims/internal/IImsService;->turnOnIms(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    return-void

    .line 786
    :catch_0
    move-exception v0

    .line 787
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "turnOnIms() "

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method
