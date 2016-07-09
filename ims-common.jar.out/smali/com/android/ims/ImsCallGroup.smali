.class public Lcom/android/ims/ImsCallGroup;
.super Ljava/lang/Object;
.source "ImsCallGroup.java"

# interfaces
.implements Lcom/android/ims/internal/ICallGroup;


# instance fields
.field private mLockObj:Ljava/lang/Object;

.field private mNeutralReferrer:Lcom/android/ims/ImsCall;

.field private mOwner:Lcom/android/ims/ImsCall;

.field private mReferrers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ims/internal/ICall;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsCallGroup;->mLockObj:Ljava/lang/Object;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsCallGroup;->mReferrers:Ljava/util/ArrayList;

    .line 38
    return-void
.end method

.method private isSameCall(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)Z
    .locals 1
    .param p1, "call1"    # Lcom/android/ims/ImsCall;
    .param p2, "call2"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 187
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 188
    :cond_0
    const/4 v0, 0x0

    .line 191
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/ims/ImsCall;->equalsTo(Lcom/android/ims/internal/ICall;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public addReferrer(Lcom/android/ims/internal/ICall;)V
    .locals 2
    .param p1, "call"    # Lcom/android/ims/internal/ICall;

    .prologue
    .line 110
    if-nez p1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    instance-of v0, p1, Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCallGroup;->isReferrer(Lcom/android/ims/internal/ICall;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v1, p0, Lcom/android/ims/ImsCallGroup;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCallGroup;->mReferrers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNeutralReferrer()Lcom/android/ims/internal/ICall;
    .locals 2

    .prologue
    .line 42
    iget-object v1, p0, Lcom/android/ims/ImsCallGroup;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCallGroup;->mNeutralReferrer:Lcom/android/ims/ImsCall;

    monitor-exit v1

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getOwner()Lcom/android/ims/internal/ICall;
    .locals 2

    .prologue
    .line 49
    iget-object v1, p0, Lcom/android/ims/ImsCallGroup;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCallGroup;->mOwner:Lcom/android/ims/ImsCall;

    monitor-exit v1

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getReferrer(Ljava/lang/String;)Lcom/android/ims/internal/ICall;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 167
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object v0, v3

    .line 183
    :goto_0
    return-object v0

    .line 171
    :cond_1
    invoke-virtual {p0}, Lcom/android/ims/ImsCallGroup;->getReferrers()Ljava/util/ArrayList;

    move-result-object v2

    .line 173
    .local v2, "referrers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ims/internal/ICall;>;"
    if-nez v2, :cond_2

    move-object v0, v3

    .line 174
    goto :goto_0

    .line 177
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/ICall;

    .line 178
    .local v0, "call":Lcom/android/ims/internal/ICall;
    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lcom/android/ims/internal/ICall;->checkIfRemoteUserIsSame(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .end local v0    # "call":Lcom/android/ims/internal/ICall;
    :cond_4
    move-object v0, v3

    .line 183
    goto :goto_0
.end method

.method public getReferrers()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ims/internal/ICall;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v1, p0, Lcom/android/ims/ImsCallGroup;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCallGroup;->mReferrers:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasReferrer()Z
    .locals 2

    .prologue
    .line 63
    iget-object v1, p0, Lcom/android/ims/ImsCallGroup;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCallGroup;->mReferrers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isOwner(Lcom/android/ims/internal/ICall;)Z
    .locals 3
    .param p1, "call"    # Lcom/android/ims/internal/ICall;

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v2, p0, Lcom/android/ims/ImsCallGroup;->mLockObj:Ljava/lang/Object;

    monitor-enter v2

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCallGroup;->mOwner:Lcom/android/ims/ImsCall;

    .line 74
    .local v0, "owner":Lcom/android/ims/ImsCall;
    monitor-exit v2

    .line 76
    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 84
    .end local p1    # "call":Lcom/android/ims/internal/ICall;
    :cond_0
    :goto_0
    return v1

    .line 74
    .end local v0    # "owner":Lcom/android/ims/ImsCall;
    .restart local p1    # "call":Lcom/android/ims/internal/ICall;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 80
    .restart local v0    # "owner":Lcom/android/ims/ImsCall;
    :cond_1
    instance-of v2, p1, Lcom/android/ims/ImsCall;

    if-eqz v2, :cond_0

    .line 84
    check-cast p1, Lcom/android/ims/ImsCall;

    .end local p1    # "call":Lcom/android/ims/internal/ICall;
    invoke-direct {p0, v0, p1}, Lcom/android/ims/ImsCallGroup;->isSameCall(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)Z

    move-result v1

    goto :goto_0
.end method

.method public isReferrer(Lcom/android/ims/internal/ICall;)Z
    .locals 6
    .param p1, "call"    # Lcom/android/ims/internal/ICall;

    .prologue
    const/4 v4, 0x0

    .line 89
    if-nez p1, :cond_0

    move v3, v4

    .line 105
    :goto_0
    return v3

    .line 93
    :cond_0
    instance-of v3, p1, Lcom/android/ims/ImsCall;

    if-nez v3, :cond_1

    move v3, v4

    .line 94
    goto :goto_0

    .line 97
    :cond_1
    iget-object v5, p0, Lcom/android/ims/ImsCallGroup;->mLockObj:Ljava/lang/Object;

    monitor-enter v5

    .line 98
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsCallGroup;->mReferrers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/ICall;

    .line 99
    .local v1, "c":Lcom/android/ims/internal/ICall;
    if-eqz v1, :cond_2

    check-cast v1, Lcom/android/ims/ImsCall;

    .end local v1    # "c":Lcom/android/ims/internal/ICall;
    move-object v0, p1

    check-cast v0, Lcom/android/ims/ImsCall;

    move-object v3, v0

    invoke-direct {p0, v1, v3}, Lcom/android/ims/ImsCallGroup;->isSameCall(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 100
    const/4 v3, 0x1

    monitor-exit v5

    goto :goto_0

    .line 103
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v4

    .line 105
    goto :goto_0
.end method

.method public removeReferrer(Lcom/android/ims/internal/ICall;)V
    .locals 2
    .param p1, "call"    # Lcom/android/ims/internal/ICall;

    .prologue
    .line 130
    if-nez p1, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    instance-of v0, p1, Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/ims/ImsCallGroup;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCallGroup;->mReferrers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 140
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setNeutralReferrer(Lcom/android/ims/internal/ICall;)V
    .locals 2
    .param p1, "call"    # Lcom/android/ims/internal/ICall;

    .prologue
    .line 145
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/ims/ImsCall;

    if-nez v0, :cond_0

    .line 152
    .end local p1    # "call":Lcom/android/ims/internal/ICall;
    :goto_0
    return-void

    .line 149
    .restart local p1    # "call":Lcom/android/ims/internal/ICall;
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCallGroup;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    :try_start_0
    check-cast p1, Lcom/android/ims/ImsCall;

    .end local p1    # "call":Lcom/android/ims/internal/ICall;
    iput-object p1, p0, Lcom/android/ims/ImsCallGroup;->mNeutralReferrer:Lcom/android/ims/ImsCall;

    .line 151
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOwner(Lcom/android/ims/internal/ICall;)V
    .locals 2
    .param p1, "call"    # Lcom/android/ims/internal/ICall;

    .prologue
    .line 156
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/ims/ImsCall;

    if-nez v0, :cond_0

    .line 163
    .end local p1    # "call":Lcom/android/ims/internal/ICall;
    :goto_0
    return-void

    .line 160
    .restart local p1    # "call":Lcom/android/ims/internal/ICall;
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCallGroup;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    :try_start_0
    check-cast p1, Lcom/android/ims/ImsCall;

    .end local p1    # "call":Lcom/android/ims/internal/ICall;
    iput-object p1, p0, Lcom/android/ims/ImsCallGroup;->mOwner:Lcom/android/ims/ImsCall;

    .line 162
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
