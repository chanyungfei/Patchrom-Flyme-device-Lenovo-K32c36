.class public Lcom/android/ims/ImsCall;
.super Ljava/lang/Object;
.source "ImsCall.java"

# interfaces
.implements Lcom/android/ims/internal/ICall;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsCall$1;,
        Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;,
        Lcom/android/ims/ImsCall$Listener;
    }
.end annotation


# static fields
.field public static final CALL_STATE_ACTIVE_TO_HOLD:I = 0x1

.field public static final CALL_STATE_HOLD_TO_ACTIVE:I = 0x2

.field private static final DBG:Z

.field private static final FORCE_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ImsCall"

.field private static final UPDATE_EXTEND_TO_CONFERENCE:I = 0x5

.field private static final UPDATE_HOLD:I = 0x1

.field private static final UPDATE_HOLD_MERGE:I = 0x2

.field private static final UPDATE_MERGE:I = 0x4

.field private static final UPDATE_NONE:I = 0x0

.field private static final UPDATE_RESUME:I = 0x3

.field private static final UPDATE_UNSPECIFIED:I = 0x6

.field public static final USSD_MODE_NOTIFY:I = 0x0

.field public static final USSD_MODE_REQUEST:I = 0x1

.field private static final VDBG:Z


# instance fields
.field private mCallGroup:Lcom/android/ims/internal/CallGroup;

.field private mCallProfile:Lcom/android/ims/ImsCallProfile;

.field private mConferenceParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHold:Z

.field private mInCall:Z

.field private mIsCEPPresent:Z

.field private mIsMerged:Z

.field private mLastReasonInfo:Lcom/android/ims/ImsReasonInfo;

.field private mListener:Lcom/android/ims/ImsCall$Listener;

.field private mLockObj:Ljava/lang/Object;

.field private mMediaSession:Lcom/android/ims/internal/ImsStreamMediaSession;

.field private mMute:Z

.field private mProposedCallProfile:Lcom/android/ims/ImsCallProfile;

.field private mSession:Lcom/android/ims/internal/ImsCallSession;

.field private mSessionEndDuringMerge:Z

.field private mSessionEndDuringMergeReasonInfo:Lcom/android/ims/ImsReasonInfo;

.field private mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

.field private mUpdateRequest:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    const-string v0, "ImsCall"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    .line 63
    const-string v0, "ImsCall"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/ims/ImsCall;->VDBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean v2, p0, Lcom/android/ims/ImsCall;->mIsCEPPresent:Z

    .line 442
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    .line 446
    iput-boolean v2, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    .line 450
    iput-boolean v2, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 452
    iput-boolean v2, p0, Lcom/android/ims/ImsCall;->mMute:Z

    .line 454
    iput v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 456
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 459
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mCallGroup:Lcom/android/ims/internal/CallGroup;

    .line 462
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    .line 465
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 469
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 470
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Lcom/android/ims/ImsReasonInfo;

    .line 473
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mMediaSession:Lcom/android/ims/internal/ImsStreamMediaSession;

    .line 477
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    .line 483
    iput-boolean v2, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    .line 487
    iput-object v1, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMergeReasonInfo:Lcom/android/ims/ImsReasonInfo;

    .line 488
    iput-boolean v2, p0, Lcom/android/ims/ImsCall;->mIsMerged:Z

    .line 497
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mContext:Landroid/content/Context;

    .line 498
    iput-object p2, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 499
    return-void
.end method

.method static synthetic access$100(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/ImsCall;
    .param p1, "x1"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsCall;
    .param p1, "x1"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->processCallTerminated(Lcom/android/ims/ImsReasonInfo;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/ims/ImsCall;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 52
    iget v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/ims/ImsCall;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsCall;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->mergeInternal()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/ims/ImsCall;)Lcom/android/ims/internal/CallGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mCallGroup:Lcom/android/ims/internal/CallGroup;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/CallGroup;)Lcom/android/ims/internal/CallGroup;
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsCall;
    .param p1, "x1"    # Lcom/android/ims/internal/CallGroup;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mCallGroup:Lcom/android/ims/internal/CallGroup;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/ims/ImsCall;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsCall;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->notifyConferenceStateUpdatedThroughGroupOwner(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/ims/ImsCall;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/ims/ImsCall;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsCall;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/ims/ImsCall;->mHold:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/ims/ImsCall;)Lcom/android/ims/internal/ImsCallSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession;
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsCall;
    .param p1, "x1"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/ims/ImsCall;)Lcom/android/ims/internal/ImsCallSession$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createCallSessionListener()Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->processMergeComplete()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/ims/ImsCall;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsCall;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->destroyCallGroup()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsCall;
    .param p1, "x1"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->createCallGroup(Lcom/android/ims/ImsCall;)V

    return-void
.end method

.method static synthetic access$2202(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCallProfile;
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsCall;
    .param p1, "x1"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Lcom/android/ims/ImsCallProfile;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCall;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/ImsCall;
    .param p1, "x1"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "x2"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsCall;->createNewCall(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCall;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCallProfile;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCallProfile;
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsCall;
    .param p1, "x1"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/ims/ImsCall;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsCall;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)Lcom/android/ims/ImsReasonInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsCall;
    .param p1, "x1"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Lcom/android/ims/ImsReasonInfo;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/ims/ImsCall;)Lcom/android/ims/internal/ImsCallSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/ims/ImsCall;Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession;
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsCall;
    .param p1, "x1"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/ims/ImsCall;
    .param p1, "x1"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->processMergeFailed(Lcom/android/ims/ImsReasonInfo;)V

    return-void
.end method

