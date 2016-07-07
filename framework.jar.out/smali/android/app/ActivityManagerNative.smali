.class public abstract Landroid/app/ActivityManagerNative;
.super Landroid/os/Binder;
.source "ActivityManagerNative.java"

# interfaces
.implements Landroid/app/IActivityManager;


# static fields
.field private static final gDefault:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Landroid/app/IActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field static sSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 2439
    new-instance v0, Landroid/app/ActivityManagerNative$1;

    invoke-direct {v0}, Landroid/app/ActivityManagerNative$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 117
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/ActivityManagerNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 66
    if-nez p0, :cond_1

    .line 67
    const/4 v0, 0x0

    .line 75
    :cond_0
    :goto_0
    return-object v0

    .line 69
    :cond_1
    const-string v1, "android.app.IActivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    .line 71
    .local v0, "in":Landroid/app/IActivityManager;
    if-nez v0, :cond_0

    .line 75
    new-instance v0, Landroid/app/ActivityManagerProxy;

    .end local v0    # "in":Landroid/app/IActivityManager;
    invoke-direct {v0, p0}, Landroid/app/ActivityManagerProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public static broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 13
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 102
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v2, p0

    move v12, p2

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getDefault()Landroid/app/IActivityManager;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    return-object v0
.end method

.method public static isSystemReady()Z
    .locals 1

    .prologue
    .line 89
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    if-nez v0, :cond_0

    .line 90
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->testIsSystemReady()Z

    move-result v0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 92
    :cond_0
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    return v0
.end method

