.class public Lcom/android/ims/ImsConfig;
.super Ljava/lang/Object;
.source "ImsConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsConfig$WifiCallingPreference;,
        Lcom/android/ims/ImsConfig$WifiCallingValueConstants;,
        Lcom/android/ims/ImsConfig$FeatureValueConstants;,
        Lcom/android/ims/ImsConfig$OperationValuesConstants;,
        Lcom/android/ims/ImsConfig$OperationStatusConstants;,
        Lcom/android/ims/ImsConfig$ConfigConstants;,
        Lcom/android/ims/ImsConfig$FeatureConstants;
    }
.end annotation


# static fields
.field private static final MODIFY_PHONE_STATE:Ljava/lang/String; = "android.permission.MODIFY_PHONE_STATE"

.field private static final TAG:Ljava/lang/String; = "ImsConfig"


# instance fields
.field private DBG:Z

.field private mContext:Landroid/content/Context;

.field private final miConfig:Lcom/android/ims/internal/IImsConfig;


# direct methods
.method public constructor <init>(Lcom/android/ims/internal/IImsConfig;Landroid/content/Context;)V
    .locals 2
    .param p1, "iconfig"    # Lcom/android/ims/internal/IImsConfig;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    .line 291
    iget-boolean v0, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "ImsConfig"

    const-string v1, "ImsConfig creates"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_0
    iput-object p1, p0, Lcom/android/ims/ImsConfig;->miConfig:Lcom/android/ims/internal/IImsConfig;

    .line 293
    iput-object p2, p0, Lcom/android/ims/ImsConfig;->mContext:Landroid/content/Context;

    .line 294
    return-void
.end method


