.class Lcom/android/server/MountService$5;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1323
    iput-object p1, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    iput-object p3, p0, Lcom/android/server/MountService$5;->val$path:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1326
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEvent: VolumeDiskInserted, start to mount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/MountService$5;->val$path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v2}, Lcom/android/server/MountService;->isUsbMassStorageEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1330
    iget-object v2, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    iget-object v3, p0, Lcom/android/server/MountService$5;->val$path:Ljava/lang/String;

    const-string v4, "ums"

    const/4 v5, 0x1

    # invokes: Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1345
    :cond_0
    :goto_0
    return-void

    .line 1333
    :cond_1
    iget-object v2, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    iget-object v3, p0, Lcom/android/server/MountService$5;->val$path:Ljava/lang/String;

    # invokes: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/MountService;->access$3100(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v1

    .local v1, "rc":I
    if-eqz v1, :cond_2

    .line 1334
    const-string v2, "MountService"

    const-string v3, "Insertion mount failed (%d)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    :cond_2
    iget-object v2, p0, Lcom/android/server/MountService$5;->val$path:Ljava/lang/String;

    # getter for: Lcom/android/server/MountService;->EXTERNAL_OTG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/MountService;->access$3200()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1337
    iget-object v2, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V
    invoke-static {v2}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)V

    .line 1338
    iget-object v2, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->updateDefaultpath()V
    invoke-static {v2}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)V

    .line 1339
    iget-object v2, p0, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->sendSDSwapIntent()V
    invoke-static {v2}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1342
    .end local v1    # "rc":I
    :catch_0
    move-exception v0

    .line 1343
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "MountService"

    const-string v3, "Failed to mount media on insertion"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
