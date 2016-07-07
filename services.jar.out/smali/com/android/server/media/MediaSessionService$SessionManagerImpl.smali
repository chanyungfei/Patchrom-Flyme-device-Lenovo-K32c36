.class Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
.super Landroid/media/session/ISessionManager$Stub;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SessionManagerImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;
    }
.end annotation


# static fields
.field private static final EXTRA_WAKELOCK_ACQUIRED:Ljava/lang/String; = "android.media.AudioService.WAKELOCK_ACQUIRED"

.field private static final WAKELOCK_RELEASE_ON_FINISHED:I = 0x7bc


# instance fields
.field private HOOK_DEBOUNCE_DELAY_MILLIS:I

.field private mHookKeyCode:I

.field private mHookKeyDownCount:I

.field mKeyEventDone:Landroid/content/BroadcastReceiver;

.field private mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

.field private mNeedWakeLock:Z

.field private final mSendHookKeyEvent:Ljava/lang/Runnable;

.field private mSessionRecord:Lcom/android/server/media/MediaSessionRecord;

.field private mVoiceButtonDown:Z

.field private mVoiceButtonHandled:Z

.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionService;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 610
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Landroid/media/session/ISessionManager$Stub;-><init>()V

    .line 615
    iput-boolean v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    .line 616
    iput-boolean v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    .line 619
    const/16 v0, 0x190

    iput v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->HOOK_DEBOUNCE_DELAY_MILLIS:I

    .line 620
    iput v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mHookKeyDownCount:I

    .line 623
    iput v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mHookKeyCode:I

    .line 1148
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$3000(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    .line 1218
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    .line 1267
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mSendHookKeyEvent:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$3202(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .param p1, "x1"    # I

    .prologue
    .line 610
    iput p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mHookKeyDownCount:I

    return p1
.end method

.method static synthetic access$3302(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 610
    iput-boolean p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .prologue
    .line 610
    iget v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mHookKeyCode:I

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .prologue
    .line 610
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mNeedWakeLock:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;)Lcom/android/server/media/MediaSessionRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mSessionRecord:Lcom/android/server/media/MediaSessionRecord;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .param p1, "x1"    # Landroid/view/KeyEvent;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 610
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V

    return-void
.end method

.method private delaySendHookKeyEvent()V
    .locals 4

    .prologue
    .line 1259
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->removeSendHookKeyEvent()V

    .line 1260
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$3000(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mSendHookKeyEvent:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->HOOK_DEBOUNCE_DELAY_MILLIS:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1261
    return-void
.end method

.method private dispatchAdjustVolumeLocked(IIILcom/android/server/media/MediaSessionRecord;)V
    .locals 12
    .param p1, "suggestedStream"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "session"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 854
    # getter for: Lcom/android/server/media/MediaSessionService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->access$2400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 855
    if-nez p4, :cond_4

    const/4 v6, 0x0

    .line 856
    .local v6, "description":Ljava/lang/String;
    :goto_0
    const-string v0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adjusting session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", suggestedStream="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    .end local v6    # "description":Ljava/lang/String;
    :cond_0
    const/4 v11, 0x0

    .line 861
    .local v11, "preferSuggestedStream":Z
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isValidLocalStreamType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 863
    const/4 v11, 0x1

    .line 865
    :cond_1
    if-eqz p4, :cond_2

    if-eqz v11, :cond_b

    .line 866
    :cond_2
    and-int/lit16 v0, p3, 0x200

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_5

    .line 868
    # getter for: Lcom/android/server/media/MediaSessionService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->access$2400()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 869
    const-string v0, "MediaSessionService"

    const-string v1, "No active session to adjust, skipping media only volume event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_3
    :goto_1
    return-void

    .line 855
    .end local v11    # "preferSuggestedStream":Z
    :cond_4
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/media/MediaSessionRecord;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 874
    .restart local v11    # "preferSuggestedStream":Z
    :cond_5
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v10

    .line 875
    .local v10, "packageName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mUseMasterVolume:Z
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$2500(Lcom/android/server/media/MediaSessionService;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 876
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mAudioService:Landroid/media/IAudioService;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$2600(Lcom/android/server/media/MediaSessionService;)Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->isMasterMute()Z

    move-result v8

    .line 877
    .local v8, "isMasterMute":Z
    const/16 v0, -0x63

    if-ne p2, v0, :cond_7

    .line 878
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mAudioService:Landroid/media/IAudioService;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$2600(Lcom/android/server/media/MediaSessionService;)Landroid/media/IAudioService;

    move-result-object v1

    if-nez v8, :cond_6

    const/4 v0, 0x1

    :goto_2
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    iget-object v2, v2, Lcom/android/server/media/MediaSessionService;->mICallback:Landroid/os/IBinder;

    invoke-interface {v1, v0, p3, v10, v2}, Landroid/media/IAudioService;->setMasterMute(ZILjava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 901
    .end local v8    # "isMasterMute":Z
    .end local v10    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 902
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "MediaSessionService"

    const-string v1, "Error adjusting default volume."

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 878
    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v8    # "isMasterMute":Z
    .restart local v10    # "packageName":Ljava/lang/String;
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 880
    :cond_7
    :try_start_1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mAudioService:Landroid/media/IAudioService;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$2600(Lcom/android/server/media/MediaSessionService;)Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p2, p3, v10}, Landroid/media/IAudioService;->adjustMasterVolume(IILjava/lang/String;)V

    .line 883
    if-eqz v8, :cond_3

    if-eqz p2, :cond_3

    .line 884
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mAudioService:Landroid/media/IAudioService;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$2600(Lcom/android/server/media/MediaSessionService;)Landroid/media/IAudioService;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    iget-object v2, v2, Lcom/android/server/media/MediaSessionService;->mICallback:Landroid/os/IBinder;

    invoke-interface {v0, v1, p3, v10, v2}, Landroid/media/IAudioService;->setMasterMute(ZILjava/lang/String;Landroid/os/IBinder;)V

    goto :goto_1

    .line 888
    .end local v8    # "isMasterMute":Z
    :cond_8
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mAudioService:Landroid/media/IAudioService;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$2600(Lcom/android/server/media/MediaSessionService;)Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->isStreamMute(I)Z

    move-result v9

    .line 889
    .local v9, "isStreamMute":Z
    const/16 v0, -0x63

    if-ne p2, v0, :cond_a

    .line 890
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$2700(Lcom/android/server/media/MediaSessionService;)Landroid/media/AudioManager;

    move-result-object v1

    if-nez v9, :cond_9

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v1, p1, v0}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    goto :goto_1

    :cond_9
    const/4 v0, 0x0

    goto :goto_3

    .line 892
    :cond_a
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mAudioService:Landroid/media/IAudioService;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$2600(Lcom/android/server/media/MediaSessionService;)Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p2, p1, p3, v10}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;)V

    .line 896
    if-eqz v9, :cond_3

    if-eqz p2, :cond_3

    .line 897
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$2700(Lcom/android/server/media/MediaSessionService;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioManager;->setStreamMute(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 905
    .end local v9    # "isStreamMute":Z
    .end local v10    # "packageName":Ljava/lang/String;
    :cond_b
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p4

    move v1, p2

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/media/MediaSessionRecord;->adjustVolume(IILjava/lang/String;IZ)V

    goto/16 :goto_1
.end method

.method private dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V
    .locals 18
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z
    .param p3, "session"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 995
    if-eqz p3, :cond_3

    .line 996
    # getter for: Lcom/android/server/media/MediaSessionService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->access$2400()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 997
    const-string v2, "MediaSessionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending media key to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/media/MediaSessionRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_0
    if-eqz p2, :cond_1

    .line 1000
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->aquireWakeLockLocked()V

    .line 1004
    :cond_1
    if-eqz p2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    # getter for: Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->mLastTimeoutId:I
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->access$2800(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)I

    move-result v2

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->sendMediaButton(Landroid/view/KeyEvent;ILandroid/os/ResultReceiver;)V

    .line 1046
    :goto_1
    return-void

    .line 1004
    :cond_2
    const/4 v2, -0x1

    goto :goto_0

    .line 1009
    :cond_3
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v17

    .line 1010
    .local v17, "userId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/media/MediaSessionService$UserRecord;

    .line 1011
    .local v16, "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    if-eqz v16, :cond_7

    # getter for: Lcom/android/server/media/MediaSessionService$UserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;
    invoke-static/range {v16 .. v16}, Lcom/android/server/media/MediaSessionService$UserRecord;->access$800(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 1012
    # getter for: Lcom/android/server/media/MediaSessionService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->access$2400()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1013
    const-string v2, "MediaSessionService"

    const-string v3, "Sending media key to last known PendingIntent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    :cond_4
    if-eqz p2, :cond_5

    .line 1016
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->aquireWakeLockLocked()V

    .line 1018
    :cond_5
    new-instance v5, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1019
    .local v5, "mediaButtonIntent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p1

    invoke-virtual {v5, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1021
    :try_start_0
    # getter for: Lcom/android/server/media/MediaSessionService$UserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;
    invoke-static/range {v16 .. v16}, Lcom/android/server/media/MediaSessionService$UserRecord;->access$800(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v3}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz p2, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    # getter for: Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->mLastTimeoutId:I
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->access$2800(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)I

    move-result v4

    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1024
    :catch_0
    move-exception v15

    .line 1025
    .local v15, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v2, "MediaSessionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error sending key event to media button receiver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/server/media/MediaSessionService$UserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;
    invoke-static/range {v16 .. v16}, Lcom/android/server/media/MediaSessionService$UserRecord;->access$800(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1021
    .end local v15    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_6
    const/4 v4, -0x1

    goto :goto_2

    .line 1029
    .end local v5    # "mediaButtonIntent":Landroid/content/Intent;
    :cond_7
    # getter for: Lcom/android/server/media/MediaSessionService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/media/MediaSessionService;->access$2400()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1030
    const-string v2, "MediaSessionService"

    const-string v3, "Sending media key ordered broadcast"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    :cond_8
    if-eqz p2, :cond_9

    .line 1033
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$2900(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1036
    :cond_9
    new-instance v7, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    const/4 v3, 0x0

    invoke-direct {v7, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1037
    .local v7, "keyIntent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.KEY_EVENT"

    move-object/from16 v0, p1

    invoke-virtual {v7, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1038
    if-eqz p2, :cond_a

    .line 1039
    const-string v2, "android.media.AudioService.WAKELOCK_ACQUIRED"

    const/16 v3, 0x7bc

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1042
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$3000(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v11

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v6 .. v14}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1
.end method

.method private handleVoiceKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V
    .locals 11
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z
    .param p3, "session"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    const/16 v10, 0x10c

    const/4 v9, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 912
    if-eqz p3, :cond_1

    const/high16 v6, 0x10000

    invoke-virtual {p3, v6}, Lcom/android/server/media/MediaSessionRecord;->hasFlag(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 914
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V

    .line 991
    :cond_0
    :goto_0
    return-void

    .line 917
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 918
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v6

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_3

    move v2, v4

    .line 920
    .local v2, "isLongPress":Z
    :goto_1
    const/4 v3, 0x0

    .line 924
    .local v3, "sessionState":I
    if-eqz p3, :cond_2

    .line 926
    :try_start_0
    invoke-virtual {p3}, Lcom/android/server/media/MediaSessionRecord;->getControllerBinder()Landroid/media/session/ISessionController;

    move-result-object v6

    invoke-interface {v6}, Landroid/media/session/ISessionController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    .line 927
    const-string v6, "MediaSessionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FM or music is playing: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " session.getTag() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Lcom/android/server/media/MediaSessionRecord;->getTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 935
    :cond_2
    :goto_2
    if-nez v0, :cond_9

    .line 936
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_4

    .line 937
    iput-boolean v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    .line 938
    iput-boolean v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    goto :goto_0

    .end local v2    # "isLongPress":Z
    .end local v3    # "sessionState":I
    :cond_3
    move v2, v5

    .line 918
    goto :goto_1

    .line 939
    .restart local v2    # "isLongPress":Z
    .restart local v3    # "sessionState":I
    :cond_4
    iget-boolean v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    if-nez v6, :cond_0

    if-eqz v2, :cond_0

    .line 940
    iput-boolean v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    .line 942
    if-eqz p3, :cond_6

    if-ne v3, v9, :cond_6

    invoke-virtual {p3}, Lcom/android/server/media/MediaSessionRecord;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v6, "MediaSessionHelper-com.lenovo.music"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p3}, Lcom/android/server/media/MediaSessionRecord;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v6, "qtradio"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 948
    :cond_5
    const-string v4, "MediaSessionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "session.getTag() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Lcom/android/server/media/MediaSessionRecord;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    invoke-virtual {p3}, Lcom/android/server/media/MediaSessionRecord;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v6, "MediaSessionHelper-com.lenovo.music"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 952
    new-instance v4, Landroid/view/KeyEvent;

    invoke-direct {v4, v5, v10}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {p0, v4, p2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->sendSimulatedMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_0

    .line 955
    :cond_6
    if-eqz p3, :cond_8

    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$2700(Lcom/android/server/media/MediaSessionService;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p3}, Lcom/android/server/media/MediaSessionRecord;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v6, "com.cyanogenmod.eleven"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p3}, Lcom/android/server/media/MediaSessionRecord;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v6, "com.wingtech.fmradio"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p3}, Lcom/android/server/media/MediaSessionRecord;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Google Play"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 959
    :cond_7
    new-instance v4, Landroid/view/KeyEvent;

    invoke-direct {v4, v5, v10}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {p0, v4, p2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->sendSimulatedMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_0

    .line 963
    :cond_8
    invoke-direct {p0, p2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->startVoiceInput(Z)V

    goto/16 :goto_0

    .line 967
    :cond_9
    if-ne v0, v4, :cond_0

    .line 968
    iget-boolean v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    if-eqz v4, :cond_0

    .line 969
    iput-boolean v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    .line 970
    iget-boolean v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 972
    if-eqz p3, :cond_a

    if-ne v3, v9, :cond_a

    invoke-virtual {p3}, Lcom/android/server/media/MediaSessionRecord;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v6, "qtradio"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 978
    invoke-direct {p0, p2, p3}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->sendHookKeyEvent(ZLcom/android/server/media/MediaSessionRecord;)V

    goto/16 :goto_0

    .line 983
    :cond_a
    invoke-static {p1, v5}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 984
    .local v1, "downEvent":Landroid/view/KeyEvent;
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V

    .line 985
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V

    goto/16 :goto_0

    .line 930
    .end local v1    # "downEvent":Landroid/view/KeyEvent;
    :catch_0
    move-exception v6

    goto/16 :goto_2
.end method

.method private isUserSetupComplete()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1138
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user_setup_complete"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isValidLocalStreamType(I)Z
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 1144
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVoiceKey(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 1134
    const/16 v0, 0x4f

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeSendHookKeyEvent()V
    .locals 2

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$3000(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mSendHookKeyEvent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionService$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1265
    return-void
.end method

.method private sendHookKeyEvent(ZLcom/android/server/media/MediaSessionRecord;)V
    .locals 3
    .param p1, "needWakeLock"    # Z
    .param p2, "session"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    const/4 v2, 0x0

    .line 1239
    iget v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mHookKeyDownCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mHookKeyDownCount:I

    .line 1240
    iput-object p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mSessionRecord:Lcom/android/server/media/MediaSessionRecord;

    .line 1241
    iput-boolean p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mNeedWakeLock:Z

    .line 1242
    iget v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mHookKeyDownCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1243
    const/16 v0, 0x55

    iput v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mHookKeyCode:I

    .line 1244
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->delaySendHookKeyEvent()V

    .line 1256
    :goto_0
    return-void

    .line 1245
    :cond_0
    iget v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mHookKeyDownCount:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1246
    const/16 v0, 0x57

    iput v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mHookKeyCode:I

    .line 1247
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->delaySendHookKeyEvent()V

    goto :goto_0

    .line 1248
    :cond_1
    iget v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mHookKeyDownCount:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1249
    const/16 v0, 0x58

    iput v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mHookKeyCode:I

    .line 1250
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->delaySendHookKeyEvent()V

    .line 1251
    iput v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mHookKeyDownCount:I

    goto :goto_0

    .line 1253
    :cond_2
    iput v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mHookKeyDownCount:I

    .line 1254
    const-string v0, "MediaSessionService"

    const-string v1, "Invalid key..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendSimulatedMediaButtonEvent(Landroid/view/KeyEvent;Z)V
    .locals 2
    .param p1, "originalKeyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    .line 1286
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 1288
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {p0, v0, p2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 1291
    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 1293
    invoke-virtual {p0, v0, p2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 1294
    return-void
.end method

.method private startVoiceInput(Z)V
    .locals 11
    .param p1, "needWakeLock"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1049
    const/4 v5, 0x0

    .line 1055
    .local v5, "voiceIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v6}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v9, "power"

    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 1056
    .local v4, "pm":Landroid/os/PowerManager;
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService;->access$3100(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService;->access$3100(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v6

    if-eqz v6, :cond_3

    move v2, v7

    .line 1057
    .local v2, "isLocked":Z
    :goto_0
    if-nez v2, :cond_4

    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1066
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "voiceIntent":Landroid/content/Intent;
    const-string v6, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1067
    .restart local v5    # "voiceIntent":Landroid/content/Intent;
    const-string v6, "com.lenovo.menu_assistant"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1068
    const-string v6, "MediaSessionService"

    const-string v9, "voice-based interactions: about to use ACTION_VOICE_COMMAND"

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    :goto_1
    if-eqz p1, :cond_0

    .line 1091
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService;->access$2900(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1094
    :cond_0
    if-eqz v5, :cond_1

    .line 1095
    const/high16 v6, 0x10800000

    :try_start_0
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1099
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v6}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1127
    :cond_1
    if-eqz p1, :cond_2

    .line 1128
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService;->access$2900(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1131
    :cond_2
    :goto_2
    return-void

    .end local v2    # "isLocked":Z
    :cond_3
    move v2, v8

    .line 1056
    goto :goto_0

    .line 1080
    .restart local v2    # "isLocked":Z
    :cond_4
    new-instance v5, Landroid/content/Intent;

    .end local v5    # "voiceIntent":Landroid/content/Intent;
    const-string v6, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1081
    .restart local v5    # "voiceIntent":Landroid/content/Intent;
    const-string v6, "com.lenovo.menu_assistant"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1082
    const-string v6, "MediaSessionService"

    const-string v9, "voice-based interactions: about to use ACTION_VOICE_COMMAND"

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    const-string v9, "android.speech.extras.EXTRA_SECURE"

    if-eqz v2, :cond_5

    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService;->access$3100(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v7

    :goto_3
    invoke-virtual {v5, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    :cond_5
    move v6, v8

    goto :goto_3

    .line 1101
    :catch_0
    move-exception v0

    .line 1102
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :try_start_1
    const-string v6, "MediaSessionService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No activity for search: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1107
    :try_start_2
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.speech.action.WEB_SEARCH"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1108
    .local v3, "otherVoiceIntent":Landroid/content/Intent;
    if-nez v2, :cond_6

    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    if-nez v6, :cond_7

    .line 1110
    :cond_6
    const-string v6, "android.speech.extras.EXTRA_SECURE"

    if-eqz v2, :cond_9

    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v9}, Lcom/android/server/media/MediaSessionService;->access$3100(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v9

    if-eqz v9, :cond_9

    :goto_4
    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1114
    :cond_7
    if-eqz v3, :cond_8

    .line 1116
    const/high16 v6, 0x10800000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1119
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v6}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1127
    .end local v3    # "otherVoiceIntent":Landroid/content/Intent;
    :cond_8
    :goto_5
    if-eqz p1, :cond_2

    .line 1128
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService;->access$2900(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_2

    .restart local v3    # "otherVoiceIntent":Landroid/content/Intent;
    :cond_9
    move v7, v8

    .line 1110
    goto :goto_4

    .line 1121
    .end local v3    # "otherVoiceIntent":Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 1122
    .local v1, "e1":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "MediaSessionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can\'t start otherVoice input: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 1127
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "e1":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz p1, :cond_a

    .line 1128
    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mMediaEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v7}, Lcom/android/server/media/MediaSessionService;->access$2900(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_a
    throw v6
.end method

.method private verifySessionsRequest(Landroid/content/ComponentName;III)I
    .locals 8
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .prologue
    const/4 v3, 0x1

    .line 835
    const/4 v6, 0x0

    .line 836
    .local v6, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 839
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 840
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # invokes: Lcom/android/server/media/MediaSessionService;->enforcePackageName(Ljava/lang/String;I)V
    invoke-static {v0, v6, p4}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V

    .line 844
    :cond_0
    const-string v5, "getSessions"

    move v0, p3

    move v1, p4

    move v2, p2

    move v4, v3

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 848
    .local v7, "resolvedUserId":I
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # invokes: Lcom/android/server/media/MediaSessionService;->enforceMediaPermissions(Landroid/content/ComponentName;III)V
    invoke-static {v0, p1, p3, p4, v7}, Lcom/android/server/media/MediaSessionService;->access$2300(Lcom/android/server/media/MediaSessionService;Landroid/content/ComponentName;III)V

    .line 849
    return v7
.end method


# virtual methods
.method public addSessionsListener(Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;I)V
    .locals 12
    .param p1, "listener"    # Landroid/media/session/IActiveSessionsListener;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 672
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 673
    .local v5, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 674
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 677
    .local v10, "token":J
    :try_start_0
    invoke-direct {p0, p2, p3, v5, v6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->verifySessionsRequest(Landroid/content/ComponentName;III)I

    move-result v4

    .line 678
    .local v4, "resolvedUserId":I
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1000(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 679
    :try_start_1
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # invokes: Lcom/android/server/media/MediaSessionService;->findIndexOfSessionsListenerLocked(Landroid/media/session/IActiveSessionsListener;)I
    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I

    move-result v8

    .line 680
    .local v8, "index":I
    const/4 v1, -0x1

    if-eq v8, v1, :cond_0

    .line 681
    const-string v1, "MediaSessionService"

    const-string v2, "ActiveSessionsListener is already added, ignoring"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 695
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 697
    :goto_0
    return-void

    .line 684
    :cond_0
    :try_start_2
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;-><init>(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 687
    .local v0, "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_start_3
    invoke-interface {p1}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 692
    :try_start_4
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1100(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 695
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 688
    :catch_0
    move-exception v7

    .line 689
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v1, "MediaSessionService"

    const-string v2, "ActiveSessionsListener is dead, ignoring it"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 690
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 695
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 693
    .end local v0    # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v8    # "index":I
    :catchall_0
    move-exception v1

    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 695
    .end local v4    # "resolvedUserId":I
    :catchall_1
    move-exception v1

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public createSession(Ljava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;I)Landroid/media/session/ISession;
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/media/session/ISessionCallback;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 629
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 630
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 631
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 633
    .local v10, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # invokes: Lcom/android/server/media/MediaSessionService;->enforcePackageName(Ljava/lang/String;I)V
    invoke-static {v2, p1, v1}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V

    .line 634
    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "createSession"

    move/from16 v2, p4

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 636
    .local v5, "resolvedUserId":I
    if-nez p2, :cond_0

    .line 637
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Controller callback cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    .end local v5    # "resolvedUserId":I
    :catchall_0
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 639
    .restart local v5    # "resolvedUserId":I
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    move v3, v0

    move v4, v1

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    # invokes: Lcom/android/server/media/MediaSessionService;->createSessionInternal(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;)Lcom/android/server/media/MediaSessionRecord;
    invoke-static/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService;->access$1500(Lcom/android/server/media/MediaSessionService;IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getSessionBinder()Landroid/media/session/ISession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 642
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2
.end method

.method public dispatchAdjustVolume(III)V
    .locals 8
    .param p1, "suggestedStream"    # I
    .param p2, "delta"    # I
    .param p3, "flags"    # I

    .prologue
    .line 769
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 770
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 771
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 773
    .local v2, "token":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->access$1000(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 774
    :try_start_1
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->access$1600(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mCurrentUserId:I
    invoke-static {v7}, Lcom/android/server/media/MediaSessionService;->access$1800(Lcom/android/server/media/MediaSessionService;)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/server/media/MediaSessionStack;->getDefaultVolumeSession(I)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v1

    .line 776
    .local v1, "session":Lcom/android/server/media/MediaSessionRecord;
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(IIILcom/android/server/media/MediaSessionRecord;)V

    .line 777
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 779
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 781
    return-void

    .line 777
    .end local v1    # "session":Lcom/android/server/media/MediaSessionRecord;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 779
    :catchall_1
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 11
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;
    .param p2, "needWakeLock"    # Z

    .prologue
    .line 727
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-static {v7}, Landroid/view/KeyEvent;->isMediaKey(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 728
    :cond_0
    const-string v7, "MediaSessionService"

    const-string v8, "Attempted to dispatch null or non-media key event."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :goto_0
    return-void

    .line 732
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 733
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 734
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 736
    .local v2, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isUserSetupComplete()Z

    move-result v7

    if-nez v7, :cond_2

    .line 739
    const-string v7, "MediaSessionService"

    const-string v8, "Not dispatching media key event because user setup is in progress."

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 763
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 744
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/media/MediaSessionService;->access$1000(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 747
    :try_start_2
    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;
    invoke-static {v7}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mCurrentUserId:I
    invoke-static {v9}, Lcom/android/server/media/MediaSessionService;->access$1800(Lcom/android/server/media/MediaSessionService;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/media/MediaSessionService$UserRecord;

    .line 748
    .local v6, "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    if-nez v6, :cond_3

    .line 749
    const-string v7, "MediaSessionService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid UserRecord for current user : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mCurrentUserId:I
    invoke-static {v10}, Lcom/android/server/media/MediaSessionService;->access$1800(Lcom/android/server/media/MediaSessionService;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 763
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 753
    :cond_3
    :try_start_3
    # getter for: Lcom/android/server/media/MediaSessionService$UserRecord;->mLastMediaButtonReceiver:Landroid/app/PendingIntent;
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$UserRecord;->access$800(Lcom/android/server/media/MediaSessionService$UserRecord;)Landroid/app/PendingIntent;

    move-result-object v7

    if-nez v7, :cond_4

    const/4 v5, 0x1

    .line 754
    .local v5, "useNotPlayingSessions":Z
    :goto_1
    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;
    invoke-static {v7}, Lcom/android/server/media/MediaSessionService;->access$1600(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mCurrentUserId:I
    invoke-static {v9}, Lcom/android/server/media/MediaSessionService;->access$1800(Lcom/android/server/media/MediaSessionService;)I

    move-result v9

    invoke-virtual {v7, v9, v5}, Lcom/android/server/media/MediaSessionStack;->getDefaultMediaButtonSession(IZ)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v1

    .line 756
    .local v1, "session":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isVoiceKey(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 757
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->handleVoiceKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V

    .line 761
    :goto_2
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 763
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 753
    .end local v1    # "session":Lcom/android/server/media/MediaSessionRecord;
    .end local v5    # "useNotPlayingSessions":Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 759
    .restart local v1    # "session":Lcom/android/server/media/MediaSessionRecord;
    .restart local v5    # "useNotPlayingSessions":Z
    :cond_5
    :try_start_4
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V

    goto :goto_2

    .line 761
    .end local v1    # "session":Lcom/android/server/media/MediaSessionRecord;
    .end local v5    # "useNotPlayingSessions":Z
    .end local v6    # "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 763
    :catchall_1
    move-exception v7

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 803
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v3}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 805
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump MediaSessionService from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 831
    :goto_0
    return-void

    .line 811
    :cond_0
    const-string v3, "MEDIA SESSION SERVICE (dumpsys media_session)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 812
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 814
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$1000(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 815
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->access$1100(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " sessions listeners."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 816
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mAllSessions:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$2200(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 817
    .local v0, "count":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " Sessions:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 818
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 819
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mAllSessions:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$2200(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord;

    const-string v5, ""

    invoke-virtual {v3, p2, v5}, Lcom/android/server/media/MediaSessionRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 820
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 818
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 822
    :cond_1
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$1600(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, p2, v5}, Lcom/android/server/media/MediaSessionStack;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 824
    const-string v3, "User Records:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 825
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 826
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    .line 827
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mUserRecords:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionService$UserRecord;

    .line 828
    .local v2, "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    if-eqz v2, :cond_2

    const-string v3, ""

    invoke-virtual {v2, p2, v3}, Lcom/android/server/media/MediaSessionService$UserRecord;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 826
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 830
    .end local v2    # "user":Lcom/android/server/media/MediaSessionService$UserRecord;
    :cond_3
    monitor-exit v4

    goto/16 :goto_0

    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getSessions(Landroid/content/ComponentName;I)Ljava/util/List;
    .locals 11
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 648
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 649
    .local v2, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 650
    .local v8, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 653
    .local v6, "token":J
    :try_start_0
    invoke-direct {p0, p1, p2, v2, v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->verifySessionsRequest(Landroid/content/ComponentName;III)I

    move-result v4

    .line 654
    .local v4, "resolvedUserId":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 655
    .local v0, "binders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/server/media/MediaSessionService;->access$1000(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 656
    :try_start_1
    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;
    invoke-static {v9}, Lcom/android/server/media/MediaSessionService;->access$1600(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/android/server/media/MediaSessionStack;->getActiveSessions(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 658
    .local v3, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 659
    .local v5, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 660
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v9}, Lcom/android/server/media/MediaSessionRecord;->getControllerBinder()Landroid/media/session/ISessionController;

    move-result-object v9

    invoke-interface {v9}, Landroid/media/session/ISessionController;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 662
    :cond_0
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 665
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    .line 662
    .end local v1    # "i":I
    .end local v3    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    .end local v5    # "size":I
    :catchall_0
    move-exception v9

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 665
    .end local v0    # "binders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    .end local v4    # "resolvedUserId":I
    :catchall_1
    move-exception v9

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9
.end method

.method public isGlobalPriorityActive()Z
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1600(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionStack;->isGlobalPriorityActive()Z

    move-result v0

    return v0
.end method

.method public removeSessionsListener(Landroid/media/session/IActiveSessionsListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/media/session/IActiveSessionsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 702
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1000(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 703
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # invokes: Lcom/android/server/media/MediaSessionService;->findIndexOfSessionsListenerLocked(Landroid/media/session/IActiveSessionsListener;)I
    invoke-static {v2, p1}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I

    move-result v0

    .line 704
    .local v0, "index":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 705
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1100(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    .local v1, "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_start_1
    # getter for: Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->mListener:Landroid/media/session/IActiveSessionsListener;
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$600(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/media/session/IActiveSessionsListener;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 712
    .end local v1    # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 713
    return-void

    .line 712
    .end local v0    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 708
    .restart local v0    # "index":I
    .restart local v1    # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setRemoteVolumeController(Landroid/media/IRemoteVolumeController;)V
    .locals 6
    .param p1, "rvc"    # Landroid/media/IRemoteVolumeController;

    .prologue
    .line 785
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 786
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 787
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 789
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    const-string v5, "listen for volume changes"

    # invokes: Lcom/android/server/media/MediaSessionService;->enforceStatusBarPermission(Ljava/lang/String;II)V
    invoke-static {v4, v5, v0, v1}, Lcom/android/server/media/MediaSessionService;->access$2000(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;II)V

    .line 790
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # setter for: Lcom/android/server/media/MediaSessionService;->mRvc:Landroid/media/IRemoteVolumeController;
    invoke-static {v4, p1}, Lcom/android/server/media/MediaSessionService;->access$2102(Lcom/android/server/media/MediaSessionService;Landroid/media/IRemoteVolumeController;)Landroid/media/IRemoteVolumeController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 792
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 794
    return-void

    .line 792
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method
