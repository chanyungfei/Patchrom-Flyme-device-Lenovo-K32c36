.class Lcom/android/server/MountService$MountServiceHandler;
.super Landroid/os/Handler;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountServiceHandler"
.end annotation


# instance fields
.field mForceUnmounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MountService$UnmountCallBack;",
            ">;"
        }
    .end annotation
.end field

.field mUpdatingStatus:Z

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Landroid/os/Looper;)V
    .locals 1
    .param p2, "l"    # Landroid/os/Looper;

    .prologue
    .line 576
    iput-object p1, p0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    .line 577
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 573
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    .line 574
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 578
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 28
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 582
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    .line 747
    :cond_0
    :goto_0
    return-void

    .line 585
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/server/MountService$UnmountCallBack;

    .line 588
    .local v21, "ucb":Lcom/android/server/MountService$UnmountCallBack;
    const/16 v22, 0x0

    .line 589
    .local v22, "volume":Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static/range {v23 .. v23}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v24

    monitor-enter v24

    .line 590
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;
    invoke-static/range {v23 .. v23}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v23

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v23

    check-cast v0, Landroid/os/storage/StorageVolume;

    move-object/from16 v22, v0

    .line 591
    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    if-nez v22, :cond_1

    .line 593
    const-string v23, "MountService"

    const-string v24, "H_UNMOUNT_PM_UPDATE volume is not exist!"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 591
    :catchall_0
    move-exception v23

    :try_start_1
    monitor-exit v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v23

    .line 596
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v23, v0

    const-string v24, "android.intent.action.MEDIA_EJECT"

    sget-object v25, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    move-object/from16 v3, v25

    # invokes: Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 597
    const-string v23, "MountService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "ucb path="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/MountService;->mUnmountSwap:Z
    invoke-static/range {v23 .. v23}, Lcom/android/server/MountService;->access$200(Lcom/android/server/MountService;)Z

    move-result v23

    if-eqz v23, :cond_2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "/storage/sdcard1"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_2

    .line 599
    const/16 v18, 0x0

    .line 600
    .local v18, "swapVolume":Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static/range {v23 .. v23}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v24

    monitor-enter v24

    .line 601
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;
    invoke-static/range {v23 .. v23}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v23

    const-string v25, "/storage/sdcard1"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v23

    check-cast v0, Landroid/os/storage/StorageVolume;

    move-object/from16 v18, v0

    .line 602
    monitor-exit v24
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 604
    .end local v18    # "swapVolume":Landroid/os/storage/StorageVolume;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/MountService;->mShutdownCount:I
    invoke-static/range {v23 .. v23}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;)I

    move-result v23

    if-lez v23, :cond_4

    .line 605
    const-wide/16 v24, 0x1f4

    invoke-static/range {v24 .. v25}, Landroid/os/SystemClock;->sleep(J)V

    .line 611
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    move/from16 v23, v0

    if-nez v23, :cond_0

    .line 618
    const/16 v20, 0x0

    .line 620
    .local v20, "tosdcard2":Z
    const-string v23, "persist.sys.switch_storage"

    const-string v24, "none,0"

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 621
    .local v19, "switch_storage":Ljava/lang/String;
    const-string v23, ","

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 622
    .local v17, "split":[Ljava/lang/String;
    const/16 v23, 0x0

    aget-object v23, v17, v23

    const-string v24, "emmc"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 623
    const/16 v20, 0x1

    .line 631
    :goto_2
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/MountService;->access$1200()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_3

    if-eqz v20, :cond_6

    .line 632
    :cond_3
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;
    invoke-static/range {v23 .. v23}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x1

    invoke-virtual/range {v23 .. v25}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    goto/16 :goto_0

    .line 602
    .end local v17    # "split":[Ljava/lang/String;
    .end local v19    # "switch_storage":Ljava/lang/String;
    .end local v20    # "tosdcard2":Z
    .restart local v18    # "swapVolume":Landroid/os/storage/StorageVolume;
    :catchall_1
    move-exception v23

    :try_start_3
    monitor-exit v24
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v23

    .line 607
    .end local v18    # "swapVolume":Landroid/os/storage/StorageVolume;
    :cond_4
    const-wide/16 v24, 0x5dc

    invoke-static/range {v24 .. v25}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_1

    .line 625
    .restart local v17    # "split":[Ljava/lang/String;
    .restart local v19    # "switch_storage":Ljava/lang/String;
    .restart local v20    # "tosdcard2":Z
    :cond_5
    const/16 v20, 0x0

    goto :goto_2

    .line 634
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/MountService;->mUnmountPrimary:Z
    invoke-static/range {v23 .. v23}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/MountService;->finishMediaUpdate()V

    goto/16 :goto_0

    .line 654
    .end local v17    # "split":[Ljava/lang/String;
    .end local v19    # "switch_storage":Ljava/lang/String;
    .end local v20    # "tosdcard2":Z
    .end local v21    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    .end local v22    # "volume":Landroid/os/storage/StorageVolume;
    :pswitch_1
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 656
    .local v13, "size":I
    new-array v14, v13, [I

    .line 657
    .local v14, "sizeArr":[I
    const/4 v15, 0x0

    .line 659
    .local v15, "sizeArrN":I
    const-string v23, "activity"

    invoke-static/range {v23 .. v23}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityManagerService;

    .line 661
    .local v4, "ams":Lcom/android/server/am/ActivityManagerService;
    const/4 v9, 0x0

    .local v9, "i":I
    move/from16 v16, v15

    .end local v15    # "sizeArrN":I
    .local v16, "sizeArrN":I
    :goto_3
    if-ge v9, v13, :cond_e

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/MountService$UnmountCallBack;

    .line 663
    .restart local v21    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    move-object/from16 v0, v21

    iget-object v11, v0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    .line 664
    .local v11, "path":Ljava/lang/String;
    const/4 v6, 0x0

    .line 665
    .local v6, "done":Z
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/MountService$UnmountCallBack;->force:Z

    move/from16 v23, v0

    if-nez v23, :cond_8

    .line 666
    const/4 v6, 0x1

    .line 681
    :cond_7
    :goto_4
    if-nez v6, :cond_c

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    move/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_c

    .line 683
    const-string v23, "MountService"

    const-string v24, "Retrying to kill storage users again"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v23 .. v23}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v24 .. v24}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v24

    const/16 v25, 0x2

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    move/from16 v26, v0

    add-int/lit8 v27, v26, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    const-wide/16 v26, 0x1e

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move/from16 v15, v16

    .line 661
    .end local v16    # "sizeArrN":I
    .restart local v15    # "sizeArrN":I
    :goto_5
    add-int/lit8 v9, v9, 0x1

    move/from16 v16, v15

    .end local v15    # "sizeArrN":I
    .restart local v16    # "sizeArrN":I
    goto :goto_3

    .line 668
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v12

    .line 669
    .local v12, "pids":[I
    if-eqz v12, :cond_9

    array-length v0, v12

    move/from16 v23, v0

    if-nez v23, :cond_a

    .line 670
    :cond_9
    const/4 v6, 0x1

    goto :goto_4

    .line 673
    :cond_a
    const-string v23, "unmount media"

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v4, v12, v0, v1}, Lcom/android/server/am/ActivityManagerService;->killPids([ILjava/lang/String;Z)Z

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v12

    .line 676
    if-eqz v12, :cond_b

    array-length v0, v12

    move/from16 v23, v0

    if-nez v23, :cond_7

    .line 677
    :cond_b
    const/4 v6, 0x1

    goto/16 :goto_4

    .line 689
    .end local v12    # "pids":[I
    :cond_c
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    move/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_d

    .line 690
    const-string v23, "MountService"

    const-string v24, "Failed to unmount media inspite of 4 retries. Forcibly killing processes now"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_d
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "sizeArrN":I
    .restart local v15    # "sizeArrN":I
    aput v9, v14, v16

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v23 .. v23}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v24 .. v24}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v24

    const/16 v25, 0x3

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 699
    .end local v6    # "done":Z
    .end local v11    # "path":Ljava/lang/String;
    .end local v15    # "sizeArrN":I
    .end local v21    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    .restart local v16    # "sizeArrN":I
    :cond_e
    add-int/lit8 v9, v16, -0x1

    :goto_6
    if-ltz v9, :cond_0

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    aget v24, v14, v9

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 699
    add-int/lit8 v9, v9, -0x1

    goto :goto_6

    .line 706
    .end local v4    # "ams":Lcom/android/server/am/ActivityManagerService;
    .end local v9    # "i":I
    .end local v13    # "size":I
    .end local v14    # "sizeArr":[I
    .end local v16    # "sizeArrN":I
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/server/MountService$UnmountCallBack;

    .line 707
    .restart local v21    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/MountService$UnmountCallBack;->handleFinished()V

    goto/16 :goto_0

    .line 712
    .end local v21    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    :pswitch_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v23, v0

    # invokes: Lcom/android/server/MountService;->handleSystemReady()V
    invoke-static/range {v23 .. v23}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 713
    :catch_0
    move-exception v8

    .line 714
    .local v8, "ex":Ljava/lang/Exception;
    const-string v23, "MountService"

    const-string v24, "Boot-time mount exception"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 719
    .end local v8    # "ex":Ljava/lang/Exception;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v23, v0

    # invokes: Lcom/android/server/MountService;->waitForReady()V
    invoke-static/range {v23 .. v23}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;)V

    .line 720
    const-string v23, "MountService"

    const-string v24, "Running fstrim idle maintenance"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v23, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    # setter for: Lcom/android/server/MountService;->mLastMaintenance:J
    invoke-static/range {v23 .. v25}, Lcom/android/server/MountService;->access$1802(Lcom/android/server/MountService;J)J

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/MountService;->mLastMaintenanceFile:Ljava/io/File;
    invoke-static/range {v23 .. v23}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;)Ljava/io/File;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/MountService;->mLastMaintenance:J
    invoke-static/range {v24 .. v24}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;)J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/io/File;->setLastModified(J)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 733
    :goto_7
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static/range {v23 .. v23}, Lcom/android/server/MountService;->access$2000(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v23

    const-string v24, "fstrim"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string v27, "dotrim"

    aput-object v27, v25, v26

    invoke-virtual/range {v23 .. v25}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 734
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Lcom/android/server/EventLogTags;->writeFstrimStart(J)V
    :try_end_6
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_6 .. :try_end_6} :catch_2

    .line 740
    :goto_8
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Runnable;

    .line 741
    .local v5, "callback":Ljava/lang/Runnable;
    if-eqz v5, :cond_0

    .line 742
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 726
    .end local v5    # "callback":Ljava/lang/Runnable;
    :catch_1
    move-exception v7

    .line 727
    .local v7, "e":Ljava/lang/Exception;
    const-string v23, "MountService"

    const-string v24, "Unable to record last fstrim!"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 735
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v10

    .line 736
    .local v10, "ndce":Lcom/android/server/NativeDaemonConnectorException;
    const-string v23, "MountService"

    const-string v24, "Failed to run fstrim!"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 582
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
