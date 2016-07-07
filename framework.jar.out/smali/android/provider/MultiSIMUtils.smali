.class public Landroid/provider/MultiSIMUtils;
.super Ljava/lang/Object;
.source "MultiSIMUtils.java"


# static fields
.field private static final AES_KEY_LENGTH:I = 0x10

.field private static final DEFAULT_MEID:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "MultiSIMUtils"

.field private static mContext:Landroid/content/Context;

.field private static sInstance:Landroid/provider/MultiSIMUtils;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Landroid/provider/MultiSIMUtils;->mContext:Landroid/content/Context;

    .line 21
    const-string v0, "MultiSIMUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/MultiSIMUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void
.end method

.method public static declared-synchronized getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const-class v1, Landroid/provider/MultiSIMUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/provider/MultiSIMUtils;->sInstance:Landroid/provider/MultiSIMUtils;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Landroid/provider/MultiSIMUtils;

    invoke-direct {v0, p0}, Landroid/provider/MultiSIMUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/provider/MultiSIMUtils;->sInstance:Landroid/provider/MultiSIMUtils;

    .line 28
    :cond_0
    sget-object v0, Landroid/provider/MultiSIMUtils;->sInstance:Landroid/provider/MultiSIMUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getSmscSubString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "beginIndex":I
    const/4 v2, 0x0

    .line 89
    .local v2, "endIndex":I
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 104
    .end local p1    # "string":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 91
    .restart local p1    # "string":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 92
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 93
    .local v1, "ch":C
    const/16 v5, 0x22

    if-ne v1, v5, :cond_3

    .line 94
    move v2, v3

    .line 99
    .end local v1    # "ch":C
    :cond_2
    if-eqz v2, :cond_0

    .line 103
    const/4 v5, 0x1

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .local v4, "sub":Ljava/lang/String;
    move-object p1, v4

    .line 104
    goto :goto_0

    .line 91
    .end local v4    # "sub":Ljava/lang/String;
    .restart local v1    # "ch":C
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getCellLocation(I)Landroid/telephony/CellLocation;
    .locals 1
    .param p1, "simid"    # I

    .prologue
    .line 66
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getCellLocation(I)Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 1
    .param p1, "simid"    # I

    .prologue
    .line 33
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDevicePn()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 179
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSN()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "pn_sn":Ljava/lang/String;
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v6

    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v2, v3

    .line 181
    .local v2, "strarray":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 182
    const-string v3, "\n"

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 183
    aget-object v0, v2, v6

    .line 184
    .local v0, "pn":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 186
    .end local v0    # "pn":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 184
    .restart local v0    # "pn":Ljava/lang/String;
    :cond_0
    const-string v3, ""

    goto :goto_0

    .line 186
    .end local v0    # "pn":Ljava/lang/String;
    :cond_1
    const-string v3, ""

    goto :goto_0
.end method

.method public getDeviceSn()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 167
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSN()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "pn_sn":Ljava/lang/String;
    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    const-string v3, ""

    aput-object v3, v2, v6

    .line 169
    .local v2, "strarray":[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 170
    const-string v3, "\n"

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 171
    aget-object v1, v2, v6

    .line 172
    .local v1, "sn":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 174
    .end local v1    # "sn":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 172
    .restart local v1    # "sn":Ljava/lang/String;
    :cond_0
    const-string v3, ""

    goto :goto_0

    .line 174
    .end local v1    # "sn":Ljava/lang/String;
    :cond_1
    const-string v3, ""

    goto :goto_0
.end method

.method public getIMEI(I)Ljava/lang/String;
    .locals 2
    .param p1, "slot"    # I

    .prologue
    .line 140
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 141
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMEID()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x0

    .line 144
    const/4 v1, 0x0

    .line 145
    .local v1, "meid":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 146
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    .line 147
    .local v2, "numOfPhones":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 148
    const/4 v5, 0x2

    invoke-virtual {v4, v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 149
    invoke-virtual {v4, v0}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v1

    .line 154
    :cond_0
    if-nez v1, :cond_2

    .line 155
    const-string v1, ""

    .line 163
    :goto_1
    return-object v1

    .line 147
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v8, :cond_3

    .line 157
    const-string v3, ""

    .line 158
    .local v3, "str":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x10

    invoke-virtual {v3, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    goto :goto_1

    .line 160
    .end local v3    # "str":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 1
    .param p1, "simid"    # I

    .prologue
    .line 50
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneType(I)I
    .locals 3
    .param p1, "simid"    # I

    .prologue
    .line 132
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    return v0
.end method

.method public getScAddress(I)Ljava/lang/String;
    .locals 5
    .param p1, "simid"    # I

    .prologue
    .line 71
    const/4 v2, 0x0

    .line 73
    .local v2, "ret":Ljava/lang/String;
    :try_start_0
    const-string v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 74
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 75
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ISms;->getSmscAddressFromIccForSubscriber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 80
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    invoke-direct {p0, v2}, Landroid/provider/MultiSIMUtils;->getSmscSubString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, ""

    goto :goto_0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 1
    .param p1, "simid"    # I

    .prologue
    .line 55
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 3
    .param p1, "simid"    # I

    .prologue
    .line 60
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimState(I)I
    .locals 1
    .param p1, "simid"    # I

    .prologue
    .line 121
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    return v0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 3
    .param p1, "simid"    # I

    .prologue
    .line 40
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
