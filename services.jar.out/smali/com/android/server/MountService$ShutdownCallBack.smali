.class Lcom/android/server/MountService$ShutdownCallBack;
.super Lcom/android/server/MountService$UnmountCallBack;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShutdownCallBack"
.end annotation


# instance fields
.field mMountShutdownLatch:Lcom/android/server/MountService$MountShutdownLatch;

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;Lcom/android/server/MountService$MountShutdownLatch;)V
    .locals 2
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "mountShutdownLatch"    # Lcom/android/server/MountService$MountShutdownLatch;

    .prologue
    .line 521
    iput-object p1, p0, Lcom/android/server/MountService$ShutdownCallBack;->this$0:Lcom/android/server/MountService;

    .line 522
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;ZZ)V

    .line 523
    iput-object p3, p0, Lcom/android/server/MountService$ShutdownCallBack;->mMountShutdownLatch:Lcom/android/server/MountService$MountShutdownLatch;

    .line 524
    return-void
.end method


# virtual methods
.method handleFinished()V
    .locals 5

    .prologue
    .line 530
    const/4 v0, -0x1

    .line 531
    .local v0, "ret":I
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shutdown handleFinished:path= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/MountService$ShutdownCallBack;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "internal_sd_path=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "internal_sd_path"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v1, p0, Lcom/android/server/MountService$ShutdownCallBack;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->isSdcardInserted()Z
    invoke-static {v1}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/MountService$ShutdownCallBack;->path:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/MountService$ShutdownCallBack;->path:Ljava/lang/String;

    const-string v2, "internal_sd_path"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/MountService$ShutdownCallBack;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->isSdcardInserted()Z
    invoke-static {v1}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 533
    const/4 v0, -0x7

    .line 537
    :goto_0
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unmount completed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/MountService$ShutdownCallBack;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v1, p0, Lcom/android/server/MountService$ShutdownCallBack;->mMountShutdownLatch:Lcom/android/server/MountService$MountShutdownLatch;

    invoke-virtual {v1}, Lcom/android/server/MountService$MountShutdownLatch;->countDown()V

    .line 545
    return-void

    .line 535
    :cond_0
    iget-object v1, p0, Lcom/android/server/MountService$ShutdownCallBack;->this$0:Lcom/android/server/MountService;

    iget-object v2, p0, Lcom/android/server/MountService$ShutdownCallBack;->path:Ljava/lang/String;

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/android/server/MountService$ShutdownCallBack;->removeEncryption:Z

    # invokes: Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;ZZ)I
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/MountService;->access$100(Lcom/android/server/MountService;Ljava/lang/String;ZZ)I

    move-result v0

    goto :goto_0
.end method
