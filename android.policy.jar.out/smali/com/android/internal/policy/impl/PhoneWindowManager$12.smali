.class Lcom/android/internal/policy/impl/PhoneWindowManager$12;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 3608
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$12;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3612
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$12;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeKeyCode:I

    invoke-direct {v0, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    .line 3613
    .local v0, "keyEvent_D":Landroid/view/KeyEvent;
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$12;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dispatchVolumeKeyToService(Landroid/view/KeyEvent;)V

    .line 3615
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$12;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeKeyCode:I

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    .line 3616
    .local v1, "keyEvent_U":Landroid/view/KeyEvent;
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$12;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->dispatchVolumeKeyToService(Landroid/view/KeyEvent;)V

    .line 3617
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send Key Code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$12;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVolumeKeyCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3618
    return-void
.end method
