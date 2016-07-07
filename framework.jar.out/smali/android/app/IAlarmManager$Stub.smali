.class public abstract Landroid/app/IAlarmManager$Stub;
.super Landroid/os/Binder;
.source "IAlarmManager.java"

# interfaces
.implements Landroid/app/IAlarmManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IAlarmManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IAlarmManager"

.field static final TRANSACTION_getNextAlarmClock:I = 0x5

.field static final TRANSACTION_getStatsBundle:I = 0x8

.field static final TRANSACTION_remove:I = 0x4

.field static final TRANSACTION_set:I = 0x1

.field static final TRANSACTION_setHeartBeatAdjustEnable:I = 0x7

.field static final TRANSACTION_setTime:I = 0x2

.field static final TRANSACTION_setTimeZone:I = 0x3

.field static final TRANSACTION_updateBlockedUids:I = 0x6

.field static final TRANSACTION_updatePolicyBundle:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IAlarmManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const-string v1, "android.app.IAlarmManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IAlarmManager;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Landroid/app/IAlarmManager;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Landroid/app/IAlarmManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/IAlarmManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
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
    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 190
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 48
    :sswitch_0
    const-string v2, "android.app.IAlarmManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    const/4 v2, 0x1

    goto :goto_0

    .line 53
    :sswitch_1
    const-string v2, "android.app.IAlarmManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 57
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 59
    .local v4, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 61
    .local v6, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 63
    .local v8, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .line 70
    .local v10, "_arg4":Landroid/app/PendingIntent;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    sget-object v2, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/WorkSource;

    .line 77
    .local v11, "_arg5":Landroid/os/WorkSource;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 78
    sget-object v2, Landroid/app/AlarmManager$AlarmClockInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AlarmManager$AlarmClockInfo;

    .local v12, "_arg6":Landroid/app/AlarmManager$AlarmClockInfo;
    :goto_3
    move-object/from16 v2, p0

    .line 83
    invoke-virtual/range {v2 .. v12}, Landroid/app/IAlarmManager$Stub;->set(IJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V

    .line 84
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    const/4 v2, 0x1

    goto :goto_0

    .line 67
    .end local v10    # "_arg4":Landroid/app/PendingIntent;
    .end local v11    # "_arg5":Landroid/os/WorkSource;
    .end local v12    # "_arg6":Landroid/app/AlarmManager$AlarmClockInfo;
    :cond_0
    const/4 v10, 0x0

    .restart local v10    # "_arg4":Landroid/app/PendingIntent;
    goto :goto_1

    .line 74
    :cond_1
    const/4 v11, 0x0

    .restart local v11    # "_arg5":Landroid/os/WorkSource;
    goto :goto_2

    .line 81
    :cond_2
    const/4 v12, 0x0

    .restart local v12    # "_arg6":Landroid/app/AlarmManager$AlarmClockInfo;
    goto :goto_3

    .line 89
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":J
    .end local v8    # "_arg3":J
    .end local v10    # "_arg4":Landroid/app/PendingIntent;
    .end local v11    # "_arg5":Landroid/os/WorkSource;
    .end local v12    # "_arg6":Landroid/app/AlarmManager$AlarmClockInfo;
    :sswitch_2
    const-string v2, "android.app.IAlarmManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 92
    .local v14, "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/app/IAlarmManager$Stub;->setTime(J)Z

    move-result v13

    .line 93
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    if-eqz v13, :cond_3

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    const/4 v2, 0x1

    goto :goto_0

    .line 94
    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    .line 99
    .end local v13    # "_result":Z
    .end local v14    # "_arg0":J
    :sswitch_3
    const-string v2, "android.app.IAlarmManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/IAlarmManager$Stub;->setTimeZone(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 108
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string v2, "android.app.IAlarmManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 111
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 116
    .local v3, "_arg0":Landroid/app/PendingIntent;
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/IAlarmManager$Stub;->remove(Landroid/app/PendingIntent;)V

    .line 117
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 114
    .end local v3    # "_arg0":Landroid/app/PendingIntent;
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/app/PendingIntent;
    goto :goto_5

    .line 122
    .end local v3    # "_arg0":Landroid/app/PendingIntent;
    :sswitch_5
    const-string v2, "android.app.IAlarmManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 125
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/IAlarmManager$Stub;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v13

    .line 126
    .local v13, "_result":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v13, :cond_5

    .line 128
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v2}, Landroid/app/AlarmManager$AlarmClockInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 134
    :goto_6
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 132
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 138
    .end local v3    # "_arg0":I
    .end local v13    # "_result":Landroid/app/AlarmManager$AlarmClockInfo;
    :sswitch_6
    const-string v2, "android.app.IAlarmManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 142
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    const/4 v4, 0x1

    .line 143
    .local v4, "_arg1":Z
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/IAlarmManager$Stub;->updateBlockedUids(IZ)V

    .line 144
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 142
    .end local v4    # "_arg1":Z
    :cond_6
    const/4 v4, 0x0

    goto :goto_7

    .line 149
    .end local v3    # "_arg0":I
    :sswitch_7
    const-string v2, "android.app.IAlarmManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    const/4 v3, 0x1

    .line 153
    .local v3, "_arg0":Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    const/4 v4, 0x1

    .line 154
    .restart local v4    # "_arg1":Z
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/IAlarmManager$Stub;->setHeartBeatAdjustEnable(ZZ)Z

    move-result v13

    .line 155
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    if-eqz v13, :cond_9

    const/4 v2, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 151
    .end local v3    # "_arg0":Z
    .end local v4    # "_arg1":Z
    .end local v13    # "_result":Z
    :cond_7
    const/4 v3, 0x0

    goto :goto_8

    .line 153
    .restart local v3    # "_arg0":Z
    :cond_8
    const/4 v4, 0x0

    goto :goto_9

    .line 156
    .restart local v4    # "_arg1":Z
    .restart local v13    # "_result":Z
    :cond_9
    const/4 v2, 0x0

    goto :goto_a

    .line 161
    .end local v3    # "_arg0":Z
    .end local v4    # "_arg1":Z
    .end local v13    # "_result":Z
    :sswitch_8
    const-string v2, "android.app.IAlarmManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p0 .. p0}, Landroid/app/IAlarmManager$Stub;->getStatsBundle()Landroid/os/Bundle;

    move-result-object v13

    .line 163
    .local v13, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    if-eqz v13, :cond_a

    .line 165
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 171
    :goto_b
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 169
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 175
    .end local v13    # "_result":Landroid/os/Bundle;
    :sswitch_9
    const-string v2, "android.app.IAlarmManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    .line 178
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 184
    .local v3, "_arg0":Landroid/os/Bundle;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    const/4 v4, 0x1

    .line 185
    .restart local v4    # "_arg1":Z
    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/app/IAlarmManager$Stub;->updatePolicyBundle(Landroid/os/Bundle;Z)V

    .line 186
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 181
    .end local v3    # "_arg0":Landroid/os/Bundle;
    .end local v4    # "_arg1":Z
    :cond_b
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/os/Bundle;
    goto :goto_c

    .line 184
    :cond_c
    const/4 v4, 0x0

    goto :goto_d

    .line 44
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
