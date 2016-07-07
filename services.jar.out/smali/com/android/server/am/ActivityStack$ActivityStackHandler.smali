.class final Lcom/android/server/am/ActivityStack$ActivityStackHandler;
.super Landroid/os/Handler;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ActivityStackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStack;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStack;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    .line 274
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 275
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 279
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 350
    :goto_0
    return-void

    .line 281
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 284
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity pause timeout for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v3, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v4, v3, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 286
    :try_start_0
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_0

    .line 287
    iget-object v3, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-wide v6, v2, Lcom/android/server/am/ActivityRecord;->pauseTime:J

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pausing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/android/server/am/ActivityManagerService;->logAppTooSlow(Lcom/android/server/am/ProcessRecord;JLjava/lang/String;)V

    .line 289
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lcom/android/server/am/ActivityStack;->activityPausedLocked(Landroid/os/IBinder;Z)V

    .line 290
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 293
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 294
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v4, v3, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 295
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->continueLaunchTickingLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 296
    iget-object v3, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-wide v6, v2, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "launching "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/android/server/am/ActivityManagerService;->logAppTooSlow(Lcom/android/server/am/ProcessRecord;JLjava/lang/String;)V

    .line 298
    :cond_1
    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    .line 301
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 304
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity destroy timeout for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v4, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v4, v4, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 306
    :try_start_2
    iget-object v5, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :cond_2
    const-string v6, "destroyTimeout"

    invoke-virtual {v5, v3, v6}, Lcom/android/server/am/ActivityStack;->activityDestroyedLocked(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 307
    monitor-exit v4

    goto/16 :goto_0

    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v3

    .line 310
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 313
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity stop timeout for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v3, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v4, v3, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 315
    :try_start_3
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->isInHistory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 316
    iget-object v3, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v2, v5, v6, v7}, Lcom/android/server/am/ActivityStack;->activityStoppedLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V

    .line 318
    :cond_3
    monitor-exit v4

    goto/16 :goto_0

    :catchall_3
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v3

    .line 321
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;

    .line 322
    .local v0, "args":Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;
    iget-object v3, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v4, v3, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 323
    :try_start_4
    iget-object v3, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v5, v0, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;->mOwner:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v0, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;->mReason:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/android/server/am/ActivityStack;->destroyActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 324
    monitor-exit v4

    goto/16 :goto_0

    :catchall_4
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v3

    .line 327
    .end local v0    # "args":Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;
    :pswitch_5
    iget-object v3, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v4, v3, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 328
    :try_start_5
    iget-object v3, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 329
    monitor-exit v4

    goto/16 :goto_0

    :catchall_5
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v3

    .line 333
    :pswitch_6
    const-string v3, "ActivityManager"

    const-string v4, "stop shenmiao start "

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    .line 335
    .local v1, "mChoreographer":Landroid/view/Choreographer;
    invoke-virtual {v1}, Landroid/view/Choreographer;->setValue2()V

    .line 336
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/view/Choreographer;->set3PartValue(Z)V

    .line 337
    const-string v3, "ActivityManager"

    const-string v4, "stop shenmiao end "

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 341
    .end local v1    # "mChoreographer":Landroid/view/Choreographer;
    :pswitch_7
    iget-object v3, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v4, v3, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 342
    :try_start_6
    iget-object v3, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 343
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    const-string v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Timeout waiting for cancelVisibleBehind player="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    if-eqz v2, :cond_4

    .line 345
    iget-object v3, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V

    .line 347
    :cond_4
    monitor-exit v4

    goto/16 :goto_0

    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_6
    move-exception v3

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v3

    .line 279
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
