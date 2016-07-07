.class public Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "CdmaServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;
    }
.end annotation


# static fields
.field protected static final DEFAULT_MNC:Ljava/lang/String; = "00"

.field protected static final INVALID_MCC:Ljava/lang/String; = "000"

.field static final LOG_TAG:Ljava/lang/String; = "CdmaSST"

.field private static final MS_PER_HOUR:I = 0x36ee80

.field private static final NITZ_UPDATE_DIFF_DEFAULT:I = 0x7d0

.field private static final NITZ_UPDATE_SPACING_DEFAULT:I = 0x927c0

.field private static final UNACTIVATED_MIN2_VALUE:Ljava/lang/String; = "000000"

.field private static final UNACTIVATED_MIN_VALUE:Ljava/lang/String; = "1111110111"

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "ServiceStateTracker"


# instance fields
.field private final lastIdleCellLocation:Landroid/telephony/cdma/CdmaCellLocation;

.field private mAutoTimeObserver:Landroid/database/ContentObserver;

.field private mAutoTimeZoneObserver:Landroid/database/ContentObserver;

.field protected mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

.field private mCdmaRoaming:Z

.field private mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

.field private mCr:Landroid/content/ContentResolver;

.field protected mCurPlmn:Ljava/lang/String;

.field private mCurrentCarrier:Ljava/lang/String;

.field mCurrentOtaspMode:I

.field protected mDataRoaming:Z

.field private mDefaultRoamingIndicator:I

.field protected mGotCountryCode:Z

.field protected mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

