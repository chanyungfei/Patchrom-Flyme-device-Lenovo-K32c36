.class Lcom/android/server/MountService$UnmountCallBack;
.super Ljava/lang/Object;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnmountCallBack"
.end annotation


# instance fields
.field final byUserSwitch:Z

.field final force:Z

.field final path:Ljava/lang/String;

.field final removeEncryption:Z

.field retries:I

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V
    .locals 1
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "force"    # Z
    .param p4, "removeEncryption"    # Z

    .prologue
    const/4 v0, 0x0

    .line 467
    iput-object p1, p0, Lcom/android/server/MountService$UnmountCallBack;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 468
    iput v0, p0, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    .line 469
    iput-object p2, p0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    .line 470
    iput-boolean p3, p0, Lcom/android/server/MountService$UnmountCallBack;->force:Z

    .line 471
    iput-boolean p4, p0, Lcom/android/server/MountService$UnmountCallBack;->removeEncryption:Z

    .line 472
    iput-boolean v0, p0, Lcom/android/server/MountService$UnmountCallBack;->byUserSwitch:Z

    .line 473
    return-void
.end method

.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;ZZZ)V
    .locals 1
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "force"    # Z
    .param p4, "removeEncryption"    # Z
    .param p5, "byUserSwitch"    # Z

    .prologue
    .line 476
    iput-object p1, p0, Lcom/android/server/MountService$UnmountCallBack;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    .line 478
    iput-object p2, p0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    .line 479
    iput-boolean p3, p0, Lcom/android/server/MountService$UnmountCallBack;->force:Z

    .line 480
    iput-boolean p4, p0, Lcom/android/server/MountService$UnmountCallBack;->removeEncryption:Z

    .line 481
    iput-boolean p5, p0, Lcom/android/server/MountService$UnmountCallBack;->byUserSwitch:Z

    .line 482
    return-void
.end method


# virtual methods
.method handleFinished()V
    .locals 5

    .prologue
    .line 487
    iget-object v1, p0, Lcom/android/server/MountService$UnmountCallBack;->this$0:Lcom/android/server/MountService;

    iget-object v2, p0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/android/server/MountService$UnmountCallBack;->removeEncryption:Z

    # invokes: Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;ZZ)I
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/MountService;->access$100(Lcom/android/server/MountService;Ljava/lang/String;ZZ)I

    .line 489
    iget-object v1, p0, Lcom/android/server/MountService$UnmountCallBack;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mUnmountSwap:Z
    invoke-static {v1}, Lcom/android/server/MountService;->access$200(Lcom/android/server/MountService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    :try_start_0
    const-string v1, "sys.sd.swapping"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :goto_0
    iget-object v1, p0, Lcom/android/server/MountService$UnmountCallBack;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V
    invoke-static {v1}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)V

    .line 496
    iget-object v1, p0, Lcom/android/server/MountService$UnmountCallBack;->this$0:Lcom/android/server/MountService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/MountService;->mUnmountSwap:Z
    invoke-static {v1, v2}, Lcom/android/server/MountService;->access$202(Lcom/android/server/MountService;Z)Z

    .line 497
    iget-object v1, p0, Lcom/android/server/MountService$UnmountCallBack;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->updateDefaultpath()V
    invoke-static {v1}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)V

    .line 498
    iget-object v1, p0, Lcom/android/server/MountService$UnmountCallBack;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->sendSDSwapIntent()V
    invoke-static {v1}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;)V

    .line 501
    :cond_0
    return-void

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "MountService"

    const-string v2, "IllegalArgumentException when set default path:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
