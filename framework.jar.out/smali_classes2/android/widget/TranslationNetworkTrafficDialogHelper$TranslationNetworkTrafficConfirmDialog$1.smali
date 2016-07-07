.class Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog$1;
.super Ljava/lang/Object;
.source "TranslationNetworkTrafficDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;->getNetworkTrafficWarningDialog()Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;


# direct methods
.method constructor <init>(Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog$1;->this$1:Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 136
    const/16 v0, 0x1000

    .line 137
    .local v0, "confirmState":I
    iget-object v1, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog$1;->this$1:Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;

    iget-object v1, v1, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;->this$0:Landroid/widget/TranslationNetworkTrafficDialogHelper;

    # getter for: Landroid/widget/TranslationNetworkTrafficDialogHelper;->mTranslationServiceHelper:Landroid/widget/TranslationViewHelper$TranslationServiceHelper;
    invoke-static {v1}, Landroid/widget/TranslationNetworkTrafficDialogHelper;->access$300(Landroid/widget/TranslationNetworkTrafficDialogHelper;)Landroid/widget/TranslationViewHelper$TranslationServiceHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog$1;->this$1:Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;

    iget-object v1, v1, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;->this$0:Landroid/widget/TranslationNetworkTrafficDialogHelper;

    # getter for: Landroid/widget/TranslationNetworkTrafficDialogHelper;->mTranslationServiceHelper:Landroid/widget/TranslationViewHelper$TranslationServiceHelper;
    invoke-static {v1}, Landroid/widget/TranslationNetworkTrafficDialogHelper;->access$300(Landroid/widget/TranslationNetworkTrafficDialogHelper;)Landroid/widget/TranslationViewHelper$TranslationServiceHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TranslationViewHelper$TranslationServiceHelper;->setNetworkTrafficWarningConfirmState(I)V

    .line 140
    :cond_0
    iget-object v1, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog$1;->this$1:Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;

    const/4 v2, 0x1

    # setter for: Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;->isPositiveButtonClickedWhenDismiss:Z
    invoke-static {v1, v2}, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;->access$402(Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;Z)Z

    .line 141
    iget-object v1, p0, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog$1;->this$1:Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;

    invoke-virtual {v1}, Landroid/widget/TranslationNetworkTrafficDialogHelper$TranslationNetworkTrafficConfirmDialog;->dismiss()V

    .line 142
    return-void
.end method
