.class Landroid/media/MediaScanner$MyMediaScannerClient;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMediaScannerClient"
.end annotation


# instance fields
.field private mAlbum:Ljava/lang/String;

.field private mAlbumArtist:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mCompilation:I

.field private mComposer:Ljava/lang/String;

.field private mDuration:I

.field private mFileSize:J

.field private mFileType:I

.field private mGenre:Ljava/lang/String;

.field private mHeight:I

.field private mIsDrm:Z

.field private mLastModified:J

.field private mMimeType:Ljava/lang/String;

.field private mNoMedia:Z

.field private mPath:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTrack:I

.field private mWidth:I

.field private mWriter:Ljava/lang/String;

.field private mYear:I

.field final synthetic this$0:Landroid/media/MediaScanner;


# direct methods
.method private constructor <init>(Landroid/media/MediaScanner;)V
    .locals 0

    .prologue
    .line 512
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaScanner;Landroid/media/MediaScanner$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/MediaScanner;
    .param p2, "x1"    # Landroid/media/MediaScanner$1;

    .prologue
    .line 512
    invoke-direct {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MediaScanner;)V

    return-void
.end method

.method private convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "expected"    # Ljava/lang/String;

    .prologue
    .line 747
    invoke-virtual {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, "output":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 749
    const/4 v1, 0x1

    .line 752
    :goto_0
    return v1

    .line 751
    :cond_0
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' -> \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', expected \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1203
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 1204
    .local v1, "pathFilenameStart":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1205
    .local v0, "filenameLength":I
    invoke-virtual {p1, v1, p2, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int v3, v1, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;
    .locals 36
    .param p1, "entry"    # Landroid/media/MediaScanner$FileEntry;
    .param p2, "ringtones"    # Z
    .param p3, "notifications"    # Z
    .param p4, "alarms"    # Z
    .param p5, "music"    # Z
    .param p6, "podcasts"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 911
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 912
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 915
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->toValues()Landroid/content/ContentValues;

    move-result-object v7

    .line 916
    .local v7, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "title"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 917
    .local v33, "title":Ljava/lang/String;
    if-eqz v33, :cond_2

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 918
    :cond_2
    const-string v4, "_data"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/MediaFile;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 919
    const-string/jumbo v4, "title"

    move-object/from16 v0, v33

    invoke-virtual {v7, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    :cond_3
    const-string v4, "album"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 922
    .local v10, "album":Ljava/lang/String;
    const-string v4, "<unknown>"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 923
    const-string v4, "_data"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 925
    const/16 v4, 0x2f

    invoke-virtual {v10, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v19

    .line 926
    .local v19, "lastSlash":I
    if-ltz v19, :cond_5

    .line 927
    const/16 v29, 0x0

    .line 929
    .local v29, "previousSlash":I
    :goto_0
    const/16 v4, 0x2f

    add-int/lit8 v5, v29, 0x1

    invoke-virtual {v10, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v17

    .line 930
    .local v17, "idx":I
    if-ltz v17, :cond_4

    move/from16 v0, v17

    move/from16 v1, v19

    if-lt v0, v1, :cond_17

    .line 935
    :cond_4
    if-eqz v29, :cond_5

    .line 936
    add-int/lit8 v4, v29, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 937
    const-string v4, "album"

    invoke-virtual {v7, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    .end local v17    # "idx":I
    .end local v19    # "lastSlash":I
    .end local v29    # "previousSlash":I
    :cond_5
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    move-wide/from16 v30, v0

    .line 942
    .local v30, "rowId":J
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    if-eqz v4, :cond_18

    const-wide/16 v4, 0x0

    cmp-long v4, v30, v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static {v4}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)I

    move-result v4

    if-eqz v4, :cond_18

    .line 947
    :cond_6
    const-string v4, "is_ringtone"

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 948
    const-string v4, "is_notification"

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 949
    const-string v4, "is_alarm"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 950
    const-string v4, "is_music"

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 951
    const-string v4, "is_podcast"

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1004
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v32

    .line 1005
    .local v32, "tableUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;

    move-result-object v18

    .line 1006
    .local v18, "inserter":Landroid/media/MediaInserter;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v4, :cond_8

    .line 1007
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1008
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1400(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v32

    .line 1015
    :cond_8
    :goto_2
    const/4 v6, 0x0

    .line 1016
    .local v6, "result":Landroid/net/Uri;
    const/16 v25, 0x0

    .line 1017
    .local v25, "needToSetSettings":Z
    const/16 v22, 0x0

    .line 1018
    .local v22, "needToCustomizeMmsNotification":Z
    const/16 v23, 0x0

    .line 1019
    .local v23, "needToCustomizeRingtone2":Z
    const/16 v24, 0x0

    .line 1021
    .local v24, "needToCustomizeRingtone3":Z
    const/16 v26, 0x0

    .line 1022
    .local v26, "needToSetSmsNotificationAP":Z
    const-wide/16 v4, 0x0

    cmp-long v4, v30, v4

    if-nez v4, :cond_24

    .line 1023
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static {v4}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)I

    move-result v4

    if-eqz v4, :cond_9

    .line 1024
    const-string/jumbo v4, "media_scanner_new_object_id"

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static {v5}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1026
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v32

    if-ne v0, v4, :cond_b

    .line 1027
    move-object/from16 v0, p1

    iget v15, v0, Landroid/media/MediaScanner$FileEntry;->mFormat:I

    .line 1028
    .local v15, "format":I
    if-nez v15, :cond_a

    .line 1029
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/media/MediaFile;->getFormatCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 1031
    :cond_a
    const-string v4, "format"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1036
    .end local v15    # "format":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1700(Landroid/media/MediaScanner;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1037
    if-eqz p3, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDefaultNotificationSet:Z
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 1038
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$1900(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Landroid/media/MediaScanner$MyMediaScannerClient;->toSetSettings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v25

    .line 1044
    :cond_c
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # invokes: Landroid/media/MediaScanner;->isSoundCustomized()Z
    invoke-static {v4}, Landroid/media/MediaScanner;->access$2400(Landroid/media/MediaScanner;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1045
    if-eqz p3, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDefaultMmsNotificationSet:Z
    invoke-static {v4}, Landroid/media/MediaScanner;->access$2500(Landroid/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 1046
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDefaultMmsNotificationFilename:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$2600(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Landroid/media/MediaScanner$MyMediaScannerClient;->toSetSettings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    .line 1060
    :cond_d
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # invokes: Landroid/media/MediaScanner;->isSupportCustomizeMMS()Z
    invoke-static {v4}, Landroid/media/MediaScanner;->access$3100(Landroid/media/MediaScanner;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1061
    if-eqz p3, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mWtDefaultSMSRingtoneSet:Z
    invoke-static {v4}, Landroid/media/MediaScanner;->access$3200(Landroid/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 1062
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mWtDefaultSMSNotificationFilenameAP:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$3300(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Landroid/media/MediaScanner$MyMediaScannerClient;->toSetSettings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v26

    .line 1073
    :cond_e
    if-eqz v18, :cond_f

    if-nez v25, :cond_f

    if-nez v22, :cond_f

    if-nez v23, :cond_f

    if-nez v24, :cond_f

    if-eqz v26, :cond_22

    .line 1079
    :cond_f
    if-eqz v18, :cond_10

    .line 1080
    invoke-virtual/range {v18 .. v18}, Landroid/media/MediaInserter;->flushAll()V

    .line 1082
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$3500(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$3400(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-interface {v4, v5, v0, v7}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 1089
    :goto_5
    if-eqz v6, :cond_11

    .line 1090
    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v30

    .line 1091
    move-wide/from16 v0, v30

    move-object/from16 v2, p1

    iput-wide v0, v2, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    .line 1117
    :cond_11
    :goto_6
    if-eqz v25, :cond_13

    .line 1118
    if-eqz p3, :cond_2a

    .line 1119
    const-string/jumbo v4, "notification_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-wide/from16 v2, v30

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1121
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # invokes: Landroid/media/MediaScanner;->isSupportCustomizeMMS()Z
    invoke-static {v4}, Landroid/media/MediaScanner;->access$3100(Landroid/media/MediaScanner;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1122
    const-string/jumbo v4, "notification_default"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-wide/from16 v2, v30

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1125
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    const/4 v5, 0x1

    # setter for: Landroid/media/MediaScanner;->mDefaultNotificationSet:Z
    invoke-static {v4, v5}, Landroid/media/MediaScanner;->access$1802(Landroid/media/MediaScanner;Z)Z

    .line 1158
    :cond_13
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # invokes: Landroid/media/MediaScanner;->isSoundCustomized()Z
    invoke-static {v4}, Landroid/media/MediaScanner;->access$2400(Landroid/media/MediaScanner;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1159
    if-eqz p3, :cond_2f

    if-eqz v22, :cond_2f

    .line 1160
    const-string/jumbo v4, "mms_notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-wide/from16 v2, v30

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->overrideSetting(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1161
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    const/4 v5, 0x1

    # setter for: Landroid/media/MediaScanner;->mDefaultMmsNotificationSet:Z
    invoke-static {v4, v5}, Landroid/media/MediaScanner;->access$2502(Landroid/media/MediaScanner;Z)Z

    .line 1182
    :cond_14
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # invokes: Landroid/media/MediaScanner;->isSupportCustomizeMMS()Z
    invoke-static {v4}, Landroid/media/MediaScanner;->access$3100(Landroid/media/MediaScanner;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1183
    if-eqz p3, :cond_16

    if-eqz v26, :cond_16

    .line 1185
    const-string/jumbo v4, "sms_notification_default"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-wide/from16 v2, v30

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1186
    const-string/jumbo v4, "mms_notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-wide/from16 v2, v30

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1187
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1188
    const-string/jumbo v4, "mms_notification_2"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-wide/from16 v2, v30

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1191
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    const/4 v5, 0x1

    # setter for: Landroid/media/MediaScanner;->mWtDefaultSMSRingtoneSet:Z
    invoke-static {v4, v5}, Landroid/media/MediaScanner;->access$3202(Landroid/media/MediaScanner;Z)Z

    .line 1194
    :cond_16
    return-object v6

    .line 933
    .end local v6    # "result":Landroid/net/Uri;
    .end local v18    # "inserter":Landroid/media/MediaInserter;
    .end local v22    # "needToCustomizeMmsNotification":Z
    .end local v23    # "needToCustomizeRingtone2":Z
    .end local v24    # "needToCustomizeRingtone3":Z
    .end local v25    # "needToSetSettings":Z
    .end local v26    # "needToSetSmsNotificationAP":Z
    .end local v30    # "rowId":J
    .end local v32    # "tableUri":Landroid/net/Uri;
    .restart local v17    # "idx":I
    .restart local v19    # "lastSlash":I
    .restart local v29    # "previousSlash":I
    :cond_17
    move/from16 v29, v17

    .line 934
    goto/16 :goto_0

    .line 952
    .end local v17    # "idx":I
    .end local v19    # "lastSlash":I
    .end local v29    # "previousSlash":I
    .restart local v30    # "rowId":J
    :cond_18
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v5, 0x1f

    if-ne v4, v5, :cond_7

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v4, :cond_7

    .line 953
    const/4 v12, 0x0

    .line 955
    .local v12, "exif":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v13, Landroid/media/ExifInterface;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-direct {v13, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v12    # "exif":Landroid/media/ExifInterface;
    .local v13, "exif":Landroid/media/ExifInterface;
    move-object v12, v13

    .line 959
    .end local v13    # "exif":Landroid/media/ExifInterface;
    .restart local v12    # "exif":Landroid/media/ExifInterface;
    :goto_9
    if-eqz v12, :cond_7

    .line 960
    const/4 v4, 0x2

    new-array v0, v4, [F

    move-object/from16 v20, v0

    .line 961
    .local v20, "latlng":[F
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 962
    const-string v4, "latitude"

    const/4 v5, 0x0

    aget v5, v20, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 963
    const-string v4, "longitude"

    const/4 v5, 0x1

    aget v5, v20, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 966
    :cond_19
    invoke-virtual {v12}, Landroid/media/ExifInterface;->getGpsDateTime()J

    move-result-wide v34

    .line 967
    .local v34, "time":J
    const-wide/16 v4, -0x1

    cmp-long v4, v34, v4

    if-eqz v4, :cond_1b

    .line 968
    const-string v4, "datetaken"

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 980
    :cond_1a
    :goto_a
    const-string v4, "Orientation"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v27

    .line 982
    .local v27, "orientation":I
    const/4 v4, -0x1

    move/from16 v0, v27

    if-eq v0, v4, :cond_7

    .line 985
    packed-switch v27, :pswitch_data_0

    .line 996
    :pswitch_0
    const/4 v11, 0x0

    .line 999
    .local v11, "degree":I
    :goto_b
    const-string/jumbo v4, "orientation"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 974
    .end local v11    # "degree":I
    .end local v27    # "orientation":I
    :cond_1b
    invoke-virtual {v12}, Landroid/media/ExifInterface;->getDateTime()J

    move-result-wide v34

    .line 975
    const-wide/16 v4, -0x1

    cmp-long v4, v34, v4

    if-eqz v4, :cond_1a

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v4, v8

    sub-long v4, v4, v34

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v8, 0x5265c00

    cmp-long v4, v4, v8

    if-ltz v4, :cond_1a

    .line 976
    const-string v4, "datetaken"

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_a

    .line 987
    .restart local v27    # "orientation":I
    :pswitch_1
    const/16 v11, 0x5a

    .line 988
    .restart local v11    # "degree":I
    goto :goto_b

    .line 990
    .end local v11    # "degree":I
    :pswitch_2
    const/16 v11, 0xb4

    .line 991
    .restart local v11    # "degree":I
    goto :goto_b

    .line 993
    .end local v11    # "degree":I
    :pswitch_3
    const/16 v11, 0x10e

    .line 994
    .restart local v11    # "degree":I
    goto :goto_b

    .line 1009
    .end local v11    # "degree":I
    .end local v12    # "exif":Landroid/media/ExifInterface;
    .end local v20    # "latlng":[F
    .end local v27    # "orientation":I
    .end local v34    # "time":J
    .restart local v18    # "inserter":Landroid/media/MediaInserter;
    .restart local v32    # "tableUri":Landroid/net/Uri;
    :cond_1c
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1010
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v32

    goto/16 :goto_2

    .line 1011
    :cond_1d
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1012
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v32

    goto/16 :goto_2

    .line 1039
    .restart local v6    # "result":Landroid/net/Uri;
    .restart local v22    # "needToCustomizeMmsNotification":Z
    .restart local v23    # "needToCustomizeRingtone2":Z
    .restart local v24    # "needToCustomizeRingtone3":Z
    .restart local v25    # "needToSetSettings":Z
    .restart local v26    # "needToSetSmsNotificationAP":Z
    :cond_1e
    if-eqz p2, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z
    invoke-static {v4}, Landroid/media/MediaScanner;->access$2000(Landroid/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 1040
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$2100(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Landroid/media/MediaScanner$MyMediaScannerClient;->toSetSettings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v25

    goto/16 :goto_3

    .line 1041
    :cond_1f
    if-eqz p4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDefaultAlarmSet:Z
    invoke-static {v4}, Landroid/media/MediaScanner;->access$2200(Landroid/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 1042
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$2300(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Landroid/media/MediaScanner$MyMediaScannerClient;->toSetSettings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v25

    goto/16 :goto_3

    .line 1048
    :cond_20
    if-eqz p2, :cond_d

    .line 1049
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDefaultRingtone2Set:Z
    invoke-static {v4}, Landroid/media/MediaScanner;->access$2700(Landroid/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 1050
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDefaultRingtone2Filename:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$2800(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Landroid/media/MediaScanner$MyMediaScannerClient;->toSetSettings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v23

    .line 1053
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDefaultRingtone3Set:Z
    invoke-static {v4}, Landroid/media/MediaScanner;->access$2900(Landroid/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1054
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDefaultRingtone3Filename:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$3000(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Landroid/media/MediaScanner$MyMediaScannerClient;->toSetSettings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v24

    goto/16 :goto_4

    .line 1083
    :cond_22
    move-object/from16 v0, p1

    iget v4, v0, Landroid/media/MediaScanner$FileEntry;->mFormat:I

    const/16 v5, 0x3001

    if-ne v4, v5, :cond_23

    .line 1084
    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v7}, Landroid/media/MediaInserter;->insertwithPriority(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_5

    .line 1086
    :cond_23
    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v7}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_5

    .line 1095
    :cond_24
    move-object/from16 v0, v32

    move-wide/from16 v1, v30

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1098
    const-string v4, "_data"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1100
    const/16 v21, 0x0

    .line 1101
    .local v21, "mediaType":I
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 1102
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v4}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v14

    .line 1103
    .local v14, "fileType":I
    invoke-static {v14}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 1104
    const/16 v21, 0x2

    .line 1112
    :cond_25
    :goto_c
    const-string/jumbo v4, "media_type"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1114
    .end local v14    # "fileType":I
    :cond_26
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$3500(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$3400(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1105
    .restart local v14    # "fileType":I
    :cond_27
    invoke-static {v14}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 1106
    const/16 v21, 0x3

    goto :goto_c

    .line 1107
    :cond_28
    invoke-static {v14}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 1108
    const/16 v21, 0x1

    goto :goto_c

    .line 1109
    :cond_29
    invoke-static {v14}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 1110
    const/16 v21, 0x4

    goto :goto_c

    .line 1126
    .end local v14    # "fileType":I
    .end local v21    # "mediaType":I
    :cond_2a
    if-eqz p2, :cond_2d

    .line 1128
    const-string/jumbo v4, "ringtone_default"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-wide/from16 v2, v30

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1132
    const-string/jumbo v4, "ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-wide/from16 v2, v30

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1133
    const-string/jumbo v4, "ringtone_2"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-wide/from16 v2, v30

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1134
    const-string/jumbo v4, "ringtone_3"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-wide/from16 v2, v30

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1136
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # invokes: Landroid/media/MediaScanner;->isSupportCustomizeMMS()Z
    invoke-static {v4}, Landroid/media/MediaScanner;->access$3100(Landroid/media/MediaScanner;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1137
    const-string/jumbo v4, "ringtone_default"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-wide/from16 v2, v30

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1139
    :cond_2b
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 1140
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v28

    .line 1141
    .local v28, "phoneCount":I
    const/16 v16, 0x3

    .local v16, "i":I
    :goto_d
    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_2c

    .line 1143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ringtone_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v16, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-wide/from16 v2, v30

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1141
    add-int/lit8 v16, v16, 0x1

    goto :goto_d

    .line 1146
    .end local v16    # "i":I
    .end local v28    # "phoneCount":I
    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    const/4 v5, 0x1

    # setter for: Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z
    invoke-static {v4, v5}, Landroid/media/MediaScanner;->access$2002(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_7

    .line 1147
    :cond_2d
    if-eqz p4, :cond_13

    .line 1148
    const-string v4, "alarm_alert"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-wide/from16 v2, v30

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1150
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # invokes: Landroid/media/MediaScanner;->isSupportCustomizeMMS()Z
    invoke-static {v4}, Landroid/media/MediaScanner;->access$3100(Landroid/media/MediaScanner;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 1151
    const-string v4, "alarm_default"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-wide/from16 v2, v30

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1154
    :cond_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    const/4 v5, 0x1

    # setter for: Landroid/media/MediaScanner;->mDefaultAlarmSet:Z
    invoke-static {v4, v5}, Landroid/media/MediaScanner;->access$2202(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_7

    .line 1162
    :cond_2f
    if-eqz p2, :cond_14

    .line 1163
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v28

    .line 1164
    .restart local v28    # "phoneCount":I
    const/4 v4, 0x2

    move/from16 v0, v28

    if-ne v0, v4, :cond_30

    if-eqz v23, :cond_30

    .line 1165
    const-string/jumbo v4, "ringtone_2"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-wide/from16 v2, v30

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->overrideSetting(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1166
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    const/4 v5, 0x1

    # setter for: Landroid/media/MediaScanner;->mDefaultRingtone2Set:Z
    invoke-static {v4, v5}, Landroid/media/MediaScanner;->access$2702(Landroid/media/MediaScanner;Z)Z

    .line 1168
    :cond_30
    const/4 v4, 0x3

    move/from16 v0, v28

    if-ne v0, v4, :cond_14

    .line 1169
    if-eqz v23, :cond_31

    .line 1170
    const-string/jumbo v4, "ringtone_2"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-wide/from16 v2, v30

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->overrideSetting(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1171
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    const/4 v5, 0x1

    # setter for: Landroid/media/MediaScanner;->mDefaultRingtone2Set:Z
    invoke-static {v4, v5}, Landroid/media/MediaScanner;->access$2702(Landroid/media/MediaScanner;Z)Z

    .line 1173
    :cond_31
    if-eqz v24, :cond_14

    .line 1174
    const-string/jumbo v4, "ringtone_3"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-wide/from16 v2, v30

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/media/MediaScanner$MyMediaScannerClient;->overrideSetting(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1175
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    const/4 v5, 0x1

    # setter for: Landroid/media/MediaScanner;->mDefaultRingtone3Set:Z
    invoke-static {v4, v5}, Landroid/media/MediaScanner;->access$2902(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_8

    .line 956
    .end local v6    # "result":Landroid/net/Uri;
    .end local v18    # "inserter":Landroid/media/MediaInserter;
    .end local v22    # "needToCustomizeMmsNotification":Z
    .end local v23    # "needToCustomizeRingtone2":Z
    .end local v24    # "needToCustomizeRingtone3":Z
    .end local v25    # "needToSetSettings":Z
    .end local v26    # "needToSetSmsNotificationAP":Z
    .end local v28    # "phoneCount":I
    .end local v32    # "tableUri":Landroid/net/Uri;
    .restart local v12    # "exif":Landroid/media/ExifInterface;
    :catch_0
    move-exception v4

    goto/16 :goto_9

    .line 985
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getFileTypeFromDrm(Ljava/lang/String;)I
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1227
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # invokes: Landroid/media/MediaScanner;->isDrmEnabled()Z
    invoke-static {v3}, Landroid/media/MediaScanner;->access$200(Landroid/media/MediaScanner;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1228
    const/4 v2, 0x0

    .line 1246
    :cond_0
    :goto_0
    return v2

    .line 1231
    :cond_1
    const/4 v2, 0x0

    .line 1233
    .local v2, "resultFileType":I
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$3700(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1234
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    new-instance v4, Landroid/drm/DrmManagerClient;

    iget-object v5, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/media/MediaScanner;->access$3600(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    # setter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v3, v4}, Landroid/media/MediaScanner;->access$3702(Landroid/media/MediaScanner;Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;

    .line 1237
    :cond_2
    const-string v3, "/storage/emulated/0"

    const-string v4, "/storage/emulated/legacy"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1238
    .local v1, "realpath":Ljava/lang/String;
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$3700(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1239
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    .line 1240
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$3700(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1241
    .local v0, "drmMimetype":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1242
    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 1243
    invoke-static {v0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method private overrideSetting(Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 3
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "rowId"    # J

    .prologue
    .line 1222
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$3600(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1224
    return-void
.end method

.method private parseSubstring(Ljava/lang/String;II)I
    .locals 8
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "defaultValue"    # I

    .prologue
    const/16 v7, 0x39

    const/16 v6, 0x30

    .line 681
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 682
    .local v1, "length":I
    if-ne p2, v1, :cond_0

    .line 695
    .end local p3    # "defaultValue":I
    :goto_0
    return p3

    .line 684
    .restart local p3    # "defaultValue":I
    :cond_0
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "start":I
    .local v3, "start":I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 686
    .local v0, "ch":C
    if-lt v0, v6, :cond_1

    if-le v0, v7, :cond_2

    :cond_1
    move p2, v3

    .end local v3    # "start":I
    .restart local p2    # "start":I
    goto :goto_0

    .line 688
    .end local p2    # "start":I
    .restart local v3    # "start":I
    :cond_2
    add-int/lit8 v2, v0, -0x30

    .line 689
    .local v2, "result":I
    :goto_1
    if-ge v3, v1, :cond_5

    .line 690
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "start":I
    .restart local p2    # "start":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 691
    if-lt v0, v6, :cond_3

    if-le v0, v7, :cond_4

    :cond_3
    move p3, v2

    goto :goto_0

    .line 692
    :cond_4
    mul-int/lit8 v4, v2, 0xa

    add-int/lit8 v5, v0, -0x30

    add-int v2, v4, v5

    move v3, p2

    .end local p2    # "start":I
    .restart local v3    # "start":I
    goto :goto_1

    :cond_5
    move p2, v3

    .end local v3    # "start":I
    .restart local p2    # "start":I
    move p3, v2

    .line 695
    goto :goto_0
.end method

.method private processImageFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 828
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 829
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 830
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 831
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 832
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    :goto_0
    return-void

    .line 833
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 3
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "rowId"    # J

    .prologue
    .line 1211
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$3600(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1214
    .local v0, "existingSettingValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1216
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$3600(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1219
    :cond_0
    return-void
.end method

.method private testGenreNameConverter()V
    .locals 2

    .prologue
    .line 756
    const-string v0, "2"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 757
    const-string v0, "(2)"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 758
    const-string v0, "(2"

    const-string v1, "(2"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 759
    const-string v0, "2 Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 760
    const-string v0, "(2) Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 761
    const-string v0, "(2 Foo"

    const-string v1, "(2 Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 762
    const-string v0, "2Foo"

    const-string v1, "2Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 763
    const-string v0, "(2)Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 764
    const-string v0, "200 Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 765
    const-string v0, "(200) Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 766
    const-string v0, "200Foo"

    const-string v1, "200Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 767
    const-string v0, "(200)Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 768
    const-string v0, "200)Foo"

    const-string v1, "200)Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 769
    const-string v0, "200) Foo"

    const-string v1, "200) Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 770
    return-void
.end method

.method private toSetSettings(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 1198
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toValues()Landroid/content/ContentValues;
    .locals 6

    .prologue
    .line 857
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 859
    .local v0, "map":Landroid/content/ContentValues;
    const-string v2, "_data"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const-string/jumbo v2, "title"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    const-string v2, "date_modified"

    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 862
    const-string v2, "_size"

    iget-wide v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 863
    const-string/jumbo v2, "mime_type"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    const-string v2, "is_drm"

    iget-boolean v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 866
    const/4 v1, 0x0

    .line 867
    .local v1, "resolution":Ljava/lang/String;
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    if-lez v2, :cond_0

    .line 868
    const-string/jumbo v2, "width"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 869
    const-string v2, "height"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 870
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 873
    :cond_0
    iget-boolean v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v2, :cond_1

    .line 874
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 875
    const-string v3, "artist"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    const-string v3, "album"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    const-string v2, "duration"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 880
    if-eqz v1, :cond_1

    .line 881
    const-string/jumbo v2, "resolution"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    :cond_1
    :goto_2
    return-object v0

    .line 875
    :cond_2
    const-string v2, "<unknown>"

    goto :goto_0

    .line 877
    :cond_3
    const-string v2, "<unknown>"

    goto :goto_1

    .line 883
    :cond_4
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 885
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 886
    const-string v3, "artist"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    const-string v3, "album_artist"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    :goto_4
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    const-string v3, "album"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_5
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    const-string v2, "composer"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    const-string v2, "genre"

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    if-eqz v2, :cond_5

    .line 895
    const-string/jumbo v2, "year"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 897
    :cond_5
    const-string/jumbo v2, "track"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 898
    const-string v2, "duration"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 899
    const-string v2, "compilation"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 886
    :cond_6
    const-string v2, "<unknown>"

    goto :goto_3

    .line 888
    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    .line 890
    :cond_8
    const-string v2, "<unknown>"

    goto :goto_5
.end method


# virtual methods
.method public beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileEntry;
    .locals 13
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "lastModified"    # J
    .param p5, "fileSize"    # J
    .param p7, "isDirectory"    # Z
    .param p8, "noMedia"    # Z

    .prologue
    .line 537
    iput-object p2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 538
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 539
    move-wide/from16 v0, p5

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    .line 540
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    .line 542
    if-nez p7, :cond_4

    .line 543
    if-nez p8, :cond_0

    # invokes: Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z
    invoke-static {p1}, Landroid/media/MediaScanner;->access$100(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 544
    const/16 p8, 0x1

    .line 546
    :cond_0
    move/from16 v0, p8

    iput-boolean v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    .line 549
    if-eqz p2, :cond_1

    .line 550
    invoke-static {p2}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 554
    :cond_1
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    if-nez v3, :cond_2

    .line 555
    invoke-static {p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v9

    .line 556
    .local v9, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-eqz v9, :cond_2

    .line 557
    iget v3, v9, Landroid/media/MediaFile$MediaFileType;->fileType:I

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 558
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 559
    iget-object v3, v9, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 564
    .end local v9    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    :cond_2
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # invokes: Landroid/media/MediaScanner;->isDrmEnabled()Z
    invoke-static {v3}, Landroid/media/MediaScanner;->access$200(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz p1, :cond_4

    const-string v3, ".dcf"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, ".dm"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 565
    :cond_3
    invoke-direct {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getFileTypeFromDrm(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 569
    :cond_4
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-virtual {v3, p1}, Landroid/media/MediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;

    move-result-object v2

    .line 571
    .local v2, "entry":Landroid/media/MediaScanner$FileEntry;
    if-eqz v2, :cond_8

    iget-wide v4, v2, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    sub-long v10, p3, v4

    .line 572
    .local v10, "delta":J
    :goto_0
    const-wide/16 v4, 0x1

    cmp-long v3, v10, v4

    if-gtz v3, :cond_5

    const-wide/16 v4, -0x1

    cmp-long v3, v10, v4

    if-gez v3, :cond_9

    :cond_5
    const/4 v12, 0x1

    .line 573
    .local v12, "wasModified":Z
    :goto_1
    if-eqz v2, :cond_6

    if-eqz v12, :cond_7

    .line 574
    :cond_6
    if-eqz v12, :cond_a

    .line 575
    move-wide/from16 v0, p3

    iput-wide v0, v2, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    .line 580
    :goto_2
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    .line 583
    :cond_7
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mProcessPlaylists:Z
    invoke-static {v3}, Landroid/media/MediaScanner;->access$300(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 584
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    const/4 v2, 0x0

    .line 606
    .end local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    :goto_3
    return-object v2

    .line 571
    .end local v10    # "delta":J
    .end local v12    # "wasModified":Z
    .restart local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    :cond_8
    const-wide/16 v10, 0x0

    goto :goto_0

    .line 572
    .restart local v10    # "delta":J
    :cond_9
    const/4 v12, 0x0

    goto :goto_1

    .line 577
    .restart local v12    # "wasModified":Z
    :cond_a
    new-instance v2, Landroid/media/MediaScanner$FileEntry;

    .end local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    const-wide/16 v3, 0x0

    if-eqz p7, :cond_b

    const/16 v8, 0x3001

    :goto_4
    move-object v5, p1

    move-wide/from16 v6, p3

    invoke-direct/range {v2 .. v8}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V

    .restart local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    goto :goto_2

    .end local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    :cond_b
    const/4 v8, 0x0

    goto :goto_4

    .line 590
    .restart local v2    # "entry":Landroid/media/MediaScanner$FileEntry;
    :cond_c
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 591
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    .line 592
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    .line 593
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 594
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    .line 595
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    .line 596
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    .line 597
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    .line 598
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    .line 599
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    .line 600
    move-wide/from16 v0, p3

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    .line 601
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    .line 602
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    .line 603
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 604
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    goto :goto_3
.end method

.method public doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    .locals 23
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "lastModified"    # J
    .param p5, "fileSize"    # J
    .param p7, "isDirectory"    # Z
    .param p8, "scanAlways"    # Z
    .param p9, "noMedia"    # Z

    .prologue
    .line 619
    const/16 v21, 0x0

    .local v21, "result":Landroid/net/Uri;
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move/from16 v12, p7

    move/from16 v13, p9

    .line 622
    :try_start_0
    invoke-virtual/range {v5 .. v13}, Landroid/media/MediaScanner$MyMediaScannerClient;->beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileEntry;

    move-result-object v5

    .line 628
    .local v5, "entry":Landroid/media/MediaScanner$FileEntry;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static {v4}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 629
    const-wide/16 v12, 0x0

    iput-wide v12, v5, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    .line 632
    :cond_0
    if-eqz v5, :cond_2

    iget-boolean v4, v5, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    if-nez v4, :cond_1

    if-eqz p8, :cond_2

    .line 633
    :cond_1
    if-eqz p9, :cond_3

    .line 634
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;

    move-result-object v21

    .line 677
    .end local v5    # "entry":Landroid/media/MediaScanner$FileEntry;
    :cond_2
    :goto_0
    return-object v21

    .line 636
    .restart local v5    # "entry":Landroid/media/MediaScanner$FileEntry;
    :cond_3
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v20

    .line 637
    .local v20, "lowpath":Ljava/lang/String;
    const-string v4, "/ringtones/"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_a

    const/4 v6, 0x1

    .line 638
    .local v6, "ringtones":Z
    :goto_1
    const-string v4, "/notifications/"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_b

    const/4 v7, 0x1

    .line 639
    .local v7, "notifications":Z
    :goto_2
    const-string v4, "/alarms/"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_c

    const/4 v8, 0x1

    .line 640
    .local v8, "alarms":Z
    :goto_3
    const-string v4, "/podcasts/"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_d

    const/4 v10, 0x1

    .line 641
    .local v10, "podcasts":Z
    :goto_4
    const-string v4, "/music/"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_4

    if-nez v6, :cond_e

    if-nez v7, :cond_e

    if-nez v8, :cond_e

    if-nez v10, :cond_e

    :cond_4
    const/4 v9, 0x1

    .line 644
    .local v9, "music":Z
    :goto_5
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v17

    .line 645
    .local v17, "isaudio":Z
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v19

    .line 646
    .local v19, "isvideo":Z
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v4}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v18

    .line 648
    .local v18, "isimage":Z
    if-nez v17, :cond_5

    if-nez v19, :cond_5

    if-eqz v18, :cond_6

    .line 649
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mExternalIsEmulated:Z
    invoke-static {v4}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 651
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getMediaStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;
    invoke-static {v11}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 653
    .local v14, "directPath":Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 654
    .local v16, "f":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 655
    move-object/from16 p1, v14

    .line 661
    .end local v14    # "directPath":Ljava/lang/String;
    .end local v16    # "f":Ljava/io/File;
    :cond_6
    if-nez v17, :cond_7

    if-eqz v19, :cond_8

    .line 662
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    # invokes: Landroid/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    invoke-static {v4, v0, v1, v2}, Landroid/media/MediaScanner;->access$800(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 665
    :cond_8
    if-eqz v18, :cond_9

    .line 666
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->processImageFile(Ljava/lang/String;)V

    :cond_9
    move-object/from16 v4, p0

    .line 669
    invoke-direct/range {v4 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    goto/16 :goto_0

    .line 637
    .end local v6    # "ringtones":Z
    .end local v7    # "notifications":Z
    .end local v8    # "alarms":Z
    .end local v9    # "music":Z
    .end local v10    # "podcasts":Z
    .end local v17    # "isaudio":Z
    .end local v18    # "isimage":Z
    .end local v19    # "isvideo":Z
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 638
    .restart local v6    # "ringtones":Z
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 639
    .restart local v7    # "notifications":Z
    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 640
    .restart local v8    # "alarms":Z
    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 641
    .restart local v10    # "podcasts":Z
    :cond_e
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 672
    .end local v5    # "entry":Landroid/media/MediaScanner$FileEntry;
    .end local v6    # "ringtones":Z
    .end local v7    # "notifications":Z
    .end local v8    # "alarms":Z
    .end local v10    # "podcasts":Z
    .end local v20    # "lowpath":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 673
    .local v15, "e":Landroid/os/RemoteException;
    const-string v4, "MediaScanner"

    const-string v11, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v4, v11, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public getGenreName(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "genreTagValue"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/16 v10, 0xff

    const/16 v9, 0x29

    .line 774
    if-nez p1, :cond_1

    .line 823
    :cond_0
    :goto_0
    return-object v7

    .line 777
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 779
    .local v4, "length":I
    if-lez v4, :cond_9

    .line 780
    const/4 v6, 0x0

    .line 781
    .local v6, "parenthesized":Z
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 782
    .local v5, "number":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 783
    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 784
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 785
    .local v0, "c":C
    if-nez v3, :cond_2

    const/16 v8, 0x28

    if-ne v0, v8, :cond_2

    .line 786
    const/4 v6, 0x1

    .line 783
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 787
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 788
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 793
    .end local v0    # "c":C
    :cond_3
    if-ge v3, v4, :cond_6

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 794
    .local v1, "charAfterNumber":C
    :goto_3
    if-eqz v6, :cond_4

    if-eq v1, v9, :cond_5

    :cond_4
    if-nez v6, :cond_9

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 797
    :cond_5
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v2

    .line 798
    .local v2, "genreIndex":S
    if-ltz v2, :cond_9

    .line 799
    # getter for: Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;
    invoke-static {}, Landroid/media/MediaScanner;->access$1000()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-ge v2, v8, :cond_7

    # getter for: Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;
    invoke-static {}, Landroid/media/MediaScanner;->access$1000()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v2

    if-eqz v8, :cond_7

    .line 800
    # getter for: Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;
    invoke-static {}, Landroid/media/MediaScanner;->access$1000()[Ljava/lang/String;

    move-result-object v8

    aget-object v7, v8, v2

    goto :goto_0

    .line 793
    .end local v1    # "charAfterNumber":C
    .end local v2    # "genreIndex":S
    :cond_6
    const/16 v1, 0x20

    goto :goto_3

    .line 801
    .restart local v1    # "charAfterNumber":C
    .restart local v2    # "genreIndex":S
    :cond_7
    if-eq v2, v10, :cond_0

    .line 803
    if-ge v2, v10, :cond_a

    add-int/lit8 v8, v3, 0x1

    if-ge v8, v4, :cond_a

    .line 806
    if-eqz v6, :cond_8

    if-ne v1, v9, :cond_8

    .line 807
    add-int/lit8 v3, v3, 0x1

    .line 809
    :cond_8
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 810
    .local v7, "ret":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    .end local v1    # "charAfterNumber":C
    .end local v2    # "genreIndex":S
    .end local v3    # "i":I
    .end local v5    # "number":Ljava/lang/StringBuffer;
    .end local v6    # "parenthesized":Z
    .end local v7    # "ret":Ljava/lang/String;
    :cond_9
    :goto_4
    move-object v7, p1

    .line 823
    goto :goto_0

    .line 815
    .restart local v1    # "charAfterNumber":C
    .restart local v2    # "genreIndex":S
    .restart local v3    # "i":I
    .restart local v5    # "number":Ljava/lang/StringBuffer;
    .restart local v6    # "parenthesized":Z
    :cond_a
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 818
    .end local v2    # "genreIndex":S
    :catch_0
    move-exception v8

    goto :goto_4
.end method

.method public handleStringTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 699
    const-string/jumbo v3, "title"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "title;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 703
    :cond_0
    iput-object p2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 744
    :cond_1
    :goto_0
    return-void

    .line 704
    :cond_2
    const-string v3, "artist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "artist;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 705
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    goto :goto_0

    .line 706
    :cond_4
    const-string v3, "albumartist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "albumartist;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "band"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "band;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 708
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    goto :goto_0

    .line 709
    :cond_6
    const-string v3, "album"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "album;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 710
    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    goto :goto_0

    .line 711
    :cond_8
    const-string v3, "composer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "composer;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 712
    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    goto :goto_0

    .line 713
    :cond_a
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    # getter for: Landroid/media/MediaScanner;->mProcessGenres:Z
    invoke-static {v3}, Landroid/media/MediaScanner;->access$900(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "genre"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "genre;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 715
    :cond_b
    invoke-virtual {p0, p2}, Landroid/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    goto/16 :goto_0

    .line 716
    :cond_c
    const-string/jumbo v3, "year"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string/jumbo v3, "year;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 717
    :cond_d
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    goto/16 :goto_0

    .line 718
    :cond_e
    const-string/jumbo v3, "tracknumber"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string/jumbo v3, "tracknumber;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 721
    :cond_f
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    .line 722
    .local v0, "num":I
    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    div-int/lit16 v1, v1, 0x3e8

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v1, v0

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    .line 723
    .end local v0    # "num":I
    :cond_10
    const-string v3, "discnumber"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string/jumbo v3, "set"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string/jumbo v3, "set;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 727
    :cond_11
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    .line 728
    .restart local v0    # "num":I
    mul-int/lit16 v1, v0, 0x3e8

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    rem-int/lit16 v2, v2, 0x3e8

    add-int/2addr v1, v2

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    .line 729
    .end local v0    # "num":I
    :cond_12
    const-string v3, "duration"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 730
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    goto/16 :goto_0

    .line 731
    :cond_13
    const-string/jumbo v3, "writer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string/jumbo v3, "writer;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 732
    :cond_14
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    goto/16 :goto_0

    .line 733
    :cond_15
    const-string v3, "compilation"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 734
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    goto/16 :goto_0

    .line 735
    :cond_16
    const-string v3, "isdrm"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 736
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_17

    :goto_1
    iput-boolean v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    goto/16 :goto_0

    :cond_17
    move v1, v2

    goto :goto_1

    .line 737
    :cond_18
    const-string/jumbo v1, "width"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 738
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    goto/16 :goto_0

    .line 739
    :cond_19
    const-string v1, "height"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 740
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    goto/16 :goto_0
.end method

.method public scanFile(Ljava/lang/String;JJZZ)V
    .locals 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "lastModified"    # J
    .param p4, "fileSize"    # J
    .param p6, "isDirectory"    # Z
    .param p7, "noMedia"    # Z

    .prologue
    .line 614
    const/4 v3, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;

    .line 615
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 839
    const-string v0, "audio/mp4"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    :goto_0
    return-void

    .line 846
    :cond_0
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 847
    invoke-static {p1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    goto :goto_0
.end method