# virtual methods
.method public getFeatureValue(IILcom/android/ims/ImsConfigListener;)V
    .locals 4
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "listener"    # Lcom/android/ims/ImsConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 416
    iget-boolean v1, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    if-eqz v1, :cond_0

    .line 417
    const-string v1, "ImsConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFeatureValue: feature = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", network ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", listener ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsConfig;->miConfig:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/ims/internal/IImsConfig;->getFeatureValue(IILcom/android/ims/ImsConfigListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    return-void

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "getFeatureValue()"

    const/16 v3, 0x83

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public getPacketCount(Lcom/android/ims/ImsConfigListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/android/ims/ImsConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 499
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsConfig;->miConfig:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsConfig;->getPacketCount(Lcom/android/ims/ImsConfigListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    return-void

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "getPacketCount()"

    const/16 v3, 0x83

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public getPacketErrorCount(Lcom/android/ims/ImsConfigListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/android/ims/ImsConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 516
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsConfig;->miConfig:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsConfig;->getPacketErrorCount(Lcom/android/ims/ImsConfigListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    return-void

    .line 517
    :catch_0
    move-exception v0

    .line 518
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "getPacketErrorCount()"

    const/16 v3, 0x83

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public getProvisionedStringValue(I)Ljava/lang/String;
    .locals 5
    .param p1, "item"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 330
    const-string v1, "Unknown"

    .line 332
    .local v1, "ret":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsConfig;->miConfig:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsConfig;->getProvisionedStringValue(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 337
    iget-boolean v2, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "ImsConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProvisionedStringValue(): item = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ret ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    return-object v1

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "getProvisionedStringValue()"

    const/16 v4, 0x83

    invoke-direct {v2, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public getProvisionedValue(I)I
    .locals 5
    .param p1, "item"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 307
    const/4 v1, 0x0

    .line 309
    .local v1, "ret":I
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsConfig;->miConfig:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsConfig;->getProvisionedValue(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 314
    iget-boolean v2, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "ImsConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProvisionedValue(): item = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ret ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    return v1

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "getValue()"

    const/16 v4, 0x83

    invoke-direct {v2, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public getVideoQuality(Lcom/android/ims/ImsConfigListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/android/ims/ImsConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 464
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsConfig;->miConfig:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsConfig;->getVideoQuality(Lcom/android/ims/ImsConfigListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    return-void

    .line 465
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "getVideoQuality()"

    const/16 v3, 0x83

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public getVolteProvisioned()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 533
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsConfig;->miConfig:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v1}, Lcom/android/ims/internal/IImsConfig;->getVolteProvisioned()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "getVolteProvisioned()"

    const/16 v3, 0x83

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public getWifiCallingPreference(Lcom/android/ims/ImsConfigListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/android/ims/ImsConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 550
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsConfig;->miConfig:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsConfig;->getWifiCallingPreference(Lcom/android/ims/ImsConfigListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    return-void

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "getWifiCallingPreference()"

    const/16 v3, 0x83

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
    .locals 4
    .param p1, "feature"    # I
    .param p2, "network"    # I
    .param p3, "value"    # I
    .param p4, "listener"    # Lcom/android/ims/ImsConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 441
    iget-object v1, p0, Lcom/android/ims/ImsConfig;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-boolean v1, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    if-eqz v1, :cond_0

    .line 443
    const-string v1, "ImsConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFeatureValue: feature = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", network ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", listener ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsConfig;->miConfig:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/ims/internal/IImsConfig;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    return-void

    .line 448
    :catch_0
    move-exception v0

    .line 449
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "setFeatureValue()"

    const/16 v3, 0x83

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public setProvisionedStringValue(ILjava/lang/String;)I
    .locals 5
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 389
    iget-object v2, p0, Lcom/android/ims/ImsConfig;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MODIFY_PHONE_STATE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const/4 v1, -0x1

    .line 392
    .local v1, "ret":I
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsConfig;->miConfig:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v2, p1, p2}, Lcom/android/ims/internal/IImsConfig;->setProvisionedStringValue(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 397
    iget-boolean v2, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    if-eqz v2, :cond_0

    .line 398
    const-string v2, "ImsConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setProvisionedStringValue(): item = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_0
    return v1

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "setProvisionedStringValue()"

    const/16 v4, 0x83

    invoke-direct {v2, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public setProvisionedValue(II)I
    .locals 5
    .param p1, "item"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 356
    iget-object v2, p0, Lcom/android/ims/ImsConfig;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MODIFY_PHONE_STATE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const/4 v1, -0x1

    .line 358
    .local v1, "ret":I
    iget-boolean v2, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    if-eqz v2, :cond_0

    .line 359
    const-string v2, "ImsConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setProvisionedValue(): item = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsConfig;->miConfig:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v2, p1, p2}, Lcom/android/ims/internal/IImsConfig;->setProvisionedValue(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 368
    iget-boolean v2, p0, Lcom/android/ims/ImsConfig;->DBG:Z

    if-eqz v2, :cond_1

    .line 369
    const-string v2, "ImsConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setProvisionedValue(): item = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_1
    return v1

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "setProvisionedValue()"

    const/16 v4, 0x83

    invoke-direct {v2, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public setVideoQuality(ILcom/android/ims/ImsConfigListener;)V
    .locals 4
    .param p1, "quality"    # I
    .param p2, "listener"    # Lcom/android/ims/ImsConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 482
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsConfig;->miConfig:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v1, p1, p2}, Lcom/android/ims/internal/IImsConfig;->setVideoQuality(ILcom/android/ims/ImsConfigListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    return-void

    .line 483
    :catch_0
    move-exception v0

    .line 484
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "setVideoQuality()"

    const/16 v3, 0x83

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public setWifiCallingPreference(IILcom/android/ims/ImsConfigListener;)V
    .locals 4
    .param p1, "wifiCallingStatus"    # I
    .param p2, "wifiCallingPreference"    # I
    .param p3, "listener"    # Lcom/android/ims/ImsConfigListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 570
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsConfig;->miConfig:Lcom/android/ims/internal/IImsConfig;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/ims/internal/IImsConfig;->setWifiCallingPreference(IILcom/android/ims/ImsConfigListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    return-void

    .line 571
    :catch_0
    move-exception v0

    .line 572
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "setWifiCallingPreference()"

    const/16 v3, 0x83

    invoke-direct {v1, v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method
