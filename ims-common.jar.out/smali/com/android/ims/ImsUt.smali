.class public Lcom/android/ims/ImsUt;
.super Ljava/lang/Object;
.source "ImsUt.java"

# interfaces
.implements Lcom/android/ims/ImsUtInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsUt$1;,
        Lcom/android/ims/ImsUt$IImsUtListenerProxy;
    }
.end annotation


# static fields
.field public static final CATEGORY_CB:Ljava/lang/String; = "CB"

.field public static final CATEGORY_CDIV:Ljava/lang/String; = "CDIV"

.field public static final CATEGORY_CONF:Ljava/lang/String; = "CONF"

.field public static final CATEGORY_CW:Ljava/lang/String; = "CW"

.field public static final CATEGORY_OIP:Ljava/lang/String; = "OIP"

.field public static final CATEGORY_OIR:Ljava/lang/String; = "OIR"

.field public static final CATEGORY_TIP:Ljava/lang/String; = "TIP"

.field public static final CATEGORY_TIR:Ljava/lang/String; = "TIR"

.field private static final DBG:Z = true

.field public static final KEY_ACTION:Ljava/lang/String; = "action"

.field public static final KEY_CATEGORY:Ljava/lang/String; = "category"

.field private static final SERVICE_CLASS_VOICE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ImsUt"


# instance fields
.field private mLockObj:Ljava/lang/Object;

.field private mPendingCmds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final miUt:Lcom/android/ims/internal/IImsUt;


