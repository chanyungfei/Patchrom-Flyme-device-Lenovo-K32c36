.class public Lcom/android/internal/telephony/UiccPhoneBookController;
.super Lcom/android/internal/telephony/IIccPhoneBook$Stub;
.source "UiccPhoneBookController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UiccPhoneBookController"


# instance fields
.field private mPhone:[Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>([Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "phone"    # [Lcom/android/internal/telephony/Phone;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;-><init>()V

    .line 41
    const-string v0, "simphonebook"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 42
    const-string v0, "simphonebook"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 44
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/UiccPhoneBookController;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 45
    return-void
.end method

.method private getDefaultSubscription()I
    .locals 1

    .prologue
    .line 261
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v0

    return v0
.end method

.method private getIccPhoneBookInterfaceManagerProxy(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    .locals 6
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 244
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    .line 246
    .local v1, "phoneId":I
    const-string v2, "UiccPhoneBookController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIccPhoneBookInterfaceManagerProxy  phoneId is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "subId is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/UiccPhoneBookController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v1

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getIccPhoneBookInterfaceManagerProxy()Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 256
    :goto_0
    return-object v2

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "UiccPhoneBookController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " For subscription :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v2, v3

    .line 252
    goto :goto_0

    .line 253
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v2, "UiccPhoneBookController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " For subscription :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    move-object v2, v3

    .line 256
    goto :goto_0
.end method

.method private getIccPhoneBookInterfaceManagerProxyUsingSlot(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    .locals 5
    .param p1, "slotid"    # I

    .prologue
    const/4 v2, 0x0

    .line 268
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/UiccPhoneBookController;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, p1

    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getIccPhoneBookInterfaceManagerProxy()Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 276
    :goto_0
    return-object v1

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "UiccPhoneBookController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " For subscription :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v1, v2

    .line 272
    goto :goto_0

    .line 273
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "UiccPhoneBookController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " For subscription :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    move-object v1, v2

    .line 276
    goto :goto_0
.end method


# virtual methods
.method public addContactToGroup(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;II)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "anrNumber"    # [Ljava/lang/String;
    .param p4, "email"    # Ljava/lang/String;
    .param p5, "groupIndex"    # I
    .param p6, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 360
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxyUsingSlot(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 362
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addContactToGroup: sub "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 364
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->addContactToGroup(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 368
    :goto_0
    return v1

    .line 366
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addContactToGroup iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public deleteUsimGroup(II)I
    .locals 4
    .param p1, "groupIndex"    # I
    .param p2, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 346
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxyUsingSlot(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 348
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteUsimGroup: groupIndex= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "sub: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->deleteUsimGroup(I)I

    move-result v1

    .line 354
    :goto_0
    return v1

    .line 352
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteUsimGroup iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getAdnCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccPhoneBookController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/UiccPhoneBookController;->getAdnCountUsingSubId(I)I

    move-result v0

    return v0
.end method

.method public getAdnCountUsingSubId(I)I
    .locals 4
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 165
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getAdnCount()I

    move-result v1

    .line 170
    :goto_0
    return v1

    .line 168
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdnCount iccPbkIntMgrProxy isnull for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAdnRecordsInEf(I)Ljava/util/List;
    .locals 1
    .param p1, "efid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccPhoneBookController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/UiccPhoneBookController;->getAdnRecordsInEfForSubscriber(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdnRecordsInEfForSubscriber(II)Ljava/util/List;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 125
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object v1

    .line 130
    :goto_0
    return-object v1

    .line 128
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdnRecordsInEf iccPbkIntMgrProxy isnull for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAdnRecordsSize(I)[I
    .locals 1
    .param p1, "efid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccPhoneBookController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/UiccPhoneBookController;->getAdnRecordsSizeForSubscriber(II)[I

    move-result-object v0

    return-object v0
.end method

.method public getAdnRecordsSizeForSubscriber(II)[I
    .locals 4
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 106
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getAdnRecordsSize(I)[I

    move-result-object v1

    .line 111
    :goto_0
    return-object v1

    .line 109
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdnRecordsSize iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAnrCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccPhoneBookController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/UiccPhoneBookController;->getAnrCountUsingSubId(I)I

    move-result v0

    return v0
.end method

.method public getAnrCountUsingSubId(I)I
    .locals 4
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 181
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getAnrCount()I

    move-result v1

    .line 186
    :goto_0
    return v1

    .line 184
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAnrCount iccPbkIntMgrProxy isnull for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEmailCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccPhoneBookController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/UiccPhoneBookController;->getEmailCountUsingSubId(I)I

    move-result v0

    return v0
.end method

.method public getEmailCountUsingSubId(I)I
    .locals 4
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 197
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getEmailCount()I

    move-result v1

    .line 202
    :goto_0
    return v1

    .line 200
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEmailCount iccPbkIntMgrProxy isnull for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGasRecordsSizeOnSubscription(I)[I
    .locals 4
    .param p1, "subscription"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxyUsingSlot(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 296
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGasRecordsSizeOnSubscription: sub: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getGasRecordsSize()[I

    move-result-object v1

    .line 302
    :goto_0
    return-object v1

    .line 300
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGasRecordsSizeOnSubscription iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSpareAnrCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccPhoneBookController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/UiccPhoneBookController;->getSpareAnrCountUsingSubId(I)I

    move-result v0

    return v0
.end method

.method public getSpareAnrCountUsingSubId(I)I
    .locals 4
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 213
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getSpareAnrCount()I

    move-result v1

    .line 218
    :goto_0
    return v1

    .line 216
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSpareAnrCount iccPbkIntMgrProxy isnull for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSpareEmailCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccPhoneBookController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/UiccPhoneBookController;->getSpareEmailCountUsingSubId(I)I

    move-result v0

    return v0
.end method

.method public getSpareEmailCountUsingSubId(I)I
    .locals 4
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 229
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getSpareEmailCount()I

    move-result v1

    .line 234
    :goto_0
    return v1

    .line 232
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSpareEmailCount iccPbkIntMgrProxy isnull for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUsimGroups(I)Ljava/util/List;
    .locals 4
    .param p1, "subscription"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 307
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxyUsingSlot(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 309
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUsimGroups: sub: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->getUsimGroups()Ljava/util/List;

    move-result-object v1

    .line 315
    :goto_0
    return-object v1

    .line 313
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUsimGroups iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasEmailInIccCardUsingSubId(J)Z
    .locals 5
    .param p1, "subId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 281
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasEmailInIccCardUsingSubId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    long-to-int v1, p1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxyUsingSlot(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 284
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->hasEmailInIccCard()Z

    move-result v1

    .line 289
    :goto_0
    return v1

    .line 287
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasEmailInIccCardUsingSubId iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public insertUsimGroup(Ljava/lang/String;I)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 320
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxyUsingSlot(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 322
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertUsimGroup:name= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "sub: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->insertUsimGroup(Ljava/lang/String;)I

    move-result v1

    .line 328
    :goto_0
    return v1

    .line 326
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertUsimGroup iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isSupportUsimGroup(I)Z
    .locals 4
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 387
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxyUsingSlot(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 389
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportUsimGroup: sub "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->isSupportUsimGroup()Z

    move-result v1

    .line 395
    :goto_0
    return v1

    .line 393
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportUsimGroup iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeContactFromGroup(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;II)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "anrNumber"    # [Ljava/lang/String;
    .param p4, "email"    # Ljava/lang/String;
    .param p5, "groupIndex"    # I
    .param p6, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 374
    invoke-direct {p0, p6}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxyUsingSlot(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 376
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeContactFromGroup: sub "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 378
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->removeContactFromGroup(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 382
    :goto_0
    return v1

    .line 380
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeContactFromGroup iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 7
    .param p1, "efid"    # I
    .param p2, "newTag"    # Ljava/lang/String;
    .param p3, "newPhoneNumber"    # Ljava/lang/String;
    .param p4, "index"    # I
    .param p5, "pin2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccPhoneBookController;->getDefaultSubscription()I

    move-result v1

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/UiccPhoneBookController;->updateAdnRecordsInEfByIndexForSubscriber(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateAdnRecordsInEfByIndexForSubscriber(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .param p3, "newTag"    # Ljava/lang/String;
    .param p4, "newPhoneNumber"    # Ljava/lang/String;
    .param p5, "index"    # I
    .param p6, "pin2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 86
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    .line 87
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    .line 92
    :goto_0
    return v1

    .line 90
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnRecordsInEfByIndex iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "efid"    # I
    .param p2, "oldTag"    # Ljava/lang/String;
    .param p3, "oldPhoneNumber"    # Ljava/lang/String;
    .param p4, "newTag"    # Ljava/lang/String;
    .param p5, "newPhoneNumber"    # Ljava/lang/String;
    .param p6, "pin2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccPhoneBookController;->getDefaultSubscription()I

    move-result v1

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/UiccPhoneBookController;->updateAdnRecordsInEfBySearchForSubscriber(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateAdnRecordsInEfBySearchForSubscriber(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .param p3, "oldTag"    # Ljava/lang/String;
    .param p4, "oldPhoneNumber"    # Ljava/lang/String;
    .param p5, "newTag"    # Ljava/lang/String;
    .param p6, "newPhoneNumber"    # Ljava/lang/String;
    .param p7, "pin2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 62
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 63
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 68
    :goto_0
    return v1

    .line 66
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnRecordsInEfBySearch iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateAdnRecordsWithContentValuesInEfBySearch(ILandroid/content/ContentValues;Ljava/lang/String;)Z
    .locals 1
    .param p1, "efid"    # I
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "pin2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccPhoneBookController;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/telephony/UiccPhoneBookController;->updateAdnRecordsWithContentValuesInEfBySearchUsingSubId(IILandroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateAdnRecordsWithContentValuesInEfBySearchUsingSubId(IILandroid/content/ContentValues;Ljava/lang/String;)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "efid"    # I
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "pin2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxy(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 148
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->updateAdnRecordsWithContentValuesInEfBySearch(ILandroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v1

    .line 154
    :goto_0
    return v1

    .line 152
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAdnRecordsWithContentValuesInEfBySearchUsingSubId iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateUsimGroup(ILjava/lang/String;I)I
    .locals 4
    .param p1, "groupIndex"    # I
    .param p2, "groupname"    # Ljava/lang/String;
    .param p3, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 333
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/UiccPhoneBookController;->getIccPhoneBookInterfaceManagerProxyUsingSlot(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    move-result-object v0

    .line 335
    .local v0, "iccPbkIntMgrProxy":Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUsimGroup:groupIndex= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "grpname= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "sub: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->updateUsimGroup(ILjava/lang/String;)I

    move-result v1

    .line 341
    :goto_0
    return v1

    .line 339
    :cond_0
    const-string v1, "UiccPhoneBookController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUsimGroup iccPbkIntMgrProxy is null for Subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v1, -0x1

    goto :goto_0
.end method
