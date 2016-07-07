.class final Lcom/android/server/power/ShutdownThread$3;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cb:Landroid/widget/CheckBox;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/widget/CheckBox;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$3;->val$cb:Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/android/server/power/ShutdownThread$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x1

    .line 311
    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$3;->val$cb:Landroid/widget/CheckBox;

    if-eqz v3, :cond_0

    .line 312
    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$3;->val$cb:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 313
    .local v2, "isChecked":Z
    if-eqz v2, :cond_0

    .line 315
    new-instance v1, Landroid/content/Intent;

    const-string v3, "org.codeaurora.action.QUICKBOOT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "mode"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 318
    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$3;->val$context:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "isChecked":Z
    :goto_0
    return-void

    .line 319
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "isChecked":Z
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "ShutdownThread"

    const-string v4, "Can not find quickboot apk!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    # setter for: Lcom/android/server/power/ShutdownThread;->isConfirmed:Z
    invoke-static {v5}, Lcom/android/server/power/ShutdownThread;->access$002(Z)Z

    .line 322
    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$3;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V
    invoke-static {v3}, Lcom/android/server/power/ShutdownThread;->access$100(Landroid/content/Context;)V

    goto :goto_0

    .line 328
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "isChecked":Z
    :cond_0
    # setter for: Lcom/android/server/power/ShutdownThread;->isConfirmed:Z
    invoke-static {v5}, Lcom/android/server/power/ShutdownThread;->access$002(Z)Z

    .line 330
    # getter for: Lcom/android/server/power/ShutdownThread;->mReboot:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$200()Z

    move-result v3

    if-nez v3, :cond_1

    .line 331
    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$3;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/server/power/ShutdownThread;->recoverSystemProvivion(Landroid/content/Context;)V
    invoke-static {v3}, Lcom/android/server/power/ShutdownThread;->access$300(Landroid/content/Context;)V

    .line 335
    :cond_1
    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$3;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/server/power/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V
    invoke-static {v3}, Lcom/android/server/power/ShutdownThread;->access$100(Landroid/content/Context;)V

    .line 336
    const-string v3, "ShutdownThread"

    const-string v4, "[SHTDWN] shutdown, confirm=YES"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
