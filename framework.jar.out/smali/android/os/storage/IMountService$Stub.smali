.class public abstract Landroid/os/storage/IMountService$Stub;
.super Landroid/os/Binder;
.source "IMountService.java"

# interfaces
.implements Landroid/os/storage/IMountService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IMountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IMountService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "IMountService"

.field static final TRANSACTION_changeEncryptionPassword:I = 0x1d

.field static final TRANSACTION_clearPassword:I = 0x26

.field static final TRANSACTION_createSecureContainer:I = 0xb

.field static final TRANSACTION_decryptStorage:I = 0x1b

.field static final TRANSACTION_destroySecureContainer:I = 0xd

.field static final TRANSACTION_encryptStorage:I = 0x1c

.field static final TRANSACTION_finalizeSecureContainer:I = 0xc

.field static final TRANSACTION_finishMediaUpdate:I = 0x15

.field static final TRANSACTION_fixPermissionsSecureContainer:I = 0x22

.field static final TRANSACTION_formatVolume:I = 0x8

.field static final TRANSACTION_getEncryptionState:I = 0x20

.field static final TRANSACTION_getField:I = 0x28

.field static final TRANSACTION_getMountedObbPath:I = 0x19

.field static final TRANSACTION_getPassword:I = 0x25

.field static final TRANSACTION_getPasswordType:I = 0x24

.field static final TRANSACTION_getSecureContainerFilesystemPath:I = 0x1f

.field static final TRANSACTION_getSecureContainerList:I = 0x13

.field static final TRANSACTION_getSecureContainerPath:I = 0x12

.field static final TRANSACTION_getStorageUsers:I = 0x9

.field static final TRANSACTION_getVolumeList:I = 0x1e

.field static final TRANSACTION_getVolumeState:I = 0xa

.field static final TRANSACTION_isExternalStorageEmulated:I = 0x1a

.field static final TRANSACTION_isObbMounted:I = 0x18

.field static final TRANSACTION_isSecureContainerMounted:I = 0x10

.field static final TRANSACTION_isUsbMassStorageConnected:I = 0x3

.field static final TRANSACTION_isUsbMassStorageEnabled:I = 0x5

.field static final TRANSACTION_lastMaintenance:I = 0x2a

.field static final TRANSACTION_mkdirs:I = 0x23

.field static final TRANSACTION_mountObb:I = 0x16

.field static final TRANSACTION_mountSecureContainer:I = 0xe

.field static final TRANSACTION_mountVolume:I = 0x6

.field static final TRANSACTION_mountVolumeNotSwap:I = 0x2d

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_renameSecureContainer:I = 0x11

.field static final TRANSACTION_resizeSecureContainer:I = 0x29

.field static final TRANSACTION_runMaintenance:I = 0x2b

.field static final TRANSACTION_setField:I = 0x27

.field static final TRANSACTION_setUsbMassStorageEnabled:I = 0x4

.field static final TRANSACTION_shutdown:I = 0x14

.field static final TRANSACTION_unmountObb:I = 0x17

.field static final TRANSACTION_unmountSecureContainer:I = 0xf

.field static final TRANSACTION_unmountVolume:I = 0x7

.field static final TRANSACTION_unmountVolumeNotSwap:I = 0x2c

.field static final TRANSACTION_unregisterListener:I = 0x2

