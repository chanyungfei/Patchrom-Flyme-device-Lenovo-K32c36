.class public final Landroid/app/AlarmManager$AlarmPolicy;
.super Ljava/lang/Object;
.source "AlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlarmPolicy"
.end annotation


# instance fields
.field public app:Ljava/lang/String;

.field public policy:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 727
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "app"    # Ljava/lang/String;
    .param p2, "policy"    # I

    .prologue
    .line 729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 730
    iput-object p1, p0, Landroid/app/AlarmManager$AlarmPolicy;->app:Ljava/lang/String;

    .line 731
    iput p2, p0, Landroid/app/AlarmManager$AlarmPolicy;->policy:I

    .line 732
    return-void
.end method
