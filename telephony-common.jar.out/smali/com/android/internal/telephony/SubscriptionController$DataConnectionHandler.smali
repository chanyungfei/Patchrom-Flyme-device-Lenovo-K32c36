.class Lcom/android/internal/telephony/SubscriptionController$DataConnectionHandler;
.super Landroid/os/Handler;
.source "SubscriptionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataConnectionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionController;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/SubscriptionController;)V
    .locals 0

    .prologue
    .line 1554
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionController$DataConnectionHandler;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/SubscriptionController;Lcom/android/internal/telephony/SubscriptionController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/SubscriptionController;
    .param p2, "x1"    # Lcom/android/internal/telephony/SubscriptionController$1;

    .prologue
    .line 1554
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionController$DataConnectionHandler;-><init>(Lcom/android/internal/telephony/SubscriptionController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1557
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1567
    :goto_0
    return-void

    .line 1559
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1560
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController$DataConnectionHandler;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_SET_DEFAULT_DATA_DONE subId:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/internal/telephony/SubscriptionController;->access$000(Lcom/android/internal/telephony/SubscriptionController;Ljava/lang/String;)V

    .line 1561
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController$DataConnectionHandler;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    # invokes: Lcom/android/internal/telephony/SubscriptionController;->updateDataSubId(Landroid/os/AsyncResult;)V
    invoke-static {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->access$300(Lcom/android/internal/telephony/SubscriptionController;Landroid/os/AsyncResult;)V

    .line 1562
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController$DataConnectionHandler;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    # getter for: Lcom/android/internal/telephony/SubscriptionController;->mSetDdsInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/android/internal/telephony/SubscriptionController;->access$400(Lcom/android/internal/telephony/SubscriptionController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1563
    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionController$DataConnectionHandler;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    # getter for: Lcom/android/internal/telephony/SubscriptionController;->mSchedulerAc:Lcom/android/internal/telephony/dataconnection/DdsSchedulerAc;
    invoke-static {v1}, Lcom/android/internal/telephony/SubscriptionController;->access$500(Lcom/android/internal/telephony/SubscriptionController;)Lcom/android/internal/telephony/dataconnection/DdsSchedulerAc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DdsSchedulerAc;->notifySetDdsDone()V

    goto :goto_0

    .line 1557
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
