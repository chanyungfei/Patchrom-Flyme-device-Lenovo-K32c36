.class Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;
.super Landroid/os/Handler;
.source "ImsVideoCallProviderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/ImsVideoCallProviderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;


# direct methods
.method constructor <init>(Lcom/android/ims/internal/ImsVideoCallProviderWrapper;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 116
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 157
    :goto_0
    return-void

    .line 118
    :pswitch_0
    iget-object v7, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/telecom/VideoProfile;

    invoke-virtual {v7, v6}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    goto :goto_0

    .line 121
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 123
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 124
    .local v4, "status":I
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/VideoProfile;

    .line 125
    .local v2, "requestProfile":Landroid/telecom/VideoProfile;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/VideoProfile;

    .line 127
    .local v3, "responseProfile":Landroid/telecom/VideoProfile;
    iget-object v6, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-virtual {v6, v4, v2, v3}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .end local v2    # "requestProfile":Landroid/telecom/VideoProfile;
    .end local v3    # "responseProfile":Landroid/telecom/VideoProfile;
    .end local v4    # "status":I
    :catchall_0
    move-exception v6

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v6

    .line 133
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_2
    iget-object v7, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 136
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 138
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 139
    .local v5, "width":I
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 140
    .local v1, "height":I
    iget-object v6, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    invoke-virtual {v6, v5, v1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->changePeerDimensions(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 142
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .end local v1    # "height":I
    .end local v5    # "width":I
    :catchall_1
    move-exception v6

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v6

    .line 146
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_4
    iget-object v6, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->changeCallDataUsage(I)V

    goto :goto_0

    .line 149
    :pswitch_5
    iget-object v7, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/telecom/CameraCapabilities;

    invoke-virtual {v7, v6}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->changeCameraCapabilities(Landroid/telecom/CameraCapabilities;)V

    goto :goto_0

    .line 152
    :pswitch_6
    iget-object v6, p0, Lcom/android/ims/internal/ImsVideoCallProviderWrapper$2;->this$0:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->changeVideoQuality(I)V

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
