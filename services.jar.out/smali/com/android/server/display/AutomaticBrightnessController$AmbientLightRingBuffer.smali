.class final Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AmbientLightRingBuffer"
.end annotation


# static fields
.field private static final BUFFER_SLACK:F = 1.5f

.field private static final DEFAULT_CAPACITY:I


# instance fields
.field private mCapacity:I

.field private mCount:I

.field private mEnd:I

.field private mRingLux:[F

.field private mRingTime:[J

.field private mStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 564
    const-wide/high16 v0, 0x402e000000000000L    # 15.0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    sput v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->DEFAULT_CAPACITY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 577
    sget v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->DEFAULT_CAPACITY:I

    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;-><init>(I)V

    .line 578
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    .line 582
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    .line 583
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    .line 584
    return-void
.end method

.method private offsetOf(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 693
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 694
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 696
    :cond_1
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    add-int/2addr p1, v0

    .line 697
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    if-lt p1, v0, :cond_2

    .line 698
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    sub-int/2addr p1, v0

    .line 700
    :cond_2
    return p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 662
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    .line 663
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    .line 664
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    .line 665
    return-void
.end method

.method public getLux(I)F
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->offsetOf(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public getTime(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->offsetOf(I)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 658
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prune(J)V
    .locals 5
    .param p1, "horizon"    # J

    .prologue
    .line 625
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    if-nez v1, :cond_2

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 644
    .local v0, "next":I
    :cond_1
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    .line 645
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    .line 629
    .end local v0    # "next":I
    :cond_2
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    .line 630
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    add-int/lit8 v0, v1, 0x1

    .line 631
    .restart local v0    # "next":I
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    if-lt v0, v1, :cond_3

    .line 632
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    sub-int/2addr v0, v1

    .line 634
    :cond_3
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p1

    if-lez v1, :cond_1

    .line 648
    .end local v0    # "next":I
    :cond_4
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    aget-wide v2, v1, v2

    cmp-long v1, v2, p1

    if-gez v1, :cond_0

    .line 649
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    aput-wide p1, v1, v2

    goto :goto_0
.end method

.method public push(JF)V
    .locals 9
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    const/4 v7, 0x0

    .line 595
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    .line 596
    .local v4, "next":I
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    if-ne v5, v6, :cond_1

    .line 597
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    mul-int/lit8 v3, v5, 0x2

    .line 599
    .local v3, "newSize":I
    new-array v1, v3, [F

    .line 600
    .local v1, "newRingLux":[F
    new-array v2, v3, [J

    .line 601
    .local v2, "newRingTime":[J
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    sub-int v0, v5, v6

    .line 602
    .local v0, "length":I
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    invoke-static {v5, v6, v1, v7, v0}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 603
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    invoke-static {v5, v6, v2, v7, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 604
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    if-eqz v5, :cond_0

    .line 605
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    invoke-static {v5, v7, v1, v0, v6}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 606
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    invoke-static {v5, v7, v2, v0, v6}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 608
    :cond_0
    iput-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    .line 609
    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    .line 611
    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    .line 612
    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    .line 613
    iput v7, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    .line 615
    .end local v0    # "length":I
    .end local v1    # "newRingLux":[F
    .end local v2    # "newRingTime":[J
    .end local v3    # "newSize":I
    :cond_1
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    aput-wide p1, v5, v4

    .line 616
    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    aput p3, v5, v4

    .line 617
    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    .line 618
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    if-ne v5, v6, :cond_2

    .line 619
    iput v7, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    .line 621
    :cond_2
    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    .line 622
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 654
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 669
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    sub-int v0, v3, v4

    .line 670
    .local v0, "length":I
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    new-array v1, v3, [F

    .line 671
    .local v1, "lux":[F
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    new-array v2, v3, [J

    .line 673
    .local v2, "time":[J
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    if-gt v3, v0, :cond_0

    .line 674
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    invoke-static {v3, v4, v1, v6, v5}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 675
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    invoke-static {v3, v4, v2, v6, v5}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 683
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AmbientLightRingBuffer{mCapacity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mStart="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mEnd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mRingLux="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mRingTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 677
    :cond_0
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    invoke-static {v3, v4, v1, v6, v0}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 678
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    sub-int/2addr v4, v0

    invoke-static {v3, v6, v1, v0, v4}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 680
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    invoke-static {v3, v4, v2, v6, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 681
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    sub-int/2addr v4, v0

    invoke-static {v3, v6, v2, v0, v4}, Ljava/lang/System;->arraycopy([JI[JII)V

    goto :goto_0
.end method
