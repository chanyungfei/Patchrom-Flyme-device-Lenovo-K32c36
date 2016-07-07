.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field static final DEFAULT_SIGNAL_IS_4:Ljava/lang/String; = "four"

.field public static final INVALID:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

.field public static final NUM_SIGNAL5_STRENGTH_BINS:I = 0x6

.field public static final NUM_SIGNAL_STRENGTH_BINS:I

.field private static final RSRP_THRESH_LENIENT:[I

.field private static final RSRP_THRESH_STRICT:[I

.field private static final RSRP_THRESH_TYPE_STRICT:I = 0x0

.field public static final SIGNAL4_STRENGTH_NAMES:[Ljava/lang/String;

.field public static final SIGNAL5_STRENGTH_BETTER:I = 0x4

.field public static final SIGNAL5_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL5_STRENGTH_GREAT:I = 0x5

.field public static final SIGNAL5_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL5_STRENGTH_NAMES:[Ljava/lang/String;

.field public static final SIGNAL5_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL5_STRENGTH_POOR:I = 0x1

.field static final SIGNAL_IS_5:Ljava/lang/String; = "five"

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1

.field static final mSignalNumber:Ljava/lang/String;


# instance fields
.field private isGsm:Z

.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I

.field private mGsmBitErrorRate:I

.field private mGsmSignalStrength:I

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I

.field private mRadioTechnology:I

.field private mTdScdmaRscp:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x5

    const/4 v1, 0x6

    .line 50
    const-string/jumbo v0, "ro.lenovo.signalbars"

    const-string v3, "four"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/SignalStrength;->mSignalNumber:Ljava/lang/String;

    .line 52
    sget-object v0, Landroid/telephony/SignalStrength;->mSignalNumber:Ljava/lang/String;

    const-string v3, "five"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput v0, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    .line 68
    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v3, "none"

    aput-object v3, v0, v5

    const-string/jumbo v3, "poor"

    aput-object v3, v0, v6

    const-string/jumbo v3, "moderate"

    aput-object v3, v0, v7

    const/4 v3, 0x3

    const-string v4, "good"

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string v4, "better"

    aput-object v4, v0, v3

    const-string v3, "great"

    aput-object v3, v0, v2

    sput-object v0, Landroid/telephony/SignalStrength;->SIGNAL5_STRENGTH_NAMES:[Ljava/lang/String;

    .line 72
    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v2, "none"

    aput-object v2, v0, v5

    const-string/jumbo v2, "poor"

    aput-object v2, v0, v6

    const-string/jumbo v2, "moderate"

    aput-object v2, v0, v7

    const/4 v2, 0x3

    const-string v3, "good"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "great"

    aput-object v3, v0, v2

    sput-object v0, Landroid/telephony/SignalStrength;->SIGNAL4_STRENGTH_NAMES:[Ljava/lang/String;

    .line 76
    sget-object v0, Landroid/telephony/SignalStrength;->mSignalNumber:Ljava/lang/String;

    const-string v2, "five"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/telephony/SignalStrength;->SIGNAL5_STRENGTH_NAMES:[Ljava/lang/String;

    :goto_1
    sput-object v0, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 91
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/telephony/SignalStrength;->RSRP_THRESH_STRICT:[I

    .line 92
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/telephony/SignalStrength;->RSRP_THRESH_LENIENT:[I

    .line 405
    new-instance v0, Landroid/telephony/SignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :cond_0
    move v0, v2

    .line 52
    goto :goto_0

    .line 76
    :cond_1
    sget-object v0, Landroid/telephony/SignalStrength;->SIGNAL4_STRENGTH_NAMES:[Ljava/lang/String;

    goto :goto_1

    .line 91
    :array_0
    .array-data 4
        -0x8c
        -0x73
        -0x69
        -0x5f
        -0x55
        -0x2c
    .end array-data

    .line 92
    :array_1
    .array-data 4
        -0x8c
        -0x80
        -0x76
        -0x6c
        -0x62
        -0x2c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x63

    const v2, 0x7fffffff

    const/4 v1, -0x1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1223
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    .line 135
    iput v3, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 136
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 137
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 138
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 139
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 140
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 141
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 142
    iput v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 143
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 144
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 145
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 146
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 147
    iput v2, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 149
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIZ)V
    .locals 15
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "tdScdmaRscp"    # I
    .param p14, "gsmFlag"    # Z

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1223
    const/4 v1, 0x0

    iput v1, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p14

    .line 201
    invoke-virtual/range {v1 .. v14}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 204
    move/from16 v0, p13

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 205
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZ)V
    .locals 1
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmFlag"    # Z

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1223
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    .line 186
    invoke-virtual/range {p0 .. p13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 189
    return-void
.end method

.method public constructor <init>(IIIIIIIZ)V
    .locals 14
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsmFlag"    # Z

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1223
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    .line 216
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 219
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1223
    iput v0, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    .line 342
    return-void
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1223
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    .line 229
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    .line 230
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4
    .param p1, "gsmFlag"    # Z

    .prologue
    const/16 v3, 0x63

    const v2, 0x7fffffff

    const/4 v1, -0x1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1223
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    .line 160
    iput v3, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 161
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 162
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 163
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 164
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 165
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 166
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 167
    iput v3, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 168
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 169
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 170
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 171
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 172
    iput v2, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 173
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 174
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1218
    const-string v0, "SignalStrength"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    return-void
.end method

.method public static makeSignalStrengthFromRilParcel(Landroid/os/Parcel;)Landroid/telephony/SignalStrength;
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 354
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 355
    .local v0, "ss":Landroid/telephony/SignalStrength;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 356
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 357
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 358
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 359
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 360
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 361
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 362
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 363
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 364
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 365
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 366
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 367
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 368
    return-object v0
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .locals 1
    .param p0, "m"    # Landroid/os/Bundle;

    .prologue
    .line 124
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 125
    .local v0, "ret":Landroid/telephony/SignalStrength;
    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 126
    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1171
    const-string v0, "GsmSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1172
    const-string v0, "GsmBitErrorRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 1173
    const-string v0, "CdmaDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 1174
    const-string v0, "CdmaEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 1175
    const-string v0, "EvdoDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 1176
    const-string v0, "EvdoEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 1177
    const-string v0, "EvdoSnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 1178
    const-string v0, "LteSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 1179
    const-string v0, "LteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 1180
    const-string v0, "LteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1181
    const-string v0, "LteRssnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1182
    const-string v0, "LteCqi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 1183
    const-string v0, "TdScdma"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 1184
    const-string v0, "isGsm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 1186
    const-string v0, "RadioType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    .line 1187
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 300
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 301
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 302
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 303
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 304
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 305
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 306
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 307
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 308
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 309
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 310
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 311
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 312
    iget v0, p1, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 313
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->isGsm:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 315
    iget v0, p1, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    .line 316
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1117
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/SignalStrength;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1122
    .local v2, "s":Landroid/telephony/SignalStrength;
    if-nez p1, :cond_1

    .line 1126
    .end local v2    # "s":Landroid/telephony/SignalStrength;
    :cond_0
    :goto_0
    return v3

    .line 1118
    :catch_0
    move-exception v1

    .line 1119
    .local v1, "ex":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 1126
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/SignalStrength;
    :cond_1
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    iget-boolean v5, v2, Landroid/telephony/SignalStrength;->isGsm:Z

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1196
    const-string v0, "GsmSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1197
    const-string v0, "GsmBitErrorRate"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1198
    const-string v0, "CdmaDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1199
    const-string v0, "CdmaEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1200
    const-string v0, "EvdoDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1201
    const-string v0, "EvdoEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1202
    const-string v0, "EvdoSnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1203
    const-string v0, "LteSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1204
    const-string v0, "LteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1205
    const-string v0, "LteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1206
    const-string v0, "LteRssnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1207
    const-string v0, "LteCqi"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1208
    const-string v0, "TdScdma"

    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1209
    const-string v0, "isGsm"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1211
    const-string v0, "RadioType"

    iget v1, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1212
    return-void
.end method

.method public getAlternateLteLevel()I
    .locals 7

    .prologue
    const v2, 0x7fffffff

    const/16 v6, -0x61

    const/16 v5, -0x69

    const/16 v4, -0x73

    const/16 v3, -0x78

    .line 870
    const/4 v0, 0x0

    .line 872
    .local v0, "rsrpIconLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->signalNumberisFive()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 873
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ge v1, v3, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 895
    :cond_1
    :goto_0
    return v0

    .line 874
    :cond_2
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v1, v6, :cond_3

    const/4 v0, 0x5

    goto :goto_0

    .line 875
    :cond_3
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v1, v5, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    .line 876
    :cond_4
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x6e

    if-lt v1, v2, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    .line 877
    :cond_5
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v1, v4, :cond_6

    const/4 v0, 0x2

    goto :goto_0

    .line 878
    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    .line 879
    :cond_7
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->signalNumberisFour()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 880
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v1, v2, :cond_8

    const/4 v0, 0x0

    goto :goto_0

    .line 881
    :cond_8
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x6a

    if-lt v1, v2, :cond_9

    const/4 v0, 0x4

    goto :goto_0

    .line 882
    :cond_9
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v1, v4, :cond_a

    const/4 v0, 0x3

    goto :goto_0

    .line 883
    :cond_a
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x77

    if-lt v1, v2, :cond_b

    const/4 v0, 0x2

    goto :goto_0

    .line 884
    :cond_b
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x7b

    if-lt v1, v2, :cond_c

    const/4 v0, 0x1

    goto :goto_0

    .line 885
    :cond_c
    const/4 v0, 0x0

    goto :goto_0

    .line 887
    :cond_d
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x2c

    if-le v1, v2, :cond_e

    const/4 v0, -0x1

    goto :goto_0

    .line 888
    :cond_e
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v1, v6, :cond_f

    const/4 v0, 0x4

    goto :goto_0

    .line 889
    :cond_f
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v1, v5, :cond_10

    const/4 v0, 0x3

    goto :goto_0

    .line 890
    :cond_10
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x71

    if-lt v1, v2, :cond_11

    const/4 v0, 0x2

    goto :goto_0

    .line 891
    :cond_11
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v1, v3, :cond_12

    const/4 v0, 0x1

    goto :goto_0

    .line 892
    :cond_12
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x8c

    if-lt v1, v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAsuLevel()I
    .locals 4

    .prologue
    .line 585
    const/4 v0, 0x0

    .line 586
    .local v0, "asuLevel":I
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_2

    .line 587
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v3

    if-nez v3, :cond_1

    .line 588
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v3

    if-nez v3, :cond_0

    .line 589
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    .line 611
    :goto_0
    return v0

    .line 591
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaAsuLevel()I

    move-result v0

    goto :goto_0

    .line 594
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    goto :goto_0

    .line 597
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v1

    .line 598
    .local v1, "cdmaAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v2

    .line 599
    .local v2, "evdoAsuLevel":I
    if-nez v2, :cond_3

    .line 601
    move v0, v1

    goto :goto_0

    .line 602
    :cond_3
    if-nez v1, :cond_4

    .line 604
    move v0, v2

    goto :goto_0

    .line 607
    :cond_4
    if-ge v1, v2, :cond_5

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method public getCdmaAsuLevel()I
    .locals 8

    .prologue
    const/16 v7, -0x5a

    const/16 v6, -0x64

    .line 761
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 762
    .local v1, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v2

    .line 766
    .local v2, "cdmaEcio":I
    const/16 v5, -0x4b

    if-lt v1, v5, :cond_0

    const/16 v0, 0x10

    .line 774
    .local v0, "cdmaAsuLevel":I
    :goto_0
    if-lt v2, v7, :cond_5

    const/16 v3, 0x10

    .line 781
    .local v3, "ecioAsuLevel":I
    :goto_1
    if-ge v0, v3, :cond_a

    move v4, v0

    .line 783
    .local v4, "level":I
    :goto_2
    return v4

    .line 767
    .end local v0    # "cdmaAsuLevel":I
    .end local v3    # "ecioAsuLevel":I
    .end local v4    # "level":I
    :cond_0
    const/16 v5, -0x52

    if-lt v1, v5, :cond_1

    const/16 v0, 0x8

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 768
    .end local v0    # "cdmaAsuLevel":I
    :cond_1
    if-lt v1, v7, :cond_2

    const/4 v0, 0x4

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 769
    .end local v0    # "cdmaAsuLevel":I
    :cond_2
    const/16 v5, -0x5f

    if-lt v1, v5, :cond_3

    const/4 v0, 0x2

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 770
    .end local v0    # "cdmaAsuLevel":I
    :cond_3
    if-lt v1, v6, :cond_4

    const/4 v0, 0x1

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 771
    .end local v0    # "cdmaAsuLevel":I
    :cond_4
    const/16 v0, 0x63

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 775
    :cond_5
    if-lt v2, v6, :cond_6

    const/16 v3, 0x8

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 776
    .end local v3    # "ecioAsuLevel":I
    :cond_6
    const/16 v5, -0x73

    if-lt v2, v5, :cond_7

    const/4 v3, 0x4

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 777
    .end local v3    # "ecioAsuLevel":I
    :cond_7
    const/16 v5, -0x82

    if-lt v2, v5, :cond_8

    const/4 v3, 0x2

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 778
    .end local v3    # "ecioAsuLevel":I
    :cond_8
    const/16 v5, -0x96

    if-lt v2, v5, :cond_9

    const/4 v3, 0x1

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 779
    .end local v3    # "ecioAsuLevel":I
    :cond_9
    const/16 v3, 0x63

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    :cond_a
    move v4, v3

    .line 781
    goto :goto_2
.end method

.method public getCdmaDbm()I
    .locals 1

    .prologue
    .line 484
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    .prologue
    .line 491
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .locals 6

    .prologue
    .line 721
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 722
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 727
    .local v1, "cdmaEcio":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->signalNumberisFour()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 728
    const/16 v5, -0x5b

    if-le v0, v5, :cond_0

    const/4 v3, 0x4

    .local v3, "levelDbm":I
    :goto_0
    move v2, v3

    .line 752
    :goto_1
    return v2

    .line 729
    .end local v3    # "levelDbm":I
    :cond_0
    const/16 v5, -0x63

    if-le v0, v5, :cond_1

    const/4 v3, 0x3

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 730
    .end local v3    # "levelDbm":I
    :cond_1
    const/16 v5, -0x6b

    if-le v0, v5, :cond_2

    const/4 v3, 0x2

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 731
    .end local v3    # "levelDbm":I
    :cond_2
    const/16 v5, -0x6f

    if-le v0, v5, :cond_3

    const/4 v3, 0x1

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 732
    .end local v3    # "levelDbm":I
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 735
    .end local v3    # "levelDbm":I
    :cond_4
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_5

    const/4 v3, 0x4

    .line 742
    .restart local v3    # "levelDbm":I
    :goto_2
    const/16 v5, -0x5a

    if-lt v1, v5, :cond_9

    const/4 v4, 0x4

    .line 750
    .local v4, "levelEcio":I
    :goto_3
    if-ge v3, v4, :cond_d

    move v2, v3

    .line 752
    .local v2, "level":I
    :goto_4
    goto :goto_1

    .line 736
    .end local v2    # "level":I
    .end local v3    # "levelDbm":I
    .end local v4    # "levelEcio":I
    :cond_5
    const/16 v5, -0x55

    if-lt v0, v5, :cond_6

    const/4 v3, 0x3

    .restart local v3    # "levelDbm":I
    goto :goto_2

    .line 737
    .end local v3    # "levelDbm":I
    :cond_6
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_7

    const/4 v3, 0x2

    .restart local v3    # "levelDbm":I
    goto :goto_2

    .line 738
    .end local v3    # "levelDbm":I
    :cond_7
    const/16 v5, -0x64

    if-lt v0, v5, :cond_8

    const/4 v3, 0x1

    .restart local v3    # "levelDbm":I
    goto :goto_2

    .line 739
    .end local v3    # "levelDbm":I
    :cond_8
    const/4 v3, 0x0

    .restart local v3    # "levelDbm":I
    goto :goto_2

    .line 743
    :cond_9
    const/16 v5, -0x6e

    if-lt v1, v5, :cond_a

    const/4 v4, 0x3

    .restart local v4    # "levelEcio":I
    goto :goto_3

    .line 744
    .end local v4    # "levelEcio":I
    :cond_a
    const/16 v5, -0x82

    if-lt v1, v5, :cond_b

    const/4 v4, 0x2

    .restart local v4    # "levelEcio":I
    goto :goto_3

    .line 745
    .end local v4    # "levelEcio":I
    :cond_b
    const/16 v5, -0x96

    if-lt v1, v5, :cond_c

    const/4 v4, 0x1

    .restart local v4    # "levelEcio":I
    goto :goto_3

    .line 746
    .end local v4    # "levelEcio":I
    :cond_c
    const/4 v4, 0x0

    .restart local v4    # "levelEcio":I
    goto :goto_3

    :cond_d
    move v2, v4

    .line 750
    goto :goto_4
.end method

.method public getDbm()I
    .locals 5

    .prologue
    const/16 v4, -0x78

    .line 620
    const v1, 0x7fffffff

    .line 622
    .local v1, "dBm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 623
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 624
    const v3, 0x7fffffff

    if-ne v1, v3, :cond_0

    .line 625
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v3

    if-nez v3, :cond_2

    .line 626
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v1

    :cond_0
    :goto_0
    move v0, v1

    .line 639
    :cond_1
    :goto_1
    return v0

    .line 628
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    goto :goto_0

    .line 632
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 633
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v2

    .line 635
    .local v2, "evdoDbm":I
    if-eq v2, v4, :cond_1

    if-ne v0, v4, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    if-lt v0, v2, :cond_1

    move v0, v2

    goto :goto_1
.end method

.method public getEvdoAsuLevel()I
    .locals 6

    .prologue
    .line 831
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 832
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 836
    .local v1, "evdoSnr":I
    const/16 v5, -0x41

    if-lt v0, v5, :cond_0

    const/16 v3, 0x10

    .line 843
    .local v3, "levelEvdoDbm":I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_5

    const/16 v4, 0x10

    .line 850
    .local v4, "levelEvdoSnr":I
    :goto_1
    if-ge v3, v4, :cond_a

    move v2, v3

    .line 852
    .local v2, "level":I
    :goto_2
    return v2

    .line 837
    .end local v2    # "level":I
    .end local v3    # "levelEvdoDbm":I
    .end local v4    # "levelEvdoSnr":I
    :cond_0
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1

    const/16 v3, 0x8

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 838
    .end local v3    # "levelEvdoDbm":I
    :cond_1
    const/16 v5, -0x55

    if-lt v0, v5, :cond_2

    const/4 v3, 0x4

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 839
    .end local v3    # "levelEvdoDbm":I
    :cond_2
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_3

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 840
    .end local v3    # "levelEvdoDbm":I
    :cond_3
    const/16 v5, -0x69

    if-lt v0, v5, :cond_4

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 841
    .end local v3    # "levelEvdoDbm":I
    :cond_4
    const/16 v3, 0x63

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 844
    :cond_5
    const/4 v5, 0x6

    if-lt v1, v5, :cond_6

    const/16 v4, 0x8

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 845
    .end local v4    # "levelEvdoSnr":I
    :cond_6
    const/4 v5, 0x5

    if-lt v1, v5, :cond_7

    const/4 v4, 0x4

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 846
    .end local v4    # "levelEvdoSnr":I
    :cond_7
    const/4 v5, 0x3

    if-lt v1, v5, :cond_8

    const/4 v4, 0x2

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 847
    .end local v4    # "levelEvdoSnr":I
    :cond_8
    const/4 v5, 0x1

    if-lt v1, v5, :cond_9

    const/4 v4, 0x1

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 848
    .end local v4    # "levelEvdoSnr":I
    :cond_9
    const/16 v4, 0x63

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    :cond_a
    move v2, v4

    .line 850
    goto :goto_2
.end method

.method public getEvdoDbm()I
    .locals 1

    .prologue
    .line 498
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .locals 7

    .prologue
    const/16 v6, -0x69

    .line 792
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 793
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 798
    .local v1, "evdoSnr":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->signalNumberisFour()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 799
    const/16 v5, -0x5e

    if-lt v0, v5, :cond_0

    const/4 v3, 0x4

    .local v3, "levelEvdoDbm":I
    :goto_0
    move v2, v3

    .line 822
    :goto_1
    return v2

    .line 800
    .end local v3    # "levelEvdoDbm":I
    :cond_0
    const/16 v5, -0x65

    if-lt v0, v5, :cond_1

    const/4 v3, 0x3

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 801
    .end local v3    # "levelEvdoDbm":I
    :cond_1
    if-lt v0, v6, :cond_2

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 802
    .end local v3    # "levelEvdoDbm":I
    :cond_2
    const/16 v5, -0x6d

    if-lt v0, v5, :cond_3

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 803
    .end local v3    # "levelEvdoDbm":I
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 807
    .end local v3    # "levelEvdoDbm":I
    :cond_4
    const/16 v5, -0x41

    if-lt v0, v5, :cond_5

    const/4 v3, 0x4

    .line 813
    .restart local v3    # "levelEvdoDbm":I
    :goto_2
    const/4 v5, 0x7

    if-lt v1, v5, :cond_9

    const/4 v4, 0x4

    .line 820
    .local v4, "levelEvdoSnr":I
    :goto_3
    if-ge v3, v4, :cond_d

    move v2, v3

    .line 822
    .local v2, "level":I
    :goto_4
    goto :goto_1

    .line 808
    .end local v2    # "level":I
    .end local v3    # "levelEvdoDbm":I
    .end local v4    # "levelEvdoSnr":I
    :cond_5
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_6

    const/4 v3, 0x3

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_2

    .line 809
    .end local v3    # "levelEvdoDbm":I
    :cond_6
    const/16 v5, -0x5a

    if-lt v0, v5, :cond_7

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_2

    .line 810
    .end local v3    # "levelEvdoDbm":I
    :cond_7
    if-lt v0, v6, :cond_8

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_2

    .line 811
    .end local v3    # "levelEvdoDbm":I
    :cond_8
    const/4 v3, 0x0

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_2

    .line 814
    :cond_9
    const/4 v5, 0x5

    if-lt v1, v5, :cond_a

    const/4 v4, 0x3

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_3

    .line 815
    .end local v4    # "levelEvdoSnr":I
    :cond_a
    const/4 v5, 0x3

    if-lt v1, v5, :cond_b

    const/4 v4, 0x2

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_3

    .line 816
    .end local v4    # "levelEvdoSnr":I
    :cond_b
    const/4 v5, 0x1

    if-lt v1, v5, :cond_c

    const/4 v4, 0x1

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_3

    .line 817
    .end local v4    # "levelEvdoSnr":I
    :cond_c
    const/4 v4, 0x0

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_3

    :cond_d
    move v2, v4

    .line 820
    goto :goto_4
.end method

.method public getEvdoSnr()I
    .locals 1

    .prologue
    .line 512
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    return v0
.end method

.method public getGsmAsuLevel()I
    .locals 1

    .prologue
    .line 710
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 712
    .local v0, "level":I
    return v0
.end method

.method public getGsmBitErrorRate()I
    .locals 1

    .prologue
    .line 477
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    return v0
.end method

.method public getGsmDbm()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 650
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 651
    .local v2, "gsmSignalStrength":I
    const/16 v4, 0x63

    if-ne v2, v4, :cond_0

    move v0, v3

    .line 652
    .local v0, "asu":I
    :goto_0
    if-eq v0, v3, :cond_1

    .line 653
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v1, v3, -0x71

    .line 658
    .local v1, "dBm":I
    :goto_1
    return v1

    .end local v0    # "asu":I
    .end local v1    # "dBm":I
    :cond_0
    move v0, v2

    .line 651
    goto :goto_0

    .line 655
    .restart local v0    # "asu":I
    :cond_1
    const/4 v1, -0x1

    .restart local v1    # "dBm":I
    goto :goto_1
.end method

.method public getGsmLevel()I
    .locals 6

    .prologue
    const/16 v5, 0xc

    const/16 v4, 0x63

    const/16 v3, 0x8

    .line 673
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 675
    .local v0, "asu":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->signalNumberisFive()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 676
    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    if-ne v0, v4, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 697
    .local v1, "level":I
    :goto_0
    return v1

    .line 677
    .end local v1    # "level":I
    :cond_1
    const/16 v2, 0xf

    if-lt v0, v2, :cond_2

    const/4 v1, 0x5

    .restart local v1    # "level":I
    goto :goto_0

    .line 678
    .end local v1    # "level":I
    :cond_2
    if-lt v0, v5, :cond_3

    const/4 v1, 0x4

    .restart local v1    # "level":I
    goto :goto_0

    .line 679
    .end local v1    # "level":I
    :cond_3
    const/16 v2, 0x9

    if-lt v0, v2, :cond_4

    const/4 v1, 0x3

    .restart local v1    # "level":I
    goto :goto_0

    .line 680
    .end local v1    # "level":I
    :cond_4
    if-lt v0, v3, :cond_5

    const/4 v1, 0x2

    .restart local v1    # "level":I
    goto :goto_0

    .line 681
    .end local v1    # "level":I
    :cond_5
    const/4 v1, 0x1

    .restart local v1    # "level":I
    goto :goto_0

    .line 682
    .end local v1    # "level":I
    :cond_6
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->signalNumberisFour()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 683
    const/4 v2, 0x3

    if-lt v0, v2, :cond_7

    if-ne v0, v4, :cond_8

    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "level":I
    goto :goto_0

    .line 684
    .end local v1    # "level":I
    :cond_8
    const/16 v2, 0xe

    if-lt v0, v2, :cond_9

    const/4 v1, 0x4

    .restart local v1    # "level":I
    goto :goto_0

    .line 685
    .end local v1    # "level":I
    :cond_9
    const/16 v2, 0xb

    if-lt v0, v2, :cond_a

    const/4 v1, 0x3

    .restart local v1    # "level":I
    goto :goto_0

    .line 686
    .end local v1    # "level":I
    :cond_a
    if-lt v0, v3, :cond_b

    const/4 v1, 0x2

    .restart local v1    # "level":I
    goto :goto_0

    .line 687
    .end local v1    # "level":I
    :cond_b
    const/4 v1, 0x1

    .restart local v1    # "level":I
    goto :goto_0

    .line 689
    .end local v1    # "level":I
    :cond_c
    const/4 v2, 0x2

    if-le v0, v2, :cond_d

    if-ne v0, v4, :cond_e

    :cond_d
    const/4 v1, 0x0

    .restart local v1    # "level":I
    goto :goto_0

    .line 690
    .end local v1    # "level":I
    :cond_e
    if-lt v0, v5, :cond_f

    const/4 v1, 0x4

    .restart local v1    # "level":I
    goto :goto_0

    .line 691
    .end local v1    # "level":I
    :cond_f
    if-lt v0, v3, :cond_10

    const/4 v1, 0x3

    .restart local v1    # "level":I
    goto :goto_0

    .line 692
    .end local v1    # "level":I
    :cond_10
    const/4 v2, 0x5

    if-lt v0, v2, :cond_11

    const/4 v1, 0x2

    .restart local v1    # "level":I
    goto :goto_0

    .line 693
    .end local v1    # "level":I
    :cond_11
    const/4 v1, 0x1

    .restart local v1    # "level":I
    goto :goto_0
.end method

.method public getGsmSignalStrength()I
    .locals 1

    .prologue
    .line 470
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    return v0
.end method

.method public getLevel()I
    .locals 4

    .prologue
    .line 546
    const/4 v2, 0x0

    .line 548
    .local v2, "level":I
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_2

    .line 549
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v2

    .line 550
    if-nez v2, :cond_1

    .line 551
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v2

    .line 553
    if-nez v2, :cond_0

    .line 554
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getWcdmaLevel()I

    move-result v2

    .line 557
    :cond_0
    if-nez v2, :cond_1

    .line 558
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v2

    .line 576
    :cond_1
    :goto_0
    return v2

    .line 562
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 563
    .local v0, "cdmaLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    .line 564
    .local v1, "evdoLevel":I
    if-nez v1, :cond_3

    .line 566
    move v2, v0

    goto :goto_0

    .line 567
    :cond_3
    if-nez v0, :cond_4

    .line 569
    move v2, v1

    goto :goto_0

    .line 572
    :cond_4
    if-ge v0, v1, :cond_5

    move v2, v0

    :goto_1
    goto :goto_0

    :cond_5
    move v2, v1

    goto :goto_1
.end method

.method public getLteAsuLevel()I
    .locals 3

    .prologue
    .line 1000
    const/16 v0, 0x63

    .line 1001
    .local v0, "lteAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 1015
    .local v1, "lteDbm":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/16 v0, 0xff

    .line 1018
    :goto_0
    return v0

    .line 1016
    :cond_0
    add-int/lit16 v0, v1, 0x8c

    goto :goto_0
.end method

.method public getLteCqi()I
    .locals 1

    .prologue
    .line 537
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    return v0
.end method

.method public getLteDbm()I
    .locals 1

    .prologue
    .line 861
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteLevel()I
    .locals 10

    .prologue
    const v6, 0x7fffffff

    const/4 v9, 0x5

    const/16 v8, -0x73

    const/4 v7, -0x1

    .line 910
    const/4 v2, 0x0

    .local v2, "rssiIconLevel":I
    const/4 v0, -0x1

    .local v0, "rsrpIconLevel":I
    const/4 v3, -0x1

    .line 913
    .local v3, "snrIconLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->signalNumberisFive()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 914
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-eq v5, v6, :cond_0

    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x78

    if-ge v5, v6, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    .line 990
    :goto_1
    return v5

    .line 915
    :cond_1
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x61

    if-lt v5, v6, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    .line 916
    :cond_2
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x69

    if-lt v5, v6, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 917
    :cond_3
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x6e

    if-lt v5, v6, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    .line 918
    :cond_4
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v5, v8, :cond_5

    const/4 v0, 0x2

    goto :goto_0

    .line 919
    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    .line 922
    :cond_6
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->signalNumberisFour()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 925
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v5, v6, :cond_7

    const/4 v0, 0x0

    :goto_2
    move v5, v0

    .line 931
    goto :goto_1

    .line 926
    :cond_7
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x6a

    if-lt v5, v6, :cond_8

    const/4 v0, 0x4

    goto :goto_2

    .line 927
    :cond_8
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v5, v8, :cond_9

    const/4 v0, 0x3

    goto :goto_2

    .line 928
    :cond_9
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x77

    if-lt v5, v6, :cond_a

    const/4 v0, 0x2

    goto :goto_2

    .line 929
    :cond_a
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x7b

    if-lt v5, v6, :cond_b

    const/4 v0, 0x1

    goto :goto_2

    .line 930
    :cond_b
    const/4 v0, 0x0

    goto :goto_2

    .line 934
    :cond_c
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e00a2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 937
    .local v1, "rsrpThreshType":I
    if-nez v1, :cond_f

    .line 938
    sget-object v4, Landroid/telephony/SignalStrength;->RSRP_THRESH_STRICT:[I

    .line 943
    .local v4, "threshRsrp":[I
    :goto_3
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    aget v6, v4, v9

    if-le v5, v6, :cond_10

    const/4 v0, -0x1

    .line 956
    :cond_d
    :goto_4
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, 0x12c

    if-le v5, v6, :cond_15

    const/4 v3, -0x1

    .line 968
    :cond_e
    :goto_5
    if-eq v3, v7, :cond_1b

    if-eq v0, v7, :cond_1b

    .line 974
    if-ge v0, v3, :cond_1a

    move v5, v0

    goto :goto_1

    .line 940
    .end local v4    # "threshRsrp":[I
    :cond_f
    sget-object v4, Landroid/telephony/SignalStrength;->RSRP_THRESH_LENIENT:[I

    .restart local v4    # "threshRsrp":[I
    goto :goto_3

    .line 944
    :cond_10
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v6, 0x4

    aget v6, v4, v6

    if-lt v5, v6, :cond_11

    const/4 v0, 0x4

    goto :goto_4

    .line 945
    :cond_11
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v6, 0x3

    aget v6, v4, v6

    if-lt v5, v6, :cond_12

    const/4 v0, 0x3

    goto :goto_4

    .line 946
    :cond_12
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v6, 0x2

    aget v6, v4, v6

    if-lt v5, v6, :cond_13

    const/4 v0, 0x2

    goto :goto_4

    .line 947
    :cond_13
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v6, 0x1

    aget v6, v4, v6

    if-lt v5, v6, :cond_14

    const/4 v0, 0x1

    goto :goto_4

    .line 948
    :cond_14
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v6, 0x0

    aget v6, v4, v6

    if-lt v5, v6, :cond_d

    const/4 v0, 0x0

    goto :goto_4

    .line 957
    :cond_15
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, 0x82

    if-lt v5, v6, :cond_16

    const/4 v3, 0x4

    goto :goto_5

    .line 958
    :cond_16
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, 0x2d

    if-lt v5, v6, :cond_17

    const/4 v3, 0x3

    goto :goto_5

    .line 959
    :cond_17
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, 0xa

    if-lt v5, v6, :cond_18

    const/4 v3, 0x2

    goto :goto_5

    .line 960
    :cond_18
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, -0x1e

    if-lt v5, v6, :cond_19

    const/4 v3, 0x1

    goto :goto_5

    .line 961
    :cond_19
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, -0xc8

    if-lt v5, v6, :cond_e

    .line 962
    const/4 v3, 0x0

    goto :goto_5

    :cond_1a
    move v5, v3

    .line 974
    goto/16 :goto_1

    .line 977
    :cond_1b
    if-eq v3, v7, :cond_1c

    move v5, v3

    goto/16 :goto_1

    .line 979
    :cond_1c
    if-eq v0, v7, :cond_1d

    move v5, v0

    goto/16 :goto_1

    .line 982
    :cond_1d
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v6, 0x3f

    if-le v5, v6, :cond_1f

    const/4 v2, 0x0

    :cond_1e
    :goto_6
    move v5, v2

    .line 990
    goto/16 :goto_1

    .line 983
    :cond_1f
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v6, 0xc

    if-lt v5, v6, :cond_20

    const/4 v2, 0x4

    goto :goto_6

    .line 984
    :cond_20
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v6, 0x8

    if-lt v5, v6, :cond_21

    const/4 v2, 0x3

    goto :goto_6

    .line 985
    :cond_21
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-lt v5, v9, :cond_22

    const/4 v2, 0x2

    goto :goto_6

    .line 986
    :cond_22
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v5, :cond_1e

    const/4 v2, 0x1

    goto :goto_6
.end method

.method public getLteRsrp()I
    .locals 1

    .prologue
    .line 522
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteRsrq()I
    .locals 1

    .prologue
    .line 527
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    return v0
.end method

.method public getLteRssnr()I
    .locals 1

    .prologue
    .line 532
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    return v0
.end method

.method public getLteSignalStrength()I
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    return v0
.end method

.method public getTdScdmaAsuLevel()I
    .locals 3

    .prologue
    .line 1085
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    .line 1088
    .local v1, "tdScdmaDbm":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/16 v0, 0xff

    .line 1091
    .local v0, "tdScdmaAsuLevel":I
    :goto_0
    return v0

    .line 1089
    .end local v0    # "tdScdmaAsuLevel":I
    :cond_0
    add-int/lit8 v0, v1, 0x78

    .restart local v0    # "tdScdmaAsuLevel":I
    goto :goto_0
.end method

.method public getTdScdmaDbm()I
    .locals 1

    .prologue
    .line 1034
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    return v0
.end method

.method public getTdScdmaLevel()I
    .locals 5

    .prologue
    const/16 v4, -0x19

    const v3, 0x7fffffff

    .line 1046
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    .line 1049
    .local v1, "tdScdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->signalNumberisFive()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1050
    if-ne v1, v3, :cond_0

    const/4 v0, 0x0

    .line 1076
    .local v0, "level":I
    :goto_0
    return v0

    .line 1051
    .end local v0    # "level":I
    :cond_0
    const/16 v2, -0x54

    if-lt v1, v2, :cond_1

    const/4 v0, 0x5

    .restart local v0    # "level":I
    goto :goto_0

    .line 1052
    .end local v0    # "level":I
    :cond_1
    const/16 v2, -0x5a

    if-lt v1, v2, :cond_2

    const/4 v0, 0x4

    .restart local v0    # "level":I
    goto :goto_0

    .line 1053
    .end local v0    # "level":I
    :cond_2
    const/16 v2, -0x5e

    if-lt v1, v2, :cond_3

    const/4 v0, 0x3

    .restart local v0    # "level":I
    goto :goto_0

    .line 1054
    .end local v0    # "level":I
    :cond_3
    const/16 v2, -0x62

    if-lt v1, v2, :cond_4

    const/4 v0, 0x2

    .restart local v0    # "level":I
    goto :goto_0

    .line 1055
    .end local v0    # "level":I
    :cond_4
    const/16 v2, -0x6f

    if-lt v1, v2, :cond_5

    const/4 v0, 0x1

    .restart local v0    # "level":I
    goto :goto_0

    .line 1056
    .end local v0    # "level":I
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "level":I
    goto :goto_0

    .line 1057
    .end local v0    # "level":I
    :cond_6
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->signalNumberisFour()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1058
    if-gt v1, v4, :cond_7

    if-ne v1, v3, :cond_8

    .line 1059
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "level":I
    goto :goto_0

    .line 1060
    .end local v0    # "level":I
    :cond_8
    const/16 v2, -0x55

    if-lt v1, v2, :cond_9

    const/4 v0, 0x4

    .restart local v0    # "level":I
    goto :goto_0

    .line 1061
    .end local v0    # "level":I
    :cond_9
    const/16 v2, -0x5d

    if-lt v1, v2, :cond_a

    const/4 v0, 0x3

    .restart local v0    # "level":I
    goto :goto_0

    .line 1062
    .end local v0    # "level":I
    :cond_a
    const/16 v2, -0x64

    if-lt v1, v2, :cond_b

    const/4 v0, 0x2

    .restart local v0    # "level":I
    goto :goto_0

    .line 1063
    .end local v0    # "level":I
    :cond_b
    const/16 v2, -0x6c

    if-lt v1, v2, :cond_c

    const/4 v0, 0x1

    .restart local v0    # "level":I
    goto :goto_0

    .line 1064
    .end local v0    # "level":I
    :cond_c
    const/4 v0, 0x0

    .restart local v0    # "level":I
    goto :goto_0

    .line 1066
    .end local v0    # "level":I
    :cond_d
    if-gt v1, v4, :cond_e

    if-ne v1, v3, :cond_f

    .line 1067
    :cond_e
    const/4 v0, 0x0

    .restart local v0    # "level":I
    goto :goto_0

    .line 1068
    .end local v0    # "level":I
    :cond_f
    const/16 v2, -0x31

    if-lt v1, v2, :cond_10

    const/4 v0, 0x4

    .restart local v0    # "level":I
    goto :goto_0

    .line 1069
    .end local v0    # "level":I
    :cond_10
    const/16 v2, -0x49

    if-lt v1, v2, :cond_11

    const/4 v0, 0x3

    .restart local v0    # "level":I
    goto :goto_0

    .line 1070
    .end local v0    # "level":I
    :cond_11
    const/16 v2, -0x61

    if-lt v1, v2, :cond_12

    const/4 v0, 0x2

    .restart local v0    # "level":I
    goto :goto_0

    .line 1071
    .end local v0    # "level":I
    :cond_12
    const/16 v2, -0x78

    if-lt v1, v2, :cond_13

    const/4 v0, 0x1

    .restart local v0    # "level":I
    goto :goto_0

    .line 1072
    .end local v0    # "level":I
    :cond_13
    const/4 v0, 0x0

    .restart local v0    # "level":I
    goto :goto_0
.end method

.method public getWcdmaLevel()I
    .locals 6

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x3

    .line 1231
    const/4 v1, 0x0

    .line 1237
    .local v1, "level":I
    iget v2, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    if-eq v2, v4, :cond_0

    iget v2, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    if-eq v2, v5, :cond_0

    iget v2, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    const/16 v3, 0xb

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    const/16 v3, 0xf

    if-ne v2, v3, :cond_2

    .line 1242
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 1243
    .local v0, "asu":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->signalNumberisFive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1244
    const/4 v2, 0x1

    if-lt v0, v2, :cond_1

    const/16 v2, 0x1f

    if-gt v0, v2, :cond_1

    const/16 v2, 0x63

    if-ne v0, v2, :cond_3

    :cond_1
    const/4 v1, 0x0

    .line 1253
    .end local v0    # "asu":I
    :cond_2
    :goto_0
    return v1

    .line 1245
    .restart local v0    # "asu":I
    :cond_3
    const/16 v2, 0xc

    if-lt v0, v2, :cond_4

    const/4 v1, 0x5

    goto :goto_0

    .line 1246
    :cond_4
    if-lt v0, v5, :cond_5

    const/4 v1, 0x4

    goto :goto_0

    .line 1247
    :cond_5
    const/4 v2, 0x6

    if-lt v0, v2, :cond_6

    const/4 v1, 0x3

    goto :goto_0

    .line 1248
    :cond_6
    if-lt v0, v4, :cond_7

    const/4 v1, 0x2

    goto :goto_0

    .line 1249
    :cond_7
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1099
    const/16 v0, 0x1f

    .line 1100
    .local v0, "primeNum":I
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initialize(IIIIIIIIIIIIZ)V
    .locals 1
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsm"    # Z

    .prologue
    .line 279
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 280
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 281
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 282
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 283
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 284
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 285
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 286
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 287
    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 288
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 289
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 290
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 291
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 292
    iput-boolean p13, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 294
    return-void
.end method

.method public initialize(IIIIIIIZ)V
    .locals 14
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsm"    # Z

    .prologue
    .line 250
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 253
    return-void
.end method

.method public isGsm()Z
    .locals 1

    .prologue
    .line 1025
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return v0
.end method

.method public setGsm(Z)V
    .locals 0
    .param p1, "gsmFlag"    # Z

    .prologue
    .line 462
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 463
    return-void
.end method

.method public setRadioTechnology(I)V
    .locals 0
    .param p1, "RadioTechnology"    # I

    .prologue
    .line 1227
    iput p1, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    .line 1228
    return-void
.end method

.method protected signalNumberisFive()Z
    .locals 2

    .prologue
    .line 80
    sget-object v0, Landroid/telephony/SignalStrength;->mSignalNumber:Ljava/lang/String;

    const-string v1, "five"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected signalNumberisFour()Z
    .locals 2

    .prologue
    .line 84
    sget-object v0, Landroid/telephony/SignalStrength;->mSignalNumber:Ljava/lang/String;

    const-string v1, "four"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const-string v0, "gsm|lte"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "cdma"

    goto :goto_0
.end method

.method public validateInput()V
    .locals 5

    .prologue
    const/16 v1, 0x63

    const/4 v3, -0x1

    const/16 v2, -0x78

    const v4, 0x7fffffff

    .line 429
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ltz v0, :cond_4

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    :goto_0
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 432
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-lez v0, :cond_5

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    neg-int v0, v0

    :goto_1
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 433
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-lez v0, :cond_6

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    neg-int v0, v0

    :goto_2
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 435
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    neg-int v2, v0

    :cond_0
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 436
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ltz v0, :cond_7

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    neg-int v0, v0

    :goto_3
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 437
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-lez v0, :cond_1

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    const/16 v2, 0x8

    if-gt v0, v2, :cond_1

    iget v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    :cond_1
    iput v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 440
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v0, :cond_2

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    :cond_2
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 441
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x2c

    if-lt v0, v1, :cond_8

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x8c

    if-gt v0, v1, :cond_8

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v0, v0

    :goto_4
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 442
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    neg-int v0, v0

    :goto_5
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 443
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, -0xc8

    if-lt v0, v1, :cond_a

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_a

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    :goto_6
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 446
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_3

    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const/16 v1, 0x78

    if-gt v0, v1, :cond_3

    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    neg-int v4, v0

    :cond_3
    iput v4, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 451
    return-void

    :cond_4
    move v0, v1

    .line 429
    goto :goto_0

    :cond_5
    move v0, v2

    .line 432
    goto :goto_1

    .line 433
    :cond_6
    const/16 v0, -0xa0

    goto :goto_2

    :cond_7
    move v0, v3

    .line 436
    goto :goto_3

    :cond_8
    move v0, v4

    .line 441
    goto :goto_4

    :cond_9
    move v0, v4

    .line 442
    goto :goto_5

    :cond_a
    move v0, v4

    .line 443
    goto :goto_6
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 375
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    iget v0, p0, Landroid/telephony/SignalStrength;->mRadioTechnology:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    return-void

    .line 388
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