.method public static noteWakeupAlarm(Landroid/app/PendingIntent;ILjava/lang/String;)V
    .locals 2
    .param p0, "ps"    # Landroid/app/PendingIntent;
    .param p1, "sourceUid"    # I
    .param p2, "sourcePkg"    # Ljava/lang/String;

    .prologue
    .line 111
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/app/IActivityManager;->noteWakeupAlarm(Landroid/content/IIntentSender;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 2436
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 263
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 123
    move/from16 v0, p1

    sparse-switch v0, :sswitch_data_0

    .line 2432
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 126
    :sswitch_0
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/lenovo/datamining/avatar/system/IAppExceptionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/datamining/avatar/system/IAppExceptionListener;

    move-result-object v207

    .line 131
    .local v207, "observer":Lcom/lenovo/datamining/avatar/system/IAppExceptionListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v207

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerAppExceptionListener(Lcom/lenovo/datamining/avatar/system/IAppExceptionListener;)V

    .line 132
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    const/4 v6, 0x1

    goto :goto_0

    .line 138
    .end local v207    # "observer":Lcom/lenovo/datamining/avatar/system/IAppExceptionListener;
    :sswitch_1
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 140
    .local v150, "b":Landroid/os/IBinder;
    invoke-static/range {v150 .. v150}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 141
    .local v7, "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 142
    .local v8, "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 143
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 144
    .local v10, "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 145
    .local v11, "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 146
    .local v12, "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 147
    .local v13, "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 148
    .local v14, "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProfilerInfo;

    move-object v15, v6

    .line 150
    .local v15, "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .local v16, "options":Landroid/os/Bundle;
    :goto_2
    move-object/from16 v6, p0

    .line 152
    invoke-virtual/range {v6 .. v16}, Landroid/app/ActivityManagerNative;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v229

    .line 154
    .local v229, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    move-object/from16 v0, p3

    move/from16 v1, v229

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 148
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v229    # "result":I
    :cond_0
    const/4 v15, 0x0

    goto :goto_1

    .line 150
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_1
    const/16 v16, 0x0

    goto :goto_2

    .line 161
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v150    # "b":Landroid/os/IBinder;
    :sswitch_2
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 163
    .restart local v150    # "b":Landroid/os/IBinder;
    invoke-static/range {v150 .. v150}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 164
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 165
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 166
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 167
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 168
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 169
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 170
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 171
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProfilerInfo;

    move-object v15, v6

    .line 173
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 175
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .local v17, "userId":I
    move-object/from16 v6, p0

    .line 176
    invoke-virtual/range {v6 .. v17}, Landroid/app/ActivityManagerNative;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v229

    .line 178
    .restart local v229    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    move-object/from16 v0, p3

    move/from16 v1, v229

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 171
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v229    # "result":I
    :cond_2
    const/4 v15, 0x0

    goto :goto_3

    .line 173
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_3
    const/16 v16, 0x0

    goto :goto_4

    .line 185
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v150    # "b":Landroid/os/IBinder;
    :sswitch_3
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 187
    .restart local v150    # "b":Landroid/os/IBinder;
    invoke-static/range {v150 .. v150}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 188
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 189
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 190
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 191
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 192
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 193
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 194
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 195
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProfilerInfo;

    move-object v15, v6

    .line 197
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 199
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v6, p0

    .line 200
    invoke-virtual/range {v6 .. v17}, Landroid/app/ActivityManagerNative;->startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v229

    .line 202
    .restart local v229    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    move-object/from16 v0, p3

    move/from16 v1, v229

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 195
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v229    # "result":I
    :cond_4
    const/4 v15, 0x0

    goto :goto_5

    .line 197
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_5
    const/16 v16, 0x0

    goto :goto_6

    .line 209
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v150    # "b":Landroid/os/IBinder;
    :sswitch_4
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 211
    .restart local v150    # "b":Landroid/os/IBinder;
    invoke-static/range {v150 .. v150}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 212
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 213
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 214
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 215
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 216
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 217
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 218
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 219
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProfilerInfo;

    move-object v15, v6

    .line 221
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 223
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v6, p0

    .line 224
    invoke-virtual/range {v6 .. v17}, Landroid/app/ActivityManagerNative;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/IActivityManager$WaitResult;

    move-result-object v229

    .line 226
    .local v229, "result":Landroid/app/IActivityManager$WaitResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    const/4 v6, 0x0

    move-object/from16 v0, v229

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/IActivityManager$WaitResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 228
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 219
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v229    # "result":Landroid/app/IActivityManager$WaitResult;
    :cond_6
    const/4 v15, 0x0

    goto :goto_7

    .line 221
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_7
    const/16 v16, 0x0

    goto :goto_8

    .line 233
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v150    # "b":Landroid/os/IBinder;
    :sswitch_5
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 235
    .restart local v150    # "b":Landroid/os/IBinder;
    invoke-static/range {v150 .. v150}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 236
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 237
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 238
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 239
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 240
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 241
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 242
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 243
    .restart local v14    # "startFlags":I
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/res/Configuration;

    .line 244
    .local v27, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 246
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v18, p0

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move/from16 v25, v13

    move/from16 v26, v14

    move-object/from16 v28, v16

    move/from16 v29, v17

    .line 247
    invoke-virtual/range {v18 .. v29}, Landroid/app/ActivityManagerNative;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v229

    .line 249
    .local v229, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    move-object/from16 v0, p3

    move/from16 v1, v229

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 244
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v229    # "result":I
    :cond_8
    const/16 v16, 0x0

    goto :goto_9

    .line 256
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v27    # "config":Landroid/content/res/Configuration;
    .end local v150    # "b":Landroid/os/IBinder;
    :sswitch_6
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 258
    .restart local v150    # "b":Landroid/os/IBinder;
    invoke-static/range {v150 .. v150}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 259
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/IntentSender;

    .line 260
    .local v9, "intent":Landroid/content/IntentSender;
    const/16 v31, 0x0

    .line 261
    .local v31, "fillInIntent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    .line 262
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .end local v31    # "fillInIntent":Landroid/content/Intent;
    check-cast v31, Landroid/content/Intent;

    .line 264
    .restart local v31    # "fillInIntent":Landroid/content/Intent;
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 265
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 266
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 267
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 268
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 269
    .local v36, "flagsMask":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 270
    .local v37, "flagsValues":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_a
    move-object/from16 v28, p0

    move-object/from16 v29, v7

    move-object/from16 v30, v9

    move-object/from16 v32, v10

    move-object/from16 v33, v11

    move-object/from16 v34, v12

    move/from16 v35, v13

    move-object/from16 v38, v16

    .line 272
    invoke-virtual/range {v28 .. v38}, Landroid/app/ActivityManagerNative;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v229

    .line 275
    .restart local v229    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    move-object/from16 v0, p3

    move/from16 v1, v229

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 270
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v229    # "result":I
    :cond_a
    const/16 v16, 0x0

    goto :goto_a

    .line 282
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "intent":Landroid/content/IntentSender;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v31    # "fillInIntent":Landroid/content/Intent;
    .end local v36    # "flagsMask":I
    .end local v37    # "flagsValues":I
    .end local v150    # "b":Landroid/os/IBinder;
    :sswitch_7
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 284
    .restart local v8    # "callingPackage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 285
    .local v40, "callingPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 286
    .local v41, "callingUid":I
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 287
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 288
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v44

    .line 290
    .local v44, "session":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v45

    .line 292
    .local v45, "interactor":Lcom/android/internal/app/IVoiceInteractor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 293
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProfilerInfo;

    move-object v15, v6

    .line 295
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 297
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v38, p0

    move-object/from16 v39, v8

    move-object/from16 v42, v9

    move-object/from16 v43, v10

    move/from16 v46, v14

    move-object/from16 v47, v15

    move-object/from16 v48, v16

    move/from16 v49, v17

    .line 298
    invoke-virtual/range {v38 .. v49}, Landroid/app/ActivityManagerNative;->startVoiceActivity(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v229

    .line 300
    .restart local v229    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    move-object/from16 v0, p3

    move/from16 v1, v229

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 293
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v229    # "result":I
    :cond_b
    const/4 v15, 0x0

    goto :goto_b

    .line 295
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_c
    const/16 v16, 0x0

    goto :goto_c

    .line 307
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v14    # "startFlags":I
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v40    # "callingPid":I
    .end local v41    # "callingUid":I
    .end local v44    # "session":Landroid/service/voice/IVoiceInteractionSession;
    .end local v45    # "interactor":Lcom/android/internal/app/IVoiceInteractor;
    :sswitch_8
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v155

    .line 309
    .local v155, "callingActivity":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 310
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 312
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v155

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v9, v2}, Landroid/app/ActivityManagerNative;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v229

    .line 313
    .local v229, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    if-eqz v229, :cond_e

    const/4 v6, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 310
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v229    # "result":Z
    :cond_d
    const/16 v16, 0x0

    goto :goto_d

    .line 314
    .restart local v16    # "options":Landroid/os/Bundle;
    .restart local v229    # "result":Z
    :cond_e
    const/4 v6, 0x0

    goto :goto_e

    .line 320
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v155    # "callingActivity":Landroid/os/IBinder;
    .end local v229    # "result":Z
    :sswitch_9
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v248

    .line 322
    .local v248, "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_f

    const/16 v16, 0x0

    .line 323
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_f
    move-object/from16 v0, p0

    move/from16 v1, v248

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->startActivityFromRecents(ILandroid/os/Bundle;)I

    move-result v229

    .line 324
    .local v229, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    move-object/from16 v0, p3

    move/from16 v1, v229

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 322
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v229    # "result":I
    :cond_f
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    goto :goto_f

    .line 330
    .end local v248    # "taskId":I
    :sswitch_a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 332
    .local v60, "token":Landroid/os/IBinder;
    const/16 v52, 0x0

    .line 333
    .local v52, "resultData":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v51

    .line 334
    .local v51, "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_10

    .line 335
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v52

    .end local v52    # "resultData":Landroid/content/Intent;
    check-cast v52, Landroid/content/Intent;

    .line 337
    .restart local v52    # "resultData":Landroid/content/Intent;
    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_11

    const/16 v172, 0x1

    .line 338
    .local v172, "finishTask":Z
    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move/from16 v2, v51

    move-object/from16 v3, v52

    move/from16 v4, v172

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;Z)Z

    move-result v230

    .line 339
    .local v230, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    if-eqz v230, :cond_12

    const/4 v6, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 337
    .end local v172    # "finishTask":Z
    .end local v230    # "res":Z
    :cond_11
    const/16 v172, 0x0

    goto :goto_10

    .line 340
    .restart local v172    # "finishTask":Z
    .restart local v230    # "res":Z
    :cond_12
    const/4 v6, 0x0

    goto :goto_11

    .line 345
    .end local v51    # "resultCode":I
    .end local v52    # "resultData":Landroid/content/Intent;
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v172    # "finishTask":Z
    .end local v230    # "res":Z
    :sswitch_b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 347
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 348
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 349
    .restart local v13    # "requestCode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1, v12, v13}, Landroid/app/ActivityManagerNative;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 350
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 355
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 357
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v230

    .line 358
    .restart local v230    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    if-eqz v230, :cond_13

    const/4 v6, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 359
    :cond_13
    const/4 v6, 0x0

    goto :goto_12

    .line 364
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v230    # "res":Z
    :sswitch_d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v44

    .line 367
    .restart local v44    # "session":Landroid/service/voice/IVoiceInteractionSession;
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 368
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 373
    .end local v44    # "session":Landroid/service/voice/IVoiceInteractionSession;
    :sswitch_e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 375
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->releaseActivityInstance(Landroid/os/IBinder;)Z

    move-result v230

    .line 376
    .restart local v230    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    if-eqz v230, :cond_14

    const/4 v6, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 377
    :cond_14
    const/4 v6, 0x0

    goto :goto_13

    .line 382
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v230    # "res":Z
    :sswitch_f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 384
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/ActivityManagerNative;->releaseSomeActivities(Landroid/app/IApplicationThread;)V

    .line 385
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 390
    .end local v7    # "app":Landroid/app/IApplicationThread;
    :sswitch_10
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 392
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v230

    .line 393
    .restart local v230    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    if-eqz v230, :cond_15

    const/4 v6, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 394
    :cond_15
    const/4 v6, 0x0

    goto :goto_14

    .line 400
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v230    # "res":Z
    :sswitch_11
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 402
    .restart local v150    # "b":Landroid/os/IBinder;
    if-eqz v150, :cond_16

    invoke-static/range {v150 .. v150}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 404
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 405
    .local v20, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 406
    if-eqz v150, :cond_17

    invoke-static/range {v150 .. v150}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v21

    .line 408
    .local v21, "rec":Landroid/content/IIntentReceiver;
    :goto_16
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/IntentFilter;

    .line 409
    .local v22, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 410
    .local v23, "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v18, p0

    move-object/from16 v19, v7

    move/from16 v24, v17

    .line 411
    invoke-virtual/range {v18 .. v24}, Landroid/app/ActivityManagerNative;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v9

    .line 412
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    if-eqz v9, :cond_18

    .line 414
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 419
    :goto_17
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 402
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v21    # "rec":Landroid/content/IIntentReceiver;
    .end local v22    # "filter":Landroid/content/IntentFilter;
    .end local v23    # "perm":Ljava/lang/String;
    :cond_16
    const/4 v7, 0x0

    goto :goto_15

    .line 406
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    .restart local v20    # "packageName":Ljava/lang/String;
    :cond_17
    const/16 v21, 0x0

    goto :goto_16

    .line 417
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v17    # "userId":I
    .restart local v21    # "rec":Landroid/content/IIntentReceiver;
    .restart local v22    # "filter":Landroid/content/IntentFilter;
    .restart local v23    # "perm":Ljava/lang/String;
    :cond_18
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    .line 424
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v21    # "rec":Landroid/content/IIntentReceiver;
    .end local v22    # "filter":Landroid/content/IntentFilter;
    .end local v23    # "perm":Ljava/lang/String;
    .end local v150    # "b":Landroid/os/IBinder;
    :sswitch_12
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 426
    .restart local v150    # "b":Landroid/os/IBinder;
    if-nez v150, :cond_19

    .line 427
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 429
    :cond_19
    invoke-static/range {v150 .. v150}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v21

    .line 430
    .restart local v21    # "rec":Landroid/content/IIntentReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    .line 431
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 437
    .end local v21    # "rec":Landroid/content/IIntentReceiver;
    .end local v150    # "b":Landroid/os/IBinder;
    :sswitch_13
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 439
    .restart local v150    # "b":Landroid/os/IBinder;
    if-eqz v150, :cond_1a

    invoke-static/range {v150 .. v150}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 441
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    :goto_18
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 442
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 443
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 444
    if-eqz v150, :cond_1b

    invoke-static/range {v150 .. v150}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v11

    .line 446
    .local v11, "resultTo":Landroid/content/IIntentReceiver;
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v51

    .line 447
    .restart local v51    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v52

    .line 448
    .local v52, "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v53

    .line 449
    .local v53, "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 450
    .restart local v23    # "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v55

    .line 451
    .local v55, "appOp":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1c

    const/16 v56, 0x1

    .line 452
    .local v56, "serialized":Z
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1d

    const/16 v57, 0x1

    .line 453
    .local v57, "sticky":Z
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v46, p0

    move-object/from16 v47, v7

    move-object/from16 v48, v9

    move-object/from16 v49, v10

    move-object/from16 v50, v11

    move-object/from16 v54, v23

    move/from16 v58, v17

    .line 454
    invoke-virtual/range {v46 .. v58}, Landroid/app/ActivityManagerNative;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I

    move-result v230

    .line 457
    .local v230, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    move-object/from16 v0, p3

    move/from16 v1, v230

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 439
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/content/IIntentReceiver;
    .end local v17    # "userId":I
    .end local v23    # "perm":Ljava/lang/String;
    .end local v51    # "resultCode":I
    .end local v52    # "resultData":Ljava/lang/String;
    .end local v53    # "resultExtras":Landroid/os/Bundle;
    .end local v55    # "appOp":I
    .end local v56    # "serialized":Z
    .end local v57    # "sticky":Z
    .end local v230    # "res":I
    :cond_1a
    const/4 v7, 0x0

    goto :goto_18

    .line 444
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v10    # "resolvedType":Ljava/lang/String;
    :cond_1b
    const/4 v11, 0x0

    goto :goto_19

    .line 451
    .restart local v11    # "resultTo":Landroid/content/IIntentReceiver;
    .restart local v23    # "perm":Ljava/lang/String;
    .restart local v51    # "resultCode":I
    .restart local v52    # "resultData":Ljava/lang/String;
    .restart local v53    # "resultExtras":Landroid/os/Bundle;
    .restart local v55    # "appOp":I
    :cond_1c
    const/16 v56, 0x0

    goto :goto_1a

    .line 452
    .restart local v56    # "serialized":Z
    :cond_1d
    const/16 v57, 0x0

    goto :goto_1b

    .line 464
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/content/IIntentReceiver;
    .end local v23    # "perm":Ljava/lang/String;
    .end local v51    # "resultCode":I
    .end local v52    # "resultData":Ljava/lang/String;
    .end local v53    # "resultExtras":Landroid/os/Bundle;
    .end local v55    # "appOp":I
    .end local v56    # "serialized":Z
    .end local v150    # "b":Landroid/os/IBinder;
    :sswitch_14
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 466
    .restart local v150    # "b":Landroid/os/IBinder;
    if-eqz v150, :cond_1e

    invoke-static/range {v150 .. v150}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 467
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    :goto_1c
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 468
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 469
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v7, v9, v1}, Landroid/app/ActivityManagerNative;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V

    .line 470
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 466
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    :cond_1e
    const/4 v7, 0x0

    goto :goto_1c

    .line 475
    .end local v150    # "b":Landroid/os/IBinder;
    :sswitch_15
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 477
    .local v50, "who":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v51

    .line 478
    .restart local v51    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v52

    .line 479
    .restart local v52    # "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v53

    .line 480
    .restart local v53    # "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_20

    const/16 v54, 0x1

    .line 481
    .local v54, "resultAbort":Z
    :goto_1d
    if-eqz v50, :cond_1f

    move-object/from16 v49, p0

    .line 482
    invoke-virtual/range {v49 .. v54}, Landroid/app/ActivityManagerNative;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V

    .line 484
    :cond_1f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 480
    .end local v54    # "resultAbort":Z
    :cond_20
    const/16 v54, 0x0

    goto :goto_1d

    .line 489
    .end local v50    # "who":Landroid/os/IBinder;
    .end local v51    # "resultCode":I
    .end local v52    # "resultData":Ljava/lang/String;
    .end local v53    # "resultExtras":Landroid/os/Bundle;
    :sswitch_16
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 492
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    if-eqz v7, :cond_21

    .line 493
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/ActivityManagerNative;->attachApplication(Landroid/app/IApplicationThread;)V

    .line 495
    :cond_21
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 500
    .end local v7    # "app":Landroid/app/IApplicationThread;
    :sswitch_17
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 502
    .restart local v60    # "token":Landroid/os/IBinder;
    const/16 v27, 0x0

    .line 503
    .restart local v27    # "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_22

    .line 504
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    .end local v27    # "config":Landroid/content/res/Configuration;
    check-cast v27, Landroid/content/res/Configuration;

    .line 506
    .restart local v27    # "config":Landroid/content/res/Configuration;
    :cond_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_24

    const/16 v242, 0x1

    .line 507
    .local v242, "stopProfiling":Z
    :goto_1e
    if-eqz v60, :cond_23

    .line 508
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, v27

    move/from16 v3, v242

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    .line 510
    :cond_23
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 506
    .end local v242    # "stopProfiling":Z
    :cond_24
    const/16 v242, 0x0

    goto :goto_1e

    .line 515
    .end local v27    # "config":Landroid/content/res/Configuration;
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_18
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 517
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityResumed(Landroid/os/IBinder;)V

    .line 518
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 523
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_19
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 525
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityPaused(Landroid/os/IBinder;)V

    .line 526
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 531
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_1a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 533
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v199

    .line 534
    .local v199, "map":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v213

    .line 535
    .local v213, "persistentState":Landroid/os/PersistableBundle;
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v162

    check-cast v162, Ljava/lang/CharSequence;

    .line 536
    .local v162, "description":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, v199

    move-object/from16 v3, v213

    move-object/from16 v4, v162

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V

    .line 537
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 542
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v162    # "description":Ljava/lang/CharSequence;
    .end local v199    # "map":Landroid/os/Bundle;
    .end local v213    # "persistentState":Landroid/os/PersistableBundle;
    :sswitch_1b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 544
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activitySlept(Landroid/os/IBinder;)V

    .line 545
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 550
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_1c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 552
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityDestroyed(Landroid/os/IBinder;)V

    .line 553
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 558
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_1d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 559
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 560
    .restart local v60    # "token":Landroid/os/IBinder;
    if-eqz v60, :cond_25

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v230

    .line 561
    .local v230, "res":Ljava/lang/String;
    :goto_1f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    move-object/from16 v0, p3

    move-object/from16 v1, v230

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 563
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 560
    .end local v230    # "res":Ljava/lang/String;
    :cond_25
    const/16 v230, 0x0

    goto :goto_1f

    .line 567
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_1e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 569
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v157

    .line 570
    .local v157, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    move-object/from16 v0, v157

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 572
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 576
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v157    # "cn":Landroid/content/ComponentName;
    :sswitch_1f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 578
    .restart local v8    # "callingPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/app/ActivityManagerNative;->getAppTasks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v196

    .line 579
    .local v196, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/IAppTask;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    if-eqz v196, :cond_26

    invoke-interface/range {v196 .. v196}, Ljava/util/List;->size()I

    move-result v139

    .line 581
    .local v139, "N":I
    :goto_20
    move-object/from16 v0, p3

    move/from16 v1, v139

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 583
    const/16 v176, 0x0

    .local v176, "i":I
    :goto_21
    move/from16 v0, v176

    move/from16 v1, v139

    if-ge v0, v1, :cond_27

    .line 584
    move-object/from16 v0, v196

    move/from16 v1, v176

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v247

    check-cast v247, Landroid/app/IAppTask;

    .line 585
    .local v247, "task":Landroid/app/IAppTask;
    invoke-interface/range {v247 .. v247}, Landroid/app/IAppTask;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 583
    add-int/lit8 v176, v176, 0x1

    goto :goto_21

    .line 580
    .end local v139    # "N":I
    .end local v176    # "i":I
    .end local v247    # "task":Landroid/app/IAppTask;
    :cond_26
    const/16 v139, -0x1

    goto :goto_20

    .line 587
    .restart local v139    # "N":I
    .restart local v176    # "i":I
    :cond_27
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 591
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v139    # "N":I
    .end local v176    # "i":I
    .end local v196    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/IAppTask;>;"
    :sswitch_20
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v143

    .line 593
    .local v143, "activityToken":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 594
    .restart local v9    # "intent":Landroid/content/Intent;
    sget-object v6, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v161

    check-cast v161, Landroid/app/ActivityManager$TaskDescription;

    .line 596
    .local v161, "descr":Landroid/app/ActivityManager$TaskDescription;
    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v250

    check-cast v250, Landroid/graphics/Bitmap;

    .line 597
    .local v250, "thumbnail":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    move-object/from16 v1, v143

    move-object/from16 v2, v161

    move-object/from16 v3, v250

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/app/ActivityManagerNative;->addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I

    move-result v230

    .line 598
    .local v230, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    move-object/from16 v0, p3

    move/from16 v1, v230

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 600
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 604
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v143    # "activityToken":Landroid/os/IBinder;
    .end local v161    # "descr":Landroid/app/ActivityManager$TaskDescription;
    .end local v230    # "res":I
    .end local v250    # "thumbnail":Landroid/graphics/Bitmap;
    :sswitch_21
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 605
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getAppTaskThumbnailSize()Landroid/graphics/Point;

    move-result-object v236

    .line 606
    .local v236, "size":Landroid/graphics/Point;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    const/4 v6, 0x0

    move-object/from16 v0, v236

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 608
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 612
    .end local v236    # "size":Landroid/graphics/Point;
    :sswitch_22
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v201

    .line 614
    .local v201, "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 615
    .local v70, "fl":I
    move-object/from16 v0, p0

    move/from16 v1, v201

    move/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTasks(II)Ljava/util/List;

    move-result-object v194

    .line 616
    .local v194, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    if-eqz v194, :cond_28

    invoke-interface/range {v194 .. v194}, Ljava/util/List;->size()I

    move-result v139

    .line 618
    .restart local v139    # "N":I
    :goto_22
    move-object/from16 v0, p3

    move/from16 v1, v139

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 620
    const/16 v176, 0x0

    .restart local v176    # "i":I
    :goto_23
    move/from16 v0, v176

    move/from16 v1, v139

    if-ge v0, v1, :cond_29

    .line 621
    move-object/from16 v0, v194

    move/from16 v1, v176

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v180

    check-cast v180, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 622
    .local v180, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    const/4 v6, 0x0

    move-object/from16 v0, v180

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 620
    add-int/lit8 v176, v176, 0x1

    goto :goto_23

    .line 617
    .end local v139    # "N":I
    .end local v176    # "i":I
    .end local v180    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_28
    const/16 v139, -0x1

    goto :goto_22

    .line 624
    .restart local v139    # "N":I
    .restart local v176    # "i":I
    :cond_29
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 628
    .end local v70    # "fl":I
    .end local v139    # "N":I
    .end local v176    # "i":I
    .end local v194    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v201    # "maxNum":I
    :sswitch_23
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 629
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v201

    .line 630
    .restart local v201    # "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 631
    .restart local v70    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 632
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v201

    move/from16 v2, v70

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getRecentTasks(III)Ljava/util/List;

    move-result-object v191

    .line 634
    .local v191, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    move-object/from16 v0, p3

    move-object/from16 v1, v191

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 636
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 640
    .end local v17    # "userId":I
    .end local v70    # "fl":I
    .end local v191    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v201    # "maxNum":I
    :sswitch_24
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v61

    .line 642
    .local v61, "id":I
    move-object/from16 v0, p0

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskThumbnail(I)Landroid/app/ActivityManager$TaskThumbnail;

    move-result-object v249

    .line 643
    .local v249, "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    if-eqz v249, :cond_2a

    .line 645
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 646
    const/4 v6, 0x1

    move-object/from16 v0, v249

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$TaskThumbnail;->writeToParcel(Landroid/os/Parcel;I)V

    .line 650
    :goto_24
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 648
    :cond_2a
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_24

    .line 654
    .end local v61    # "id":I
    .end local v249    # "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    :sswitch_25
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 655
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v201

    .line 656
    .restart local v201    # "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 657
    .restart local v70    # "fl":I
    move-object/from16 v0, p0

    move/from16 v1, v201

    move/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getServices(II)Ljava/util/List;

    move-result-object v193

    .line 658
    .local v193, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    if-eqz v193, :cond_2b

    invoke-interface/range {v193 .. v193}, Ljava/util/List;->size()I

    move-result v139

    .line 660
    .restart local v139    # "N":I
    :goto_25
    move-object/from16 v0, p3

    move/from16 v1, v139

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 662
    const/16 v176, 0x0

    .restart local v176    # "i":I
    :goto_26
    move/from16 v0, v176

    move/from16 v1, v139

    if-ge v0, v1, :cond_2c

    .line 663
    move-object/from16 v0, v193

    move/from16 v1, v176

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v180

    check-cast v180, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 664
    .local v180, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    const/4 v6, 0x0

    move-object/from16 v0, v180

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 662
    add-int/lit8 v176, v176, 0x1

    goto :goto_26

    .line 659
    .end local v139    # "N":I
    .end local v176    # "i":I
    .end local v180    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2b
    const/16 v139, -0x1

    goto :goto_25

    .line 666
    .restart local v139    # "N":I
    .restart local v176    # "i":I
    :cond_2c
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 670
    .end local v70    # "fl":I
    .end local v139    # "N":I
    .end local v176    # "i":I
    .end local v193    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v201    # "maxNum":I
    :sswitch_26
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v190

    .line 672
    .local v190, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 673
    move-object/from16 v0, p3

    move-object/from16 v1, v190

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 674
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 678
    .end local v190    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    :sswitch_27
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 679
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v192

    .line 680
    .local v192, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    move-object/from16 v0, p3

    move-object/from16 v1, v192

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 682
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 686
    .end local v192    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :sswitch_28
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 687
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v197

    .line 688
    .local v197, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    move-object/from16 v0, p3

    move-object/from16 v1, v197

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 690
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 694
    .end local v197    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :sswitch_29
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v247

    .line 696
    .local v247, "task":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 697
    .restart local v70    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2d

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 699
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_27
    move-object/from16 v0, p0

    move/from16 v1, v247

    move/from16 v2, v70

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 700
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 697
    .end local v16    # "options":Landroid/os/Bundle;
    :cond_2d
    const/16 v16, 0x0

    goto :goto_27

    .line 705
    .end local v70    # "fl":I
    .end local v247    # "task":I
    :sswitch_2a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 706
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v247

    .line 707
    .restart local v247    # "task":I
    move-object/from16 v0, p0

    move/from16 v1, v247

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskToBack(I)V

    .line 708
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 713
    .end local v247    # "task":I
    :sswitch_2b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 714
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 715
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2e

    const/16 v206, 0x1

    .line 716
    .local v206, "nonRoot":Z
    :goto_28
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move/from16 v2, v206

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v230

    .line 717
    .local v230, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 718
    if-eqz v230, :cond_2f

    const/4 v6, 0x1

    :goto_29
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 719
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 715
    .end local v206    # "nonRoot":Z
    .end local v230    # "res":Z
    :cond_2e
    const/16 v206, 0x0

    goto :goto_28

    .line 718
    .restart local v206    # "nonRoot":Z
    .restart local v230    # "res":Z
    :cond_2f
    const/4 v6, 0x0

    goto :goto_29

    .line 723
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v206    # "nonRoot":Z
    .end local v230    # "res":Z
    :sswitch_2c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 724
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v247

    .line 725
    .restart local v247    # "task":I
    move-object/from16 v0, p0

    move/from16 v1, v247

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskBackwards(I)V

    .line 726
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 731
    .end local v247    # "task":I
    :sswitch_2d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 732
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v248

    .line 733
    .restart local v248    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v240

    .line 734
    .local v240, "stackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_30

    const/16 v251, 0x1

    .line 735
    .local v251, "toTop":Z
    :goto_2a
    move-object/from16 v0, p0

    move/from16 v1, v248

    move/from16 v2, v240

    move/from16 v3, v251

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->moveTaskToStack(IIZ)V

    .line 736
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 737
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 734
    .end local v251    # "toTop":Z
    :cond_30
    const/16 v251, 0x0

    goto :goto_2a

    .line 741
    .end local v240    # "stackId":I
    .end local v248    # "taskId":I
    :sswitch_2e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 742
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v240

    .line 743
    .restart local v240    # "stackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    move/16 v261, v0

    .line 744
    .local v261, "weight":F
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v224

    check-cast v224, Landroid/graphics/Rect;

    .line 745
    .local v224, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move/from16 v1, v240

    move-object/from16 v2, v224

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->resizeStack(ILandroid/graphics/Rect;)V

    .line 746
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 747
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 751
    .end local v224    # "r":Landroid/graphics/Rect;
    .end local v240    # "stackId":I
    .end local v261    # "weight":F
    :sswitch_2f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 752
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getAllStackInfos()Ljava/util/List;

    move-result-object v195

    .line 753
    .local v195, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    move-object/from16 v0, p3

    move-object/from16 v1, v195

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 755
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 759
    .end local v195    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    :sswitch_30
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 760
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v240

    .line 761
    .restart local v240    # "stackId":I
    move-object/from16 v0, p0

    move/from16 v1, v240

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v180

    .line 762
    .local v180, "info":Landroid/app/ActivityManager$StackInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 763
    if-eqz v180, :cond_31

    .line 764
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 765
    const/4 v6, 0x0

    move-object/from16 v0, v180

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$StackInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 769
    :goto_2b
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 767
    :cond_31
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2b

    .line 773
    .end local v180    # "info":Landroid/app/ActivityManager$StackInfo;
    .end local v240    # "stackId":I
    :sswitch_31
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 774
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v248

    .line 775
    .restart local v248    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v248

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isInHomeStack(I)Z

    move-result v184

    .line 776
    .local v184, "isInHomeStack":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 777
    if-eqz v184, :cond_32

    const/4 v6, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 778
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 777
    :cond_32
    const/4 v6, 0x0

    goto :goto_2c

    .line 782
    .end local v184    # "isInHomeStack":Z
    .end local v248    # "taskId":I
    :sswitch_32
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 783
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v240

    .line 784
    .restart local v240    # "stackId":I
    move-object/from16 v0, p0

    move/from16 v1, v240

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFocusedStack(I)V

    .line 785
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 786
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 790
    .end local v240    # "stackId":I
    :sswitch_33
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 791
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 792
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-static/range {v60 .. v60}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 793
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 794
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 798
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_34
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 799
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 800
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_33

    const/16 v208, 0x1

    .line 801
    .local v208, "onlyRoot":Z
    :goto_2d
    if-eqz v60, :cond_34

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move/from16 v2, v208

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v230

    .line 803
    .local v230, "res":I
    :goto_2e
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    move-object/from16 v0, p3

    move/from16 v1, v230

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 805
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 800
    .end local v208    # "onlyRoot":Z
    .end local v230    # "res":I
    :cond_33
    const/16 v208, 0x0

    goto :goto_2d

    .line 801
    .restart local v208    # "onlyRoot":Z
    :cond_34
    const/16 v230, -0x1

    goto :goto_2e

    .line 809
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v208    # "onlyRoot":Z
    :sswitch_35
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 810
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 811
    .restart local v150    # "b":Landroid/os/IBinder;
    invoke-static/range {v150 .. v150}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 812
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 813
    .local v94, "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 814
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_35

    const/16 v239, 0x1

    .line 815
    .local v239, "stable":Z
    :goto_2f
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v17

    move/from16 v3, v239

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;IZ)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v160

    .line 816
    .local v160, "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    if-eqz v160, :cond_36

    .line 818
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 819
    const/4 v6, 0x0

    move-object/from16 v0, v160

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 823
    :goto_30
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 814
    .end local v160    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v239    # "stable":Z
    :cond_35
    const/16 v239, 0x0

    goto :goto_2f

    .line 821
    .restart local v160    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v239    # "stable":Z
    :cond_36
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_30

    .line 827
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v94    # "name":Ljava/lang/String;
    .end local v150    # "b":Landroid/os/IBinder;
    .end local v160    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v239    # "stable":Z
    :sswitch_36
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 828
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 829
    .restart local v94    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 830
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 831
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move/from16 v2, v17

    move-object/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v160

    .line 832
    .restart local v160    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 833
    if-eqz v160, :cond_37

    .line 834
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 835
    const/4 v6, 0x0

    move-object/from16 v0, v160

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 839
    :goto_31
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 837
    :cond_37
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_31

    .line 843
    .end local v17    # "userId":I
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v94    # "name":Ljava/lang/String;
    .end local v160    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    :sswitch_37
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 844
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 845
    .restart local v150    # "b":Landroid/os/IBinder;
    invoke-static/range {v150 .. v150}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 846
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v222

    .line 848
    .local v222, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v222

    invoke-virtual {v0, v7, v1}, Landroid/app/ActivityManagerNative;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    .line 849
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 850
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 854
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v150    # "b":Landroid/os/IBinder;
    .end local v222    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    :sswitch_38
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 855
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 856
    .restart local v150    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v239

    .line 857
    .local v239, "stable":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v252

    .line 858
    .local v252, "unstable":I
    move-object/from16 v0, p0

    move-object/from16 v1, v150

    move/from16 v2, v239

    move/from16 v3, v252

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->refContentProvider(Landroid/os/IBinder;II)Z

    move-result v230

    .line 859
    .local v230, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    if-eqz v230, :cond_38

    const/4 v6, 0x1

    :goto_32
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 861
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 860
    :cond_38
    const/4 v6, 0x0

    goto :goto_32

    .line 865
    .end local v150    # "b":Landroid/os/IBinder;
    .end local v230    # "res":Z
    .end local v239    # "stable":I
    .end local v252    # "unstable":I
    :sswitch_39
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 866
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 867
    .restart local v150    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v150

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 868
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 873
    .end local v150    # "b":Landroid/os/IBinder;
    :sswitch_3a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 874
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 875
    .restart local v150    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v150

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->appNotRespondingViaProvider(Landroid/os/IBinder;)V

    .line 876
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 881
    .end local v150    # "b":Landroid/os/IBinder;
    :sswitch_3b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 882
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 883
    .restart local v150    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_39

    const/16 v239, 0x1

    .line 884
    .local v239, "stable":Z
    :goto_33
    move-object/from16 v0, p0

    move-object/from16 v1, v150

    move/from16 v2, v239

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProvider(Landroid/os/IBinder;Z)V

    .line 885
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 886
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 883
    .end local v239    # "stable":Z
    :cond_39
    const/16 v239, 0x0

    goto :goto_33

    .line 890
    .end local v150    # "b":Landroid/os/IBinder;
    :sswitch_3c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 891
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 892
    .restart local v94    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 893
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 894
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 895
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 899
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v94    # "name":Ljava/lang/String;
    :sswitch_3d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 900
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v158

    check-cast v158, Landroid/content/ComponentName;

    .line 901
    .local v158, "comp":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v158

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v215

    .line 902
    .local v215, "pi":Landroid/app/PendingIntent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 903
    move-object/from16 v0, v215

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 904
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 908
    .end local v158    # "comp":Landroid/content/ComponentName;
    .end local v215    # "pi":Landroid/app/PendingIntent;
    :sswitch_3e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 909
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 910
    .restart local v150    # "b":Landroid/os/IBinder;
    invoke-static/range {v150 .. v150}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 911
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/content/Intent;

    .line 912
    .local v67, "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 913
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 914
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    move/from16 v2, v17

    invoke-virtual {v0, v7, v1, v10, v2}, Landroid/app/ActivityManagerNative;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v157

    .line 915
    .restart local v157    # "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 916
    move-object/from16 v0, v157

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 917
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 921
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v67    # "service":Landroid/content/Intent;
    .end local v150    # "b":Landroid/os/IBinder;
    .end local v157    # "cn":Landroid/content/ComponentName;
    :sswitch_3f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 922
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 923
    .restart local v150    # "b":Landroid/os/IBinder;
    invoke-static/range {v150 .. v150}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 924
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/content/Intent;

    .line 925
    .restart local v67    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 926
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 927
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    move/from16 v2, v17

    invoke-virtual {v0, v7, v1, v10, v2}, Landroid/app/ActivityManagerNative;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v230

    .line 928
    .local v230, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    move-object/from16 v0, p3

    move/from16 v1, v230

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 930
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 934
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v67    # "service":Landroid/content/Intent;
    .end local v150    # "b":Landroid/os/IBinder;
    .end local v230    # "res":I
    :sswitch_40
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 935
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v59

    .line 936
    .local v59, "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 937
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v241

    .line 938
    .local v241, "startId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-object/from16 v2, v60

    move/from16 v3, v241

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    move-result v230

    .line 939
    .local v230, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 940
    if-eqz v230, :cond_3a

    const/4 v6, 0x1

    :goto_34
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 941
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 940
    :cond_3a
    const/4 v6, 0x0

    goto :goto_34

    .line 945
    .end local v59    # "className":Landroid/content/ComponentName;
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v230    # "res":Z
    .end local v241    # "startId":I
    :sswitch_41
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 946
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v59

    .line 947
    .restart local v59    # "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 948
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v61

    .line 949
    .restart local v61    # "id":I
    const/16 v62, 0x0

    .line 950
    .local v62, "notification":Landroid/app/Notification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3b

    .line 951
    sget-object v6, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v62

    .end local v62    # "notification":Landroid/app/Notification;
    check-cast v62, Landroid/app/Notification;

    .line 953
    .restart local v62    # "notification":Landroid/app/Notification;
    :cond_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3c

    const/16 v63, 0x1

    .local v63, "removeNotification":Z
    :goto_35
    move-object/from16 v58, p0

    .line 954
    invoke-virtual/range {v58 .. v63}, Landroid/app/ActivityManagerNative;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V

    .line 955
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 956
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 953
    .end local v63    # "removeNotification":Z
    :cond_3c
    const/16 v63, 0x0

    goto :goto_35

    .line 960
    .end local v59    # "className":Landroid/content/ComponentName;
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v61    # "id":I
    .end local v62    # "notification":Landroid/app/Notification;
    :sswitch_42
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 961
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 962
    .restart local v150    # "b":Landroid/os/IBinder;
    invoke-static/range {v150 .. v150}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 963
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 964
    .restart local v60    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/content/Intent;

    .line 965
    .restart local v67    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 966
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 967
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 968
    .restart local v70    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 969
    .restart local v17    # "userId":I
    invoke-static/range {v150 .. v150}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v69

    .local v69, "conn":Landroid/app/IServiceConnection;
    move-object/from16 v64, p0

    move-object/from16 v65, v7

    move-object/from16 v66, v60

    move-object/from16 v68, v10

    move/from16 v71, v17

    .line 970
    invoke-virtual/range {v64 .. v71}, Landroid/app/ActivityManagerNative;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;II)I

    move-result v230

    .line 971
    .local v230, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 972
    move-object/from16 v0, p3

    move/from16 v1, v230

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 973
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 977
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v67    # "service":Landroid/content/Intent;
    .end local v69    # "conn":Landroid/app/IServiceConnection;
    .end local v70    # "fl":I
    .end local v150    # "b":Landroid/os/IBinder;
    .end local v230    # "res":I
    :sswitch_43
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 978
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 979
    .restart local v150    # "b":Landroid/os/IBinder;
    invoke-static/range {v150 .. v150}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v69

    .line 980
    .restart local v69    # "conn":Landroid/app/IServiceConnection;
    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindService(Landroid/app/IServiceConnection;)Z

    move-result v230

    .line 981
    .local v230, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 982
    if-eqz v230, :cond_3d

    const/4 v6, 0x1

    :goto_36
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 983
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 982
    :cond_3d
    const/4 v6, 0x0

    goto :goto_36

    .line 987
    .end local v69    # "conn":Landroid/app/IServiceConnection;
    .end local v150    # "b":Landroid/os/IBinder;
    .end local v230    # "res":Z
    :sswitch_44
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 988
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 989
    .restart local v60    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 990
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v67

    .line 991
    .local v67, "service":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, v67

    invoke-virtual {v0, v1, v9, v2}, Landroid/app/ActivityManagerNative;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 992
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 993
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 997
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v67    # "service":Landroid/os/IBinder;
    :sswitch_45
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 998
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 999
    .restart local v60    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 1000
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3e

    const/16 v165, 0x1

    .line 1001
    .local v165, "doRebind":Z
    :goto_37
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move/from16 v2, v165

    invoke-virtual {v0, v1, v9, v2}, Landroid/app/ActivityManagerNative;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 1002
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1003
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1000
    .end local v165    # "doRebind":Z
    :cond_3e
    const/16 v165, 0x0

    goto :goto_37

    .line 1007
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_46
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1008
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1009
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v81

    .line 1010
    .local v81, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v241

    .line 1011
    .restart local v241    # "startId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v230

    .line 1012
    .local v230, "res":I
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move/from16 v2, v81

    move/from16 v3, v241

    move/from16 v4, v230

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    .line 1013
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1014
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1018
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v81    # "type":I
    .end local v230    # "res":I
    .end local v241    # "startId":I
    :sswitch_47
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1019
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v59

    .line 1020
    .restart local v59    # "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v73

    .line 1021
    .local v73, "profileFile":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 1022
    .restart local v70    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v75

    .line 1023
    .local v75, "arguments":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 1024
    .restart local v150    # "b":Landroid/os/IBinder;
    invoke-static/range {v150 .. v150}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v76

    .line 1025
    .local v76, "w":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 1026
    invoke-static/range {v150 .. v150}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v77

    .line 1027
    .local v77, "c":Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1028
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v79

    .local v79, "abiOverride":Ljava/lang/String;
    move-object/from16 v71, p0

    move-object/from16 v72, v59

    move/from16 v74, v70

    move/from16 v78, v17

    .line 1029
    invoke-virtual/range {v71 .. v79}, Landroid/app/ActivityManagerNative;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z

    move-result v230

    .line 1031
    .local v230, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1032
    if-eqz v230, :cond_3f

    const/4 v6, 0x1

    :goto_38
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1033
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1032
    :cond_3f
    const/4 v6, 0x0

    goto :goto_38

    .line 1038
    .end local v17    # "userId":I
    .end local v59    # "className":Landroid/content/ComponentName;
    .end local v70    # "fl":I
    .end local v73    # "profileFile":Ljava/lang/String;
    .end local v75    # "arguments":Landroid/os/Bundle;
    .end local v76    # "w":Landroid/app/IInstrumentationWatcher;
    .end local v77    # "c":Landroid/app/IUiAutomationConnection;
    .end local v79    # "abiOverride":Ljava/lang/String;
    .end local v150    # "b":Landroid/os/IBinder;
    .end local v230    # "res":Z
    :sswitch_48
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1039
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 1040
    .restart local v150    # "b":Landroid/os/IBinder;
    invoke-static/range {v150 .. v150}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1041
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v51

    .line 1042
    .restart local v51    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v232

    .line 1043
    .local v232, "results":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move/from16 v1, v51

    move-object/from16 v2, v232

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/ActivityManagerNative;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V

    .line 1044
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1045
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1049
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v51    # "resultCode":I
    .end local v150    # "b":Landroid/os/IBinder;
    .end local v232    # "results":Landroid/os/Bundle;
    :sswitch_49
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1050
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v27

    .line 1051
    .restart local v27    # "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1052
    const/4 v6, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1053
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1057
    .end local v27    # "config":Landroid/content/res/Configuration;
    :sswitch_4a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1058
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/res/Configuration;

    .line 1059
    .restart local v27    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 1060
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1061
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1065
    .end local v27    # "config":Landroid/content/res/Configuration;
    :sswitch_4b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1066
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1067
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v228

    .line 1068
    .local v228, "requestedOrientation":I
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move/from16 v2, v228

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setRequestedOrientation(Landroid/os/IBinder;I)V

    .line 1069
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1070
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1074
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v228    # "requestedOrientation":I
    :sswitch_4c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1075
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1076
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v226

    .line 1077
    .local v226, "req":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1078
    move-object/from16 v0, p3

    move/from16 v1, v226

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1079
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1083
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v226    # "req":I
    :sswitch_4d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1084
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1085
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v157

    .line 1086
    .restart local v157    # "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1087
    move-object/from16 v0, v157

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 1088
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1092
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v157    # "cn":Landroid/content/ComponentName;
    :sswitch_4e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1093
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1094
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1095
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1096
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1100
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_4f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v81

    .line 1102
    .restart local v81    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1103
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1104
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1105
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1108
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_40

    .line 1109
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v86

    check-cast v86, [Landroid/content/Intent;

    .line 1110
    .local v86, "requestIntents":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v87

    .line 1115
    .local v87, "requestResolvedTypes":[Ljava/lang/String;
    :goto_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 1116
    .restart local v70    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_41

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 1118
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v80, p0

    move-object/from16 v82, v20

    move-object/from16 v83, v60

    move-object/from16 v84, v12

    move/from16 v85, v13

    move/from16 v88, v70

    move-object/from16 v89, v16

    move/from16 v90, v17

    .line 1119
    invoke-virtual/range {v80 .. v90}, Landroid/app/ActivityManagerNative;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v230

    .line 1122
    .local v230, "res":Landroid/content/IIntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1123
    if-eqz v230, :cond_42

    invoke-interface/range {v230 .. v230}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_3b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1124
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1112
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v70    # "fl":I
    .end local v86    # "requestIntents":[Landroid/content/Intent;
    .end local v87    # "requestResolvedTypes":[Ljava/lang/String;
    .end local v230    # "res":Landroid/content/IIntentSender;
    :cond_40
    const/16 v86, 0x0

    .line 1113
    .restart local v86    # "requestIntents":[Landroid/content/Intent;
    const/16 v87, 0x0

    .restart local v87    # "requestResolvedTypes":[Ljava/lang/String;
    goto :goto_39

    .line 1116
    .restart local v70    # "fl":I
    :cond_41
    const/16 v16, 0x0

    goto :goto_3a

    .line 1123
    .restart local v16    # "options":Landroid/os/Bundle;
    .restart local v17    # "userId":I
    .restart local v230    # "res":Landroid/content/IIntentSender;
    :cond_42
    const/4 v6, 0x0

    goto :goto_3b

    .line 1128
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v70    # "fl":I
    .end local v81    # "type":I
    .end local v86    # "requestIntents":[Landroid/content/Intent;
    .end local v87    # "requestResolvedTypes":[Ljava/lang/String;
    .end local v230    # "res":Landroid/content/IIntentSender;
    :sswitch_50
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v224

    .line 1131
    .local v224, "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v224

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->cancelIntentSender(Landroid/content/IIntentSender;)V

    .line 1132
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1133
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1137
    .end local v224    # "r":Landroid/content/IIntentSender;
    :sswitch_51
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v224

    .line 1140
    .restart local v224    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v224

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;

    move-result-object v230

    .line 1141
    .local v230, "res":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1142
    move-object/from16 v0, p3

    move-object/from16 v1, v230

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1143
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1147
    .end local v224    # "r":Landroid/content/IIntentSender;
    .end local v230    # "res":Ljava/lang/String;
    :sswitch_52
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v224

    .line 1150
    .restart local v224    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v224

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v230

    .line 1151
    .local v230, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1152
    move-object/from16 v0, p3

    move/from16 v1, v230

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1153
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1157
    .end local v224    # "r":Landroid/content/IIntentSender;
    .end local v230    # "res":I
    :sswitch_53
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 1159
    .restart local v40    # "callingPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 1160
    .restart local v41    # "callingUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1161
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_43

    const/16 v92, 0x1

    .line 1162
    .local v92, "allowAll":Z
    :goto_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_44

    const/16 v93, 0x1

    .line 1163
    .local v93, "requireFull":Z
    :goto_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 1164
    .restart local v94    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v95

    .local v95, "callerPackage":Ljava/lang/String;
    move-object/from16 v88, p0

    move/from16 v89, v40

    move/from16 v90, v41

    move/from16 v91, v17

    .line 1165
    invoke-virtual/range {v88 .. v95}, Landroid/app/ActivityManagerNative;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v230

    .line 1167
    .restart local v230    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1168
    move-object/from16 v0, p3

    move/from16 v1, v230

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1169
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1161
    .end local v92    # "allowAll":Z
    .end local v93    # "requireFull":Z
    .end local v94    # "name":Ljava/lang/String;
    .end local v95    # "callerPackage":Ljava/lang/String;
    .end local v230    # "res":I
    :cond_43
    const/16 v92, 0x0

    goto :goto_3c

    .line 1162
    .restart local v92    # "allowAll":Z
    :cond_44
    const/16 v93, 0x0

    goto :goto_3d

    .line 1173
    .end local v17    # "userId":I
    .end local v40    # "callingPid":I
    .end local v41    # "callingUid":I
    .end local v92    # "allowAll":Z
    :sswitch_54
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v200

    .line 1175
    .local v200, "max":I
    move-object/from16 v0, p0

    move/from16 v1, v200

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setProcessLimit(I)V

    .line 1176
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1177
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1181
    .end local v200    # "max":I
    :sswitch_55
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1182
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessLimit()I

    move-result v189

    .line 1183
    .local v189, "limit":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1184
    move-object/from16 v0, p3

    move/from16 v1, v189

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1185
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1189
    .end local v189    # "limit":I
    :sswitch_56
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1191
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1192
    .local v98, "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_45

    const/16 v183, 0x1

    .line 1193
    .local v183, "isForeground":Z
    :goto_3e
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move/from16 v2, v98

    move/from16 v3, v183

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 1194
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1195
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1192
    .end local v183    # "isForeground":Z
    :cond_45
    const/16 v183, 0x0

    goto :goto_3e

    .line 1199
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v98    # "pid":I
    :sswitch_57
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1201
    .restart local v23    # "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1202
    .restart local v98    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v99

    .line 1203
    .local v99, "uid":I
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v98

    move/from16 v3, v99

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->checkPermission(Ljava/lang/String;II)I

    move-result v230

    .line 1204
    .restart local v230    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1205
    move-object/from16 v0, p3

    move/from16 v1, v230

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1206
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1210
    .end local v23    # "perm":Ljava/lang/String;
    .end local v98    # "pid":I
    .end local v99    # "uid":I
    .end local v230    # "res":I
    :sswitch_58
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1212
    .restart local v23    # "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1213
    .restart local v98    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v99

    .line 1214
    .restart local v99    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1215
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v98

    move/from16 v3, v99

    move-object/from16 v4, v60

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->checkPermissionWithToken(Ljava/lang/String;IILandroid/os/IBinder;)I

    move-result v230

    .line 1216
    .restart local v230    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1217
    move-object/from16 v0, p3

    move/from16 v1, v230

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1218
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1222
    .end local v23    # "perm":Ljava/lang/String;
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v98    # "pid":I
    .end local v99    # "uid":I
    .end local v230    # "res":I
    :sswitch_59
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1223
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1224
    .local v97, "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1225
    .restart local v98    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v99

    .line 1226
    .restart local v99    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v100

    .line 1227
    .local v100, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1228
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v102

    .local v102, "callerToken":Landroid/os/IBinder;
    move-object/from16 v96, p0

    move/from16 v101, v17

    .line 1229
    invoke-virtual/range {v96 .. v102}, Landroid/app/ActivityManagerNative;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I

    move-result v230

    .line 1230
    .restart local v230    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1231
    move-object/from16 v0, p3

    move/from16 v1, v230

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1232
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1236
    .end local v17    # "userId":I
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v98    # "pid":I
    .end local v99    # "uid":I
    .end local v100    # "mode":I
    .end local v102    # "callerToken":Landroid/os/IBinder;
    .end local v230    # "res":I
    :sswitch_5a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1238
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v207

    .line 1240
    .local v207, "observer":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1241
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v207

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z

    move-result v230

    .line 1242
    .local v230, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1243
    if-eqz v230, :cond_46

    const/4 v6, 0x1

    :goto_3f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1244
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1243
    :cond_46
    const/4 v6, 0x0

    goto :goto_3f

    .line 1248
    .end local v17    # "userId":I
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v207    # "observer":Landroid/content/pm/IPackageDataObserver;
    .end local v230    # "res":Z
    :sswitch_5b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 1250
    .restart local v150    # "b":Landroid/os/IBinder;
    invoke-static/range {v150 .. v150}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1251
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v105

    .line 1252
    .local v105, "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1253
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v100

    .line 1254
    .restart local v100    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v103, p0

    move-object/from16 v104, v7

    move-object/from16 v106, v97

    move/from16 v107, v100

    move/from16 v108, v17

    .line 1255
    invoke-virtual/range {v103 .. v108}, Landroid/app/ActivityManagerNative;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 1256
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1257
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1261
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v100    # "mode":I
    .end local v105    # "targetPkg":Ljava/lang/String;
    .end local v150    # "b":Landroid/os/IBinder;
    :sswitch_5c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 1263
    .restart local v150    # "b":Landroid/os/IBinder;
    invoke-static/range {v150 .. v150}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1264
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1265
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v100

    .line 1266
    .restart local v100    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1267
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move/from16 v2, v100

    move/from16 v3, v17

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/ActivityManagerNative;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;II)V

    .line 1268
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1269
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1273
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v100    # "mode":I
    .end local v150    # "b":Landroid/os/IBinder;
    :sswitch_5d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1274
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1275
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v100

    .line 1276
    .restart local v100    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1277
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move/from16 v2, v100

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->takePersistableUriPermission(Landroid/net/Uri;II)V

    .line 1278
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1279
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1283
    .end local v17    # "userId":I
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v100    # "mode":I
    :sswitch_5e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1284
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1285
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v100

    .line 1286
    .restart local v100    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1287
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move/from16 v2, v100

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->releasePersistableUriPermission(Landroid/net/Uri;II)V

    .line 1288
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1289
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1293
    .end local v17    # "userId":I
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v100    # "mode":I
    :sswitch_5f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1295
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_47

    const/16 v179, 0x1

    .line 1296
    .local v179, "incoming":Z
    :goto_40
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v179

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getPersistedUriPermissions(Ljava/lang/String;Z)Landroid/content/pm/ParceledListSlice;

    move-result-object v212

    .line 1298
    .local v212, "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1299
    const/4 v6, 0x1

    move-object/from16 v0, v212

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1300
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1295
    .end local v179    # "incoming":Z
    .end local v212    # "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    :cond_47
    const/16 v179, 0x0

    goto :goto_40

    .line 1304
    .end local v20    # "packageName":Ljava/lang/String;
    :sswitch_60
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1305
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 1306
    .restart local v150    # "b":Landroid/os/IBinder;
    invoke-static/range {v150 .. v150}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1307
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_48

    const/4 v0, 0x1

    move/16 v259, v0

    .line 1308
    .local v259, "waiting":Z
    :goto_41
    move-object/from16 v0, p0

    move/from16 v1, v259

    invoke-virtual {v0, v7, v1}, Landroid/app/ActivityManagerNative;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    .line 1309
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1310
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1307
    .end local v259    # "waiting":Z
    :cond_48
    const/4 v0, 0x0

    move/16 v259, v0

    goto :goto_41

    .line 1314
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v150    # "b":Landroid/os/IBinder;
    :sswitch_61
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1315
    new-instance v203, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct/range {v203 .. v203}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1316
    .local v203, "mi":Landroid/app/ActivityManager$MemoryInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v203

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1317
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1318
    const/4 v6, 0x0

    move-object/from16 v0, v203

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1319
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1323
    .end local v203    # "mi":Landroid/app/ActivityManager$MemoryInfo;
    :sswitch_62
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1324
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->unhandledBack()V

    .line 1325
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1326
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1330
    :sswitch_63
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1331
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v97

    .line 1332
    .restart local v97    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->openContentUri(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v214

    .line 1333
    .local v214, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1334
    if-eqz v214, :cond_49

    .line 1335
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1336
    const/4 v6, 0x1

    move-object/from16 v0, v214

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1340
    :goto_42
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1338
    :cond_49
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_42

    .line 1344
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v214    # "pfd":Landroid/os/ParcelFileDescriptor;
    :sswitch_64
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1345
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4a

    const/4 v6, 0x1

    :goto_43
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->setLockScreenShown(Z)V

    .line 1346
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1347
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1345
    :cond_4a
    const/4 v6, 0x0

    goto :goto_43

    .line 1351
    :sswitch_65
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v219

    .line 1353
    .local v219, "pn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4b

    const/4 v0, 0x1

    move/16 v262, v0

    .line 1354
    .local v262, "wfd":Z
    :goto_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4c

    const/16 v211, 0x1

    .line 1355
    .local v211, "per":Z
    :goto_45
    move-object/from16 v0, p0

    move-object/from16 v1, v219

    move/from16 v2, v262

    move/from16 v3, v211

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 1356
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1357
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1353
    .end local v211    # "per":Z
    .end local v262    # "wfd":Z
    :cond_4b
    const/4 v0, 0x0

    move/16 v262, v0

    goto :goto_44

    .line 1354
    .restart local v262    # "wfd":Z
    :cond_4c
    const/16 v211, 0x0

    goto :goto_45

    .line 1361
    .end local v219    # "pn":Ljava/lang/String;
    .end local v262    # "wfd":Z
    :sswitch_66
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4d

    const/16 v167, 0x1

    .line 1363
    .local v167, "enabled":Z
    :goto_46
    move-object/from16 v0, p0

    move/from16 v1, v167

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setAlwaysFinish(Z)V

    .line 1364
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1365
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1362
    .end local v167    # "enabled":Z
    :cond_4d
    const/16 v167, 0x0

    goto :goto_46

    .line 1369
    :sswitch_67
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v0

    move-object/16 v260, v0

    .line 1372
    .local v260, "watcher":Landroid/app/IActivityController;
    move-object/from16 v0, p0

    move-object/from16 v1, v260

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setActivityController(Landroid/app/IActivityController;)V

    .line 1373
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1374
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1378
    .end local v260    # "watcher":Landroid/app/IActivityController;
    :sswitch_68
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1379
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->enterSafeMode()V

    .line 1380
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1381
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1385
    :sswitch_69
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v182

    .line 1388
    .local v182, "is":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v238

    .line 1389
    .local v238, "sourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v237

    .line 1390
    .local v237, "sourcePkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v182

    move/from16 v2, v238

    move-object/from16 v3, v237

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/content/IIntentSender;ILjava/lang/String;)V

    .line 1391
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1392
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1396
    .end local v182    # "is":Landroid/content/IIntentSender;
    .end local v237    # "sourcePkg":Ljava/lang/String;
    .end local v238    # "sourceUid":I
    :sswitch_6a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v216

    .line 1398
    .local v216, "pids":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v225

    .line 1399
    .local v225, "reason":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4e

    const/16 v233, 0x1

    .line 1400
    .local v233, "secure":Z
    :goto_47
    move-object/from16 v0, p0

    move-object/from16 v1, v216

    move-object/from16 v2, v225

    move/from16 v3, v233

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killPids([ILjava/lang/String;Z)Z

    move-result v230

    .line 1401
    .restart local v230    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1402
    if-eqz v230, :cond_4f

    const/4 v6, 0x1

    :goto_48
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1403
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1399
    .end local v230    # "res":Z
    .end local v233    # "secure":Z
    :cond_4e
    const/16 v233, 0x0

    goto :goto_47

    .line 1402
    .restart local v230    # "res":Z
    .restart local v233    # "secure":Z
    :cond_4f
    const/4 v6, 0x0

    goto :goto_48

    .line 1407
    .end local v216    # "pids":[I
    .end local v225    # "reason":Ljava/lang/String;
    .end local v230    # "res":Z
    .end local v233    # "secure":Z
    :sswitch_6b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v225

    .line 1409
    .restart local v225    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->killProcessesBelowForeground(Ljava/lang/String;)Z

    move-result v230

    .line 1410
    .restart local v230    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1411
    if-eqz v230, :cond_50

    const/4 v6, 0x1

    :goto_49
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1412
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1411
    :cond_50
    const/4 v6, 0x0

    goto :goto_49

    .line 1416
    .end local v225    # "reason":Ljava/lang/String;
    .end local v230    # "res":Z
    :sswitch_6c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 1418
    .local v7, "app":Landroid/os/IBinder;
    new-instance v156, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v156

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1419
    .local v156, "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v156

    invoke-virtual {v0, v7, v1}, Landroid/app/ActivityManagerNative;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 1420
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1421
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1425
    .end local v7    # "app":Landroid/os/IBinder;
    .end local v156    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    :sswitch_6d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 1427
    .restart local v7    # "app":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v245

    .line 1428
    .local v245, "tag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_51

    const/16 v244, 0x1

    .line 1429
    .local v244, "system":Z
    :goto_4a
    new-instance v156, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v156

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1430
    .restart local v156    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v245

    move/from16 v2, v244

    move-object/from16 v3, v156

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/ActivityManagerNative;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$CrashInfo;)Z

    move-result v230

    .line 1431
    .restart local v230    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1432
    if-eqz v230, :cond_52

    const/4 v6, 0x1

    :goto_4b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1433
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1428
    .end local v156    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v230    # "res":Z
    .end local v244    # "system":Z
    :cond_51
    const/16 v244, 0x0

    goto :goto_4a

    .line 1432
    .restart local v156    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .restart local v230    # "res":Z
    .restart local v244    # "system":Z
    :cond_52
    const/4 v6, 0x0

    goto :goto_4b

    .line 1437
    .end local v7    # "app":Landroid/os/IBinder;
    .end local v156    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v230    # "res":Z
    .end local v244    # "system":Z
    .end local v245    # "tag":Ljava/lang/String;
    :sswitch_6e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 1439
    .restart local v7    # "app":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v258, v0

    .line 1440
    .local v258, "violationMask":I
    new-instance v180, Landroid/os/StrictMode$ViolationInfo;

    move-object/from16 v0, v180

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;)V

    .line 1441
    .local v180, "info":Landroid/os/StrictMode$ViolationInfo;
    move-object/from16 v0, p0

    move/from16 v1, v258

    move-object/from16 v2, v180

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/ActivityManagerNative;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V

    .line 1442
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1443
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1447
    .end local v7    # "app":Landroid/os/IBinder;
    .end local v180    # "info":Landroid/os/StrictMode$ViolationInfo;
    .end local v258    # "violationMask":I
    :sswitch_6f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1448
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v235

    .line 1449
    .local v235, "sig":I
    move-object/from16 v0, p0

    move/from16 v1, v235

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->signalPersistentProcesses(I)V

    .line 1450
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1451
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1455
    .end local v235    # "sig":I
    :sswitch_70
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1456
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1457
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1458
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killBackgroundProcesses(Ljava/lang/String;I)V

    .line 1459
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1460
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1464
    .end local v17    # "userId":I
    .end local v20    # "packageName":Ljava/lang/String;
    :sswitch_71
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1465
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->killAllBackgroundProcesses()V

    .line 1466
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1467
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1471
    :sswitch_72
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1472
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1473
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1474
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->forceStopPackage(Ljava/lang/String;I)V

    .line 1475
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1476
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1480
    .end local v17    # "userId":I
    .end local v20    # "packageName":Ljava/lang/String;
    :sswitch_73
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1481
    new-instance v180, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct/range {v180 .. v180}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 1483
    .local v180, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v180

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 1484
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1485
    const/4 v6, 0x0

    move-object/from16 v0, v180

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningAppProcessInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1486
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1490
    .end local v180    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :sswitch_74
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1491
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v27

    .line 1492
    .local v27, "config":Landroid/content/pm/ConfigurationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1493
    const/4 v6, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ConfigurationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1494
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1498
    .end local v27    # "config":Landroid/content/pm/ConfigurationInfo;
    :sswitch_75
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v107

    .line 1500
    .local v107, "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1501
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_53

    const/16 v109, 0x1

    .line 1502
    .local v109, "start":Z
    :goto_4c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v111

    .line 1503
    .local v111, "profileType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_54

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProfilerInfo;

    move-object v15, v6

    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_4d
    move-object/from16 v106, p0

    move/from16 v108, v17

    move-object/from16 v110, v15

    .line 1505
    invoke-virtual/range {v106 .. v111}, Landroid/app/ActivityManagerNative;->profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z

    move-result v230

    .line 1506
    .restart local v230    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1507
    if-eqz v230, :cond_55

    const/4 v6, 0x1

    :goto_4e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1508
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1501
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v109    # "start":Z
    .end local v111    # "profileType":I
    .end local v230    # "res":Z
    :cond_53
    const/16 v109, 0x0

    goto :goto_4c

    .line 1503
    .restart local v109    # "start":Z
    .restart local v111    # "profileType":I
    :cond_54
    const/4 v15, 0x0

    goto :goto_4d

    .line 1507
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v230    # "res":Z
    :cond_55
    const/4 v6, 0x0

    goto :goto_4e

    .line 1512
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v17    # "userId":I
    .end local v107    # "process":Ljava/lang/String;
    .end local v109    # "start":Z
    .end local v111    # "profileType":I
    .end local v230    # "res":Z
    :sswitch_76
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1513
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->shutdown(I)Z

    move-result v230

    .line 1514
    .restart local v230    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1515
    if-eqz v230, :cond_56

    const/4 v6, 0x1

    :goto_4f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1516
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1515
    :cond_56
    const/4 v6, 0x0

    goto :goto_4f

    .line 1520
    .end local v230    # "res":Z
    :sswitch_77
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1521
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopAppSwitches()V

    .line 1522
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1523
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1527
    :sswitch_78
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1528
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->resumeAppSwitches()V

    .line 1529
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1530
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1534
    :sswitch_79
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1535
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/content/Intent;

    .line 1536
    .local v67, "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1537
    .restart local v10    # "resolvedType":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1, v10}, Landroid/app/ActivityManagerNative;->peekService(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v152

    .line 1538
    .local v152, "binder":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1539
    move-object/from16 v0, p3

    move-object/from16 v1, v152

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1540
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1544
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v67    # "service":Landroid/content/Intent;
    .end local v152    # "binder":Landroid/os/IBinder;
    :sswitch_7a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1545
    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v180

    check-cast v180, Landroid/content/pm/ApplicationInfo;

    .line 1546
    .local v180, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v151

    .line 1547
    .local v151, "backupRestoreMode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v180

    move/from16 v2, v151

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->bindBackupAgent(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v243

    .line 1548
    .local v243, "success":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1549
    if-eqz v243, :cond_57

    const/4 v6, 0x1

    :goto_50
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1550
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1549
    :cond_57
    const/4 v6, 0x0

    goto :goto_50

    .line 1554
    .end local v151    # "backupRestoreMode":I
    .end local v180    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v243    # "success":Z
    :sswitch_7b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1556
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v144

    .line 1557
    .local v144, "agent":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v144

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1558
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1559
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1563
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v144    # "agent":Landroid/os/IBinder;
    :sswitch_7c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1564
    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v180

    check-cast v180, Landroid/content/pm/ApplicationInfo;

    .line 1565
    .restart local v180    # "info":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v180

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1566
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1567
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1571
    .end local v180    # "info":Landroid/content/pm/ApplicationInfo;
    :sswitch_7d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1572
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1573
    .restart local v20    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->addPackageDependency(Ljava/lang/String;)V

    .line 1574
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1575
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1579
    .end local v20    # "packageName":Ljava/lang/String;
    :sswitch_7e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1580
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v217

    .line 1581
    .local v217, "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v147

    .line 1582
    .local v147, "appid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v225

    .line 1583
    .restart local v225    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v217

    move/from16 v2, v147

    move-object/from16 v3, v225

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killApplicationWithAppId(Ljava/lang/String;ILjava/lang/String;)V

    .line 1584
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1585
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1589
    .end local v147    # "appid":I
    .end local v217    # "pkg":Ljava/lang/String;
    .end local v225    # "reason":Ljava/lang/String;
    :sswitch_7f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1590
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v225

    .line 1591
    .restart local v225    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->closeSystemDialogs(Ljava/lang/String;)V

    .line 1592
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1593
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1597
    .end local v225    # "reason":Ljava/lang/String;
    :sswitch_80
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1598
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v216

    .line 1599
    .restart local v216    # "pids":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v230

    .line 1600
    .local v230, "res":[Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1601
    const/4 v6, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v230

    invoke-virtual {v0, v1, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1602
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1606
    .end local v216    # "pids":[I
    .end local v230    # "res":[Landroid/os/Debug$MemoryInfo;
    :sswitch_81
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1607
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v221

    .line 1608
    .local v221, "processName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v99

    .line 1609
    .restart local v99    # "uid":I
    move-object/from16 v0, p0

    move-object/from16 v1, v221

    move/from16 v2, v99

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationProcess(Ljava/lang/String;I)V

    .line 1610
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1611
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1615
    .end local v99    # "uid":I
    .end local v221    # "processName":Ljava/lang/String;
    :sswitch_82
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1616
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1617
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1618
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v168

    .line 1619
    .local v168, "enterAnim":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v169

    .line 1620
    .local v169, "exitAnim":I
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, v20

    move/from16 v3, v168

    move/from16 v4, v169

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 1621
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1622
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1626
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v168    # "enterAnim":I
    .end local v169    # "exitAnim":I
    :sswitch_83
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1627
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isUserAMonkey()Z

    move-result v148

    .line 1628
    .local v148, "areThey":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1629
    if-eqz v148, :cond_58

    const/4 v6, 0x1

    :goto_51
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1630
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1629
    :cond_58
    const/4 v6, 0x0

    goto :goto_51

    .line 1634
    .end local v148    # "areThey":Z
    :sswitch_84
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1635
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_59

    const/16 v204, 0x1

    .line 1636
    .local v204, "monkey":Z
    :goto_52
    move-object/from16 v0, p0

    move/from16 v1, v204

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setUserIsMonkey(Z)V

    .line 1637
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1638
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1635
    .end local v204    # "monkey":Z
    :cond_59
    const/16 v204, 0x0

    goto :goto_52

    .line 1642
    :sswitch_85
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1643
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->finishHeavyWeightApp()V

    .line 1644
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1645
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1649
    :sswitch_86
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1650
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1651
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isImmersive(Landroid/os/IBinder;)Z

    move-result v187

    .line 1652
    .local v187, "isit":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1653
    if-eqz v187, :cond_5a

    const/4 v6, 0x1

    :goto_53
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1654
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1653
    :cond_5a
    const/4 v6, 0x0

    goto :goto_53

    .line 1658
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v187    # "isit":Z
    :sswitch_87
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1659
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1660
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isTopOfTask(Landroid/os/IBinder;)Z

    move-result v186

    .line 1661
    .local v186, "isTopOfTask":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1662
    if-eqz v186, :cond_5b

    const/4 v6, 0x1

    :goto_54
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1663
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1662
    :cond_5b
    const/4 v6, 0x0

    goto :goto_54

    .line 1667
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v186    # "isTopOfTask":Z
    :sswitch_88
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1668
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1669
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->convertFromTranslucent(Landroid/os/IBinder;)Z

    move-result v159

    .line 1670
    .local v159, "converted":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1671
    if-eqz v159, :cond_5c

    const/4 v6, 0x1

    :goto_55
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1672
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1671
    :cond_5c
    const/4 v6, 0x0

    goto :goto_55

    .line 1676
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v159    # "converted":Z
    :sswitch_89
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1677
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1679
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_5d

    .line 1680
    const/16 v153, 0x0

    .line 1684
    .local v153, "bundle":Landroid/os/Bundle;
    :goto_56
    if-nez v153, :cond_5e

    const/16 v16, 0x0

    .line 1685
    .local v16, "options":Landroid/app/ActivityOptions;
    :goto_57
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->convertToTranslucent(Landroid/os/IBinder;Landroid/app/ActivityOptions;)Z

    move-result v159

    .line 1686
    .restart local v159    # "converted":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1687
    if-eqz v159, :cond_5f

    const/4 v6, 0x1

    :goto_58
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1688
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1682
    .end local v16    # "options":Landroid/app/ActivityOptions;
    .end local v153    # "bundle":Landroid/os/Bundle;
    .end local v159    # "converted":Z
    :cond_5d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v153

    .restart local v153    # "bundle":Landroid/os/Bundle;
    goto :goto_56

    .line 1684
    :cond_5e
    new-instance v16, Landroid/app/ActivityOptions;

    move-object/from16 v0, v16

    move-object/from16 v1, v153

    invoke-direct {v0, v1}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    goto :goto_57

    .line 1687
    .restart local v16    # "options":Landroid/app/ActivityOptions;
    .restart local v159    # "converted":Z
    :cond_5f
    const/4 v6, 0x0

    goto :goto_58

    .line 1692
    .end local v16    # "options":Landroid/app/ActivityOptions;
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v153    # "bundle":Landroid/os/Bundle;
    .end local v159    # "converted":Z
    :sswitch_8a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1693
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1694
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityOptions(Landroid/os/IBinder;)Landroid/app/ActivityOptions;

    move-result-object v16

    .line 1695
    .restart local v16    # "options":Landroid/app/ActivityOptions;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1696
    if-nez v16, :cond_60

    const/4 v6, 0x0

    :goto_59
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1697
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1696
    :cond_60
    invoke-virtual/range {v16 .. v16}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    goto :goto_59

    .line 1701
    .end local v16    # "options":Landroid/app/ActivityOptions;
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_8b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1702
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 1703
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_61

    const/16 v178, 0x1

    .line 1704
    .local v178, "imm":Z
    :goto_5a
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move/from16 v2, v178

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setImmersive(Landroid/os/IBinder;Z)V

    .line 1705
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1706
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1703
    .end local v178    # "imm":Z
    :cond_61
    const/16 v178, 0x0

    goto :goto_5a

    .line 1710
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_8c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1711
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isTopActivityImmersive()Z

    move-result v187

    .line 1712
    .restart local v187    # "isit":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1713
    if-eqz v187, :cond_62

    const/4 v6, 0x1

    :goto_5b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1714
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1713
    :cond_62
    const/4 v6, 0x0

    goto :goto_5b

    .line 1718
    .end local v187    # "isit":Z
    :sswitch_8d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1719
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v99

    .line 1720
    .restart local v99    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v181

    .line 1721
    .local v181, "initialPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1722
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v202

    .line 1723
    .local v202, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v99

    move/from16 v2, v181

    move-object/from16 v3, v20

    move-object/from16 v4, v202

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V

    .line 1724
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1725
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1729
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v99    # "uid":I
    .end local v181    # "initialPid":I
    .end local v202    # "message":Ljava/lang/String;
    :sswitch_8e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1730
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1731
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1732
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v81

    .line 1733
    .local v81, "type":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1734
    move-object/from16 v0, p3

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1735
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1739
    .end local v17    # "userId":I
    .end local v81    # "type":Ljava/lang/String;
    .end local v97    # "uri":Landroid/net/Uri;
    :sswitch_8f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1740
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v94

    .line 1741
    .restart local v94    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v23

    .line 1742
    .local v23, "perm":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1743
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1744
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1748
    .end local v23    # "perm":Landroid/os/IBinder;
    .end local v94    # "name":Ljava/lang/String;
    :sswitch_90
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1749
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v113

    .line 1750
    .local v113, "owner":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v114

    .line 1751
    .local v114, "fromUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v105

    .line 1752
    .restart local v105    # "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1753
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v100

    .line 1754
    .restart local v100    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v118

    .line 1755
    .local v118, "sourceUserId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v119

    .local v119, "targetUserId":I
    move-object/from16 v112, p0

    move-object/from16 v115, v105

    move-object/from16 v116, v97

    move/from16 v117, v100

    .line 1756
    invoke-virtual/range {v112 .. v119}, Landroid/app/ActivityManagerNative;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V

    .line 1758
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1759
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1763
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v100    # "mode":I
    .end local v105    # "targetPkg":Ljava/lang/String;
    .end local v113    # "owner":Landroid/os/IBinder;
    .end local v114    # "fromUid":I
    .end local v118    # "sourceUserId":I
    .end local v119    # "targetUserId":I
    :sswitch_91
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1764
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v113

    .line 1765
    .restart local v113    # "owner":Landroid/os/IBinder;
    const/16 v97, 0x0

    .line 1766
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_63

    .line 1767
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    .end local v97    # "uri":Landroid/net/Uri;
    check-cast v97, Landroid/net/Uri;

    .line 1769
    .restart local v97    # "uri":Landroid/net/Uri;
    :cond_63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v100

    .line 1770
    .restart local v100    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1771
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v113

    move-object/from16 v2, v97

    move/from16 v3, v100

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V

    .line 1772
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1773
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1777
    .end local v17    # "userId":I
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v100    # "mode":I
    .end local v113    # "owner":Landroid/os/IBinder;
    :sswitch_92
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1778
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 1779
    .restart local v41    # "callingUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v105

    .line 1780
    .restart local v105    # "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1781
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v124

    .line 1782
    .local v124, "modeFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v120, p0

    move/from16 v121, v41

    move-object/from16 v122, v105

    move-object/from16 v123, v97

    move/from16 v125, v17

    .line 1783
    invoke-virtual/range {v120 .. v125}, Landroid/app/ActivityManagerNative;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    move-result v230

    .line 1784
    .local v230, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1785
    move-object/from16 v0, p3

    move/from16 v1, v230

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1786
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1790
    .end local v17    # "userId":I
    .end local v41    # "callingUid":I
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v105    # "targetPkg":Ljava/lang/String;
    .end local v124    # "modeFlags":I
    .end local v230    # "res":I
    :sswitch_93
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1791
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v107

    .line 1792
    .restart local v107    # "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1793
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_64

    const/16 v128, 0x1

    .line 1794
    .local v128, "managed":Z
    :goto_5c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v129

    .line 1795
    .local v129, "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_65

    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v130, v6

    .local v130, "fd":Landroid/os/ParcelFileDescriptor;
    :goto_5d
    move-object/from16 v125, p0

    move-object/from16 v126, v107

    move/from16 v127, v17

    .line 1797
    invoke-virtual/range {v125 .. v130}, Landroid/app/ActivityManagerNative;->dumpHeap(Ljava/lang/String;IZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v230

    .line 1798
    .local v230, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1799
    if-eqz v230, :cond_66

    const/4 v6, 0x1

    :goto_5e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1800
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1793
    .end local v128    # "managed":Z
    .end local v129    # "path":Ljava/lang/String;
    .end local v130    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v230    # "res":Z
    :cond_64
    const/16 v128, 0x0

    goto :goto_5c

    .line 1795
    .restart local v128    # "managed":Z
    .restart local v129    # "path":Ljava/lang/String;
    :cond_65
    const/16 v130, 0x0

    goto :goto_5d

    .line 1799
    .restart local v130    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v230    # "res":Z
    :cond_66
    const/4 v6, 0x0

    goto :goto_5e

    .line 1805
    .end local v17    # "userId":I
    .end local v107    # "process":Ljava/lang/String;
    .end local v128    # "managed":Z
    .end local v129    # "path":Ljava/lang/String;
    .end local v130    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v230    # "res":Z
    :sswitch_94
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1806
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v150

    .line 1807
    .restart local v150    # "b":Landroid/os/IBinder;
    invoke-static/range {v150 .. v150}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1808
    .local v7, "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1809
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v134

    check-cast v134, [Landroid/content/Intent;

    .line 1810
    .local v134, "intents":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v135

    .line 1811
    .local v135, "resolvedTypes":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 1812
    .local v11, "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_67

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 1814
    .local v16, "options":Landroid/os/Bundle;
    :goto_5f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v131, p0

    move-object/from16 v132, v7

    move-object/from16 v133, v8

    move-object/from16 v136, v11

    move-object/from16 v137, v16

    move/from16 v138, v17

    .line 1815
    invoke-virtual/range {v131 .. v138}, Landroid/app/ActivityManagerNative;->startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v229

    .line 1817
    .restart local v229    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1818
    move-object/from16 v0, p3

    move/from16 v1, v229

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1819
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1812
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v229    # "result":I
    :cond_67
    const/16 v16, 0x0

    goto :goto_5f

    .line 1824
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v134    # "intents":[Landroid/content/Intent;
    .end local v135    # "resolvedTypes":[Ljava/lang/String;
    .end local v150    # "b":Landroid/os/IBinder;
    :sswitch_95
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1825
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getFrontActivityScreenCompatMode()I

    move-result v100

    .line 1826
    .restart local v100    # "mode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1827
    move-object/from16 v0, p3

    move/from16 v1, v100

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1828
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1833
    .end local v100    # "mode":I
    :sswitch_96
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1834
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v100

    .line 1835
    .restart local v100    # "mode":I
    move-object/from16 v0, p0

    move/from16 v1, v100

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFrontActivityScreenCompatMode(I)V

    .line 1836
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1837
    move-object/from16 v0, p3

    move/from16 v1, v100

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1838
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1843
    .end local v100    # "mode":I
    :sswitch_97
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1844
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v217

    .line 1845
    .restart local v217    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v217

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v100

    .line 1846
    .restart local v100    # "mode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1847
    move-object/from16 v0, p3

    move/from16 v1, v100

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1848
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1853
    .end local v100    # "mode":I
    .end local v217    # "pkg":Ljava/lang/String;
    :sswitch_98
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1854
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v217

    .line 1855
    .restart local v217    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v100

    .line 1856
    .restart local v100    # "mode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v217

    move/from16 v2, v100

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    .line 1857
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1858
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1862
    .end local v100    # "mode":I
    .end local v217    # "pkg":Ljava/lang/String;
    :sswitch_99
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1863
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v255

    .line 1864
    .local v255, "userid":I
    move-object/from16 v0, p0

    move/from16 v1, v255

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->switchUser(I)Z

    move-result v229

    .line 1865
    .local v229, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1866
    if-eqz v229, :cond_68

    const/4 v6, 0x1

    :goto_60
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1867
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1866
    :cond_68
    const/4 v6, 0x0

    goto :goto_60

    .line 1871
    .end local v229    # "result":Z
    .end local v255    # "userid":I
    :sswitch_9a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1872
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v255

    .line 1873
    .restart local v255    # "userid":I
    move-object/from16 v0, p0

    move/from16 v1, v255

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startUserInBackground(I)Z

    move-result v229

    .line 1874
    .restart local v229    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1875
    if-eqz v229, :cond_69

    const/4 v6, 0x1

    :goto_61
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1876
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1875
    :cond_69
    const/4 v6, 0x0

    goto :goto_61

    .line 1880
    .end local v229    # "result":Z
    .end local v255    # "userid":I
    :sswitch_9b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1881
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v255

    .line 1882
    .restart local v255    # "userid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    move-result-object v154

    .line 1884
    .local v154, "callback":Landroid/app/IStopUserCallback;
    move-object/from16 v0, p0

    move/from16 v1, v255

    move-object/from16 v2, v154

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->stopUser(ILandroid/app/IStopUserCallback;)I

    move-result v229

    .line 1885
    .local v229, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1886
    move-object/from16 v0, p3

    move/from16 v1, v229

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1887
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1891
    .end local v154    # "callback":Landroid/app/IStopUserCallback;
    .end local v229    # "result":I
    .end local v255    # "userid":I
    :sswitch_9c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1892
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v254

    .line 1893
    .local v254, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1894
    const/4 v6, 0x0

    move-object/from16 v0, v254

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1895
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1899
    .end local v254    # "userInfo":Landroid/content/pm/UserInfo;
    :sswitch_9d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1900
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v255

    .line 1901
    .restart local v255    # "userid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6a

    const/16 v209, 0x1

    .line 1902
    .local v209, "orStopping":Z
    :goto_62
    move-object/from16 v0, p0

    move/from16 v1, v255

    move/from16 v2, v209

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->isUserRunning(IZ)Z

    move-result v229

    .line 1903
    .local v229, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1904
    if-eqz v229, :cond_6b

    const/4 v6, 0x1

    :goto_63
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1905
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1901
    .end local v209    # "orStopping":Z
    .end local v229    # "result":Z
    :cond_6a
    const/16 v209, 0x0

    goto :goto_62

    .line 1904
    .restart local v209    # "orStopping":Z
    .restart local v229    # "result":Z
    :cond_6b
    const/4 v6, 0x0

    goto :goto_63

    .line 1909
    .end local v209    # "orStopping":Z
    .end local v229    # "result":Z
    .end local v255    # "userid":I
    :sswitch_9e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1910
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningUserIds()[I

    move-result-object v229

    .line 1911
    .local v229, "result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1912
    move-object/from16 v0, p3

    move-object/from16 v1, v229

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1913
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1918
    .end local v229    # "result":[I
    :sswitch_9f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1919
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v248

    .line 1920
    .restart local v248    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v248

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->removeTask(I)Z

    move-result v229

    .line 1921
    .local v229, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1922
    if-eqz v229, :cond_6c

    const/4 v6, 0x1

    :goto_64
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1923
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1922
    :cond_6c
    const/4 v6, 0x0

    goto :goto_64

    .line 1928
    .end local v229    # "result":Z
    .end local v248    # "taskId":I
    :sswitch_a0
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1929
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v248

    .line 1930
    .restart local v248    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v173

    .line 1931
    .local v173, "flag":I
    move-object/from16 v0, p0

    move/from16 v1, v248

    move/from16 v2, v173

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeTask(II)Z

    move-result v229

    .line 1932
    .restart local v229    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1933
    if-eqz v229, :cond_6d

    const/4 v6, 0x1

    :goto_65
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1934
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1933
    :cond_6d
    const/4 v6, 0x0

    goto :goto_65

    .line 1938
    .end local v173    # "flag":I
    .end local v229    # "result":Z
    .end local v248    # "taskId":I
    :sswitch_a1
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1939
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v207

    .line 1941
    .local v207, "observer":Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v207

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 1942
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1946
    .end local v207    # "observer":Landroid/app/IProcessObserver;
    :sswitch_a2
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1947
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v207

    .line 1949
    .restart local v207    # "observer":Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v207

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 1950
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1955
    .end local v207    # "observer":Landroid/app/IProcessObserver;
    :sswitch_a3
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1956
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v217

    .line 1957
    .restart local v217    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v217

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result v149

    .line 1958
    .local v149, "ask":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1959
    if-eqz v149, :cond_6e

    const/4 v6, 0x1

    :goto_66
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1960
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1959
    :cond_6e
    const/4 v6, 0x0

    goto :goto_66

    .line 1965
    .end local v149    # "ask":Z
    .end local v217    # "pkg":Ljava/lang/String;
    :sswitch_a4
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1966
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v217

    .line 1967
    .restart local v217    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6f

    const/16 v149, 0x1

    .line 1968
    .restart local v149    # "ask":Z
    :goto_67
    move-object/from16 v0, p0

    move-object/from16 v1, v217

    move/from16 v2, v149

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 1969
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1970
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1967
    .end local v149    # "ask":Z
    :cond_6f
    const/16 v149, 0x0

    goto :goto_67

    .line 1974
    .end local v217    # "pkg":Ljava/lang/String;
    :sswitch_a5
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1975
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v224

    .line 1977
    .restart local v224    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v224

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z

    move-result v230

    .line 1978
    .restart local v230    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1979
    if-eqz v230, :cond_70

    const/4 v6, 0x1

    :goto_68
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1980
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1979
    :cond_70
    const/4 v6, 0x0

    goto :goto_68

    .line 1984
    .end local v224    # "r":Landroid/content/IIntentSender;
    .end local v230    # "res":Z
    :sswitch_a6
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1985
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v224

    .line 1987
    .restart local v224    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v224

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z

    move-result v230

    .line 1988
    .restart local v230    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1989
    if-eqz v230, :cond_71

    const/4 v6, 0x1

    :goto_69
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1990
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1989
    :cond_71
    const/4 v6, 0x0

    goto :goto_69

    .line 1994
    .end local v224    # "r":Landroid/content/IIntentSender;
    .end local v230    # "res":Z
    :sswitch_a7
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1995
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v224

    .line 1997
    .restart local v224    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v224

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object v9

    .line 1998
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1999
    if-eqz v9, :cond_72

    .line 2000
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2001
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2005
    :goto_6a
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2003
    :cond_72
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6a

    .line 2009
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v224    # "r":Landroid/content/IIntentSender;
    :sswitch_a8
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2010
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v224

    .line 2012
    .restart local v224    # "r":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v220

    .line 2013
    .local v220, "prefix":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v224

    move-object/from16 v2, v220

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTagForIntentSender(Landroid/content/IIntentSender;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v245

    .line 2014
    .restart local v245    # "tag":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2015
    move-object/from16 v0, p3

    move-object/from16 v1, v245

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2016
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2020
    .end local v220    # "prefix":Ljava/lang/String;
    .end local v224    # "r":Landroid/content/IIntentSender;
    .end local v245    # "tag":Ljava/lang/String;
    :sswitch_a9
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2021
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/res/Configuration;

    .line 2022
    .local v27, "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 2023
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2024
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2028
    .end local v27    # "config":Landroid/content/res/Configuration;
    :sswitch_aa
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2029
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v216

    .line 2030
    .restart local v216    # "pids":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessPss([I)[J

    move-result-object v223

    .line 2031
    .local v223, "pss":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2032
    move-object/from16 v0, p3

    move-object/from16 v1, v223

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 2033
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2037
    .end local v216    # "pids":[I
    .end local v223    # "pss":[J
    :sswitch_ab
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2038
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v205

    check-cast v205, Ljava/lang/CharSequence;

    .line 2039
    .local v205, "msg":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_73

    const/16 v146, 0x1

    .line 2040
    .local v146, "always":Z
    :goto_6b
    move-object/from16 v0, p0

    move-object/from16 v1, v205

    move/from16 v2, v146

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 2041
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2042
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2039
    .end local v146    # "always":Z
    :cond_73
    const/16 v146, 0x0

    goto :goto_6b

    .line 2046
    .end local v205    # "msg":Ljava/lang/CharSequence;
    :sswitch_ac
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2047
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->keyguardWaitingForActivityDrawn()V

    .line 2048
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2049
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2053
    :sswitch_ad
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2054
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2055
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v163

    .line 2056
    .local v163, "destAffinity":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, v163

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v230

    .line 2057
    .restart local v230    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2058
    if-eqz v230, :cond_74

    const/4 v6, 0x1

    :goto_6c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2059
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2058
    :cond_74
    const/4 v6, 0x0

    goto :goto_6c

    .line 2063
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v163    # "destAffinity":Ljava/lang/String;
    .end local v230    # "res":Z
    :sswitch_ae
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2064
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2065
    .restart local v60    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v246

    check-cast v246, Landroid/content/Intent;

    .line 2066
    .local v246, "target":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v51

    .line 2067
    .restart local v51    # "resultCode":I
    const/16 v52, 0x0

    .line 2068
    .local v52, "resultData":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_75

    .line 2069
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v52

    .end local v52    # "resultData":Landroid/content/Intent;
    check-cast v52, Landroid/content/Intent;

    .line 2071
    .restart local v52    # "resultData":Landroid/content/Intent;
    :cond_75
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, v246

    move/from16 v3, v51

    move-object/from16 v4, v52

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z

    move-result v230

    .line 2072
    .restart local v230    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2073
    if-eqz v230, :cond_76

    const/4 v6, 0x1

    :goto_6d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2074
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2073
    :cond_76
    const/4 v6, 0x0

    goto :goto_6d

    .line 2078
    .end local v51    # "resultCode":I
    .end local v52    # "resultData":Landroid/content/Intent;
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v230    # "res":Z
    .end local v246    # "target":Landroid/content/Intent;
    :sswitch_af
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2079
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2080
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v230

    .line 2081
    .local v230, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2082
    move-object/from16 v0, p3

    move/from16 v1, v230

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2083
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2087
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v230    # "res":I
    :sswitch_b0
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2088
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2089
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v230

    .line 2090
    .local v230, "res":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2091
    move-object/from16 v0, p3

    move-object/from16 v1, v230

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2092
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2096
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v230    # "res":Ljava/lang/String;
    :sswitch_b1
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2097
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v207

    .line 2099
    .local v207, "observer":Landroid/app/IUserSwitchObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v207

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 2100
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2101
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2105
    .end local v207    # "observer":Landroid/app/IUserSwitchObserver;
    :sswitch_b2
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v207

    .line 2108
    .restart local v207    # "observer":Landroid/app/IUserSwitchObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v207

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 2109
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2110
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2114
    .end local v207    # "observer":Landroid/app/IUserSwitchObserver;
    :sswitch_b3
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2115
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->requestBugReport()V

    .line 2116
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2117
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2121
    :sswitch_b4
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 2123
    .restart local v98    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_77

    const/16 v140, 0x1

    .line 2124
    .local v140, "aboveSystem":Z
    :goto_6e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v225

    .line 2125
    .restart local v225    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v98

    move/from16 v2, v140

    move-object/from16 v3, v225

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    move-result-wide v230

    .line 2126
    .local v230, "res":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2127
    move-object/from16 v0, p3

    move-wide/from16 v1, v230

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2128
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2123
    .end local v140    # "aboveSystem":Z
    .end local v225    # "reason":Ljava/lang/String;
    .end local v230    # "res":J
    :cond_77
    const/16 v140, 0x0

    goto :goto_6e

    .line 2132
    .end local v98    # "pid":I
    :sswitch_b5
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v227

    .line 2134
    .local v227, "requestType":I
    move-object/from16 v0, p0

    move/from16 v1, v227

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getAssistContextExtras(I)Landroid/os/Bundle;

    move-result-object v230

    .line 2135
    .local v230, "res":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2136
    move-object/from16 v0, p3

    move-object/from16 v1, v230

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2137
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2141
    .end local v227    # "requestType":I
    .end local v230    # "res":Landroid/os/Bundle;
    :sswitch_b6
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2143
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v170

    .line 2144
    .local v170, "extras":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, v170

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 2145
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2146
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2150
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v170    # "extras":Landroid/os/Bundle;
    :sswitch_b7
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2151
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 2152
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v227

    .line 2153
    .restart local v227    # "requestType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v174

    .line 2154
    .local v174, "hint":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v253

    .line 2155
    .local v253, "userHandle":I
    move-object/from16 v0, p0

    move/from16 v1, v227

    move-object/from16 v2, v174

    move/from16 v3, v253

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/app/ActivityManagerNative;->launchAssistIntent(Landroid/content/Intent;ILjava/lang/String;I)Z

    move-result v230

    .line 2156
    .local v230, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2157
    if-eqz v230, :cond_78

    const/4 v6, 0x1

    :goto_6f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2158
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2157
    :cond_78
    const/4 v6, 0x0

    goto :goto_6f

    .line 2162
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v174    # "hint":Ljava/lang/String;
    .end local v227    # "requestType":I
    .end local v230    # "res":Z
    .end local v253    # "userHandle":I
    :sswitch_b8
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v99

    .line 2164
    .restart local v99    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v225

    .line 2165
    .restart local v225    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v99

    move-object/from16 v2, v225

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killUid(ILjava/lang/String;)V

    .line 2166
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2167
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2171
    .end local v99    # "uid":I
    .end local v225    # "reason":Ljava/lang/String;
    :sswitch_b9
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 2173
    .restart local v50    # "who":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_79

    const/16 v145, 0x1

    .line 2174
    .local v145, "allowRestart":Z
    :goto_70
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v145

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->hang(Landroid/os/IBinder;Z)V

    .line 2175
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2176
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2173
    .end local v145    # "allowRestart":Z
    :cond_79
    const/16 v145, 0x0

    goto :goto_70

    .line 2180
    .end local v50    # "who":Landroid/os/IBinder;
    :sswitch_ba
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2182
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->reportActivityFullyDrawn(Landroid/os/IBinder;)V

    .line 2183
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2184
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2188
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_bb
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2190
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyActivityDrawn(Landroid/os/IBinder;)V

    .line 2191
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2192
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2196
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_bc
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2197
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->restart()V

    .line 2198
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2199
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2203
    :sswitch_bd
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2204
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->performIdleMaintenance()V

    .line 2205
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2206
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2210
    :sswitch_be
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v210

    .line 2212
    .local v210, "parentActivityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IActivityContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityContainerCallback;

    move-result-object v154

    .line 2214
    .local v154, "callback":Landroid/app/IActivityContainerCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v210

    move-object/from16 v2, v154

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->createActivityContainer(Landroid/os/IBinder;Landroid/app/IActivityContainerCallback;)Landroid/app/IActivityContainer;

    move-result-object v142

    .line 2216
    .local v142, "activityContainer":Landroid/app/IActivityContainer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2217
    if-eqz v142, :cond_7a

    .line 2218
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2219
    invoke-interface/range {v142 .. v142}, Landroid/app/IActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2223
    :goto_71
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2221
    :cond_7a
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_71

    .line 2227
    .end local v142    # "activityContainer":Landroid/app/IActivityContainer;
    .end local v154    # "callback":Landroid/app/IActivityContainerCallback;
    .end local v210    # "parentActivityToken":Landroid/os/IBinder;
    :sswitch_bf
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IActivityContainer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityContainer;

    move-result-object v142

    .line 2230
    .restart local v142    # "activityContainer":Landroid/app/IActivityContainer;
    move-object/from16 v0, p0

    move-object/from16 v1, v142

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->deleteActivityContainer(Landroid/app/IActivityContainer;)V

    .line 2231
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2232
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2236
    .end local v142    # "activityContainer":Landroid/app/IActivityContainer;
    :sswitch_c0
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v143

    .line 2238
    .restart local v143    # "activityToken":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v143

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityDisplayId(Landroid/os/IBinder;)I

    move-result v164

    .line 2239
    .local v164, "displayId":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2240
    move-object/from16 v0, p3

    move/from16 v1, v164

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2241
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2245
    .end local v143    # "activityToken":Landroid/os/IBinder;
    .end local v164    # "displayId":I
    :sswitch_c1
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2246
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getHomeActivityToken()Landroid/os/IBinder;

    move-result-object v175

    .line 2247
    .local v175, "homeActivityToken":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2248
    move-object/from16 v0, p3

    move-object/from16 v1, v175

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2249
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2253
    .end local v175    # "homeActivityToken":Landroid/os/IBinder;
    :sswitch_c2
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v248

    .line 2255
    .restart local v248    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v248

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startLockTaskMode(I)V

    .line 2256
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2257
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2261
    .end local v248    # "taskId":I
    :sswitch_c3
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2263
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startLockTaskMode(Landroid/os/IBinder;)V

    .line 2264
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2265
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2269
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_c4
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2270
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->startLockTaskModeOnCurrent()V

    .line 2271
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2272
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2276
    :sswitch_c5
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2277
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopLockTaskMode()V

    .line 2278
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2279
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2283
    :sswitch_c6
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2284
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopLockTaskModeOnCurrent()V

    .line 2285
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2286
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2290
    :sswitch_c7
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2291
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isInLockTaskMode()Z

    move-result v185

    .line 2292
    .local v185, "isInLockTaskMode":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2293
    if-eqz v185, :cond_7b

    const/4 v6, 0x1

    :goto_72
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2294
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2293
    :cond_7b
    const/4 v6, 0x0

    goto :goto_72

    .line 2298
    .end local v185    # "isInLockTaskMode":Z
    :sswitch_c8
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2300
    .restart local v60    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v257, v0

    move-object/from16 v0, v257

    check-cast v0, Landroid/app/ActivityManager$TaskDescription;

    move-object/16 v257, v0

    .line 2302
    .local v257, "values":Landroid/app/ActivityManager$TaskDescription;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move-object/from16 v2, v257

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V

    .line 2303
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2304
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2308
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v257    # "values":Landroid/app/ActivityManager$TaskDescription;
    :sswitch_c9
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2309
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v171

    .line 2310
    .local v171, "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v171

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v177

    .line 2311
    .local v177, "icon":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2312
    if-nez v177, :cond_7c

    .line 2313
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2318
    :goto_73
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2315
    :cond_7c
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2316
    const/4 v6, 0x0

    move-object/from16 v0, v177

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_73

    .line 2322
    .end local v171    # "filename":Ljava/lang/String;
    .end local v177    # "icon":Landroid/graphics/Bitmap;
    :sswitch_ca
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_7d

    .line 2325
    const/16 v153, 0x0

    .line 2329
    .restart local v153    # "bundle":Landroid/os/Bundle;
    :goto_74
    if-nez v153, :cond_7e

    const/16 v16, 0x0

    .line 2330
    .local v16, "options":Landroid/app/ActivityOptions;
    :goto_75
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    .line 2331
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2332
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2327
    .end local v16    # "options":Landroid/app/ActivityOptions;
    .end local v153    # "bundle":Landroid/os/Bundle;
    :cond_7d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v153

    .restart local v153    # "bundle":Landroid/os/Bundle;
    goto :goto_74

    .line 2329
    :cond_7e
    new-instance v16, Landroid/app/ActivityOptions;

    move-object/from16 v0, v16

    move-object/from16 v1, v153

    invoke-direct {v0, v1}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    goto :goto_75

    .line 2336
    .end local v153    # "bundle":Landroid/os/Bundle;
    :sswitch_cb
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2337
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2338
    .restart local v60    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-lez v6, :cond_7f

    const/16 v166, 0x1

    .line 2339
    .local v166, "enable":Z
    :goto_76
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    move/from16 v2, v166

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->requestVisibleBehind(Landroid/os/IBinder;Z)Z

    move-result v243

    .line 2340
    .restart local v243    # "success":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2341
    if-eqz v243, :cond_80

    const/4 v6, 0x1

    :goto_77
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2342
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2338
    .end local v166    # "enable":Z
    .end local v243    # "success":Z
    :cond_7f
    const/16 v166, 0x0

    goto :goto_76

    .line 2341
    .restart local v166    # "enable":Z
    .restart local v243    # "success":Z
    :cond_80
    const/4 v6, 0x0

    goto :goto_77

    .line 2346
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v166    # "enable":Z
    .end local v243    # "success":Z
    :sswitch_cc
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2348
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isBackgroundVisibleBehind(Landroid/os/IBinder;)Z

    move-result v167

    .line 2349
    .restart local v167    # "enabled":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2350
    if-eqz v167, :cond_81

    const/4 v6, 0x1

    :goto_78
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2351
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2350
    :cond_81
    const/4 v6, 0x0

    goto :goto_78

    .line 2355
    .end local v60    # "token":Landroid/os/IBinder;
    .end local v167    # "enabled":Z
    :sswitch_cd
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2356
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2357
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->backgroundResourcesReleased(Landroid/os/IBinder;)V

    .line 2358
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2359
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2363
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_ce
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2365
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyLaunchTaskBehindComplete(Landroid/os/IBinder;)V

    .line 2366
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2367
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2371
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_cf
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 2373
    .restart local v60    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyEnterAnimationComplete(Landroid/os/IBinder;)V

    .line 2374
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2375
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2379
    .end local v60    # "token":Landroid/os/IBinder;
    :sswitch_d0
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2380
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->bootAnimationComplete()V

    .line 2381
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2382
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2386
    :sswitch_d1
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2387
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->systemBackupRestored()V

    .line 2388
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2389
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2395
    :sswitch_d2
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2396
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v218

    .line 2397
    .local v218, "pkgName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_82

    const/16 v234, 0x1

    .line 2398
    .local v234, "set":Z
    :goto_79
    move-object/from16 v0, p0

    move-object/from16 v1, v218

    move/from16 v2, v234

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPersistentForce(Ljava/lang/String;Z)V

    .line 2399
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2400
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2397
    .end local v234    # "set":Z
    :cond_82
    const/16 v234, 0x0

    goto :goto_79

    .line 2406
    .end local v218    # "pkgName":Ljava/lang/String;
    :sswitch_d3
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2407
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/lenovo/datamining/avatar/system/ISystemCollectorListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/datamining/avatar/system/ISystemCollectorListener;

    move-result-object v207

    .line 2411
    .local v207, "observer":Lcom/lenovo/datamining/avatar/system/ISystemCollectorListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v207

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerSystemCollectorListener(Lcom/lenovo/datamining/avatar/system/ISystemCollectorListener;)V

    .line 2412
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2413
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2417
    .end local v207    # "observer":Lcom/lenovo/datamining/avatar/system/ISystemCollectorListener;
    :sswitch_d4
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2419
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v141

    .line 2420
    .local v141, "action":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v188

    .line 2421
    .local v188, "label":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v256, v0

    .line 2422
    .local v256, "value":I
    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v198

    check-cast v198, Lcom/lenovo/datamining/avatar/api/LocalParamMap;

    .line 2425
    .local v198, "localParams":Lcom/lenovo/datamining/avatar/api/LocalParamMap;
    move-object/from16 v0, p0

    move-object/from16 v1, v141

    move-object/from16 v2, v188

    move/from16 v3, v256

    move-object/from16 v4, v198

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->notifyPhoneEvent(Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/datamining/avatar/api/LocalParamMap;)V

    .line 2426
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2427
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 123
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_6c
        0x3 -> :sswitch_1
        0x4 -> :sswitch_62
        0x5 -> :sswitch_63
        0xb -> :sswitch_a
        0xc -> :sswitch_11
        0xd -> :sswitch_12
        0xe -> :sswitch_13
        0xf -> :sswitch_14
        0x10 -> :sswitch_15
        0x11 -> :sswitch_16
        0x12 -> :sswitch_17
        0x13 -> :sswitch_19
        0x14 -> :sswitch_1a
        0x15 -> :sswitch_1d
        0x16 -> :sswitch_1e
        0x17 -> :sswitch_22
        0x18 -> :sswitch_29
        0x19 -> :sswitch_2a
        0x1a -> :sswitch_2c
        0x1b -> :sswitch_34
        0x1d -> :sswitch_35
        0x1e -> :sswitch_37
        0x1f -> :sswitch_38
        0x20 -> :sswitch_b
        0x21 -> :sswitch_3d
        0x22 -> :sswitch_3e
        0x23 -> :sswitch_3f
        0x24 -> :sswitch_42
        0x25 -> :sswitch_43
        0x26 -> :sswitch_44
        0x27 -> :sswitch_18
        0x2a -> :sswitch_65
        0x2b -> :sswitch_66
        0x2c -> :sswitch_47
        0x2d -> :sswitch_48
        0x2e -> :sswitch_49
        0x2f -> :sswitch_4a
        0x30 -> :sswitch_40
        0x31 -> :sswitch_4d
        0x32 -> :sswitch_4e
        0x33 -> :sswitch_54
        0x34 -> :sswitch_55
        0x35 -> :sswitch_57
        0x36 -> :sswitch_59
        0x37 -> :sswitch_5b
        0x38 -> :sswitch_5c
        0x39 -> :sswitch_67
        0x3a -> :sswitch_60
        0x3b -> :sswitch_6f
        0x3c -> :sswitch_23
        0x3d -> :sswitch_46
        0x3e -> :sswitch_1c
        0x3f -> :sswitch_4f
        0x40 -> :sswitch_50
        0x41 -> :sswitch_51
        0x42 -> :sswitch_68
        0x43 -> :sswitch_8
        0x44 -> :sswitch_69
        0x45 -> :sswitch_3b
        0x46 -> :sswitch_4b
        0x47 -> :sswitch_4c
        0x48 -> :sswitch_45
        0x49 -> :sswitch_56
        0x4a -> :sswitch_41
        0x4b -> :sswitch_2b
        0x4c -> :sswitch_61
        0x4d -> :sswitch_26
        0x4e -> :sswitch_5a
        0x4f -> :sswitch_72
        0x50 -> :sswitch_6a
        0x51 -> :sswitch_25
        0x52 -> :sswitch_24
        0x53 -> :sswitch_27
        0x54 -> :sswitch_74
        0x55 -> :sswitch_79
        0x56 -> :sswitch_75
        0x57 -> :sswitch_76
        0x58 -> :sswitch_77
        0x59 -> :sswitch_78
        0x5a -> :sswitch_7a
        0x5b -> :sswitch_7b
        0x5c -> :sswitch_7c
        0x5d -> :sswitch_52
        0x5e -> :sswitch_53
        0x5f -> :sswitch_7d
        0x60 -> :sswitch_7e
        0x61 -> :sswitch_7f
        0x62 -> :sswitch_80
        0x63 -> :sswitch_81
        0x64 -> :sswitch_6
        0x65 -> :sswitch_82
        0x66 -> :sswitch_6d
        0x67 -> :sswitch_70
        0x68 -> :sswitch_83
        0x69 -> :sswitch_4
        0x6a -> :sswitch_10
        0x6b -> :sswitch_5
        0x6c -> :sswitch_28
        0x6d -> :sswitch_85
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_86
        0x70 -> :sswitch_8b
        0x71 -> :sswitch_8c
        0x72 -> :sswitch_8d
        0x73 -> :sswitch_8e
        0x74 -> :sswitch_8f
        0x75 -> :sswitch_90
        0x76 -> :sswitch_91
        0x77 -> :sswitch_92
        0x78 -> :sswitch_93
        0x79 -> :sswitch_94
        0x7a -> :sswitch_9d
        0x7b -> :sswitch_1b
        0x7c -> :sswitch_95
        0x7d -> :sswitch_96
        0x7e -> :sswitch_97
        0x7f -> :sswitch_98
        0x80 -> :sswitch_a3
        0x81 -> :sswitch_a4
        0x82 -> :sswitch_99
        0x84 -> :sswitch_9f
        0x85 -> :sswitch_a1
        0x86 -> :sswitch_a2
        0x87 -> :sswitch_a5
        0x88 -> :sswitch_a9
        0x89 -> :sswitch_aa
        0x8a -> :sswitch_ab
        0x8c -> :sswitch_71
        0x8d -> :sswitch_36
        0x8e -> :sswitch_3c
        0x8f -> :sswitch_73
        0x90 -> :sswitch_6b
        0x91 -> :sswitch_9c
        0x92 -> :sswitch_ad
        0x93 -> :sswitch_ae
        0x94 -> :sswitch_64
        0x95 -> :sswitch_c
        0x96 -> :sswitch_af
        0x97 -> :sswitch_39
        0x98 -> :sswitch_a6
        0x99 -> :sswitch_2
        0x9a -> :sswitch_9b
        0x9b -> :sswitch_b1
        0x9c -> :sswitch_b2
        0x9d -> :sswitch_9e
        0x9e -> :sswitch_b3
        0x9f -> :sswitch_b4
        0xa1 -> :sswitch_a7
        0xa2 -> :sswitch_b5
        0xa3 -> :sswitch_b6
        0xa4 -> :sswitch_b0
        0xa5 -> :sswitch_b8
        0xa6 -> :sswitch_84
        0xa7 -> :sswitch_b9
        0xa8 -> :sswitch_be
        0xa9 -> :sswitch_2d
        0xaa -> :sswitch_2e
        0xab -> :sswitch_2f
        0xac -> :sswitch_32
        0xad -> :sswitch_30
        0xae -> :sswitch_88
        0xaf -> :sswitch_89
        0xb0 -> :sswitch_bb
        0xb1 -> :sswitch_ba
        0xb2 -> :sswitch_bc
        0xb3 -> :sswitch_bd
        0xb4 -> :sswitch_5d
        0xb5 -> :sswitch_5e
        0xb6 -> :sswitch_5f
        0xb7 -> :sswitch_3a
        0xb8 -> :sswitch_c1
        0xb9 -> :sswitch_c0
        0xba -> :sswitch_bf
        0xd3 -> :sswitch_a8
        0xd4 -> :sswitch_9a
        0xd5 -> :sswitch_31
        0xd6 -> :sswitch_c2
        0xd7 -> :sswitch_c3
        0xd8 -> :sswitch_c5
        0xd9 -> :sswitch_c7
        0xda -> :sswitch_c8
        0xdb -> :sswitch_7
        0xdc -> :sswitch_8a
        0xdd -> :sswitch_1f
        0xde -> :sswitch_c4
        0xdf -> :sswitch_c6
        0xe0 -> :sswitch_d
        0xe1 -> :sswitch_87
        0xe2 -> :sswitch_cb
        0xe3 -> :sswitch_cc
        0xe4 -> :sswitch_cd
        0xe5 -> :sswitch_ce
        0xe6 -> :sswitch_9
        0xe7 -> :sswitch_cf
        0xe8 -> :sswitch_ac
        0xe9 -> :sswitch_3
        0xea -> :sswitch_20
        0xeb -> :sswitch_21
        0xec -> :sswitch_e
        0xed -> :sswitch_f
        0xee -> :sswitch_d0
        0xef -> :sswitch_c9
        0xf0 -> :sswitch_b7
        0xf1 -> :sswitch_ca
        0xf2 -> :sswitch_58
        0xf3 -> :sswitch_33
        0xf4 -> :sswitch_d1
        0x134 -> :sswitch_d2
        0xfa2 -> :sswitch_0
        0x138a -> :sswitch_d3
        0x138b -> :sswitch_d4
        0x1772 -> :sswitch_a0
    .end sparse-switch
.end method
