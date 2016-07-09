.class public Lcom/android/ims/ImsConfig$WifiCallingPreference;
.super Ljava/lang/Object;
.source "ImsConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiCallingPreference"
.end annotation


# static fields
.field public static final CELLULAR_ONLY:I = 0x4

.field public static final CELLULAR_PREFERRED:I = 0x3

.field public static final WIFI_ONLY:I = 0x2

.field public static final WIFI_PREFERRED:I = 0x1

.field public static final WIFI_PREF_NONE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
