.class public interface abstract Lcom/android/ims/internal/ICallGroup;
.super Ljava/lang/Object;
.source "ICallGroup.java"


# virtual methods
.method public abstract addReferrer(Lcom/android/ims/internal/ICall;)V
.end method

.method public abstract getNeutralReferrer()Lcom/android/ims/internal/ICall;
.end method

.method public abstract getOwner()Lcom/android/ims/internal/ICall;
.end method

.method public abstract getReferrer(Ljava/lang/String;)Lcom/android/ims/internal/ICall;
.end method

.method public abstract getReferrers()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ims/internal/ICall;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasReferrer()Z
.end method

.method public abstract isOwner(Lcom/android/ims/internal/ICall;)Z
.end method

.method public abstract isReferrer(Lcom/android/ims/internal/ICall;)Z
.end method

.method public abstract removeReferrer(Lcom/android/ims/internal/ICall;)V
.end method

.method public abstract setNeutralReferrer(Lcom/android/ims/internal/ICall;)V
.end method

.method public abstract setOwner(Lcom/android/ims/internal/ICall;)V
.end method
