.class Lcom/android/internal/policy/impl/PhoneWindowManager$24$1;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$24;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$24;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$24;)V
    .locals 0

    .prologue
    .line 6148
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$24$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 6150
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$24$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$24;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$24;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    if-eqz v0, :cond_0

    .line 6151
    const-string v0, "WindowManager"

    const-string v1, "com.wingtech.settings.deviceinfo.reboot.request"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6152
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$24$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$24;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$24;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 6154
    :cond_0
    return-void
.end method
