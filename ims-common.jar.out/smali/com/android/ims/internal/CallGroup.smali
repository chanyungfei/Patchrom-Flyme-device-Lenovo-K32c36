.class public Lcom/android/ims/internal/CallGroup;
.super Ljava/lang/Object;
.source "CallGroup.java"


# instance fields
.field private final mCallGroup:Lcom/android/ims/internal/ICallGroup;


# direct methods
.method public constructor <init>(Lcom/android/ims/internal/ICallGroup;)V
    .locals 0
    .param p1, "callGroup"    # Lcom/android/ims/internal/ICallGroup;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/ims/internal/CallGroup;->mCallGroup:Lcom/android/ims/internal/ICallGroup;

    .line 31
    return-void
.end method


# virtual methods
.method public addReferrer(Lcom/android/ims/internal/ICall;)V
    .locals 1
    .param p1, "call"    # Lcom/android/ims/internal/ICall;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/ims/internal/CallGroup;->mCallGroup:Lcom/android/ims/internal/ICallGroup;

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/ims/internal/CallGroup;->mCallGroup:Lcom/android/ims/internal/ICallGroup;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/ICallGroup;->addReferrer(Lcom/android/ims/internal/ICall;)V

    goto :goto_0
.end method

.method public getNeutralReferrer()Lcom/android/ims/internal/ICall;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/ims/internal/CallGroup;->mCallGroup:Lcom/android/ims/internal/ICallGroup;

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/ims/internal/CallGroup;->mCallGroup:Lcom/android/ims/internal/ICallGroup;

    invoke-interface {v0}, Lcom/android/ims/internal/ICallGroup;->getNeutralReferrer()Lcom/android/ims/internal/ICall;

    move-result-object v0

    goto :goto_0
.end method

.method public getOwner()Lcom/android/ims/internal/ICall;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/ims/internal/CallGroup;->mCallGroup:Lcom/android/ims/internal/ICallGroup;

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/ims/internal/CallGroup;->mCallGroup:Lcom/android/ims/internal/ICallGroup;

    invoke-interface {v0}, Lcom/android/ims/internal/ICallGroup;->getOwner()Lcom/android/ims/internal/ICall;

    move-result-object v0

    goto :goto_0
.end method

.method public getReferrer(Ljava/lang/String;)Lcom/android/ims/internal/ICall;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/ims/internal/CallGroup;->mCallGroup:Lcom/android/ims/internal/ICallGroup;

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/ims/internal/CallGroup;->mCallGroup:Lcom/android/ims/internal/ICallGroup;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/ICallGroup;->getReferrer(Ljava/lang/String;)Lcom/android/ims/internal/ICall;

    move-result-object v0

    goto :goto_0
.end method

.method public getReferrers()Ljava/util/ArrayList;
    .locals 1
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
    .line 58
    iget-object v0, p0, Lcom/android/ims/internal/CallGroup;->mCallGroup:Lcom/android/ims/internal/ICallGroup;

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/ims/internal/CallGroup;->mCallGroup:Lcom/android/ims/internal/ICallGroup;

    invoke-interface {v0}, Lcom/android/ims/internal/ICallGroup;->getReferrers()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public hasReferrer()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/ims/internal/CallGroup;->mCallGroup:Lcom/android/ims/internal/ICallGroup;

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/ims/internal/CallGroup;->mCallGroup:Lcom/android/ims/internal/ICallGroup;

    invoke-interface {v0}, Lcom/android/ims/internal/ICallGroup;->hasReferrer()Z

    move-result v0

    goto :goto_0
.end method

.method public isOwner(Lcom/android/ims/internal/ICall;)Z
    .locals 1
    .param p1, "call"    # Lcom/android/ims/internal/ICall;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/ims/internal/CallGroup;->mCallGroup:Lcom/android/ims/internal/ICallGroup;

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 78
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/ims/internal/CallGroup;->mCallGroup:Lcom/android/ims/internal/ICallGroup;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/ICallGroup;->isOwner(Lcom/android/ims/internal/ICall;)Z

    move-result v0

    goto :goto_0
.end method

.method public isReferrer(Lcom/android/ims/internal/ICall;)Z
    .locals 1
    .param p1, "call"    # Lcom/android/ims/internal/ICall;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/ims/internal/CallGroup;->mCallGroup:Lcom/android/ims/internal/ICallGroup;

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 86
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/ims/internal/CallGroup;->mCallGroup:Lcom/android/ims/internal/ICallGroup;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/ICallGroup;->isReferrer(Lcom/android/ims/internal/ICall;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeReferrer(Lcom/android/ims/internal/ICall;)V
    .locals 1
    .param p1, "call"    # Lcom/android/ims/internal/ICall;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/ims/internal/CallGroup;->mCallGroup:Lcom/android/ims/internal/ICallGroup;

    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/ims/internal/CallGroup;->mCallGroup:Lcom/android/ims/internal/ICallGroup;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/ICallGroup;->removeReferrer(Lcom/android/ims/internal/ICall;)V

    goto :goto_0
.end method

.method public setNeutralReferrer(Lcom/android/ims/internal/ICall;)V
    .locals 1
    .param p1, "call"    # Lcom/android/ims/internal/ICall;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/ims/internal/CallGroup;->mCallGroup:Lcom/android/ims/internal/ICallGroup;

    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/ims/internal/CallGroup;->mCallGroup:Lcom/android/ims/internal/ICallGroup;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/ICallGroup;->setNeutralReferrer(Lcom/android/ims/internal/ICall;)V

    goto :goto_0
.end method

.method public setOwner(Lcom/android/ims/internal/ICall;)V
    .locals 1
    .param p1, "call"    # Lcom/android/ims/internal/ICall;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/ims/internal/CallGroup;->mCallGroup:Lcom/android/ims/internal/ICallGroup;

    if-nez v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/ims/internal/CallGroup;->mCallGroup:Lcom/android/ims/internal/ICallGroup;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/ICallGroup;->setOwner(Lcom/android/ims/internal/ICall;)V

    goto :goto_0
.end method
