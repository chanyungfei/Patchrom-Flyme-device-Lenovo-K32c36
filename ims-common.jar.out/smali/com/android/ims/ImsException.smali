.class public Lcom/android/ims/ImsException;
.super Ljava/lang/Exception;
.source "ImsException.java"


# instance fields
.field private mCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "code"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 36
    iput p2, p0, Lcom/android/ims/ImsException;->mCode:I

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "code"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    iput p3, p0, Lcom/android/ims/ImsException;->mCode:I

    .line 42
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/android/ims/ImsException;->mCode:I

    return v0
.end method
