.class public Lcom/android/ims/internal/ImsCallSession;
.super Ljava/lang/Object;
.source "ImsCallSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/ImsCallSession$1;,
        Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;,
        Lcom/android/ims/internal/ImsCallSession$Listener;,
        Lcom/android/ims/internal/ImsCallSession$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsCallSession"


# instance fields
.field private mClosed:Z

.field private mListener:Lcom/android/ims/internal/ImsCallSession$Listener;

.field private final miSession:Lcom/android/ims/internal/IImsCallSession;


# direct methods
.method public constructor <init>(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 2
    .param p1, "iSession"    # Lcom/android/ims/internal/IImsCallSession;

    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    .line 409
    iput-object p1, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    .line 411
    if-eqz p1, :cond_0

    .line 413
    :try_start_0
    new-instance v0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;-><init>(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/internal/ImsCallSession$1;)V

    invoke-interface {p1, v0}, Lcom/android/ims/internal/IImsCallSession;->setListener(Lcom/android/ims/internal/IImsCallSessionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :goto_0
    return-void

    .line 417
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    goto :goto_0

    .line 414
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/ImsCallSession$Listener;)V
    .locals 0
    .param p1, "iSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "listener"    # Lcom/android/ims/internal/ImsCallSession$Listener;

    .prologue
    .line 422
    invoke-direct {p0, p1}, Lcom/android/ims/internal/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    .line 423
    invoke-virtual {p0, p2}, Lcom/android/ims/internal/ImsCallSession;->setListener(Lcom/android/ims/internal/ImsCallSession$Listener;)V

    .line 424
    return-void
.end method

.method static synthetic access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;

    return-object v0
.end method


# virtual methods
.method public accept(ILcom/android/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "callType"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    .prologue
    .line 682
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 690
    :goto_0
    return-void

    .line 687
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->accept(ILcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 688
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 430
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 439
    :goto_0
    monitor-exit p0

    return-void

    .line 435
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->close()V

    .line 436
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 437
    :catch_0
    move-exception v0

    goto :goto_0

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deflect(Ljava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 699
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 707
    :goto_0
    return-void

    .line 704
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->deflect(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 705
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public extendToConference([Ljava/lang/String;)V
    .locals 1
    .param p1, "participants"    # [Ljava/lang/String;

    .prologue
    .line 819
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 827
    :goto_0
    return-void

    .line 824
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->extendToConference([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 825
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 447
    iget-boolean v2, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v2, :cond_0

    .line 454
    :goto_0
    return-object v1

    .line 452
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v2}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 464
    iget-boolean v2, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v2, :cond_0

    .line 471
    :goto_0
    return-object v1

    .line 469
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v2}, Lcom/android/ims/internal/IImsCallSession;->getCallProfile()Lcom/android/ims/ImsCallProfile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 470
    :catch_0
    move-exception v0

    .line 471
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getCallSubstate()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 532
    iget-boolean v2, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v2, :cond_0

    .line 539
    :goto_0
    return v1

    .line 537
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v2}, Lcom/android/ims/internal/IImsCallSession;->getCallSubstate()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 538
    :catch_0
    move-exception v0

    .line 539
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getLocalCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 481
    iget-boolean v2, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v2, :cond_0

    .line 488
    :goto_0
    return-object v1

    .line 486
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v2}, Lcom/android/ims/internal/IImsCallSession;->getLocalCallProfile()Lcom/android/ims/ImsCallProfile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 549
    iget-boolean v2, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v2, :cond_0

    .line 556
    :goto_0
    return-object v1

    .line 554
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsCallSession;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 555
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getRemoteCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 498
    iget-boolean v2, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v2, :cond_0

    .line 505
    :goto_0
    return-object v1

    .line 503
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v2}, Lcom/android/ims/internal/IImsCallSession;->getRemoteCallProfile()Lcom/android/ims/ImsCallProfile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getSession()Lcom/android/ims/internal/IImsCallSession;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    return-object v0
.end method

.method public getState()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 567
    iget-boolean v2, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v2, :cond_0

    .line 574
    :goto_0
    return v1

    .line 572
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v2}, Lcom/android/ims/internal/IImsCallSession;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 573
    :catch_0
    move-exception v0

    .line 574
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 515
    iget-boolean v2, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v2, :cond_0

    .line 522
    :goto_0
    return-object v1

    .line 520
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v2}, Lcom/android/ims/internal/IImsCallSession;->getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public hold(Lcom/android/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    .prologue
    .line 749
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 757
    :goto_0
    return-void

    .line 754
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->hold(Lcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 755
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .locals 1
    .param p1, "participants"    # [Ljava/lang/String;

    .prologue
    .line 837
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 845
    :goto_0
    return-void

    .line 842
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->inviteParticipants([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 843
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isInCall()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 592
    iget-boolean v2, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v2, :cond_0

    .line 599
    :goto_0
    return v1

    .line 597
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v2}, Lcom/android/ims/internal/IImsCallSession;->isInCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 598
    :catch_0
    move-exception v0

    .line 599
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public isMultiparty()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 938
    iget-boolean v2, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v2, :cond_0

    .line 945
    :goto_0
    return v1

    .line 943
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v2}, Lcom/android/ims/internal/IImsCallSession;->isMultiparty()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 944
    :catch_0
    move-exception v0

    .line 945
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public merge()V
    .locals 1

    .prologue
    .line 784
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 792
    :goto_0
    return-void

    .line 789
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->merge()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 790
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public reject(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 716
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 724
    :goto_0
    return-void

    .line 721
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->reject(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 722
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .locals 1
    .param p1, "participants"    # [Ljava/lang/String;

    .prologue
    .line 855
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 863
    :goto_0
    return-void

    .line 860
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->removeParticipants([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 861
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public resume(Lcom/android/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    .prologue
    .line 767
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 775
    :goto_0
    return-void

    .line 772
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->resume(Lcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 773
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendDtmf(C)V
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 874
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 882
    :goto_0
    return-void

    .line 879
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/ims/internal/IImsCallSession;->sendDtmf(CLandroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 880
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendUssd(Ljava/lang/String;)V
    .locals 1
    .param p1, "ussdMessage"    # Ljava/lang/String;

    .prologue
    .line 922
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 930
    :goto_0
    return-void

    .line 927
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->sendUssd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 928
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setListener(Lcom/android/ims/internal/ImsCallSession$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/ims/internal/ImsCallSession$Listener;

    .prologue
    .line 611
    iput-object p1, p0, Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;

    .line 612
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "muted"    # Z

    .prologue
    .line 620
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 628
    :goto_0
    return-void

    .line 625
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->setMute(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 626
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public start(Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 642
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 650
    :goto_0
    return-void

    .line 647
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->start(Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 648
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public start([Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 664
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 672
    :goto_0
    return-void

    .line 669
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->startConference([Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 670
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startDtmf(C)V
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 892
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 900
    :goto_0
    return-void

    .line 897
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->startDtmf(C)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 898
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopDtmf()V
    .locals 1

    .prologue
    .line 906
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 914
    :goto_0
    return-void

    .line 911
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->stopDtmf()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 912
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public terminate(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 732
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 740
    :goto_0
    return-void

    .line 737
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 738
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1280
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[ImsCallSession objId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1281
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1282
    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1283
    invoke-virtual {p0}, Lcom/android/ims/internal/ImsCallSession;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/ims/internal/ImsCallSession$State;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1284
    const-string v1, " callId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1285
    invoke-virtual {p0}, Lcom/android/ims/internal/ImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1286
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1287
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(ILcom/android/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "callType"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    .prologue
    .line 802
    iget-boolean v0, p0, Lcom/android/ims/internal/ImsCallSession;->mClosed:Z

    if-eqz v0, :cond_0

    .line 810
    :goto_0
    return-void

    .line 807
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession;->miSession:Lcom/android/ims/internal/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsCallSession;->update(ILcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 808
    :catch_0
    move-exception v0

    goto :goto_0
.end method