# direct methods
.method public constructor <init>(Lcom/android/ims/internal/IImsUt;)V
    .locals 3
    .param p1, "iUt"    # Lcom/android/ims/internal/IImsUt;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    .line 78
    iput-object p1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    .line 80
    iget-object v0, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    if-eqz v0, :cond_0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    new-instance v1, Lcom/android/ims/ImsUt$IImsUtListenerProxy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/ims/ImsUt$IImsUtListenerProxy;-><init>(Lcom/android/ims/ImsUt;Lcom/android/ims/ImsUt$1;)V

    invoke-interface {v0, v1}, Lcom/android/ims/internal/IImsUt;->setListener(Lcom/android/ims/internal/IImsUtListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/ims/ImsUt;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/ImsUt;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/ims/ImsUt;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/ImsUt;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/ims/ImsUt;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsUt;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/ims/ImsUt;->sendSuccessReport(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/ims/ImsUt;Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsUt;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/ims/ImsUt;Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsUt;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsUt;->sendSuccessReport(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 614
    const-string v0, "ImsUt"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 618
    const-string v0, "ImsUt"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 622
    const-string v0, "ImsUt"

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 623
    return-void
.end method

.method private sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    .locals 4
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "error"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 578
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    iget-object v1, p2, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 586
    new-instance v0, Ljava/lang/String;

    const-string v1, "IMS UT exception"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 591
    .local v0, "errorString":Ljava/lang/String;
    :goto_1
    const/4 v1, 0x0

    new-instance v2, Lcom/android/ims/ImsException;

    iget v3, p2, Lcom/android/ims/ImsReasonInfo;->mCode:I

    invoke-direct {v2, v0, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    invoke-static {p1, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 592
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 589
    .end local v0    # "errorString":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p2, Lcom/android/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v0    # "errorString":Ljava/lang/String;
    goto :goto_1
.end method

.method private sendSuccessReport(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 596
    if-nez p1, :cond_0

    .line 602
    :goto_0
    return-void

    .line 600
    :cond_0
    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 601
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private sendSuccessReport(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;
    .param p2, "ssInfo"    # Ljava/lang/Object;

    .prologue
    .line 605
    if-nez p1, :cond_0

    .line 611
    :goto_0
    return-void

    .line 609
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 610
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 10

    .prologue
    .line 89
    iget-object v6, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v6

    .line 90
    :try_start_0
    iget-object v5, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 92
    :try_start_1
    iget-object v5, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v5}, Lcom/android/ims/internal/IImsUt;->close()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :cond_0
    :goto_0
    :try_start_2
    iget-object v5, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 98
    iget-object v5, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    iget-object v7, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    new-array v7, v7, [Ljava/util/Map$Entry;

    invoke-interface {v5, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/Map$Entry;

    .line 101
    .local v1, "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Message;>;"
    move-object v0, v1

    .local v0, "arr$":[Ljava/util/Map$Entry;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 102
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Message;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Message;

    new-instance v7, Lcom/android/ims/ImsReasonInfo;

    const/16 v8, 0x322

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, v5, v7}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V

    .line 101
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 106
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Message;>;"
    :cond_1
    iget-object v5, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 108
    .end local v0    # "arr$":[Ljava/util/Map$Entry;
    .end local v1    # "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Message;>;"
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_2
    monitor-exit v6

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 93
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public queryCLIP(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCLIP :: Ut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 248
    iget-object v3, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 250
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v2}, Lcom/android/ims/internal/IImsUt;->queryCLIP()I

    move-result v1

    .line 252
    .local v1, "id":I
    if-gez v1, :cond_0

    .line 253
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p1, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    .end local v1    # "id":I
    :goto_0
    return-void

    .line 258
    .restart local v1    # "id":I
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 263
    .end local v1    # "id":I
    :goto_1
    :try_start_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p1, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public queryCLIR(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCLIR :: Ut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 222
    iget-object v3, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 224
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v2}, Lcom/android/ims/internal/IImsUt;->queryCLIR()I

    move-result v1

    .line 226
    .local v1, "id":I
    if-gez v1, :cond_0

    .line 227
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p1, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    .end local v1    # "id":I
    :goto_0
    return-void

    .line 232
    .restart local v1    # "id":I
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 237
    .end local v1    # "id":I
    :goto_1
    :try_start_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p1, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public queryCOLP(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCOLP :: Ut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 300
    iget-object v3, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 302
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v2}, Lcom/android/ims/internal/IImsUt;->queryCOLP()I

    move-result v1

    .line 304
    .local v1, "id":I
    if-gez v1, :cond_0

    .line 305
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p1, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    .end local v1    # "id":I
    :goto_0
    return-void

    .line 310
    .restart local v1    # "id":I
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 315
    .end local v1    # "id":I
    :goto_1
    :try_start_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p1, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public queryCOLR(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCOLR :: Ut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 274
    iget-object v3, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 276
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v2}, Lcom/android/ims/internal/IImsUt;->queryCOLR()I

    move-result v1

    .line 278
    .local v1, "id":I
    if-gez v1, :cond_0

    .line 279
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p1, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    .end local v1    # "id":I
    :goto_0
    return-void

    .line 284
    .restart local v1    # "id":I
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 289
    .end local v1    # "id":I
    :goto_1
    :try_start_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p1, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public queryCallBarring(ILandroid/os/Message;)V
    .locals 6
    .param p1, "cbType"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCallBarring :: Ut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cbType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 128
    iget-object v3, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 130
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsUt;->queryCallBarring(I)I

    move-result v1

    .line 132
    .local v1, "id":I
    if-gez v1, :cond_0

    .line 133
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    .end local v1    # "id":I
    :goto_0
    return-void

    .line 138
    .restart local v1    # "id":I
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    .end local v1    # "id":I
    :goto_1
    :try_start_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public queryCallForward(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCallForward :: Ut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", condition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", class="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 167
    iget-object v3, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 169
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/ims/internal/IImsUt;->queryCFForServiceClass(ILjava/lang/String;I)I

    move-result v1

    .line 171
    .local v1, "id":I
    if-gez v1, :cond_0

    .line 172
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p4, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    .end local v1    # "id":I
    :goto_0
    return-void

    .line 177
    .restart local v1    # "id":I
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    .end local v1    # "id":I
    :goto_1
    :try_start_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p4, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public queryCallForward(ILjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "condition"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 152
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/ims/ImsUt;->queryCallForward(ILjava/lang/String;ILandroid/os/Message;)V

    .line 153
    return-void
.end method

.method public queryCallWaiting(Landroid/os/Message;)V
    .locals 6
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCallWaiting :: Ut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 195
    iget-object v3, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 197
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v2}, Lcom/android/ims/internal/IImsUt;->queryCallWaiting()I

    move-result v1

    .line 199
    .local v1, "id":I
    if-gez v1, :cond_0

    .line 200
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p1, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    .end local v1    # "id":I
    :goto_0
    return-void

    .line 205
    .restart local v1    # "id":I
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    .end local v1    # "id":I
    :goto_1
    :try_start_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p1, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public transact(Landroid/os/Bundle;Landroid/os/Message;)V
    .locals 6
    .param p1, "ssInfo"    # Landroid/os/Bundle;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 556
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transact :: Ut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ssInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 559
    iget-object v3, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 561
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsUt;->transact(Landroid/os/Bundle;)I

    move-result v1

    .line 563
    .local v1, "id":I
    if-gez v1, :cond_0

    .line 564
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 575
    .end local v1    # "id":I
    :goto_0
    return-void

    .line 569
    .restart local v1    # "id":I
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 574
    .end local v1    # "id":I
    :goto_1
    :try_start_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 570
    :catch_0
    move-exception v0

    .line 571
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public updateCLIP(ZLandroid/os/Message;)V
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 479
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCLIP :: Ut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 482
    iget-object v3, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 484
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsUt;->updateCLIP(Z)I

    move-result v1

    .line 486
    .local v1, "id":I
    if-gez v1, :cond_0

    .line 487
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 498
    .end local v1    # "id":I
    :goto_0
    return-void

    .line 492
    .restart local v1    # "id":I
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 497
    .end local v1    # "id":I
    :goto_1
    :try_start_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public updateCLIR(ILandroid/os/Message;)V
    .locals 6
    .param p1, "clirMode"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCLIR :: Ut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", clirMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 455
    iget-object v3, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 457
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsUt;->updateCLIR(I)I

    move-result v1

    .line 459
    .local v1, "id":I
    if-gez v1, :cond_0

    .line 460
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 471
    .end local v1    # "id":I
    :goto_0
    return-void

    .line 465
    .restart local v1    # "id":I
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 470
    .end local v1    # "id":I
    :goto_1
    :try_start_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public updateCOLP(ZLandroid/os/Message;)V
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCallWaiting :: Ut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 536
    iget-object v3, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 538
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsUt;->updateCOLP(Z)I

    move-result v1

    .line 540
    .local v1, "id":I
    if-gez v1, :cond_0

    .line 541
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 552
    .end local v1    # "id":I
    :goto_0
    return-void

    .line 546
    .restart local v1    # "id":I
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 551
    .end local v1    # "id":I
    :goto_1
    :try_start_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 547
    :catch_0
    move-exception v0

    .line 548
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public updateCOLR(ILandroid/os/Message;)V
    .locals 6
    .param p1, "presentation"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 506
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCOLR :: Ut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", presentation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 509
    iget-object v3, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 511
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsUt;->updateCOLR(I)I

    move-result v1

    .line 513
    .local v1, "id":I
    if-gez v1, :cond_0

    .line 514
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 525
    .end local v1    # "id":I
    :goto_0
    return-void

    .line 519
    .restart local v1    # "id":I
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 524
    .end local v1    # "id":I
    :goto_1
    :try_start_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p2, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;)V
    .locals 8
    .param p1, "cbType"    # I
    .param p2, "action"    # I
    .param p3, "result"    # Landroid/os/Message;
    .param p4, "barrList"    # [Ljava/lang/String;

    .prologue
    .line 324
    if-eqz p4, :cond_1

    .line 325
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 326
    .local v0, "bList":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p4

    if-ge v2, v4, :cond_0

    .line 327
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p4, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 326
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 329
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCallBarring :: Ut="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cbType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", barrList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 338
    .end local v0    # "bList":Ljava/lang/String;
    .end local v2    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v5

    .line 340
    :try_start_0
    iget-object v4, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v4, p1, p2, p4}, Lcom/android/ims/internal/IImsUt;->updateCallBarring(II[Ljava/lang/String;)I

    move-result v3

    .line 342
    .local v3, "id":I
    if-gez v3, :cond_2

    .line 343
    new-instance v4, Lcom/android/ims/ImsReasonInfo;

    const/16 v6, 0x322

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p3, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    .end local v3    # "id":I
    :goto_2
    return-void

    .line 333
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCallBarring :: Ut="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cbType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 348
    .restart local v3    # "id":I
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 353
    .end local v3    # "id":I
    :goto_3
    :try_start_3
    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 349
    :catch_0
    move-exception v1

    .line 350
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v4, Lcom/android/ims/ImsReasonInfo;

    const/16 v6, 0x322

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p3, v4}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3
.end method

.method public updateCallForward(IILjava/lang/String;IILandroid/os/Message;)V
    .locals 9
    .param p1, "action"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "timeSeconds"    # I
    .param p6, "result"    # Landroid/os/Message;

    .prologue
    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCallForward :: Ut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", condition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serviceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 368
    iget-object v8, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v8

    .line 370
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/ims/internal/IImsUt;->updateCallForward(IILjava/lang/String;II)I

    move-result v7

    .line 372
    .local v7, "id":I
    if-gez v7, :cond_0

    .line 373
    new-instance v0, Lcom/android/ims/ImsReasonInfo;

    const/16 v1, 0x322

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p6, v0}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    .end local v7    # "id":I
    :goto_0
    return-void

    .line 378
    .restart local v7    # "id":I
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 383
    .end local v7    # "id":I
    :goto_1
    :try_start_3
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 379
    :catch_0
    move-exception v6

    .line 380
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v0, Lcom/android/ims/ImsReasonInfo;

    const/16 v1, 0x322

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p6, v0}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public updateCallForwardUncondTimer(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 12
    .param p1, "startHour"    # I
    .param p2, "startMinute"    # I
    .param p3, "endHour"    # I
    .param p4, "endMinute"    # I
    .param p5, "action"    # I
    .param p6, "condition"    # I
    .param p7, "number"    # Ljava/lang/String;
    .param p8, "result"    # Landroid/os/Message;

    .prologue
    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCallForwardUncondTimer :: Ut="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", condition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", startHour="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", startMinute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", endHour="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", endMinute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 399
    iget-object v11, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v11

    .line 401
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/android/ims/internal/IImsUt;->updateCallForwardUncondTimer(IIIIIILjava/lang/String;)I

    move-result v10

    .line 404
    .local v10, "id":I
    if-gez v10, :cond_0

    .line 405
    new-instance v1, Lcom/android/ims/ImsReasonInfo;

    const/16 v2, 0x322

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    move-object/from16 v0, p8

    invoke-direct {p0, v0, v1}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    .end local v10    # "id":I
    :goto_0
    return-void

    .line 410
    .restart local v10    # "id":I
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 415
    .end local v10    # "id":I
    :goto_1
    :try_start_3
    monitor-exit v11

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 411
    :catch_0
    move-exception v9

    .line 412
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v1, Lcom/android/ims/ImsReasonInfo;

    const/16 v2, 0x322

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    move-object/from16 v0, p8

    invoke-direct {p0, v0, v1}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public updateCallWaiting(ZILandroid/os/Message;)V
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCallWaiting :: Ut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",serviceClass="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsUt;->log(Ljava/lang/String;)V

    .line 428
    iget-object v3, p0, Lcom/android/ims/ImsUt;->mLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 430
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsUt;->miUt:Lcom/android/ims/internal/IImsUt;

    invoke-interface {v2, p1, p2}, Lcom/android/ims/internal/IImsUt;->updateCallWaiting(ZI)I

    move-result v1

    .line 432
    .local v1, "id":I
    if-gez v1, :cond_0

    .line 433
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p3, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 444
    .end local v1    # "id":I
    :goto_0
    return-void

    .line 438
    .restart local v1    # "id":I
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/ims/ImsUt;->mPendingCmds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 443
    .end local v1    # "id":I
    :goto_1
    :try_start_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v2, Lcom/android/ims/ImsReasonInfo;

    const/16 v4, 0x322

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p3, v2}, Lcom/android/ims/ImsUt;->sendFailureReport(Landroid/os/Message;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