.field protected mHomeNetworkId:[I

.field protected mHomeSystemId:[I

.field private mIsEriTextLoaded:Z

.field private mIsInPrl:Z

.field protected mIsMinInfoReady:Z

.field protected mIsSubscriptionFromRuim:Z

.field protected mMdn:Ljava/lang/String;

.field protected mMin:Ljava/lang/String;

.field protected mNeedFixZone:Z

.field mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

.field private mNitzUpdateDiff:I

.field private mNitzUpdateSpacing:I

.field mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field protected mPrlVersion:Ljava/lang/String;

.field private mRegistrationDeniedReason:Ljava/lang/String;

.field protected mRegistrationState:I

.field private mRoamingIndicator:I

.field mSavedAtTime:J

.field mSavedTime:J

.field mSavedTimeZone:Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mZoneDst:Z

.field private mZoneOffset:I

.field private mZoneTime:J


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;

    .prologue
    .line 179
    new-instance v0, Landroid/telephony/CellInfoCdma;

    invoke-direct {v0}, Landroid/telephony/CellInfoCdma;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Landroid/telephony/CellInfo;)V

    .line 180
    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Landroid/telephony/CellInfo;)V
    .locals 8
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;
    .param p2, "cellInfo"    # Landroid/telephony/CellInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 183
    iget-object v2, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0, p1, v2, p2}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;Landroid/telephony/CellInfo;)V

    .line 91
    iput v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    .line 95
    const-string v2, "ro.nitz_update_spacing"

    const v5, 0x927c0

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNitzUpdateSpacing:I

    .line 100
    const-string v2, "ro.nitz_update_diff"

    const/16 v5, 0x7d0

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNitzUpdateDiff:I

    .line 103
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    .line 104
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDataRoaming:Z

    .line 105
    iput v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    .line 107
    iput v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    .line 112
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationState:I

    .line 113
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    .line 120
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    .line 124
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    .line 134
    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    .line 137
    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    .line 138
    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeNetworkId:[I

    .line 141
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    .line 143
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsEriTextLoaded:Z

    .line 144
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    .line 150
    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

    .line 156
    iput-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentCarrier:Ljava/lang/String;

    .line 159
    new-instance v2, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v2}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->lastIdleCellLocation:Landroid/telephony/cdma/CdmaCellLocation;

    .line 162
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    .line 170
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;-><init>(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    .line 185
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 186
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    .line 187
    new-instance v2, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v2}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    .line 188
    new-instance v2, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v2}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    .line 190
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x27

    invoke-static {v2, v5, p0, v6, v7}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 192
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    .line 195
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, "power"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 197
    .local v1, "powerManager":Landroid/os/PowerManager;
    const-string v2, "ServiceStateTracker"

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 199
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0, v3, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 201
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x1e

    invoke-interface {v2, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForVoiceNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 202
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0xb

    invoke-interface {v2, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 204
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x28

    invoke-interface {v2, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaPrlChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 205
    const/16 v2, 0x24

    invoke-virtual {p1, p0, v2, v7}, Lcom/android/internal/telephony/cdma/CDMAPhone;->registerForEriFileLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 206
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x25

    invoke-interface {v2, p0, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 209
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v5, "airplane_mode_on"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 210
    .local v0, "airplaneMode":I
    if-gtz v0, :cond_1

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    .line 212
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v5, "auto_time"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 215
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v5, "auto_time_zone"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v5, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 218
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 220
    new-instance v2, Lcom/android/internal/telephony/HbpcdUtils;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/HbpcdUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

    .line 223
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyOtaspChanged(I)V

    .line 224
    return-void

    .end local v0    # "airplaneMode":I
    .end local v1    # "powerManager":Landroid/os/PowerManager;
    :cond_0
    move v2, v4

    .line 192
    goto :goto_0

    .restart local v0    # "airplaneMode":I
    .restart local v1    # "powerManager":Landroid/os/PowerManager;
    :cond_1
    move v2, v4

    .line 210
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->revertToNitzTime()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->revertToNitzTimeZone()V

    return-void
.end method

.method private findTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 11
    .param p1, "offset"    # I
    .param p2, "dst"    # Z
    .param p3, "when"    # J

    .prologue
    .line 1402
    move v5, p1

    .line 1403
    .local v5, "rawOffset":I
    if-eqz p2, :cond_0

    .line 1404
    const v9, 0x36ee80

    sub-int/2addr v5, v9

    .line 1406
    :cond_0
    invoke-static {v5}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v8

    .line 1407
    .local v8, "zones":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1408
    .local v2, "guess":Ljava/util/TimeZone;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p3, p4}, Ljava/util/Date;-><init>(J)V

    .line 1409
    .local v1, "d":Ljava/util/Date;
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v7, v0, v3

    .line 1410
    .local v7, "zone":Ljava/lang/String;
    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 1411
    .local v6, "tz":Ljava/util/TimeZone;
    invoke-virtual {v6, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v9

    if-ne v9, p1, :cond_2

    invoke-virtual {v6, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v9

    if-ne v9, p2, :cond_2

    .line 1413
    move-object v2, v6

    .line 1418
    .end local v6    # "tz":Ljava/util/TimeZone;
    .end local v7    # "zone":Ljava/lang/String;
    :cond_1
    return-object v2

    .line 1409
    .restart local v6    # "tz":Ljava/util/TimeZone;
    .restart local v7    # "zone":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getAutoTime()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1754
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v3, "auto_time"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 1756
    :goto_0
    return v1

    .line 1754
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1755
    :catch_0
    move-exception v0

    .line 1756
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getAutoTimeZone()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1762
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v3, "auto_time_zone"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 1764
    :goto_0
    return v1

    .line 1762
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1763
    :catch_0
    move-exception v0

    .line 1764
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getCombinedRegState()I
    .locals 3

    .prologue
    .line 643
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    .line 644
    .local v1, "regState":I
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    .line 646
    .local v0, "dataRegState":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_0

    .line 648
    const-string v2, "getCombinedRegState: return STATE_IN_SERVICE as Data is in service"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 649
    move v1, v0

    .line 652
    :cond_0
    return v1
.end method

.method private getNitzTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 3
    .param p1, "offset"    # I
    .param p2, "dst"    # Z
    .param p3, "when"    # J

    .prologue
    .line 1392
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    .line 1393
    .local v0, "guess":Ljava/util/TimeZone;
    if-nez v0, :cond_0

    .line 1395
    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    .line 1397
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNitzTimeZone returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_2

    move-object v1, v0

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1398
    return-object v0

    .line 1395
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1397
    :cond_2
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private getSubscriptionInfoAndStartPollingThreads()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    .line 284
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    .line 285
    return-void
.end method

.method private handleCdmaSubscriptionSource(I)V
    .locals 2
    .param p1, "newSubscriptionSource"    # I

    .prologue
    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subscription Source : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 572
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    .line 574
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->saveCdmaSubscriptionSource(I)V

    .line 575
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-nez v0, :cond_1

    .line 578
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForRuimEvents()V

    .line 580
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    .line 584
    :goto_1
    return-void

    .line 572
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 582
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForRuimEvents()V

    goto :goto_1
.end method

.method private isHomeSid(I)Z
    .locals 2
    .param p1, "sid"    # I

    .prologue
    .line 1843
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    if-eqz v1, :cond_1

    .line 1844
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1845
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 1846
    const/4 v1, 0x1

    .line 1850
    .end local v0    # "i":I
    :goto_1
    return v1

    .line 1844
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1850
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isRoamIndForHomeSystem(Ljava/lang/String;)Z
    .locals 8
    .param p1, "roamInd"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1513
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x107003a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1516
    .local v2, "homeRoamIndicators":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1519
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 1520
    .local v1, "homeRoamInd":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1521
    const/4 v5, 0x1

    .line 1529
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "homeRoamInd":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    return v5

    .line 1519
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "homeRoamInd":Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z
    .locals 9
    .param p1, "cdmaRoaming"    # Z
    .param p2, "s"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1540
    const-string v7, "gsm.sim.operator.alpha"

    const-string v8, "empty"

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1544
    .local v4, "spn":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    .line 1545
    .local v2, "onsl":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v3

    .line 1547
    .local v3, "onss":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v0, v5

    .line 1548
    .local v0, "equalsOnsl":Z
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v1, v5

    .line 1550
    .local v1, "equalsOnss":Z
    :goto_1
    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    :goto_2
    return v5

    .end local v0    # "equalsOnsl":Z
    .end local v1    # "equalsOnss":Z
    :cond_0
    move v0, v6

    .line 1547
    goto :goto_0

    .restart local v0    # "equalsOnsl":Z
    :cond_1
    move v1, v6

    .line 1548
    goto :goto_1

    .restart local v1    # "equalsOnss":Z
    :cond_2
    move v5, v6

    .line 1550
    goto :goto_2
.end method

.method private queueNextSignalStrengthPoll()V
    .locals 4

    .prologue
    .line 1429
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDontPollSignalStrength:Z

    if-eqz v1, :cond_0

    .line 1442
    :goto_0
    return-void

    .line 1437
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1438
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1441
    const-wide/16 v2, 0x4e20

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private registerForRuimEvents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1984
    const-string v0, "registerForRuimEvents"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1985
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 1986
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v1, 0x1a

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1988
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_1

    .line 1989
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v1, 0x1b

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1991
    :cond_1
    return-void
.end method

.method private revertToNitzTime()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1805
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v1, "auto_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 1815
    :cond_0
    :goto_0
    return-void

    .line 1809
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "revertToNitzTime: mSavedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSavedAtTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1811
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 1812
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    goto :goto_0
.end method

.method private revertToNitzTimeZone()V
    .locals 3

    .prologue
    .line 1818
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time_zone"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 1826
    :cond_0
    :goto_0
    return-void

    .line 1822
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "revertToNitzTimeZone: tz=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1823
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1824
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveCdmaSubscriptionSource(I)V
    .locals 2
    .param p1, "source"    # I

    .prologue
    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Storing cdma subscription source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "subscription_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 278
    return-void
.end method

.method private saveNitzTimeZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 1769
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    .line 1770
    return-void
.end method

.method private setAndBroadcastNetworkSetTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 1796
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAndBroadcastNetworkSetTime: time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1797
    invoke-static {p1, p2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 1798
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1799
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1800
    const-string v1, "time"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1801
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1802
    return-void
.end method

.method private setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V
    .locals 4
    .param p1, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 1779
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAndBroadcastNetworkSetTimeZone: setTimeZone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1780
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1782
    .local v0, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 1783
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1784
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1785
    const-string v2, "time-zone"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1786
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1787
    return-void
.end method

.method private setTimeFromNITZString(Ljava/lang/String;J)V
    .locals 38
    .param p1, "nitz"    # Ljava/lang/String;
    .param p2, "nitzReceiveTime"    # J

    .prologue
    .line 1564
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    .line 1566
    .local v26, "start":J
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "NITZ: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ","

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " start="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " delay="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sub-long v36, v26, p2

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1573
    :try_start_0
    const-string v34, "GMT"

    invoke-static/range {v34 .. v34}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v6

    .line 1575
    .local v6, "c":Ljava/util/Calendar;
    invoke-virtual {v6}, Ljava/util/Calendar;->clear()V

    .line 1576
    const/16 v34, 0x10

    const/16 v35, 0x0

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1578
    const-string v34, "[/:,+-]"

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 1580
    .local v21, "nitzSubs":[Ljava/lang/String;
    const/16 v34, 0x0

    aget-object v34, v21, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    move/from16 v0, v34

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v32, v0

    .line 1581
    .local v32, "year":I
    const/16 v34, 0x1

    move/from16 v0, v34

    move/from16 v1, v32

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1584
    const/16 v34, 0x1

    aget-object v34, v21, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    add-int/lit8 v20, v34, -0x1

    .line 1585
    .local v20, "month":I
    const/16 v34, 0x2

    move/from16 v0, v34

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1587
    const/16 v34, 0x2

    aget-object v34, v21, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1588
    .local v7, "date":I
    const/16 v34, 0x5

    move/from16 v0, v34

    invoke-virtual {v6, v0, v7}, Ljava/util/Calendar;->set(II)V

    .line 1590
    const/16 v34, 0x3

    aget-object v34, v21, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 1591
    .local v14, "hour":I
    const/16 v34, 0xa

    move/from16 v0, v34

    invoke-virtual {v6, v0, v14}, Ljava/util/Calendar;->set(II)V

    .line 1593
    const/16 v34, 0x4

    aget-object v34, v21, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 1594
    .local v17, "minute":I
    const/16 v34, 0xc

    move/from16 v0, v34

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1596
    const/16 v34, 0x5

    aget-object v34, v21, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 1597
    .local v24, "second":I
    const/16 v34, 0xd

    move/from16 v0, v34

    move/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1599
    const/16 v34, 0x2d

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v34

    const/16 v35, -0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_6

    const/16 v25, 0x1

    .line 1601
    .local v25, "sign":Z
    :goto_0
    const/16 v34, 0x6

    aget-object v34, v21, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    .line 1603
    .local v30, "tzOffset":I
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v34, v0

    const/16 v35, 0x8

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_7

    const/16 v34, 0x7

    aget-object v34, v21, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1613
    .local v8, "dst":I
    :goto_1
    if-eqz v25, :cond_8

    const/16 v34, 0x1

    :goto_2
    mul-int v34, v34, v30

    mul-int/lit8 v34, v34, 0xf

    mul-int/lit8 v34, v34, 0x3c

    move/from16 v0, v34

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v30, v0

    .line 1615
    const/16 v33, 0x0

    .line 1621
    .local v33, "zone":Ljava/util/TimeZone;
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v34, v0

    const/16 v35, 0x9

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_0

    .line 1622
    const/16 v34, 0x8

    aget-object v34, v21, v34

    const/16 v35, 0x21

    const/16 v36, 0x2f

    invoke-virtual/range {v34 .. v36}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v31

    .line 1623
    .local v31, "tzname":Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v33

    .line 1626
    .end local v31    # "tzname":Ljava/lang/String;
    :cond_0
    const-string v34, "gsm.operator.iso-country"

    const-string v35, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1628
    .local v16, "iso":Ljava/lang/String;
    if-nez v33, :cond_1

    .line 1629
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    move/from16 v34, v0

    if-eqz v34, :cond_1

    .line 1630
    if-eqz v16, :cond_a

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v34

    if-lez v34, :cond_a

    .line 1631
    if-eqz v8, :cond_9

    const/16 v34, 0x1

    :goto_3
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v36

    move/from16 v0, v30

    move/from16 v1, v34

    move-wide/from16 v2, v36

    move-object/from16 v4, v16

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v33

    .line 1644
    :cond_1
    :goto_4
    if-eqz v33, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, v30

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    move/from16 v35, v0

    if-eqz v8, :cond_c

    const/16 v34, 0x1

    :goto_5
    move/from16 v0, v35

    move/from16 v1, v34

    if-eq v0, v1, :cond_3

    .line 1649
    :cond_2
    const/16 v34, 0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    .line 1650
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    .line 1651
    if-eqz v8, :cond_d

    const/16 v34, 0x1

    :goto_6
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    .line 1652
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v34

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneTime:J

    .line 1655
    :cond_3
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "NITZ: tzOffset="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " dst="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " zone="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    if-eqz v33, :cond_e

    invoke-virtual/range {v33 .. v33}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v34

    :goto_7
    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " iso="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " mGotCountryCode="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " mNeedFixZone="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1661
    if-eqz v33, :cond_5

    .line 1662
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getAutoTimeZone()Z

    move-result v34

    if-eqz v34, :cond_4

    .line 1663
    invoke-virtual/range {v33 .. v33}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 1665
    :cond_4
    invoke-virtual/range {v33 .. v33}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    .line 1668
    :cond_5
    const-string v34, "gsm.ignore-nitz"

    invoke-static/range {v34 .. v34}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1669
    .local v15, "ignore":Ljava/lang/String;
    if-eqz v15, :cond_f

    const-string v34, "yes"

    move-object/from16 v0, v34

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_f

    .line 1670
    const-string v34, "NITZ: Not setting clock because gsm.ignore-nitz is set"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1750
    .end local v6    # "c":Ljava/util/Calendar;
    .end local v7    # "date":I
    .end local v8    # "dst":I
    .end local v14    # "hour":I
    .end local v15    # "ignore":Ljava/lang/String;
    .end local v16    # "iso":Ljava/lang/String;
    .end local v17    # "minute":I
    .end local v20    # "month":I
    .end local v21    # "nitzSubs":[Ljava/lang/String;
    .end local v24    # "second":I
    .end local v25    # "sign":Z
    .end local v30    # "tzOffset":I
    .end local v32    # "year":I
    .end local v33    # "zone":Ljava/util/TimeZone;
    :goto_8
    return-void

    .line 1599
    .restart local v6    # "c":Ljava/util/Calendar;
    .restart local v7    # "date":I
    .restart local v14    # "hour":I
    .restart local v17    # "minute":I
    .restart local v20    # "month":I
    .restart local v21    # "nitzSubs":[Ljava/lang/String;
    .restart local v24    # "second":I
    .restart local v32    # "year":I
    :cond_6
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 1603
    .restart local v25    # "sign":Z
    .restart local v30    # "tzOffset":I
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 1613
    .restart local v8    # "dst":I
    :cond_8
    const/16 v34, -0x1

    goto/16 :goto_2

    .line 1631
    .restart local v16    # "iso":Ljava/lang/String;
    .restart local v33    # "zone":Ljava/util/TimeZone;
    :cond_9
    const/16 v34, 0x0

    goto/16 :goto_3

    .line 1639
    :cond_a
    if-eqz v8, :cond_b

    const/16 v34, 0x1

    :goto_9
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v36

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v34

    move-wide/from16 v3, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v33

    goto/16 :goto_4

    :cond_b
    const/16 v34, 0x0

    goto :goto_9

    .line 1644
    :cond_c
    const/16 v34, 0x0

    goto/16 :goto_5

    .line 1651
    :cond_d
    const/16 v34, 0x0

    goto/16 :goto_6

    .line 1655
    :cond_e
    const-string v34, "NULL"
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    .line 1675
    .restart local v15    # "ignore":Ljava/lang/String;
    :cond_f
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1680
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    sub-long v18, v34, p2

    .line 1683
    .local v18, "millisSinceNitzReceived":J
    const-wide/16 v34, 0x0

    cmp-long v34, v18, v34

    if-gez v34, :cond_10

    .line 1686
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "NITZ: not setting time, clock has rolled backwards since NITZ time was received, "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1743
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 1744
    .local v10, "end":J
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "NITZ: end="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " dur="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sub-long v36, v10, v26

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_8

    .line 1747
    .end local v6    # "c":Ljava/util/Calendar;
    .end local v7    # "date":I
    .end local v8    # "dst":I
    .end local v10    # "end":J
    .end local v14    # "hour":I
    .end local v15    # "ignore":Ljava/lang/String;
    .end local v16    # "iso":Ljava/lang/String;
    .end local v17    # "minute":I
    .end local v18    # "millisSinceNitzReceived":J
    .end local v20    # "month":I
    .end local v21    # "nitzSubs":[Ljava/lang/String;
    .end local v24    # "second":I
    .end local v25    # "sign":Z
    .end local v30    # "tzOffset":I
    .end local v32    # "year":I
    .end local v33    # "zone":Ljava/util/TimeZone;
    :catch_0
    move-exception v9

    .line 1748
    .local v9, "ex":Ljava/lang/RuntimeException;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "NITZ: Parsing NITZ time "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " ex="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1693
    .end local v9    # "ex":Ljava/lang/RuntimeException;
    .restart local v6    # "c":Ljava/util/Calendar;
    .restart local v7    # "date":I
    .restart local v8    # "dst":I
    .restart local v14    # "hour":I
    .restart local v15    # "ignore":Ljava/lang/String;
    .restart local v16    # "iso":Ljava/lang/String;
    .restart local v17    # "minute":I
    .restart local v18    # "millisSinceNitzReceived":J
    .restart local v20    # "month":I
    .restart local v21    # "nitzSubs":[Ljava/lang/String;
    .restart local v24    # "second":I
    .restart local v25    # "sign":Z
    .restart local v30    # "tzOffset":I
    .restart local v32    # "year":I
    .restart local v33    # "zone":Ljava/util/TimeZone;
    :cond_10
    const-wide/32 v34, 0x7fffffff

    cmp-long v34, v18, v34

    if-lez v34, :cond_11

    .line 1696
    :try_start_3
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "NITZ: not setting time, processing has taken "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-wide/32 v36, 0x5265c00

    div-long v36, v18, v36

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " days"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1743
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 1744
    .restart local v10    # "end":J
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "NITZ: end="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " dur="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sub-long v36, v10, v26

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_8

    .line 1704
    .end local v10    # "end":J
    :cond_11
    const/16 v34, 0xe

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v35, v0

    :try_start_5
    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 1706
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getAutoTime()Z

    move-result v34

    if-eqz v34, :cond_13

    .line 1710
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v34

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    sub-long v12, v34, v36

    .line 1711
    .local v12, "gained":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    move-wide/from16 v36, v0

    sub-long v28, v34, v36

    .line 1712
    .local v28, "timeSinceLastUpdate":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    move-object/from16 v34, v0

    const-string v35, "nitz_update_spacing"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNitzUpdateSpacing:I

    move/from16 v36, v0

    invoke-static/range {v34 .. v36}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    .line 1714
    .local v23, "nitzUpdateSpacing":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    move-object/from16 v34, v0

    const-string v35, "nitz_update_diff"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNitzUpdateDiff:I

    move/from16 v36, v0

    invoke-static/range {v34 .. v36}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    .line 1717
    .local v22, "nitzUpdateDiff":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    move-wide/from16 v34, v0

    const-wide/16 v36, 0x0

    cmp-long v34, v34, v36

    if-eqz v34, :cond_12

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v34, v0

    cmp-long v34, v28, v34

    if-gtz v34, :cond_12

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v34

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v36, v0

    cmp-long v34, v34, v36

    if-lez v34, :cond_14

    .line 1720
    :cond_12
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "NITZ: Auto updating time of day to "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " NITZ receive delay="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "ms gained="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "ms from "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1725
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v34

    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    .line 1738
    .end local v12    # "gained":J
    .end local v22    # "nitzUpdateDiff":I
    .end local v23    # "nitzUpdateSpacing":I
    .end local v28    # "timeSinceLastUpdate":J
    :cond_13
    const-string v34, "NITZ: update nitz time property"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1739
    const-string v34, "gsm.nitz.time"

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v36

    invoke-static/range {v36 .. v37}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1740
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v34

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    .line 1741
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    move-wide/from16 v0, v34

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1743
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 1744
    .restart local v10    # "end":J
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "NITZ: end="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " dur="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sub-long v36, v10, v26

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_8

    .line 1728
    .end local v10    # "end":J
    .restart local v12    # "gained":J
    .restart local v22    # "nitzUpdateDiff":I
    .restart local v23    # "nitzUpdateSpacing":I
    .restart local v28    # "timeSinceLastUpdate":J
    :cond_14
    :try_start_7
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "NITZ: ignore, a previous update was "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "ms ago and gained="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "ms"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1743
    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 1744
    .restart local v10    # "end":J
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "NITZ: end="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " dur="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    sub-long v36, v10, v26

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_8

    .line 1743
    .end local v10    # "end":J
    .end local v12    # "gained":J
    .end local v18    # "millisSinceNitzReceived":J
    .end local v22    # "nitzUpdateDiff":I
    .end local v23    # "nitzUpdateSpacing":I
    .end local v28    # "timeSinceLastUpdate":J
    :catchall_0
    move-exception v34

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 1744
    .restart local v10    # "end":J
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "NITZ: end="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " dur="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    sub-long v36, v10, v26

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1746
    throw v34
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
.end method

.method private unregisterForRuimEvents()V
    .locals 1

    .prologue
    .line 1994
    const-string v0, "unregisterForRuimEvents"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1995
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 1996
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 1998
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_1

    .line 1999
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 2001
    :cond_1
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->checkCorrectThread()V

    .line 229
    const-string v0, "ServiceStateTracker dispose"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForVoiceNetworkStateChanged(Landroid/os/Handler;)V

    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    .line 235
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unregisterForEriFileLoaded(Landroid/os/Handler;)V

    .line 236
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForRuimEvents()V

    .line 237
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNITZTime(Landroid/os/Handler;)V

    .line 238
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 240
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V

    .line 241
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaPrlChanged(Landroid/os/Handler;)V

    .line 242
    invoke-super {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->dispose()V

    .line 243
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2044
    const-string v0, "CdmaServiceStateTracker extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2045
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/ServiceStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2046
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2048
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewSS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCellLoc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2051
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewCellLoc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurrentOtaspMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCdmaRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2054
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRoamingIndicator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsInPrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2056
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDefaultRoamingIndicator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRegistrationState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2058
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNeedFixZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2059
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mZoneOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mZoneDst="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mZoneTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mGotCountryCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSavedTimeZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSavedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSavedAtTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mWakeLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2068
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurPlmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMdn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mHomeSystemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mHomeNetworkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeNetworkId:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2073
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPrlVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsMinInfoReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsEriTextLoaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsEriTextLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsSubscriptionFromRuim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCdmaSSM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRegistrationDeniedReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurrentCarrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentCarrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2080
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2081
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 247
    const-string v0, "CdmaServiceStateTracker finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method protected fixTimeZone(Ljava/lang/String;)V
    .locals 12
    .param p1, "isoCountryCode"    # Ljava/lang/String;

    .prologue
    .line 1037
    const/4 v6, 0x0

    .line 1040
    .local v6, "zone":Ljava/util/TimeZone;
    const-string v8, "persist.sys.timezone"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1042
    .local v7, "zoneName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fixTimeZone zoneName=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' mZoneOffset="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mZoneDst="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " iso-cc=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' iso-cc-idx="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    invoke-static {v9, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1047
    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    if-nez v8, :cond_2

    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    if-nez v8, :cond_2

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    sget-object v8, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    invoke-static {v8, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    if-gez v8, :cond_2

    .line 1052
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    .line 1053
    iget-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    if-eqz v8, :cond_0

    .line 1054
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1055
    .local v2, "ctm":J
    invoke-virtual {v6, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    int-to-long v4, v8

    .line 1057
    .local v4, "tzOffset":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fixTimeZone: tzOffset="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ltod="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1060
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getAutoTime()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1061
    sub-long v0, v2, v4

    .line 1062
    .local v0, "adj":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fixTimeZone: adj ltod="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1063
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    .line 1070
    .end local v0    # "adj":J
    .end local v2    # "ctm":J
    .end local v4    # "tzOffset":J
    :cond_0
    :goto_0
    const-string v8, "fixTimeZone: using default TimeZone"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1081
    :goto_1
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    .line 1083
    if-eqz v6, :cond_5

    .line 1084
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fixTimeZone: zone != null zone.getID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1085
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getAutoTimeZone()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1086
    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 1090
    :goto_2
    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    .line 1094
    :goto_3
    return-void

    .line 1066
    .restart local v2    # "ctm":J
    .restart local v4    # "tzOffset":J
    :cond_1
    iget-wide v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    sub-long/2addr v8, v4

    iput-wide v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    .line 1067
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fixTimeZone: adj mSavedTime="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1071
    .end local v2    # "ctm":J
    .end local v4    # "tzOffset":J
    :cond_2
    const-string v8, ""

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1074
    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    iget-wide v10, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneTime:J

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v6

    .line 1075
    const-string v8, "fixTimeZone: using NITZ TimeZone"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1077
    :cond_3
    iget v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    iget-wide v10, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneTime:J

    invoke-static {v8, v9, v10, v11, p1}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 1078
    const-string v8, "fixTimeZone: using getTimeZone(off, dst, time, iso)"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1088
    :cond_4
    const-string v8, "fixTimeZone: skip changing zone as getAutoTimeZone was false"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1092
    :cond_5
    const-string v8, "fixTimeZone: zone == null, do nothing for zone"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected fixUnknownMcc(Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "sid"    # I

    .prologue
    const v7, 0x36ee80

    .line 1344
    if-gtz p2, :cond_0

    move-object v2, p1

    .line 1371
    .end local p1    # "operatorNumeric":Ljava/lang/String;
    .local v2, "operatorNumeric":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1353
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    .restart local p1    # "operatorNumeric":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 1354
    .local v0, "isNitzTimeZone":Z
    const/4 v3, 0x0

    .line 1355
    .local v3, "timeZone":I
    const/4 v4, 0x0

    .line 1356
    .local v4, "tzone":Ljava/util/TimeZone;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 1357
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v5

    div-int v3, v5, v7

    .line 1359
    const/4 v0, 0x1

    .line 1366
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v6, p2, v3, v5, v0}, Lcom/android/internal/telephony/HbpcdUtils;->getMcc(IIIZ)I

    move-result v1

    .line 1368
    .local v1, "mcc":I
    if-lez v1, :cond_2

    .line 1369
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "00"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    move-object v2, p1

    .line 1371
    .end local p1    # "operatorNumeric":Ljava/lang/String;
    .restart local v2    # "operatorNumeric":Ljava/lang/String;
    goto :goto_0

    .line 1361
    .end local v1    # "mcc":I
    .end local v2    # "operatorNumeric":Ljava/lang/String;
    .restart local p1    # "operatorNumeric":Ljava/lang/String;
    :cond_3
    iget v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    iget-wide v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneTime:J

    invoke-direct {p0, v5, v6, v8, v9}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v4

    .line 1362
    if-eqz v4, :cond_1

    .line 1363
    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v5

    div-int v3, v5, v7

    goto :goto_1

    .line 1366
    :cond_4
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1870
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentDataConnectionState()I
    .locals 1

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    return v0
.end method

.method getImsi()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1883
    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1886
    .local v0, "operatorNumeric":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCdmaMin()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1887
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCdmaMin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1889
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1866
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMdn:Ljava/lang/String;

    return-object v0
.end method

.method getOtasp()I
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 1908
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1909
    const/4 v0, 0x2

    .line 1924
    :goto_0
    return v0

    .line 1911
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v4, :cond_2

    .line 1912
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOtasp: bad mMin=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1913
    const/4 v0, 0x1

    .line 1923
    .local v0, "provisioningState":I
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOtasp: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1915
    .end local v0    # "provisioningState":I
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    const-string v2, "1111110111"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "000000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "test_cdma_setup"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1918
    :cond_3
    const/4 v0, 0x2

    .restart local v0    # "provisioningState":I
    goto :goto_1

    .line 1920
    .end local v0    # "provisioningState":I
    :cond_4
    const/4 v0, 0x3

    .restart local v0    # "provisioningState":I
    goto :goto_1
.end method

.method protected getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    return-object v0
.end method

.method public getPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1875
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    return-object v0
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3

    .prologue
    .line 2004
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 293
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-boolean v4, v4, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsTheCurrentActivePhone:Z

    if-nez v4, :cond_1

    .line 294
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Received message "

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v22, "["

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v22, "]"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v22, " while being destroyed. Ignoring."

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 565
    :pswitch_0
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 301
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handleCdmaSubscriptionSource(I)V

    goto :goto_0

    .line 305
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v22

    move/from16 v0, v22

    invoke-static {v4, v0}, Lcom/android/internal/telephony/PhoneFactory;->calculatePreferredNetworkType(Landroid/content/Context;I)I

    move-result v14

    .line 307
    .local v14, "networkType":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-interface {v4, v14, v0}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 309
    const-string v4, "Receive EVENT_RUIM_READY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    .line 312
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v22, 0x112005d

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v20

    .line 314
    .local v20, "skipRestoringSelection":Z
    if-nez v20, :cond_2

    .line 316
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v22, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 319
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->prepareEri()V

    goto :goto_0

    .line 323
    .end local v14    # "networkType":I
    .end local v20    # "skipRestoringSelection":Z
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updatePhoneObject()V

    .line 326
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v22, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 331
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getSubscriptionInfoAndStartPollingThreads()V

    goto/16 :goto_0

    .line 335
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    sget-object v22, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-object/from16 v0, v22

    if-ne v4, v0, :cond_3

    .line 336
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handleCdmaSubscriptionSource(I)V

    .line 339
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->queueNextSignalStrengthPoll()V

    .line 342
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setPowerStateToDesired()V

    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    goto/16 :goto_0

    .line 347
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    goto/16 :goto_0

    .line 354
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 358
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 359
    .local v10, "ar":Landroid/os/AsyncResult;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z

    .line 360
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto/16 :goto_0

    .line 365
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 367
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_a

    .line 368
    iget-object v4, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    move-object/from16 v21, v4

    check-cast v21, [Ljava/lang/String;

    .line 369
    .local v21, "states":[Ljava/lang/String;
    const/4 v5, -0x1

    .line 370
    .local v5, "baseStationId":I
    const v6, 0x7fffffff

    .line 371
    .local v6, "baseStationLatitude":I
    const v7, 0x7fffffff

    .line 372
    .local v7, "baseStationLongitude":I
    const/4 v8, -0x1

    .line 373
    .local v8, "systemId":I
    const/4 v9, -0x1

    .line 375
    .local v9, "networkId":I
    move-object/from16 v0, v21

    array-length v4, v0

    const/16 v22, 0x9

    move/from16 v0, v22

    if-le v4, v0, :cond_9

    .line 377
    const/4 v4, 0x4

    :try_start_0
    aget-object v4, v21, v4

    if-eqz v4, :cond_4

    .line 378
    const/4 v4, 0x4

    aget-object v4, v21, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 380
    :cond_4
    const/4 v4, 0x5

    aget-object v4, v21, v4

    if-eqz v4, :cond_5

    .line 381
    const/4 v4, 0x5

    aget-object v4, v21, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 383
    :cond_5
    const/4 v4, 0x6

    aget-object v4, v21, v4

    if-eqz v4, :cond_6

    .line 384
    const/4 v4, 0x6

    aget-object v4, v21, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 387
    :cond_6
    if-nez v6, :cond_7

    if-nez v7, :cond_7

    .line 388
    const v6, 0x7fffffff

    .line 389
    const v7, 0x7fffffff

    .line 391
    :cond_7
    const/16 v4, 0x8

    aget-object v4, v21, v4

    if-eqz v4, :cond_8

    .line 392
    const/16 v4, 0x8

    aget-object v4, v21, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 394
    :cond_8
    const/16 v4, 0x9

    aget-object v4, v21, v4

    if-eqz v4, :cond_9

    .line 395
    const/16 v4, 0x9

    aget-object v4, v21, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 403
    :cond_9
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->lastIdleCellLocation:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual/range {v4 .. v9}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V

    .line 407
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual/range {v4 .. v9}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V

    .line 409
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyLocationChanged()V

    .line 414
    .end local v5    # "baseStationId":I
    .end local v6    # "baseStationLatitude":I
    .end local v7    # "baseStationLongitude":I
    .end local v8    # "systemId":I
    .end local v9    # "networkId":I
    .end local v21    # "states":[Ljava/lang/String;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->disableSingleLocationUpdate()V

    goto/16 :goto_0

    .line 397
    .restart local v5    # "baseStationId":I
    .restart local v6    # "baseStationLatitude":I
    .restart local v7    # "baseStationLongitude":I
    .restart local v8    # "systemId":I
    .restart local v9    # "networkId":I
    .restart local v21    # "states":[Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 398
    .local v12, "ex":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "error parsing cell location data: "

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 420
    .end local v5    # "baseStationId":I
    .end local v6    # "baseStationLatitude":I
    .end local v7    # "baseStationLongitude":I
    .end local v8    # "systemId":I
    .end local v9    # "networkId":I
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v12    # "ex":Ljava/lang/NumberFormatException;
    .end local v21    # "states":[Ljava/lang/String;
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 421
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 425
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 427
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 428
    iget-object v4, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    move-object v11, v4

    check-cast v11, [Ljava/lang/String;

    .line 429
    .local v11, "cdmaSubscription":[Ljava/lang/String;
    if-eqz v11, :cond_f

    array-length v4, v11

    const/16 v22, 0x5

    move/from16 v0, v22

    if-lt v4, v0, :cond_f

    .line 430
    const/4 v4, 0x0

    aget-object v4, v11, v4

    if-eqz v4, :cond_b

    .line 431
    const/4 v4, 0x0

    aget-object v4, v11, v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMdn:Ljava/lang/String;

    .line 433
    :cond_b
    const/4 v4, 0x1

    aget-object v4, v11, v4

    const/16 v22, 0x2

    aget-object v22, v11, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->parseSidNid(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const/4 v4, 0x3

    aget-object v4, v11, v4

    if-eqz v4, :cond_c

    .line 436
    const/4 v4, 0x3

    aget-object v4, v11, v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    .line 438
    :cond_c
    const/4 v4, 0x4

    aget-object v4, v11, v4

    if-eqz v4, :cond_d

    .line 439
    const/4 v4, 0x4

    aget-object v4, v11, v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    .line 441
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "GET_CDMA_SUBSCRIPTION: MDN="

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMdn:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 443
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    .line 445
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateOtaspState()V

    .line 446
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-nez v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v4, :cond_e

    .line 448
    const-string v4, "GET_CDMA_SUBSCRIPTION set imsi in mIccRecords"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getImsi()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->setImsi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 453
    :cond_e
    const-string v4, "GET_CDMA_SUBSCRIPTION either mIccRecords is null  or NV type device - not setting Imsi in mIccRecords"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 459
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "GET_CDMA_SUBSCRIPTION: error parsing cdmaSubscription params num="

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v0, v11

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 469
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "cdmaSubscription":[Ljava/lang/String;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v22, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 473
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 475
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    const/16 v22, 0x0

    aget-object v15, v4, v22

    check-cast v15, Ljava/lang/String;

    .line 476
    .local v15, "nitzString":Ljava/lang/String;
    iget-object v4, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    const/16 v22, 0x1

    aget-object v4, v4, v22

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 478
    .local v16, "nitzReceiveTime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v15, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setTimeFromNITZString(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 484
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v15    # "nitzString":Ljava/lang/String;
    .end local v16    # "nitzReceiveTime":J
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 488
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDontPollSignalStrength:Z

    .line 490
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z

    goto/16 :goto_0

    .line 494
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :pswitch_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "EVENT_RUIM_RECORDS_LOADED: what="

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 495
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updatePhoneObject()V

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/internal/telephony/uicc/RuimRecords;

    .line 497
    .local v19, "ruim":Lcom/android/internal/telephony/uicc/RuimRecords;
    if-eqz v19, :cond_10

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/uicc/RuimRecords;->isProvisioned()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 498
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdn()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMdn:Ljava/lang/String;

    .line 499
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMin()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    .line 500
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/uicc/RuimRecords;->getSid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/uicc/RuimRecords;->getNid()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->parseSidNid(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/uicc/RuimRecords;->getPrlVersion()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    .line 502
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    .line 503
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateOtaspState()V

    .line 508
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getSubscriptionInfoAndStartPollingThreads()V

    goto/16 :goto_0

    .line 512
    .end local v19    # "ruim":Lcom/android/internal/telephony/uicc/RuimRecords;
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 514
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 515
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v22, 0x1f

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 521
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :pswitch_f
    const-string v4, "[CdmaServiceStateTracker] ERI file has been loaded, repolling."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 522
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    goto/16 :goto_0

    .line 526
    :pswitch_10
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 527
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 528
    iget-object v4, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object v13, v4

    check-cast v13, [I

    .line 529
    .local v13, "ints":[I
    const/4 v4, 0x0

    aget v18, v13, v4

    .line 530
    .local v18, "otaStatus":I
    const/16 v4, 0x8

    move/from16 v0, v18

    if-eq v0, v4, :cond_11

    const/16 v4, 0xa

    move/from16 v0, v18

    if-ne v0, v4, :cond_0

    .line 532
    :cond_11
    const-string v4, "EVENT_OTA_PROVISION_STATUS_CHANGE: Complete, Reload MDN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 533
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v22, 0x22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 539
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "ints":[I
    .end local v18    # "otaStatus":I
    :pswitch_11
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 540
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 541
    iget-object v4, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object v13, v4

    check-cast v13, [I

    .line 542
    .restart local v13    # "ints":[I
    const/4 v4, 0x0

    aget v4, v13, v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    goto/16 :goto_0

    .line 547
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "ints":[I
    :pswitch_12
    const-string v4, "EVENT_CHANGE_IMS_STATE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 548
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setPowerStateToDesired()V

    goto/16 :goto_0

    .line 552
    :pswitch_13
    const-string v4, "EVENT_POLL_STATE_NETWORK_SELECTION_MODE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 553
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 554
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_12

    iget-object v4, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_12

    .line 555
    iget-object v4, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object v13, v4

    check-cast v13, [I

    .line 556
    .restart local v13    # "ints":[I
    const/4 v4, 0x0

    aget v4, v13, v4

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v4, v0, :cond_0

    .line 557
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 560
    .end local v13    # "ints":[I
    :cond_12
    const-string v4, "Unable to getNetworkSelectionMode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 299
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_8
        :pswitch_2
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_3
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_1
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12
    .end packed-switch
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 10
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 856
    iget-object v5, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    if-eq v5, v6, :cond_1

    .line 959
    :cond_0
    :goto_0
    return-void

    .line 858
    :cond_1
    iget-object v5, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_9

    .line 859
    const/4 v0, 0x0

    .line 861
    .local v0, "err":Lcom/android/internal/telephony/CommandException$Error;
    iget-object v5, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v5, v5, Lcom/android/internal/telephony/CommandException;

    if-eqz v5, :cond_2

    .line 862
    iget-object v5, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v5, Lcom/android/internal/telephony/CommandException;

    check-cast v5, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 865
    :cond_2
    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v5, :cond_3

    .line 867
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cancelPollState()V

    goto :goto_0

    .line 872
    :cond_3
    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v0, v5, :cond_4

    .line 873
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handlePollStateResult: RIL returned an error where it must succeed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 883
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    aget v6, v5, v7

    add-int/lit8 v6, v6, -0x1

    aput v6, v5, v7

    .line 885
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    aget v5, v5, v7

    if-nez v5, :cond_0

    .line 886
    const/4 v3, 0x0

    .line 887
    .local v3, "namMatch":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isSidsAllZeros()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isHomeSid(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 888
    const/4 v3, 0x1

    .line 896
    :cond_5
    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-eqz v5, :cond_a

    .line 897
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 903
    :goto_2
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setCdmaDefaultRoamingIndicator(I)V

    .line 904
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    .line 905
    const/4 v2, 0x1

    .line 906
    .local v2, "isPrlLoaded":Z
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 907
    const/4 v2, 0x0

    .line 909
    :cond_6
    if-eqz v2, :cond_7

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v5

    if-nez v5, :cond_b

    .line 911
    :cond_7
    const-string v5, "Turn off roaming indicator if !isPrlLoaded or voice RAT is unknown"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 912
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5, v8}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    .line 940
    :cond_8
    :goto_3
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v4

    .line 941
    .local v4, "roamingIndicator":I
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v6, v4, v7}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriIconIndex(II)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    .line 943
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v6, v4, v7}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriIconMode(II)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setCdmaEriIconMode(I)V

    .line 950
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set CDMA Roaming Indicator to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". mCdmaRoaming = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isPrlLoaded = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". namMatch = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , mIsInPrl = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRoamingIndicator = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mDefaultRoamingIndicator= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 956
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollStateDone()V

    goto/16 :goto_0

    .line 877
    .end local v2    # "isPrlLoaded":Z
    .end local v3    # "namMatch":Z
    .end local v4    # "roamingIndicator":I
    :cond_9
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 878
    :catch_0
    move-exception v1

    .line 879
    .local v1, "ex":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handlePollStateResult: Exception while polling service state. Probably malformed RIL response."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 899
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v3    # "namMatch":Z
    :cond_a
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    goto/16 :goto_2

    .line 913
    .restart local v2    # "isPrlLoaded":Z
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isSidsAllZeros()Z

    move-result v5

    if-nez v5, :cond_8

    .line 914
    if-nez v3, :cond_c

    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    if-nez v5, :cond_c

    .line 916
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto/16 :goto_3

    .line 917
    :cond_c
    if-eqz v3, :cond_e

    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    if-nez v5, :cond_e

    .line 919
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v5

    const/16 v6, 0xe

    if-ne v5, v6, :cond_d

    .line 921
    const-string v5, "Turn off roaming indicator as voice is LTE"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 922
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5, v8}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto/16 :goto_3

    .line 924
    :cond_d
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5, v9}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto/16 :goto_3

    .line 926
    :cond_e
    if-nez v3, :cond_f

    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    if-eqz v5, :cond_f

    .line 928
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto/16 :goto_3

    .line 931
    :cond_f
    iget v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    if-gt v5, v9, :cond_10

    .line 932
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5, v8}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto/16 :goto_3

    .line 935
    :cond_10
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v5, v6}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto/16 :goto_3
.end method

.method protected handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    .locals 26
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 666
    sparse-switch p1, :sswitch_data_0

    .line 844
    const-string v3, "handlePollStateResultMessage: RIL response handle in wrong phone! Expected CDMA RIL request and get GSM RIL request."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 848
    :cond_0
    :goto_0
    return-void

    .line 668
    :sswitch_0
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v21, v3

    check-cast v21, [Ljava/lang/String;

    .line 670
    .local v21, "states":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "handlePollStateResultMessage: EVENT_POLL_STATE_GPRS states.length="

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v23, " states="

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 674
    const/16 v18, 0x4

    .line 675
    .local v18, "regState":I
    const/4 v11, 0x0

    .line 677
    .local v11, "dataRadioTechnology":I
    move-object/from16 v0, v21

    array-length v3, v0

    if-lez v3, :cond_1

    .line 679
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 682
    move-object/from16 v0, v21

    array-length v3, v0

    const/16 v23, 0x4

    move/from16 v0, v23

    if-lt v3, v0, :cond_1

    const/4 v3, 0x3

    aget-object v3, v21, v3

    if-eqz v3, :cond_1

    .line 683
    const/4 v3, 0x3

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 691
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->regCodeToServiceState(I)I

    move-result v12

    .line 692
    .local v12, "dataRegState":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v12}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 693
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v11}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    .line 695
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "handlPollStateResultMessage: cdma setDataRegState="

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v23, " regState="

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v23, " dataRadioTechnology="

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 685
    .end local v12    # "dataRegState":I
    :catch_0
    move-exception v14

    .line 686
    .local v14, "ex":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "handlePollStateResultMessage: error parsing GprsRegistrationState: "

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 702
    .end local v11    # "dataRadioTechnology":I
    .end local v14    # "ex":Ljava/lang/NumberFormatException;
    .end local v18    # "regState":I
    .end local v21    # "states":[Ljava/lang/String;
    :sswitch_1
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v21, v3

    check-cast v21, [Ljava/lang/String;

    .line 704
    .restart local v21    # "states":[Ljava/lang/String;
    const/16 v19, 0x4

    .line 705
    .local v19, "registrationState":I
    const/16 v16, -0x1

    .line 706
    .local v16, "radioTechnology":I
    const/4 v4, -0x1

    .line 708
    .local v4, "baseStationId":I
    const v5, 0x7fffffff

    .line 710
    .local v5, "baseStationLatitude":I
    const v6, 0x7fffffff

    .line 711
    .local v6, "baseStationLongitude":I
    const/4 v10, 0x0

    .line 712
    .local v10, "cssIndicator":I
    const/4 v7, 0x0

    .line 713
    .local v7, "systemId":I
    const/4 v8, 0x0

    .line 714
    .local v8, "networkId":I
    const/16 v20, 0x1

    .line 715
    .local v20, "roamingIndicator":I
    const/16 v22, 0x0

    .line 716
    .local v22, "systemIsInPrl":I
    const/4 v13, 0x1

    .line 717
    .local v13, "defaultRoamingIndicator":I
    const/16 v17, 0x0

    .line 719
    .local v17, "reasonForDenial":I
    move-object/from16 v0, v21

    array-length v3, v0

    const/16 v23, 0xe

    move/from16 v0, v23

    if-lt v3, v0, :cond_10

    .line 721
    const/4 v3, 0x0

    :try_start_1
    aget-object v3, v21, v3

    if-eqz v3, :cond_2

    .line 722
    const/4 v3, 0x0

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 724
    :cond_2
    const/4 v3, 0x3

    aget-object v3, v21, v3

    if-eqz v3, :cond_3

    .line 725
    const/4 v3, 0x3

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 727
    :cond_3
    const/4 v3, 0x4

    aget-object v3, v21, v3

    if-eqz v3, :cond_4

    .line 728
    const/4 v3, 0x4

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 730
    :cond_4
    const/4 v3, 0x5

    aget-object v3, v21, v3

    if-eqz v3, :cond_5

    .line 731
    const/4 v3, 0x5

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 733
    :cond_5
    const/4 v3, 0x6

    aget-object v3, v21, v3

    if-eqz v3, :cond_6

    .line 734
    const/4 v3, 0x6

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 737
    :cond_6
    if-nez v5, :cond_7

    if-nez v6, :cond_7

    .line 738
    const v5, 0x7fffffff

    .line 739
    const v6, 0x7fffffff

    .line 741
    :cond_7
    const/4 v3, 0x7

    aget-object v3, v21, v3

    if-eqz v3, :cond_8

    .line 742
    const/4 v3, 0x7

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 744
    :cond_8
    const/16 v3, 0x8

    aget-object v3, v21, v3

    if-eqz v3, :cond_9

    .line 745
    const/16 v3, 0x8

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 747
    :cond_9
    const/16 v3, 0x9

    aget-object v3, v21, v3

    if-eqz v3, :cond_a

    .line 748
    const/16 v3, 0x9

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 750
    :cond_a
    const/16 v3, 0xa

    aget-object v3, v21, v3

    if-eqz v3, :cond_b

    .line 751
    const/16 v3, 0xa

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 753
    :cond_b
    const/16 v3, 0xb

    aget-object v3, v21, v3

    if-eqz v3, :cond_c

    .line 754
    const/16 v3, 0xb

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 756
    :cond_c
    const/16 v3, 0xc

    aget-object v3, v21, v3

    if-eqz v3, :cond_d

    .line 757
    const/16 v3, 0xc

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 759
    :cond_d
    const/16 v3, 0xd

    aget-object v3, v21, v3

    if-eqz v3, :cond_e

    .line 760
    const/16 v3, 0xd

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v17

    .line 771
    :cond_e
    :goto_2
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationState:I

    .line 775
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    .line 776
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->regCodeToServiceState(I)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/telephony/ServiceState;->setState(I)V

    .line 777
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/telephony/ServiceState;->setRilVoiceRadioTechnology(I)V

    .line 778
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v10}, Landroid/telephony/ServiceState;->setCssIndicator(I)V

    .line 779
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v7, v8}, Landroid/telephony/ServiceState;->setSystemAndNetworkId(II)V

    .line 780
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    .line 781
    if-nez v22, :cond_11

    const/4 v3, 0x0

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    .line 782
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    .line 785
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->regCodeToServiceState(I)I

    move-result v3

    if-nez v3, :cond_f

    .line 786
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->lastIdleCellLocation:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual/range {v3 .. v8}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V

    .line 792
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual/range {v3 .. v8}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V

    .line 795
    if-nez v17, :cond_12

    .line 796
    const-string v3, "General"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    .line 803
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationState:I

    const/16 v23, 0x3

    move/from16 v0, v23

    if-ne v3, v0, :cond_0

    .line 804
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Registration denied, "

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 762
    :catch_1
    move-exception v14

    .line 763
    .restart local v14    # "ex":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "EVENT_POLL_STATE_REGISTRATION_CDMA: error parsing: "

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 766
    .end local v14    # "ex":Ljava/lang/NumberFormatException;
    :cond_10
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Warning! Wrong number of parameters returned from RIL_REQUEST_REGISTRATION_STATE: expected 14 or more strings and got "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " strings"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 781
    :cond_11
    const/4 v3, 0x1

    goto/16 :goto_3

    .line 797
    :cond_12
    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_13

    .line 798
    const-string v3, "Authentication Failure"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    goto :goto_4

    .line 800
    :cond_13
    const-string v3, ""

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    goto/16 :goto_4

    .line 809
    .end local v4    # "baseStationId":I
    .end local v5    # "baseStationLatitude":I
    .end local v6    # "baseStationLongitude":I
    .end local v7    # "systemId":I
    .end local v8    # "networkId":I
    .end local v10    # "cssIndicator":I
    .end local v13    # "defaultRoamingIndicator":I
    .end local v16    # "radioTechnology":I
    .end local v17    # "reasonForDenial":I
    .end local v19    # "registrationState":I
    .end local v20    # "roamingIndicator":I
    .end local v21    # "states":[Ljava/lang/String;
    .end local v22    # "systemIsInPrl":I
    :sswitch_2
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object v15, v3

    check-cast v15, [Ljava/lang/String;

    .line 811
    .local v15, "opNames":[Ljava/lang/String;
    if-eqz v15, :cond_19

    array-length v3, v15

    const/16 v23, 0x3

    move/from16 v0, v23

    if-lt v3, v0, :cond_19

    .line 814
    const/4 v3, 0x2

    aget-object v3, v15, v3

    if-eqz v3, :cond_14

    const/4 v3, 0x2

    aget-object v3, v15, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v23, 0x5

    move/from16 v0, v23

    if-lt v3, v0, :cond_14

    const-string v3, "00000"

    const/16 v23, 0x2

    aget-object v23, v15, v23

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 816
    :cond_14
    const/4 v3, 0x2

    const-string v23, "ro.cdma.home.operator.numeric"

    const-string v24, "00000"

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v15, v3

    .line 819
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "RIL_REQUEST_OPERATOR.response[2], the numeric,  is bad. Using SystemProperties \'ro.cdma.home.operator.numeric\'= "

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v23, 0x2

    aget-object v23, v15, v23

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 826
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-nez v3, :cond_16

    .line 828
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/16 v23, 0x0

    aget-object v23, v15, v23

    const/16 v24, 0x1

    aget-object v24, v15, v24

    const/16 v25, 0x2

    aget-object v25, v15, v25

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v3, v0, v1, v2}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 830
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getPhoneId()I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v3

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getPhoneId()I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v9

    .line 832
    .local v9, "brandOverride":Ljava/lang/String;
    :goto_5
    if-eqz v9, :cond_18

    .line 833
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/16 v23, 0x2

    aget-object v23, v15, v23

    move-object/from16 v0, v23

    invoke-virtual {v3, v9, v9, v0}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 830
    .end local v9    # "brandOverride":Ljava/lang/String;
    :cond_17
    const/4 v9, 0x0

    goto :goto_5

    .line 835
    .restart local v9    # "brandOverride":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/16 v23, 0x0

    aget-object v23, v15, v23

    const/16 v24, 0x1

    aget-object v24, v15, v24

    const/16 v25, 0x2

    aget-object v25, v15, v25

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v3, v0, v1, v2}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 839
    .end local v9    # "brandOverride":Ljava/lang/String;
    :cond_19
    const-string v3, "EVENT_POLL_STATE_OPERATOR_CDMA: error parsing opNames"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 666
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x18 -> :sswitch_1
        0x19 -> :sswitch_2
    .end sparse-switch
.end method

.method protected hangupAndPowerOff()V
    .locals 3

    .prologue
    .line 1930
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->hangupIfAlive()V

    .line 1931
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->hangupIfAlive()V

    .line 1932
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->hangupIfAlive()V

    .line 1933
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 1934
    return-void
.end method

.method public isConcurrentVoiceAndDataAllowed()Z
    .locals 1

    .prologue
    .line 1862
    const/4 v0, 0x0

    return v0
.end method

.method protected isInvalidOperatorNumeric(Ljava/lang/String;)Z
    .locals 2
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    .line 1339
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const-string v0, "000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMinInfoReady()Z
    .locals 1

    .prologue
    .line 1899
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    return v0
.end method

.method protected isSidsAllZeros()Z
    .locals 2

    .prologue
    .line 1829
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    if-eqz v1, :cond_1

    .line 1830
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1831
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    aget v1, v1, v0

    if-eqz v1, :cond_0

    .line 1832
    const/4 v1, 0x0

    .line 1836
    .end local v0    # "i":I
    :goto_1
    return v1

    .line 1830
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1836
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2034
    const-string v0, "CdmaSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2039
    const-string v0, "CdmaSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    return-void
.end method

.method protected onUpdateIccAvailability()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2010
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v1, :cond_1

    .line 2030
    :cond_0
    :goto_0
    return-void

    .line 2014
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 2016
    .local v0, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq v1, v0, :cond_0

    .line 2017
    const-string v1, "Removing stale icc objects."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2018
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForRuimEvents()V

    .line 2019
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2020
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 2021
    if-eqz v0, :cond_0

    .line 2022
    const-string v1, "New card found"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2023
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 2024
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2025
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-eqz v1, :cond_0

    .line 2026
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForRuimEvents()V

    goto :goto_0
.end method

.method protected parseSidNid(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "sidStr"    # Ljava/lang/String;
    .param p2, "nidStr"    # Ljava/lang/String;

    .prologue
    .line 1937
    if-eqz p1, :cond_0

    .line 1938
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1939
    .local v3, "sid":[Ljava/lang/String;
    array-length v4, v3

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    .line 1940
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 1942
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1940
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1943
    :catch_0
    move-exception v0

    .line 1944
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error parsing system id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 1948
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v1    # "i":I
    .end local v3    # "sid":[Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CDMA_SUBSCRIPTION: SID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1950
    if-eqz p2, :cond_1

    .line 1951
    const-string v4, ","

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1952
    .local v2, "nid":[Ljava/lang/String;
    array-length v4, v2

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeNetworkId:[I

    .line 1953
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 1955
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeNetworkId:[I

    aget-object v5, v2, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1953
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1956
    :catch_1
    move-exception v0

    .line 1957
    .restart local v0    # "ex":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CDMA_SUBSCRIPTION: error parsing network id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_3

    .line 1961
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v1    # "i":I
    .end local v2    # "nid":[Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CDMA_SUBSCRIPTION: NID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1962
    return-void
.end method

.method public pollState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 975
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    .line 976
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    aput v3, v0, v3

    .line 978
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1018
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 1020
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x19

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    .line 1023
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 1025
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    .line 1028
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 1030
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDataRegistrationState(Landroid/os/Message;)V

    .line 1034
    :goto_0
    return-void

    .line 980
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 981
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->setStateInvalid()V

    .line 982
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 983
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    .line 985
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollStateDone()V

    goto :goto_0

    .line 989
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 990
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->setStateInvalid()V

    .line 991
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 992
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    .line 994
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isIwlanFeatureAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x12

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 997
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollStateDone()V

    .line 1008
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isIwlanFeatureAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 978
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected pollStateDone()V
    .locals 34

    .prologue
    .line 1097
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "pollStateDone: cdma oldSS=["

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "] newSS=["

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "]"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isMccMncMarkedAsNonRoaming(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isSidMarkedAsNonRoaming(I)Z

    move-result v29

    if-eqz v29, :cond_16

    .line 1101
    :cond_0
    const-string v29, "pollStateDone: override - marked as non-roaming."

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    .line 1112
    :cond_1
    :goto_0
    sget-boolean v29, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v29, :cond_2

    const-string v29, "telephony.test.forceRoaming"

    const/16 v30, 0x0

    invoke-static/range {v29 .. v30}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    if-eqz v29, :cond_2

    .line 1113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 1116
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->useDataRegStateForDataOnlyDevices()V

    .line 1118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v29

    if-eqz v29, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v29

    if-nez v29, :cond_18

    const/16 v16, 0x1

    .line 1122
    .local v16, "hasRegistered":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v29

    if-nez v29, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v29

    if-eqz v29, :cond_19

    const/4 v14, 0x1

    .line 1126
    .local v14, "hasDeregistered":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v29

    if-eqz v29, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v29

    if-nez v29, :cond_1a

    const/4 v10, 0x1

    .line 1130
    .local v10, "hasCdmaDataConnectionAttached":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v29

    if-nez v29, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v29

    if-eqz v29, :cond_1b

    const/4 v12, 0x1

    .line 1134
    .local v12, "hasCdmaDataConnectionDetached":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_1c

    const/4 v11, 0x1

    .line 1137
    .local v11, "hasCdmaDataConnectionChanged":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_1d

    const/16 v18, 0x1

    .line 1140
    .local v18, "hasRilVoiceRadioTechnologyChanged":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_1e

    const/16 v17, 0x1

    .line 1143
    .local v17, "hasRilDataRadioTechnologyChanged":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_1f

    const/4 v13, 0x1

    .line 1145
    .local v13, "hasChanged":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v29

    if-nez v29, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v29

    if-eqz v29, :cond_20

    const/16 v20, 0x1

    .line 1147
    .local v20, "hasRoamingOn":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v29

    if-eqz v29, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v29

    if-nez v29, :cond_21

    const/16 v19, 0x1

    .line 1149
    .local v19, "hasRoamingOff":Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/telephony/cdma/CdmaCellLocation;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_22

    const/4 v15, 0x1

    .line 1151
    .local v15, "hasLocationChanged":Z
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->resetServiceStateInIwlanMode()V

    .line 1154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_4

    .line 1156
    :cond_3
    const v29, 0xc3c4

    const/16 v30, 0x4

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1162
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_23

    const/16 v21, 0x1

    .line 1163
    .local v21, "hasVoiceRegStateChanged":Z
    :goto_c
    if-eqz v21, :cond_6

    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "airplane_mode_on"

    const/16 v31, 0x0

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 1167
    .local v6, "airplaneMode":I
    if-eqz v6, :cond_24

    const/4 v7, 0x1

    .line 1168
    .local v7, "airplaneModeOn":Z
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v29

    if-nez v29, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v29

    if-eqz v29, :cond_5

    if-nez v7, :cond_5

    .line 1171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOutOfServiceTime:J

    .line 1172
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Avatar data collect, Out of service, lastIdleCellLocation = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->lastIdleCellLocation:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/cdma/CdmaCellLocation;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1176
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v29

    if-nez v29, :cond_6

    .line 1177
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOutOfServiceTime:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmp-long v29, v30, v32

    if-lez v29, :cond_6

    .line 1178
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Avatar data collect, last in service cell location = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->lastIdleCellLocation:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/cdma/CdmaCellLocation;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1180
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Avatar data collect, lost service time =  "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOutOfServiceTime:J

    move-wide/from16 v32, v0

    sub-long v30, v30, v32

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1183
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "1-"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->lastIdleCellLocation:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "-"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->lastIdleCellLocation:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "-"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->lastIdleCellLocation:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->CollectLostServiceInfo(Ljava/lang/String;)V

    .line 1186
    const-wide/16 v30, 0x0

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOutOfServiceTime:J

    .line 1191
    .end local v6    # "airplaneMode":I
    .end local v7    # "airplaneModeOn":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v29

    if-nez v29, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_7

    .line 1193
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->collectRoamingState()V

    .line 1198
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v28, v0

    .line 1199
    .local v28, "tss":Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1200
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v27, v0

    .line 1205
    .local v27, "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    .line 1206
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    .line 1208
    if-eqz v18, :cond_8

    .line 1209
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updatePhoneObject()V

    .line 1212
    :cond_8
    if-eqz v17, :cond_9

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v29, v0

    const-string v30, "gsm.network.type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v31

    invoke-static/range {v31 .. v31}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isIwlanFeatureAvailable()Z

    move-result v29

    if-eqz v29, :cond_9

    const/16 v29, 0x12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_9

    .line 1219
    const-string v29, "pollStateDone: IWLAN enabled"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1223
    :cond_9
    if-eqz v16, :cond_a

    .line 1224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1227
    :cond_a
    if-eqz v13, :cond_e

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v29

    if-eqz v29, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    move/from16 v29, v0

    if-nez v29, :cond_b

    .line 1231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v29

    if-nez v29, :cond_25

    .line 1232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v8

    .line 1239
    .local v8, "eriText":Ljava/lang/String;
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 1244
    .end local v8    # "eriText":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v29, v0

    const-string v30, "gsm.operator.alpha"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    const-string v29, "gsm.operator.numeric"

    const-string v30, ""

    invoke-static/range {v29 .. v30}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1249
    .local v25, "prevOperatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v24

    .line 1252
    .local v24, "operatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_c

    .line 1253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v26

    .line 1254
    .local v26, "sid":I
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->fixUnknownMcc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    .line 1257
    .end local v26    # "sid":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v29, v0

    const-string v30, "gsm.operator.numeric"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateCarrierMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1261
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_26

    .line 1262
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "operatorNumeric "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "is invalid"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v29, v0

    const-string v30, "gsm.operator.iso-country"

    const-string v31, ""

    invoke-virtual/range {v29 .. v31}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    .line 1289
    :cond_d
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v30, v0

    const-string v31, "gsm.operator.isroaming"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v29

    if-eqz v29, :cond_27

    const-string v29, "true"

    :goto_10
    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateSpnDisplay()V

    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 1301
    .end local v24    # "operatorNumeric":Ljava/lang/String;
    .end local v25    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_e
    if-eqz v12, :cond_f

    .line 1302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1305
    :cond_f
    if-nez v11, :cond_10

    if-eqz v17, :cond_11

    .line 1306
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    .line 1307
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isIwlanFeatureAvailable()Z

    move-result v29

    if-eqz v29, :cond_28

    const/16 v29, 0x12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_28

    .line 1310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v29, v0

    const-string v30, "iwlanAvailable"

    invoke-virtual/range {v29 .. v30}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDataConnection(Ljava/lang/String;)V

    .line 1311
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIwlanRatAvailable:Z

    .line 1320
    :cond_11
    :goto_11
    if-eqz v10, :cond_12

    .line 1321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1324
    :cond_12
    if-eqz v20, :cond_13

    .line 1325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1328
    :cond_13
    if-eqz v19, :cond_14

    .line 1329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1332
    :cond_14
    if-eqz v15, :cond_15

    .line 1333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyLocationChanged()V

    .line 1336
    :cond_15
    return-void

    .line 1104
    .end local v10    # "hasCdmaDataConnectionAttached":Z
    .end local v11    # "hasCdmaDataConnectionChanged":Z
    .end local v12    # "hasCdmaDataConnectionDetached":Z
    .end local v13    # "hasChanged":Z
    .end local v14    # "hasDeregistered":Z
    .end local v15    # "hasLocationChanged":Z
    .end local v16    # "hasRegistered":Z
    .end local v17    # "hasRilDataRadioTechnologyChanged":Z
    .end local v18    # "hasRilVoiceRadioTechnologyChanged":Z
    .end local v19    # "hasRoamingOff":Z
    .end local v20    # "hasRoamingOn":Z
    .end local v21    # "hasVoiceRegStateChanged":Z
    .end local v27    # "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v28    # "tss":Landroid/telephony/ServiceState;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isMccMncMarkedAsRoaming(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isSidMarkedAsRoaming(I)Z

    move-result v29

    if-eqz v29, :cond_1

    .line 1106
    :cond_17
    const-string v29, "pollStateDone: override - marked as roaming."

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 1108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Landroid/telephony/ServiceState;->setCdmaEriIconMode(I)V

    goto/16 :goto_0

    .line 1118
    :cond_18
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 1122
    .restart local v16    # "hasRegistered":Z
    :cond_19
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 1126
    .restart local v14    # "hasDeregistered":Z
    :cond_1a
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 1130
    .restart local v10    # "hasCdmaDataConnectionAttached":Z
    :cond_1b
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 1134
    .restart local v12    # "hasCdmaDataConnectionDetached":Z
    :cond_1c
    const/4 v11, 0x0

    goto/16 :goto_5

    .line 1137
    .restart local v11    # "hasCdmaDataConnectionChanged":Z
    :cond_1d
    const/16 v18, 0x0

    goto/16 :goto_6

    .line 1140
    .restart local v18    # "hasRilVoiceRadioTechnologyChanged":Z
    :cond_1e
    const/16 v17, 0x0

    goto/16 :goto_7

    .line 1143
    .restart local v17    # "hasRilDataRadioTechnologyChanged":Z
    :cond_1f
    const/4 v13, 0x0

    goto/16 :goto_8

    .line 1145
    .restart local v13    # "hasChanged":Z
    :cond_20
    const/16 v20, 0x0

    goto/16 :goto_9

    .line 1147
    .restart local v20    # "hasRoamingOn":Z
    :cond_21
    const/16 v19, 0x0

    goto/16 :goto_a

    .line 1149
    .restart local v19    # "hasRoamingOff":Z
    :cond_22
    const/4 v15, 0x0

    goto/16 :goto_b

    .line 1162
    .restart local v15    # "hasLocationChanged":Z
    :cond_23
    const/16 v21, 0x0

    goto/16 :goto_c

    .line 1167
    .restart local v6    # "airplaneMode":I
    .restart local v21    # "hasVoiceRegStateChanged":Z
    :cond_24
    const/4 v7, 0x0

    goto/16 :goto_d

    .line 1236
    .end local v6    # "airplaneMode":I
    .restart local v27    # "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    .restart local v28    # "tss":Landroid/telephony/ServiceState;
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v29

    const v30, 0x10400ed

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "eriText":Ljava/lang/String;
    goto/16 :goto_e

    .line 1266
    .end local v8    # "eriText":Ljava/lang/String;
    .restart local v24    # "operatorNumeric":Ljava/lang/String;
    .restart local v25    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_26
    const-string v22, ""

    .line 1267
    .local v22, "isoCountryCode":Ljava/lang/String;
    const/16 v29, 0x0

    const/16 v30, 0x3

    move-object/from16 v0, v24

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 1269
    .local v23, "mcc":Ljava/lang/String;
    const/16 v29, 0x0

    const/16 v30, 0x3

    :try_start_0
    move-object/from16 v0, v24

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v22

    .line 1277
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v29, v0

    const-string v30, "gsm.operator.iso-country"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    .line 1281
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setOperatorIdd(Ljava/lang/String;)V

    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    move/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->shouldFixTimeZoneNow(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v29

    if-eqz v29, :cond_d

    .line 1285
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->fixTimeZone(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 1271
    :catch_0
    move-exception v9

    .line 1272
    .local v9, "ex":Ljava/lang/NumberFormatException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "pollStateDone: countryCodeForMcc error"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_12

    .line 1273
    .end local v9    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v9

    .line 1274
    .local v9, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "pollStateDone: countryCodeForMcc error"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_12

    .line 1289
    .end local v9    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    .end local v22    # "isoCountryCode":Ljava/lang/String;
    .end local v23    # "mcc":Ljava/lang/String;
    :cond_27
    const-string v29, "false"

    goto/16 :goto_10

    .line 1313
    .end local v24    # "operatorNumeric":Ljava/lang/String;
    .end local v25    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->processIwlanToWwanTransition(Landroid/telephony/ServiceState;)V

    .line 1315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDataConnection(Ljava/lang/String;)V

    .line 1316
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIwlanRatAvailable:Z

    goto/16 :goto_11
.end method

.method protected radioTechnologyToDataServiceState(I)I
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 1445
    const/4 v0, 0x1

    .line 1446
    .local v0, "retVal":I
    packed-switch p1, :pswitch_data_0

    .line 1462
    :pswitch_0
    const-string v1, "radioTechnologyToDataServiceState: Wrong radioTechnology code."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1465
    :goto_0
    :pswitch_1
    return v0

    .line 1459
    :pswitch_2
    const/4 v0, 0x0

    .line 1460
    goto :goto_0

    .line 1446
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected regCodeIsRoaming(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 1501
    const/4 v0, 0x5

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected regCodeToServiceState(I)I
    .locals 3
    .param p1, "code"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1471
    packed-switch p1, :pswitch_data_0

    .line 1484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "regCodeToServiceState: unexpected service state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1485
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 1475
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 1481
    goto :goto_0

    .line 1471
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 257
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 258
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 260
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isMinInfoReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 263
    :cond_0
    return-void
.end method

.method public setImsRegistrationState(Z)V
    .locals 4
    .param p1, "registered"    # Z

    .prologue
    .line 2085
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsRegistrationState - registered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2087
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsRegistrationOnOff:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    .line 2088
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAlarmSwitch:Z

    if-eqz v2, :cond_0

    .line 2089
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsRegistrationOnOff:Z

    .line 2091
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2092
    .local v1, "context":Landroid/content/Context;
    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2093
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2094
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAlarmSwitch:Z

    .line 2096
    const/16 v2, 0x2d

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    .line 2101
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 2100
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsRegistrationOnOff:Z

    goto :goto_0
.end method

.method protected setOperatorIdd(Ljava/lang/String;)V
    .locals 4
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    .line 1377
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHbpcdUtils:Lcom/android/internal/telephony/HbpcdUtils;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HbpcdUtils;->getIddByMcc(I)Ljava/lang/String;

    move-result-object v0

    .line 1379
    .local v0, "idd":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1380
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v2, "gsm.operator.idpstring"

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    :goto_0
    return-void

    .line 1384
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v2, "gsm.operator.idpstring"

    const-string v3, "+"

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setPowerStateToDesired()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 589
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v2, :cond_1

    .line 591
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 593
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 596
    .local v0, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    goto :goto_0

    .line 597
    .end local v0    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDeviceShuttingDown:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 598
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->requestShutdown(Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected setSignalStrengthDefaultValues()V
    .locals 2

    .prologue
    .line 962
    new-instance v0, Landroid/telephony/SignalStrength;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telephony/SignalStrength;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 963
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 267
    return-void
.end method

.method protected updateOtaspState()V
    .locals 4

    .prologue
    .line 1965
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getOtasp()I

    move-result v1

    .line 1966
    .local v1, "otaspMode":I
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    .line 1967
    .local v0, "oldOtaspMode":I
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    .line 1970
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    if-eqz v2, :cond_0

    .line 1971
    const-string v2, "CDMA_SUBSCRIPTION: call notifyRegistrants()"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1972
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1974
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    if-eq v0, v2, :cond_1

    .line 1976
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CDMA_SUBSCRIPTION: call notifyOtaspChanged old otaspMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " new otaspMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1979
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyOtaspChanged(I)V

    .line 1981
    :cond_1
    return-void
.end method

.method protected updateSpnDisplay()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 605
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    .line 607
    .local v2, "plmn":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCombinedRegState()I

    move-result v0

    .line 608
    .local v0, "combinedRegState":I
    if-ne v0, v4, :cond_0

    .line 609
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10403aa

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 611
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateSpnDisplay: radio is on but out of service, set plmn=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 615
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 620
    if-eqz v2, :cond_2

    move v3, v4

    .line 622
    .local v3, "showPlmn":Z
    :goto_0
    const-string v6, "updateSpnDisplay: changed sending intent showPlmn=\'%b\' plmn=\'%s\'"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v5

    aput-object v2, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 625
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 626
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x20000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 627
    const-string v4, "showSpn"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 628
    const-string v4, "spn"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    const-string v4, "showPlmn"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 630
    const-string v4, "plmn"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 631
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v4

    invoke-static {v1, v4}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 632
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 635
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "showPlmn":Z
    :cond_1
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    .line 636
    return-void

    :cond_2
    move v3, v5

    .line 620
    goto :goto_0
.end method
