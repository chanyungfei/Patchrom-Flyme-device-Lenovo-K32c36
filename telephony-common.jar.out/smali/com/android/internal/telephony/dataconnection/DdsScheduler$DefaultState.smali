.class Lcom/android/internal/telephony/dataconnection/DdsScheduler$DefaultState;
.super Lcom/android/internal/util/State;
.source "DdsScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DdsScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultState"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "DdsScheduler[DefaultState]"


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DdsScheduler;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DdsScheduler;Lcom/android/internal/telephony/dataconnection/DdsScheduler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DdsScheduler;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DdsScheduler$1;

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DefaultState;-><init>(Lcom/android/internal/telephony/dataconnection/DdsScheduler;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    .prologue
    .line 323
    return-void
.end method

.method public exit()V
    .locals 0

    .prologue
    .line 327
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 331
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 365
    :pswitch_0
    const-string v1, "DdsScheduler[DefaultState]"

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

    .line 369
    :goto_0
    return v4

    .line 333
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkRequest;

    .line 334
    .local v0, "nr":Landroid/net/NetworkRequest;
    const-string v1, "DdsScheduler[DefaultState]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_ADD_REQUEST = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->addRequest(Landroid/net/NetworkRequest;)V

    .line 336
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    const v3, 0x84000

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 341
    .end local v0    # "nr":Landroid/net/NetworkRequest;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkRequest;

    .line 342
    .restart local v0    # "nr":Landroid/net/NetworkRequest;
    const-string v1, "DdsScheduler[DefaultState]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_REMOVE_REQUEST"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->removeRequest(Landroid/net/NetworkRequest;)V

    .line 344
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->isSetDdsInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    const-string v1, "DdsScheduler[DefaultState]"

    const-string v2, "Set DDS in progress.Request will be freed later."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 347
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    const v3, 0x84001

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 353
    .end local v0    # "nr":Landroid/net/NetworkRequest;
    :pswitch_3
    const-string v1, "DdsScheduler[DefaultState]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REQ_DDS_ALLOCATION, currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    # invokes: Lcom/android/internal/telephony/dataconnection/DdsScheduler;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->access$600(Lcom/android/internal/telephony/dataconnection/DdsScheduler;)Lcom/android/internal/util/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 360
    :pswitch_4
    const-string v1, "DdsScheduler[DefaultState]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REQ_DDS_FREE, currentState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DdsScheduler$DefaultState;->this$0:Lcom/android/internal/telephony/dataconnection/DdsScheduler;

    # invokes: Lcom/android/internal/telephony/dataconnection/DdsScheduler;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DdsScheduler;->access$700(Lcom/android/internal/telephony/dataconnection/DdsScheduler;)Lcom/android/internal/util/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 331
    nop

    :pswitch_data_0
    .packed-switch 0x84000
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
