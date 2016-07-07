.class Lcom/android/server/MountService$3;
.super Landroid/content/BroadcastReceiver;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0

    .prologue
    .line 949
    iput-object p1, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 952
    new-instance v6, Landroid/hardware/usb/UsbManager;

    invoke-direct {v6, v7, v7}, Landroid/hardware/usb/UsbManager;-><init>(Landroid/content/Context;Landroid/hardware/usb/IUsbManager;)V

    invoke-virtual {v6}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v3

    .line 953
    .local v3, "usbMode":Ljava/lang/String;
    const-string v6, "mass_storage"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 954
    .local v2, "isUmsMode":Z
    const-string v6, "connected"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "mass_storage"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v4

    .line 957
    .local v0, "available":Z
    :goto_0
    const-string v6, "persist.sys.ums"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 958
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    move v0, v4

    .line 961
    :cond_0
    :goto_1
    const-string v4, "configured"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 962
    .local v1, "configed":Z
    iget-object v4, p0, Lcom/android/server/MountService$3;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->notifyShareAvailabilityChange(ZZ)V
    invoke-static {v4, v0, v1}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;ZZ)V

    .line 966
    return-void

    .end local v0    # "available":Z
    .end local v1    # "configed":Z
    :cond_1
    move v0, v5

    .line 954
    goto :goto_0

    .restart local v0    # "available":Z
    :cond_2
    move v0, v5

    .line 958
    goto :goto_1
.end method
