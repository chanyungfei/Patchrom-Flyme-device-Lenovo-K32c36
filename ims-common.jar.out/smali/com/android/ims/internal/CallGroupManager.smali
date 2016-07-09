.class public Lcom/android/ims/internal/CallGroupManager;
.super Ljava/lang/Object;
.source "CallGroupManager.java"


# static fields
.field private static mCallGroupManager:Lcom/android/ims/internal/CallGroupManager;


# instance fields
.field private mCallGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ims/internal/CallGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mLockObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/android/ims/internal/CallGroupManager;

    invoke-direct {v0}, Lcom/android/ims/internal/CallGroupManager;-><init>()V

    sput-object v0, Lcom/android/ims/internal/CallGroupManager;->mCallGroupManager:Lcom/android/ims/internal/CallGroupManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/CallGroupManager;->mLockObj:Ljava/lang/Object;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/CallGroupManager;->mCallGroups:Ljava/util/ArrayList;

    .line 32
    return-void
.end method

.method public static getInstance()Lcom/android/ims/internal/CallGroupManager;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/ims/internal/CallGroupManager;->mCallGroupManager:Lcom/android/ims/internal/CallGroupManager;

    return-object v0
.end method


# virtual methods
.method public createCallGroup(Lcom/android/ims/internal/ICallGroup;)Lcom/android/ims/internal/CallGroup;
    .locals 3
    .param p1, "callGroup"    # Lcom/android/ims/internal/ICallGroup;

    .prologue
    .line 39
    new-instance v0, Lcom/android/ims/internal/CallGroup;

    invoke-direct {v0, p1}, Lcom/android/ims/internal/CallGroup;-><init>(Lcom/android/ims/internal/ICallGroup;)V

    .line 41
    .local v0, "cg":Lcom/android/ims/internal/CallGroup;
    iget-object v2, p0, Lcom/android/ims/internal/CallGroupManager;->mLockObj:Ljava/lang/Object;

    monitor-enter v2

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/internal/CallGroupManager;->mCallGroups:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    monitor-exit v2

    .line 45
    return-object v0

    .line 43
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public destroyCallGroup(Lcom/android/ims/internal/CallGroup;)V
    .locals 2
    .param p1, "cg"    # Lcom/android/ims/internal/CallGroup;

    .prologue
    .line 49
    if-nez p1, :cond_0

    .line 56
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/android/ims/internal/CallGroupManager;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/CallGroupManager;->mCallGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 55
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCallGroupAsOwner(Lcom/android/ims/internal/ICall;)Lcom/android/ims/internal/CallGroup;
    .locals 4
    .param p1, "call"    # Lcom/android/ims/internal/ICall;

    .prologue
    .line 59
    iget-object v3, p0, Lcom/android/ims/internal/CallGroupManager;->mLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 60
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/internal/CallGroupManager;->mCallGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/CallGroup;

    .line 61
    .local v0, "cg":Lcom/android/ims/internal/CallGroup;
    invoke-virtual {v0, p1}, Lcom/android/ims/internal/CallGroup;->isOwner(Lcom/android/ims/internal/ICall;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    monitor-exit v3

    .line 67
    .end local v0    # "cg":Lcom/android/ims/internal/CallGroup;
    :goto_0
    return-object v0

    .line 65
    :cond_1
    monitor-exit v3

    .line 67
    const/4 v0, 0x0

    goto :goto_0

    .line 65
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getCallGroupAsReferrer(Lcom/android/ims/internal/ICall;)Lcom/android/ims/internal/CallGroup;
    .locals 4
    .param p1, "call"    # Lcom/android/ims/internal/ICall;

    .prologue
    .line 71
    iget-object v3, p0, Lcom/android/ims/internal/CallGroupManager;->mLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 72
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/internal/CallGroupManager;->mCallGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/CallGroup;

    .line 73
    .local v0, "cg":Lcom/android/ims/internal/CallGroup;
    invoke-virtual {v0, p1}, Lcom/android/ims/internal/CallGroup;->isReferrer(Lcom/android/ims/internal/ICall;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    monitor-exit v3

    .line 79
    .end local v0    # "cg":Lcom/android/ims/internal/CallGroup;
    :goto_0
    return-object v0

    .line 77
    :cond_1
    monitor-exit v3

    .line 79
    const/4 v0, 0x0

    goto :goto_0

    .line 77
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
