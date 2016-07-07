.class Lcom/android/server/am/AppErrorDialog$1;
.super Landroid/os/Handler;
.source "AppErrorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppErrorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppErrorDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppErrorDialog;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 103
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 104
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TRY_TO_SOLVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "packageName"

    iget-object v2, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    # getter for: Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/AppErrorDialog;->access$000(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 107
    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    # getter for: Lcom/android/server/am/AppErrorDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/am/AppErrorDialog;->access$100(Lcom/android/server/am/AppErrorDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 110
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    # getter for: Lcom/android/server/am/AppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v1}, Lcom/android/server/am/AppErrorDialog;->access$200(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    monitor-enter v2

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    # getter for: Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v1}, Lcom/android/server/am/AppErrorDialog;->access$000(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    # getter for: Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v1}, Lcom/android/server/am/AppErrorDialog;->access$000(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    iget-object v3, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    if-ne v1, v3, :cond_1

    .line 112
    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    # getter for: Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v1}, Lcom/android/server/am/AppErrorDialog;->access$000(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 114
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    # getter for: Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;
    invoke-static {v1}, Lcom/android/server/am/AppErrorDialog;->access$300(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/AppErrorResult;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 118
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/AppErrorDialog$1;->removeMessages(I)V

    .line 122
    iget-object v1, p0, Lcom/android/server/am/AppErrorDialog$1;->this$0:Lcom/android/server/am/AppErrorDialog;

    invoke-virtual {v1}, Lcom/android/server/am/AppErrorDialog;->dismiss()V

    .line 123
    return-void

    .line 114
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
