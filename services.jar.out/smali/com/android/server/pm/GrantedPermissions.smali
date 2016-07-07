.class Lcom/android/server/pm/GrantedPermissions;
.super Ljava/lang/Object;
.source "GrantedPermissions.java"


# instance fields
.field gids:[I

.field grantedPermissions:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field pkgFlags:I

.field pkgFlagsEx:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "pkgFlags"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Landroid/util/ArraySet;

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/server/pm/GrantedPermissions;->setFlags(I)V

    .line 33
    return-void
.end method

.method constructor <init>(II)V
    .locals 1
    .param p1, "pkgFlags"    # I
    .param p2, "pkgFlagsEx"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Landroid/util/ArraySet;

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/server/pm/GrantedPermissions;->setFlags(I)V

    .line 38
    invoke-virtual {p0, p2}, Lcom/android/server/pm/GrantedPermissions;->setFlagsEx(I)V

    .line 39
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/GrantedPermissions;)V
    .locals 2
    .param p1, "base"    # Lcom/android/server/pm/GrantedPermissions;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Landroid/util/ArraySet;

    .line 43
    iget v0, p1, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    iput v0, p0, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    .line 45
    iget v0, p1, Lcom/android/server/pm/GrantedPermissions;->pkgFlagsEx:I

    iput v0, p0, Lcom/android/server/pm/GrantedPermissions;->pkgFlagsEx:I

    .line 46
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v0, p0, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Landroid/util/ArraySet;

    .line 48
    iget-object v0, p1, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p1, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method setFlags(I)V
    .locals 0
    .param p1, "pkgFlags"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    .line 56
    return-void
.end method

.method setFlagsEx(I)V
    .locals 0
    .param p1, "pkgFlagsEx"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/android/server/pm/GrantedPermissions;->pkgFlagsEx:I

    .line 61
    return-void
.end method
