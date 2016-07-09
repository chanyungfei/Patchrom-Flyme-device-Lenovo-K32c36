.class Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;
.super Lcom/android/ims/internal/ImsCallSession$Listener;
.source "ImsCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsCallSessionListenerProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/ImsCall;


# direct methods
.method private constructor <init>(Lcom/android/ims/ImsCall;)V
    .locals 0

    .prologue
    .line 2147
    iput-object p1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-direct {p0}, Lcom/android/ims/internal/ImsCallSession$Listener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/ims/ImsCall;
    .param p2, "x1"    # Lcom/android/ims/ImsCall$1;

    .prologue
    .line 2147
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;-><init>(Lcom/android/ims/ImsCall;)V

    return-void
.end method


# virtual methods
.method public callSessionConferenceExtendFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 2707
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2708
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionConferenceExtendFailed :: not supported for transient conference session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2732
    :cond_0
    :goto_0
    return-void

    .line 2713
    :cond_1
    # getter for: Lcom/android/ims/ImsCall;->DBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2714
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionConferenceExtendFailed :: session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reasonInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2720
    :cond_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v3

    .line 2721
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 2722
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v4, 0x0

    # setter for: Lcom/android/ims/ImsCall;->mUpdateRequest:I
    invoke-static {v2, v4}, Lcom/android/ims/ImsCall;->access$1102(Lcom/android/ims/ImsCall;I)I

    .line 2723
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2725
    if-eqz v0, :cond_0

    .line 2727
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v2, p2}, Lcom/android/ims/ImsCall$Listener;->onCallConferenceExtendFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2728
    :catch_0
    move-exception v1

    .line 2729
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionConferenceExtendFailed :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2723
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public callSessionConferenceExtendReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 6
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "newSession"    # Lcom/android/ims/internal/ImsCallSession;
    .param p3, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 2737
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v3, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2738
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callSessionConferenceExtendReceived :: not supported for transient conference session="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2768
    :cond_0
    :goto_0
    return-void

    .line 2743
    :cond_1
    # getter for: Lcom/android/ims/ImsCall;->DBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2744
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callSessionConferenceExtendReceived :: session="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newSession="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", profile="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2748
    :cond_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->createNewCall(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCall;
    invoke-static {v3, p2, p3}, Lcom/android/ims/ImsCall;->access$2300(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCall;

    move-result-object v1

    .line 2750
    .local v1, "newCall":Lcom/android/ims/ImsCall;
    if-eqz v1, :cond_0

    .line 2757
    iget-object v4, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v4

    .line 2758
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v3}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 2759
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2761
    if-eqz v0, :cond_0

    .line 2763
    :try_start_1
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v3, v1}, Lcom/android/ims/ImsCall$Listener;->onCallConferenceExtendReceived(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2764
    :catch_0
    move-exception v2

    .line 2765
    .local v2, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v4, "callSessionConferenceExtendReceived :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v2}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2759
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public callSessionConferenceExtended(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 6
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "newSession"    # Lcom/android/ims/internal/ImsCallSession;
    .param p3, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 2670
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v3, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2671
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callSessionConferenceExtended :: not supported for transient conference session="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2702
    :cond_0
    :goto_0
    return-void

    .line 2676
    :cond_1
    # getter for: Lcom/android/ims/ImsCall;->DBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2677
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callSessionConferenceExtended :: session="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newSession="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", profile="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2681
    :cond_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->createNewCall(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCall;
    invoke-static {v3, p2, p3}, Lcom/android/ims/ImsCall;->access$2300(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCall;

    move-result-object v1

    .line 2683
    .local v1, "newCall":Lcom/android/ims/ImsCall;
    if-nez v1, :cond_3

    .line 2684
    new-instance v3, Lcom/android/ims/ImsReasonInfo;

    invoke-direct {v3}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {p0, p1, v3}, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->callSessionConferenceExtendFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 2690
    :cond_3
    iget-object v4, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v4

    .line 2691
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v3}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 2692
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v5, 0x0

    # setter for: Lcom/android/ims/ImsCall;->mUpdateRequest:I
    invoke-static {v3, v5}, Lcom/android/ims/ImsCall;->access$1102(Lcom/android/ims/ImsCall;I)I

    .line 2693
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2695
    if-eqz v0, :cond_0

    .line 2697
    :try_start_1
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v3, v1}, Lcom/android/ims/ImsCall$Listener;->onCallConferenceExtended(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2698
    :catch_0
    move-exception v2

    .line 2699
    .local v2, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v4, "callSessionConferenceExtended :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v2}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2693
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public callSessionConferenceStateUpdated(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsConferenceState;)V
    .locals 3
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "state"    # Lcom/android/ims/ImsConferenceState;

    .prologue
    .line 2885
    # getter for: Lcom/android/ims/ImsCall;->DBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2886
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionConferenceStateUpdated :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2890
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, p2}, Lcom/android/ims/ImsCall;->conferenceStateUpdated(Lcom/android/ims/ImsConferenceState;)V

    .line 2891
    return-void
.end method

.method public callSessionHandover(Lcom/android/ims/internal/ImsCallSession;IILcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 2946
    # getter for: Lcom/android/ims/ImsCall;->DBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2947
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionHandover :: session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", srcAccessTech="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", targetAccessTech="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reasonInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2954
    :cond_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v3

    .line 2955
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 2956
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2958
    if-eqz v0, :cond_1

    .line 2960
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v2, p2, p3, p4}, Lcom/android/ims/ImsCall$Listener;->onCallHandover(Lcom/android/ims/ImsCall;IILcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2966
    :cond_1
    :goto_0
    return-void

    .line 2956
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2962
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    .line 2963
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionHandover :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public callSessionHandoverFailed(Lcom/android/ims/internal/ImsCallSession;IILcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 2971
    # getter for: Lcom/android/ims/ImsCall;->DBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2972
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionHandoverFailed :: session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", srcAccessTech="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", targetAccessTech="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reasonInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2979
    :cond_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v3

    .line 2980
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 2981
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2983
    if-eqz v0, :cond_1

    .line 2985
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v2, p2, p3, p4}, Lcom/android/ims/ImsCall$Listener;->onCallHandoverFailed(Lcom/android/ims/ImsCall;IILcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2991
    :cond_1
    :goto_0
    return-void

    .line 2981
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2987
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    .line 2988
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionHandoverFailed :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public callSessionHeld(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 2252
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2253
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionHeld :: not supported for transient conference session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2286
    :cond_0
    :goto_0
    return-void

    .line 2257
    :cond_1
    # getter for: Lcom/android/ims/ImsCall;->DBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2258
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionHeld :: session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", profile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2263
    :cond_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v3

    .line 2264
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # setter for: Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v2, p2}, Lcom/android/ims/ImsCall;->access$502(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCallProfile;

    .line 2266
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mUpdateRequest:I
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$1100(Lcom/android/ims/ImsCall;)I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 2267
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->mergeInternal()V
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$1200(Lcom/android/ims/ImsCall;)V

    .line 2268
    monitor-exit v3

    goto :goto_0

    .line 2273
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2271
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v4, 0x0

    # setter for: Lcom/android/ims/ImsCall;->mUpdateRequest:I
    invoke-static {v2, v4}, Lcom/android/ims/ImsCall;->access$1102(Lcom/android/ims/ImsCall;I)I

    .line 2272
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 2273
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2275
    if-eqz v0, :cond_4

    .line 2277
    :try_start_2
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall$Listener;->onCallHeld(Lcom/android/ims/ImsCall;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 2283
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mCallGroup:Lcom/android/ims/internal/CallGroup;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$1300(Lcom/android/ims/ImsCall;)Lcom/android/ims/internal/CallGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2284
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v3, 0x1

    # invokes: Lcom/android/ims/ImsCall;->notifyConferenceStateUpdatedThroughGroupOwner(I)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$1400(Lcom/android/ims/ImsCall;I)V

    goto :goto_0

    .line 2278
    :catch_0
    move-exception v1

    .line 2279
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionHeld :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public callSessionHoldFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 6
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 2290
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v3, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2291
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callSessionHoldFailed :: not supported for transient conference session="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2333
    :cond_0
    :goto_0
    return-void

    .line 2296
    :cond_1
    # getter for: Lcom/android/ims/ImsCall;->DBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2297
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callSessionHoldFailed :: session="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", reasonInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2301
    :cond_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/ims/ImsCall;->access$1500(Lcom/android/ims/ImsCall;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 2302
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v5, 0x0

    # setter for: Lcom/android/ims/ImsCall;->mHold:Z
    invoke-static {v3, v5}, Lcom/android/ims/ImsCall;->access$1602(Lcom/android/ims/ImsCall;Z)Z

    .line 2303
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2305
    const/4 v0, 0x0

    .line 2308
    .local v0, "isHoldForMerge":Z
    iget-object v4, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v4

    .line 2309
    :try_start_1
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mUpdateRequest:I
    invoke-static {v3}, Lcom/android/ims/ImsCall;->access$1100(Lcom/android/ims/ImsCall;)I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    .line 2310
    const/4 v0, 0x1

    .line 2313
    :cond_3
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v5, 0x0

    # setter for: Lcom/android/ims/ImsCall;->mUpdateRequest:I
    invoke-static {v3, v5}, Lcom/android/ims/ImsCall;->access$1102(Lcom/android/ims/ImsCall;I)I

    .line 2314
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v3}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 2315
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2317
    if-eqz v0, :cond_4

    .line 2322
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->callSessionMergeFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    goto :goto_0

    .line 2303
    .end local v0    # "isHoldForMerge":Z
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 2315
    .restart local v0    # "isHoldForMerge":Z
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 2326
    .restart local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    :cond_4
    if-eqz v1, :cond_0

    .line 2328
    :try_start_4
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v3, p2}, Lcom/android/ims/ImsCall$Listener;->onCallHoldFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 2329
    :catch_0
    move-exception v2

    .line 2330
    .local v2, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v4, "callSessionHoldFailed :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v2}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public callSessionHoldReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 2337
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2338
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionHoldReceived :: not supported for transient conference session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2361
    :cond_0
    :goto_0
    return-void

    .line 2343
    :cond_1
    # getter for: Lcom/android/ims/ImsCall;->DBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2344
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionHoldReceived :: session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", profile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2349
    :cond_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v3

    .line 2350
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 2351
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # setter for: Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v2, p2}, Lcom/android/ims/ImsCall;->access$502(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCallProfile;

    .line 2352
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2354
    if-eqz v0, :cond_0

    .line 2356
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall$Listener;->onCallHoldReceived(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2357
    :catch_0
    move-exception v1

    .line 2358
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionHoldReceived :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2352
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public callSessionInviteParticipantsRequestDelivered(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 2772
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2773
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionInviteParticipantsRequestDelivered :: not supported for conference session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2795
    :cond_0
    :goto_0
    return-void

    .line 2778
    :cond_1
    # getter for: Lcom/android/ims/ImsCall;->DBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2779
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionInviteParticipantsRequestDelivered :: session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2784
    :cond_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v3

    .line 2785
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 2786
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2788
    if-eqz v0, :cond_0

    .line 2790
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall$Listener;->onCallInviteParticipantsRequestDelivered(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2791
    :catch_0
    move-exception v1

    .line 2792
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionInviteParticipantsRequestDelivered :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2786
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public callSessionInviteParticipantsRequestFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 2800
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2801
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionInviteParticipantsRequestFailed :: not supported for conference session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2824
    :cond_0
    :goto_0
    return-void

    .line 2806
    :cond_1
    # getter for: Lcom/android/ims/ImsCall;->DBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2807
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionInviteParticipantsRequestFailed :: session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reasonInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2813
    :cond_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v3

    .line 2814
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 2815
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2817
    if-eqz v0, :cond_0

    .line 2819
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v2, p2}, Lcom/android/ims/ImsCall$Listener;->onCallInviteParticipantsRequestFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2820
    :catch_0
    move-exception v1

    .line 2821
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionInviteParticipantsRequestFailed :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2815
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public callSessionMergeComplete(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 4
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 2510
    # getter for: Lcom/android/ims/ImsCall;->DBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2511
    if-nez p1, :cond_2

    const-string v0, "null"

    .line 2512
    .local v0, "sessionString":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callSessionMergeComplete :: session="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2514
    .end local v0    # "sessionString":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mUpdateRequest:I
    invoke-static {v1}, Lcom/android/ims/ImsCall;->access$1100(Lcom/android/ims/ImsCall;)I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    .line 2516
    # getter for: Lcom/android/ims/ImsCall;->DBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2517
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v2, "callSessionMergeComplete :: no merge in progress."

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2524
    :cond_1
    :goto_1
    return-void

    .line 2511
    :cond_2
    invoke-virtual {p1}, Lcom/android/ims/internal/ImsCallSession;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2523
    :cond_3
    iget-object v1, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->processMergeComplete()V
    invoke-static {v1}, Lcom/android/ims/ImsCall;->access$1900(Lcom/android/ims/ImsCall;)V

    goto :goto_1
.end method

.method public callSessionMergeFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 6
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 2528
    # getter for: Lcom/android/ims/ImsCall;->DBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2529
    if-nez p1, :cond_3

    const-string v2, "null"

    .line 2530
    .local v2, "sessionString":Ljava/lang/String;
    :goto_0
    if-nez p2, :cond_4

    const-string v1, "null"

    .line 2531
    .local v1, "reasonInfoString":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callSessionMergeFailed :: session="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", reasonInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2535
    .end local v1    # "reasonInfoString":Ljava/lang/String;
    .end local v2    # "sessionString":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mCallGroup:Lcom/android/ims/internal/CallGroup;
    invoke-static {v3}, Lcom/android/ims/ImsCall;->access$1300(Lcom/android/ims/ImsCall;)Lcom/android/ims/internal/CallGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/ims/internal/CallGroup;->getNeutralReferrer()Lcom/android/ims/internal/ICall;

    move-result-object v0

    check-cast v0, Lcom/android/ims/ImsCall;

    .line 2536
    .local v0, "neutralReferrer":Lcom/android/ims/ImsCall;
    if-eqz v0, :cond_2

    .line 2537
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mCallGroup:Lcom/android/ims/internal/CallGroup;
    invoke-static {v3}, Lcom/android/ims/ImsCall;->access$1300(Lcom/android/ims/ImsCall;)Lcom/android/ims/internal/CallGroup;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/ims/internal/CallGroup;->removeReferrer(Lcom/android/ims/internal/ICall;)V

    .line 2541
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 2542
    # getter for: Lcom/android/ims/ImsCall;->DBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2543
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v4, "Setting neutral referrer\'s callgroup to null."

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2545
    :cond_1
    const/4 v3, 0x0

    # setter for: Lcom/android/ims/ImsCall;->mCallGroup:Lcom/android/ims/internal/CallGroup;
    invoke-static {v0, v3}, Lcom/android/ims/ImsCall;->access$1302(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/CallGroup;)Lcom/android/ims/internal/CallGroup;

    .line 2553
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->destroyCallGroup()V
    invoke-static {v3}, Lcom/android/ims/ImsCall;->access$2000(Lcom/android/ims/ImsCall;)V

    .line 2557
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->processMergeFailed(Lcom/android/ims/ImsReasonInfo;)V
    invoke-static {v3, p2}, Lcom/android/ims/ImsCall;->access$900(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V

    .line 2558
    return-void

    .line 2529
    .end local v0    # "neutralReferrer":Lcom/android/ims/ImsCall;
    :cond_3
    invoke-virtual {p1}, Lcom/android/ims/internal/ImsCallSession;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2530
    .restart local v2    # "sessionString":Ljava/lang/String;
    :cond_4
    invoke-virtual {p2}, Lcom/android/ims/ImsReasonInfo;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2547
    .end local v2    # "sessionString":Ljava/lang/String;
    .restart local v0    # "neutralReferrer":Lcom/android/ims/ImsCall;
    :cond_5
    # getter for: Lcom/android/ims/ImsCall;->DBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2548
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v4, "Background call is a multiparty call with other referrers, and should not be disturbed."

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public callSessionMergeStarted(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "newSession"    # Lcom/android/ims/internal/ImsCallSession;
    .param p3, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 2462
    # getter for: Lcom/android/ims/ImsCall;->DBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2463
    if-nez p1, :cond_2

    const-string v1, "null"

    .line 2464
    .local v1, "sessionString":Ljava/lang/String;
    :goto_0
    if-nez p2, :cond_3

    const-string v0, "null"

    .line 2465
    .local v0, "newSessionString":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionMergeStarted :: session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newSession="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", profile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2469
    .end local v0    # "newSessionString":Ljava/lang/String;
    .end local v1    # "sessionString":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mUpdateRequest:I
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$1100(Lcom/android/ims/ImsCall;)I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_4

    .line 2471
    # getter for: Lcom/android/ims/ImsCall;->DBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2472
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionMergeStarted :: no merge in progress."

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2505
    :cond_1
    :goto_2
    return-void

    .line 2463
    :cond_2
    invoke-virtual {p1}, Lcom/android/ims/internal/ImsCallSession;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2464
    .restart local v1    # "sessionString":Ljava/lang/String;
    :cond_3
    invoke-virtual {p2}, Lcom/android/ims/internal/ImsCallSession;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2481
    .end local v1    # "sessionString":Ljava/lang/String;
    :cond_4
    if-nez p1, :cond_5

    .line 2485
    # getter for: Lcom/android/ims/ImsCall;->DBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2486
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionMergeStarted :: merging into existing ImsCallSession"

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    goto :goto_2

    .line 2491
    :cond_5
    # getter for: Lcom/android/ims/ImsCall;->DBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2492
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionMergeStarted ::  setting our transient ImsCallSession"

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2498
    :cond_6
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v3

    .line 2501
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # setter for: Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;
    invoke-static {v2, p2}, Lcom/android/ims/ImsCall;->access$1702(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession;

    .line 2502
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$1700(Lcom/android/ims/ImsCall;)Lcom/android/ims/internal/ImsCallSession;

    move-result-object v2

    iget-object v4, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->createCallSessionListener()Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v4}, Lcom/android/ims/ImsCall;->access$1800(Lcom/android/ims/ImsCall;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/ims/internal/ImsCallSession;->setListener(Lcom/android/ims/internal/ImsCallSession$Listener;)V

    .line 2503
    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public callSessionProgressing(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsStreamMediaProfile;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    .prologue
    .line 2150
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2151
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionProgressing :: not supported for transient conference session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2174
    :cond_0
    :goto_0
    return-void

    .line 2156
    :cond_1
    # getter for: Lcom/android/ims/ImsCall;->DBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2157
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionProgressing :: session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", profile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2162
    :cond_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v3

    .line 2163
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 2164
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$500(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCallProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    invoke-virtual {v2, p2}, Lcom/android/ims/ImsStreamMediaProfile;->copyFrom(Lcom/android/ims/ImsStreamMediaProfile;)V

    .line 2165
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2167
    if-eqz v0, :cond_0

    .line 2169
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall$Listener;->onCallProgressing(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2170
    :catch_0
    move-exception v1

    .line 2171
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionProgressing :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2165
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public callSessionRemoveParticipantsRequestDelivered(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 2828
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2829
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionRemoveParticipantsRequestDelivered :: not supported for conference session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2851
    :cond_0
    :goto_0
    return-void

    .line 2834
    :cond_1
    # getter for: Lcom/android/ims/ImsCall;->DBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2835
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionRemoveParticipantsRequestDelivered :: session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2840
    :cond_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v3

    .line 2841
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 2842
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2844
    if-eqz v0, :cond_0

    .line 2846
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall$Listener;->onCallRemoveParticipantsRequestDelivered(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2847
    :catch_0
    move-exception v1

    .line 2848
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionRemoveParticipantsRequestDelivered :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2842
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public callSessionRemoveParticipantsRequestFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 2856
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2857
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionRemoveParticipantsRequestFailed :: not supported for conference session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2880
    :cond_0
    :goto_0
    return-void

    .line 2862
    :cond_1
    # getter for: Lcom/android/ims/ImsCall;->DBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2863
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionRemoveParticipantsRequestFailed :: session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reasonInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2869
    :cond_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v3

    .line 2870
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 2871
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2873
    if-eqz v0, :cond_0

    .line 2875
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v2, p2}, Lcom/android/ims/ImsCall$Listener;->onCallRemoveParticipantsRequestFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2876
    :catch_0
    move-exception v1

    .line 2877
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionRemoveParticipantsRequestFailed :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2871
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public callSessionResumeFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 2399
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2400
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionResumeFailed :: not supported for transient conference session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2428
    :cond_0
    :goto_0
    return-void

    .line 2405
    :cond_1
    # getter for: Lcom/android/ims/ImsCall;->DBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2406
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionResumeFailed :: session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reasonInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2410
    :cond_2
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$1500(Lcom/android/ims/ImsCall;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2411
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v4, 0x1

    # setter for: Lcom/android/ims/ImsCall;->mHold:Z
    invoke-static {v2, v4}, Lcom/android/ims/ImsCall;->access$1602(Lcom/android/ims/ImsCall;Z)Z

    .line 2412
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2416
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v3

    .line 2417
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 2418
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v4, 0x0

    # setter for: Lcom/android/ims/ImsCall;->mUpdateRequest:I
    invoke-static {v2, v4}, Lcom/android/ims/ImsCall;->access$1102(Lcom/android/ims/ImsCall;I)I

    .line 2419
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2421
    if-eqz v0, :cond_0

    .line 2423
    :try_start_2
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v2, p2}, Lcom/android/ims/ImsCall$Listener;->onCallResumeFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2424
    :catch_0
    move-exception v1

    .line 2425
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionResumeFailed :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2412
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 2419
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method public callSessionResumeReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 2432
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2433
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionResumeReceived :: not supported for transient conference session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2457
    :cond_0
    :goto_0
    return-void

    .line 2438
    :cond_1
    # getter for: Lcom/android/ims/ImsCall;->DBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2439
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionResumeReceived :: session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", profile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2445
    :cond_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v3

    .line 2446
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 2447
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # setter for: Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v2, p2}, Lcom/android/ims/ImsCall;->access$502(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCallProfile;

    .line 2448
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2450
    if-eqz v0, :cond_0

    .line 2452
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall$Listener;->onCallResumeReceived(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2453
    :catch_0
    move-exception v1

    .line 2454
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionResumeReceived :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2448
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public callSessionResumed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 2365
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2366
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionResumed :: not supported for transient conference session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2395
    :cond_0
    :goto_0
    return-void

    .line 2371
    :cond_1
    # getter for: Lcom/android/ims/ImsCall;->DBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2372
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionResumed :: session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", profile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2377
    :cond_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v3

    .line 2378
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 2379
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # setter for: Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v2, p2}, Lcom/android/ims/ImsCall;->access$502(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCallProfile;

    .line 2380
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v4, 0x0

    # setter for: Lcom/android/ims/ImsCall;->mUpdateRequest:I
    invoke-static {v2, v4}, Lcom/android/ims/ImsCall;->access$1102(Lcom/android/ims/ImsCall;I)I

    .line 2381
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v4, 0x0

    # setter for: Lcom/android/ims/ImsCall;->mHold:Z
    invoke-static {v2, v4}, Lcom/android/ims/ImsCall;->access$1602(Lcom/android/ims/ImsCall;Z)Z

    .line 2382
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2384
    if-eqz v0, :cond_3

    .line 2386
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall$Listener;->onCallResumed(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2392
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mCallGroup:Lcom/android/ims/internal/CallGroup;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$1300(Lcom/android/ims/ImsCall;)Lcom/android/ims/internal/CallGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2393
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v3, 0x3

    # invokes: Lcom/android/ims/ImsCall;->notifyConferenceStateUpdatedThroughGroupOwner(I)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$1400(Lcom/android/ims/ImsCall;I)V

    goto :goto_0

    .line 2382
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2387
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    .line 2388
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionResumed :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public callSessionRetryErrorReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 2996
    # getter for: Lcom/android/ims/ImsCall;->DBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2997
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionRetryErrorReceived :: session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reasonInfo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3003
    :cond_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v3

    .line 3004
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 3005
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3007
    if-eqz v0, :cond_1

    .line 3009
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v2, p2}, Lcom/android/ims/ImsCall$Listener;->onCallRetryErrorReceived(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 3014
    :cond_1
    :goto_0
    return-void

    .line 3005
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 3010
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    .line 3011
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionRetryErrorReceived :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public callSessionStartFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 2206
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2207
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionStartFailed :: not supported for transient conference session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2231
    :cond_0
    :goto_0
    return-void

    .line 2212
    :cond_1
    # getter for: Lcom/android/ims/ImsCall;->DBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2213
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionStartFailed :: session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reasonInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2219
    :cond_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v3

    .line 2220
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 2221
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # setter for: Lcom/android/ims/ImsCall;->mLastReasonInfo:Lcom/android/ims/ImsReasonInfo;
    invoke-static {v2, p2}, Lcom/android/ims/ImsCall;->access$702(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)Lcom/android/ims/ImsReasonInfo;

    .line 2222
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2224
    if-eqz v0, :cond_0

    .line 2226
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v2, p2}, Lcom/android/ims/ImsCall$Listener;->onCallStartFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2227
    :catch_0
    move-exception v1

    .line 2228
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionStarted :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2222
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public callSessionStarted(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 2178
    # getter for: Lcom/android/ims/ImsCall;->DBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2179
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionStarted :: session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", profile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2182
    :cond_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2183
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionStarted :: transient conference session resumed session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2202
    :cond_1
    :goto_0
    return-void

    .line 2190
    :cond_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v3

    .line 2191
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 2192
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # setter for: Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v2, p2}, Lcom/android/ims/ImsCall;->access$502(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCallProfile;

    .line 2193
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2195
    if-eqz v0, :cond_1

    .line 2197
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall$Listener;->onCallStarted(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2198
    :catch_0
    move-exception v1

    .line 2199
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionStarted :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2193
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public callSessionSuppServiceReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsSuppServiceNotification;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "suppServiceInfo"    # Lcom/android/ims/ImsSuppServiceNotification;

    .prologue
    .line 3018
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3019
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionSuppServiceReceived :: not supported for transient conference session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3041
    :cond_0
    :goto_0
    return-void

    .line 3023
    :cond_1
    # getter for: Lcom/android/ims/ImsCall;->DBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3024
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionSuppServiceReceived :: session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", suppServiceInfo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 3030
    :cond_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v3

    .line 3031
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 3032
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3034
    if-eqz v0, :cond_0

    .line 3036
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v2, p2}, Lcom/android/ims/ImsCall$Listener;->onCallSuppServiceReceived(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsSuppServiceNotification;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3037
    :catch_0
    move-exception v1

    .line 3038
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionSuppServiceReceived :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3032
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public callSessionTerminated(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 2235
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;
    invoke-static {v0}, Lcom/android/ims/ImsCall;->access$800(Lcom/android/ims/ImsCall;)Lcom/android/ims/internal/ImsCallSession;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 2236
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v0, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2237
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->processMergeFailed(Lcom/android/ims/ImsReasonInfo;)V
    invoke-static {v0, p2}, Lcom/android/ims/ImsCall;->access$900(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V

    .line 2238
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v1, "callSessionTerminated :: for transient session"

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2248
    :cond_0
    :goto_0
    return-void

    .line 2243
    :cond_1
    # getter for: Lcom/android/ims/ImsCall;->DBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2244
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionTerminated :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reasonInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2247
    :cond_2
    iget-object v0, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->processCallTerminated(Lcom/android/ims/ImsReasonInfo;)V
    invoke-static {v0, p2}, Lcom/android/ims/ImsCall;->access$1000(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V

    goto :goto_0
.end method

.method public callSessionTtyModeReceived(Lcom/android/ims/internal/ImsCallSession;I)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "mode"    # I

    .prologue
    .line 2924
    # getter for: Lcom/android/ims/ImsCall;->DBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2925
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionTtyModeReceived :: session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2931
    :cond_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v3

    .line 2932
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 2933
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2935
    if-eqz v0, :cond_1

    .line 2937
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v2, p2}, Lcom/android/ims/ImsCall$Listener;->onCallSessionTtyModeReceived(Lcom/android/ims/ImsCall;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2942
    :cond_1
    :goto_0
    return-void

    .line 2933
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2938
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    .line 2939
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionTtyModeReceived :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public callSessionUpdateFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 2610
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2611
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionUpdateFailed :: not supported for transient conference session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2635
    :cond_0
    :goto_0
    return-void

    .line 2616
    :cond_1
    # getter for: Lcom/android/ims/ImsCall;->DBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2617
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionUpdateFailed :: session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reasonInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2623
    :cond_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v3

    .line 2624
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 2625
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v4, 0x0

    # setter for: Lcom/android/ims/ImsCall;->mUpdateRequest:I
    invoke-static {v2, v4}, Lcom/android/ims/ImsCall;->access$1102(Lcom/android/ims/ImsCall;I)I

    .line 2626
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2628
    if-eqz v0, :cond_0

    .line 2630
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v2, p2}, Lcom/android/ims/ImsCall$Listener;->onCallUpdateFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2631
    :catch_0
    move-exception v1

    .line 2632
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionUpdateFailed :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2626
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public callSessionUpdateReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 2639
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2640
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionUpdateReceived :: not supported for transient conference session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2665
    :cond_0
    :goto_0
    return-void

    .line 2645
    :cond_1
    # getter for: Lcom/android/ims/ImsCall;->DBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2646
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionUpdateReceived :: session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", profile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2652
    :cond_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v3

    .line 2653
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 2654
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # setter for: Lcom/android/ims/ImsCall;->mProposedCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v2, p2}, Lcom/android/ims/ImsCall;->access$2202(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCallProfile;

    .line 2655
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const/4 v4, 0x6

    # setter for: Lcom/android/ims/ImsCall;->mUpdateRequest:I
    invoke-static {v2, v4}, Lcom/android/ims/ImsCall;->access$1102(Lcom/android/ims/ImsCall;I)I

    .line 2656
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2658
    if-eqz v0, :cond_0

    .line 2660
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v2}, Lcom/android/ims/ImsCall$Listener;->onCallUpdateReceived(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2661
    :catch_0
    move-exception v1

    .line 2662
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionUpdateReceived :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2656
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public callSessionUpdated(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 6
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 2562
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v3, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2563
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callSessionUpdated :: not supported for transient conference session="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2606
    :cond_0
    :goto_0
    return-void

    .line 2568
    :cond_1
    # getter for: Lcom/android/ims/ImsCall;->DBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2569
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callSessionUpdated :: session="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", profile="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2573
    :cond_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v3}, Lcom/android/ims/ImsCall;->getCallGroup()Lcom/android/ims/internal/CallGroup;

    move-result-object v0

    .line 2579
    .local v0, "callGroup":Lcom/android/ims/internal/CallGroup;
    invoke-virtual {p1}, Lcom/android/ims/internal/ImsCallSession;->isMultiparty()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/android/ims/internal/ImsCallSession;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    if-nez v0, :cond_3

    .line 2583
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/ims/ImsCall;->access$1500(Lcom/android/ims/ImsCall;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 2584
    :try_start_0
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    iget-object v5, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->createCallGroup(Lcom/android/ims/ImsCall;)V
    invoke-static {v3, v5}, Lcom/android/ims/ImsCall;->access$2100(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V

    .line 2585
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2587
    iget-object v4, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v4

    .line 2588
    :try_start_1
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # setter for: Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;
    invoke-static {v3, p1}, Lcom/android/ims/ImsCall;->access$802(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession;

    .line 2589
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2591
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->processMergeComplete()V
    invoke-static {v3}, Lcom/android/ims/ImsCall;->access$1900(Lcom/android/ims/ImsCall;)V

    .line 2594
    :cond_3
    iget-object v4, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v4

    .line 2595
    :try_start_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v3}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v1

    .line 2596
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # setter for: Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;
    invoke-static {v3, p2}, Lcom/android/ims/ImsCall;->access$502(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCallProfile;

    .line 2597
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2599
    if-eqz v1, :cond_0

    .line 2601
    :try_start_3
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v1, v3}, Lcom/android/ims/ImsCall$Listener;->onCallUpdated(Lcom/android/ims/ImsCall;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 2602
    :catch_0
    move-exception v2

    .line 2603
    .local v2, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v4, "callSessionUpdated :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v3, v4, v2}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2585
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 2589
    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v3

    .line 2597
    :catchall_2
    move-exception v3

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v3
.end method

.method public callSessionUssdMessageReceived(Lcom/android/ims/internal/ImsCallSession;ILjava/lang/String;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "mode"    # I
    .param p3, "ussdMessage"    # Ljava/lang/String;

    .prologue
    .line 2896
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # invokes: Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    invoke-static {v2, p1}, Lcom/android/ims/ImsCall;->access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2897
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionUssdMessageReceived :: not supported for transient conference session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2920
    :cond_0
    :goto_0
    return-void

    .line 2902
    :cond_1
    # getter for: Lcom/android/ims/ImsCall;->DBG:Z
    invoke-static {}, Lcom/android/ims/ImsCall;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2903
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callSessionUssdMessageReceived :: session="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ussdMessage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/ims/ImsCall;->access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    .line 2909
    :cond_2
    iget-object v3, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    monitor-enter v3

    .line 2910
    :try_start_0
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    # getter for: Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v2}, Lcom/android/ims/ImsCall;->access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v0

    .line 2911
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2913
    if-eqz v0, :cond_0

    .line 2915
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v2, p2, p3}, Lcom/android/ims/ImsCall$Listener;->onCallUssdMessageReceived(Lcom/android/ims/ImsCall;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2916
    :catch_0
    move-exception v1

    .line 2917
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->this$0:Lcom/android/ims/ImsCall;

    const-string v3, "callSessionUssdMessageReceived :: "

    # invokes: Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v1}, Lcom/android/ims/ImsCall;->access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2911
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
