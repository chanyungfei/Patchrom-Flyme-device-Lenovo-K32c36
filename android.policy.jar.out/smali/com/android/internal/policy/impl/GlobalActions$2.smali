.class Lcom/android/internal/policy/impl/GlobalActions$2;
.super Lcom/android/internal/policy/impl/GlobalActions$ProfileChooseAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions;->createDialog()Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$2;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions$ProfileChooseAction;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    return-void
.end method


# virtual methods
.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 412
    const/4 v0, 0x0

    return-object v0
.end method

.method public onLongPress()Z
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x1

    return v0
.end method

.method public onPress()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$2;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->createProfileDialog()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$700(Lcom/android/internal/policy/impl/GlobalActions;)V

    .line 397
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x0

    return v0
.end method
