.class Lcom/android/server/SystemServer$3;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SystemServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SystemServer;


# direct methods
.method constructor <init>(Lcom/android/server/SystemServer;)V
    .locals 0

    .prologue
    .line 1414
    iput-object p1, p0, Lcom/android/server/SystemServer$3;->this$0:Lcom/android/server/SystemServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 1417
    iget-object v3, p0, Lcom/android/server/SystemServer$3;->this$0:Lcom/android/server/SystemServer;

    # getter for: Lcom/android/server/SystemServer;->bootPrecent:I
    invoke-static {v3}, Lcom/android/server/SystemServer;->access$300(Lcom/android/server/SystemServer;)I

    move-result v2

    .line 1418
    .local v2, "percent":I
    const-string v3, "persist.sys.first_time_boot"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1419
    .local v1, "firstBoot":Z
    :goto_0
    const/16 v3, 0x55

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/SystemServer$3;->this$0:Lcom/android/server/SystemServer;

    # getter for: Lcom/android/server/SystemServer;->isAddPreCrent:Z
    invoke-static {v3}, Lcom/android/server/SystemServer;->access$400(Lcom/android/server/SystemServer;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1420
    const-string v3, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BOOT precent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    if-eqz v1, :cond_0

    move v3, v4

    :goto_1
    add-int/2addr v2, v3

    .line 1422
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->setBootCompletePercent(I)V

    .line 1424
    if-eqz v1, :cond_1

    const-wide/16 v6, 0xfa0

    :goto_2
    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1425
    :catch_0
    move-exception v0

    .line 1426
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addBootPrecent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1421
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x4

    goto :goto_1

    .line 1424
    :cond_1
    const-wide/16 v6, 0x12c

    goto :goto_2

    .line 1429
    :cond_2
    return-void
.end method
