.class public Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.super Landroid/os/Handler;
.source "UsimPhoneBookManager.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;
    }
.end annotation


# static fields
.field private static final ANR_ADDITIONAL_NUMBER_END_ID:I = 0xc

.field private static final ANR_ADDITIONAL_NUMBER_START_ID:I = 0x3

.field private static final ANR_ADN_RECORD_IDENTIFIER_ID:I = 0x10

.field private static final ANR_ADN_SFI_ID:I = 0xf

.field private static final ANR_BCD_NUMBER_LENGTH:I = 0x1

.field private static final ANR_CAPABILITY_ID:I = 0xd

.field private static final ANR_DESCRIPTION_ID:I = 0x0

.field private static final ANR_EXTENSION_ID:I = 0xe

.field private static final ANR_TON_NPI_ID:I = 0x2

.field private static final DBG:Z = true

.field private static final EVENT_ANR_LOAD_DONE:I = 0x5

.field private static final EVENT_EF_ANR_RECORD_SIZE_DONE:I = 0x7

.field private static final EVENT_EF_EMAIL_RECORD_SIZE_DONE:I = 0x6

.field private static final EVENT_EF_GAS_RECORD_SIZE_DONE:I = 0xe

.field private static final EVENT_EF_GRP_RECORD_SIZE_DONE:I = 0x10

.field private static final EVENT_EF_IAP_RECORD_SIZE_DONE:I = 0xa

.field private static final EVENT_EMAIL_LOAD_DONE:I = 0x4

.field private static final EVENT_GAS_LOAD_DONE:I = 0xd

.field private static final EVENT_GRP_LOAD_DONE:I = 0xc

.field private static final EVENT_IAP_LOAD_DONE:I = 0x3

.field private static final EVENT_PBR_LOAD_DONE:I = 0x1

.field private static final EVENT_UPDATE_ANR_RECORD_DONE:I = 0x9

.field private static final EVENT_UPDATE_EMAIL_RECORD_DONE:I = 0x8

.field private static final EVENT_UPDATE_GAS_RECORD_DONE:I = 0xf

.field private static final EVENT_UPDATE_GRP_RECORD_DONE:I = 0x11

.field private static final EVENT_UPDATE_IAP_RECORD_DONE:I = 0xb

.field private static final EVENT_USIM_ADN_LOAD_DONE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "UsimPhoneBookManager"

.field private static final MAX_NUMBER_SIZE_BYTES:I = 0xb

.field private static final USIM_EFAAS_TAG:I = 0xc7

.field private static final USIM_EFADN_TAG:I = 0xc0

.field private static final USIM_EFANR_TAG:I = 0xc4

.field private static final USIM_EFCCP1_TAG:I = 0xcb

.field private static final USIM_EFEMAIL_TAG:I = 0xca

.field private static final USIM_EFEXT1_TAG:I = 0xc2

.field private static final USIM_EFGRP_TAG:I = 0xc6

.field private static final USIM_EFGSD_TAG:I = 0xc8

.field private static final USIM_EFIAP_TAG:I = 0xc1

.field private static final USIM_EFPBC_TAG:I = 0xc5

.field private static final USIM_EFSNE_TAG:I = 0xc3

.field private static final USIM_EFUID_TAG:I = 0xc9

.field private static final USIM_TYPE1_TAG:I = 0xa8

.field private static final USIM_TYPE2_TAG:I = 0xa9

.field private static final USIM_TYPE3_TAG:I = 0xaa


# instance fields
.field private mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

.field private mAdnLengthList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAnrFileRecord:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private mAnrFlags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAnrFlagsRecord:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAnrPresentInIap:Z

.field private mAnrTagNumberInIap:I

.field private mEmailFileRecord:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private mEmailFlags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEmailFlagsRecord:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailPresentInIap:Z

.field private mEmailTagNumberInIap:I

.field private mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private mGasFileRecord:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private mGasList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGasLock:Ljava/lang/Object;

.field private mGassuccess:I

.field private mGrpFileRecord:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private mGrpsForAdnRec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIapFileRecord:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private mIapPresent:Z

.field private mIsPbrPresent:Ljava/lang/Boolean;

.field private mLock:Ljava/lang/Object;

.field private mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

.field private mPendingExtLoads:I

.field private mPhoneBookRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordNums:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRefreshCache:Z

.field private mSuccess:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;)V
    .locals 3
    .param p1, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p2, "cache"    # Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    .line 58
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    .line 59
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    .line 60
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    .line 61
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    .line 62
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapPresent:Z

    .line 66
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    .line 68
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 69
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 82
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasList:Ljava/util/ArrayList;

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGassuccess:I

    .line 135
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordNums:Ljava/util/Map;

    .line 142
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGrpFileRecord:Ljava/util/Map;

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasFileRecord:Ljava/util/Map;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasList:Ljava/util/ArrayList;

    .line 154
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 155
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 156
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapPresent:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapPresent:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    .prologue
    .line 48
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    return p1
.end method