.field static final TRANSACTION_verifyEncryptionPassword:I = 0x21


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1049
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1050
    const-string v0, "IMountService"

    invoke-virtual {p0, p0, v0}, Landroid/os/storage/IMountService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 1051
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 1038
    if-nez p0, :cond_0

    .line 1039
    const/4 v0, 0x0

    .line 1045
    :goto_0
    return-object v0

    .line 1041
    :cond_0
    const-string v1, "IMountService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 1042
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/storage/IMountService;

    if-eqz v1, :cond_1

    .line 1043
    check-cast v0, Landroid/os/storage/IMountService;

    goto :goto_0

    .line 1045
    :cond_1
    new-instance v0, Landroid/os/storage/IMountService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/storage/IMountService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 1054
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 43
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
    .line 1060
    sparse-switch p1, :sswitch_data_0

    .line 1475
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 1062
    :sswitch_0
    const-string v4, "IMountService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1063
    const/4 v4, 0x1

    goto :goto_0

    .line 1066
    :sswitch_1
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1068
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IMountServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountServiceListener;

    move-result-object v28

    .line 1069
    .local v28, "listener":Landroid/os/storage/IMountServiceListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->registerListener(Landroid/os/storage/IMountServiceListener;)V

    .line 1070
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1071
    const/4 v4, 0x1

    goto :goto_0

    .line 1074
    .end local v28    # "listener":Landroid/os/storage/IMountServiceListener;
    :sswitch_2
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1076
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IMountServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountServiceListener;

    move-result-object v28

    .line 1077
    .restart local v28    # "listener":Landroid/os/storage/IMountServiceListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->unregisterListener(Landroid/os/storage/IMountServiceListener;)V

    .line 1078
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1079
    const/4 v4, 0x1

    goto :goto_0

    .line 1082
    .end local v28    # "listener":Landroid/os/storage/IMountServiceListener;
    :sswitch_3
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1083
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isUsbMassStorageConnected()Z

    move-result v38

    .line 1084
    .local v38, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1085
    if-eqz v38, :cond_0

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1086
    const/4 v4, 0x1

    goto :goto_0

    .line 1085
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 1089
    .end local v38    # "result":Z
    :sswitch_4
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1091
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    const/16 v20, 0x1

    .line 1092
    .local v20, "enable":Z
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->setUsbMassStorageEnabled(Z)V

    .line 1093
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1094
    const/4 v4, 0x1

    goto :goto_0

    .line 1091
    .end local v20    # "enable":Z
    :cond_1
    const/16 v20, 0x0

    goto :goto_2

    .line 1097
    :sswitch_5
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1098
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isUsbMassStorageEnabled()Z

    move-result v38

    .line 1099
    .restart local v38    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1100
    if-eqz v38, :cond_2

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1101
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1100
    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    .line 1104
    .end local v38    # "result":Z
    :sswitch_6
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 1107
    .local v29, "mountPoint":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->mountVolume(Ljava/lang/String;)I

    move-result v39

    .line 1108
    .local v39, "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1109
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1110
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1113
    .end local v29    # "mountPoint":Ljava/lang/String;
    .end local v39    # "resultCode":I
    :sswitch_7
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 1116
    .restart local v29    # "mountPoint":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    const/16 v23, 0x1

    .line 1117
    .local v23, "force":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    const/16 v37, 0x1

    .line 1118
    .local v37, "removeEncrypt":Z
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v23

    move/from16 v3, v37

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->unmountVolume(Ljava/lang/String;ZZ)V

    .line 1119
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1120
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1116
    .end local v23    # "force":Z
    .end local v37    # "removeEncrypt":Z
    :cond_3
    const/16 v23, 0x0

    goto :goto_4

    .line 1117
    .restart local v23    # "force":Z
    :cond_4
    const/16 v37, 0x0

    goto :goto_5

    .line 1123
    .end local v23    # "force":Z
    .end local v29    # "mountPoint":Ljava/lang/String;
    :sswitch_8
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 1126
    .restart local v29    # "mountPoint":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->formatVolume(Ljava/lang/String;)I

    move-result v38

    .line 1127
    .local v38, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1128
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1129
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1132
    .end local v29    # "mountPoint":Ljava/lang/String;
    .end local v38    # "result":I
    :sswitch_9
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v34

    .line 1135
    .local v34, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v35

    .line 1136
    .local v35, "pids":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1137
    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1138
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1141
    .end local v34    # "path":Ljava/lang/String;
    .end local v35    # "pids":[I
    :sswitch_a
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 1144
    .restart local v29    # "mountPoint":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 1145
    .local v40, "state":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1146
    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1147
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1150
    .end local v29    # "mountPoint":Ljava/lang/String;
    .end local v40    # "state":Ljava/lang/String;
    :sswitch_b
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1154
    .local v5, "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1156
    .local v6, "sizeMb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1158
    .local v7, "fstype":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1160
    .local v8, "key":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1162
    .local v9, "ownerUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    const/4 v10, 0x1

    .local v10, "external":Z
    :goto_6
    move-object/from16 v4, p0

    .line 1163
    invoke-virtual/range {v4 .. v10}, Landroid/os/storage/IMountService$Stub;->createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I

    move-result v39

    .line 1165
    .restart local v39    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1166
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1167
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1162
    .end local v10    # "external":Z
    .end local v39    # "resultCode":I
    :cond_5
    const/4 v10, 0x0

    goto :goto_6

    .line 1170
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "sizeMb":I
    .end local v7    # "fstype":Ljava/lang/String;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "ownerUid":I
    :sswitch_c
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1173
    .restart local v5    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/storage/IMountService$Stub;->finalizeSecureContainer(Ljava/lang/String;)I

    move-result v39

    .line 1174
    .restart local v39    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1175
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1176
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1179
    .end local v5    # "id":Ljava/lang/String;
    .end local v39    # "resultCode":I
    :sswitch_d
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1183
    .restart local v5    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    const/16 v23, 0x1

    .line 1184
    .restart local v23    # "force":Z
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v5, v1}, Landroid/os/storage/IMountService$Stub;->destroySecureContainer(Ljava/lang/String;Z)I

    move-result v39

    .line 1185
    .restart local v39    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1186
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1187
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1183
    .end local v23    # "force":Z
    .end local v39    # "resultCode":I
    :cond_6
    const/16 v23, 0x0

    goto :goto_7

    .line 1190
    .end local v5    # "id":Ljava/lang/String;
    :sswitch_e
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1194
    .restart local v5    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1196
    .restart local v8    # "key":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1198
    .restart local v9    # "ownerUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    const/16 v36, 0x1

    .line 1199
    .local v36, "readOnly":Z
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v5, v8, v9, v1}, Landroid/os/storage/IMountService$Stub;->mountSecureContainer(Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v39

    .line 1200
    .restart local v39    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1201
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1202
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1198
    .end local v36    # "readOnly":Z
    .end local v39    # "resultCode":I
    :cond_7
    const/16 v36, 0x0

    goto :goto_8

    .line 1205
    .end local v5    # "id":Ljava/lang/String;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "ownerUid":I
    :sswitch_f
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1209
    .restart local v5    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    const/16 v23, 0x1

    .line 1210
    .restart local v23    # "force":Z
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v5, v1}, Landroid/os/storage/IMountService$Stub;->unmountSecureContainer(Ljava/lang/String;Z)I

    move-result v39

    .line 1211
    .restart local v39    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1212
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1213
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1209
    .end local v23    # "force":Z
    .end local v39    # "resultCode":I
    :cond_8
    const/16 v23, 0x0

    goto :goto_9

    .line 1216
    .end local v5    # "id":Ljava/lang/String;
    :sswitch_10
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1219
    .restart local v5    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/storage/IMountService$Stub;->isSecureContainerMounted(Ljava/lang/String;)Z

    move-result v41

    .line 1220
    .local v41, "status":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1221
    if-eqz v41, :cond_9

    const/4 v4, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1222
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1221
    :cond_9
    const/4 v4, 0x0

    goto :goto_a

    .line 1225
    .end local v5    # "id":Ljava/lang/String;
    .end local v41    # "status":Z
    :sswitch_11
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1229
    .local v32, "oldId":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 1230
    .local v31, "newId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v39

    .line 1231
    .restart local v39    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1232
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1233
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1236
    .end local v31    # "newId":Ljava/lang/String;
    .end local v32    # "oldId":Ljava/lang/String;
    .end local v39    # "resultCode":I
    :sswitch_12
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1238
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1239
    .restart local v5    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/storage/IMountService$Stub;->getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 1240
    .restart local v34    # "path":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1241
    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1242
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1245
    .end local v5    # "id":Ljava/lang/String;
    .end local v34    # "path":Ljava/lang/String;
    :sswitch_13
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1246
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getSecureContainerList()[Ljava/lang/String;

    move-result-object v25

    .line 1247
    .local v25, "ids":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1248
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1249
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1252
    .end local v25    # "ids":[Ljava/lang/String;
    :sswitch_14
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IMountShutdownObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountShutdownObserver;

    move-result-object v15

    .line 1256
    .local v15, "observer":Landroid/os/storage/IMountShutdownObserver;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/os/storage/IMountService$Stub;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V

    .line 1257
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1258
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1261
    .end local v15    # "observer":Landroid/os/storage/IMountShutdownObserver;
    :sswitch_15
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1262
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->finishMediaUpdate()V

    .line 1263
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1264
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1267
    :sswitch_16
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1269
    .local v12, "rawPath":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1270
    .local v13, "canonicalPath":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1272
    .restart local v8    # "key":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v15

    .line 1274
    .local v15, "observer":Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .local v16, "nonce":I
    move-object/from16 v11, p0

    move-object v14, v8

    .line 1275
    invoke-virtual/range {v11 .. v16}, Landroid/os/storage/IMountService$Stub;->mountObb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V

    .line 1276
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1277
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1280
    .end local v8    # "key":Ljava/lang/String;
    .end local v12    # "rawPath":Ljava/lang/String;
    .end local v13    # "canonicalPath":Ljava/lang/String;
    .end local v15    # "observer":Landroid/os/storage/IObbActionListener;
    .end local v16    # "nonce":I
    :sswitch_17
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 1284
    .local v22, "filename":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    const/16 v23, 0x1

    .line 1286
    .restart local v23    # "force":Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v15

    .line 1288
    .restart local v15    # "observer":Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1289
    .restart local v16    # "nonce":I
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v15, v3}, Landroid/os/storage/IMountService$Stub;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V

    .line 1290
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1291
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1284
    .end local v15    # "observer":Landroid/os/storage/IObbActionListener;
    .end local v16    # "nonce":I
    .end local v23    # "force":Z
    :cond_a
    const/16 v23, 0x0

    goto :goto_b

    .line 1294
    .end local v22    # "filename":Ljava/lang/String;
    :sswitch_18
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1296
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 1297
    .restart local v22    # "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->isObbMounted(Ljava/lang/String;)Z

    move-result v41

    .line 1298
    .restart local v41    # "status":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1299
    if-eqz v41, :cond_b

    const/4 v4, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1300
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1299
    :cond_b
    const/4 v4, 0x0

    goto :goto_c

    .line 1303
    .end local v22    # "filename":Ljava/lang/String;
    .end local v41    # "status":Z
    :sswitch_19
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1305
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 1306
    .restart local v22    # "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1307
    .local v30, "mountedPath":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1308
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1309
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1312
    .end local v22    # "filename":Ljava/lang/String;
    .end local v30    # "mountedPath":Ljava/lang/String;
    :sswitch_1a
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1313
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isExternalStorageEmulated()Z

    move-result v19

    .line 1314
    .local v19, "emulated":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1315
    if-eqz v19, :cond_c

    const/4 v4, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1316
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1315
    :cond_c
    const/4 v4, 0x0

    goto :goto_d

    .line 1319
    .end local v19    # "emulated":Z
    :sswitch_1b
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 1321
    .local v33, "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->decryptStorage(Ljava/lang/String;)I

    move-result v38

    .line 1322
    .restart local v38    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1323
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1324
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1327
    .end local v33    # "password":Ljava/lang/String;
    .end local v38    # "result":I
    :sswitch_1c
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 1329
    .local v42, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 1330
    .restart local v33    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->encryptStorage(ILjava/lang/String;)I

    move-result v38

    .line 1331
    .restart local v38    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1332
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1333
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1336
    .end local v33    # "password":Ljava/lang/String;
    .end local v38    # "result":I
    .end local v42    # "type":I
    :sswitch_1d
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1337
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 1338
    .restart local v42    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 1339
    .restart local v33    # "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v42

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->changeEncryptionPassword(ILjava/lang/String;)I

    move-result v38

    .line 1340
    .restart local v38    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1341
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1342
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1345
    .end local v33    # "password":Ljava/lang/String;
    .end local v38    # "result":I
    .end local v42    # "type":I
    :sswitch_1e
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1346
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v38

    .line 1347
    .local v38, "result":[Landroid/os/storage/StorageVolume;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1348
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1349
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1352
    .end local v38    # "result":[Landroid/os/storage/StorageVolume;
    :sswitch_1f
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1355
    .restart local v5    # "id":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/storage/IMountService$Stub;->getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 1356
    .restart local v34    # "path":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1357
    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1358
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1361
    .end local v5    # "id":Ljava/lang/String;
    .end local v34    # "path":Ljava/lang/String;
    :sswitch_20
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1362
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getEncryptionState()I

    move-result v38

    .line 1363
    .local v38, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1364
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1365
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1368
    .end local v38    # "result":I
    :sswitch_21
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1372
    .restart local v5    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1374
    .local v24, "gid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 1375
    .restart local v22    # "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/storage/IMountService$Stub;->fixPermissionsSecureContainer(Ljava/lang/String;ILjava/lang/String;)I

    move-result v39

    .line 1376
    .restart local v39    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1377
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1378
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1381
    .end local v5    # "id":Ljava/lang/String;
    .end local v22    # "filename":Ljava/lang/String;
    .end local v24    # "gid":I
    .end local v39    # "resultCode":I
    :sswitch_22
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1382
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1383
    .local v17, "callingPkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v34

    .line 1384
    .restart local v34    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->mkdirs(Ljava/lang/String;Ljava/lang/String;)I

    move-result v38

    .line 1385
    .restart local v38    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1386
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1387
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1390
    .end local v17    # "callingPkg":Ljava/lang/String;
    .end local v34    # "path":Ljava/lang/String;
    .end local v38    # "result":I
    :sswitch_23
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1391
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getPasswordType()I

    move-result v38

    .line 1392
    .restart local v38    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1393
    move-object/from16 v0, p3

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1394
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1397
    .end local v38    # "result":I
    :sswitch_24
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1398
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getPassword()Ljava/lang/String;

    move-result-object v38

    .line 1399
    .local v38, "result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1400
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1401
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1404
    .end local v38    # "result":Ljava/lang/String;
    :sswitch_25
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1405
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->clearPassword()V

    .line 1406
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1407
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1410
    :sswitch_26
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1411
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 1412
    .local v21, "field":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1413
    .local v18, "contents":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setField(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1415
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1418
    .end local v18    # "contents":Ljava/lang/String;
    .end local v21    # "field":Ljava/lang/String;
    :sswitch_27
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1419
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 1420
    .restart local v21    # "field":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1421
    .restart local v18    # "contents":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1422
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1423
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1426
    .end local v18    # "contents":Ljava/lang/String;
    .end local v21    # "field":Ljava/lang/String;
    :sswitch_28
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1428
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1430
    .restart local v5    # "id":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1432
    .restart local v6    # "sizeMb":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1433
    .restart local v8    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v8}, Landroid/os/storage/IMountService$Stub;->resizeSecureContainer(Ljava/lang/String;ILjava/lang/String;)I

    move-result v39

    .line 1434
    .restart local v39    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1435
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1436
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1439
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "sizeMb":I
    .end local v8    # "key":Ljava/lang/String;
    .end local v39    # "resultCode":I
    :sswitch_29
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1440
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->lastMaintenance()J

    move-result-wide v26

    .line 1441
    .local v26, "lastMaintenance":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1442
    move-object/from16 v0, p3

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1443
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1446
    .end local v26    # "lastMaintenance":J
    :sswitch_2a
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1447
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->runMaintenance()V

    .line 1448
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1449
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1454
    :sswitch_2b
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1456
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 1457
    .restart local v29    # "mountPoint":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    const/16 v23, 0x1

    .line 1458
    .restart local v23    # "force":Z
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    const/16 v37, 0x1

    .line 1459
    .restart local v37    # "removeEncrypt":Z
    :goto_f
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v23

    move/from16 v3, v37

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->unmountVolumeNotSwap(Ljava/lang/String;ZZ)V

    .line 1460
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1461
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1457
    .end local v23    # "force":Z
    .end local v37    # "removeEncrypt":Z
    :cond_d
    const/16 v23, 0x0

    goto :goto_e

    .line 1458
    .restart local v23    # "force":Z
    :cond_e
    const/16 v37, 0x0

    goto :goto_f

    .line 1464
    .end local v23    # "force":Z
    .end local v29    # "mountPoint":Ljava/lang/String;
    :sswitch_2c
    const-string v4, "IMountService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1466
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 1467
    .restart local v29    # "mountPoint":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->mountVolumeNotSwap(Ljava/lang/String;)I

    move-result v39

    .line 1468
    .restart local v39    # "resultCode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1469
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1470
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1060
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
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x22 -> :sswitch_21
        0x23 -> :sswitch_22
        0x24 -> :sswitch_23
        0x25 -> :sswitch_24
        0x26 -> :sswitch_25
        0x27 -> :sswitch_26
        0x28 -> :sswitch_27
        0x29 -> :sswitch_28
        0x2a -> :sswitch_29
        0x2b -> :sswitch_2a
        0x2c -> :sswitch_2b
        0x2d -> :sswitch_2c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
