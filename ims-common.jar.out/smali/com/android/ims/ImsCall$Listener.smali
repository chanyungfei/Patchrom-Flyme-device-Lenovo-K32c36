.class public Lcom/android/ims/ImsCall$Listener;
.super Ljava/lang/Object;
.source "ImsCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallConferenceExtendFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 252
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallError(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V

    .line 253
    return-void
.end method

.method public onCallConferenceExtendReceived(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "newCall"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 262
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 263
    return-void
.end method

.method public onCallConferenceExtended(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "newCall"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 240
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 241
    return-void
.end method

.method public onCallConferenceStateUpdated(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsConferenceState;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "state"    # Lcom/android/ims/ImsConferenceState;

    .prologue
    .line 315
    return-void
.end method

.method public onCallError(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 350
    return-void
.end method

.method public onCallHandover(Lcom/android/ims/ImsCall;IILcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 398
    return-void
.end method

.method public onCallHandoverFailed(Lcom/android/ims/ImsCall;IILcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 410
    return-void
.end method

.method public onCallHeld(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 126
    return-void
.end method

.method public onCallHoldFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 136
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallError(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V

    .line 137
    return-void
.end method

.method public onCallHoldReceived(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 147
    return-void
.end method

.method public onCallInviteParticipantsRequestDelivered(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 273
    return-void
.end method

.method public onCallInviteParticipantsRequestFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 284
    return-void
.end method

.method public onCallMergeFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 199
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallError(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V

    .line 200
    return-void
.end method

.method public onCallMerged(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 189
    return-void
.end method

.method public onCallProgressing(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 82
    return-void
.end method

.method public onCallRemoveParticipantsRequestDelivered(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 294
    return-void
.end method

.method public onCallRemoveParticipantsRequestFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 305
    return-void
.end method

.method public onCallResumeFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 167
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallError(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V

    .line 168
    return-void
.end method

.method public onCallResumeReceived(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 178
    return-void
.end method

.method public onCallResumed(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 157
    return-void
.end method

.method public onCallRetryErrorReceived(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 419
    return-void
.end method

.method public onCallSessionTtyModeReceived(Lcom/android/ims/ImsCall;I)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "mode"    # I

    .prologue
    .line 386
    return-void
.end method

.method public onCallStartFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallError(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V

    .line 103
    return-void
.end method

.method public onCallStarted(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 92
    return-void
.end method

.method public onCallStateChanged(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 361
    return-void
.end method

.method public onCallStateChanged(Lcom/android/ims/ImsCall;I)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "state"    # I

    .prologue
    .line 376
    return-void
.end method

.method public onCallSuppServiceReceived(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsSuppServiceNotification;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "suppServiceInfo"    # Lcom/android/ims/ImsSuppServiceNotification;

    .prologue
    .line 429
    return-void
.end method

.method public onCallTerminated(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 116
    return-void
.end method

.method public onCallUpdateFailed(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 220
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallError(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsReasonInfo;)V

    .line 221
    return-void
.end method

.method public onCallUpdateReceived(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 230
    return-void
.end method

.method public onCallUpdated(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 210
    return-void
.end method

.method public onCallUssdMessageReceived(Lcom/android/ims/ImsCall;ILjava/lang/String;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "mode"    # I
    .param p3, "ussdMessage"    # Ljava/lang/String;

    .prologue
    .line 337
    return-void
.end method

.method public onConferenceParticipantsStateChanged(Lcom/android/ims/ImsCall;Ljava/util/List;)V
    .locals 0
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/ims/ImsCall;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ConferenceParticipant;>;"
    return-void
.end method
