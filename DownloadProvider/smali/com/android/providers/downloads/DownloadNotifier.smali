.class public Lcom/android/providers/downloads/DownloadNotifier;
.super Ljava/lang/Object;
.source "DownloadNotifier.java"


# instance fields
.field private final mActiveNotifs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDownloadSpeed:Landroid/util/LongSparseLongArray;

.field private final mDownloadTouch:Landroid/util/LongSparseLongArray;

.field private final mNotifManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadNotifier;->mActiveNotifs:Ljava/util/HashMap;

    .line 78
    new-instance v0, Landroid/util/LongSparseLongArray;

    invoke-direct {v0}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadNotifier;->mDownloadSpeed:Landroid/util/LongSparseLongArray;

    .line 85
    new-instance v0, Landroid/util/LongSparseLongArray;

    invoke-direct {v0}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadNotifier;->mDownloadTouch:Landroid/util/LongSparseLongArray;

    .line 89
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadNotifier;->mContext:Landroid/content/Context;

    .line 90
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadNotifier;->mNotifManager:Landroid/app/NotificationManager;

    .line 92
    return-void
.end method

.method private static buildNotificationTag(Lcom/android/providers/downloads/DownloadInfo;)Ljava/lang/String;
    .locals 3
    .param p0, "info"    # Lcom/android/providers/downloads/DownloadInfo;

    .prologue
    .line 338
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    const/16 v1, 0xc4

    if-ne v0, v1, :cond_0

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    :goto_0
    return-object v0

    .line 340
    :cond_0
    invoke-static {p0}, Lcom/android/providers/downloads/DownloadNotifier;->isActiveAndVisible(Lcom/android/providers/downloads/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 342
    :cond_1
    invoke-static {p0}, Lcom/android/providers/downloads/DownloadNotifier;->isCompleteAndVisible(Lcom/android/providers/downloads/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 346
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDownloadIds(Ljava/util/Collection;)[J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/providers/downloads/DownloadInfo;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 314
    .local p1, "infos":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/providers/downloads/DownloadInfo;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v3, v5, [J

    .line 315
    .local v3, "ids":[J
    const/4 v0, 0x0

    .line 316
    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/downloads/DownloadInfo;

    .line 317
    .local v4, "info":Lcom/android/providers/downloads/DownloadInfo;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    iget-wide v5, v4, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    aput-wide v5, v3, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 319
    .end local v4    # "info":Lcom/android/providers/downloads/DownloadInfo;
    :cond_0
    return-object v3
.end method

.method private static getDownloadTitle(Landroid/content/res/Resources;Lcom/android/providers/downloads/DownloadInfo;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "info"    # Lcom/android/providers/downloads/DownloadInfo;

    .prologue
    .line 306
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mTitle:Ljava/lang/String;

    .line 309
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getNotificationTagType(Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 355
    const/4 v0, 0x0

    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static isActiveAndVisible(Lcom/android/providers/downloads/DownloadInfo;)Z
    .locals 3
    .param p0, "download"    # Lcom/android/providers/downloads/DownloadInfo;

    .prologue
    const/4 v0, 0x1

    .line 359
    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mVisibility:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mVisibility:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isCompleteAndVisible(Lcom/android/providers/downloads/DownloadInfo;)Z
    .locals 3
    .param p0, "download"    # Lcom/android/providers/downloads/DownloadInfo;

    .prologue
    const/4 v0, 0x1

    .line 365
    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-static {v1}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mVisibility:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mVisibility:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateWithLocked(Ljava/util/Collection;)V
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/providers/downloads/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "downloads":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/providers/downloads/DownloadInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    .line 128
    .local v26, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/google/common/collect/ArrayListMultimap;->create()Lcom/google/common/collect/ArrayListMultimap;

    move-result-object v8

    .line 129
    .local v8, "clustered":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/String;Lcom/android/providers/downloads/DownloadInfo;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/providers/downloads/DownloadInfo;

    .line 130
    .local v17, "info":Lcom/android/providers/downloads/DownloadInfo;
    invoke-static/range {v17 .. v17}, Lcom/android/providers/downloads/DownloadNotifier;->buildNotificationTag(Lcom/android/providers/downloads/DownloadInfo;)Ljava/lang/String;

    move-result-object v29

    .line 131
    .local v29, "tag":Ljava/lang/String;
    if-eqz v29, :cond_0

    .line 132
    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-interface {v8, v0, v1}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    .end local v17    # "info":Lcom/android/providers/downloads/DownloadInfo;
    .end local v29    # "tag":Ljava/lang/String;
    :cond_1
    invoke-interface {v8}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .end local v14    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_19

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 138
    .restart local v29    # "tag":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/android/providers/downloads/DownloadNotifier;->getNotificationTagType(Ljava/lang/String;)I

    move-result v32

    .line 139
    .local v32, "type":I
    move-object/from16 v0, v29

    invoke-interface {v8, v0}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v7

    .line 141
    .local v7, "cluster":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/providers/downloads/DownloadInfo;>;"
    new-instance v6, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-direct {v6, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 145
    .local v6, "builder":Landroid/app/Notification$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotifier;->mActiveNotifs:Ljava/util/HashMap;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_6

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotifier;->mActiveNotifs:Ljava/util/HashMap;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Long;

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 151
    .local v11, "firstShown":J
    :goto_2
    invoke-virtual {v6, v11, v12}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 154
    const/16 v34, 0x1

    move/from16 v0, v32

    move/from16 v1, v34

    if-ne v0, v1, :cond_7

    .line 155
    const v34, 0x1080081

    move/from16 v0, v34

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 163
    :cond_2
    :goto_3
    const/16 v34, 0x1

    move/from16 v0, v32

    move/from16 v1, v34

    if-eq v0, v1, :cond_3

    const/16 v34, 0x2

    move/from16 v0, v32

    move/from16 v1, v34

    if-ne v0, v1, :cond_9

    .line 165
    :cond_3
    new-instance v34, Landroid/net/Uri$Builder;

    invoke-direct/range {v34 .. v34}, Landroid/net/Uri$Builder;-><init>()V

    const-string v35, "active-dl"

    invoke-virtual/range {v34 .. v35}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v33

    .line 166
    .local v33, "uri":Landroid/net/Uri;
    new-instance v18, Landroid/content/Intent;

    const-string v34, "android.intent.action.DOWNLOAD_LIST"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    const-class v36, Lcom/android/providers/downloads/DownloadReceiver;

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    move-object/from16 v2, v33

    move-object/from16 v3, v35

    move-object/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    .local v18, "intent":Landroid/content/Intent;
    const-string v34, "extra_click_download_ids"

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/downloads/DownloadNotifier;->getDownloadIds(Ljava/util/Collection;)[J

    move-result-object v35

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const/high16 v36, 0x8000000

    move-object/from16 v0, v34

    move/from16 v1, v35

    move-object/from16 v2, v18

    move/from16 v3, v36

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 172
    const/16 v34, 0x1

    move/from16 v0, v34

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 203
    .end local v18    # "intent":Landroid/content/Intent;
    .end local v33    # "uri":Landroid/net/Uri;
    :cond_4
    :goto_4
    const/16 v25, 0x0

    .line 204
    .local v25, "remainingText":Ljava/lang/String;
    const/16 v22, 0x0

    .line 205
    .local v22, "percentText":Ljava/lang/String;
    const/16 v34, 0x1

    move/from16 v0, v32

    move/from16 v1, v34

    if-ne v0, v1, :cond_e

    .line 206
    const-wide/16 v9, 0x0

    .line 207
    .local v9, "current":J
    const-wide/16 v30, 0x0

    .line 208
    .local v30, "total":J
    const-wide/16 v27, 0x0

    .line 209
    .local v27, "speed":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotifier;->mDownloadSpeed:Landroid/util/LongSparseLongArray;

    move-object/from16 v35, v0

    monitor-enter v35

    .line 210
    :try_start_0
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/providers/downloads/DownloadInfo;

    .line 211
    .restart local v17    # "info":Lcom/android/providers/downloads/DownloadInfo;
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    move-wide/from16 v36, v0

    const-wide/16 v38, -0x1

    cmp-long v34, v36, v38

    if-eqz v34, :cond_5

    .line 212
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mCurrentBytes:J

    move-wide/from16 v36, v0

    add-long v9, v9, v36

    .line 213
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    move-wide/from16 v36, v0

    add-long v30, v30, v36

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotifier;->mDownloadSpeed:Landroid/util/LongSparseLongArray;

    move-object/from16 v34, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    move-wide/from16 v36, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseLongArray;->get(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v36

    add-long v27, v27, v36

    goto :goto_5

    .line 148
    .end local v9    # "current":J
    .end local v11    # "firstShown":J
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v17    # "info":Lcom/android/providers/downloads/DownloadInfo;
    .end local v22    # "percentText":Ljava/lang/String;
    .end local v25    # "remainingText":Ljava/lang/String;
    .end local v27    # "speed":J
    .end local v30    # "total":J
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 149
    .restart local v11    # "firstShown":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotifier;->mActiveNotifs:Ljava/util/HashMap;

    move-object/from16 v34, v0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 156
    :cond_7
    const/16 v34, 0x2

    move/from16 v0, v32

    move/from16 v1, v34

    if-ne v0, v1, :cond_8

    .line 157
    const v34, 0x108008a

    move/from16 v0, v34

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto/16 :goto_3

    .line 158
    :cond_8
    const/16 v34, 0x3

    move/from16 v0, v32

    move/from16 v1, v34

    if-ne v0, v1, :cond_2

    .line 159
    const v34, 0x1080082

    move/from16 v0, v34

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto/16 :goto_3

    .line 174
    :cond_9
    const/16 v34, 0x3

    move/from16 v0, v32

    move/from16 v1, v34

    if-ne v0, v1, :cond_4

    .line 175
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/providers/downloads/DownloadInfo;

    .line 176
    .restart local v17    # "info":Lcom/android/providers/downloads/DownloadInfo;
    sget-object v34, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    move-wide/from16 v35, v0

    invoke-static/range {v34 .. v36}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v33

    .line 178
    .restart local v33    # "uri":Landroid/net/Uri;
    const/16 v34, 0x1

    move/from16 v0, v34

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 181
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v34

    if-eqz v34, :cond_a

    .line 182
    const-string v5, "android.intent.action.DOWNLOAD_LIST"

    .line 191
    .local v5, "action":Ljava/lang/String;
    :goto_6
    new-instance v18, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    const-class v35, Lcom/android/providers/downloads/DownloadReceiver;

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-direct {v0, v5, v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    .restart local v18    # "intent":Landroid/content/Intent;
    const-string v34, "extra_click_download_ids"

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/downloads/DownloadNotifier;->getDownloadIds(Ljava/util/Collection;)[J

    move-result-object v35

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const/high16 v36, 0x8000000

    move-object/from16 v0, v34

    move/from16 v1, v35

    move-object/from16 v2, v18

    move/from16 v3, v36

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 197
    new-instance v13, Landroid/content/Intent;

    const-string v34, "android.intent.action.DOWNLOAD_HIDE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    const-class v36, Lcom/android/providers/downloads/DownloadReceiver;

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    .local v13, "hideIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v13, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_4

    .line 184
    .end local v5    # "action":Ljava/lang/String;
    .end local v13    # "hideIntent":Landroid/content/Intent;
    .end local v18    # "intent":Landroid/content/Intent;
    :cond_a
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    move/from16 v34, v0

    const/16 v35, 0x5

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_b

    .line 185
    const-string v5, "android.intent.action.DOWNLOAD_OPEN"

    .restart local v5    # "action":Ljava/lang/String;
    goto/16 :goto_6

    .line 187
    .end local v5    # "action":Ljava/lang/String;
    :cond_b
    const-string v5, "android.intent.action.DOWNLOAD_LIST"

    .restart local v5    # "action":Ljava/lang/String;
    goto/16 :goto_6

    .line 217
    .end local v5    # "action":Ljava/lang/String;
    .end local v17    # "info":Lcom/android/providers/downloads/DownloadInfo;
    .end local v33    # "uri":Landroid/net/Uri;
    .restart local v9    # "current":J
    .restart local v15    # "i$":Ljava/util/Iterator;
    .restart local v22    # "percentText":Ljava/lang/String;
    .restart local v25    # "remainingText":Ljava/lang/String;
    .restart local v27    # "speed":J
    .restart local v30    # "total":J
    :cond_c
    :try_start_1
    monitor-exit v35
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    const-wide/16 v34, 0x0

    cmp-long v34, v30, v34

    if-lez v34, :cond_10

    .line 220
    const-wide/16 v34, 0x64

    mul-long v34, v34, v9

    div-long v34, v34, v30

    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v21, v0

    .line 221
    .local v21, "percent":I
    const v34, 0x7f03001b

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    aput-object v37, v35, v36

    move-object/from16 v0, v26

    move/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .line 223
    const-wide/16 v34, 0x0

    cmp-long v34, v27, v34

    if-lez v34, :cond_d

    .line 224
    sub-long v34, v30, v9

    const-wide/16 v36, 0x3e8

    mul-long v34, v34, v36

    div-long v23, v34, v27

    .line 225
    .local v23, "remainingMillis":J
    const v34, 0x7f03001c

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-static/range {v23 .. v24}, Landroid/text/format/DateUtils;->formatDuration(J)Ljava/lang/CharSequence;

    move-result-object v37

    aput-object v37, v35, v36

    move-object/from16 v0, v26

    move/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .line 229
    .end local v23    # "remainingMillis":J
    :cond_d
    const/16 v34, 0x64

    const/16 v35, 0x0

    move/from16 v0, v34

    move/from16 v1, v21

    move/from16 v2, v35

    invoke-virtual {v6, v0, v1, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 237
    .end local v9    # "current":J
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v21    # "percent":I
    .end local v27    # "speed":J
    .end local v30    # "total":J
    :cond_e
    :goto_7
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v34

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_15

    .line 238
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/providers/downloads/DownloadInfo;

    .line 240
    .restart local v17    # "info":Lcom/android/providers/downloads/DownloadInfo;
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/providers/downloads/DownloadNotifier;->getDownloadTitle(Landroid/content/res/Resources;Lcom/android/providers/downloads/DownloadInfo;)Ljava/lang/CharSequence;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 242
    const/16 v34, 0x1

    move/from16 v0, v32

    move/from16 v1, v34

    if-ne v0, v1, :cond_12

    .line 243
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mDescription:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_11

    .line 244
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mDescription:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 248
    :goto_8
    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 263
    :cond_f
    :goto_9
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v20

    .line 291
    .end local v17    # "info":Lcom/android/providers/downloads/DownloadInfo;
    .local v20, "notif":Landroid/app/Notification;
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotifier;->mNotifManager:Landroid/app/NotificationManager;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    move/from16 v2, v35

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 217
    .end local v20    # "notif":Landroid/app/Notification;
    .restart local v9    # "current":J
    .restart local v27    # "speed":J
    .restart local v30    # "total":J
    :catchall_0
    move-exception v34

    :try_start_2
    monitor-exit v35
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v34

    .line 231
    .restart local v15    # "i$":Ljava/util/Iterator;
    :cond_10
    const/16 v34, 0x64

    const/16 v35, 0x0

    const/16 v36, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v6, v0, v1, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    goto :goto_7

    .line 246
    .end local v9    # "current":J
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v27    # "speed":J
    .end local v30    # "total":J
    .restart local v17    # "info":Lcom/android/providers/downloads/DownloadInfo;
    :cond_11
    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_8

    .line 250
    :cond_12
    const/16 v34, 0x2

    move/from16 v0, v32

    move/from16 v1, v34

    if-ne v0, v1, :cond_13

    .line 251
    const v34, 0x7f030012

    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_9

    .line 254
    :cond_13
    const/16 v34, 0x3

    move/from16 v0, v32

    move/from16 v1, v34

    if-ne v0, v1, :cond_f

    .line 255
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v34

    if-eqz v34, :cond_14

    .line 256
    const v34, 0x7f030011

    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_9

    .line 257
    :cond_14
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v34

    if-eqz v34, :cond_f

    .line 258
    const v34, 0x7f030010

    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto/16 :goto_9

    .line 266
    .end local v17    # "info":Lcom/android/providers/downloads/DownloadInfo;
    :cond_15
    new-instance v16, Landroid/app/Notification$InboxStyle;

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 268
    .local v16, "inboxStyle":Landroid/app/Notification$InboxStyle;
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_16

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/providers/downloads/DownloadInfo;

    .line 269
    .restart local v17    # "info":Lcom/android/providers/downloads/DownloadInfo;
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/providers/downloads/DownloadNotifier;->getDownloadTitle(Landroid/content/res/Resources;Lcom/android/providers/downloads/DownloadInfo;)Ljava/lang/CharSequence;

    move-result-object v34

    move-object/from16 v0, v16

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    goto :goto_b

    .line 272
    .end local v17    # "info":Lcom/android/providers/downloads/DownloadInfo;
    :cond_16
    const/16 v34, 0x1

    move/from16 v0, v32

    move/from16 v1, v34

    if-ne v0, v1, :cond_18

    .line 273
    const/high16 v34, 0x7f040000

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    move-object/from16 v0, v26

    move/from16 v1, v34

    move/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 275
    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 276
    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 277
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/app/Notification$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 288
    :cond_17
    :goto_c
    invoke-virtual/range {v16 .. v16}, Landroid/app/Notification$InboxStyle;->build()Landroid/app/Notification;

    move-result-object v20

    .restart local v20    # "notif":Landroid/app/Notification;
    goto/16 :goto_a

    .line 279
    .end local v20    # "notif":Landroid/app/Notification;
    :cond_18
    const/16 v34, 0x2

    move/from16 v0, v32

    move/from16 v1, v34

    if-ne v0, v1, :cond_17

    .line 280
    const v34, 0x7f040001

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    move-object/from16 v0, v26

    move/from16 v1, v34

    move/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 282
    const v34, 0x7f030012

    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 284
    const v34, 0x7f030012

    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v16

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/app/Notification$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    goto :goto_c

    .line 295
    .end local v6    # "builder":Landroid/app/Notification$Builder;
    .end local v7    # "cluster":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/providers/downloads/DownloadInfo;>;"
    .end local v11    # "firstShown":J
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v22    # "percentText":Ljava/lang/String;
    .end local v25    # "remainingText":Ljava/lang/String;
    .end local v29    # "tag":Ljava/lang/String;
    .end local v32    # "type":I
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotifier;->mActiveNotifs:Ljava/util/HashMap;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 296
    .local v19, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1a
    :goto_d
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_1b

    .line 297
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 298
    .restart local v29    # "tag":Ljava/lang/String;
    move-object/from16 v0, v29

    invoke-interface {v8, v0}, Lcom/google/common/collect/Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_1a

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotifier;->mNotifManager:Landroid/app/NotificationManager;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 300
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->remove()V

    goto :goto_d

    .line 303
    .end local v29    # "tag":Ljava/lang/String;
    :cond_1b
    return-void
.end method


# virtual methods
.method public cancelAll()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotifier;->mNotifManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 96
    return-void
.end method

.method public dumpSpeeds()V
    .locals 11

    .prologue
    .line 323
    iget-object v6, p0, Lcom/android/providers/downloads/DownloadNotifier;->mDownloadSpeed:Landroid/util/LongSparseLongArray;

    monitor-enter v6

    .line 324
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadNotifier;->mDownloadSpeed:Landroid/util/LongSparseLongArray;

    invoke-virtual {v5}, Landroid/util/LongSparseLongArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 325
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadNotifier;->mDownloadSpeed:Landroid/util/LongSparseLongArray;

    invoke-virtual {v5, v2}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v3

    .line 326
    .local v3, "id":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-object v5, p0, Lcom/android/providers/downloads/DownloadNotifier;->mDownloadTouch:Landroid/util/LongSparseLongArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/LongSparseLongArray;->get(J)J

    move-result-wide v9

    sub-long v0, v7, v9

    .line 327
    .local v0, "delta":J
    const-string v5, "DownloadManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Download "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " speed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/providers/downloads/DownloadNotifier;->mDownloadSpeed:Landroid/util/LongSparseLongArray;

    invoke-virtual {v8, v2}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "bps, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms ago"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 330
    .end local v0    # "delta":J
    .end local v3    # "id":J
    :cond_0
    monitor-exit v6

    .line 331
    return-void

    .line 330
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public notifyDownloadSpeed(JJ)V
    .locals 4
    .param p1, "id"    # J
    .param p3, "bytesPerSecond"    # J

    .prologue
    .line 103
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadNotifier;->mDownloadSpeed:Landroid/util/LongSparseLongArray;

    monitor-enter v1

    .line 104
    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-eqz v0, :cond_0

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotifier;->mDownloadSpeed:Landroid/util/LongSparseLongArray;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 106
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotifier;->mDownloadTouch:Landroid/util/LongSparseLongArray;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, p1, p2, v2, v3}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 111
    :goto_0
    monitor-exit v1

    .line 112
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotifier;->mDownloadSpeed:Landroid/util/LongSparseLongArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseLongArray;->delete(J)V

    .line 109
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotifier;->mDownloadTouch:Landroid/util/LongSparseLongArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseLongArray;->delete(J)V

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateWith(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/providers/downloads/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "downloads":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/providers/downloads/DownloadInfo;>;"
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadNotifier;->mActiveNotifs:Ljava/util/HashMap;

    monitor-enter v1

    .line 120
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadNotifier;->updateWithLocked(Ljava/util/Collection;)V

    .line 121
    monitor-exit v1

    .line 122
    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
