.class Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;
.super Lcom/android/ims/internal/IImsCallSessionListener$Stub;
.source "ImsCallSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/ImsCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IImsCallSessionListenerProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/internal/ImsCallSession;


# direct methods
.method private constructor <init>(Lcom/android/ims/internal/ImsCallSession;)V
    .locals 0

    .prologue
    .line 955
    iput-object p1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/internal/ImsCallSession$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/ims/internal/ImsCallSession;
    .param p2, "x1"    # Lcom/android/ims/internal/ImsCallSession$1;

    .prologue
    .line 955
    invoke-direct {p0, p1}, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;-><init>(Lcom/android/ims/internal/ImsCallSession;)V

    return-void
.end method


# virtual methods
.method public callSessionConferenceExtendFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1127
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionConferenceExtendFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 1129
    :cond_0
    return-void
.end method

.method public callSessionConferenceExtendReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p3, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    new-instance v2, Lcom/android/ims/internal/ImsCallSession;

    invoke-direct {v2, p2}, Lcom/android/ims/internal/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    invoke-virtual {v0, v1, v2, p3}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionConferenceExtendReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 1138
    :cond_0
    return-void
.end method

.method public callSessionConferenceExtended(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p3, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1118
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    new-instance v2, Lcom/android/ims/internal/ImsCallSession;

    invoke-direct {v2, p2}, Lcom/android/ims/internal/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    invoke-virtual {v0, v1, v2, p3}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionConferenceExtended(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 1121
    :cond_0
    return-void
.end method

.method public callSessionConferenceStateUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsConferenceState;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "state"    # Lcom/android/ims/ImsConferenceState;

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionConferenceStateUpdated(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsConferenceState;)V

    .line 1185
    :cond_0
    return-void
.end method

.method public callSessionDeflectFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1253
    :cond_0
    return-void
.end method

.method public callSessionDeflected(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1244
    :cond_0
    return-void
.end method

.method public callSessionHandover(Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1206
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionHandover(Lcom/android/ims/internal/ImsCallSession;IILcom/android/ims/ImsReasonInfo;)V

    .line 1209
    :cond_0
    return-void
.end method

.method public callSessionHandoverFailed(Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1219
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionHandoverFailed(Lcom/android/ims/internal/ImsCallSession;IILcom/android/ims/ImsReasonInfo;)V

    .line 1222
    :cond_0
    return-void
.end method

.method public callSessionHeld(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 997
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionHeld(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 1000
    :cond_0
    return-void
.end method

.method public callSessionHoldFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionHoldFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 1008
    :cond_0
    return-void
.end method

.method public callSessionHoldReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionHoldReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 1016
    :cond_0
    return-void
.end method

.method public callSessionInviteParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionInviteParticipantsRequestDelivered(Lcom/android/ims/internal/ImsCallSession;)V

    .line 1149
    :cond_0
    return-void
.end method

.method public callSessionInviteParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionInviteParticipantsRequestFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 1158
    :cond_0
    return-void
.end method

.method public callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionMergeComplete(Lcom/android/ims/internal/ImsCallSession;)V

    .line 1068
    :cond_0
    return-void
.end method

.method public callSessionMergeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionMergeFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 1082
    :cond_0
    return-void
.end method

.method public callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "newSession"    # Lcom/android/ims/internal/IImsCallSession;
    .param p3, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    new-instance v2, Lcom/android/ims/internal/ImsCallSession;

    invoke-direct {v2, p2}, Lcom/android/ims/internal/ImsCallSession;-><init>(Lcom/android/ims/internal/IImsCallSession;)V

    invoke-virtual {v0, v1, v2, p3}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionMergeStarted(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 1056
    :cond_0
    return-void
.end method

.method public callSessionProgressing(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsStreamMediaProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsStreamMediaProfile;

    .prologue
    .line 962
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionProgressing(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsStreamMediaProfile;)V

    .line 965
    :cond_0
    return-void
.end method

.method public callSessionRemoveParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionRemoveParticipantsRequestDelivered(Lcom/android/ims/internal/ImsCallSession;)V

    .line 1165
    :cond_0
    return-void
.end method

.method public callSessionRemoveParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1171
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionRemoveParticipantsRequestFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 1174
    :cond_0
    return-void
.end method

.method public callSessionResumeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionResumeFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 1032
    :cond_0
    return-void
.end method

.method public callSessionResumeReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionResumeReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 1040
    :cond_0
    return-void
.end method

.method public callSessionResumed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionResumed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 1024
    :cond_0
    return-void
.end method

.method public callSessionRetryErrorReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1259
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionRetryErrorReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 1261
    :cond_0
    return-void
.end method

.method public callSessionStartFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 978
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 979
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionStartFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 981
    :cond_0
    return-void
.end method

.method public callSessionStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 970
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionStarted(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 973
    :cond_0
    return-void
.end method

.method public callSessionSuppServiceReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsSuppServiceNotification;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "suppServiceInfo"    # Lcom/android/ims/ImsSuppServiceNotification;

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1266
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionSuppServiceReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsSuppServiceNotification;)V

    .line 1268
    :cond_0
    return-void
.end method

.method public callSessionTerminated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 986
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 987
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionTerminated(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 989
    :cond_0
    return-void
.end method

.method public callSessionTtyModeReceived(Lcom/android/ims/internal/IImsCallSession;I)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "mode"    # I

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1231
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionTtyModeReceived(Lcom/android/ims/internal/ImsCallSession;I)V

    .line 1233
    :cond_0
    return-void
.end method

.method public callSessionUpdateFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "reasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionUpdateFailed(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 1101
    :cond_0
    return-void
.end method

.method public callSessionUpdateReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1107
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionUpdateReceived(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 1109
    :cond_0
    return-void
.end method

.method public callSessionUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "profile"    # Lcom/android/ims/ImsCallProfile;

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionUpdated(Lcom/android/ims/internal/ImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 1093
    :cond_0
    return-void
.end method

.method public callSessionUssdMessageReceived(Lcom/android/ims/internal/IImsCallSession;ILjava/lang/String;)V
    .locals 2
    .param p1, "session"    # Lcom/android/ims/internal/IImsCallSession;
    .param p2, "mode"    # I
    .param p3, "ussdMessage"    # Ljava/lang/String;

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1194
    iget-object v0, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    # getter for: Lcom/android/ims/internal/ImsCallSession;->mListener:Lcom/android/ims/internal/ImsCallSession$Listener;
    invoke-static {v0}, Lcom/android/ims/internal/ImsCallSession;->access$100(Lcom/android/ims/internal/ImsCallSession;)Lcom/android/ims/internal/ImsCallSession$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ims/internal/ImsCallSession$IImsCallSessionListenerProxy;->this$0:Lcom/android/ims/internal/ImsCallSession;

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/ims/internal/ImsCallSession$Listener;->callSessionUssdMessageReceived(Lcom/android/ims/internal/ImsCallSession;ILjava/lang/String;)V

    .line 1196
    :cond_0
    return-void
.end method
