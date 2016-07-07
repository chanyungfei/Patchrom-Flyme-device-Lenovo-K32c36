.class Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/GlobalActions$Action;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SilentModeTriStateAction"
.end annotation


# instance fields
.field private final ITEM_IDS:[I

.field private final addVibrateWithRingtoneOption:Z

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "audioManager"    # Landroid/media/AudioManager;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1236
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->ITEM_IDS:[I

    .line 1243
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    .line 1244
    iput-object p3, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    .line 1245
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    .line 1246
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->addVibrateWithRingtoneOption:Z

    .line 1248
    return-void

    .line 1236
    nop

    :array_0
    .array-data 4
        0x10202f8
        0x10202f9
        0x10202fa
        0x10202fc
    .end array-data
.end method

.method private indexToRingerMode(I)I
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 1257
    return p1
.end method

.method private ringerModeToIndex(I)I
    .locals 0
    .param p1, "ringerMode"    # I

    .prologue
    .line 1252
    return p1
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/16 v8, 0x8

    const/4 v6, 0x0

    .line 1267
    const v5, 0x1090055

    invoke-virtual {p4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 1268
    .local v4, "v":Landroid/view/View;
    const v5, 0x10202fb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1270
    .local v3, "spacer":Landroid/view/View;
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->ringerModeToIndex(I)I

    move-result v2

    .line 1271
    .local v2, "selectedIndex":I
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->addVibrateWithRingtoneOption:Z

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "vibrate_when_ringing"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    .line 1274
    const/4 v2, 0x3

    .line 1276
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v5, 0x4

    if-ge v0, v5, :cond_3

    .line 1277
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->ITEM_IDS:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1278
    .local v1, "itemView":Landroid/view/View;
    const/4 v5, 0x3

    if-ne v0, v5, :cond_1

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->addVibrateWithRingtoneOption:Z

    if-nez v5, :cond_1

    .line 1279
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1280
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1276
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1283
    :cond_1
    if-ne v2, v0, :cond_2

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v1, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1285
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1286
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    move v5, v6

    .line 1283
    goto :goto_2

    .line 1288
    .end local v1    # "itemView":Landroid/view/View;
    :cond_3
    return-object v4
.end method

.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1262
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1303
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 1310
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 1327
    :goto_0
    return-void

    .line 1312
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1313
    .local v0, "index":I
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->addVibrateWithRingtoneOption:Z

    if-eqz v1, :cond_2

    .line 1314
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 1315
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->indexToRingerMode(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1316
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vibrate_when_ringing"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1326
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1319
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1320
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vibrate_when_ringing"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 1324
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlobalActions$SilentModeTriStateAction;->indexToRingerMode(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_1
.end method

.method public onPress()V
    .locals 0

    .prologue
    .line 1292
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1299
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 1295
    const/4 v0, 0x1

    return v0
.end method

.method willCreate()V
    .locals 0

    .prologue
    .line 1307
    return-void
.end method
