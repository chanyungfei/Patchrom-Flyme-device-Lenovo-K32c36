.class Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;
.super Lcom/android/ims/internal/IImsRegistrationListener$Stub;
.source "ImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsRegistrationListenerProxy"
.end annotation


# instance fields
.field private mListener:Lcom/android/ims/ImsConnectionStateListener;

.field private mServiceClass:I

.field final synthetic this$0:Lcom/android/ims/ImsManager;


# direct methods
.method public constructor <init>(Lcom/android/ims/ImsManager;ILcom/android/ims/ImsConnectionStateListener;)V
    .locals 0
    .param p2, "serviceClass"    # I
    .param p3, "listener"    # Lcom/android/ims/ImsConnectionStateListener;

    .prologue
    .line 861
    iput-object p1, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->this$0:Lcom/android/ims/ImsManager;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;-><init>()V

    .line 862
    iput p2, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mServiceClass:I

    .line 863
    iput-object p3, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    .line 864
    return-void
.end method


# virtual methods
.method public isSameProxy(I)Z
    .locals 1
    .param p1, "serviceClass"    # I

    .prologue
    .line 867
    iget v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mServiceClass:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registrationConnected()V
    .locals 2

    .prologue
    .line 873
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->this$0:Lcom/android/ims/ImsManager;

    const-string v1, "registrationConnected ::"

    # invokes: Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->access$700(Lcom/android/ims/ImsManager;Ljava/lang/String;)V

    .line 876
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    invoke-virtual {v0}, Lcom/android/ims/ImsConnectionStateListener;->onImsConnected()V

    .line 879
    :cond_0
    return-void
.end method

.method public registrationDisconnected(Lcom/android/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "imsReasonInfo"    # Lcom/android/ims/ImsReasonInfo;

    .prologue
    .line 895
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->this$0:Lcom/android/ims/ImsManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registrationDisconnected :: imsReasonInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->access$700(Lcom/android/ims/ImsManager;Ljava/lang/String;)V

    .line 898
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsConnectionStateListener;->onImsDisconnected(Lcom/android/ims/ImsReasonInfo;)V

    .line 901
    :cond_0
    return-void
.end method

.method public registrationFeatureCapabilityChanged(I[I[I)V
    .locals 3
    .param p1, "serviceClass"    # I
    .param p2, "enabledFeatures"    # [I
    .param p3, "disabledFeatures"    # [I

    .prologue
    .line 938
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->this$0:Lcom/android/ims/ImsManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registrationFeatureCapabilityChanged :: serviceClass="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->access$700(Lcom/android/ims/ImsManager;Ljava/lang/String;)V

    .line 940
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/ImsConnectionStateListener;->onFeatureCapabilityChanged(I[I[I)V

    .line 944
    :cond_0
    return-void
.end method

.method public registrationProgressing()V
    .locals 2

    .prologue
    .line 884
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->this$0:Lcom/android/ims/ImsManager;

    const-string v1, "registrationProgressing ::"

    # invokes: Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->access$700(Lcom/android/ims/ImsManager;Ljava/lang/String;)V

    .line 887
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    invoke-virtual {v0}, Lcom/android/ims/ImsConnectionStateListener;->onImsProgressing()V

    .line 890
    :cond_0
    return-void
.end method

.method public registrationResumed()V
    .locals 2

    .prologue
    .line 906
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->this$0:Lcom/android/ims/ImsManager;

    const-string v1, "registrationResumed ::"

    # invokes: Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->access$700(Lcom/android/ims/ImsManager;Ljava/lang/String;)V

    .line 909
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    invoke-virtual {v0}, Lcom/android/ims/ImsConnectionStateListener;->onImsResumed()V

    .line 912
    :cond_0
    return-void
.end method

.method public registrationServiceCapabilityChanged(II)V
    .locals 3
    .param p1, "serviceClass"    # I
    .param p2, "event"    # I

    .prologue
    .line 927
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->this$0:Lcom/android/ims/ImsManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registrationServiceCapabilityChanged :: serviceClass="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->access$700(Lcom/android/ims/ImsManager;Ljava/lang/String;)V

    .line 930
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    invoke-virtual {v0}, Lcom/android/ims/ImsConnectionStateListener;->onImsConnected()V

    .line 933
    :cond_0
    return-void
.end method

.method public registrationSuspended()V
    .locals 2

    .prologue
    .line 917
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->this$0:Lcom/android/ims/ImsManager;

    const-string v1, "registrationSuspended ::"

    # invokes: Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->access$700(Lcom/android/ims/ImsManager;Ljava/lang/String;)V

    .line 920
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    invoke-virtual {v0}, Lcom/android/ims/ImsConnectionStateListener;->onImsSuspended()V

    .line 923
    :cond_0
    return-void
.end method

.method public voiceMessageCountUpdate(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 948
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->this$0:Lcom/android/ims/ImsManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "voiceMessageCountUpdate :: count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/ims/ImsManager;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->access$700(Lcom/android/ims/ImsManager;Ljava/lang/String;)V

    .line 950
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/android/ims/ImsManager$ImsRegistrationListenerProxy;->mListener:Lcom/android/ims/ImsConnectionStateListener;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsConnectionStateListener;->onVoiceMessageCountChanged(I)V

    .line 953
    :cond_0
    return-void
.end method