.method private addToConferenceParticipantList(Lcom/android/ims/ImsCall;)V
    .locals 9
    .param p1, "childCall"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 2101
    if-nez p1, :cond_0

    .line 2133
    :goto_0
    return-void

    .line 2103
    :cond_0
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    .line 2104
    .local v3, "profile":Lcom/android/ims/ImsCallProfile;
    if-nez v3, :cond_1

    .line 2105
    const-string v6, "addToConferenceParticipantList: null profile for childcall"

    invoke-direct {p0, v6}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2108
    :cond_1
    const-string v6, "oi"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2109
    .local v0, "handle":Ljava/lang/String;
    const-string v6, "cna"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2110
    .local v1, "name":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 2111
    const-string v6, "addToConferenceParticipantList: Invalid number for childcall"

    invoke-direct {p0, v6}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2114
    :cond_2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 2115
    .local v5, "userUri":Landroid/net/Uri;
    new-instance v2, Landroid/telecom/ConferenceParticipant;

    const/4 v6, 0x4

    invoke-direct {v2, v5, v1, v5, v6}, Landroid/telecom/ConferenceParticipant;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;I)V

    .line 2117
    .local v2, "participant":Landroid/telecom/ConferenceParticipant;
    iget-object v7, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v7

    .line 2118
    :try_start_0
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    if-nez v6, :cond_3

    .line 2119
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    .line 2121
    :cond_3
    sget-boolean v6, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding participant: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " to list"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 2122
    :cond_4
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2123
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Lcom/android/ims/ImsCall;->mIsCEPPresent:Z

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_5

    .line 2126
    :try_start_1
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    iget-object v8, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    invoke-virtual {v6, p0, v8}, Lcom/android/ims/ImsCall$Listener;->onConferenceParticipantsStateChanged(Lcom/android/ims/ImsCall;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2132
    :cond_5
    :goto_1
    :try_start_2
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 2128
    :catch_0
    move-exception v4

    .line 2129
    .local v4, "t":Ljava/lang/Throwable;
    :try_start_3
    const-string v6, "notifyConferenceStateUpdated :: "

    invoke-direct {p0, v6, v4}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private clear(Lcom/android/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "lastReasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    const/4 v0, 0x0

    .line 1540
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    .line 1541
    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 1542
    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1543
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Lcom/android/ims/ImsReasonInfo;

    .line 1544
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->destroyCallGroup()V

    .line 1545
    return-void
.end method

.method private createCallGroup(Lcom/android/ims/ImsCall;)V
    .locals 3
    .param p1, "neutralReferrer"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 1548
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallGroup()Lcom/android/ims/internal/CallGroup;

    move-result-object v0

    .line 1550
    .local v0, "referrerCallGroup":Lcom/android/ims/internal/CallGroup;
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallGroup:Lcom/android/ims/internal/CallGroup;

    if-nez v1, :cond_2

    .line 1551
    if-nez v0, :cond_1

    .line 1552
    invoke-static {}, Lcom/android/ims/internal/CallGroupManager;->getInstance()Lcom/android/ims/internal/CallGroupManager;

    move-result-object v1

    new-instance v2, Lcom/android/ims/ImsCallGroup;

    invoke-direct {v2}, Lcom/android/ims/ImsCallGroup;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/CallGroupManager;->createCallGroup(Lcom/android/ims/internal/ICallGroup;)Lcom/android/ims/internal/CallGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ims/ImsCall;->mCallGroup:Lcom/android/ims/internal/CallGroup;

    .line 1553
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallGroup:Lcom/android/ims/internal/CallGroup;

    invoke-virtual {p1, v1}, Lcom/android/ims/ImsCall;->setCallGroup(Lcom/android/ims/internal/CallGroup;)V

    .line 1558
    :goto_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallGroup:Lcom/android/ims/internal/CallGroup;

    if-eqz v1, :cond_0

    .line 1559
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallGroup:Lcom/android/ims/internal/CallGroup;

    invoke-virtual {v1, p1}, Lcom/android/ims/internal/CallGroup;->setNeutralReferrer(Lcom/android/ims/internal/ICall;)V

    .line 1569
    :cond_0
    :goto_1
    return-void

    .line 1555
    :cond_1
    iput-object v0, p0, Lcom/android/ims/ImsCall;->mCallGroup:Lcom/android/ims/internal/CallGroup;

    goto :goto_0

    .line 1562
    :cond_2
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallGroup:Lcom/android/ims/internal/CallGroup;

    invoke-virtual {v1, p1}, Lcom/android/ims/internal/CallGroup;->setNeutralReferrer(Lcom/android/ims/internal/ICall;)V

    .line 1564
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallGroup:Lcom/android/ims/internal/CallGroup;

    if-eq v1, v0, :cond_0

    .line 1566
    const-string v1, "fatal :: call group is mismatched; call is corrupted..."

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private createCallSessionListener()Lcom/android/ims/internal/ImsCallSession$Listener;
    .locals 2

    .prologue
    .line 1601
    new-instance v0, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;-><init>(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall$1;)V

    return-object v0
.end method

.method private createHoldMediaProfile()Lcom/android/ims/ImsStreamMediaProfile;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 1622
    new-instance v0, Lcom/android/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Lcom/android/ims/ImsStreamMediaProfile;-><init>()V

    .line 1624
    .local v0, "mediaProfile":Lcom/android/ims/ImsStreamMediaProfile;
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    if-nez v1, :cond_1

    .line 1636
    :cond_0
    :goto_0
    return-object v0

    .line 1628
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iget-object v1, v1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    iget v1, v1, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    iput v1, v0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 1629
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iget-object v1, v1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    iget v1, v1, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    iput v1, v0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 1630
    iput v2, v0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 1632
    iget v1, v0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    if-eqz v1, :cond_0

    .line 1633
    iput v2, v0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto :goto_0
.end method

.method private createNewCall(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)Lcom/android/ims/ImsCall;
    .locals 3
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 1605
    new-instance v0, Lcom/android/ims/ImsCall;

    iget-object v2, p0, Lcom/android/ims/ImsCall;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p2}, Lcom/android/ims/ImsCall;-><init>(Landroid/content/Context;Lcom/android/ims/ImsCallProfile;)V

    .line 1608
    .local v0, "call":Lcom/android/ims/ImsCall;
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->attachSession(Lcom/android/ims/internal/ImsCallSession;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1618
    :cond_0
    :goto_0
    return-object v0

    .line 1609
    :catch_0
    move-exception v1

    .line 1610
    .local v1, "e":Lcom/android/ims/ImsException;
    if-eqz v0, :cond_0

    .line 1611
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->close()V

    .line 1612
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createResumeMediaProfile()Lcom/android/ims/ImsStreamMediaProfile;
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 1640
    new-instance v0, Lcom/android/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Lcom/android/ims/ImsStreamMediaProfile;-><init>()V

    .line 1642
    .local v0, "mediaProfile":Lcom/android/ims/ImsStreamMediaProfile;
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    if-nez v1, :cond_1

    .line 1654
    :cond_0
    :goto_0
    return-object v0

    .line 1646
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iget-object v1, v1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    iget v1, v1, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    iput v1, v0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 1647
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    iget-object v1, v1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    iget v1, v1, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    iput v1, v0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 1648
    iput v2, v0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 1650
    iget v1, v0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoQuality:I

    if-eqz v1, :cond_0

    .line 1651
    iput v2, v0, Lcom/android/ims/ImsStreamMediaProfile;->mVideoDirection:I

    goto :goto_0
.end method

.method private destroyCallGroup()V
    .locals 2

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mCallGroup:Lcom/android/ims/internal/CallGroup;

    if-nez v0, :cond_0

    .line 1583
    :goto_0
    return-void

    .line 1576
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mCallGroup:Lcom/android/ims/internal/CallGroup;

    invoke-virtual {v0, p0}, Lcom/android/ims/internal/CallGroup;->removeReferrer(Lcom/android/ims/internal/ICall;)V

    .line 1578
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mCallGroup:Lcom/android/ims/internal/CallGroup;

    invoke-virtual {v0}, Lcom/android/ims/internal/CallGroup;->hasReferrer()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1579
    invoke-static {}, Lcom/android/ims/internal/CallGroupManager;->getInstance()Lcom/android/ims/internal/CallGroupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallGroup:Lcom/android/ims/internal/CallGroup;

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/CallGroupManager;->destroyCallGroup(Lcom/android/ims/internal/CallGroup;)V

    .line 1582
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/ImsCall;->mCallGroup:Lcom/android/ims/internal/CallGroup;

    goto :goto_0
.end method

.method private enforceConversationMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1658
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    if-eqz v0, :cond_0

    .line 1659
    iput-boolean v1, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 1660
    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1662
    :cond_0
    return-void
.end method

.method private isTransientConferenceSession(Lcom/android/ims/internal/ImsCallSession;)Z
    .locals 1
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;

    .prologue
    .line 1928
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    if-ne p1, v0, :cond_0

    .line 1929
    const/4 v0, 0x1

    .line 1931
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2136
    const-string v0, "ImsCall"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2140
    const-string v0, "ImsCall"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 2144
    const-string v0, "ImsCall"

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2145
    return-void
.end method

.method private mergeInternal()V
    .locals 2

    .prologue
    .line 1665
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_0

    .line 1666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mergeInternal :: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1669
    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0}, Lcom/android/ims/internal/ImsCallSession;->merge()V

    .line 1670
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1671
    return-void
.end method

.method private notifyConferenceSessionTerminated(Lcom/android/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1675
    iget-object v3, p0, Lcom/android/ims/ImsCall;->mCallGroup:Lcom/android/ims/internal/CallGroup;

    invoke-virtual {v3, p0}, Lcom/android/ims/internal/CallGroup;->isOwner(Lcom/android/ims/internal/ICall;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1676
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Group Owner! Size of referrers list = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/ims/ImsCall;->mCallGroup:Lcom/android/ims/internal/CallGroup;

    invoke-virtual {v4}, Lcom/android/ims/internal/CallGroup;->getReferrers()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1677
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/ims/ImsCall;->mCallGroup:Lcom/android/ims/internal/CallGroup;

    invoke-virtual {v3}, Lcom/android/ims/internal/CallGroup;->hasReferrer()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1678
    iget-object v3, p0, Lcom/android/ims/ImsCall;->mCallGroup:Lcom/android/ims/internal/CallGroup;

    invoke-virtual {v3}, Lcom/android/ims/internal/CallGroup;->getReferrers()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/ImsCall;

    .line 1679
    .local v0, "call":Lcom/android/ims/ImsCall;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCallTerminated to be called for the call:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1681
    if-eqz v0, :cond_0

    .line 1685
    iget-object v1, v0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 1686
    .local v1, "listener":Lcom/android/ims/ImsCall$Listener;
    invoke-direct {v0, p1}, Lcom/android/ims/ImsCall;->clear(Lcom/android/ims/ImsReasonInfo;)V

    .line 1688
    if-eqz v1, :cond_0

    .line 1690
    :try_start_0
    invoke-virtual {v1, v0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallTerminated(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1691
    :catch_0
    move-exception v2

    .line 1692
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "notifyConferenceSessionTerminated :: "

    invoke-direct {p0, v3, v2}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1698
    .end local v0    # "call":Lcom/android/ims/ImsCall;
    .end local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 1699
    .restart local v1    # "listener":Lcom/android/ims/ImsCall$Listener;
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->clear(Lcom/android/ims/ImsReasonInfo;)V

    .line 1701
    if-eqz v1, :cond_2

    .line 1703
    :try_start_1
    invoke-virtual {v1, p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallTerminated(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1708
    :cond_2
    :goto_1
    return-void

    .line 1704
    :catch_1
    move-exception v2

    .line 1705
    .restart local v2    # "t":Ljava/lang/Throwable;
    const-string v3, "notifyConferenceSessionTerminated :: "

    invoke-direct {p0, v3, v2}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private notifyConferenceStateUpdated(Lcom/android/ims/ImsConferenceState;)V
    .locals 22
    .param p1, "state"    # Lcom/android/ims/ImsConferenceState;

    .prologue
    .line 1748
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    .line 1750
    .local v14, "participants":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    if-nez v14, :cond_0

    .line 1848
    :goto_0
    return-void

    .line 1754
    :cond_0
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 1755
    .local v12, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v19

    move/from16 v0, v19

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1756
    .local v5, "conferenceParticipants":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ConferenceParticipant;>;"
    :cond_1
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 1757
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 1759
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1760
    .local v13, "key":Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1761
    .local v3, "confInfo":Landroid/os/Bundle;
    const-string v19, "status"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1762
    .local v16, "status":Ljava/lang/String;
    const-string v19, "user"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1763
    .local v18, "user":Ljava/lang/String;
    const-string v19, "display-text"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1764
    .local v7, "displayName":Ljava/lang/String;
    const-string v19, "endpoint"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1766
    .local v8, "endpoint":Ljava/lang/String;
    sget-boolean v19, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v19, :cond_2

    .line 1767
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "notifyConferenceStateUpdated :: key="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", status="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", user="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", displayName= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", endpoint="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1785
    :cond_2
    const/4 v15, 0x0

    .line 1786
    .local v15, "referrer":Lcom/android/ims/ImsCall;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ims/ImsCall;->mCallGroup:Lcom/android/ims/internal/CallGroup;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_3

    .line 1787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ims/ImsCall;->mCallGroup:Lcom/android/ims/internal/CallGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/android/ims/internal/CallGroup;->getReferrer(Ljava/lang/String;)Lcom/android/ims/internal/ICall;

    move-result-object v15

    .end local v15    # "referrer":Lcom/android/ims/ImsCall;
    check-cast v15, Lcom/android/ims/ImsCall;

    .line 1793
    .restart local v15    # "referrer":Lcom/android/ims/ImsCall;
    :cond_3
    if-nez v15, :cond_5

    .line 1794
    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 1795
    .local v11, "handle":Landroid/net/Uri;
    if-nez v8, :cond_4

    .line 1796
    const-string v8, ""

    .line 1799
    :cond_4
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 1800
    .local v9, "endpointUri":Landroid/net/Uri;
    invoke-static/range {v16 .. v16}, Lcom/android/ims/ImsConferenceState;->getConnectionStateForStatus(Ljava/lang/String;)I

    move-result v6

    .line 1802
    .local v6, "connectionState":I
    const/16 v19, 0x6

    move/from16 v0, v19

    if-eq v6, v0, :cond_1

    .line 1803
    new-instance v4, Landroid/telecom/ConferenceParticipant;

    invoke-direct {v4, v11, v7, v9, v6}, Landroid/telecom/ConferenceParticipant;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;I)V

    .line 1805
    .local v4, "conferenceParticipant":Landroid/telecom/ConferenceParticipant;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1810
    .end local v4    # "conferenceParticipant":Landroid/telecom/ConferenceParticipant;
    .end local v6    # "connectionState":I
    .end local v9    # "endpointUri":Landroid/net/Uri;
    .end local v11    # "handle":Landroid/net/Uri;
    :cond_5
    iget-object v0, v15, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 1815
    :try_start_0
    const-string v19, "alerting"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 1816
    iget-object v0, v15, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/android/ims/ImsCall$Listener;->onCallProgressing(Lcom/android/ims/ImsCall;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1831
    :catch_0
    move-exception v17

    .line 1832
    .local v17, "t":Ljava/lang/Throwable;
    const-string v19, "notifyConferenceStateUpdated :: "

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1818
    .end local v17    # "t":Ljava/lang/Throwable;
    :cond_6
    :try_start_1
    const-string v19, "connect-fail"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 1819
    iget-object v0, v15, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/ims/ImsReasonInfo;

    invoke-direct/range {v20 .. v20}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/android/ims/ImsCall$Listener;->onCallStartFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V

    goto/16 :goto_1

    .line 1821
    :cond_7
    const-string v19, "on-hold"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1822
    iget-object v0, v15, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/android/ims/ImsCall$Listener;->onCallHoldReceived(Lcom/android/ims/ImsCall;)V

    goto/16 :goto_1

    .line 1824
    :cond_8
    const-string v19, "connected"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 1825
    iget-object v0, v15, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/android/ims/ImsCall$Listener;->onCallStarted(Lcom/android/ims/ImsCall;)V

    goto/16 :goto_1

    .line 1827
    :cond_9
    const-string v19, "disconnected"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 1828
    new-instance v19, Lcom/android/ims/ImsReasonInfo;

    invoke-direct/range {v19 .. v19}, Lcom/android/ims/ImsReasonInfo;-><init>()V

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Lcom/android/ims/ImsCall;->clear(Lcom/android/ims/ImsReasonInfo;)V

    .line 1829
    iget-object v0, v15, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    move-object/from16 v19, v0

    iget-object v0, v15, Lcom/android/ims/ImsCall;->mLastReasonInfo:Lcom/android/ims/ImsReasonInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/android/ims/ImsCall$Listener;->onCallTerminated(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1836
    .end local v3    # "confInfo":Landroid/os/Bundle;
    .end local v7    # "displayName":Ljava/lang/String;
    .end local v8    # "endpoint":Ljava/lang/String;
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    .end local v13    # "key":Ljava/lang/String;
    .end local v15    # "referrer":Lcom/android/ims/ImsCall;
    .end local v16    # "status":Ljava/lang/String;
    .end local v18    # "user":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1838
    :try_start_2
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    .line 1839
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/ims/ImsCall;->mIsCEPPresent:Z

    .line 1840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    move-object/from16 v19, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v19, :cond_b

    .line 1842
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/ims/ImsCall$Listener;->onConferenceParticipantsStateChanged(Lcom/android/ims/ImsCall;Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1847
    :cond_b
    :goto_2
    :try_start_4
    monitor-exit v20

    goto/16 :goto_0

    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v19

    .line 1843
    :catch_1
    move-exception v17

    .line 1844
    .restart local v17    # "t":Ljava/lang/Throwable;
    :try_start_5
    const-string v19, "notifyConferenceStateUpdated :: "

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method private notifyConferenceStateUpdatedThroughGroupOwner(I)V
    .locals 7
    .param p1, "update"    # I

    .prologue
    .line 1713
    iget-object v5, p0, Lcom/android/ims/ImsCall;->mCallGroup:Lcom/android/ims/internal/CallGroup;

    invoke-virtual {v5, p0}, Lcom/android/ims/internal/CallGroup;->isOwner(Lcom/android/ims/internal/ICall;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1714
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Group Owner! Size of referrers list = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/ims/ImsCall;->mCallGroup:Lcom/android/ims/internal/CallGroup;

    invoke-virtual {v6}, Lcom/android/ims/internal/CallGroup;->getReferrers()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1715
    iget-object v5, p0, Lcom/android/ims/ImsCall;->mCallGroup:Lcom/android/ims/internal/CallGroup;

    invoke-virtual {v5}, Lcom/android/ims/internal/CallGroup;->getReferrers()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/internal/ICall;

    .local v2, "icall":Lcom/android/ims/internal/ICall;
    move-object v0, v2

    .line 1716
    check-cast v0, Lcom/android/ims/ImsCall;

    .line 1717
    .local v0, "call":Lcom/android/ims/ImsCall;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyConferenceStateUpdatedThroughGroupOwner to be called for the call:: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1720
    if-eqz v0, :cond_0

    .line 1724
    iget-object v3, v0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 1726
    .local v3, "listener":Lcom/android/ims/ImsCall$Listener;
    if-eqz v3, :cond_0

    .line 1728
    packed-switch p1, :pswitch_data_0

    .line 1736
    :pswitch_0
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyConferenceStateUpdatedThroughGroupOwner :: not handled update "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1739
    :catch_0
    move-exception v4

    .line 1740
    .local v4, "t":Ljava/lang/Throwable;
    const-string v5, "notifyConferenceStateUpdatedThroughGroupOwner :: "

    invoke-direct {p0, v5, v4}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1730
    .end local v4    # "t":Ljava/lang/Throwable;
    :pswitch_1
    :try_start_1
    invoke-virtual {v3, v0}, Lcom/android/ims/ImsCall$Listener;->onCallHeld(Lcom/android/ims/ImsCall;)V

    goto :goto_0

    .line 1733
    :pswitch_2
    invoke-virtual {v3, v0}, Lcom/android/ims/ImsCall$Listener;->onCallResumed(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1745
    .end local v0    # "call":Lcom/android/ims/ImsCall;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "icall":Lcom/android/ims/internal/ICall;
    .end local v3    # "listener":Lcom/android/ims/ImsCall$Listener;
    :cond_1
    return-void

    .line 1728
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private notifyError(IILjava/lang/String;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "statusCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 2072
    return-void
.end method

.method private processCallTerminated(Lcom/android/ims/ImsReasonInfo;)V
    .locals 7
    .param p1, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1860
    sget-boolean v5, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v5, :cond_0

    .line 1861
    iget-object v5, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v5}, Lcom/android/ims/internal/ImsCallSession;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1862
    .local v2, "sessionString":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v5}, Lcom/android/ims/internal/ImsCallSession;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1864
    .local v4, "transientSessionString":Ljava/lang/String;
    :goto_1
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/ims/ImsReasonInfo;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1865
    .local v1, "reasonString":Ljava/lang/String;
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processCallTerminated :: session="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " transientSession="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1869
    .end local v1    # "reasonString":Ljava/lang/String;
    .end local v2    # "sessionString":Ljava/lang/String;
    .end local v4    # "transientSessionString":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 1871
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-enter p0

    .line 1872
    :try_start_0
    iget v5, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_6

    .line 1879
    sget-boolean v5, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v5, :cond_1

    .line 1880
    const-string v5, "processCallTerminated :: burying termination during ongoing merge."

    invoke-direct {p0, v5}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1882
    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    .line 1883
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMergeReasonInfo:Lcom/android/ims/ImsReasonInfo;

    .line 1889
    iget-object v5, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    if-eqz v5, :cond_6

    .line 1890
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->processMergeComplete()V

    .line 1891
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1914
    :cond_2
    :goto_3
    return-void

    .line 1861
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :cond_3
    const-string v2, "null"

    goto :goto_0

    .line 1862
    .restart local v2    # "sessionString":Ljava/lang/String;
    :cond_4
    const-string v4, "null"

    goto :goto_1

    .line 1864
    .restart local v4    # "transientSessionString":Ljava/lang/String;
    :cond_5
    const-string v1, "null"

    goto :goto_2

    .line 1898
    .end local v2    # "sessionString":Ljava/lang/String;
    .end local v4    # "transientSessionString":Ljava/lang/String;
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :cond_6
    :try_start_1
    iget-object v5, p0, Lcom/android/ims/ImsCall;->mCallGroup:Lcom/android/ims/internal/CallGroup;

    if-eqz v5, :cond_7

    .line 1899
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->notifyConferenceSessionTerminated(Lcom/android/ims/ImsReasonInfo;)V

    .line 1904
    :goto_4
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/ims/ImsCall;->mIsCEPPresent:Z

    .line 1905
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1907
    if-eqz v0, :cond_2

    .line 1909
    :try_start_2
    invoke-virtual {v0, p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallTerminated(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 1910
    :catch_0
    move-exception v3

    .line 1911
    .local v3, "t":Ljava/lang/Throwable;
    const-string v5, "callSessionTerminated :: "

    invoke-direct {p0, v5, v3}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1901
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_7
    :try_start_3
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 1902
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->clear(Lcom/android/ims/ImsReasonInfo;)V

    goto :goto_4

    .line 1905
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5
.end method

.method private processMergeComplete()V
    .locals 7

    .prologue
    .line 1942
    sget-boolean v5, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v5, :cond_0

    .line 1943
    iget-object v5, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v5}, Lcom/android/ims/internal/ImsCallSession;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1944
    .local v2, "sessionString":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v5}, Lcom/android/ims/internal/ImsCallSession;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1946
    .local v4, "transientSessionString":Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processMergeComplete :: session="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " transientSession="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1951
    .end local v2    # "sessionString":Ljava/lang/String;
    .end local v4    # "transientSessionString":Ljava/lang/String;
    :cond_0
    monitor-enter p0

    .line 1952
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 1953
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v5, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    if-eqz v5, :cond_6

    .line 1955
    iget-object v5, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/ims/internal/ImsCallSession;->setListener(Lcom/android/ims/internal/ImsCallSession$Listener;)V

    .line 1956
    iget-object v5, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    iput-object v5, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    .line 1957
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    .line 1960
    iget-object v5, p0, Lcom/android/ims/ImsCall;->mCallGroup:Lcom/android/ims/internal/CallGroup;

    invoke-virtual {v5, p0}, Lcom/android/ims/internal/CallGroup;->setOwner(Lcom/android/ims/internal/ICall;)V

    .line 1961
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 1966
    iget-object v5, p0, Lcom/android/ims/ImsCall;->mCallGroup:Lcom/android/ims/internal/CallGroup;

    invoke-virtual {v5}, Lcom/android/ims/internal/CallGroup;->getNeutralReferrer()Lcom/android/ims/internal/ICall;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsCall;

    .line 1967
    .local v1, "neutralReferrer":Lcom/android/ims/ImsCall;
    if-eqz v1, :cond_1

    .line 1968
    iget-object v5, p0, Lcom/android/ims/ImsCall;->mCallGroup:Lcom/android/ims/internal/CallGroup;

    invoke-virtual {v5, v1}, Lcom/android/ims/internal/CallGroup;->removeReferrer(Lcom/android/ims/internal/ICall;)V

    .line 1969
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/ims/ImsCall;->mCallGroup:Lcom/android/ims/internal/CallGroup;

    .line 1982
    .end local v1    # "neutralReferrer":Lcom/android/ims/ImsCall;
    :cond_1
    :goto_2
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    .line 1983
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMergeReasonInfo:Lcom/android/ims/ImsReasonInfo;

    .line 1984
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1985
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1986
    if-eqz v0, :cond_3

    .line 1988
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/android/ims/ImsCall$Listener;->onCallMerged(Lcom/android/ims/ImsCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1992
    :goto_3
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v6

    .line 1993
    :try_start_2
    iget-object v5, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v5

    if-nez v5, :cond_2

    if-eqz v0, :cond_2

    .line 1996
    :try_start_3
    iget-object v5, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    invoke-virtual {v0, p0, v5}, Lcom/android/ims/ImsCall$Listener;->onConferenceParticipantsStateChanged(Lcom/android/ims/ImsCall;Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2002
    :cond_2
    :goto_4
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2005
    :cond_3
    return-void

    .line 1943
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :cond_4
    const-string v2, "null"

    goto :goto_0

    .line 1944
    .restart local v2    # "sessionString":Ljava/lang/String;
    :cond_5
    const-string v4, "null"

    goto :goto_1

    .line 1976
    .end local v2    # "sessionString":Ljava/lang/String;
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :cond_6
    const/4 v0, 0x0

    .line 1977
    :try_start_5
    iget-object v5, p0, Lcom/android/ims/ImsCall;->mCallGroup:Lcom/android/ims/internal/CallGroup;

    invoke-virtual {v5, p0}, Lcom/android/ims/internal/CallGroup;->setOwner(Lcom/android/ims/internal/ICall;)V

    .line 1978
    const-string v5, "processMergeComplete :: NO transient session. Possible MT Conf or Conf URI call"

    invoke-direct {p0, v5}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1985
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v5

    .line 1989
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v3

    .line 1990
    .local v3, "t":Ljava/lang/Throwable;
    const-string v5, "processMergeComplete :: "

    invoke-direct {p0, v5, v3}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1998
    .end local v3    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v3

    .line 1999
    .restart local v3    # "t":Ljava/lang/Throwable;
    :try_start_6
    const-string v5, "processMergeComplete :: "

    invoke-direct {p0, v5, v3}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 2002
    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v5
.end method

.method private processMergeFailed(Lcom/android/ims/ImsReasonInfo;)V
    .locals 9
    .param p1, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 2015
    sget-boolean v7, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v7, :cond_0

    .line 2016
    iget-object v7, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v7}, Lcom/android/ims/internal/ImsCallSession;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2017
    .local v4, "sessionString":Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v7}, Lcom/android/ims/internal/ImsCallSession;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2019
    .local v6, "transientSessionString":Ljava/lang/String;
    :goto_1
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/ims/ImsReasonInfo;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2020
    .local v3, "reasonString":Ljava/lang/String;
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processMergeFailed :: session="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " transientSession="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " reason="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 2025
    .end local v3    # "reasonString":Ljava/lang/String;
    .end local v4    # "sessionString":Ljava/lang/String;
    .end local v6    # "transientSessionString":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .line 2026
    .local v1, "notifyFailure":Z
    const/4 v2, 0x0

    .line 2028
    .local v2, "notifyFailureReasonInfo":Lcom/android/ims/ImsReasonInfo;
    monitor-enter p0

    .line 2029
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 2030
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    iget-object v7, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    if-eqz v7, :cond_7

    .line 2032
    iget-object v7, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/ims/internal/ImsCallSession;->setListener(Lcom/android/ims/internal/ImsCallSession$Listener;)V

    .line 2033
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    .line 2034
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 2035
    iget-boolean v7, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    if-eqz v7, :cond_2

    .line 2039
    sget-boolean v7, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v7, :cond_1

    .line 2040
    const-string v7, "processMergeFailed :: following up on a terminate during the merge"

    invoke-direct {p0, v7}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 2042
    :cond_1
    const/4 v1, 0x1

    .line 2043
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMergeReasonInfo:Lcom/android/ims/ImsReasonInfo;

    .line 2052
    :cond_2
    :goto_3
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMerge:Z

    .line 2053
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/ims/ImsCall;->mSessionEndDuringMergeReasonInfo:Lcom/android/ims/ImsReasonInfo;

    .line 2054
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 2055
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    .line 2056
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2057
    if-eqz v0, :cond_3

    .line 2060
    :try_start_1
    invoke-virtual {v0, p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallMergeFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V

    .line 2061
    if-eqz v1, :cond_3

    .line 2062
    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->processCallTerminated(Lcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2068
    :cond_3
    :goto_4
    return-void

    .line 2016
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    .end local v1    # "notifyFailure":Z
    .end local v2    # "notifyFailureReasonInfo":Lcom/android/ims/ImsReasonInfo;
    :cond_4
    const-string v4, "null"

    goto :goto_0

    .line 2017
    .restart local v4    # "sessionString":Ljava/lang/String;
    :cond_5
    const-string v6, "null"

    goto :goto_1

    .line 2019
    .restart local v6    # "transientSessionString":Ljava/lang/String;
    :cond_6
    const-string v3, "null"

    goto :goto_2

    .line 2050
    .end local v4    # "sessionString":Ljava/lang/String;
    .end local v6    # "transientSessionString":Ljava/lang/String;
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    .restart local v1    # "notifyFailure":Z
    .restart local v2    # "notifyFailureReasonInfo":Lcom/android/ims/ImsReasonInfo;
    :cond_7
    :try_start_2
    const-string v7, "processMergeFailed - ERROR no transient session"

    invoke-direct {p0, v7}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 2056
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 2064
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v5

    .line 2065
    .local v5, "t":Ljava/lang/Throwable;
    const-string v7, "processMergeFailed :: "

    invoke-direct {p0, v7, v5}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method private throwImsException(Ljava/lang/Throwable;I)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 2075
    instance-of v0, p1, Lcom/android/ims/ImsException;

    if-eqz v0, :cond_0

    .line 2076
    check-cast p1, Lcom/android/ims/ImsException;

    .end local p1    # "t":Ljava/lang/Throwable;
    throw p1

    .line 2078
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_0
    new-instance v0, Lcom/android/ims/ImsException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0
.end method

.method private updateConferenceParticipantsList(Lcom/android/ims/ImsCall;)V
    .locals 3
    .param p1, "bgCall"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 2083
    if-nez p1, :cond_0

    .line 2098
    :goto_0
    return-void

    .line 2084
    :cond_0
    move-object v1, p0

    .line 2085
    .local v1, "confCall":Lcom/android/ims/ImsCall;
    move-object v0, p1

    .line 2086
    .local v0, "childCall":Lcom/android/ims/ImsCall;
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2088
    const-string v2, "updateConferenceParticipantsList: BG call is conference"

    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 2089
    move-object v1, p1

    .line 2090
    move-object v0, p0

    .line 2097
    :cond_1
    :goto_1
    invoke-direct {v1, v0}, Lcom/android/ims/ImsCall;->addToConferenceParticipantList(Lcom/android/ims/ImsCall;)V

    goto :goto_0

    .line 2091
    :cond_2
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2094
    const-string v2, "updateConferenceParticipantsList: Make this call as conference and add child"

    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 2095
    invoke-direct {p0, p0}, Lcom/android/ims/ImsCall;->addToConferenceParticipantList(Lcom/android/ims/ImsCall;)V

    goto :goto_1
.end method

.method private updateRequestToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "updateRequest"    # I

    .prologue
    .line 3077
    packed-switch p1, :pswitch_data_0

    .line 3093
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 3079
    :pswitch_0
    const-string v0, "NONE"

    goto :goto_0

    .line 3081
    :pswitch_1
    const-string v0, "HOLD"

    goto :goto_0

    .line 3083
    :pswitch_2
    const-string v0, "HOLD_MERGE"

    goto :goto_0

    .line 3085
    :pswitch_3
    const-string v0, "RESUME"

    goto :goto_0

    .line 3087
    :pswitch_4
    const-string v0, "MERGE"

    goto :goto_0

    .line 3089
    :pswitch_5
    const-string v0, "EXTEND_TO_CONFERENCE"

    goto :goto_0

    .line 3091
    :pswitch_6
    const-string v0, "UNSPECIFIED"

    goto :goto_0

    .line 3077
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public accept(I)V
    .locals 2
    .param p1, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 988
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_0

    .line 989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accept :: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 992
    :cond_0
    new-instance v0, Lcom/android/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Lcom/android/ims/ImsStreamMediaProfile;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/ims/ImsCall;->accept(ILcom/android/ims/ImsStreamMediaProfile;)V

    .line 993
    return-void
.end method

.method public accept(ILcom/android/ims/ImsStreamMediaProfile;)V
    .locals 5
    .param p1, "callType"    # I
    .param p2, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 1004
    sget-boolean v1, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v1, :cond_0

    .line 1005
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accept :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", callType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", profile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1009
    :cond_0
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v2

    .line 1010
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-nez v1, :cond_1

    .line 1011
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v3, "No call to answer"

    const/16 v4, 0x94

    invoke-direct {v1, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 1035
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1016
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v1, p1, p2}, Lcom/android/ims/internal/ImsCallSession;->accept(ILcom/android/ims/ImsStreamMediaProfile;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1022
    :try_start_2
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Lcom/android/ims/ImsCallProfile;

    if-eqz v1, :cond_3

    .line 1023
    sget-boolean v1, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v1, :cond_2

    .line 1024
    const-string v1, "accept :: call profile will be updated"

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1027
    :cond_2
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Lcom/android/ims/ImsCallProfile;

    iput-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 1028
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 1032
    :cond_3
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_4

    .line 1033
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1035
    :cond_4
    monitor-exit v2

    .line 1036
    return-void

    .line 1017
    :catch_0
    move-exception v0

    .line 1018
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "accept :: "

    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1019
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v3, "accept()"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public attachSession(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 4
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 909
    sget-boolean v1, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v1, :cond_0

    .line 910
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attachSession :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 913
    :cond_0
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v2

    .line 914
    :try_start_0
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 917
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createCallSessionListener()Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/ims/internal/ImsCallSession;->setListener(Lcom/android/ims/internal/ImsCallSession$Listener;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 922
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 923
    return-void

    .line 918
    :catch_0
    move-exception v0

    .line 919
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "attachSession :: "

    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 920
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/ims/ImsCall;->throwImsException(Ljava/lang/Throwable;I)V

    goto :goto_0

    .line 922
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public checkIfRemoteUserIsSame(Ljava/lang/String;)Z
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 533
    if-nez p1, :cond_0

    .line 534
    const/4 v0, 0x0

    .line 537
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    const-string v1, "remote_uri"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 510
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 511
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->destroyCallGroup()V

    .line 513
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0}, Lcom/android/ims/internal/ImsCallSession;->close()V

    .line 515
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    .line 518
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 519
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 520
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Lcom/android/ims/ImsReasonInfo;

    .line 521
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/ImsCall;->mMediaSession:Lcom/android/ims/internal/ImsStreamMediaSession;

    .line 522
    monitor-exit v1

    .line 523
    return-void

    .line 522
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public conferenceStateUpdated(Lcom/android/ims/ImsConferenceState;)V
    .locals 3
    .param p1, "state"    # Lcom/android/ims/ImsConferenceState;

    .prologue
    .line 3056
    monitor-enter p0

    .line 3057
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->notifyConferenceStateUpdated(Lcom/android/ims/ImsConferenceState;)V

    .line 3058
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 3059
    .local v0, "listener":Lcom/android/ims/ImsCall$Listener;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3061
    if-eqz v0, :cond_0

    .line 3063
    :try_start_1
    invoke-virtual {v0, p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallConferenceStateUpdated(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsConferenceState;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 3068
    :cond_0
    :goto_0
    return-void

    .line 3059
    .end local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 3064
    .restart local v0    # "listener":Lcom/android/ims/ImsCall$Listener;
    :catch_0
    move-exception v1

    .line 3065
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "callSessionConferenceStateUpdated :: "

    invoke-direct {p0, v2, v1}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public deflect(Ljava/lang/String;)V
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 1045
    sget-boolean v1, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v1, :cond_0

    .line 1046
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deflect :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1050
    :cond_0
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v2

    .line 1051
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-nez v1, :cond_1

    .line 1052
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v3, "No call to deflect"

    const/16 v4, 0x94

    invoke-direct {v1, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 1062
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1057
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v1, p1}, Lcom/android/ims/internal/ImsCallSession;->deflect(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1062
    :try_start_2
    monitor-exit v2

    .line 1063
    return-void

    .line 1058
    :catch_0
    move-exception v0

    .line 1059
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "deflect :: "

    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1060
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v3, "deflect()"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public equalsTo(Lcom/android/ims/internal/ICall;)Z
    .locals 2
    .param p1, "call"    # Lcom/android/ims/internal/ICall;

    .prologue
    const/4 v0, 0x0

    .line 548
    if-nez p1, :cond_1

    .line 556
    .end local p1    # "call":Lcom/android/ims/internal/ICall;
    :cond_0
    :goto_0
    return v0

    .line 552
    .restart local p1    # "call":Lcom/android/ims/internal/ICall;
    :cond_1
    instance-of v1, p1, Lcom/android/ims/ImsCall;

    if-eqz v1, :cond_0

    .line 553
    check-cast p1, Lcom/android/ims/ImsCall;

    .end local p1    # "call":Lcom/android/ims/internal/ICall;
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public extendToConference([Ljava/lang/String;)V
    .locals 4
    .param p1, "participants"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x66

    .line 1355
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_0

    .line 1356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extendToConference :: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1359
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isOnHold()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1360
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_1

    .line 1361
    const-string v0, "extendToConference :: call is on hold"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1363
    :cond_1
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v1, "Not in a call to extend a call to conference"

    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1367
    :cond_2
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1368
    :try_start_0
    iget v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    if-eqz v0, :cond_4

    .line 1369
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_3

    .line 1370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extendToConference :: update is in progress; request="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1372
    :cond_3
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v2, "Call update is in progress"

    const/16 v3, 0x66

    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1384
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1376
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-nez v0, :cond_5

    .line 1377
    const-string v0, "extendToConference :: "

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1378
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1382
    :cond_5
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, p1}, Lcom/android/ims/internal/ImsCallSession;->extendToConference([Ljava/lang/String;)V

    .line 1383
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1384
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1385
    return-void
.end method

.method public getCallExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 691
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v2

    .line 693
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-nez v1, :cond_0

    .line 694
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v3, "No call session"

    const/16 v4, 0x94

    invoke-direct {v1, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 704
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 699
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v1, p1}, Lcom/android/ims/internal/ImsCallSession;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    monitor-exit v2

    return-object v1

    .line 700
    :catch_0
    move-exception v0

    .line 701
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "getCallExtra :: "

    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 702
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v3, "getCallExtra()"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getCallGroup()Lcom/android/ims/internal/CallGroup;
    .locals 2

    .prologue
    .line 1586
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1587
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mCallGroup:Lcom/android/ims/internal/CallGroup;

    monitor-exit v1

    return-object v0

    .line 1588
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 2

    .prologue
    .line 565
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 566
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    monitor-exit v1

    return-object v0

    .line 567
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCallSession()Lcom/android/ims/internal/ImsCallSession;
    .locals 2

    .prologue
    .line 664
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 665
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    monitor-exit v1

    return-object v0

    .line 666
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCallSubstate()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 713
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v2

    .line 714
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-nez v1, :cond_0

    .line 715
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v3, "No call session"

    const/16 v4, 0x94

    invoke-direct {v1, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 724
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 719
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v1}, Lcom/android/ims/internal/ImsCallSession;->getCallSubstate()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :try_start_2
    monitor-exit v2

    return v1

    .line 720
    :catch_0
    move-exception v0

    .line 721
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "getCallSubstate :: "

    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 722
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v3, "getCallSubstate()"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getConferenceParticipants()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 634
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 635
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConferenceParticipants :: mConferenceParticipants"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    monitor-exit v1

    return-object v0

    .line 638
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLastReasonInfo()Lcom/android/ims/ImsReasonInfo;
    .locals 2

    .prologue
    .line 733
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 734
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Lcom/android/ims/ImsReasonInfo;

    monitor-exit v1

    return-object v0

    .line 735
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLocalCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 576
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v2

    .line 577
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-nez v1, :cond_0

    .line 578
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v3, "No call session"

    const/16 v4, 0x94

    invoke-direct {v1, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 588
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 583
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v1}, Lcom/android/ims/internal/ImsCallSession;->getLocalCallProfile()Lcom/android/ims/ImsCallProfile;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    monitor-exit v2

    return-object v1

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "getLocalCallProfile :: "

    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 586
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v3, "getLocalCallProfile()"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getMediaSession()Lcom/android/ims/internal/ImsStreamMediaSession;
    .locals 2

    .prologue
    .line 677
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 678
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mMediaSession:Lcom/android/ims/internal/ImsStreamMediaSession;

    monitor-exit v1

    return-object v0

    .line 679
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getProposedCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 2

    .prologue
    .line 618
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 619
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isInCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 620
    const/4 v0, 0x0

    monitor-exit v1

    .line 623
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Lcom/android/ims/ImsCallProfile;

    monitor-exit v1

    goto :goto_0

    .line 624
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRemoteCallProfile()Lcom/android/ims/ImsCallProfile;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 597
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v2

    .line 598
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-nez v1, :cond_0

    .line 599
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v3, "No call session"

    const/16 v4, 0x94

    invoke-direct {v1, v3, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 609
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 604
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v1}, Lcom/android/ims/internal/ImsCallSession;->getRemoteCallProfile()Lcom/android/ims/ImsCallProfile;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    monitor-exit v2

    return-object v1

    .line 605
    :catch_0
    move-exception v0

    .line 606
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "getLocalCallProfile :: "

    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 607
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v3, "getRemoteCallProfile()"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public getState()I
    .locals 2

    .prologue
    .line 648
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 649
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-nez v0, :cond_0

    .line 650
    const/4 v0, 0x0

    monitor-exit v1

    .line 653
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0}, Lcom/android/ims/internal/ImsCallSession;->getState()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 654
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasPendingUpdate()Z
    .locals 2

    .prologue
    .line 744
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 745
    :try_start_0
    iget v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 746
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hold()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 1135
    sget-boolean v2, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v2, :cond_0

    .line 1136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hold :: session="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1141
    :cond_0
    iget-object v3, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 1142
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mCallGroup:Lcom/android/ims/internal/CallGroup;

    .line 1143
    .local v0, "callGroup":Lcom/android/ims/internal/CallGroup;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/android/ims/internal/CallGroup;->isOwner(Lcom/android/ims/internal/ICall;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1144
    const-string v2, "hold owner of the call group"

    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1145
    invoke-virtual {v0}, Lcom/android/ims/internal/CallGroup;->getOwner()Lcom/android/ims/internal/ICall;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsCall;

    .line 1146
    .local v1, "owner":Lcom/android/ims/ImsCall;
    if-eqz v1, :cond_2

    .line 1147
    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->hold()V

    .line 1148
    monitor-exit v3

    .line 1178
    .end local v1    # "owner":Lcom/android/ims/ImsCall;
    :cond_1
    :goto_0
    return-void

    .line 1151
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1153
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isOnHold()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1154
    sget-boolean v2, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v2, :cond_1

    .line 1155
    const-string v2, "hold :: call is already on hold"

    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1151
    .end local v0    # "callGroup":Lcom/android/ims/internal/CallGroup;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1160
    .restart local v0    # "callGroup":Lcom/android/ims/internal/CallGroup;
    :cond_3
    iget-object v3, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 1161
    :try_start_2
    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    if-eqz v2, :cond_4

    .line 1162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hold :: update is in progress; request="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1163
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v4, "Call update is in progress"

    const/16 v5, 0x66

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 1177
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 1167
    :cond_4
    :try_start_3
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-nez v2, :cond_5

    .line 1168
    const-string v2, "hold :: "

    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1169
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v4, "No call session"

    const/16 v5, 0x94

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 1173
    :cond_5
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createHoldMediaProfile()Lcom/android/ims/ImsStreamMediaProfile;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/ims/internal/ImsCallSession;->hold(Lcom/android/ims/ImsStreamMediaProfile;)V

    .line 1175
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 1176
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1177
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .locals 4
    .param p1, "participants"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 1392
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_0

    .line 1393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inviteParticipants :: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1396
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1397
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-nez v0, :cond_1

    .line 1398
    const-string v0, "inviteParticipants :: "

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1399
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1404
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1403
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, p1}, Lcom/android/ims/internal/ImsCallSession;->inviteParticipants([Ljava/lang/String;)V

    .line 1404
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1405
    return-void
.end method

.method public isInCall()Z
    .locals 2

    .prologue
    .line 755
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 756
    :try_start_0
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    monitor-exit v1

    return v0

    .line 757
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isMerged()Z
    .locals 1

    .prologue
    .line 813
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mIsMerged:Z

    return v0
.end method

.method public isMultiparty()Z
    .locals 2

    .prologue
    .line 788
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 789
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-nez v0, :cond_0

    .line 790
    const/4 v0, 0x0

    monitor-exit v1

    .line 793
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0}, Lcom/android/ims/internal/ImsCallSession;->isMultiparty()Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 794
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isMuted()Z
    .locals 2

    .prologue
    .line 766
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 767
    :try_start_0
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mMute:Z

    monitor-exit v1

    return v0

    .line 768
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isOnHold()Z
    .locals 2

    .prologue
    .line 777
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 778
    :try_start_0
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mHold:Z

    monitor-exit v1

    return v0

    .line 779
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public merge()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 1239
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_0

    .line 1240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "merge :: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1243
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1244
    :try_start_0
    iget v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    if-eqz v0, :cond_1

    .line 1245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "merge :: update is in progress; request="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1246
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v2, "Call update is in progress"

    const/16 v3, 0x66

    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1284
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1250
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-nez v0, :cond_2

    .line 1251
    const-string v0, "merge :: "

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1252
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1258
    :cond_2
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mHold:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/ims/ImsCall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1120088

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1260
    :cond_3
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0}, Lcom/android/ims/internal/ImsCallSession;->merge()V

    .line 1264
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mCallGroup:Lcom/android/ims/internal/CallGroup;

    if-eqz v0, :cond_4

    .line 1265
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mCallGroup:Lcom/android/ims/internal/CallGroup;

    invoke-virtual {v0}, Lcom/android/ims/internal/CallGroup;->getOwner()Lcom/android/ims/internal/ICall;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1271
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1284
    :cond_4
    :goto_0
    monitor-exit v1

    .line 1285
    return-void

    .line 1273
    :cond_5
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/ims/ImsCall;->setIsMerged(Z)V

    goto :goto_0

    .line 1280
    :cond_6
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createHoldMediaProfile()Lcom/android/ims/ImsStreamMediaProfile;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/ImsCallSession;->hold(Lcom/android/ims/ImsStreamMediaProfile;)V

    .line 1281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 1282
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public merge(Lcom/android/ims/ImsCall;)V
    .locals 3
    .param p1, "bgCall"    # Lcom/android/ims/ImsCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 1295
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_0

    .line 1296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "merge(1) :: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1299
    :cond_0
    if-nez p1, :cond_1

    .line 1300
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v1, "No background call"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1304
    :cond_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1305
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->createCallGroup(Lcom/android/ims/ImsCall;)V

    .line 1306
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1308
    invoke-direct {p0, p1}, Lcom/android/ims/ImsCall;->updateConferenceParticipantsList(Lcom/android/ims/ImsCall;)V

    .line 1310
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->merge()V

    .line 1311
    return-void

    .line 1306
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public reject(I)V
    .locals 3
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 1073
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_0

    .line 1074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reject :: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1077
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1078
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-eqz v0, :cond_1

    .line 1079
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, p1}, Lcom/android/ims/internal/ImsCallSession;->reject(I)V

    .line 1082
    :cond_1
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Lcom/android/ims/ImsCallProfile;

    if-eqz v0, :cond_3

    .line 1083
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_2

    .line 1084
    const-string v0, "reject :: call profile is not updated; destroy it..."

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1087
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/ImsCall;->mProposedCallProfile:Lcom/android/ims/ImsCallProfile;

    .line 1091
    :cond_3
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_4

    .line 1092
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1094
    :cond_4
    monitor-exit v1

    .line 1095
    return-void

    .line 1094
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .locals 11
    .param p1, "participants"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 1412
    sget-boolean v7, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v7, :cond_0

    .line 1413
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removeParticipants :: session="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1415
    :cond_0
    iget-object v8, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v8

    .line 1416
    :try_start_0
    iget-object v7, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-nez v7, :cond_1

    .line 1417
    const-string v7, "removeParticipants :: "

    invoke-direct {p0, v7}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1418
    new-instance v7, Lcom/android/ims/ImsException;

    const-string v9, "No call session"

    const/16 v10, 0x94

    invoke-direct {v7, v9, v10}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 1445
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 1422
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v7, p1}, Lcom/android/ims/internal/ImsCallSession;->removeParticipants([Ljava/lang/String;)V

    .line 1424
    iget-boolean v7, p0, Lcom/android/ims/ImsCall;->mIsCEPPresent:Z

    if-nez v7, :cond_5

    if-eqz p1, :cond_5

    iget-object v7, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    if-eqz v7, :cond_5

    .line 1425
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_4

    aget-object v5, v0, v3

    .line 1426
    .local v5, "participant":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Looping for participant "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1427
    iget-object v7, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3    # "i$":I
    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/ConferenceParticipant;

    .line 1428
    .local v1, "c":Landroid/telecom/ConferenceParticipant;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Check handle for c = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/telecom/ConferenceParticipant;->getHandle()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1429
    if-eqz v5, :cond_2

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v1}, Landroid/telecom/ConferenceParticipant;->getHandle()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1430
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Remove participant "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1431
    iget-object v7, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1425
    .end local v1    # "c":Landroid/telecom/ConferenceParticipant;
    :cond_3
    add-int/lit8 v2, v3, 0x1

    .local v2, "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 1436
    .end local v5    # "participant":Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_5

    .line 1438
    :try_start_2
    iget-object v7, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    iget-object v9, p0, Lcom/android/ims/ImsCall;->mConferenceParticipants:Ljava/util/List;

    invoke-virtual {v7, p0, v9}, Lcom/android/ims/ImsCall$Listener;->onConferenceParticipantsStateChanged(Lcom/android/ims/ImsCall;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1445
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_5
    :goto_1
    :try_start_3
    monitor-exit v8

    .line 1446
    return-void

    .line 1440
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :catch_0
    move-exception v6

    .line 1441
    .local v6, "t":Ljava/lang/Throwable;
    const-string v7, "removeparticipants :: "

    invoke-direct {p0, v7, v6}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public resume()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 1187
    sget-boolean v2, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v2, :cond_0

    .line 1188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resume :: session="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1193
    :cond_0
    iget-object v3, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 1194
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mCallGroup:Lcom/android/ims/internal/CallGroup;

    .line 1195
    .local v0, "callGroup":Lcom/android/ims/internal/CallGroup;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/android/ims/internal/CallGroup;->isOwner(Lcom/android/ims/internal/ICall;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1196
    const-string v2, "resume owner of the call group"

    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1197
    invoke-virtual {v0}, Lcom/android/ims/internal/CallGroup;->getOwner()Lcom/android/ims/internal/ICall;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsCall;

    .line 1198
    .local v1, "owner":Lcom/android/ims/ImsCall;
    if-eqz v1, :cond_2

    .line 1199
    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->resume()V

    .line 1200
    monitor-exit v3

    .line 1230
    .end local v1    # "owner":Lcom/android/ims/ImsCall;
    :cond_1
    :goto_0
    return-void

    .line 1203
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1205
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isOnHold()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1206
    sget-boolean v2, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v2, :cond_1

    .line 1207
    const-string v2, "resume :: call is in conversation"

    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1203
    .end local v0    # "callGroup":Lcom/android/ims/internal/CallGroup;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1212
    .restart local v0    # "callGroup":Lcom/android/ims/internal/CallGroup;
    :cond_3
    iget-object v3, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 1213
    :try_start_2
    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    if-eqz v2, :cond_4

    .line 1214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resume :: update is in progress; request="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1215
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v4, "Call update is in progress"

    const/16 v5, 0x66

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 1229
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 1219
    :cond_4
    :try_start_3
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-nez v2, :cond_5

    .line 1220
    const-string v2, "resume :: "

    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1221
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v4, "No call session"

    const/16 v5, 0x94

    invoke-direct {v2, v4, v5}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 1225
    :cond_5
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createResumeMediaProfile()Lcom/android/ims/ImsStreamMediaProfile;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/ims/internal/ImsCallSession;->resume(Lcom/android/ims/ImsStreamMediaProfile;)V

    .line 1227
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 1228
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1229
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0
.end method

.method public sendDtmf(C)V
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 1457
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/ims/ImsCall;->sendDtmf(CLandroid/os/Message;)V

    .line 1458
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 2
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1469
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_0

    .line 1470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendDtmf :: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1473
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1474
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-eqz v0, :cond_1

    .line 1475
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, p1}, Lcom/android/ims/internal/ImsCallSession;->sendDtmf(C)V

    .line 1477
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1479
    if-eqz p2, :cond_2

    .line 1480
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1482
    :cond_2
    return-void

    .line 1477
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public sendUssd(Ljava/lang/String;)V
    .locals 4
    .param p1, "ussdMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 1524
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_0

    .line 1525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendUssd :: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ussdMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1528
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1529
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-nez v0, :cond_1

    .line 1530
    const-string v0, "sendUssd :: "

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1531
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1536
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1535
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, p1}, Lcom/android/ims/internal/ImsCallSession;->sendUssd(Ljava/lang/String;)V

    .line 1536
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1537
    return-void
.end method

.method public setCallGroup(Lcom/android/ims/internal/CallGroup;)V
    .locals 2
    .param p1, "callGroup"    # Lcom/android/ims/internal/CallGroup;

    .prologue
    .line 1592
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1593
    :try_start_0
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mCallGroup:Lcom/android/ims/internal/CallGroup;

    .line 1594
    monitor-exit v1

    .line 1595
    return-void

    .line 1594
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setIsMerged(Z)V
    .locals 0
    .param p1, "isMerged"    # Z

    .prologue
    .line 805
    iput-boolean p1, p0, Lcom/android/ims/ImsCall;->mIsMerged:Z

    .line 806
    return-void
.end method

.method public setListener(Lcom/android/ims/ImsCall$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/ims/ImsCall$Listener;

    .prologue
    .line 824
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/ims/ImsCall;->setListener(Lcom/android/ims/ImsCall$Listener;Z)V

    .line 825
    return-void
.end method

.method public setListener(Lcom/android/ims/ImsCall$Listener;Z)V
    .locals 7
    .param p1, "listener"    # Lcom/android/ims/ImsCall$Listener;
    .param p2, "callbackImmediately"    # Z

    .prologue
    .line 842
    iget-object v6, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v6

    .line 843
    :try_start_0
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 845
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 846
    :cond_0
    monitor-exit v6

    .line 880
    :goto_0
    return-void

    .line 849
    :cond_1
    iget-boolean v0, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    .line 850
    .local v0, "inCall":Z
    iget-boolean v2, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 851
    .local v2, "onHold":Z
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->getState()I

    move-result v3

    .line 852
    .local v3, "state":I
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLastReasonInfo:Lcom/android/ims/ImsReasonInfo;

    .line 853
    .local v1, "lastReasonInfo":Lcom/android/ims/ImsReasonInfo;
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 856
    if-eqz v1, :cond_2

    .line 857
    :try_start_1
    invoke-virtual {p1, p0, v1}, Lcom/android/ims/ImsCall$Listener;->onCallError(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 877
    :catch_0
    move-exception v4

    .line 878
    .local v4, "t":Ljava/lang/Throwable;
    const-string v5, "setListener()"

    invoke-direct {p0, v5, v4}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 853
    .end local v0    # "inCall":Z
    .end local v1    # "lastReasonInfo":Lcom/android/ims/ImsReasonInfo;
    .end local v2    # "onHold":Z
    .end local v3    # "state":I
    .end local v4    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 858
    .restart local v0    # "inCall":Z
    .restart local v1    # "lastReasonInfo":Lcom/android/ims/ImsReasonInfo;
    .restart local v2    # "onHold":Z
    .restart local v3    # "state":I
    :cond_2
    if-eqz v0, :cond_4

    .line 859
    if-eqz v2, :cond_3

    .line 860
    :try_start_3
    invoke-virtual {p1, p0}, Lcom/android/ims/ImsCall$Listener;->onCallHeld(Lcom/android/ims/ImsCall;)V

    goto :goto_0

    .line 862
    :cond_3
    invoke-virtual {p1, p0}, Lcom/android/ims/ImsCall$Listener;->onCallStarted(Lcom/android/ims/ImsCall;)V

    goto :goto_0

    .line 865
    :cond_4
    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 867
    :sswitch_0
    invoke-virtual {p1, p0}, Lcom/android/ims/ImsCall$Listener;->onCallProgressing(Lcom/android/ims/ImsCall;)V

    goto :goto_0

    .line 870
    :sswitch_1
    invoke-virtual {p1, p0, v1}, Lcom/android/ims/ImsCall$Listener;->onCallTerminated(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 865
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setMute(Z)V
    .locals 3
    .param p1, "muted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 888
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v2

    .line 889
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/ImsCall;->mMute:Z

    if-eq v1, p1, :cond_0

    .line 890
    iput-boolean p1, p0, Lcom/android/ims/ImsCall;->mMute:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 893
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v1, p1}, Lcom/android/ims/internal/ImsCallSession;->setMute(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 899
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 900
    return-void

    .line 894
    :catch_0
    move-exception v0

    .line 895
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "setMute :: "

    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 896
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/ims/ImsCall;->throwImsException(Ljava/lang/Throwable;I)V

    goto :goto_0

    .line 899
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public start(Lcom/android/ims/internal/ImsCallSession;Ljava/lang/String;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "callee"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 935
    sget-boolean v1, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v1, :cond_0

    .line 936
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start(1) :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", callee="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 939
    :cond_0
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v2

    .line 940
    :try_start_0
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 943
    :try_start_1
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createCallSessionListener()Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/ims/internal/ImsCallSession;->setListener(Lcom/android/ims/internal/ImsCallSession$Listener;)V

    .line 944
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    invoke-virtual {p1, p2, v1}, Lcom/android/ims/internal/ImsCallSession;->start(Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 949
    :try_start_2
    monitor-exit v2

    .line 950
    return-void

    .line 945
    :catch_0
    move-exception v0

    .line 946
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "start(1) :: "

    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 947
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v3, "start(1)"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 949
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public start(Lcom/android/ims/internal/ImsCallSession;[Ljava/lang/String;)V
    .locals 5
    .param p1, "session"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "participants"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 962
    sget-boolean v1, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v1, :cond_0

    .line 963
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start(n) :: session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", callee="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 966
    :cond_0
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v2

    .line 967
    :try_start_0
    iput-object p1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 970
    :try_start_1
    invoke-direct {p0}, Lcom/android/ims/ImsCall;->createCallSessionListener()Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/ims/internal/ImsCallSession;->setListener(Lcom/android/ims/internal/ImsCallSession$Listener;)V

    .line 971
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mCallProfile:Lcom/android/ims/ImsCallProfile;

    invoke-virtual {p1, p2, v1}, Lcom/android/ims/internal/ImsCallSession;->start([Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 976
    :try_start_2
    monitor-exit v2

    .line 977
    return-void

    .line 972
    :catch_0
    move-exception v0

    .line 973
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "start(n) :: "

    invoke-direct {p0, v1, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 974
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v3, "start(n)"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v0, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 976
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public startDtmf(C)V
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 1492
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_0

    .line 1493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDtmf :: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1496
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1497
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-eqz v0, :cond_1

    .line 1498
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, p1}, Lcom/android/ims/internal/ImsCallSession;->startDtmf(C)V

    .line 1500
    :cond_1
    monitor-exit v1

    .line 1501
    return-void

    .line 1500
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopDtmf()V
    .locals 2

    .prologue
    .line 1507
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_0

    .line 1508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopDtmf :: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1511
    :cond_0
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1512
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-eqz v0, :cond_1

    .line 1513
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0}, Lcom/android/ims/internal/ImsCallSession;->stopDtmf()V

    .line 1515
    :cond_1
    monitor-exit v1

    .line 1516
    return-void

    .line 1515
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public terminate(I)V
    .locals 4
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    .line 1104
    sget-boolean v2, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v2, :cond_0

    .line 1105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "terminate :: session="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1108
    :cond_0
    iget-object v3, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v3

    .line 1109
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 1110
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/ims/ImsCall;->mInCall:Z

    .line 1111
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->getCallGroup()Lcom/android/ims/internal/CallGroup;

    move-result-object v0

    .line 1113
    .local v0, "callGroup":Lcom/android/ims/internal/CallGroup;
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-eqz v2, :cond_2

    .line 1114
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/android/ims/internal/CallGroup;->isOwner(Lcom/android/ims/internal/ICall;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1115
    const-string v2, "terminate owner of the call group"

    invoke-direct {p0, v2}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1116
    invoke-virtual {v0}, Lcom/android/ims/internal/CallGroup;->getOwner()Lcom/android/ims/internal/ICall;

    move-result-object v1

    check-cast v1, Lcom/android/ims/ImsCall;

    .line 1117
    .local v1, "owner":Lcom/android/ims/ImsCall;
    if-eqz v1, :cond_1

    .line 1118
    invoke-virtual {v1, p1}, Lcom/android/ims/ImsCall;->terminate(I)V

    .line 1119
    monitor-exit v3

    .line 1125
    .end local v1    # "owner":Lcom/android/ims/ImsCall;
    :goto_0
    return-void

    .line 1122
    :cond_1
    iget-object v2, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v2, p1}, Lcom/android/ims/internal/ImsCallSession;->terminate(I)V

    .line 1124
    :cond_2
    monitor-exit v3

    goto :goto_0

    .end local v0    # "callGroup":Lcom/android/ims/internal/CallGroup;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3106
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[ImsCall objId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3107
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3108
    const-string v1, " multiParty:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3109
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Y"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3110
    const-string v1, " session:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3111
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3112
    const-string v1, " updateRequest:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3113
    iget v1, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    invoke-direct {p0, v1}, Lcom/android/ims/ImsCall;->updateRequestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3114
    const-string v1, " transientSession:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3115
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mTransientConferenceSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3116
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3109
    :cond_0
    const-string v1, "N"

    goto :goto_0
.end method

.method public update(ILcom/android/ims/ImsStreamMediaProfile;)V
    .locals 4
    .param p1, "callType"    # I
    .param p2, "mediaProfile"    # Lcom/android/ims/ImsStreamMediaProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x66

    .line 1317
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_0

    .line 1318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update :: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1321
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->isOnHold()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1322
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_1

    .line 1323
    const-string v0, "update :: call is on hold"

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1325
    :cond_1
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v1, "Not in a call to update call"

    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1329
    :cond_2
    iget-object v1, p0, Lcom/android/ims/ImsCall;->mLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 1330
    :try_start_0
    iget v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    if-eqz v0, :cond_4

    .line 1331
    sget-boolean v0, Lcom/android/ims/ImsCall;->DBG:Z

    if-eqz v0, :cond_3

    .line 1332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update :: update is in progress; request="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->log(Ljava/lang/String;)V

    .line 1334
    :cond_3
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v2, "Call update is in progress"

    const/16 v3, 0x66

    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1346
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1338
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    if-nez v0, :cond_5

    .line 1339
    const-string v0, "update :: "

    invoke-direct {p0, v0}, Lcom/android/ims/ImsCall;->loge(Ljava/lang/String;)V

    .line 1340
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v0, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1344
    :cond_5
    iget-object v0, p0, Lcom/android/ims/ImsCall;->mSession:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/internal/ImsCallSession;->update(ILcom/android/ims/ImsStreamMediaProfile;)V

    .line 1345
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/ims/ImsCall;->mUpdateRequest:I

    .line 1346
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1347
    return-void
.end method

.method public updateHoldValues()V
    .locals 1

    .prologue
    .line 502
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/ImsCall;->mHold:Z

    .line 503
    return-void
.end method
