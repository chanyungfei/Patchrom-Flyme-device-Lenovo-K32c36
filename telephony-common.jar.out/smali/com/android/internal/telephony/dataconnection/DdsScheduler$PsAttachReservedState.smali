.class Lcom/android/internal/telephony/dataconnection/DdsScheduler$PsAttachReservedState;
.super Lcom/android/internal/util/State;
.source "DdsScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DdsScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PsAttachReservedState"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "DdsScheduler[PSAttachReservedState]"


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DdsScheduler;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$PsAttachReservedState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Lcom/android/internal/telephony/dataconnection/DdsScheduler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DdsScheduler;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DdsScheduler$1;

    .prologue
    .line 513
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler$PsAttachReservedState;-><init>(Lcom/android/internal/telephony/dataconnection/DdsScheduler;)V

    return-void
.end method

.method private handleOtherSubRequests()V
    .locals 4

    .prologue
    .line 517
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$PsAttachReservedState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->getFirstWaitingRequest()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 518
    .local v0, "nr":Landroid/net/NetworkRequest;
    if-nez v0, :cond_1

    .line 519
    const-string v1, "DdsScheduler[PSAttachReservedState]"

    const-string v2, "No more requests to accept"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$PsAttachReservedState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$PsAttachReservedState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    # getter for: Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mDdsAutoRevertState:Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsAutoRevertState;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->access$1400(Lcom/android/internal/telephony/dataconnection/DdsScheduler;)Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsAutoRevertState;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/dataconnection/DdsScheduler;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->access$2200(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Lcom/android/internal/util/IState;)V

    .line 531
    :goto_0
    return-void

    .line 520
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$PsAttachReservedState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->getSubIdFromNetworkRequest(Landroid/net/NetworkRequest;)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$PsAttachReservedState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->getCurrentDds()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 521
    const-string v1, "DdsScheduler[PSAttachReservedState]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Next request is not for current on-demand PS sub(DSDA). nr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$PsAttachReservedState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->isAlreadyAccepted(Landroid/net/NetworkRequest;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 524
    const-string v1, "DdsScheduler[PSAttachReservedState]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Next request is already accepted on other sub in DSDA mode. nr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$PsAttachReservedState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$PsAttachReservedState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    # getter for: Lcom/android/internal/telephony/dataconnection/DdsScheduler;->mDdsReservedState:Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsReservedState;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->access$800(Lcom/android/internal/telephony/dataconnection/DdsScheduler;)Lcom/android/internal/telephony/dataconnection/DdsScheduler$DdsReservedState;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/dataconnection/DdsScheduler;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->access$2100(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 536
    const-string v0, "DdsScheduler[PSAttachReservedState]"

    const-string v1, "Enter"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$PsAttachReservedState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->acceptWaitingRequest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DdsScheduler$PsAttachReservedState;->handleOtherSubRequests()V

    .line 541
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 545
    const-string v0, "DdsScheduler[PSAttachReservedState]"

    const-string v1, "Exit"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$PsAttachReservedState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    # invokes: Lcom/android/internal/telephony/dataconnection/DdsScheduler;->requestPsDetach()V
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->access$2300(Lcom/android/internal/telephony/dataconnection/DdsScheduler;)V

    .line 550
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$PsAttachReservedState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->updateCurrentDds(Landroid/net/NetworkRequest;)V

    .line 551
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 555
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 580
    const-string v1, "DdsScheduler[PSAttachReservedState]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown msg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 557
    :sswitch_0
    const-string v1, "DdsScheduler[PSAttachReservedState]"

    const-string v3, "REQ_DDS_ALLOCATION"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkRequest;

    .line 560
    .local v0, "n":Landroid/net/NetworkRequest;
    const-string v1, "DdsScheduler[PSAttachReservedState]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Accepting request in dual-data mode, req = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$PsAttachReservedState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->notifyRequestAccepted(Landroid/net/NetworkRequest;)V

    move v1, v2

    .line 562
    goto :goto_0

    .line 567
    .end local v0    # "n":Landroid/net/NetworkRequest;
    :sswitch_1
    const-string v3, "DdsScheduler[PSAttachReservedState]"

    iget v1, p1, Landroid/os/Message;->what:I

    const v4, 0x84001

    if-ne v1, v4, :cond_1

    const-string v1, "REQ_DDS_FREE"

    :goto_1
    invoke-static {v3, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$PsAttachReservedState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->acceptWaitingRequest()Z

    move-result v1

    if-nez v1, :cond_0

    .line 573
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DdsScheduler$PsAttachReservedState;->handleOtherSubRequests()V

    :cond_0
    move v1, v2

    .line 576
    goto :goto_0

    .line 567
    :cond_1
    const-string v1, "EVENT_SET_DDS_DONE"

    goto :goto_1

    .line 555
    :sswitch_data_0
    .sparse-switch
        0x84000 -> :sswitch_0
        0x84001 -> :sswitch_1
        0x84007 -> :sswitch_1
    .end sparse-switch
.end method