.method private buildAnrData(IILjava/lang/String;)[B
    .locals 10
    .param p1, "length"    # I
    .param p2, "adnRecIndex"    # I
    .param p3, "anr"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 927
    new-array v1, p1, [B

    .line 928
    .local v1, "data":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 929
    aput-byte v8, v1, v2

    .line 928
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 931
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 932
    const-string v6, "[buildAnrData] Empty anr record"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 959
    .end local v1    # "data":[B
    :goto_1
    return-object v1

    .line 935
    .restart local v1    # "data":[B
    :cond_1
    aput-byte v9, v1, v9

    .line 936
    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    .line 939
    .local v0, "byteAnr":[B
    if-nez v0, :cond_2

    move-object v1, v6

    .line 940
    goto :goto_1

    .line 944
    :cond_2
    const/16 v3, 0xb

    .line 945
    .local v3, "maxlength":I
    array-length v7, v0

    if-le v7, v3, :cond_3

    .line 946
    const-string v7, "[buildAnrData] wrong ANR length"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move-object v1, v6

    .line 947
    goto :goto_1

    .line 949
    :cond_3
    const/4 v6, 0x2

    array-length v7, v0

    invoke-static {v0, v9, v1, v6, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 950
    const/4 v6, 0x1

    array-length v7, v0

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    .line 951
    const/16 v6, 0xd

    aput-byte v8, v1, v6

    .line 952
    const/16 v6, 0xe

    aput-byte v8, v1, v6

    .line 953
    const/16 v6, 0x11

    if-ne p1, v6, :cond_4

    .line 954
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v4

    .line 955
    .local v4, "pbrIndex":I
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v6

    sub-int v5, p2, v6

    .line 956
    .local v5, "recordIndex":I
    const/16 v6, 0x10

    add-int/lit8 v7, v5, 0x1

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    .line 958
    .end local v4    # "pbrIndex":I
    .end local v5    # "recordIndex":I
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "buildAnrData: data is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private buildEmailData(IILjava/lang/String;)[B
    .locals 9
    .param p1, "length"    # I
    .param p2, "adnRecIndex"    # I
    .param p3, "email"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 897
    new-array v1, p1, [B

    .line 898
    .local v1, "data":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 899
    const/4 v6, -0x1

    aput-byte v6, v1, v2

    .line 898
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 901
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 902
    const-string v6, "[buildEmailData] Empty email record"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 923
    .end local v1    # "data":[B
    :goto_1
    return-object v1

    .line 905
    .restart local v1    # "data":[B
    :cond_1
    invoke-static {p3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    .line 909
    .local v0, "byteEmail":[B
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    add-int/lit8 v5, p1, -0x2

    .line 911
    .local v5, "tmpLen":I
    :goto_2
    array-length v6, v0

    if-le v6, v5, :cond_3

    .line 912
    const-string v6, "[buildEmailData] wrong email length"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 913
    const/4 v1, 0x0

    goto :goto_1

    .end local v5    # "tmpLen":I
    :cond_2
    move v5, p1

    .line 909
    goto :goto_2

    .line 916
    .restart local v5    # "tmpLen":I
    :cond_3
    array-length v6, v0

    invoke-static {v0, v8, v1, v8, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 917
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v6, :cond_4

    .line 918
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v3

    .line 919
    .local v3, "pbrIndex":I
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v6

    sub-int v4, p2, v6

    .line 920
    .local v4, "recordIndex":I
    add-int/lit8 v6, p1, -0x1

    add-int/lit8 v7, v4, 0x1

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    .line 922
    .end local v3    # "pbrIndex":I
    .end local v4    # "recordIndex":I
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "buildEmailData: data is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private buildGasData(IILjava/lang/String;)[B
    .locals 6
    .param p1, "length"    # I
    .param p2, "gasindex"    # I
    .param p3, "gasname"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1944
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildGasData: length= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "gasindex= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "gasname= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1945
    new-array v1, p1, [B

    .line 1947
    .local v1, "data":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 1948
    const/4 v3, -0x1

    aput-byte v3, v1, v2

    .line 1947
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1950
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1951
    const-string v3, "UsimPhoneBookManager"

    const-string v4, "[buildGasData] Empty Gas record"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    .end local v1    # "data":[B
    :goto_1
    return-object v1

    .line 1953
    .restart local v1    # "data":[B
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, p1, :cond_2

    .line 1954
    const-string v3, "UsimPhoneBookManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "buildGasData Max length of tag is length"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    const/4 v1, 0x0

    goto :goto_1

    .line 1957
    :cond_2
    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->stringToAdnStringField(Ljava/lang/String;)[B

    move-result-object v0

    .line 1958
    .local v0, "byteTag":[B
    array-length v3, v0

    invoke-static {v0, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1959
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private createPbrFile(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 963
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-nez p1, :cond_0

    .line 964
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 965
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 969
    :goto_0
    return-void

    .line 968
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    goto :goto_0
.end method

.method private getAnrRecNumber(IILjava/lang/String;)I
    .locals 11
    .param p1, "adnRecIndex"    # I
    .param p2, "numRecs"    # I
    .param p3, "oldAnr"    # Ljava/lang/String;

    .prologue
    .line 853
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v4

    .line 854
    .local v4, "pbrIndex":I
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v9

    sub-int v6, p1, v9

    .line 855
    .local v6, "recordIndex":I
    const/4 v7, -0x1

    .line 856
    .local v7, "recordNumber":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-direct {p0, v9, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v9

    if-nez v9, :cond_0

    move v9, v7

    .line 893
    :goto_0
    return v9

    .line 859
    :cond_0
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-direct {p0, v9, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 860
    const/4 v5, 0x0

    .line 862
    .local v5, "record":[B
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, [B

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 866
    :goto_1
    if-eqz v5, :cond_1

    iget v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    aget-byte v9, v5, v9

    if-lez v9, :cond_1

    .line 867
    iget v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    aget-byte v7, v5, v9

    .line 868
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getAnrRecNumber: recnum from iap is :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move v9, v7

    .line 869
    goto :goto_0

    .line 863
    :catch_0
    move-exception v2

    .line 864
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "UsimPhoneBookManager"

    const-string v10, "IndexOutOfBoundsException in getAnrRecNumber"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 871
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 872
    .local v8, "recsSize":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getAnrRecNumber: anr record size is :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 873
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 874
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v8, :cond_5

    .line 875
    const/4 v9, 0x0

    invoke-direct {p0, v3, v4, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAnrRecord(III)Ljava/lang/String;

    move-result-object v1

    .line 876
    .local v1, "anrRecord":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 877
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getAnrRecNumber: Empty anr record. Anr record num is :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 878
    add-int/lit8 v9, v3, 0x1

    goto/16 :goto_0

    .line 879
    :cond_2
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_3

    .line 882
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unused but non empty record.Anr record num is :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 883
    add-int/lit8 v9, v3, 0x1

    goto/16 :goto_0

    .line 874
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 889
    .end local v1    # "anrRecord":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "record":[B
    .end local v8    # "recsSize":I
    :cond_4
    add-int/lit8 v7, v6, 0x1

    move v9, v7

    .line 890
    goto/16 :goto_0

    .line 892
    .restart local v5    # "record":[B
    .restart local v8    # "recsSize":I
    :cond_5
    const-string v9, "getAnrRecNumber: no anr record index found"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move v9, v7

    .line 893
    goto/16 :goto_0
.end method

.method private getEmailRecNumber(IILjava/lang/String;)I
    .locals 11
    .param p1, "adnRecIndex"    # I
    .param p2, "numRecs"    # I
    .param p3, "oldEmail"    # Ljava/lang/String;

    .prologue
    .line 804
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v4

    .line 805
    .local v4, "pbrIndex":I
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v9

    sub-int v6, p1, v9

    .line 806
    .local v6, "recordIndex":I
    const/4 v7, -0x1

    .line 807
    .local v7, "recordNumber":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getEmailRecNumber adnRecIndex is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", recordIndex is :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 809
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-direct {p0, v9, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 810
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getEmailRecNumber recordNumber is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move v9, v7

    .line 849
    :goto_0
    return v9

    .line 813
    :cond_0
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-direct {p0, v9, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 814
    const/4 v5, 0x0

    .line 816
    .local v5, "record":[B
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, [B

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 820
    :goto_1
    if-eqz v5, :cond_1

    iget v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v9, v5, v9

    if-lez v9, :cond_1

    .line 821
    iget v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v7, v5, v9

    .line 822
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " getEmailRecNumber: record is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", the email recordNumber is :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move v9, v7

    .line 824
    goto :goto_0

    .line 817
    :catch_0
    move-exception v1

    .line 818
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "UsimPhoneBookManager"

    const-string v10, "IndexOutOfBoundsException in getEmailRecNumber"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 826
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 827
    .local v8, "recsSize":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getEmailRecNumber recsSize is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 828
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 829
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v8, :cond_5

    .line 830
    const/4 v9, 0x0

    invoke-direct {p0, v3, v4, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(III)Ljava/lang/String;

    move-result-object v2

    .line 831
    .local v2, "emailRecord":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 832
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getEmailRecNumber: Got empty record.Email record num is :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 834
    add-int/lit8 v9, v3, 0x1

    goto/16 :goto_0

    .line 835
    :cond_2
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_3

    .line 838
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unused but non empty record.Email record num is :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 839
    add-int/lit8 v9, v3, 0x1

    goto/16 :goto_0

    .line 829
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 845
    .end local v2    # "emailRecord":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "record":[B
    .end local v8    # "recsSize":I
    :cond_4
    add-int/lit8 v7, v6, 0x1

    move v9, v7

    .line 846
    goto/16 :goto_0

    .line 848
    .restart local v5    # "record":[B
    .restart local v8    # "recsSize":I
    :cond_5
    const-string v9, "getEmailRecNumber: no email record index found"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move v9, v7

    .line 849
    goto/16 :goto_0
.end method

.method private getInitIndexBy(I)I
    .locals 3
    .param p1, "pbrIndex"    # I

    .prologue
    .line 544
    const/4 v0, 0x0

    .line 545
    .local v0, "index":I
    :goto_0
    if-lez p1, :cond_0

    .line 546
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    .line 547
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 549
    :cond_0
    return v0
.end method

.method private getValidRecordNums(I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "pbrIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 987
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordNums:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method private hasRecordIn(Ljava/util/Map;I)Z
    .locals 3
    .param p2, "pbrIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<[B>;>;I)Z"
        }
    .end annotation

    .prologue
    .line 553
    .local p1, "record":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/ArrayList<[B>;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 554
    :cond_0
    const-string v0, "UsimPhoneBookManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "record ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is empty in pbrIndex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/4 v0, 0x0

    .line 557
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private hasValidRecords(I)Z
    .locals 2
    .param p1, "pbrIndex"    # I

    .prologue
    .line 991
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordNums:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1597
    const-string v0, "UsimPhoneBookManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    return-void
.end method

.method private putValidRecNums(I)V
    .locals 5
    .param p1, "pbrIndex"    # I

    .prologue
    .line 972
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 973
    .local v2, "recordNums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v1

    .line 974
    .local v1, "initAdnIndex":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pbr index is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", initAdnIndex is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 975
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 976
    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 975
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 980
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 981
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 983
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordNums:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    return-void
.end method

.method private readAdnFileAndWait(I)V
    .locals 8
    .param p1, "recNum"    # I

    .prologue
    const/16 v5, 0xc2

    const/16 v6, 0xc0

    .line 783
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 784
    .local v2, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 801
    :cond_0
    :goto_0
    return-void

    .line 787
    :cond_1
    const/4 v1, 0x0

    .line 789
    .local v1, "extEf":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 790
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 792
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readAdnFileAndWait adn efid is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 793
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPBPath(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v5, v1, v3, v6}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestLoadAllAdnLike(IILjava/lang/String;Landroid/os/Message;)V

    .line 797
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 798
    :catch_0
    move-exception v0

    .line 799
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "UsimPhoneBookManager"

    const-string v4, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readAnrFileAndWait(I)V
    .locals 11
    .param p1, "recNum"    # I

    .prologue
    const/4 v10, 0x5

    const/16 v9, 0xc4

    .line 327
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v5, :cond_1

    .line 328
    const-string v5, "UsimPhoneBookManager"

    const-string v6, "mPbrFile is NULL, exiting from readAnrFileAndWait"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 333
    .local v2, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 335
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 336
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    if-eqz v5, :cond_4

    .line 337
    const/16 v5, 0xc1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapFileAndWait(II)V

    .line 338
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-direct {p0, v5, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 339
    const-string v5, "UsimPhoneBookManager"

    const-string v6, "Error: IAP file is empty"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 342
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPBPath(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v10, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v6, v7, v5, v8}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILjava/lang/String;Landroid/os/Message;)V

    .line 345
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readAnrFileAndWait anr efid is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 347
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-direct {p0, v5, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 366
    const-string v5, "UsimPhoneBookManager"

    const-string v6, "Error: Anr file is empty"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v5, "UsimPhoneBookManager"

    const-string v6, "Interrupted Exception in readEmailFileAndWait"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 353
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 354
    .local v1, "efid":I
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPBPath(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getValidRecordNums(I)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v10, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v5, v1, v6, v7, v8}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedPart(ILjava/lang/String;Ljava/util/ArrayList;Landroid/os/Message;)V

    .line 356
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readAnrFileAndWait anr efid is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " recNum:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 358
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 359
    :catch_1
    move-exception v0

    .line 360
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    const-string v5, "UsimPhoneBookManager"

    const-string v6, "Interrupted Exception in readEmailFileAndWait"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 370
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "efid":I
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    const/4 v4, 0x0

    .local v4, "m":I
    :goto_3
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 371
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlagsRecord:[Ljava/util/ArrayList;

    aget-object v5, v5, p1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 373
    :cond_6
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlagsRecord:[Ljava/util/ArrayList;

    aget-object v7, v7, p1

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithAnr(I)V

    goto/16 :goto_0
.end method

.method private readAnrRecord(III)Ljava/lang/String;
    .locals 7
    .param p1, "recNum"    # I
    .param p2, "pbrIndex"    # I
    .param p3, "offSet"    # I

    .prologue
    const/4 v5, 0x0

    .line 763
    const/4 v1, 0x0

    .line 764
    .local v1, "anrRec":[B
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v5

    .line 778
    :goto_0
    return-object v4

    .line 767
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    add-int v6, p1, p3

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [B

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    const/4 v4, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v3, v4, 0xff

    .line 773
    .local v3, "numberLength":I
    const/16 v4, 0xb

    if-le v3, v4, :cond_1

    .line 776
    const-string v4, ""

    goto :goto_0

    .line 768
    .end local v3    # "numberLength":I
    :catch_0
    move-exception v2

    .line 769
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "UsimPhoneBookManager"

    const-string v6, "Error: Improper ICC card: No anr record for ADN, continuing"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 770
    goto :goto_0

    .line 778
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v3    # "numberLength":I
    :cond_1
    const/4 v4, 0x2

    invoke-static {v1, v4, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private readEmailFileAndWait(I)V
    .locals 11
    .param p1, "recNum"    # I

    .prologue
    const/4 v10, 0x4

    const/16 v9, 0xca

    .line 270
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 271
    .local v2, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v2, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 278
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v5, :cond_4

    .line 279
    const/16 v5, 0xc1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapFileAndWait(II)V

    .line 280
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-direct {p0, v5, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 281
    const-string v5, "UsimPhoneBookManager"

    const-string v6, "Error: IAP file is empty"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 284
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPBPath(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v10, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v6, v7, v5, v8}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILjava/lang/String;Landroid/os/Message;)V

    .line 288
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readEmailFileAndWait email efid is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 290
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-direct {p0, v5, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 311
    const-string v5, "UsimPhoneBookManager"

    const-string v6, "Error: Email file is empty"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v5, "UsimPhoneBookManager"

    const-string v6, "Interrupted Exception in readEmailFileAndWait"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 297
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mEmailFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 298
    .local v1, "efid":I
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPBPath(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getValidRecordNums(I)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v10, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v5, v1, v6, v7, v8}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedPart(ILjava/lang/String;Ljava/util/ArrayList;Landroid/os/Message;)V

    .line 301
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readEmailFileAndWait email efid is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " recNum:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 303
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 304
    :catch_1
    move-exception v0

    .line 305
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    const-string v5, "UsimPhoneBookManager"

    const-string v6, "Interrupted Exception in readEmailFileAndWait"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 315
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "efid":I
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    const/4 v4, 0x0

    .local v4, "m":I
    :goto_3
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 316
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlagsRecord:[Ljava/util/ArrayList;

    aget-object v5, v5, p1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 318
    :cond_6
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlagsRecord:[Ljava/util/ArrayList;

    aget-object v7, v7, p1

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithEmail(I)V

    goto/16 :goto_0
.end method

.method private readEmailRecord(III)Ljava/lang/String;
    .locals 6
    .param p1, "recNum"    # I
    .param p2, "pbrIndex"    # I
    .param p3, "offSet"    # I

    .prologue
    const/4 v2, 0x0

    .line 748
    const/4 v3, 0x0

    .line 749
    .local v3, "emailRec":[B
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 759
    :goto_0
    return-object v2

    .line 752
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    add-int v5, p1, p3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [B

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    const/4 v4, 0x0

    array-length v5, v3

    add-int/lit8 v5, v5, -0x2

    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 759
    .local v2, "email":Ljava/lang/String;
    goto :goto_0

    .line 753
    .end local v2    # "email":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 754
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_0
.end method

.method private readGasListAndWait()V
    .locals 9

    .prologue
    const/16 v5, 0xc8

    const/4 v8, 0x0

    .line 1823
    const-string v3, "readGasListAndWait"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1825
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_1

    .line 1850
    :cond_0
    :goto_0
    return-void

    .line 1828
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1830
    .local v2, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1831
    const/16 v3, 0xc6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1832
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1833
    .local v1, "efid":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gas efid= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1834
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1835
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v6, 0xd

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1838
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1843
    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1844
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasFileRecord:Ljava/util/Map;

    invoke-direct {p0, v3, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1845
    const-string v3, "UsimPhoneBookManager"

    const-string v4, "Error: Gas file is empty"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1840
    :catch_0
    move-exception v0

    .line 1841
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "UsimPhoneBookManager"

    const-string v5, "Interrupted Exception in readGasFileAndWait"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1843
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 1848
    :cond_2
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseType3GasFile(I)V

    goto/16 :goto_0
.end method

.method private readGrpIdsAndWait(I)V
    .locals 7
    .param p1, "recNum"    # I

    .prologue
    const/16 v5, 0xc6

    .line 1796
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***readGrpIdsAndWait, recNum= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1798
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_1

    .line 1820
    :cond_0
    :goto_0
    return-void

    .line 1801
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1803
    .local v2, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1804
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1805
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1806
    .local v1, "efid":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***efid= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1807
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v5, 0xc

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 1810
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1814
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGrpFileRecord:Ljava/util/Map;

    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1815
    const-string v3, "UsimPhoneBookManager"

    const-string v4, "Error: Grp file is empty"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1811
    :catch_0
    move-exception v0

    .line 1812
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "UsimPhoneBookManager"

    const-string v4, "Interrupted Exception in readGrpFileAndWait"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1818
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneAdnRecordWithGrp(I)V

    goto/16 :goto_0
.end method

.method private readIapFileAndWait(II)V
    .locals 6
    .param p1, "efid"    # I
    .param p2, "recNum"    # I

    .prologue
    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pbrIndex is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",iap efid is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 381
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPBPath(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getValidRecordNums(I)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedPart(ILjava/lang/String;Ljava/util/ArrayList;Landroid/os/Message;)V

    .line 384
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :goto_0
    return-void

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "UsimPhoneBookManager"

    const-string v2, "Interrupted Exception in readIapFileAndWait"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readPbrFileAndWait()V
    .locals 4

    .prologue
    .line 260
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x4f30

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 262
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "UsimPhoneBookManager"

    const-string v2, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private refreshCache()V
    .locals 3

    .prologue
    .line 245
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 253
    :cond_0
    return-void

    .line 246
    :cond_1
    const-string v2, "refreshCache"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 247
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 249
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 250
    .local v1, "numRecs":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 251
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)V

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateIapFile(ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 9
    .param p1, "adnRecNum"    # I
    .param p2, "oldValue"    # Ljava/lang/String;
    .param p3, "newValue"    # Ljava/lang/String;
    .param p4, "tag"    # I

    .prologue
    const/4 v5, 0x0

    .line 475
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v2

    .line 476
    .local v2, "pbrIndex":I
    const/16 v4, 0xc1

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfidByTag(III)I

    move-result v1

    .line 477
    .local v1, "efid":I
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 478
    const/4 v3, -0x1

    .line 479
    .local v3, "recordNumber":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 480
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 504
    :goto_0
    return v4

    .line 481
    :cond_0
    sparse-switch p4, :sswitch_data_0

    .line 490
    :goto_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 491
    const/4 v3, -0x1

    .line 493
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateIapFile  efid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", recordNumber= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", adnRecNum="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 495
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 496
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPBPath(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xa

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v7, p1, v3, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v4, v1, v6, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 503
    :goto_2
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 504
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    goto :goto_0

    .line 483
    :sswitch_0
    add-int/lit8 v4, p1, -0x1

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailRecNumber(IILjava/lang/String;)I

    move-result v3

    .line 485
    goto :goto_1

    .line 487
    :sswitch_1
    add-int/lit8 v4, p1, -0x1

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnrRecNumber(IILjava/lang/String;)I

    move-result v3

    goto :goto_1

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "UsimPhoneBookManager"

    const-string v6, "interrupted while trying to update by search"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 503
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 481
    nop

    :sswitch_data_0
    .sparse-switch
        0xc4 -> :sswitch_1
        0xca -> :sswitch_0
    .end sparse-switch
.end method

.method private updatePhoneAdnRecordWithAnr(I)V
    .locals 13
    .param p1, "pbrIndex"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 613
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-direct {p0, v8, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 661
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 617
    .local v4, "numAdnRecs":I
    iget-boolean v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-direct {p0, v8, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 623
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 624
    const/4 v7, 0x0

    .line 626
    .local v7, "record":[B
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "record":[B
    check-cast v7, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    .restart local v7    # "record":[B
    iget v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    aget-byte v6, v7, v8

    .line 632
    .local v6, "recNum":I
    if-lez v6, :cond_2

    .line 633
    new-array v1, v12, [Ljava/lang/String;

    .line 635
    .local v1, "anrs":[Ljava/lang/String;
    add-int/lit8 v8, v6, -0x1

    invoke-direct {p0, v8, p1, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAnrRecord(III)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v11

    .line 636
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v8

    add-int v0, v3, v8

    .line 637
    .local v0, "adnRecIndex":I
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 638
    .local v5, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v5, :cond_2

    aget-object v8, v1, v11

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 639
    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAdditionalNumbers([Ljava/lang/String;)V

    .line 640
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v8, v0, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 641
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    add-int/lit8 v9, v6, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 623
    .end local v0    # "adnRecIndex":I
    .end local v1    # "anrs":[Ljava/lang/String;
    .end local v5    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 627
    .end local v6    # "recNum":I
    .end local v7    # "record":[B
    :catch_0
    move-exception v2

    .line 628
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v8, "UsimPhoneBookManager"

    const-string v9, "Error: Improper ICC card: No IAP record for ADN, continuing"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    const-string v8, "updatePhoneAdnRecordWithAnr: no need to parse type1 ANR file"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 658
    .end local v3    # "i":I
    :cond_4
    iget-boolean v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    if-nez v8, :cond_0

    .line 659
    invoke-virtual {p0, v4, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseType1AnrFile(II)V

    goto/16 :goto_0
.end method

.method private updatePhoneAdnRecordWithEmail(I)V
    .locals 14
    .param p1, "pbrIndex"    # I

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 561
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-direct {p0, v9, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 610
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 565
    .local v5, "numAdnRecs":I
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-direct {p0, v9, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 571
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_3

    .line 572
    const/4 v8, 0x0

    .line 574
    .local v8, "record":[B
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "record":[B
    check-cast v8, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    .restart local v8    # "record":[B
    iget v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v7, v8, v9

    .line 581
    .local v7, "recNum":I
    if-lez v7, :cond_2

    .line 582
    new-array v2, v13, [Ljava/lang/String;

    .line 584
    .local v2, "emails":[Ljava/lang/String;
    add-int/lit8 v9, v7, -0x1

    invoke-direct {p0, v9, p1, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(III)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v12

    .line 585
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v9

    add-int v0, v3, v9

    .line 586
    .local v0, "adnRecIndex":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 587
    .local v6, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v6, :cond_2

    aget-object v9, v2, v12

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 588
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 589
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v9, v0, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 590
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    add-int/lit8 v10, v7, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 571
    .end local v0    # "adnRecIndex":I
    .end local v2    # "emails":[Ljava/lang/String;
    .end local v6    # "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 575
    .end local v7    # "recNum":I
    .end local v8    # "record":[B
    :catch_0
    move-exception v1

    .line 576
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "UsimPhoneBookManager"

    const-string v10, "Error: Improper ICC card: No IAP record for ADN, continuing"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    const-string v9, "updatePhoneAdnRecordWithEmail: no need to parse type1 EMAIL file"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 603
    .end local v3    # "i":I
    :cond_4
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 607
    .local v4, "len":I
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-nez v9, :cond_0

    .line 608
    invoke-virtual {p0, v4, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseType1EmailFile(II)V

    goto/16 :goto_0
.end method

.method private updatePhoneAdnRecordWithGrp(I)V
    .locals 9
    .param p1, "pbrIndex"    # I

    .prologue
    .line 1853
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "***updatePhoneAdnRecordWithGrp: pbrindex= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1854
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGrpFileRecord:Ljava/util/Map;

    invoke-direct {p0, v7, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1882
    :cond_0
    :goto_0
    return-void

    .line 1855
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1858
    .local v5, "numAdnRecs":I
    invoke-virtual {p0, v5, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseType1GrpFile(II)V

    .line 1859
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v3

    .local v3, "i":I
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v7

    add-int/2addr v7, v5

    if-ge v3, v7, :cond_0

    .line 1860
    const/4 v2, 0x0

    .line 1862
    .local v2, "grpids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGrpsForAdnRec:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "grpids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    check-cast v2, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1866
    .restart local v2    # "grpids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_3

    .line 1859
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1863
    .end local v2    # "grpids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 1864
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_0

    .line 1867
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v2    # "grpids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 1868
    .local v6, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1871
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1872
    .local v1, "grpIdsSb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "len":I
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v4, v7, :cond_5

    .line 1873
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1874
    const-string v7, ","

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1872
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1876
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1877
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "grpidsSb: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1878
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->setGrpids(Ljava/lang/String;)V

    .line 1879
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method


# virtual methods
.method public addContactToGroup(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I
    .locals 29
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "anrNumber"    # [Ljava/lang/String;
    .param p4, "email"    # Ljava/lang/String;
    .param p5, "groupIndex"    # I

    .prologue
    .line 2094
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "addContactToGroup: groupindex: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ": "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2097
    if-eqz p3, :cond_0

    .line 2098
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "****anrNumber[0] ="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x0

    aget-object v27, p3, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2101
    :cond_0
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGassuccess:I

    .line 2102
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v9, v0, [Ljava/lang/String;

    .line 2103
    .local v9, "emailArray":[Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 2104
    const/4 v9, 0x0

    .line 2108
    :goto_0
    new-instance v21, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v9, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 2109
    .local v21, "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    const/16 v22, 0x0

    .line 2111
    .local v22, "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v22

    .line 2115
    :goto_1
    if-nez v22, :cond_2

    .line 2116
    const-string v26, "oldAdnList== null"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2117
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGassuccess:I

    move/from16 p5, v0

    .line 2219
    .end local p5    # "groupIndex":I
    :goto_2
    return p5

    .line 2106
    .end local v21    # "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v22    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .restart local p5    # "groupIndex":I
    :cond_1
    const/16 v26, 0x0

    aput-object p4, v9, v26

    goto :goto_0

    .line 2112
    .restart local v21    # "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v22    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :catch_0
    move-exception v7

    .line 2113
    .local v7, "e":Ljava/lang/NullPointerException;
    const/16 v22, 0x0

    goto :goto_1

    .line 2119
    .end local v7    # "e":Ljava/lang/NullPointerException;
    :cond_2
    const/16 v18, -0x1

    .line 2120
    .local v18, "index":I
    const/4 v6, 0x1

    .line 2121
    .local v6, "count":I
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_3

    .line 2122
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 2123
    move/from16 v18, v6

    .line 2128
    :cond_3
    const/16 v26, -0x1

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 2129
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Adn record don\'t exit for  "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2130
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGassuccess:I

    move/from16 p5, v0

    goto :goto_2

    .line 2126
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2132
    :cond_5
    add-int/lit8 v26, v18, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 2133
    .local v10, "foundAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordNumber()I

    move-result v24

    .line 2134
    .local v24, "recordnumber":I
    add-int/lit8 v26, v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v23

    .line 2135
    .local v23, "pbrIndex":I
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "pbrIndex= "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " recordnumber= "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2136
    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->getGrpids()Ljava/lang/String;

    move-result-object v14

    .line 2137
    .local v14, "grpids":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "old grp list is "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2138
    const/16 v26, 0xc6

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfidByTag(III)I

    move-result v8

    .line 2139
    .local v8, "efidgrp":I
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "grp efid= "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2141
    const/4 v5, 0x0

    .line 2142
    .local v5, "bExit":Z
    const/16 v20, 0x0

    .line 2143
    .local v20, "nOrder":I
    if-eqz v14, :cond_a

    .line 2144
    const-string v26, ","

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 2145
    .local v15, "grpidstr":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v13, v0, [I

    .line 2146
    .local v13, "grpidArray":[I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_4
    array-length v0, v15

    move/from16 v26, v0

    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_8

    .line 2147
    aget-object v26, v15, v17

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    aput v26, v13, v17

    .line 2148
    aget v26, v13, v17

    move/from16 v0, p5

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    .line 2149
    const/4 v5, 0x1

    .line 2150
    const-string v26, "Adn already exit in this group!"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2153
    :cond_6
    aget v26, v13, v17

    if-eqz v26, :cond_7

    aget v26, v13, v17

    const/16 v27, 0xff

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_9

    .line 2154
    :cond_7
    move/from16 v20, v17

    .line 2155
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "find unused position is "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2190
    .end local v15    # "grpidstr":[Ljava/lang/String;
    :cond_8
    :goto_5
    aput p5, v13, v20

    .line 2191
    array-length v0, v13

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v25, v0

    .line 2192
    .local v25, "writeGrpRec":[B
    const/16 v17, 0x0

    :goto_6
    array-length v0, v13

    move/from16 v26, v0

    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_f

    .line 2193
    aget v26, v13, v17

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v25, v17

    .line 2192
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 2146
    .end local v25    # "writeGrpRec":[B
    .restart local v15    # "grpidstr":[Ljava/lang/String;
    :cond_9
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 2161
    .end local v13    # "grpidArray":[I
    .end local v15    # "grpidstr":[Ljava/lang/String;
    .end local v17    # "i":I
    :cond_a
    const/16 v20, 0x0

    .line 2162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGrpFileRecord:Ljava/util/Map;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v26

    if-nez v26, :cond_b

    .line 2163
    const-string v26, "no GrpFileRecord!!"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2164
    const/16 p5, -0x1

    goto/16 :goto_2

    .line 2166
    :cond_b
    const/4 v4, 0x0

    .line 2168
    .local v4, "GrpRec":[B
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGrpFileRecord:Ljava/util/Map;

    move-object/from16 v26, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/ArrayList;

    add-int/lit8 v27, v24, -0x1

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "GrpRec":[B
    check-cast v4, [B
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2173
    .restart local v4    # "GrpRec":[B
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v16

    .line 2174
    .local v16, "grpstr":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "****grpstr= "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2175
    array-length v0, v4

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v13, v0, [I

    .line 2176
    .restart local v13    # "grpidArray":[I
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_7
    array-length v0, v4

    move/from16 v26, v0

    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_8

    .line 2177
    aget-byte v26, v4, v17

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    aput v26, v13, v17

    .line 2178
    aget v26, v13, v17

    move/from16 v0, p5

    move/from16 v1, v26

    if-ne v0, v1, :cond_c

    .line 2179
    const/4 v5, 0x1

    .line 2180
    const-string v26, "Adn already exit in this group!"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2169
    .end local v4    # "GrpRec":[B
    .end local v13    # "grpidArray":[I
    .end local v16    # "grpstr":Ljava/lang/String;
    .end local v17    # "i":I
    :catch_1
    move-exception v7

    .line 2170
    .local v7, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v26, "Error: Improper ICC card: No Grp record! "

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2171
    const/16 p5, -0x1

    goto/16 :goto_2

    .line 2183
    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v4    # "GrpRec":[B
    .restart local v13    # "grpidArray":[I
    .restart local v16    # "grpstr":Ljava/lang/String;
    .restart local v17    # "i":I
    :cond_c
    aget v26, v13, v17

    if-eqz v26, :cond_d

    aget v26, v13, v17

    const/16 v27, 0xff

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_e

    .line 2184
    :cond_d
    move/from16 v20, v17

    .line 2185
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "find unused position is: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2176
    :cond_e
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 2195
    .end local v4    # "GrpRec":[B
    .end local v16    # "grpstr":Ljava/lang/String;
    .restart local v25    # "writeGrpRec":[B
    :cond_f
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "writeGrpRec= "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static/range {v25 .. v25}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 2197
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v26, v0

    const/16 v28, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v8, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v8, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2200
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2204
    :goto_8
    :try_start_4
    monitor-exit v27
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2206
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGassuccess:I

    move/from16 v26, v0

    if-lez v26, :cond_11

    .line 2207
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 2208
    .local v11, "grpIdsSb":Ljava/lang/StringBuilder;
    array-length v12, v13

    .line 2209
    .local v12, "grpSize":I
    const/16 v17, 0x0

    :goto_9
    add-int/lit8 v26, v12, -0x1

    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_10

    .line 2210
    aget v26, v13, v17

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2211
    const-string v26, ","

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2209
    add-int/lit8 v17, v17, 0x1

    goto :goto_9

    .line 2201
    .end local v11    # "grpIdsSb":Ljava/lang/StringBuilder;
    .end local v12    # "grpSize":I
    :catch_2
    move-exception v7

    .line 2202
    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string v26, "interrupted while trying to update Grp in addContactToGroup"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_8

    .line 2204
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v26

    monitor-exit v27
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v26

    .line 2213
    .restart local v11    # "grpIdsSb":Ljava/lang/StringBuilder;
    .restart local v12    # "grpSize":I
    :cond_10
    add-int/lit8 v26, v12, -0x1

    aget v26, v13, v26

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2214
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "new grpids: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2215
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->setGrpids(Ljava/lang/String;)V

    .line 2216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    add-int/lit8 v27, v18, -0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v1, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGrpFileRecord:Ljava/util/Map;

    move-object/from16 v26, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/ArrayList;

    add-int/lit8 v27, v24, -0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2219
    .end local v11    # "grpIdsSb":Ljava/lang/StringBuilder;
    .end local v12    # "grpSize":I
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGassuccess:I

    move/from16 p5, v0

    goto/16 :goto_2
.end method

.method public deleteUsimGroup(I)I
    .locals 8
    .param p1, "groupIndex"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v4, -0x1

    .line 2057
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteUsimGroup: groupIndex= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2058
    iput v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGassuccess:I

    .line 2059
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 2060
    :cond_0
    const-string v4, "deleteUsimGroup fail!! gaslist=null"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2089
    :goto_0
    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGassuccess:I

    :cond_1
    :goto_1
    return v4

    .line 2061
    :cond_2
    if-lez p1, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le p1, v5, :cond_4

    .line 2062
    :cond_3
    const-string v4, "deleteUsimGroup fail! groupIndex invalid or outof Gaslist"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2064
    :cond_4
    const/4 v3, 0x0

    .line 2065
    .local v3, "oldname":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasList:Ljava/util/ArrayList;

    add-int/lit8 v6, p1, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "oldname":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 2066
    .restart local v3    # "oldname":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oldname= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2067
    const/16 v5, 0xc8

    invoke-virtual {p0, v7, v5, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfidByTag(III)I

    move-result v1

    .line 2068
    .local v1, "efid":I
    if-eq v1, v4, :cond_1

    .line 2071
    const-string v2, ""

    .line 2072
    .local v2, "newGroupname":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2073
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v6, 0xe

    invoke-virtual {p0, v6, p1, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2076
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2080
    :goto_2
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2081
    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGassuccess:I

    if-gez v4, :cond_5

    .line 2082
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteUsimGroup Fail! failcause= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGassuccess:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2083
    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGassuccess:I

    goto :goto_1

    .line 2077
    :catch_0
    move-exception v0

    .line 2078
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "interrupted while trying to update Gas in updateUsimGroup"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 2080
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 2085
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteUsimGroup OK! index= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGassuccess:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2086
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasList:Ljava/util/ArrayList;

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v4, v5, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public getAnrCount()I
    .locals 5

    .prologue
    .line 1601
    const/4 v0, 0x0

    .line 1602
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    .line 1603
    .local v2, "pbrIndex":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1604
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 1603
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1606
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAnrCount count is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1607
    return v0
.end method

.method public getAnrFilesCountEachAdn()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1721
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 1722
    const-string v2, "UsimPhoneBookManager"

    const-string v3, "mPbrFile is NULL, exiting from getAnrFilesCountEachAdn"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    :cond_0
    :goto_0
    return v1

    .line 1725
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1727
    .local v0, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 1729
    const/16 v2, 0xc4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1730
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    if-nez v2, :cond_2

    .line 1731
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileIds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    .line 1733
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getEfidByTag(III)I
    .locals 6
    .param p1, "recNum"    # I
    .param p2, "tag"    # I
    .param p3, "efidIndex"    # I

    .prologue
    const/4 v3, -0x1

    .line 510
    const/4 v0, -0x1

    .line 511
    .local v0, "efid":I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 513
    .local v2, "numRecs":I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 514
    .local v1, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v1, :cond_1

    .line 528
    :cond_0
    :goto_0
    return v3

    .line 517
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 521
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-nez v3, :cond_2

    const/16 v3, 0xca

    if-ne v3, p2, :cond_2

    .line 522
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mEmailFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    move v3, v0

    .line 528
    goto :goto_0

    .line 523
    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    if-nez v3, :cond_3

    const/16 v3, 0xc4

    if-ne v3, p2, :cond_3

    .line 524
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 526
    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1
.end method

.method public getEmailCount()I
    .locals 5

    .prologue
    .line 1611
    const/4 v0, 0x0

    .line 1612
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    .line 1613
    .local v2, "pbrIndex":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1614
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 1613
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1616
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEmailCount count is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1617
    return v0
.end method

.method public getEmailFilesCountEachAdn()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1699
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 1700
    const-string v2, "UsimPhoneBookManager"

    const-string v3, "mPbrFile is NULL, exiting from getEmailFilesCountEachAdn"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    :cond_0
    :goto_0
    return v1

    .line 1703
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1705
    .local v0, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 1707
    const/16 v2, 0xca

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1708
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-nez v2, :cond_2

    .line 1709
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mEmailFileIds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    .line 1711
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getEmptyAnrNum_Pbrindex(I)I
    .locals 5
    .param p1, "pbrindex"    # I

    .prologue
    .line 1677
    const/4 v0, 0x0

    .line 1678
    .local v0, "count":I
    const/4 v2, 0x0

    .line 1680
    .local v2, "size":I
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    if-nez v3, :cond_0

    .line 1683
    const/4 v3, 0x1

    .line 1694
    :goto_0
    return v3

    .line 1686
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1687
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1688
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1689
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 1688
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_2
    move v3, v0

    .line 1694
    goto :goto_0
.end method

.method public getEmptyEmailNum_Pbrindex(I)I
    .locals 5
    .param p1, "pbrindex"    # I

    .prologue
    .line 1656
    const/4 v0, 0x0

    .line 1657
    .local v0, "count":I
    const/4 v2, 0x0

    .line 1659
    .local v2, "size":I
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-nez v3, :cond_0

    .line 1662
    const/4 v3, 0x1

    .line 1673
    :goto_0
    return v3

    .line 1665
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1666
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1667
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1668
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 1667
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_2
    move v3, v0

    .line 1673
    goto :goto_0
.end method

.method public getIshaveEmailField()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1748
    const-string v3, "E: getIshaveEmailField"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1749
    const/4 v1, 0x0

    .line 1750
    .local v1, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 1751
    .local v0, "bemail":Z
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_1

    .line 1759
    :cond_0
    :goto_0
    return v2

    .line 1754
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    check-cast v1, Ljava/util/Map;

    .line 1756
    .restart local v1    # "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    .line 1757
    const/16 v3, 0xca

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 1758
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIshaveEmailField: bemail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1759
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-nez v3, :cond_2

    if-eqz v0, :cond_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getIshaveGrpGasField()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1777
    const-string v3, "E: getIshaveGrpGasField"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1778
    const/4 v1, 0x0

    .line 1779
    .local v1, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 1780
    .local v0, "bgrpgas":Z
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v3, :cond_0

    .line 1781
    const-string v3, "pbr == null"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1792
    :goto_0
    return v2

    .line 1784
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    check-cast v1, Ljava/util/Map;

    .line 1786
    .restart local v1    # "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v1, :cond_1

    .line 1787
    const-string v3, "fileids == null"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1790
    :cond_1
    const/16 v3, 0xc6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    .line 1791
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIshaveGrpGasFiled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    move v2, v0

    .line 1792
    goto :goto_0

    :cond_2
    move v0, v2

    .line 1790
    goto :goto_1
.end method

.method public getNumRecs()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1764
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 1765
    const-string v2, "UsimPhoneBookManager"

    const-string v3, "mPbrFile is NULL, exiting from getNumRecs"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    :cond_0
    :goto_0
    return v1

    .line 1768
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1770
    .local v0, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 1773
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    goto :goto_0
.end method

.method public getPBPath(I)Ljava/lang/String;
    .locals 1
    .param p1, "efid"    # I

    .prologue
    .line 1743
    const-string v0, "3F007F105F3A"

    return-object v0
.end method

.method public getPbrIndexBy(I)I
    .locals 4
    .param p1, "adnIndex"    # I

    .prologue
    .line 532
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 533
    .local v1, "len":I
    const/4 v2, 0x0

    .line 534
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 535
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    .line 536
    if-ge p1, v2, :cond_0

    .line 540
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 534
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 540
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getSpareAnrCount()I
    .locals 6

    .prologue
    .line 1621
    const/4 v0, 0x0

    .line 1622
    .local v0, "count":I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v3

    .line 1623
    .local v3, "pbrIndex":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 1624
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1625
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_0

    .line 1626
    add-int/lit8 v0, v0, 0x1

    .line 1624
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1623
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1629
    .end local v1    # "i":I
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSpareAnrCount count is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1630
    return v0
.end method

.method public getSpareEmailCount()I
    .locals 6

    .prologue
    .line 1634
    const/4 v0, 0x0

    .line 1635
    .local v0, "count":I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v3

    .line 1636
    .local v3, "pbrIndex":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 1637
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1638
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_0

    .line 1639
    add-int/lit8 v0, v0, 0x1

    .line 1637
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1636
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1642
    .end local v1    # "i":I
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSpareEmailCount count is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1643
    return v0
.end method

.method public getUsimAdnCount()I
    .locals 2

    .prologue
    .line 1647
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUsimAdnCount count is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1649
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1651
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUsimGroups()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1965
    const-string v0, "getUsimGroups"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1966
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1967
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasList:Ljava/util/ArrayList;

    monitor-exit v1

    .line 1971
    :goto_0
    return-object v0

    .line 1968
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1970
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readGasListAndWait()V

    .line 1971
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasList:Ljava/util/ArrayList;

    goto :goto_0

    .line 1968
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 50
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1005
    const/16 v41, 0x0

    .line 1006
    .local v41, "oldAnr":Ljava/lang/String;
    const/16 v39, 0x0

    .line 1007
    .local v39, "newAnr":Ljava/lang/String;
    const/16 v42, 0x0

    .line 1008
    .local v42, "oldEmail":Ljava/lang/String;
    const/16 v40, 0x0

    .line 1009
    .local v40, "newEmail":Ljava/lang/String;
    const/16 v46, 0x0

    .line 1011
    .local v46, "response":Landroid/os/Message;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 1484
    :cond_0
    :goto_0
    return-void

    .line 1013
    :pswitch_0
    const-string v4, "Loading PBR done"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1014
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/AsyncResult;

    .line 1015
    .local v27, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    .line 1016
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->createPbrFile(Ljava/util/ArrayList;)V

    .line 1018
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1019
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1020
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1023
    .end local v27    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    const-string v4, "Loading USIM ADN records done"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1024
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/AsyncResult;

    .line 1025
    .restart local v27    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v43

    .line 1026
    .local v43, "pbrIndex":I
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    .line 1027
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1028
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move/from16 v0, v43

    invoke-virtual {v6, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1029
    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->putValidRecNums(I)V

    .line 1033
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1034
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1035
    monitor-exit v6

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v4

    .line 1031
    :cond_2
    const-string v4, "can\'t load USIM ADN records"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1038
    .end local v27    # "ar":Landroid/os/AsyncResult;
    .end local v43    # "pbrIndex":I
    :pswitch_2
    const-string v4, "Loading USIM IAP records done"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1039
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/AsyncResult;

    .line 1040
    .restart local v27    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v43

    .line 1041
    .restart local v43    # "pbrIndex":I
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_3

    .line 1042
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-interface {v6, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1045
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1046
    monitor-exit v6

    goto/16 :goto_0

    :catchall_2
    move-exception v4

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v4

    .line 1049
    .end local v27    # "ar":Landroid/os/AsyncResult;
    .end local v43    # "pbrIndex":I
    :pswitch_3
    const-string v4, "Loading USIM Email records done"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1050
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/AsyncResult;

    .line 1051
    .restart local v27    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v43

    .line 1052
    .restart local v43    # "pbrIndex":I
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v4, :cond_4

    .line 1053
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/util/ArrayList;

    .line 1054
    .local v49, "tmpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-nez v49, :cond_5

    .line 1055
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-interface {v6, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handlemessage EVENT_EMAIL_LOAD_DONE size is: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1064
    .end local v49    # "tmpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1065
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1066
    monitor-exit v6

    goto/16 :goto_0

    :catchall_3
    move-exception v4

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v4

    .line 1057
    .restart local v49    # "tmpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_5
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, v49

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1058
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v49

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1069
    .end local v27    # "ar":Landroid/os/AsyncResult;
    .end local v43    # "pbrIndex":I
    .end local v49    # "tmpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :pswitch_4
    const-string v4, "Loading USIM Anr records done"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1070
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/AsyncResult;

    .line 1071
    .restart local v27    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v43

    .line 1072
    .restart local v43    # "pbrIndex":I
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v4, :cond_6

    .line 1073
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/util/ArrayList;

    .line 1074
    .local v48, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-nez v48, :cond_7

    .line 1075
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-interface {v6, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handlemessage EVENT_ANR_LOAD_DONE size is: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1084
    .end local v48    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1085
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1086
    monitor-exit v6

    goto/16 :goto_0

    :catchall_4
    move-exception v4

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v4

    .line 1077
    .restart local v48    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :cond_7
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, v48

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1078
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v48

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1089
    .end local v27    # "ar":Landroid/os/AsyncResult;
    .end local v43    # "pbrIndex":I
    .end local v48    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :pswitch_5
    const-string v4, "Loading EF_EMAIL_RECORD_SIZE_DONE"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1090
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    move-object/from16 v27, v4

    check-cast v27, Landroid/os/AsyncResult;

    .line 1091
    .restart local v27    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v33, v4

    check-cast v33, Ljava/lang/String;

    .line 1092
    .local v33, "emails":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    add-int/lit8 v24, v4, -0x1

    .line 1093
    .local v24, "adnRecIndex":I
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    .line 1094
    .local v5, "efid":I
    const-string v4, ","

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    .line 1095
    .local v32, "email":[Ljava/lang/String;
    move-object/from16 v0, v32

    array-length v4, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_9

    .line 1096
    const/4 v4, 0x0

    aget-object v42, v32, v4

    .line 1097
    const-string v40, ""

    .line 1102
    :cond_8
    :goto_4
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_a

    .line 1103
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 1104
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1105
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1106
    monitor-exit v6

    goto/16 :goto_0

    :catchall_5
    move-exception v4

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v4

    .line 1098
    :cond_9
    move-object/from16 v0, v32

    array-length v4, v0

    const/4 v6, 0x1

    if-le v4, v6, :cond_8

    .line 1099
    const/4 v4, 0x0

    aget-object v42, v32, v4

    .line 1100
    const/4 v4, 0x1

    aget-object v40, v32, v4

    goto :goto_4

    .line 1109
    :cond_a
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object/from16 v45, v4

    check-cast v45, [I

    .line 1110
    .local v45, "recordSize":[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailRecNumber(IILjava/lang/String;)I

    move-result v7

    .line 1111
    .local v7, "recordNumber":I
    move-object/from16 v0, v45

    array-length v4, v0

    const/4 v6, 0x3

    if-ne v4, v6, :cond_b

    const/4 v4, 0x2

    aget v4, v45, v4

    if-gt v7, v4, :cond_b

    if-gtz v7, :cond_c

    .line 1112
    :cond_b
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 1113
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1114
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1115
    monitor-exit v6

    goto/16 :goto_0

    :catchall_6
    move-exception v4

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v4

    .line 1118
    :cond_c
    const/4 v4, 0x0

    aget v4, v45, v4

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v40

    invoke-direct {v0, v4, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->buildEmailData(IILjava/lang/String;)[B

    move-result-object v8

    .line 1119
    .local v8, "data":[B
    if-nez v8, :cond_d

    .line 1120
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 1121
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1122
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1123
    monitor-exit v6

    goto/16 :goto_0

    :catchall_7
    move-exception v4

    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v4

    .line 1127
    :cond_d
    move/from16 v23, v7

    .line 1128
    .local v23, "actualRecNumber":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-nez v4, :cond_f

    .line 1129
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mEmailFileIds:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v29

    .line 1131
    .local v29, "efidIndex":I
    const/4 v4, -0x1

    move/from16 v0, v29

    if-ne v0, v4, :cond_e

    .line 1132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wrong efid index:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1136
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int v4, v4, v29

    add-int v23, v7, v4

    .line 1138
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EMAIL index:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " efid:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " actual RecNumber:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1142
    .end local v29    # "efidIndex":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPBPath(I)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    const/16 v10, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v10, v1, v2, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(ILjava/lang/String;I[BLjava/lang/String;Landroid/os/Message;)V

    .line 1150
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPendingExtLoads:I

    goto/16 :goto_0

    .line 1153
    .end local v5    # "efid":I
    .end local v7    # "recordNumber":I
    .end local v8    # "data":[B
    .end local v23    # "actualRecNumber":I
    .end local v24    # "adnRecIndex":I
    .end local v27    # "ar":Landroid/os/AsyncResult;
    .end local v32    # "email":[Ljava/lang/String;
    .end local v33    # "emails":Ljava/lang/String;
    .end local v45    # "recordSize":[I
    :pswitch_6
    const-string v4, "Loading EF_ANR_RECORD_SIZE_DONE"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1154
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    move-object/from16 v27, v4

    check-cast v27, Landroid/os/AsyncResult;

    .line 1155
    .restart local v27    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v26, v4

    check-cast v26, Ljava/lang/String;

    .line 1156
    .local v26, "anrs":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    add-int/lit8 v24, v4, -0x1

    .line 1157
    .restart local v24    # "adnRecIndex":I
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    .line 1158
    .restart local v5    # "efid":I
    const-string v4, ","

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 1159
    .local v25, "anr":[Ljava/lang/String;
    move-object/from16 v0, v25

    array-length v4, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_11

    .line 1160
    const/4 v4, 0x0

    aget-object v41, v25, v4

    .line 1161
    const-string v39, ""

    .line 1166
    :cond_10
    :goto_5
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_12

    .line 1167
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 1168
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1169
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1170
    monitor-exit v6

    goto/16 :goto_0

    :catchall_8
    move-exception v4

    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw v4

    .line 1162
    :cond_11
    move-object/from16 v0, v25

    array-length v4, v0

    const/4 v6, 0x1

    if-le v4, v6, :cond_10

    .line 1163
    const/4 v4, 0x0

    aget-object v41, v25, v4

    .line 1164
    const/4 v4, 0x1

    aget-object v39, v25, v4

    goto :goto_5

    .line 1173
    :cond_12
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object/from16 v45, v4

    check-cast v45, [I

    .line 1174
    .restart local v45    # "recordSize":[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnrRecNumber(IILjava/lang/String;)I

    move-result v7

    .line 1175
    .restart local v7    # "recordNumber":I
    move-object/from16 v0, v45

    array-length v4, v0

    const/4 v6, 0x3

    if-ne v4, v6, :cond_13

    const/4 v4, 0x2

    aget v4, v45, v4

    if-gt v7, v4, :cond_13

    if-gtz v7, :cond_14

    .line 1176
    :cond_13
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 1177
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1178
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1179
    monitor-exit v6

    goto/16 :goto_0

    :catchall_9
    move-exception v4

    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    throw v4

    .line 1182
    :cond_14
    const/4 v4, 0x0

    aget v4, v45, v4

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v39

    invoke-direct {v0, v4, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->buildAnrData(IILjava/lang/String;)[B

    move-result-object v8

    .line 1183
    .restart local v8    # "data":[B
    if-nez v8, :cond_15

    .line 1184
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 1185
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1186
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1187
    monitor-exit v6

    goto/16 :goto_0

    :catchall_a
    move-exception v4

    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    throw v4

    .line 1191
    :cond_15
    move/from16 v23, v7

    .line 1192
    .restart local v23    # "actualRecNumber":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    if-nez v4, :cond_17

    .line 1193
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileIds:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v29

    .line 1194
    .restart local v29    # "efidIndex":I
    const/4 v4, -0x1

    move/from16 v0, v29

    if-ne v0, v4, :cond_16

    .line 1195
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wrong efid index:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1198
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int v4, v4, v29

    add-int v23, v7, v4

    .line 1201
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ANR index:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " efid:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " actual RecNumber:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1205
    .end local v29    # "efidIndex":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPBPath(I)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    const/16 v10, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v10, v1, v2, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(ILjava/lang/String;I[BLjava/lang/String;Landroid/os/Message;)V

    .line 1213
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPendingExtLoads:I

    goto/16 :goto_0

    .line 1216
    .end local v5    # "efid":I
    .end local v7    # "recordNumber":I
    .end local v8    # "data":[B
    .end local v23    # "actualRecNumber":I
    .end local v24    # "adnRecIndex":I
    .end local v25    # "anr":[Ljava/lang/String;
    .end local v26    # "anrs":Ljava/lang/String;
    .end local v27    # "ar":Landroid/os/AsyncResult;
    .end local v45    # "recordSize":[I
    :pswitch_7
    const-string v4, "Loading UPDATE_EMAIL_RECORD_DONE"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1217
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    move-object/from16 v27, v4

    check-cast v27, Landroid/os/AsyncResult;

    .line 1218
    .restart local v27    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_18

    .line 1219
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 1221
    :cond_18
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, [B

    move-object v8, v4

    check-cast v8, [B

    .line 1222
    .restart local v8    # "data":[B
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    .line 1223
    .restart local v7    # "recordNumber":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v24, v0

    .line 1224
    .restart local v24    # "adnRecIndex":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v43

    .line 1225
    .restart local v43    # "pbrIndex":I
    const-string v4, "EVENT_UPDATE_EMAIL_RECORD_DONE"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1226
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPendingExtLoads:I

    .line 1227
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 1228
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    add-int/lit8 v6, v7, -0x1

    invoke-virtual {v4, v6, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1230
    const/16 v37, 0x0

    .local v37, "i":I
    :goto_6
    array-length v4, v8

    move/from16 v0, v37

    if-ge v0, v4, :cond_19

    .line 1231
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_UPDATE_EMAIL_RECORD_DONE data = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v6, v8, v37

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",i is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1232
    aget-byte v4, v8, v37

    const/4 v6, -0x1

    if-eq v4, v6, :cond_1a

    .line 1233
    const-string v4, "EVENT_UPDATE_EMAIL_RECORD_DONE data !=0xff"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1234
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    add-int/lit8 v6, v7, -0x1

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v6, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1239
    :cond_19
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1240
    :try_start_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1241
    monitor-exit v6

    goto/16 :goto_0

    :catchall_b
    move-exception v4

    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    throw v4

    .line 1237
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    add-int/lit8 v6, v7, -0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v6, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1230
    add-int/lit8 v37, v37, 0x1

    goto :goto_6

    .line 1244
    .end local v7    # "recordNumber":I
    .end local v8    # "data":[B
    .end local v24    # "adnRecIndex":I
    .end local v27    # "ar":Landroid/os/AsyncResult;
    .end local v37    # "i":I
    .end local v43    # "pbrIndex":I
    :pswitch_8
    const-string v4, "Loading UPDATE_ANR_RECORD_DONE"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1245
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    move-object/from16 v27, v4

    check-cast v27, Landroid/os/AsyncResult;

    .line 1246
    .restart local v27    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, [B

    move-object v8, v4

    check-cast v8, [B

    .line 1247
    .restart local v8    # "data":[B
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    .line 1248
    .restart local v7    # "recordNumber":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v24, v0

    .line 1249
    .restart local v24    # "adnRecIndex":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v43

    .line 1250
    .restart local v43    # "pbrIndex":I
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1b

    .line 1251
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 1253
    :cond_1b
    const-string v4, "EVENT_UPDATE_ANR_RECORD_DONE"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1254
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPendingExtLoads:I

    .line 1255
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 1256
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    add-int/lit8 v6, v7, -0x1

    invoke-virtual {v4, v6, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1258
    const/16 v37, 0x0

    .restart local v37    # "i":I
    :goto_7
    array-length v4, v8

    move/from16 v0, v37

    if-ge v0, v4, :cond_1c

    .line 1259
    aget-byte v4, v8, v37

    const/4 v6, -0x1

    if-eq v4, v6, :cond_1d

    .line 1260
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    add-int/lit8 v6, v7, -0x1

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v6, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1265
    :cond_1c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1266
    :try_start_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1267
    monitor-exit v6

    goto/16 :goto_0

    :catchall_c
    move-exception v4

    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    throw v4

    .line 1263
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    add-int/lit8 v6, v7, -0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v6, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1258
    add-int/lit8 v37, v37, 0x1

    goto :goto_7

    .line 1270
    .end local v7    # "recordNumber":I
    .end local v8    # "data":[B
    .end local v24    # "adnRecIndex":I
    .end local v27    # "ar":Landroid/os/AsyncResult;
    .end local v37    # "i":I
    .end local v43    # "pbrIndex":I
    :pswitch_9
    const-string v4, "EVENT_EF_IAP_RECORD_SIZE_DONE"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1271
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    move-object/from16 v27, v4

    check-cast v27, Landroid/os/AsyncResult;

    .line 1272
    .restart local v27    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    .line 1273
    .restart local v7    # "recordNumber":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    add-int/lit8 v24, v4, -0x1

    .line 1274
    .restart local v24    # "adnRecIndex":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v43

    .line 1275
    .restart local v43    # "pbrIndex":I
    const/16 v4, 0xc1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1, v4, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfidByTag(III)I

    move-result v5

    .line 1276
    .restart local v5    # "efid":I
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v47

    .line 1277
    .local v47, "tag":I
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1e

    .line 1278
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 1279
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1280
    :try_start_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1281
    monitor-exit v6

    goto/16 :goto_0

    :catchall_d
    move-exception v4

    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    throw v4

    .line 1284
    :cond_1e
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v43

    .line 1285
    const/16 v4, 0xc1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1, v4, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfidByTag(III)I

    move-result v5

    .line 1286
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object/from16 v45, v4

    check-cast v45, [I

    .line 1287
    .restart local v45    # "recordSize":[I
    const/4 v8, 0x0

    .line 1289
    .restart local v8    # "data":[B
    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v4

    sub-int v44, v24, v4

    .line 1290
    .local v44, "recordIndex":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleIAP_RECORD_SIZE_DONE adnRecIndex is: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", recordNumber is: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", recordIndex is: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1293
    move-object/from16 v0, v45

    array-length v4, v0

    const/4 v6, 0x3

    if-ne v4, v6, :cond_1f

    add-int/lit8 v4, v44, 0x1

    const/4 v6, 0x2

    aget v6, v45, v6

    if-gt v4, v6, :cond_1f

    if-nez v7, :cond_20

    .line 1295
    :cond_1f
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 1296
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1297
    :try_start_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1298
    monitor-exit v6

    goto/16 :goto_0

    :catchall_e
    move-exception v4

    monitor-exit v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    throw v4

    .line 1301
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-direct {v0, v4, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1302
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "data":[B
    check-cast v8, [B

    .line 1303
    .restart local v8    # "data":[B
    array-length v4, v8

    new-array v13, v4, [B

    .line 1304
    .local v13, "record_data":[B
    const/4 v4, 0x0

    const/4 v6, 0x0

    array-length v9, v13

    invoke-static {v8, v4, v13, v6, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1305
    sparse-switch v47, :sswitch_data_0

    .line 1313
    :goto_8
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPendingExtLoads:I

    .line 1314
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " IAP  efid= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", update IAP index= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " with value= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v13}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1316
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPBPath(I)Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v12, v44, 0x1

    const/4 v14, 0x0

    const/16 v4, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v4, v1, v7, v13}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    move v10, v5

    invoke-virtual/range {v9 .. v15}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(ILjava/lang/String;I[BLjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1307
    :sswitch_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    int-to-byte v6, v7

    aput-byte v6, v13, v4

    goto :goto_8

    .line 1310
    :sswitch_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    int-to-byte v6, v7

    aput-byte v6, v13, v4

    goto :goto_8

    .line 1327
    .end local v5    # "efid":I
    .end local v7    # "recordNumber":I
    .end local v8    # "data":[B
    .end local v13    # "record_data":[B
    .end local v24    # "adnRecIndex":I
    .end local v27    # "ar":Landroid/os/AsyncResult;
    .end local v43    # "pbrIndex":I
    .end local v44    # "recordIndex":I
    .end local v45    # "recordSize":[I
    .end local v47    # "tag":I
    :pswitch_a
    const-string v4, "EVENT_UPDATE_IAP_RECORD_DONE"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1328
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    move-object/from16 v27, v4

    check-cast v27, Landroid/os/AsyncResult;

    .line 1329
    .restart local v27    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_21

    .line 1330
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 1332
    :cond_21
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, [B

    move-object v8, v4

    check-cast v8, [B

    .line 1333
    .restart local v8    # "data":[B
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    .line 1334
    .restart local v24    # "adnRecIndex":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v43

    .line 1335
    .restart local v43    # "pbrIndex":I
    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v4

    sub-int v44, v24, v4

    .line 1336
    .restart local v44    # "recordIndex":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage EVENT_UPDATE_IAP_RECORD_DONE recordIndex is: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", adnRecIndex is: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1338
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPendingExtLoads:I

    .line 1339
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 1341
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move/from16 v0, v44

    invoke-virtual {v4, v0, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1342
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "the iap email recordNumber is :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v6, v8, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1343
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1344
    :try_start_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1345
    monitor-exit v6

    goto/16 :goto_0

    :catchall_f
    move-exception v4

    monitor-exit v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    throw v4

    .line 1350
    .end local v8    # "data":[B
    .end local v24    # "adnRecIndex":I
    .end local v27    # "ar":Landroid/os/AsyncResult;
    .end local v43    # "pbrIndex":I
    .end local v44    # "recordIndex":I
    :pswitch_b
    const-string v4, "Loading USIM grp records done"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1351
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/AsyncResult;

    .line 1352
    .restart local v27    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v43

    .line 1353
    .restart local v43    # "pbrIndex":I
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_22

    .line 1354
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGrpFileRecord:Ljava/util/Map;

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-interface {v6, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1356
    :cond_22
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1357
    :try_start_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1358
    monitor-exit v6

    goto/16 :goto_0

    :catchall_10
    move-exception v4

    monitor-exit v6
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    throw v4

    .line 1362
    .end local v27    # "ar":Landroid/os/AsyncResult;
    .end local v43    # "pbrIndex":I
    :pswitch_c
    const-string v4, "Loading USIM gas records done"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1363
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/AsyncResult;

    .line 1364
    .restart local v27    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v43

    .line 1365
    .restart local v43    # "pbrIndex":I
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_23

    .line 1366
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasFileRecord:Ljava/util/Map;

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-interface {v6, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1369
    :cond_23
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1370
    :try_start_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1371
    monitor-exit v6

    goto/16 :goto_0

    :catchall_11
    move-exception v4

    monitor-exit v6
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    throw v4

    .line 1375
    .end local v27    # "ar":Landroid/os/AsyncResult;
    .end local v43    # "pbrIndex":I
    :pswitch_d
    const-string v4, "EVENT_EF_GAS_RECORD_SIZE_DONE"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1376
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    move-object/from16 v27, v4

    check-cast v27, Landroid/os/AsyncResult;

    .line 1377
    .restart local v27    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v34, v4

    check-cast v34, Ljava/lang/String;

    .line 1378
    .local v34, "gasname":Ljava/lang/String;
    const/16 v16, -0x1

    .line 1379
    .local v16, "gasindex":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 1380
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    .line 1381
    .local v15, "gasefid":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gasindex= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " gasefid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1382
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_24

    .line 1383
    const-string v4, "exception!!"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1384
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGassuccess:I

    .line 1385
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1386
    :try_start_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1387
    monitor-exit v6

    goto/16 :goto_0

    :catchall_12
    move-exception v4

    monitor-exit v6
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    throw v4

    .line 1390
    :cond_24
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object/from16 v35, v4

    check-cast v35, [I

    .line 1392
    .local v35, "gasrecordSize":[I
    move-object/from16 v0, v35

    array-length v4, v0

    const/4 v6, 0x3

    if-ne v4, v6, :cond_25

    const/4 v4, 0x2

    aget v4, v35, v4

    move/from16 v0, v16

    if-le v0, v4, :cond_26

    .line 1393
    :cond_25
    const/4 v4, -0x8

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGassuccess:I

    .line 1394
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1395
    :try_start_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1396
    monitor-exit v6

    goto/16 :goto_0

    :catchall_13
    move-exception v4

    monitor-exit v6
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    throw v4

    .line 1399
    :cond_26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gasrecordsize[0]= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x0

    aget v6, v35, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " [1] = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x1

    aget v6, v35, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "[2]= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x2

    aget v6, v35, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1400
    const/4 v4, 0x0

    aget v4, v35, v4

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v34

    invoke-direct {v0, v4, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->buildGasData(IILjava/lang/String;)[B

    move-result-object v8

    .line 1401
    .restart local v8    # "data":[B
    if-nez v8, :cond_27

    .line 1402
    const/4 v4, -0x3

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGassuccess:I

    .line 1403
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1404
    :try_start_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1405
    monitor-exit v6

    goto/16 :goto_0

    :catchall_14
    move-exception v4

    monitor-exit v6
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    throw v4

    .line 1408
    :cond_27
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v18, 0x0

    const/16 v4, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v4, v1, v15, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    move-object/from16 v17, v8

    invoke-virtual/range {v14 .. v19}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1414
    .end local v8    # "data":[B
    .end local v15    # "gasefid":I
    .end local v16    # "gasindex":I
    .end local v27    # "ar":Landroid/os/AsyncResult;
    .end local v34    # "gasname":Ljava/lang/String;
    .end local v35    # "gasrecordSize":[I
    :pswitch_e
    const-string v4, "EVENT_EF_GRP_RECORD_SIZE_DONE"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1415
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    move-object/from16 v27, v4

    check-cast v27, Landroid/os/AsyncResult;

    .line 1416
    .restart local v27    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    .line 1417
    .local v19, "grpindex":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    .line 1418
    .local v18, "grpefid":I
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, [B

    move-object/from16 v20, v4

    check-cast v20, [B

    .line 1419
    .local v20, "grprec":[B
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_28

    .line 1420
    const-string v4, "exception !!"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1421
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGassuccess:I

    .line 1422
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1423
    :try_start_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1424
    monitor-exit v6

    goto/16 :goto_0

    :catchall_15
    move-exception v4

    monitor-exit v6
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_15

    throw v4

    .line 1427
    :cond_28
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object/from16 v36, v4

    check-cast v36, [I

    .line 1429
    .local v36, "grprecordSize":[I
    move-object/from16 v0, v36

    array-length v4, v0

    const/4 v6, 0x3

    if-ne v4, v6, :cond_29

    const/4 v4, 0x2

    aget v4, v36, v4

    move/from16 v0, v19

    if-le v0, v4, :cond_2a

    .line 1430
    :cond_29
    const-string v4, "grprecordSize length exception!"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1431
    const/4 v4, -0x8

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGassuccess:I

    .line 1432
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1433
    :try_start_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1434
    monitor-exit v6

    goto/16 :goto_0

    :catchall_16
    move-exception v4

    monitor-exit v6
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_16

    throw v4

    .line 1437
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v17, v0

    const/16 v21, 0x0

    const/16 v4, 0x11

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    move-object/from16 v3, v20

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v22

    invoke-virtual/range {v17 .. v22}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1443
    .end local v18    # "grpefid":I
    .end local v19    # "grpindex":I
    .end local v20    # "grprec":[B
    .end local v27    # "ar":Landroid/os/AsyncResult;
    .end local v36    # "grprecordSize":[I
    :pswitch_f
    const-string v4, "EVENT_UPDATE_GAS_RECORD_DONE"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1444
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    move-object/from16 v27, v4

    check-cast v27, Landroid/os/AsyncResult;

    .line 1445
    .restart local v27    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v38, v0

    .line 1446
    .local v38, "index":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v30, v0

    .line 1447
    .local v30, "efidgas":I
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, [B

    move-object/from16 v28, v4

    check-cast v28, [B

    .line 1448
    .local v28, "datagas":[B
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2c

    .line 1449
    const-string v4, "exception != null"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1450
    const/4 v4, -0x8

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGassuccess:I

    .line 1457
    :cond_2b
    :goto_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1458
    :try_start_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1459
    monitor-exit v6
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_17

    .line 1460
    const-string v4, "END: EVENT_UPDATE_GAS_RECORD_DONE"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1452
    :cond_2c
    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGassuccess:I

    .line 1453
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasFileRecord:Ljava/util/Map;

    if-eqz v4, :cond_2b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasFileRecord:Ljava/util/Map;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2b

    .line 1454
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasFileRecord:Ljava/util/Map;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    add-int/lit8 v6, v38, -0x1

    move-object/from16 v0, v28

    invoke-virtual {v4, v6, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 1459
    :catchall_17
    move-exception v4

    :try_start_18
    monitor-exit v6
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_17

    throw v4

    .line 1465
    .end local v27    # "ar":Landroid/os/AsyncResult;
    .end local v28    # "datagas":[B
    .end local v30    # "efidgas":I
    .end local v38    # "index":I
    :pswitch_10
    const-string v4, "EVENT_UPDATE_GRP_RECORD_DONE"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1466
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    move-object/from16 v27, v4

    check-cast v27, Landroid/os/AsyncResult;

    .line 1467
    .restart local v27    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v19, v0

    .line 1468
    .restart local v19    # "grpindex":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v31, v0

    .line 1469
    .local v31, "efidgrp":I
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, [B

    move-object/from16 v20, v4

    check-cast v20, [B

    .line 1470
    .restart local v20    # "grprec":[B
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2d

    .line 1471
    const-string v4, "exception!!"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1472
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGassuccess:I

    .line 1476
    :goto_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1477
    :try_start_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 1478
    monitor-exit v6
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_18

    .line 1479
    const-string v4, "END: EVENT_UPDATE_GRP_RECORD_DONE"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1474
    :cond_2d
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGassuccess:I

    goto :goto_a

    .line 1478
    :catchall_18
    move-exception v4

    :try_start_1a
    monitor-exit v6
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_18

    throw v4

    .line 1011
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_e
        :pswitch_10
    .end packed-switch

    .line 1305
    :sswitch_data_0
    .sparse-switch
        0xc4 -> :sswitch_1
        0xca -> :sswitch_0
    .end sparse-switch
.end method

.method public insertUsimGroup(Ljava/lang/String;)I
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v5, -0x1

    .line 1975
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertUsimGroup: name= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1976
    const/4 v3, -0x1

    .line 1977
    .local v3, "index":I
    iput v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGassuccess:I

    .line 1979
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasList:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 1980
    :cond_0
    const-string v5, "insertUsimGroup fail! GasList= null"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2018
    :goto_0
    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGassuccess:I

    :cond_1
    :goto_1
    return v5

    .line 1982
    :cond_2
    const/4 v4, 0x0

    .line 1983
    .local v4, "tempname":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 1984
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "tempname":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 1985
    .restart local v4    # "tempname":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "i= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "tempname= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1986
    if-eqz v4, :cond_4

    const-string v6, ""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1987
    add-int/lit8 v3, v2, 0x1

    .line 1988
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertUsimGroup: index ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1992
    :cond_3
    if-gez v3, :cond_5

    .line 1993
    const-string v5, "insertUsimGroup fail! "

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1994
    const/16 v5, -0x9

    goto :goto_1

    .line 1983
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1997
    :cond_5
    const/16 v6, 0xc8

    invoke-virtual {p0, v8, v6, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfidByTag(III)I

    move-result v1

    .line 1998
    .local v1, "efid":I
    if-eq v1, v5, :cond_1

    .line 2001
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2002
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v7, 0xe

    invoke-virtual {p0, v7, v3, v1, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v1, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2005
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2009
    :goto_3
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2010
    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGassuccess:I

    if-gez v5, :cond_6

    .line 2011
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertUsimGroup Fail! failcause= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGassuccess:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2012
    iget v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGassuccess:I

    goto/16 :goto_1

    .line 2006
    :catch_0
    move-exception v0

    .line 2007
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v5, "interrupted while trying to update Gas in insertUsimGroup"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 2009
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 2014
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertUsimGroup OK! index= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGassuccess:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2015
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasList:Ljava/util/ArrayList;

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v5, v6, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public invalidateCache()V
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 257
    return-void
.end method

.method public isSupportUsimGroup()Z
    .locals 1

    .prologue
    .line 2346
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getIshaveGrpGasField()Z

    move-result v0

    return v0
.end method

.method public loadEfFilesFromUsim()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 187
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 188
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 189
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    if-eqz v3, :cond_0

    .line 190
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 191
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->refreshCache()V

    .line 193
    const-string v3, "UsimPhoneBookManager"

    const-string v5, "Here is refresh the adn record cache and need to reload from sim"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    monitor-exit v4

    .line 241
    :goto_0
    return-object v3

    .line 198
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_2

    monitor-exit v4

    goto :goto_0

    .line 240
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 202
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v5, :cond_3

    .line 203
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 206
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v5, :cond_4

    monitor-exit v4

    goto :goto_0

    .line 208
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 211
    .local v2, "numRecs":I
    const/4 v0, 0x0

    .line 212
    .local v0, "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/Map;

    .line 213
    .restart local v0    # "fileIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v0, :cond_5

    .line 214
    const-string v5, "incorrect pbr file!"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 215
    monitor-exit v4

    goto :goto_0

    .line 219
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlagsRecord:[Ljava/util/ArrayList;

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlagsRecord:[Ljava/util/ArrayList;

    if-nez v3, :cond_6

    .line 220
    new-array v3, v2, [Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlagsRecord:[Ljava/util/ArrayList;

    .line 221
    new-array v3, v2, [Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlagsRecord:[Ljava/util/ArrayList;

    .line 222
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_6

    .line 223
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlagsRecord:[Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    aput-object v5, v3, v1

    .line 224
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlagsRecord:[Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    aput-object v5, v3, v1

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 228
    .end local v1    # "i":I
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v2, :cond_8

    .line 229
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)V

    .line 230
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailFileAndWait(I)V

    .line 231
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAnrFileAndWait(I)V

    .line 234
    const-string v3, "cmcc"

    const-string v5, "ro.lenovo.operator"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 235
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readGrpIdsAndWait(I)V

    .line 228
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 240
    :cond_8
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method parseType1AnrFile(II)V
    .locals 13
    .param p1, "numRecs"    # I
    .param p2, "pbrIndex"    # I

    .prologue
    const/4 v12, 0x0

    .line 708
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v9, v9, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileIds:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 709
    .local v7, "numAnrFiles":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 710
    .local v2, "anrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v0

    .line 712
    .local v0, "adnInitIndex":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-direct {p0, v9, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 745
    :cond_0
    return-void

    .line 714
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseType1AnrFile: pbrIndex is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", numRecs is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", numAnrFiles "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 716
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, p1, :cond_0

    .line 717
    const/4 v4, 0x0

    .line 718
    .local v4, "count":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 719
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v7, :cond_3

    .line 720
    mul-int v9, v6, p1

    invoke-direct {p0, v5, p2, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAnrRecord(III)Ljava/lang/String;

    move-result-object v1

    .line 721
    .local v1, "anr":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 723
    const-string v1, ""

    .line 719
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 727
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 729
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    mul-int v10, v6, p1

    add-int/2addr v10, v5

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 733
    .end local v1    # "anr":Ljava/lang/String;
    :cond_3
    if-nez v4, :cond_5

    .line 716
    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 737
    :cond_5
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int v10, v5, v0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 738
    .local v8, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v8, :cond_4

    .line 739
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v3, v9, [Ljava/lang/String;

    .line 740
    .local v3, "anrs":[Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v9, v12, v3, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 741
    invoke-virtual {v8, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAdditionalNumbers([Ljava/lang/String;)V

    .line 742
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int v10, v5, v0

    invoke-virtual {v9, v10, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method parseType1EmailFile(II)V
    .locals 15
    .param p1, "numRecs"    # I
    .param p2, "pbrIndex"    # I

    .prologue
    .line 664
    const/4 v5, 0x0

    .line 666
    .local v5, "emailRec":[B
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v11, v11, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mEmailFileIds:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 667
    .local v9, "numEmailFiles":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 668
    .local v4, "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v1

    .line 670
    .local v1, "adnInitIndex":I
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    move/from16 v0, p2

    invoke-direct {p0, v11, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v11

    if-nez v11, :cond_1

    .line 704
    :cond_0
    return-void

    .line 673
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "parseType1EmailFile: pbrIndex is: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", numRecs is: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 674
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move/from16 v0, p1

    if-ge v7, v0, :cond_0

    .line 675
    const/4 v2, 0x0

    .line 676
    .local v2, "count":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 678
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v8, v9, :cond_3

    .line 679
    mul-int v11, v8, p1

    move/from16 v0, p2

    invoke-direct {p0, v7, v0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(III)Ljava/lang/String;

    move-result-object v3

    .line 680
    .local v3, "email":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 682
    const-string v3, ""

    .line 678
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 686
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 688
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    mul-int v12, v8, p1

    add-int/2addr v12, v7

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 692
    .end local v3    # "email":Ljava/lang/String;
    :cond_3
    if-nez v2, :cond_5

    .line 674
    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 696
    :cond_5
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int v12, v7, v1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 697
    .local v10, "rec":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v10, :cond_4

    .line 698
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v6, v11, [Ljava/lang/String;

    .line 699
    .local v6, "emails":[Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-static {v11, v12, v6, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 700
    invoke-virtual {v10, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 701
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    add-int v12, v7, v1

    invoke-virtual {v11, v12, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method parseType1GrpFile(II)V
    .locals 11
    .param p1, "numRecs"    # I
    .param p2, "pbrIndex"    # I

    .prologue
    .line 1885
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "**parseType1GrpFile: numRecs: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " pbrIndex: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1886
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGrpsForAdnRec:Ljava/util/Map;

    if-nez v9, :cond_0

    .line 1887
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGrpsForAdnRec:Ljava/util/Map;

    .line 1889
    :cond_0
    const/4 v1, 0x0

    .line 1891
    .local v1, "GrpRec":[B
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGrpFileRecord:Ljava/util/Map;

    invoke-direct {p0, v9, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1915
    :cond_1
    :goto_0
    return-void

    .line 1894
    :cond_2
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, p1, :cond_1

    .line 1896
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGrpFileRecord:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, [B

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1901
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    .line 1903
    .local v6, "grpstr":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v9

    add-int v2, v7, v9

    .line 1904
    .local v2, "adnRecIndex":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGrpsForAdnRec:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1905
    .local v4, "grpids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v4, :cond_3

    .line 1906
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "grpids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1908
    .restart local v4    # "grpids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    const/4 v5, 0x0

    .local v5, "grpindex":I
    :goto_2
    array-length v9, v1

    if-ge v5, v9, :cond_4

    .line 1909
    aget-byte v9, v1, v5

    and-int/lit16 v8, v9, 0xff

    .line 1910
    .local v8, "igrpid":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1908
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1897
    .end local v2    # "adnRecIndex":I
    .end local v4    # "grpids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5    # "grpindex":I
    .end local v6    # "grpstr":Ljava/lang/String;
    .end local v8    # "igrpid":I
    :catch_0
    move-exception v3

    .line 1898
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "UsimPhoneBookManager"

    const-string v10, "Error: Improper ICC card: No Grp record for ADN, continuing"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1913
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v2    # "adnRecIndex":I
    .restart local v4    # "grpids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v5    # "grpindex":I
    .restart local v6    # "grpstr":Ljava/lang/String;
    :cond_4
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGrpsForAdnRec:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1894
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method parseType3GasFile(I)V
    .locals 8
    .param p1, "pbrIndex"    # I

    .prologue
    .line 1918
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseType3GasFile: pbrIndex= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1919
    const/4 v2, 0x0

    .line 1920
    .local v2, "gasreclist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v1, 0x0

    .line 1921
    .local v1, "gasrec":[B
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasFileRecord:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "gasreclist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    check-cast v2, Ljava/util/ArrayList;

    .line 1922
    .restart local v2    # "gasreclist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 1941
    :cond_0
    return-void

    .line 1925
    :cond_1
    const/4 v4, 0x0

    .line 1926
    .local v4, "gasstrtemp":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1927
    .local v3, "gasstr":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 1928
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "gasrec":[B
    check-cast v1, [B

    .line 1929
    .restart local v1    # "gasrec":[B
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 1930
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*** i= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " gasstr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1933
    const/4 v6, 0x0

    :try_start_0
    array-length v7, v1

    invoke-static {v1, v6, v7}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    .line 1934
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "***gasstr= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1939
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1927
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1935
    :catch_0
    move-exception v0

    .line 1936
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "errro parsing gas string"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1937
    const-string v3, ""

    goto :goto_1
.end method

.method public removeContactFromGroup(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I
    .locals 29
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "anrNumber"    # [Ljava/lang/String;
    .param p4, "email"    # Ljava/lang/String;
    .param p5, "groupIndex"    # I

    .prologue
    .line 2224
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGassuccess:I

    .line 2225
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "removeContactFromGroup: groupindex: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ": "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2227
    if-eqz p3, :cond_0

    .line 2228
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "****anrNumber[0] ="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x0

    aget-object v27, p3, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2230
    :cond_0
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v9, v0, [Ljava/lang/String;

    .line 2231
    .local v9, "emailArray":[Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 2232
    const/4 v9, 0x0

    .line 2236
    :goto_0
    new-instance v21, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v9, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 2237
    .local v21, "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    const/16 v22, 0x0

    .line 2239
    .local v22, "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v22

    .line 2243
    :goto_1
    if-nez v22, :cond_2

    .line 2244
    const-string v26, "oldAdnList== null"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2245
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGassuccess:I

    move/from16 v26, v0

    .line 2342
    :goto_2
    return v26

    .line 2234
    .end local v21    # "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v22    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_1
    const/16 v26, 0x0

    aput-object p4, v9, v26

    goto :goto_0

    .line 2240
    .restart local v21    # "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v22    # "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :catch_0
    move-exception v7

    .line 2241
    .local v7, "e":Ljava/lang/NullPointerException;
    const/16 v22, 0x0

    goto :goto_1

    .line 2247
    .end local v7    # "e":Ljava/lang/NullPointerException;
    :cond_2
    const/16 v18, -0x1

    .line 2248
    .local v18, "index":I
    const/4 v6, 0x1

    .line 2249
    .local v6, "count":I
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_3

    .line 2250
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 2251
    move/from16 v18, v6

    .line 2256
    :cond_3
    const/16 v26, -0x1

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 2257
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Adn record don\'t exit for  "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2258
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGassuccess:I

    move/from16 v26, v0

    goto :goto_2

    .line 2254
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2260
    :cond_5
    add-int/lit8 v26, v18, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 2261
    .local v10, "foundAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordNumber()I

    move-result v24

    .line 2262
    .local v24, "recordnumber":I
    add-int/lit8 v26, v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v23

    .line 2263
    .local v23, "pbrIndex":I
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "pbrIndex= "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " recordnumber= "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2264
    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->getGrpids()Ljava/lang/String;

    move-result-object v14

    .line 2265
    .local v14, "grpids":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "old grp list is "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2266
    const/16 v26, 0xc6

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfidByTag(III)I

    move-result v8

    .line 2267
    .local v8, "efidgrp":I
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "grp efid= "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2269
    const/4 v5, 0x0

    .line 2270
    .local v5, "bExit":Z
    const/16 v20, -0x1

    .line 2271
    .local v20, "nOrder":I
    if-eqz v14, :cond_8

    .line 2272
    const-string v26, ","

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 2273
    .local v15, "grpidstr":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v13, v0, [I

    .line 2274
    .local v13, "grpidArray":[I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_4
    array-length v0, v15

    move/from16 v26, v0

    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_6

    .line 2275
    aget-object v26, v15, v17

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    aput v26, v13, v17

    .line 2276
    aget v26, v13, v17

    move/from16 v0, p5

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    .line 2277
    const/4 v5, 0x1

    .line 2278
    move/from16 v20, v17

    .line 2279
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "find the group index: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2308
    .end local v15    # "grpidstr":[Ljava/lang/String;
    :cond_6
    :goto_5
    const/16 v26, -0x1

    move/from16 v0, v20

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    .line 2309
    const-string v26, "current Adn don\'t exist int the group "

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2310
    const/16 v26, -0x1

    goto/16 :goto_2

    .line 2274
    .restart local v15    # "grpidstr":[Ljava/lang/String;
    :cond_7
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 2284
    .end local v13    # "grpidArray":[I
    .end local v15    # "grpidstr":[Ljava/lang/String;
    .end local v17    # "i":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGrpFileRecord:Ljava/util/Map;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v26

    if-nez v26, :cond_9

    .line 2285
    const-string v26, "no GrpFileRecord!!"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2286
    const/16 v26, -0x1

    goto/16 :goto_2

    .line 2288
    :cond_9
    const/4 v4, 0x0

    .line 2290
    .local v4, "GrpRec":[B
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGrpFileRecord:Ljava/util/Map;

    move-object/from16 v26, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/ArrayList;

    add-int/lit8 v27, v24, -0x1

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "GrpRec":[B
    check-cast v4, [B
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2295
    .restart local v4    # "GrpRec":[B
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v16

    .line 2296
    .local v16, "grpstr":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "****grpstr= "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2297
    array-length v0, v4

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v13, v0, [I

    .line 2298
    .restart local v13    # "grpidArray":[I
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_6
    array-length v0, v4

    move/from16 v26, v0

    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_6

    .line 2299
    aget-byte v26, v4, v17

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    aput v26, v13, v17

    .line 2300
    aget v26, v13, v17

    move/from16 v0, p5

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    .line 2301
    const/4 v5, 0x1

    .line 2302
    move/from16 v20, v17

    .line 2303
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "find the  group!"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2291
    .end local v4    # "GrpRec":[B
    .end local v13    # "grpidArray":[I
    .end local v16    # "grpstr":Ljava/lang/String;
    .end local v17    # "i":I
    :catch_1
    move-exception v7

    .line 2292
    .local v7, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v26, "Error: Improper ICC card: No Grp record! "

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2293
    const/16 v26, -0x1

    goto/16 :goto_2

    .line 2298
    .end local v7    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v4    # "GrpRec":[B
    .restart local v13    # "grpidArray":[I
    .restart local v16    # "grpstr":Ljava/lang/String;
    .restart local v17    # "i":I
    :cond_a
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 2312
    .end local v4    # "GrpRec":[B
    .end local v16    # "grpstr":Ljava/lang/String;
    :cond_b
    const/16 v26, 0x0

    aput v26, v13, v20

    .line 2313
    array-length v0, v13

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v25, v0

    .line 2314
    .local v25, "writeGrpRec":[B
    const/16 v17, 0x0

    :goto_7
    array-length v0, v13

    move/from16 v26, v0

    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_c

    .line 2315
    aget v26, v13, v17

    move/from16 v0, v26

    int-to-byte v0, v0

    move/from16 v26, v0

    aput-byte v26, v25, v17

    .line 2314
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 2317
    :cond_c
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "writeGrpRec= "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static/range {v25 .. v25}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 2319
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v26, v0

    const/16 v28, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v8, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v8, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2322
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2326
    :goto_8
    :try_start_4
    monitor-exit v27
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2328
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGassuccess:I

    move/from16 v26, v0

    if-lez v26, :cond_e

    .line 2329
    const-string v26, "removeContactFromGroup ok!"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2330
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 2331
    .local v11, "grpIdsSb":Ljava/lang/StringBuilder;
    array-length v12, v13

    .line 2332
    .local v12, "grpSize":I
    const/16 v17, 0x0

    :goto_9
    add-int/lit8 v26, v12, -0x1

    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_d

    .line 2333
    aget v26, v13, v17

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2334
    const-string v26, ","

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2332
    add-int/lit8 v17, v17, 0x1

    goto :goto_9

    .line 2323
    .end local v11    # "grpIdsSb":Ljava/lang/StringBuilder;
    .end local v12    # "grpSize":I
    :catch_2
    move-exception v7

    .line 2324
    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string v26, "interrupted while trying to update Grp in removeContactFromGroup"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_8

    .line 2326
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v26

    monitor-exit v27
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v26

    .line 2336
    .restart local v11    # "grpIdsSb":Ljava/lang/StringBuilder;
    .restart local v12    # "grpSize":I
    :cond_d
    add-int/lit8 v26, v12, -0x1

    aget v26, v13, v26

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2337
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "new grpids: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2338
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->setGrpids(Ljava/lang/String;)V

    .line 2339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    add-int/lit8 v27, v18, -0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v1, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGrpFileRecord:Ljava/util/Map;

    move-object/from16 v26, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-interface/range {v26 .. v27}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/ArrayList;

    add-int/lit8 v27, v24, -0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2342
    .end local v11    # "grpIdsSb":Ljava/lang/StringBuilder;
    .end local v12    # "grpSize":I
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGassuccess:I

    move/from16 v26, v0

    goto/16 :goto_2
.end method

.method public removeContactFromGroupbyIndex(I)I
    .locals 16
    .param p1, "adnrecNum"    # I

    .prologue
    .line 2350
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "removeContactFromGroupbyIndex: adnrecNum=  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2351
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGassuccess:I

    .line 2352
    add-int/lit8 v12, p1, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v10

    .line 2353
    .local v10, "pbrIndex":I
    add-int/lit8 v12, p1, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getInitIndexBy(I)I

    move-result v13

    sub-int v11, v12, v13

    .line 2354
    .local v11, "recordIndex":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pbrIndex= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " recordIndex= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2355
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGrpFileRecord:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->hasRecordIn(Ljava/util/Map;I)Z

    move-result v12

    if-nez v12, :cond_0

    .line 2356
    const-string v12, "no grpfileRecord"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2357
    const/4 v12, -0x1

    .line 2402
    :goto_0
    return v12

    .line 2359
    :cond_0
    const/4 v1, 0x0

    .line 2361
    .local v1, "GrpRec":[B
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGrpFileRecord:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "GrpRec":[B
    check-cast v1, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2366
    .restart local v1    # "GrpRec":[B
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    .line 2367
    .local v6, "grpstr":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "****grpstr= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2368
    array-length v9, v1

    .line 2370
    .local v9, "len":I
    const/4 v2, 0x0

    .line 2371
    .local v2, "binAnyGroup":Z
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v8, v9, :cond_2

    .line 2373
    aget-byte v12, v1, v8

    if-eqz v12, :cond_1

    aget-byte v12, v1, v8

    const/16 v13, 0xff

    if-eq v12, v13, :cond_1

    .line 2374
    const/4 v2, 0x1

    .line 2371
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2362
    .end local v1    # "GrpRec":[B
    .end local v2    # "binAnyGroup":Z
    .end local v6    # "grpstr":Ljava/lang/String;
    .end local v8    # "j":I
    .end local v9    # "len":I
    :catch_0
    move-exception v4

    .line 2363
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v12, "Error:outofBounds! "

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2364
    const/4 v12, -0x1

    goto :goto_0

    .line 2377
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v1    # "GrpRec":[B
    .restart local v2    # "binAnyGroup":Z
    .restart local v6    # "grpstr":Ljava/lang/String;
    .restart local v8    # "j":I
    .restart local v9    # "len":I
    :cond_2
    if-nez v2, :cond_3

    .line 2378
    const-string v12, "not in any group! "

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2379
    add-int/lit8 v12, v11, 0x1

    goto :goto_0

    .line 2382
    :cond_3
    array-length v12, v1

    new-array v3, v12, [B

    .line 2383
    .local v3, "data":[B
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v9, :cond_4

    .line 2384
    const/4 v12, 0x0

    aput-byte v12, v3, v7

    .line 2383
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2386
    :cond_4
    const/16 v12, 0xc6

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v12, v13}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfidByTag(III)I

    move-result v5

    .line 2387
    .local v5, "efidgrp":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "grp efid= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2388
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "data= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2389
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v13

    .line 2390
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v14, 0x10

    add-int/lit8 v15, v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15, v5, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v12, v5, v14}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2393
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2397
    :goto_3
    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2398
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGassuccess:I

    if-lez v12, :cond_5

    .line 2399
    const-string v12, "remove group ok!"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2400
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGrpFileRecord:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v11, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2402
    :cond_5
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGassuccess:I

    goto/16 :goto_0

    .line 2394
    :catch_1
    move-exception v4

    .line 2395
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v12, "interrupted while trying to update Grp in removeContactFromGroup"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 2397
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v12
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 159
    const-string v1, "reset"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlagsRecord:[Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlagsRecord:[Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v1, :cond_0

    .line 161
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlagsRecord:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 163
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlagsRecord:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFlags:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 167
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFlags:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 169
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 170
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 171
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 172
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 173
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordNums:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 174
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 175
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnLengthList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 176
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 177
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 179
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGrpFileRecord:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 180
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasFileRecord:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 181
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 182
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGrpsForAdnRec:Ljava/util/Map;

    .line 184
    return-void
.end method

.method public updateAnrFile(ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 9
    .param p1, "adnRecNum"    # I
    .param p2, "oldAnr"    # Ljava/lang/String;
    .param p3, "newAnr"    # Ljava/lang/String;
    .param p4, "efidIndex"    # I

    .prologue
    const/4 v6, 0x1

    const/16 v8, 0xc4

    .line 435
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v3

    .line 436
    .local v3, "pbrIndex":I
    invoke-virtual {p0, v3, v8, p4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfidByTag(III)I

    move-result v2

    .line 437
    .local v2, "efid":I
    if-nez p2, :cond_0

    .line 438
    const-string p2, ""

    .line 439
    :cond_0
    if-nez p3, :cond_1

    .line 440
    const-string p3, ""

    .line 441
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "anrs":Ljava/lang/String;
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 443
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAnrFile oldAnr : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newAnr:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " anrs:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", efid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", adnRecNum: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 445
    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 446
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 471
    :goto_0
    return v4

    .line 447
    :cond_2
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    if-eqz v4, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 448
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmptyAnrNum_Pbrindex(I)I

    move-result v4

    if-nez v4, :cond_3

    .line 449
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAnrFile getEmptyAnrNum_Pbrindex=0, pbrIndex is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 450
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 451
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    goto :goto_0

    .line 454
    :cond_3
    invoke-direct {p0, p1, p2, p3, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateIapFile(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 458
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 459
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPBPath(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x7

    invoke-virtual {p0, v7, p1, v2, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v4, v2, v6, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 466
    :goto_2
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 467
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    if-eqz v4, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 469
    invoke-direct {p0, p1, p2, p3, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateIapFile(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 471
    :cond_4
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    goto :goto_0

    .line 456
    :cond_5
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    goto :goto_1

    .line 463
    :catch_0
    move-exception v1

    .line 464
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "UsimPhoneBookManager"

    const-string v6, "interrupted while trying to update by search"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 466
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method

.method public updateEmailFile(ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 9
    .param p1, "adnRecNum"    # I
    .param p2, "oldEmail"    # Ljava/lang/String;
    .param p3, "newEmail"    # Ljava/lang/String;
    .param p4, "efidIndex"    # I

    .prologue
    const/4 v6, 0x1

    const/16 v8, 0xca

    .line 391
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPbrIndexBy(I)I

    move-result v3

    .line 392
    .local v3, "pbrIndex":I
    invoke-virtual {p0, v3, v8, p4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfidByTag(III)I

    move-result v1

    .line 393
    .local v1, "efid":I
    if-nez p2, :cond_0

    .line 394
    const-string p2, ""

    .line 395
    :cond_0
    if-nez p3, :cond_1

    .line 396
    const-string p3, ""

    .line 397
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 398
    .local v2, "emails":Ljava/lang/String;
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 400
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateEmailFile oldEmail : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " newEmail:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " emails:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " efid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " adnRecNum: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 403
    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    .line 404
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 431
    :goto_0
    return v4

    .line 405
    :cond_2
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v4, :cond_6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 406
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmptyEmailNum_Pbrindex(I)I

    move-result v4

    if-nez v4, :cond_3

    .line 407
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateEmailFile getEmptyEmailNum_Pbrindex=0, pbrIndex is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 408
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 409
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    goto :goto_0

    .line 412
    :cond_3
    invoke-direct {p0, p1, p2, p3, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateIapFile(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 416
    :goto_1
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    if-eqz v4, :cond_4

    .line 417
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 418
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getPBPath(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {p0, v7, p1, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v4, v1, v6, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 425
    :goto_2
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 427
    :cond_4
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    if-eqz v4, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 429
    invoke-direct {p0, p1, p2, p3, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updateIapFile(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    .line 431
    :cond_5
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    goto :goto_0

    .line 414
    :cond_6
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mSuccess:Z

    goto :goto_1

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "UsimPhoneBookManager"

    const-string v6, "interrupted while trying to update by search"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 425
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method

.method public updateUsimGroup(ILjava/lang/String;)I
    .locals 7
    .param p1, "groupIndex"    # I
    .param p2, "groupname"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v3, -0x1

    .line 2022
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateUsimGroup: groupIndex= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "groupname= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2023
    iput v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGassuccess:I

    .line 2024
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 2025
    :cond_0
    const-string v3, "updateUsimGroup fail!! gaslist=null"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2053
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGassuccess:I

    :cond_1
    :goto_1
    return v3

    .line 2026
    :cond_2
    if-lez p1, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le p1, v4, :cond_4

    .line 2027
    :cond_3
    const-string v3, "groupIndex invalid or outof Gaslist"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2029
    :cond_4
    const/4 v2, 0x0

    .line 2030
    .local v2, "oldname":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasList:Ljava/util/ArrayList;

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "oldname":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 2031
    .restart local v2    # "oldname":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "oldname= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2032
    const/16 v4, 0xc8

    invoke-virtual {p0, v6, v4, v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfidByTag(III)I

    move-result v1

    .line 2033
    .local v1, "efid":I
    if-eq v1, v3, :cond_1

    .line 2036
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2037
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v5, 0xe

    invoke-virtual {p0, v5, p1, v1, p2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2040
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2044
    :goto_2
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2045
    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGassuccess:I

    if-gez v3, :cond_5

    .line 2046
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertUsimGroup Fail! failcause= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGassuccess:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2047
    iget v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGassuccess:I

    goto :goto_1

    .line 2041
    :catch_0
    move-exception v0

    .line 2042
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "interrupted while trying to update Gas in updateUsimGroup"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 2044
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 2049
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertUsimGroup OK! index= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGassuccess:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 2050
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mGasList:Ljava/util/ArrayList;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method
