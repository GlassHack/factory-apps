.class public Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;
.super Ljava/lang/Object;
.source "StatusBarNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;
    }
.end annotation


# static fields
.field private static final ACCOUNT_NAME_PROJECTION:[Ljava/lang/String;

.field private static final AVATAR_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGenericAvatar:Landroid/graphics/Bitmap;

.field private mLastSoundPlayedMs:J

.field private mNotificationInfo:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

.field private final mNotificationLock:Ljava/lang/Object;

.field private mNotificationMgr:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "data"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->AVATAR_PROJECTION:[Ljava/lang/String;

    .line 656
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->ACCOUNT_NAME_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationLock:Ljava/lang/Object;

    .line 229
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    .line 230
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 242
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationMgr:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private cancelNotify(Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V
    .locals 4
    .param p1, "jid"    # Ljava/lang/String;
    .param p2, "accountId"    # J
    .param p4, "settings"    # Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    .prologue
    const/4 v3, 0x3

    .line 458
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 460
    const-string v1, "GTalkService"

    invoke-static {v1, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelNotify for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", accountId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->log(Ljava/lang/String;)V

    .line 464
    :cond_0
    const/4 v0, 0x0

    .line 465
    .local v0, "cancelAll":Z
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationInfo:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

    if-nez v1, :cond_2

    .line 471
    const-string v1, "GTalkService"

    invoke-static {v1, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 472
    const-string v1, "cancelNotify: mNotificationInfo is null, cancel all"

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->log(Ljava/lang/String;)V

    .line 474
    :cond_1
    const/4 v0, 0x1

    .line 476
    :cond_2
    if-nez p1, :cond_4

    .line 477
    const-string v1, "GTalkService"

    invoke-static {v1, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 478
    const-string v1, "cancelNotify: jid is null, cancel all"

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->log(Ljava/lang/String;)V

    .line 480
    :cond_3
    const/4 v0, 0x1

    .line 482
    :cond_4
    if-eqz v0, :cond_5

    .line 483
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationMgr:Landroid/app/NotificationManager;

    long-to-int v2, p2

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 496
    :goto_0
    return-void

    .line 487
    :cond_5
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 488
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationInfo:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;->removeForUser(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 489
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationMgr:Landroid/app/NotificationManager;

    long-to-int v3, p2

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 495
    :cond_6
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 491
    :cond_7
    :try_start_1
    const-string v1, "GTalkService"

    const/4 v3, 0x3

    invoke-static {v1, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelNotify: cannot find notification for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private createNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/TaskStackBuilder;ZLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Ljava/lang/String;JLandroid/graphics/Bitmap;IZZ)Landroid/app/Notification;
    .locals 12
    .param p1, "tickerText"    # Ljava/lang/String;
    .param p2, "contentTitle"    # Ljava/lang/String;
    .param p3, "contentMessage"    # Ljava/lang/String;
    .param p4, "taskStackBuilder"    # Landroid/app/TaskStackBuilder;
    .param p5, "lightWeightNotify"    # Z
    .param p6, "settings"    # Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    .param p7, "from"    # Ljava/lang/String;
    .param p8, "accountId"    # J
    .param p10, "avatar"    # Landroid/graphics/Bitmap;
    .param p11, "unreadCount"    # I
    .param p12, "allowAlertStyleNotification"    # Z
    .param p13, "bigTextStyle"    # Z

    .prologue
    .line 543
    new-instance v9, Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    .end local p1    # "tickerText":Ljava/lang/String;
    :cond_0
    invoke-virtual {v9, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v10, 0x0

    const/high16 v11, 0x8000000

    move-object/from16 v0, p4

    invoke-virtual {v0, v10, v11}, Landroid/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v9

    const v10, 0x7f020055

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 552
    .local v7, "notification":Landroid/app/Notification$Builder;
    const/4 v9, 0x1

    move/from16 v0, p11

    if-le v0, v9, :cond_1

    .line 553
    move/from16 v0, p11

    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 556
    :cond_1
    if-eqz p10, :cond_2

    .line 557
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createNotification: set notification\'s icon to the avatar "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p10

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->log(Ljava/lang/String;)V

    .line 558
    move-object/from16 v0, p10

    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 561
    :cond_2
    if-nez p5, :cond_3

    if-eqz p7, :cond_3

    const-wide/16 v9, 0x0

    cmp-long v9, p8, v9

    if-lez v9, :cond_3

    if-eqz p12, :cond_3

    .line 563
    const-string v9, "popup"

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getTextNotification()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 565
    .local v5, "isAlertStyleNotification":Z
    if-eqz v5, :cond_3

    .line 566
    new-instance v4, Landroid/content/Intent;

    const-string v9, "com.google.android.talk.RECEIVE_MESSAGE"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 568
    .local v4, "intent":Landroid/content/Intent;
    const-string v9, "message"

    invoke-virtual {v4, v9, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    const-string v9, "from"

    move-object/from16 v0, p7

    invoke-virtual {v4, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    const-string v9, "accountId"

    move-wide/from16 v0, p8

    invoke-virtual {v4, v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 571
    const-string v9, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v4, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 573
    invoke-static/range {p7 .. p7}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 574
    .local v2, "bareJid":Ljava/lang/String;
    const-string v9, "username"

    invoke-virtual {v4, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 575
    const-string v9, "android.intent.extra.INTENT"

    invoke-virtual/range {p4 .. p4}, Landroid/app/TaskStackBuilder;->getIntentCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/app/TaskStackBuilder;->editIntentAt(I)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 578
    iget-object v9, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/high16 v11, 0x8000000

    invoke-static {v9, v10, v4, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 584
    .end local v2    # "bareJid":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "isAlertStyleNotification":Z
    :cond_3
    if-eqz p13, :cond_4

    if-eqz p7, :cond_4

    const-wide/16 v9, 0x0

    cmp-long v9, p8, v9

    if-lez v9, :cond_4

    if-eqz p3, :cond_4

    .line 585
    new-instance v9, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v9}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v9, p3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v9

    move-wide/from16 v0, p8

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->getNameForAccount(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 591
    :cond_4
    const/4 v8, 0x0

    .line 592
    .local v8, "shouldVibrate":Z
    if-nez p5, :cond_7

    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->shouldSuppressSoundNotification()Z

    move-result v9

    if-nez v9, :cond_7

    .line 593
    move-object/from16 v0, p6

    invoke-direct {p0, v7, v0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->setRinger(Landroid/app/Notification$Builder;Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)Z

    move-result v8

    .line 597
    :cond_5
    :goto_0
    const/4 v3, 0x4

    .line 598
    .local v3, "defaults":I
    if-eqz v8, :cond_6

    .line 599
    or-int/lit8 v3, v3, 0x2

    .line 601
    :cond_6
    invoke-virtual {v7, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 603
    invoke-virtual {v7}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v6

    .line 604
    .local v6, "n":Landroid/app/Notification;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "create notification returning: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->log(Ljava/lang/String;)V

    .line 605
    return-object v6

    .line 594
    .end local v3    # "defaults":I
    .end local v6    # "n":Landroid/app/Notification;
    :cond_7
    sget-boolean v9, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v9, :cond_5

    .line 595
    const-string v9, "createNotification: suppress sound notification"

    invoke-direct {p0, v9}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private decodeAvatar([B)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "data"    # [B

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 726
    if-nez p1, :cond_1

    move-object v0, v9

    .line 760
    :cond_0
    :goto_0
    return-object v0

    .line 729
    :cond_1
    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 730
    .local v0, "b":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    move-object v0, v9

    .line 731
    goto :goto_0

    .line 737
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 738
    .local v3, "dwidth":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 740
    .local v4, "dheight":I
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 741
    .local v7, "res":Landroid/content/res/Resources;
    const v2, 0x1050005

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 743
    .local v11, "vwidth":I
    const v2, 0x1050006

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 746
    .local v10, "vheight":I
    if-gt v3, v11, :cond_3

    if-le v4, v10, :cond_0

    .line 751
    :cond_3
    int-to-float v2, v11

    int-to-float v6, v3

    div-float/2addr v2, v6

    int-to-float v6, v10

    int-to-float v12, v4

    div-float/2addr v6, v12

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 753
    .local v8, "scale":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 754
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v8, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 756
    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 757
    .local v9, "scaled":Landroid/graphics/Bitmap;
    if-eq v9, v0, :cond_4

    .line 758
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    move-object v0, v9

    .line 760
    goto :goto_0
.end method

.method private getAvatarFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "dataColumn"    # I

    .prologue
    .line 764
    invoke-static {p1, p2}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->loadAvatarData(Landroid/database/Cursor;I)[B

    move-result-object v0

    .line 765
    .local v0, "rawData":[B
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->decodeAvatar([B)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private getGenericAvatar()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 77
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mGenericAvatar:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 80
    .local v0, "bmd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mGenericAvatar:Landroid/graphics/Bitmap;

    .line 82
    .end local v0    # "bmd":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mGenericAvatar:Landroid/graphics/Bitmap;

    return-object v1
.end method

.method private getNameForAccount(J)Ljava/lang/String;
    .locals 8
    .param p1, "accountId"    # J

    .prologue
    const/4 v4, 0x0

    .line 659
    const/4 v7, 0x0

    .line 661
    .local v7, "retVal":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/gsf/TalkContract$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->ACCOUNT_NAME_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 666
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 676
    :goto_0
    return-object v4

    .line 669
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 670
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 673
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v4, v7

    .line 676
    goto :goto_0

    .line 673
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private internalRemoveAllNotifications()V
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationInfo:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

    if-nez v0, :cond_0

    .line 524
    :goto_0
    return-void

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationInfo:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;->cancelNotifications()V

    .line 521
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 522
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationInfo:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;->removeAll()V

    .line 523
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static loadAvatarData(Landroid/database/Cursor;I)[B
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "dataColumn"    # I

    .prologue
    .line 722
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 769
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[StatusBarNotify] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    return-void
.end method

.method private logEmptyCursor(Ljava/lang/String;)V
    .locals 3
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 773
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[StatusBarNotify] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": empty cursor, possibly low memory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    return-void
.end method

.method private notify(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/TaskStackBuilder;ZLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;ZZ)V
    .locals 20
    .param p1, "accountId"    # J
    .param p3, "from"    # Ljava/lang/String;
    .param p4, "nickname"    # Ljava/lang/String;
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "tickerText"    # Ljava/lang/String;
    .param p7, "message"    # Ljava/lang/String;
    .param p8, "taskStackBuilder"    # Landroid/app/TaskStackBuilder;
    .param p9, "lightWeightNotify"    # Z
    .param p10, "settings"    # Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    .param p11, "allowAlertStyleNotification"    # Z
    .param p12, "bigTextStyle"    # Z

    .prologue
    .line 405
    const/16 v17, 0x0

    .line 406
    .local v17, "contentTitle":Ljava/lang/String;
    const/16 v16, 0x0

    .line 407
    .local v16, "contentMessage":Ljava/lang/String;
    const/4 v13, 0x0

    .line 408
    .local v13, "unreadCount":I
    const/4 v12, 0x0

    .line 410
    .local v12, "avatar":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationInfo:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

    if-nez v2, :cond_0

    .line 411
    new-instance v2, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;-><init>(Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationInfo:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

    .line 413
    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 414
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v10

    .line 415
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationInfo:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;->add(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/TaskStackBuilder;)Z

    .line 416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationInfo:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;->getItemForAccount(J)Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;

    move-result-object v18

    .line 417
    .local v18, "item":Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->mTitle:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    .end local v17    # "contentTitle":Ljava/lang/String;
    .local v4, "contentTitle":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->mMessage:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 419
    .end local v16    # "contentMessage":Ljava/lang/String;
    .local v5, "contentMessage":Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->mTaskStackBuilder:Landroid/app/TaskStackBuilder;

    move-object/from16 p8, v0

    .line 420
    move-object/from16 v0, v18

    iget v13, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->mUnreadCount:I

    .line 421
    move-object/from16 v0, v18

    iget-object v12, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;->mAvatar:Landroid/graphics/Bitmap;

    .line 422
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v18    # "item":Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;
    :goto_0
    move-object/from16 v2, p0

    move-object/from16 v3, p6

    move-object/from16 v6, p8

    move/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p3

    move-wide/from16 v10, p1

    move/from16 v14, p11

    move/from16 v15, p12

    .line 428
    invoke-direct/range {v2 .. v15}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->createNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/TaskStackBuilder;ZLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Ljava/lang/String;JLandroid/graphics/Bitmap;IZZ)Landroid/app/Notification;

    move-result-object v19

    .line 441
    .local v19, "notification":Landroid/app/Notification;
    if-eqz v19, :cond_2

    .line 442
    move-object/from16 v0, v19

    iget-object v2, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationMgr:Landroid/app/NotificationManager;

    move-wide/from16 v0, p1

    long-to-int v3, v0

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 453
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationMgr:Landroid/app/NotificationManager;

    move-wide/from16 v0, p1

    long-to-int v3, v0

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 455
    :cond_2
    return-void

    .line 422
    .end local v4    # "contentTitle":Ljava/lang/String;
    .end local v5    # "contentMessage":Ljava/lang/String;
    .end local v19    # "notification":Landroid/app/Notification;
    .restart local v16    # "contentMessage":Ljava/lang/String;
    .restart local v17    # "contentTitle":Ljava/lang/String;
    :catchall_0
    move-exception v2

    move-object/from16 v5, v16

    .end local v16    # "contentMessage":Ljava/lang/String;
    .restart local v5    # "contentMessage":Ljava/lang/String;
    move-object/from16 v4, v17

    .end local v17    # "contentTitle":Ljava/lang/String;
    .restart local v4    # "contentTitle":Ljava/lang/String;
    :goto_1
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v2

    .end local v5    # "contentMessage":Ljava/lang/String;
    .restart local v16    # "contentMessage":Ljava/lang/String;
    .restart local v18    # "item":Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;
    :catchall_1
    move-exception v2

    move-object/from16 v5, v16

    .end local v16    # "contentMessage":Ljava/lang/String;
    .restart local v5    # "contentMessage":Ljava/lang/String;
    goto :goto_1

    .end local v18    # "item":Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo$Item;
    :catchall_2
    move-exception v2

    goto :goto_1

    .end local v4    # "contentTitle":Ljava/lang/String;
    .end local v5    # "contentMessage":Ljava/lang/String;
    .restart local v16    # "contentMessage":Ljava/lang/String;
    .restart local v17    # "contentTitle":Ljava/lang/String;
    :cond_3
    move-object/from16 v5, v16

    .end local v16    # "contentMessage":Ljava/lang/String;
    .restart local v5    # "contentMessage":Ljava/lang/String;
    move-object/from16 v4, v17

    .end local v17    # "contentTitle":Ljava/lang/String;
    .restart local v4    # "contentTitle":Ljava/lang/String;
    goto :goto_0
.end method

.method private setRinger(Landroid/app/Notification$Builder;Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)Z
    .locals 5
    .param p1, "notification"    # Landroid/app/Notification$Builder;
    .param p2, "settings"    # Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    .prologue
    .line 610
    invoke-virtual {p2}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getTextRingtoneURI()Ljava/lang/String;

    move-result-object v1

    .line 611
    .local v1, "ringtoneUri":Ljava/lang/String;
    const-string v3, "always"

    invoke-virtual {p2}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getTextVibrateWhen()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 614
    .local v2, "vibrate":Z
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    .line 615
    .local v0, "notificationSoundUri":Landroid/net/Uri;
    :goto_0
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 616
    if-eqz v0, :cond_0

    .line 617
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mLastSoundPlayedMs:J

    .line 620
    :cond_0
    sget-boolean v3, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRinger: notificationSoundUri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " vibrate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->log(Ljava/lang/String;)V

    .line 623
    :cond_1
    return v2

    .line 614
    .end local v0    # "notificationSoundUri":Landroid/net/Uri;
    :cond_2
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private shouldSuppressSoundNotification()Z
    .locals 4

    .prologue
    .line 388
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mLastSoundPlayedMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dismissAllNotifications()V
    .locals 0

    .prologue
    .line 499
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->internalRemoveAllNotifications()V

    .line 500
    return-void
.end method

.method public dismissNotificationFor(Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V
    .locals 0
    .param p1, "buddy"    # Ljava/lang/String;
    .param p2, "accountId"    # J
    .param p4, "settings"    # Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    .prologue
    .line 527
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->cancelNotify(Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V

    .line 528
    return-void
.end method

.method public dismissNotificationsForAccount(JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V
    .locals 2
    .param p1, "accountId"    # J
    .param p3, "settings"    # Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    .prologue
    .line 503
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismissNotificationsForAccount: account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->log(Ljava/lang/String;)V

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationMgr:Landroid/app/NotificationManager;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 508
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationInfo:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

    if-nez v0, :cond_1

    .line 514
    :goto_0
    return-void

    .line 511
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 512
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationInfo:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier$NotificationInfo;->removeForAccount(J)Z

    .line 513
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAvatarForContact(Ljava/lang/String;J)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "accountId"    # J

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 680
    if-nez p1, :cond_0

    .line 681
    const-string v0, "GTalkService"

    const-string v1, "getAvatarForContact: null contact!"

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    :goto_0
    return-object v5

    .line 684
    :cond_0
    new-array v4, v1, [Ljava/lang/String;

    .line 686
    .local v4, "selectionArgs":[Ljava/lang/String;
    aput-object p1, v4, v0

    .line 688
    sget-object v0, Lcom/google/android/gsf/TalkContract$Avatars;->CONTENT_URI_AVATARS_BY:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 689
    .local v7, "builder":Landroid/net/Uri$Builder;
    invoke-static {v7, p2, p3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 691
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->AVATAR_PROJECTION:[Ljava/lang/String;

    const-string v3, "contact=?"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 697
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 698
    .local v6, "avatar":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_3

    .line 700
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 701
    const/4 v0, 0x0

    invoke-direct {p0, v8, v0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->getAvatarFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 702
    if-eqz v6, :cond_1

    .line 703
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 704
    .local v11, "res":Landroid/content/res/Resources;
    const v0, 0x1050006

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 706
    .local v9, "idealIconHeight":I
    const v0, 0x1050005

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 708
    .local v10, "idealIconWidth":I
    const/4 v0, 0x1

    invoke-static {v6, v10, v9, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 713
    .end local v9    # "idealIconHeight":I
    .end local v10    # "idealIconWidth":I
    .end local v11    # "res":Landroid/content/res/Resources;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 718
    :goto_1
    if-nez v6, :cond_2

    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->getGenericAvatar()Landroid/graphics/Bitmap;

    move-result-object v6

    .end local v6    # "avatar":Landroid/graphics/Bitmap;
    :cond_2
    move-object v5, v6

    goto :goto_0

    .line 713
    .restart local v6    # "avatar":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 716
    :cond_3
    const-string v0, "getAvatarForContact"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->logEmptyCursor(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public notifyAuthError(Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V
    .locals 7
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "accountId"    # J
    .param p4, "settings"    # Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    .prologue
    const/4 v6, 0x0

    .line 628
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x108008a

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v5, 0x7f090077

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 634
    .local v0, "authErrorNotification":Landroid/app/Notification$Builder;
    const/4 v2, 0x0

    .line 635
    .local v2, "shouldVibrate":Z
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->shouldSuppressSoundNotification()Z

    move-result v3

    if-nez v3, :cond_0

    .line 636
    invoke-direct {p0, v0, p4}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->setRinger(Landroid/app/Notification$Builder;Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)Z

    move-result v2

    .line 638
    :cond_0
    if-eqz v2, :cond_1

    .line 639
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 642
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 643
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-class v4, Lcom/google/android/gsf/gtalkservice/ConnectionAuthErrorDialog;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 644
    const-string v3, "accountId"

    invoke-virtual {v1, v3, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 645
    const-string v3, "username"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 647
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v4, 0x7f090078

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 652
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mNotificationMgr:Landroid/app/NotificationManager;

    long-to-int v4, p2

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 653
    return-void
.end method

.method public notifyChat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JZLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;Z)V
    .locals 18
    .param p1, "jid"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "accountId"    # J
    .param p6, "username"    # Ljava/lang/String;
    .param p7, "groupId"    # J
    .param p9, "lightWeightNotify"    # Z
    .param p10, "settings"    # Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    .param p11, "haveMultipleAccounts"    # Z

    .prologue
    .line 275
    const-string v2, "off"

    invoke-virtual/range {p10 .. p10}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getTextNotification()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 277
    const-string v2, "GTalkService"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "notifyChat: notification not enabled"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->log(Ljava/lang/String;)V

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    if-eqz p9, :cond_2

    .line 281
    const-string v2, "GTalkService"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "notifyChat: lightWeightNotify"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_2
    invoke-static/range {p1 .. p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 285
    .local v5, "bareJid":Ljava/lang/String;
    const-wide/16 v2, 0x0

    cmp-long v2, p7, v2

    if-eqz v2, :cond_4

    invoke-static/range {p7 .. p8}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByThreadId(J)Landroid/net/Uri;

    move-result-object v17

    .line 289
    .local v17, "uri":Landroid/net/Uri;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v10

    .line 291
    .local v10, "taskStackBuilder":Landroid/app/TaskStackBuilder;
    new-instance v15, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    move-object/from16 v0, v17

    invoke-direct {v15, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 292
    .local v15, "intent":Landroid/content/Intent;
    const/high16 v2, 0x34000000

    invoke-virtual {v15, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 295
    const-string v2, "from"

    move-object/from16 v0, p1

    invoke-virtual {v15, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const-string v2, "accountId"

    move-wide/from16 v0, p4

    invoke-virtual {v15, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 297
    const-string v2, "from_notify"

    const/4 v3, 0x1

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 298
    const-string v2, "username"

    move-object/from16 v0, p6

    invoke-virtual {v15, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    const-wide/16 v2, 0x0

    cmp-long v2, p7, v2

    if-eqz v2, :cond_3

    .line 301
    const-string v2, "is_muc"

    const/4 v3, 0x1

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 303
    :cond_3
    invoke-virtual {v10, v15}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 307
    .local v16, "resources":Landroid/content/res/Resources;
    if-eqz p11, :cond_5

    const v2, 0x7f090062

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p6, v3, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 311
    .local v7, "title":Ljava/lang/String;
    :goto_2
    const v2, 0x7f090061

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p3, v3, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 314
    .local v8, "snippet":Ljava/lang/String;
    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v2, p0

    move-wide/from16 v3, p4

    move-object/from16 v6, p2

    move-object/from16 v9, p3

    move/from16 v11, p9

    move-object/from16 v12, p10

    invoke-direct/range {v2 .. v14}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->notify(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/TaskStackBuilder;ZLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;ZZ)V

    goto/16 :goto_0

    .line 285
    .end local v7    # "title":Ljava/lang/String;
    .end local v8    # "snippet":Ljava/lang/String;
    .end local v10    # "taskStackBuilder":Landroid/app/TaskStackBuilder;
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v16    # "resources":Landroid/content/res/Resources;
    .end local v17    # "uri":Landroid/net/Uri;
    :cond_4
    invoke-static/range {p4 .. p5}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByAccount(J)Landroid/net/Uri;

    move-result-object v17

    goto/16 :goto_1

    .restart local v10    # "taskStackBuilder":Landroid/app/TaskStackBuilder;
    .restart local v15    # "intent":Landroid/content/Intent;
    .restart local v16    # "resources":Landroid/content/res/Resources;
    .restart local v17    # "uri":Landroid/net/Uri;
    :cond_5
    move-object/from16 v7, p2

    .line 307
    goto :goto_2
.end method

.method public notifyGroupChatInvitation(Lcom/google/android/gtalkservice/GroupChatInvitation;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V
    .locals 18
    .param p1, "invitation"    # Lcom/google/android/gtalkservice/GroupChatInvitation;
    .param p2, "accountId"    # J
    .param p4, "settings"    # Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    .prologue
    .line 356
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gtalkservice/GroupChatInvitation;->getGroupContactId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByThreadId(J)Landroid/net/Uri;

    move-result-object v17

    .line 357
    .local v17, "uri":Landroid/net/Uri;
    new-instance v15, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    move-object/from16 v0, v17

    invoke-direct {v15, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 358
    .local v15, "intent":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gtalkservice/GroupChatInvitation;->getRoomAddress()Ljava/lang/String;

    move-result-object v16

    .line 359
    .local v16, "roomJid":Ljava/lang/String;
    const-string v2, "from"

    move-object/from16 v0, v16

    invoke-virtual {v15, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    const-string v2, "accountId"

    move-wide/from16 v0, p2

    invoke-virtual {v15, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 361
    const-string v2, "is_muc"

    const/4 v3, 0x1

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 362
    const-string v2, "muc_inviter"

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gtalkservice/GroupChatInvitation;->getInviter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    const-string v2, "muc_password"

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gtalkservice/GroupChatInvitation;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const-string v2, "from_notify"

    const/4 v3, 0x1

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 367
    const-string v2, "state"

    const/4 v3, 0x1

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v10

    .line 369
    .local v10, "taskStackBuilder":Landroid/app/TaskStackBuilder;
    invoke-virtual {v10, v15}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f090060

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 372
    .local v7, "title":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gtalkservice/GroupChatInvitation;->getInviter()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 373
    .local v5, "inviter":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f090064

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 375
    .local v8, "snippet":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f090065

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 378
    .local v9, "dialogMessage":Ljava/lang/String;
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v3, p2

    move-object v6, v5

    move-object/from16 v12, p4

    invoke-direct/range {v2 .. v14}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->notify(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/TaskStackBuilder;ZLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;ZZ)V

    .line 380
    return-void
.end method

.method public notifySubscriptionRequest(Ljava/lang/String;Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V
    .locals 16
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "accountId"    # J
    .param p5, "settings"    # Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    .prologue
    .line 325
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getNotifyFriendInvitation()Z

    move-result v2

    if-nez v2, :cond_0

    .line 326
    const-string v2, "notifySubscriptionRequest: setting says no notify for invite"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->log(Ljava/lang/String;)V

    .line 348
    :goto_0
    return-void

    .line 330
    :cond_0
    const-string v2, "GTalkService"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyInvite: contact="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->log(Ljava/lang/String;)V

    .line 334
    :cond_1
    invoke-static/range {p1 .. p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 335
    .local v5, "bareJid":Ljava/lang/String;
    new-instance v15, Landroid/content/Intent;

    const-string v2, "android.intent.action.GTALK_MANAGE_SUBSCRIPTION"

    const/4 v3, 0x0

    invoke-direct {v15, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 336
    .local v15, "intent":Landroid/content/Intent;
    const-string v2, "vnd.android.cursor.item/gtalk-contacts"

    invoke-virtual {v15, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string v2, "from"

    move-object/from16 v0, p1

    invoke-virtual {v15, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    const-string v2, "accountId"

    move-wide/from16 v0, p3

    invoke-virtual {v15, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 339
    const-string v2, "from_notify"

    const/4 v3, 0x1

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 340
    const-string v2, "username"

    invoke-virtual {v15, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v10

    .line 342
    .local v10, "taskStackBuilder":Landroid/app/TaskStackBuilder;
    invoke-virtual {v10, v15}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 344
    move-object/from16 v7, p1

    .line 346
    .local v7, "title":Ljava/lang/String;
    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v3, p3

    move-object v6, v5

    move-object/from16 v8, p2

    move-object/from16 v9, p2

    move-object/from16 v12, p5

    invoke-direct/range {v2 .. v14}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->notify(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/TaskStackBuilder;ZLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;ZZ)V

    goto :goto_0
.end method

.method public onServiceDestroyed()V
    .locals 0

    .prologue
    .line 247
    return-void
.end method

.method public removeChatNotificationFor(Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V
    .locals 0
    .param p1, "jid"    # Ljava/lang/String;
    .param p2, "accountId"    # J
    .param p4, "settings"    # Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    .prologue
    .line 319
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->cancelNotify(Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V

    .line 320
    return-void
.end method

.method public removeSubscriptionNotificationFor(Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V
    .locals 1
    .param p1, "jid"    # Ljava/lang/String;
    .param p2, "accountId"    # J
    .param p4, "settings"    # Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    .prologue
    .line 351
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->cancelNotify(Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V

    .line 352
    return-void
.end method
