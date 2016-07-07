.class Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;
.super Ljava/lang/Object;
.source "MediaSessionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;)V
    .locals 0

    .prologue
    .line 1267
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 1269
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    # setter for: Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mHookKeyDownCount:I
    invoke-static {v2, v3}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->access$3202(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;I)I

    .line 1270
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    # setter for: Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z
    invoke-static {v2, v5}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->access$3302(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Z)Z

    .line 1272
    new-instance v0, Landroid/view/KeyEvent;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    # getter for: Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mHookKeyCode:I
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->access$3400(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;)I

    move-result v2

    invoke-direct {v0, v3, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1273
    .local v0, "keyEvent_D":Landroid/view/KeyEvent;
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    # getter for: Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mNeedWakeLock:Z
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->access$3500(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    # getter for: Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mSessionRecord:Lcom/android/server/media/MediaSessionRecord;
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->access$3600(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v4

    # invokes: Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V
    invoke-static {v2, v0, v3, v4}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->access$3700(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V

    .line 1275
    new-instance v1, Landroid/view/KeyEvent;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    # getter for: Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mHookKeyCode:I
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->access$3400(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;)I

    move-result v2

    invoke-direct {v1, v5, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1276
    .local v1, "keyEvent_U":Landroid/view/KeyEvent;
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    # getter for: Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mNeedWakeLock:Z
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->access$3500(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    # getter for: Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mSessionRecord:Lcom/android/server/media/MediaSessionRecord;
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->access$3600(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v4

    # invokes: Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V
    invoke-static {v2, v1, v3, v4}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->access$3700(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V

    .line 1277
    const-string v2, "MediaSessionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send Key Code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    # getter for: Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mHookKeyCode:I
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->access$3400(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    return-void
.end method
