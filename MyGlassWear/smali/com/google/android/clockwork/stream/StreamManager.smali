.class public Lcom/google/android/clockwork/stream/StreamManager;
.super Ljava/lang/Object;
.source "StreamManager.java"

# interfaces
.implements Lcom/google/android/wearable/util/Dumpable;
.implements Lcom/google/android/clockwork/stream/StreamFilterer$ChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/clockwork/stream/StreamManager$DumpContext;
    }
.end annotation


# static fields
.field public static final BITMAP_MAX_HEIGHT_PX:I = 0x190

.field public static final BITMAP_MAX_WIDTH_PX:I = 0x280

.field private static final LEGACY_GMAIL_UNDO_CANCEL_WINDOW_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "StreamManager"

.field private static sInstance:Lcom/google/android/clockwork/stream/StreamManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItemGroupId;",
            "Lcom/google/android/clockwork/stream/StreamItemGroup;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItemEntryId;",
            "Lcom/google/android/clockwork/stream/StreamItemEntry;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mLastGmailActionElapsedTimestamp:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/google/android/clockwork/stream/StreamListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mNode:Lcom/google/android/gms/wearable/Node;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mNodeLock"
    .end annotation
.end field

.field private final mNodeLock:Ljava/lang/Object;

.field private final mReadStateManager:Lcom/google/android/clockwork/stream/ReadStateManager;

.field private mRemoteViewsDisabled:Z

.field private mSortedTopItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItem;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mStreamFilterer:Lcom/google/android/clockwork/stream/StreamFilterer;

.field private mStreamItemRanker:Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mWearableClient:Lcom/google/android/wearable/gmsclient/WearableClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/wearable/gmsclient/WearableClient;Lcom/google/android/clockwork/stream/StreamFilterer;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wearableClient"    # Lcom/google/android/wearable/gmsclient/WearableClient;
    .param p3, "streamFilterer"    # Lcom/google/android/clockwork/stream/StreamFilterer;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/stream/StreamManager;->mLock:Ljava/lang/Object;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/stream/StreamManager;->mNodeLock:Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/stream/StreamManager;->mItems:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/stream/StreamManager;->mGroups:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/stream/StreamManager;->mSortedTopItems:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/clockwork/stream/StreamManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 108
    iput-object p1, p0, Lcom/google/android/clockwork/stream/StreamManager;->mContext:Landroid/content/Context;

    .line 109
    invoke-static {}, Lcom/google/android/clockwork/stream/ReadStateManager;->getInstance()Lcom/google/android/clockwork/stream/ReadStateManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/clockwork/stream/StreamManager;->mReadStateManager:Lcom/google/android/clockwork/stream/ReadStateManager;

    .line 110
    new-instance v0, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;

    iget-object v1, p0, Lcom/google/android/clockwork/stream/StreamManager;->mReadStateManager:Lcom/google/android/clockwork/stream/ReadStateManager;

    invoke-direct {v0, v1}, Lcom/google/android/clockwork/stream/ranker/StreamItemRankerReadUnreadImpl;-><init>(Lcom/google/android/clockwork/stream/ReadStateManager;)V

    iput-object v0, p0, Lcom/google/android/clockwork/stream/StreamManager;->mStreamItemRanker:Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;

    .line 111
    iput-object p2, p0, Lcom/google/android/clockwork/stream/StreamManager;->mWearableClient:Lcom/google/android/wearable/gmsclient/WearableClient;

    .line 112
    invoke-virtual {p0, p3}, Lcom/google/android/clockwork/stream/StreamManager;->setStreamFilterer(Lcom/google/android/clockwork/stream/StreamFilterer;)V

    .line 113
    return-void
.end method

.method private dismissStreamItemEntry(Lcom/google/android/clockwork/stream/StreamItemEntry;Z)V
    .locals 4
    .param p1, "item"    # Lcom/google/android/clockwork/stream/StreamItemEntry;
    .param p2, "suppressDeleteIntent"    # Z

    .prologue
    .line 222
    const-string v0, "StreamManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    const-string v0, "StreamManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissStreamItemEntry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.support.useSideChannel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    invoke-virtual {p1}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    .line 231
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/clockwork/stream/StreamManager;->removeItem(Lcom/google/android/clockwork/stream/StreamItemEntryId;)V

    .line 244
    :goto_1
    return-void

    .line 240
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/clockwork/stream/StreamManager;->removeItem(Lcom/google/android/clockwork/stream/StreamItemEntryId;)V

    .line 241
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/clockwork/stream/StreamItemEntryId;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/clockwork/stream/StreamItemEntryId;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v3

    iget v3, v3, Lcom/google/android/clockwork/stream/StreamItemEntryId;->id:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/clockwork/stream/NotificationCollectorService;->cancelWithManager(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 232
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static dumpAction(Lcom/google/android/wearable/util/IndentingPrintWriter;Landroid/support/v4/app/NotificationCompat$Action;)V
    .locals 4
    .param p0, "ipw"    # Lcom/google/android/wearable/util/IndentingPrintWriter;
    .param p1, "action"    # Landroid/support/v4/app/NotificationCompat$Action;

    .prologue
    .line 999
    iget v2, p1, Landroid/support/v4/app/NotificationCompat$Action;->icon:I

    if-eqz v2, :cond_3

    .line 1000
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "icon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/support/v4/app/NotificationCompat$Action;->icon:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1009
    :cond_0
    :goto_0
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;

    invoke-direct {v1, p1}, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;-><init>(Landroid/support/v4/app/NotificationCompat$Action;)V

    .line 1011
    .local v1, "wearableExtensions":Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;->isAvailableOffline()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1012
    const-string v2, "not available offline"

    invoke-virtual {p0, v2}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1014
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInput;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/android/clockwork/stream/StreamManager;->dumpRemoteInputs(Lcom/google/android/wearable/util/IndentingPrintWriter;[Landroid/support/v4/app/RemoteInput;)V

    .line 1015
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1016
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/android/clockwork/stream/StreamManager;->dumpExtras(Lcom/google/android/wearable/util/IndentingPrintWriter;Landroid/os/Bundle;)V

    .line 1018
    :cond_2
    return-void

    .line 1001
    .end local v1    # "wearableExtensions":Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;
    :cond_3
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1002
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.google.android.wearable.stream.ACTION_ICON_BITMAP"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1004
    .local v0, "iconBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 1005
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "icon (alternative): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static dumpExtras(Lcom/google/android/wearable/util/IndentingPrintWriter;Landroid/os/Bundle;)V
    .locals 5
    .param p0, "ipw"    # Lcom/google/android/wearable/util/IndentingPrintWriter;
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1021
    const-string v3, "extras:"

    invoke-virtual {p0, v3}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1022
    invoke-virtual {p0}, Lcom/google/android/wearable/util/IndentingPrintWriter;->increaseIndent()V

    .line 1023
    if-nez p1, :cond_1

    .line 1024
    const-string v3, "null"

    invoke-virtual {p0, v3}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1032
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/wearable/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1033
    return-void

    .line 1026
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1027
    .local v2, "sortedKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1028
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1029
    .local v1, "key":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/clockwork/stream/StreamManager;->formatObjectForDump(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static dumpNotification(Lcom/google/android/wearable/util/IndentingPrintWriter;Landroid/app/Notification;Lcom/google/android/clockwork/stream/StreamManager$DumpContext;)V
    .locals 31
    .param p0, "ipw"    # Lcom/google/android/wearable/util/IndentingPrintWriter;
    .param p1, "notif"    # Landroid/app/Notification;
    .param p2, "dumpContext"    # Lcom/google/android/clockwork/stream/StreamManager$DumpContext;

    .prologue
    .line 815
    invoke-static/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v12

    .line 816
    .local v12, "extras":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/google/android/clockwork/stream/LegacyNotificationUtil;->getWearableOptions(Landroid/app/Notification;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    move-result-object v26

    .line 818
    .local v26, "wearableOptions":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    const-string v27, "android.title"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v24

    .line 819
    .local v24, "title":Ljava/lang/CharSequence;
    if-eqz v24, :cond_0

    .line 820
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "title: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static/range {v24 .. v24}, Lcom/google/android/clockwork/stream/StreamManager;->formatCharSequenceForDump(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 822
    :cond_0
    const-string v27, "android.text"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v23

    .line 823
    .local v23, "text":Ljava/lang/CharSequence;
    if-eqz v23, :cond_1

    .line 824
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "text: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static/range {v23 .. v23}, Lcom/google/android/clockwork/stream/StreamManager;->formatCharSequenceForDump(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 826
    :cond_1
    const-string v27, "android.subText"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v22

    .line 827
    .local v22, "subText":Ljava/lang/CharSequence;
    if-eqz v22, :cond_2

    .line 828
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "subtext: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static/range {v22 .. v22}, Lcom/google/android/clockwork/stream/StreamManager;->formatCharSequenceForDump(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 830
    :cond_2
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    move-wide/from16 v27, v0

    const-wide/16 v29, 0x0

    cmp-long v27, v27, v29

    if-eqz v27, :cond_3

    .line 831
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "when: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    new-instance v28, Ljava/util/Date;

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    move-wide/from16 v29, v0

    invoke-direct/range {v28 .. v30}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 833
    :cond_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/Notification;->priority:I

    move/from16 v27, v0

    if-eqz v27, :cond_4

    .line 834
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "priority: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/Notification;->priority:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 836
    :cond_4
    const-string v27, "android.showChronometer"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 837
    const-string v27, "show chronometer"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 839
    :cond_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v27, v0

    if-eqz v27, :cond_6

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/google/android/clockwork/stream/StreamManager$DumpContext;->verbose:Z

    move/from16 v27, v0

    if-eqz v27, :cond_6

    .line 840
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "defaults: 0x"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 842
    :cond_6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v27, v0

    if-eqz v27, :cond_7

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/google/android/clockwork/stream/StreamManager$DumpContext;->verbose:Z

    move/from16 v27, v0

    if-eqz v27, :cond_7

    .line 843
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "flags: 0x"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 845
    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object/from16 v27, v0

    if-eqz v27, :cond_8

    .line 846
    const-string v27, "has sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 848
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/Notification;->vibrate:[J

    move-object/from16 v27, v0

    if-eqz v27, :cond_9

    .line 849
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "vibrate: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/Notification;->vibrate:[J

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/google/android/clockwork/stream/StreamManager;->formatObjectForDump(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 851
    :cond_9
    const-string v27, "android.largeIcon"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Landroid/graphics/Bitmap;

    .line 852
    .local v18, "largeIconBitmap":Landroid/graphics/Bitmap;
    if-eqz v18, :cond_a

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/google/android/clockwork/stream/StreamManager$DumpContext;->verbose:Z

    move/from16 v27, v0

    if-eqz v27, :cond_a

    .line 853
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "large icon: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "x"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 856
    :cond_a
    const-string v27, "android.picture"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    .line 857
    .local v8, "bigPictureBitmap":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_b

    .line 858
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "big picture: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "x"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 861
    :cond_b
    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getBackground()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 862
    .local v7, "backgroundBitmap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_c

    .line 863
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "background: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "x"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 866
    :cond_c
    const-string v27, "android.textLines"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v17

    .line 868
    .local v17, "inboxLines":[Ljava/lang/CharSequence;
    if-eqz v17, :cond_e

    .line 869
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/google/android/clockwork/stream/StreamManager$DumpContext;->verbose:Z

    move/from16 v27, v0

    if-eqz v27, :cond_10

    .line 870
    const-string v27, "inbox lines:"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 871
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/wearable/util/IndentingPrintWriter;->increaseIndent()V

    .line 872
    move-object/from16 v6, v17

    .local v6, "arr$":[Ljava/lang/CharSequence;
    array-length v0, v6

    move/from16 v19, v0

    .local v19, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_0
    move/from16 v0, v19

    if-ge v15, v0, :cond_d

    aget-object v16, v6, v15

    .line 873
    .local v16, "inboxLine":Ljava/lang/CharSequence;
    invoke-static/range {v16 .. v16}, Lcom/google/android/clockwork/stream/StreamManager;->formatCharSequenceForDump(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 872
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 875
    .end local v16    # "inboxLine":Ljava/lang/CharSequence;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/wearable/util/IndentingPrintWriter;->decreaseIndent()V

    .line 880
    .end local v6    # "arr$":[Ljava/lang/CharSequence;
    .end local v15    # "i$":I
    .end local v19    # "len$":I
    :cond_e
    :goto_1
    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getDisplayIntent()Landroid/app/PendingIntent;

    move-result-object v11

    .line 881
    .local v11, "displayIntent":Landroid/app/PendingIntent;
    if-eqz v11, :cond_f

    .line 882
    const-string v27, "has display intent"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 884
    :cond_f
    invoke-static/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat;->getActionCount(Landroid/app/Notification;)I

    move-result v4

    .line 885
    .local v4, "actionCount":I
    if-lez v4, :cond_12

    .line 886
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/google/android/clockwork/stream/StreamManager$DumpContext;->verbose:Z

    move/from16 v27, v0

    if-eqz v27, :cond_13

    .line 887
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " actions:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 888
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/wearable/util/IndentingPrintWriter;->increaseIndent()V

    .line 889
    const/4 v5, 0x0

    .local v5, "actionIndex":I
    :goto_2
    if-ge v5, v4, :cond_11

    .line 890
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Landroid/support/v4/app/NotificationCompat;->getAction(Landroid/app/Notification;I)Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v3

    .line 892
    .local v3, "action":Landroid/support/v4/app/NotificationCompat$Action;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "action "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ": "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-object v0, v3, Landroid/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/google/android/clockwork/stream/StreamManager;->formatCharSequenceForDump(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 894
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/wearable/util/IndentingPrintWriter;->increaseIndent()V

    .line 895
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/clockwork/stream/StreamManager;->dumpAction(Lcom/google/android/wearable/util/IndentingPrintWriter;Landroid/support/v4/app/NotificationCompat$Action;)V

    .line 896
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/wearable/util/IndentingPrintWriter;->decreaseIndent()V

    .line 889
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 877
    .end local v3    # "action":Landroid/support/v4/app/NotificationCompat$Action;
    .end local v4    # "actionCount":I
    .end local v5    # "actionIndex":I
    .end local v11    # "displayIntent":Landroid/app/PendingIntent;
    :cond_10
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "inbox style with "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " lines"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 898
    .restart local v4    # "actionCount":I
    .restart local v5    # "actionIndex":I
    .restart local v11    # "displayIntent":Landroid/app/PendingIntent;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/wearable/util/IndentingPrintWriter;->decreaseIndent()V

    .line 903
    .end local v5    # "actionIndex":I
    :cond_12
    :goto_3
    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getActions()Ljava/util/List;

    move-result-object v25

    .line 904
    .local v25, "wearableActions":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/NotificationCompat$Action;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_15

    .line 905
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/google/android/clockwork/stream/StreamManager$DumpContext;->verbose:Z

    move/from16 v27, v0

    if-eqz v27, :cond_16

    .line 906
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " wearable actions:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 907
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/wearable/util/IndentingPrintWriter;->increaseIndent()V

    .line 908
    const/4 v5, 0x0

    .restart local v5    # "actionIndex":I
    :goto_4
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v5, v0, :cond_14

    .line 909
    move-object/from16 v0, v25

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/NotificationCompat$Action;

    .line 910
    .restart local v3    # "action":Landroid/support/v4/app/NotificationCompat$Action;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "action "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ": "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-object v0, v3, Landroid/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/google/android/clockwork/stream/StreamManager;->formatCharSequenceForDump(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 912
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/wearable/util/IndentingPrintWriter;->increaseIndent()V

    .line 913
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/android/clockwork/stream/StreamManager;->dumpAction(Lcom/google/android/wearable/util/IndentingPrintWriter;Landroid/support/v4/app/NotificationCompat$Action;)V

    .line 914
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/wearable/util/IndentingPrintWriter;->decreaseIndent()V

    .line 908
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 900
    .end local v3    # "action":Landroid/support/v4/app/NotificationCompat$Action;
    .end local v5    # "actionIndex":I
    .end local v25    # "wearableActions":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/NotificationCompat$Action;>;"
    :cond_13
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " actions"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 916
    .restart local v5    # "actionIndex":I
    .restart local v25    # "wearableActions":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/NotificationCompat$Action;>;"
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/wearable/util/IndentingPrintWriter;->decreaseIndent()V

    .line 921
    .end local v5    # "actionIndex":I
    :cond_15
    :goto_5
    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getPages()Ljava/util/List;

    move-result-object v20

    .line 922
    .local v20, "pages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_18

    .line 923
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/google/android/clockwork/stream/StreamManager$DumpContext;->verbose:Z

    move/from16 v27, v0

    if-eqz v27, :cond_28

    .line 924
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " pages:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 925
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/wearable/util/IndentingPrintWriter;->increaseIndent()V

    .line 926
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_6
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v14, v0, :cond_17

    .line 927
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "page "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 928
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/wearable/util/IndentingPrintWriter;->increaseIndent()V

    .line 929
    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/app/Notification;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/google/android/clockwork/stream/StreamManager;->dumpNotification(Lcom/google/android/wearable/util/IndentingPrintWriter;Landroid/app/Notification;Lcom/google/android/clockwork/stream/StreamManager$DumpContext;)V

    .line 930
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/wearable/util/IndentingPrintWriter;->decreaseIndent()V

    .line 926
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 918
    .end local v14    # "i":I
    .end local v20    # "pages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification;>;"
    :cond_16
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " wearable actions"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 932
    .restart local v14    # "i":I
    .restart local v20    # "pages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification;>;"
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/wearable/util/IndentingPrintWriter;->decreaseIndent()V

    .line 937
    .end local v14    # "i":I
    :cond_18
    :goto_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1a

    .line 938
    const-string v27, "has content intent"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 939
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/wearable/util/IndentingPrintWriter;->increaseIndent()V

    .line 940
    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getContentIntentAvailableOffline()Z

    move-result v27

    if-nez v27, :cond_19

    .line 941
    const-string v27, "not available offline"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 943
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/wearable/util/IndentingPrintWriter;->decreaseIndent()V

    .line 946
    :cond_1a
    invoke-static/range {p1 .. p1}, Lcom/google/android/clockwork/stream/LegacyNotificationUtil;->getGroup(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v13

    .line 947
    .local v13, "groupKey":Ljava/lang/String;
    if-eqz v13, :cond_1b

    .line 948
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "group key: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 949
    invoke-static/range {p1 .. p1}, Lcom/google/android/clockwork/stream/LegacyNotificationUtil;->isGroupSummary(Landroid/app/Notification;)Z

    move-result v27

    if-eqz v27, :cond_1b

    .line 950
    const-string v27, "is group summary"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 953
    :cond_1b
    invoke-static/range {p1 .. p1}, Lcom/google/android/clockwork/stream/LegacyNotificationUtil;->getSortKey(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v21

    .line 954
    .local v21, "sortKey":Ljava/lang/String;
    if-eqz v21, :cond_1c

    .line 955
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "sort key: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 957
    :cond_1c
    const-string v27, "com.google.android.wearable.stream.CONTENT_ICON_BITMAP"

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/graphics/Bitmap;

    .line 958
    .local v10, "contentIconBitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getContentIcon()I

    move-result v27

    if-eqz v27, :cond_29

    .line 959
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "content icon: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getContentIcon()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 964
    :cond_1d
    :goto_8
    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getContentIconGravity()I

    move-result v27

    const v28, 0x800005

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1e

    .line 965
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "content icon gravity: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getContentIconGravity()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 967
    :cond_1e
    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getContentAction()I

    move-result v9

    .line 968
    .local v9, "contentActionIndex":I
    const/16 v27, -0x1

    move/from16 v0, v27

    if-eq v9, v0, :cond_1f

    .line 969
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "content action index: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 971
    :cond_1f
    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getGravity()I

    move-result v27

    const/16 v28, 0x50

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_20

    .line 972
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "gravity: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getGravity()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 974
    :cond_20
    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getCustomSizePreset()I

    move-result v27

    if-eqz v27, :cond_21

    .line 975
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "custom size preset: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getCustomSizePreset()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 977
    :cond_21
    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getCustomContentHeight()I

    move-result v27

    if-eqz v27, :cond_22

    .line 978
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "custom content height: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getCustomContentHeight()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 980
    :cond_22
    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getStartScrollBottom()Z

    move-result v27

    if-eqz v27, :cond_23

    .line 981
    const-string v27, "start scroll bottom"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 983
    :cond_23
    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getHintHideIcon()Z

    move-result v27

    if-eqz v27, :cond_24

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/google/android/clockwork/stream/StreamManager$DumpContext;->verbose:Z

    move/from16 v27, v0

    if-eqz v27, :cond_24

    .line 984
    const-string v27, "hint hide icon"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 986
    :cond_24
    invoke-virtual/range {v26 .. v26}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getHintShowBackgroundOnly()Z

    move-result v27

    if-eqz v27, :cond_25

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/google/android/clockwork/stream/StreamManager$DumpContext;->verbose:Z

    move/from16 v27, v0

    if-eqz v27, :cond_25

    .line 987
    const-string v27, "hint show background only"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 989
    :cond_25
    invoke-static/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat;->getLocalOnly(Landroid/app/Notification;)Z

    move-result v27

    if-eqz v27, :cond_26

    .line 990
    const-string v27, "local only"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 993
    :cond_26
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/google/android/clockwork/stream/StreamManager$DumpContext;->verbose:Z

    move/from16 v27, v0

    if-eqz v27, :cond_27

    .line 994
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/google/android/clockwork/stream/StreamManager;->dumpExtras(Lcom/google/android/wearable/util/IndentingPrintWriter;Landroid/os/Bundle;)V

    .line 996
    :cond_27
    return-void

    .line 934
    .end local v9    # "contentActionIndex":I
    .end local v10    # "contentIconBitmap":Landroid/graphics/Bitmap;
    .end local v13    # "groupKey":Ljava/lang/String;
    .end local v21    # "sortKey":Ljava/lang/String;
    :cond_28
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " pages"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 960
    .restart local v10    # "contentIconBitmap":Landroid/graphics/Bitmap;
    .restart local v13    # "groupKey":Ljava/lang/String;
    .restart local v21    # "sortKey":Ljava/lang/String;
    :cond_29
    if-eqz v10, :cond_1d

    .line 961
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "content icon (alternative): "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "x"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_8
.end method

.method private static dumpRemoteInputs(Lcom/google/android/wearable/util/IndentingPrintWriter;[Landroid/support/v4/app/RemoteInput;)V
    .locals 6
    .param p0, "ipw"    # Lcom/google/android/wearable/util/IndentingPrintWriter;
    .param p1, "remoteInputs"    # [Landroid/support/v4/app/RemoteInput;

    .prologue
    .line 1081
    if-eqz p1, :cond_1

    array-length v4, p1

    if-lez v4, :cond_1

    .line 1082
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " remote inputs:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1083
    invoke-virtual {p0}, Lcom/google/android/wearable/util/IndentingPrintWriter;->increaseIndent()V

    .line 1084
    move-object v0, p1

    .local v0, "arr$":[Landroid/support/v4/app/RemoteInput;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1085
    .local v3, "remoteInput":Landroid/support/v4/app/RemoteInput;
    invoke-virtual {v3}, Landroid/support/v4/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/clockwork/stream/StreamManager;->formatCharSequenceForDump(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1084
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1087
    .end local v3    # "remoteInput":Landroid/support/v4/app/RemoteInput;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/wearable/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1089
    .end local v0    # "arr$":[Landroid/support/v4/app/RemoteInput;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :cond_1
    return-void
.end method

.method private dumpStreamAuditLocked(Lcom/google/android/wearable/util/IndentingPrintWriter;)V
    .locals 16
    .param p1, "ipw"    # Lcom/google/android/wearable/util/IndentingPrintWriter;

    .prologue
    .line 1092
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 1094
    .local v10, "itemsMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/clockwork/stream/StreamItemEntryId;Lcom/google/android/clockwork/stream/StreamItemEntry;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/clockwork/stream/StreamManager;->mItems:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/clockwork/stream/StreamItemEntry;

    .line 1095
    .local v3, "entry":Lcom/google/android/clockwork/stream/StreamItemEntry;
    invoke-virtual {v3}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v14

    invoke-interface {v10, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1097
    .end local v3    # "entry":Lcom/google/android/clockwork/stream/StreamItemEntry;
    :cond_0
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 1099
    .local v13, "topLevelReachableItemsMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/android/clockwork/stream/StreamItemEntryId;Lcom/google/android/clockwork/stream/StreamItemEntry;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1100
    .local v2, "auditFailures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/clockwork/stream/StreamManager;->mSortedTopItems:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/clockwork/stream/StreamItem;

    .line 1101
    .local v7, "item":Lcom/google/android/clockwork/stream/StreamItem;
    instance-of v14, v7, Lcom/google/android/clockwork/stream/StreamItemEntry;

    if-eqz v14, :cond_2

    move-object v8, v7

    .line 1102
    check-cast v8, Lcom/google/android/clockwork/stream/StreamItemEntry;

    .line 1103
    .local v8, "itemEntry":Lcom/google/android/clockwork/stream/StreamItemEntry;
    invoke-virtual {v8}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v14

    invoke-interface {v13, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v8    # "itemEntry":Lcom/google/android/clockwork/stream/StreamItemEntry;
    :cond_2
    move-object v9, v7

    .line 1105
    check-cast v9, Lcom/google/android/clockwork/stream/StreamItemGroup;

    .line 1106
    .local v9, "itemGroup":Lcom/google/android/clockwork/stream/StreamItemGroup;
    invoke-virtual {v9}, Lcom/google/android/clockwork/stream/StreamItemGroup;->getMembers()Lcom/google/common/collect/ImmutableList;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/clockwork/stream/StreamItemEntry;

    .line 1107
    .local v11, "member":Lcom/google/android/clockwork/stream/StreamItemEntry;
    invoke-virtual {v11}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v14

    invoke-interface {v13, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1109
    .end local v11    # "member":Lcom/google/android/clockwork/stream/StreamItemEntry;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/clockwork/stream/StreamManager;->mGroups:Ljava/util/Map;

    invoke-virtual {v9}, Lcom/google/android/clockwork/stream/StreamItemGroup;->getId()Lcom/google/android/clockwork/stream/StreamItemGroupId;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/clockwork/stream/StreamItemGroup;

    .line 1110
    .local v4, "groupsMapGroup":Lcom/google/android/clockwork/stream/StreamItemGroup;
    if-nez v4, :cond_4

    .line 1111
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "only_in_groups_map: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v7}, Lcom/google/android/clockwork/stream/StreamItem;->getId()Lcom/google/android/clockwork/stream/StreamItemId;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1112
    :cond_4
    if-eq v9, v4, :cond_1

    .line 1113
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "group_object_differs_from_top_level: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v9}, Lcom/google/android/clockwork/stream/StreamItemGroup;->getId()Lcom/google/android/clockwork/stream/StreamItemGroupId;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1117
    .end local v4    # "groupsMapGroup":Lcom/google/android/clockwork/stream/StreamItemGroup;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "item":Lcom/google/android/clockwork/stream/StreamItem;
    .end local v9    # "itemGroup":Lcom/google/android/clockwork/stream/StreamItemGroup;
    :cond_5
    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/clockwork/stream/StreamItemEntry;

    .line 1118
    .local v7, "item":Lcom/google/android/clockwork/stream/StreamItemEntry;
    invoke-virtual {v7}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/clockwork/stream/StreamItemEntry;

    .line 1119
    .local v12, "topLevelReachableItem":Lcom/google/android/clockwork/stream/StreamItemEntry;
    if-nez v12, :cond_7

    .line 1120
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "only_in_items: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1121
    :cond_7
    if-eq v7, v12, :cond_6

    .line 1122
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "item_object_differs_from_top_level_reachable: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1125
    .end local v7    # "item":Lcom/google/android/clockwork/stream/StreamItemEntry;
    .end local v12    # "topLevelReachableItem":Lcom/google/android/clockwork/stream/StreamItemEntry;
    :cond_8
    invoke-interface {v13}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/clockwork/stream/StreamItemEntry;

    .line 1126
    .restart local v12    # "topLevelReachableItem":Lcom/google/android/clockwork/stream/StreamItemEntry;
    invoke-virtual {v12}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 1127
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "only_in_top_level_reachable_items: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1131
    .end local v12    # "topLevelReachableItem":Lcom/google/android/clockwork/stream/StreamItemEntry;
    :cond_a
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_c

    .line 1132
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "*** "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " audit failures:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1133
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->increaseIndent()V

    .line 1134
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1135
    .local v1, "auditFailure":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 1137
    .end local v1    # "auditFailure":Ljava/lang/String;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1139
    :cond_c
    return-void
.end method

.method private static dumpStreamItem(Lcom/google/android/wearable/util/IndentingPrintWriter;Lcom/google/android/clockwork/stream/StreamItem;Lcom/google/android/clockwork/stream/StreamManager$DumpContext;)V
    .locals 9
    .param p0, "ipw"    # Lcom/google/android/wearable/util/IndentingPrintWriter;
    .param p1, "item"    # Lcom/google/android/clockwork/stream/StreamItem;
    .param p2, "dumpContext"    # Lcom/google/android/clockwork/stream/StreamManager$DumpContext;

    .prologue
    .line 777
    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getId()Lcom/google/android/clockwork/stream/StreamItemId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/wearable/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 778
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getId()Lcom/google/android/clockwork/stream/StreamItemId;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/clockwork/stream/StreamItemId;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v6}, Lcom/google/android/clockwork/stream/StreamManager$DumpContext;->getAppNameForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 779
    invoke-virtual {p0}, Lcom/google/android/wearable/util/IndentingPrintWriter;->increaseIndent()V

    .line 780
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "creator node: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getCreatorNodeId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 781
    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getId()Lcom/google/android/clockwork/stream/StreamItemId;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/clockwork/stream/StreamItemId;->packageName:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getOriginalPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 782
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "original package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getOriginalPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 784
    :cond_0
    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->isGroup()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v3, p1

    .line 785
    check-cast v3, Lcom/google/android/clockwork/stream/StreamItemGroup;

    .line 786
    .local v3, "itemGroup":Lcom/google/android/clockwork/stream/StreamItemGroup;
    invoke-virtual {v3}, Lcom/google/android/clockwork/stream/StreamItemGroup;->getSummary()Lcom/google/android/clockwork/stream/StreamItemEntry;

    move-result-object v4

    .line 787
    .local v4, "itemSummary":Lcom/google/android/clockwork/stream/StreamItemEntry;
    if-eqz v4, :cond_1

    .line 788
    const-string v5, "summary:"

    invoke-virtual {p0, v5}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 789
    invoke-virtual {p0}, Lcom/google/android/wearable/util/IndentingPrintWriter;->increaseIndent()V

    .line 790
    invoke-static {p0, v4, p2}, Lcom/google/android/clockwork/stream/StreamManager;->dumpStreamItem(Lcom/google/android/wearable/util/IndentingPrintWriter;Lcom/google/android/clockwork/stream/StreamItem;Lcom/google/android/clockwork/stream/StreamManager$DumpContext;)V

    .line 791
    invoke-virtual {p0}, Lcom/google/android/wearable/util/IndentingPrintWriter;->decreaseIndent()V

    .line 794
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/clockwork/stream/StreamItemGroup;->getChildren()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 795
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/clockwork/stream/StreamItemEntry;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 796
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " children:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 797
    invoke-virtual {p0}, Lcom/google/android/wearable/util/IndentingPrintWriter;->increaseIndent()V

    .line 798
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/clockwork/stream/StreamItemEntry;

    .line 799
    .local v0, "child":Lcom/google/android/clockwork/stream/StreamItem;
    invoke-static {p0, v0, p2}, Lcom/google/android/clockwork/stream/StreamManager;->dumpStreamItem(Lcom/google/android/wearable/util/IndentingPrintWriter;Lcom/google/android/clockwork/stream/StreamItem;Lcom/google/android/clockwork/stream/StreamManager$DumpContext;)V

    goto :goto_0

    .line 801
    .end local v0    # "child":Lcom/google/android/clockwork/stream/StreamItem;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/wearable/util/IndentingPrintWriter;->decreaseIndent()V

    .line 810
    .end local v1    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/clockwork/stream/StreamItemEntry;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "itemGroup":Lcom/google/android/clockwork/stream/StreamItemGroup;
    .end local v4    # "itemSummary":Lcom/google/android/clockwork/stream/StreamItemEntry;
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/wearable/util/IndentingPrintWriter;->decreaseIndent()V

    .line 811
    return-void

    .line 804
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "post time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getPostTime()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 805
    const-string v5, "notification:"

    invoke-virtual {p0, v5}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 806
    invoke-virtual {p0}, Lcom/google/android/wearable/util/IndentingPrintWriter;->increaseIndent()V

    .line 807
    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-static {p0, v5, p2}, Lcom/google/android/clockwork/stream/StreamManager;->dumpNotification(Lcom/google/android/wearable/util/IndentingPrintWriter;Landroid/app/Notification;Lcom/google/android/clockwork/stream/StreamManager$DumpContext;)V

    .line 808
    invoke-virtual {p0}, Lcom/google/android/wearable/util/IndentingPrintWriter;->decreaseIndent()V

    goto :goto_1
.end method

.method private ensureNodeInitialized(Z)Lcom/google/android/gms/wearable/Node;
    .locals 4
    .param p1, "ipcAllowed"    # Z

    .prologue
    .line 707
    if-eqz p1, :cond_2

    .line 708
    iget-object v2, p0, Lcom/google/android/clockwork/stream/StreamManager;->mNodeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 709
    :try_start_0
    iget-object v1, p0, Lcom/google/android/clockwork/stream/StreamManager;->mNode:Lcom/google/android/gms/wearable/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 711
    :try_start_1
    iget-object v1, p0, Lcom/google/android/clockwork/stream/StreamManager;->mWearableClient:Lcom/google/android/wearable/gmsclient/WearableClient;

    invoke-virtual {v1}, Lcom/google/android/wearable/gmsclient/WearableClient;->getNodeManager()Lcom/google/android/wearable/gmsclient/NodeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/wearable/gmsclient/NodeManager;->getLocalNode()Lcom/google/android/gms/wearable/Node;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/clockwork/stream/StreamManager;->mNode:Lcom/google/android/gms/wearable/Node;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/wearable/gmsclient/WearableException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 718
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 724
    :cond_1
    iget-object v1, p0, Lcom/google/android/clockwork/stream/StreamManager;->mNode:Lcom/google/android/gms/wearable/Node;

    return-object v1

    .line 712
    :catch_0
    move-exception v0

    .line 713
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "StreamManager"

    const-string v3, "Error getting local node"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 718
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 714
    :catch_1
    move-exception v0

    .line 715
    .local v0, "e":Lcom/google/android/wearable/gmsclient/WearableException;
    :try_start_4
    const-string v1, "StreamManager"

    const-string v3, "Error getting local node"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 720
    .end local v0    # "e":Lcom/google/android/wearable/gmsclient/WearableException;
    :cond_2
    iget-object v1, p0, Lcom/google/android/clockwork/stream/StreamManager;->mNode:Lcom/google/android/gms/wearable/Node;

    if-nez v1, :cond_1

    .line 721
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Node is not initialized yet"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static formatCharSequenceForDump(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p0, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 1074
    if-nez p0, :cond_0

    .line 1075
    const/4 v0, 0x0

    .line 1077
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " chars)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static formatLongArrayForDump([J)Ljava/lang/String;
    .locals 9
    .param p0, "values"    # [J

    .prologue
    .line 1055
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "long["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v8, p0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1056
    .local v4, "sb":Ljava/lang/StringBuilder;
    array-length v7, p0

    const/16 v8, 0xa

    if-le v7, v8, :cond_0

    .line 1057
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1070
    :goto_0
    return-object v7

    .line 1059
    :cond_0
    const-string v7, " {"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    const/4 v1, 0x1

    .line 1061
    .local v1, "first":Z
    move-object v0, p0

    .local v0, "arr$":[J
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-wide v5, v0, v2

    .line 1062
    .local v5, "value":J
    if-eqz v1, :cond_1

    .line 1063
    const/4 v1, 0x0

    .line 1067
    :goto_2
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1061
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1065
    :cond_1
    const-string v7, ", "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1069
    .end local v5    # "value":J
    :cond_2
    const-string/jumbo v7, "}"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private static formatObjectForDump(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1036
    if-nez p0, :cond_0

    .line 1037
    const/4 v1, 0x0

    .line 1050
    :goto_0
    return-object v1

    .line 1038
    :cond_0
    instance-of v1, p0, Ljava/lang/Boolean;

    if-nez v1, :cond_1

    instance-of v1, p0, Ljava/lang/Byte;

    if-nez v1, :cond_1

    instance-of v1, p0, Ljava/lang/Short;

    if-nez v1, :cond_1

    instance-of v1, p0, Ljava/lang/Integer;

    if-nez v1, :cond_1

    instance-of v1, p0, Ljava/lang/Long;

    if-nez v1, :cond_1

    instance-of v1, p0, Ljava/lang/Float;

    if-nez v1, :cond_1

    instance-of v1, p0, Ljava/lang/Double;

    if-eqz v1, :cond_2

    .line 1041
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1042
    :cond_2
    instance-of v1, p0, Ljava/lang/String;

    if-nez v1, :cond_3

    instance-of v1, p0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    .line 1043
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/clockwork/stream/StreamManager;->formatCharSequenceForDump(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1044
    :cond_4
    instance-of v1, p0, [J

    if-eqz v1, :cond_5

    .line 1045
    check-cast p0, [J

    .end local p0    # "obj":Ljava/lang/Object;
    check-cast p0, [J

    invoke-static {p0}, Lcom/google/android/clockwork/stream/StreamManager;->formatLongArrayForDump([J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1046
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_5
    instance-of v1, p0, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    move-object v0, p0

    .line 1047
    check-cast v0, Landroid/graphics/Bitmap;

    .line 1048
    .local v0, "bitmapObj":Landroid/graphics/Bitmap;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bitmap)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1050
    .end local v0    # "bitmapObj":Landroid/graphics/Bitmap;
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getCreatorNodeIdForNotificationLocked(Landroid/app/Notification;)Ljava/lang/String;
    .locals 4
    .param p1, "notification"    # Landroid/app/Notification;

    .prologue
    .line 671
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/clockwork/stream/StreamManager;->ensureNodeInitialized(Z)Lcom/google/android/gms/wearable/Node;

    move-result-object v0

    .line 672
    .local v0, "node":Lcom/google/android/gms/wearable/Node;
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.google.android.wearable.stream.CREATOR_NODE_ID"

    invoke-interface {v0}, Lcom/google/android/gms/wearable/Node;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Lcom/google/android/clockwork/stream/StreamManager;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/google/android/clockwork/stream/StreamManager;->sInstance:Lcom/google/android/clockwork/stream/StreamManager;

    return-object v0
.end method

.method private getOriginalPackageNameForNotification(Ljava/lang/String;Landroid/app/Notification;)Ljava/lang/String;
    .locals 2
    .param p1, "localPackageName"    # Ljava/lang/String;
    .param p2, "notification"    # Landroid/app/Notification;

    .prologue
    .line 683
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    invoke-static {p2}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.google.android.wearable.stream.REMOTE_PACKAGE_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 687
    .end local p1    # "localPackageName":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private maybeCancelLegacyGmailUndoNotification(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "notif"    # Landroid/app/Notification;

    .prologue
    .line 393
    invoke-static {p1, p4}, Lcom/google/android/clockwork/stream/LegacyNotificationUtil;->isLegacyGmailUndoNotification(Ljava/lang/String;Landroid/app/Notification;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    iget-object v3, p0, Lcom/google/android/clockwork/stream/StreamManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 399
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/clockwork/stream/StreamManager;->mLastGmailActionElapsedTimestamp:J

    .line 400
    .local v0, "lastGmailActionTimestamp":J
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 403
    const-string v2, "StreamManager"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 404
    const-string v2, "StreamManager"

    const-string v3, "Dismissing gmail undo notification, action occurred within window"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_2
    iget-object v2, p0, Lcom/google/android/clockwork/stream/StreamManager;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2, p3}, Lcom/google/android/clockwork/stream/NotificationCollectorService;->cancelWithManager(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 400
    .end local v0    # "lastGmailActionTimestamp":J
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private static maybeCapBitmapSize(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v3, 0x280

    const/16 v2, 0x190

    .line 526
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v1, v3, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gt v1, v2, :cond_0

    .line 536
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 530
    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {p0, v3, v2}, Lcom/google/android/clockwork/utils/ImageUtils;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 532
    .local v0, "scaledBitmap":Landroid/graphics/Bitmap;
    const-string v1, "StreamManager"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 533
    const-string v1, "StreamManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scaling large bitmap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object p0, v0

    .line 536
    goto :goto_0
.end method

.method static maybeScaleNotificationBitmaps(Landroid/app/Notification;)V
    .locals 9
    .param p0, "notification"    # Landroid/app/Notification;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 494
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v2

    .line 496
    .local v2, "extras":Landroid/os/Bundle;
    const-string v7, "android.picture"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 497
    .local v1, "bigPicture":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 498
    const-string v7, "android.picture"

    invoke-static {v1}, Lcom/google/android/clockwork/stream/StreamManager;->maybeCapBitmapSize(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 501
    :cond_0
    const-string v7, "android.largeIcon"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 502
    .local v4, "largeIcon":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_1

    .line 503
    const-string v7, "android.largeIcon"

    invoke-static {v4}, Lcom/google/android/clockwork/stream/StreamManager;->maybeCapBitmapSize(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 507
    :cond_1
    new-instance v6, Landroid/support/v4/app/NotificationCompat$WearableExtender;

    invoke-direct {v6, p0}, Landroid/support/v4/app/NotificationCompat$WearableExtender;-><init>(Landroid/app/Notification;)V

    .line 509
    .local v6, "wearableExtender":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 510
    .local v0, "background":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 511
    invoke-static {v0}, Lcom/google/android/clockwork/stream/StreamManager;->maybeCapBitmapSize(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/google/android/clockwork/stream/NotificationUtils;->setNotificationWearableBackground(Landroid/app/Notification;Landroid/graphics/Bitmap;)V

    .line 515
    :cond_2
    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getPages()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Notification;

    .line 516
    .local v5, "page":Landroid/app/Notification;
    invoke-static {v5}, Lcom/google/android/clockwork/stream/StreamManager;->maybeScaleNotificationBitmaps(Landroid/app/Notification;)V

    goto :goto_0

    .line 518
    .end local v5    # "page":Landroid/app/Notification;
    :cond_3
    return-void
.end method

.method private maybeStripRemoteViewsFromNotification(Landroid/app/Notification;)V
    .locals 1
    .param p1, "notification"    # Landroid/app/Notification;

    .prologue
    .line 472
    iget-boolean v0, p0, Lcom/google/android/clockwork/stream/StreamManager;->mRemoteViewsDisabled:Z

    if-eqz v0, :cond_0

    .line 473
    invoke-direct {p0, p1}, Lcom/google/android/clockwork/stream/StreamManager;->stripRemoteViewsFromNotification(Landroid/app/Notification;)V

    .line 475
    :cond_0
    return-void
.end method

.method private notifyChangeListeners(Lcom/google/android/clockwork/stream/StreamChangeEvent;)V
    .locals 6
    .param p1, "changeEvent"    # Lcom/google/android/clockwork/stream/StreamChangeEvent;

    .prologue
    .line 654
    invoke-virtual {p1}, Lcom/google/android/clockwork/stream/StreamChangeEvent;->hasChanges()Z

    move-result v2

    if-nez v2, :cond_1

    .line 663
    :cond_0
    return-void

    .line 657
    :cond_1
    const-string v2, "StreamManager"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 658
    const-string v2, "StreamManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyChange: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "StreamManager"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual {p1, v4}, Lcom/google/android/clockwork/stream/StreamChangeEvent;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_2
    iget-object v2, p0, Lcom/google/android/clockwork/stream/StreamManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/clockwork/stream/StreamListener;

    .line 661
    .local v1, "listener":Lcom/google/android/clockwork/stream/StreamListener;
    invoke-interface {v1, p1}, Lcom/google/android/clockwork/stream/StreamListener;->onStreamChange(Lcom/google/android/clockwork/stream/StreamChangeEvent;)V

    goto :goto_0
.end method

.method private removeItem(Lcom/google/android/clockwork/stream/StreamItemEntryId;)V
    .locals 3
    .param p1, "itemId"    # Lcom/google/android/clockwork/stream/StreamItemEntryId;

    .prologue
    .line 540
    new-instance v0, Lcom/google/android/clockwork/stream/StreamChangeEvent;

    invoke-direct {v0}, Lcom/google/android/clockwork/stream/StreamChangeEvent;-><init>()V

    .line 541
    .local v0, "changeEvent":Lcom/google/android/clockwork/stream/StreamChangeEvent;
    iget-object v2, p0, Lcom/google/android/clockwork/stream/StreamManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 542
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/clockwork/stream/StreamManager;->removeItemLocked(Lcom/google/android/clockwork/stream/StreamItemEntryId;Lcom/google/android/clockwork/stream/StreamChangeEvent;)V

    .line 543
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    invoke-direct {p0, v0}, Lcom/google/android/clockwork/stream/StreamManager;->notifyChangeListeners(Lcom/google/android/clockwork/stream/StreamChangeEvent;)V

    .line 545
    return-void

    .line 543
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private removeItemLocked(Lcom/google/android/clockwork/stream/StreamItemEntryId;Lcom/google/android/clockwork/stream/StreamChangeEvent;)V
    .locals 6
    .param p1, "itemId"    # Lcom/google/android/clockwork/stream/StreamItemEntryId;
    .param p2, "changeEvent"    # Lcom/google/android/clockwork/stream/StreamChangeEvent;

    .prologue
    .line 548
    iget-object v4, p0, Lcom/google/android/clockwork/stream/StreamManager;->mItems:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/clockwork/stream/StreamItemEntry;

    .line 549
    .local v1, "item":Lcom/google/android/clockwork/stream/StreamItemEntry;
    if-nez v1, :cond_1

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    iget-object v4, p0, Lcom/google/android/clockwork/stream/StreamManager;->mItems:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    invoke-virtual {p2, v1}, Lcom/google/android/clockwork/stream/StreamChangeEvent;->itemRemoved(Lcom/google/android/clockwork/stream/StreamItemEntry;)Lcom/google/android/clockwork/stream/StreamChangeEvent;

    .line 558
    invoke-virtual {v1}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getGroupId()Lcom/google/android/clockwork/stream/StreamItemGroupId;

    move-result-object v4

    if-nez v4, :cond_2

    .line 559
    invoke-direct {p0, v1, p2}, Lcom/google/android/clockwork/stream/StreamManager;->removeTopItemLocked(Lcom/google/android/clockwork/stream/StreamItem;Lcom/google/android/clockwork/stream/StreamChangeEvent;)V

    .line 564
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getGroupId()Lcom/google/android/clockwork/stream/StreamItemGroupId;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 565
    iget-object v4, p0, Lcom/google/android/clockwork/stream/StreamManager;->mGroups:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getGroupId()Lcom/google/android/clockwork/stream/StreamItemGroupId;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/clockwork/stream/StreamItemGroup;

    .line 566
    .local v3, "oldGroup":Lcom/google/android/clockwork/stream/StreamItemGroup;
    invoke-virtual {v3}, Lcom/google/android/clockwork/stream/StreamItemGroup;->toBuilder()Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;->removeMember(Lcom/google/android/clockwork/stream/StreamItemEntry;)Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;

    move-result-object v0

    .line 568
    .local v0, "groupBuilder":Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;
    invoke-virtual {v0}, Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 569
    iget-object v4, p0, Lcom/google/android/clockwork/stream/StreamManager;->mGroups:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/android/clockwork/stream/StreamItemGroup;->getId()Lcom/google/android/clockwork/stream/StreamItemGroupId;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    invoke-direct {p0, v3, p2}, Lcom/google/android/clockwork/stream/StreamManager;->removeTopItemLocked(Lcom/google/android/clockwork/stream/StreamItem;Lcom/google/android/clockwork/stream/StreamChangeEvent;)V

    goto :goto_0

    .line 572
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;->build()Lcom/google/android/clockwork/stream/StreamItemGroup;

    move-result-object v2

    .line 573
    .local v2, "newGroup":Lcom/google/android/clockwork/stream/StreamItemGroup;
    iget-object v4, p0, Lcom/google/android/clockwork/stream/StreamManager;->mGroups:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/google/android/clockwork/stream/StreamItemGroup;->getId()Lcom/google/android/clockwork/stream/StreamItemGroupId;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    invoke-direct {p0, v2, p2}, Lcom/google/android/clockwork/stream/StreamManager;->setTopItemLocked(Lcom/google/android/clockwork/stream/StreamItem;Lcom/google/android/clockwork/stream/StreamChangeEvent;)V

    goto :goto_0
.end method

.method private removeItemsForPackage(Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 638
    new-instance v0, Lcom/google/android/clockwork/stream/StreamChangeEvent;

    invoke-direct {v0}, Lcom/google/android/clockwork/stream/StreamChangeEvent;-><init>()V

    .line 639
    .local v0, "changeEvent":Lcom/google/android/clockwork/stream/StreamChangeEvent;
    iget-object v6, p0, Lcom/google/android/clockwork/stream/StreamManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 640
    :try_start_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 641
    .local v4, "removedItems":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/android/clockwork/stream/StreamItemEntryId;>;"
    iget-object v5, p0, Lcom/google/android/clockwork/stream/StreamManager;->mItems:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/clockwork/stream/StreamItemEntry;

    .line 642
    .local v2, "item":Lcom/google/android/clockwork/stream/StreamItemEntry;
    invoke-virtual {v2}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/clockwork/stream/StreamItemEntryId;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 643
    invoke-virtual {v2}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 649
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/google/android/clockwork/stream/StreamItemEntry;
    .end local v4    # "removedItems":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/android/clockwork/stream/StreamItemEntryId;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 646
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "removedItems":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/android/clockwork/stream/StreamItemEntryId;>;"
    :cond_1
    :try_start_1
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/clockwork/stream/StreamItemEntryId;

    .line 647
    .local v3, "removedItemId":Lcom/google/android/clockwork/stream/StreamItemEntryId;
    invoke-direct {p0, v3, v0}, Lcom/google/android/clockwork/stream/StreamManager;->removeItemLocked(Lcom/google/android/clockwork/stream/StreamItemEntryId;Lcom/google/android/clockwork/stream/StreamChangeEvent;)V

    goto :goto_1

    .line 649
    .end local v3    # "removedItemId":Lcom/google/android/clockwork/stream/StreamItemEntryId;
    :cond_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 650
    invoke-direct {p0, v0}, Lcom/google/android/clockwork/stream/StreamManager;->notifyChangeListeners(Lcom/google/android/clockwork/stream/StreamChangeEvent;)V

    .line 651
    return-void
.end method

.method private removeTopItemLocked(Lcom/google/android/clockwork/stream/StreamItem;Lcom/google/android/clockwork/stream/StreamChangeEvent;)V
    .locals 5
    .param p1, "topItem"    # Lcom/google/android/clockwork/stream/StreamItem;
    .param p2, "changeEvent"    # Lcom/google/android/clockwork/stream/StreamChangeEvent;

    .prologue
    .line 616
    iget-object v3, p0, Lcom/google/android/clockwork/stream/StreamManager;->mStreamItemRanker:Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;

    invoke-virtual {v3, p1}, Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;->removeTopItemMaybeResort(Lcom/google/android/clockwork/stream/StreamItem;)Ljava/util/ArrayList;

    move-result-object v2

    .line 618
    .local v2, "newSortedTopItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/clockwork/stream/StreamItem;>;"
    if-nez v2, :cond_2

    .line 620
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/google/android/clockwork/stream/StreamManager;->mSortedTopItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 621
    iget-object v3, p0, Lcom/google/android/clockwork/stream/StreamManager;->mSortedTopItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/clockwork/stream/StreamItem;

    invoke-interface {v3}, Lcom/google/android/clockwork/stream/StreamItem;->getId()Lcom/google/android/clockwork/stream/StreamItemId;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getId()Lcom/google/android/clockwork/stream/StreamItemId;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 622
    iget-object v3, p0, Lcom/google/android/clockwork/stream/StreamManager;->mSortedTopItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 632
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    :goto_1
    invoke-virtual {p2, p1}, Lcom/google/android/clockwork/stream/StreamChangeEvent;->topLevelItemRemoved(Lcom/google/android/clockwork/stream/StreamItem;)Lcom/google/android/clockwork/stream/StreamChangeEvent;

    .line 634
    iget-object v3, p0, Lcom/google/android/clockwork/stream/StreamManager;->mReadStateManager:Lcom/google/android/clockwork/stream/ReadStateManager;

    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getId()Lcom/google/android/clockwork/stream/StreamItemId;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/clockwork/stream/ReadStateManager;->removeItem(Lcom/google/android/clockwork/stream/StreamItemId;)V

    .line 635
    return-void

    .line 620
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 628
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_2
    iput-object v2, p0, Lcom/google/android/clockwork/stream/StreamManager;->mSortedTopItems:Ljava/util/ArrayList;

    .line 629
    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Lcom/google/android/clockwork/stream/StreamChangeEvent;->setHasReordered(Z)V

    goto :goto_1
.end method

.method public static setInstance(Lcom/google/android/clockwork/stream/StreamManager;)V
    .locals 2
    .param p0, "streamManager"    # Lcom/google/android/clockwork/stream/StreamManager;

    .prologue
    .line 100
    sget-object v0, Lcom/google/android/clockwork/stream/StreamManager;->sInstance:Lcom/google/android/clockwork/stream/StreamManager;

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot register two instances of StreamManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    sput-object p0, Lcom/google/android/clockwork/stream/StreamManager;->sInstance:Lcom/google/android/clockwork/stream/StreamManager;

    .line 104
    return-void
.end method

.method private setItem(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;J)Lcom/google/android/clockwork/stream/StreamItem;
    .locals 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "notification"    # Landroid/app/Notification;
    .param p5, "postTime"    # J

    .prologue
    .line 333
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/google/android/clockwork/stream/StreamManager;->getOriginalPackageNameForNotification(Ljava/lang/String;Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v8

    .line 335
    .local v8, "originalPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/clockwork/stream/StreamManager;->mStreamFilterer:Lcom/google/android/clockwork/stream/StreamFilterer;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-interface {v3, v0, v1, v2, v8}, Lcom/google/android/clockwork/stream/StreamFilterer;->getFilteredStatus(Ljava/lang/String;Ljava/lang/String;Landroid/app/Notification;Ljava/lang/String;)I

    move-result v13

    .line 337
    .local v13, "filterReason":I
    if-eqz v13, :cond_2

    .line 339
    new-instance v3, Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/clockwork/stream/StreamItemEntryId;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/clockwork/stream/StreamManager;->removeItem(Lcom/google/android/clockwork/stream/StreamItemEntryId;)V

    .line 340
    const-string v3, "StreamManager"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 341
    const-string v3, "StreamManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  not adding filtered notification, reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", package="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", tag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_0
    invoke-direct/range {p0 .. p4}, Lcom/google/android/clockwork/stream/StreamManager;->maybeCancelLegacyGmailUndoNotification(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;)V

    .line 345
    const/4 v14, 0x0

    .line 382
    :cond_1
    :goto_0
    return-object v14

    .line 347
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/google/android/clockwork/stream/StreamManager;->maybeStripRemoteViewsFromNotification(Landroid/app/Notification;)V

    .line 348
    invoke-static/range {p4 .. p4}, Lcom/google/android/clockwork/stream/StreamManager;->maybeScaleNotificationBitmaps(Landroid/app/Notification;)V

    .line 351
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/clockwork/stream/StreamManager;->ensureNodeInitialized(Z)Lcom/google/android/gms/wearable/Node;

    .line 353
    new-instance v11, Lcom/google/android/clockwork/stream/StreamChangeEvent;

    invoke-direct {v11}, Lcom/google/android/clockwork/stream/StreamChangeEvent;-><init>()V

    .line 355
    .local v11, "changeEvent":Lcom/google/android/clockwork/stream/StreamChangeEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/clockwork/stream/StreamManager;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-wide/from16 v9, p5

    .line 356
    :try_start_0
    invoke-direct/range {v3 .. v11}, Lcom/google/android/clockwork/stream/StreamManager;->setItemLocked(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;Ljava/lang/String;JLcom/google/android/clockwork/stream/StreamChangeEvent;)Lcom/google/android/clockwork/stream/StreamItemEntry;

    move-result-object v14

    .line 358
    .local v14, "item":Lcom/google/android/clockwork/stream/StreamItemEntry;
    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/google/android/clockwork/stream/StreamManager;->notifyChangeListeners(Lcom/google/android/clockwork/stream/StreamChangeEvent;)V

    .line 361
    invoke-virtual {v11}, Lcom/google/android/clockwork/stream/StreamChangeEvent;->hasChanges()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v11}, Lcom/google/android/clockwork/stream/StreamChangeEvent;->getModifiedItems()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v14}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 362
    new-instance v12, Lcom/google/common/logging/Cw$CwEvent;

    invoke-direct {v12}, Lcom/google/common/logging/Cw$CwEvent;-><init>()V

    .line 363
    .local v12, "cwEvent":Lcom/google/common/logging/Cw$CwEvent;
    new-instance v3, Lcom/google/common/logging/Cw$CwStreamletLog;

    invoke-direct {v3}, Lcom/google/common/logging/Cw$CwStreamletLog;-><init>()V

    iput-object v3, v12, Lcom/google/common/logging/Cw$CwEvent;->streamletLog:Lcom/google/common/logging/Cw$CwStreamletLog;

    .line 364
    iget-object v3, v12, Lcom/google/common/logging/Cw$CwEvent;->streamletLog:Lcom/google/common/logging/Cw$CwStreamletLog;

    new-instance v4, Lcom/google/common/logging/Cw$CwStreamItemId;

    invoke-direct {v4}, Lcom/google/common/logging/Cw$CwStreamItemId;-><init>()V

    iput-object v4, v3, Lcom/google/common/logging/Cw$CwStreamletLog;->streamItemId:Lcom/google/common/logging/Cw$CwStreamItemId;

    .line 365
    iget-object v3, v12, Lcom/google/common/logging/Cw$CwEvent;->streamletLog:Lcom/google/common/logging/Cw$CwStreamletLog;

    iget-object v3, v3, Lcom/google/common/logging/Cw$CwStreamletLog;->streamItemId:Lcom/google/common/logging/Cw$CwStreamItemId;

    move/from16 v0, p3

    iput v0, v3, Lcom/google/common/logging/Cw$CwStreamItemId;->id:I

    .line 366
    iget-object v3, v12, Lcom/google/common/logging/Cw$CwEvent;->streamletLog:Lcom/google/common/logging/Cw$CwStreamletLog;

    iget-object v3, v3, Lcom/google/common/logging/Cw$CwStreamletLog;->streamItemId:Lcom/google/common/logging/Cw$CwStreamItemId;

    invoke-virtual {v14}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getOriginalPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/common/logging/Cw$CwStreamItemId;->originalPackageName:Ljava/lang/String;

    .line 368
    if-eqz p2, :cond_3

    .line 369
    iget-object v3, v12, Lcom/google/common/logging/Cw$CwEvent;->streamletLog:Lcom/google/common/logging/Cw$CwStreamletLog;

    iget-object v3, v3, Lcom/google/common/logging/Cw$CwStreamletLog;->streamItemId:Lcom/google/common/logging/Cw$CwStreamItemId;

    move-object/from16 v0, p2

    iput-object v0, v3, Lcom/google/common/logging/Cw$CwStreamItemId;->tag:Ljava/lang/String;

    .line 371
    :cond_3
    iget-object v3, v12, Lcom/google/common/logging/Cw$CwEvent;->streamletLog:Lcom/google/common/logging/Cw$CwStreamletLog;

    iget-object v3, v3, Lcom/google/common/logging/Cw$CwStreamletLog;->streamItemId:Lcom/google/common/logging/Cw$CwStreamItemId;

    move-wide/from16 v0, p5

    iput-wide v0, v3, Lcom/google/common/logging/Cw$CwStreamItemId;->postTimeMs:J

    .line 373
    iget-object v3, v12, Lcom/google/common/logging/Cw$CwEvent;->streamletLog:Lcom/google/common/logging/Cw$CwStreamletLog;

    const/4 v4, 0x1

    iput v4, v3, Lcom/google/common/logging/Cw$CwStreamletLog;->lifeCycleEvent:I

    .line 374
    invoke-static {}, Lcom/google/android/clockwork/logging/WearableAppLogger;->getInstance()Lcom/google/android/clockwork/logging/WearableAppLogger;

    move-result-object v15

    .line 375
    .local v15, "logger":Lcom/google/android/clockwork/logging/WearableAppLogger;
    if-eqz v15, :cond_4

    .line 376
    invoke-virtual {v15, v12}, Lcom/google/android/clockwork/logging/WearableAppLogger;->logEvent(Lcom/google/common/logging/Cw$CwEvent;)V

    goto/16 :goto_0

    .line 358
    .end local v12    # "cwEvent":Lcom/google/common/logging/Cw$CwEvent;
    .end local v14    # "item":Lcom/google/android/clockwork/stream/StreamItemEntry;
    .end local v15    # "logger":Lcom/google/android/clockwork/logging/WearableAppLogger;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 378
    .restart local v12    # "cwEvent":Lcom/google/common/logging/Cw$CwEvent;
    .restart local v14    # "item":Lcom/google/android/clockwork/stream/StreamItemEntry;
    .restart local v15    # "logger":Lcom/google/android/clockwork/logging/WearableAppLogger;
    :cond_4
    const-string v3, "StreamManager"

    const-string v4, "Couldn\'t find WearableAppLogger. You should only see this in tests."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private setItemLocked(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;Ljava/lang/String;JLcom/google/android/clockwork/stream/StreamChangeEvent;)Lcom/google/android/clockwork/stream/StreamItemEntry;
    .locals 21
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "notification"    # Landroid/app/Notification;
    .param p5, "originalPackageName"    # Ljava/lang/String;
    .param p6, "postTime"    # J
    .param p8, "changeEvent"    # Lcom/google/android/clockwork/stream/StreamChangeEvent;

    .prologue
    .line 413
    new-instance v6, Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v6, v0, v1, v2}, Lcom/google/android/clockwork/stream/StreamItemEntryId;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 414
    .local v6, "streamItemId":Lcom/google/android/clockwork/stream/StreamItemEntryId;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/clockwork/stream/StreamManager;->mItems:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/android/clockwork/stream/StreamItemEntry;

    .line 415
    .local v20, "oldItem":Lcom/google/android/clockwork/stream/StreamItemEntry;
    if-eqz v20, :cond_5

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getLastInterruptTime()J

    move-result-wide v11

    .line 416
    .local v11, "lastInterruptTime":J
    :goto_0
    if-eqz v20, :cond_6

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getLastOngoingTime()J

    move-result-wide v13

    .line 417
    .local v13, "lastOngoingTime":J
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/google/android/clockwork/stream/StreamManager;->getCreatorNodeIdForNotificationLocked(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v4

    .line 418
    .local v4, "creatorNodeId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/clockwork/stream/StreamManager;->mNode:Lcom/google/android/gms/wearable/Node;

    invoke-interface {v7}, Lcom/google/android/gms/wearable/Node;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 419
    .local v5, "isLocal":Z
    new-instance v3, Lcom/google/android/clockwork/stream/StreamItemEntry;

    move-object/from16 v7, p4

    move-wide/from16 v8, p6

    move-object/from16 v10, p5

    invoke-direct/range {v3 .. v14}, Lcom/google/android/clockwork/stream/StreamItemEntry;-><init>(Ljava/lang/String;ZLcom/google/android/clockwork/stream/StreamItemEntryId;Landroid/app/Notification;JLjava/lang/String;JJ)V

    .line 425
    .local v3, "item":Lcom/google/android/clockwork/stream/StreamItemEntry;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/clockwork/stream/StreamManager;->mItems:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v8

    invoke-interface {v7, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    move-object/from16 v0, p8

    invoke-virtual {v0, v3}, Lcom/google/android/clockwork/stream/StreamChangeEvent;->itemModified(Lcom/google/android/clockwork/stream/StreamItemEntry;)Lcom/google/android/clockwork/stream/StreamChangeEvent;

    .line 428
    invoke-virtual {v3}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getGroupId()Lcom/google/android/clockwork/stream/StreamItemGroupId;

    move-result-object v7

    if-nez v7, :cond_0

    .line 429
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-direct {v0, v3, v1}, Lcom/google/android/clockwork/stream/StreamManager;->setTopItemLocked(Lcom/google/android/clockwork/stream/StreamItem;Lcom/google/android/clockwork/stream/StreamChangeEvent;)V

    .line 434
    :cond_0
    if-eqz v20, :cond_7

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getGroupId()Lcom/google/android/clockwork/stream/StreamItemGroupId;

    move-result-object v19

    .line 435
    .local v19, "oldGroupId":Lcom/google/android/clockwork/stream/StreamItemGroupId;
    :goto_2
    if-eqz v19, :cond_1

    invoke-virtual {v3}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getGroupId()Lcom/google/android/clockwork/stream/StreamItemGroupId;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/google/android/clockwork/stream/StreamItemGroupId;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 437
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/clockwork/stream/StreamManager;->mGroups:Ljava/util/Map;

    move-object/from16 v0, v19

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/android/clockwork/stream/StreamItemGroup;

    .line 438
    .local v17, "oldGroup":Lcom/google/android/clockwork/stream/StreamItemGroup;
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/clockwork/stream/StreamItemGroup;->toBuilder()Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;->removeMember(Lcom/google/android/clockwork/stream/StreamItemEntry;)Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;

    move-result-object v18

    .line 439
    .local v18, "oldGroupBuilder":Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 440
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/clockwork/stream/StreamManager;->mGroups:Ljava/util/Map;

    move-object/from16 v0, v19

    invoke-interface {v7, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p8

    invoke-direct {v0, v1, v2}, Lcom/google/android/clockwork/stream/StreamManager;->removeTopItemLocked(Lcom/google/android/clockwork/stream/StreamItem;Lcom/google/android/clockwork/stream/StreamChangeEvent;)V

    .line 448
    .end local v17    # "oldGroup":Lcom/google/android/clockwork/stream/StreamItemGroup;
    .end local v18    # "oldGroupBuilder":Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;
    :cond_1
    :goto_3
    invoke-virtual {v3}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getGroupId()Lcom/google/android/clockwork/stream/StreamItemGroupId;

    move-result-object v7

    if-eqz v7, :cond_2

    if-eqz v20, :cond_2

    if-nez v19, :cond_2

    .line 450
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p8

    invoke-direct {v0, v1, v2}, Lcom/google/android/clockwork/stream/StreamManager;->removeTopItemLocked(Lcom/google/android/clockwork/stream/StreamItem;Lcom/google/android/clockwork/stream/StreamChangeEvent;)V

    .line 452
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getGroupId()Lcom/google/android/clockwork/stream/StreamItemGroupId;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 454
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/clockwork/stream/StreamManager;->mGroups:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getGroupId()Lcom/google/android/clockwork/stream/StreamItemGroupId;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/clockwork/stream/StreamItemGroup;

    .line 455
    .local v15, "newGroup":Lcom/google/android/clockwork/stream/StreamItemGroup;
    if-eqz v15, :cond_9

    .line 456
    invoke-virtual {v15}, Lcom/google/android/clockwork/stream/StreamItemGroup;->toBuilder()Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;

    move-result-object v16

    .line 457
    .local v16, "newGroupBuilder":Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;
    invoke-virtual {v3}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getGroupId()Lcom/google/android/clockwork/stream/StreamItemGroupId;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/google/android/clockwork/stream/StreamItemGroupId;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 458
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;->removeMember(Lcom/google/android/clockwork/stream/StreamItemEntry;)Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;

    .line 460
    :cond_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;->addMember(Lcom/google/android/clockwork/stream/StreamItemEntry;)Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;->build()Lcom/google/android/clockwork/stream/StreamItemGroup;

    move-result-object v15

    .line 464
    .end local v16    # "newGroupBuilder":Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;
    :goto_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/clockwork/stream/StreamManager;->mGroups:Ljava/util/Map;

    invoke-virtual {v15}, Lcom/google/android/clockwork/stream/StreamItemGroup;->getId()Lcom/google/android/clockwork/stream/StreamItemGroupId;

    move-result-object v8

    invoke-interface {v7, v8, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-direct {v0, v15, v1}, Lcom/google/android/clockwork/stream/StreamManager;->setTopItemLocked(Lcom/google/android/clockwork/stream/StreamItem;Lcom/google/android/clockwork/stream/StreamChangeEvent;)V

    .line 468
    .end local v15    # "newGroup":Lcom/google/android/clockwork/stream/StreamItemGroup;
    :cond_4
    return-object v3

    .line 415
    .end local v3    # "item":Lcom/google/android/clockwork/stream/StreamItemEntry;
    .end local v4    # "creatorNodeId":Ljava/lang/String;
    .end local v5    # "isLocal":Z
    .end local v11    # "lastInterruptTime":J
    .end local v13    # "lastOngoingTime":J
    .end local v19    # "oldGroupId":Lcom/google/android/clockwork/stream/StreamItemGroupId;
    :cond_5
    const-wide/16 v11, 0x0

    goto/16 :goto_0

    .line 416
    .restart local v11    # "lastInterruptTime":J
    :cond_6
    const-wide/16 v13, 0x0

    goto/16 :goto_1

    .line 434
    .restart local v3    # "item":Lcom/google/android/clockwork/stream/StreamItemEntry;
    .restart local v4    # "creatorNodeId":Ljava/lang/String;
    .restart local v5    # "isLocal":Z
    .restart local v13    # "lastOngoingTime":J
    :cond_7
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 443
    .restart local v17    # "oldGroup":Lcom/google/android/clockwork/stream/StreamItemGroup;
    .restart local v18    # "oldGroupBuilder":Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;
    .restart local v19    # "oldGroupId":Lcom/google/android/clockwork/stream/StreamItemGroupId;
    :cond_8
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;->build()Lcom/google/android/clockwork/stream/StreamItemGroup;

    move-result-object v17

    .line 444
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/clockwork/stream/StreamManager;->mGroups:Ljava/util/Map;

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/clockwork/stream/StreamItemGroup;->getId()Lcom/google/android/clockwork/stream/StreamItemGroupId;

    move-result-object v8

    move-object/from16 v0, v17

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p8

    invoke-direct {v0, v1, v2}, Lcom/google/android/clockwork/stream/StreamManager;->setTopItemLocked(Lcom/google/android/clockwork/stream/StreamItem;Lcom/google/android/clockwork/stream/StreamChangeEvent;)V

    goto/16 :goto_3

    .line 462
    .end local v17    # "oldGroup":Lcom/google/android/clockwork/stream/StreamItemGroup;
    .end local v18    # "oldGroupBuilder":Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;
    .restart local v15    # "newGroup":Lcom/google/android/clockwork/stream/StreamItemGroup;
    :cond_9
    new-instance v7, Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;

    invoke-virtual {v3}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getGroupId()Lcom/google/android/clockwork/stream/StreamItemGroupId;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;-><init>(Lcom/google/android/clockwork/stream/StreamItemGroupId;)V

    invoke-virtual {v7, v3}, Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;->addMember(Lcom/google/android/clockwork/stream/StreamItemEntry;)Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;->build()Lcom/google/android/clockwork/stream/StreamItemGroup;

    move-result-object v15

    goto :goto_4
.end method

.method private setTopItemLocked(Lcom/google/android/clockwork/stream/StreamItem;Lcom/google/android/clockwork/stream/StreamChangeEvent;)V
    .locals 7
    .param p1, "topItem"    # Lcom/google/android/clockwork/stream/StreamItem;
    .param p2, "changeEvent"    # Lcom/google/android/clockwork/stream/StreamChangeEvent;

    .prologue
    .line 581
    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->isGroup()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v1, p1

    .line 582
    check-cast v1, Lcom/google/android/clockwork/stream/StreamItemGroup;

    .line 583
    .local v1, "groupTopItem":Lcom/google/android/clockwork/stream/StreamItemGroup;
    iget-object v5, p0, Lcom/google/android/clockwork/stream/StreamManager;->mStreamItemRanker:Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;

    invoke-virtual {v5, v1}, Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;->maybeResortGroupChildren(Lcom/google/android/clockwork/stream/StreamItemGroup;)Ljava/util/ArrayList;

    move-result-object v3

    .line 585
    .local v3, "newSortedChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/clockwork/stream/StreamItemEntry;>;"
    if-eqz v3, :cond_0

    .line 586
    invoke-virtual {v1}, Lcom/google/android/clockwork/stream/StreamItemGroup;->toBuilder()Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;->setChildren(Ljava/util/Collection;)Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/clockwork/stream/StreamItemGroup$Builder;->build()Lcom/google/android/clockwork/stream/StreamItemGroup;

    move-result-object v1

    .line 587
    iget-object v5, p0, Lcom/google/android/clockwork/stream/StreamManager;->mGroups:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/google/android/clockwork/stream/StreamItemGroup;->getId()Lcom/google/android/clockwork/stream/StreamItemGroupId;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    move-object p1, v1

    .line 589
    invoke-virtual {p2, p1}, Lcom/google/android/clockwork/stream/StreamChangeEvent;->topLevelItemModified(Lcom/google/android/clockwork/stream/StreamItem;)Lcom/google/android/clockwork/stream/StreamChangeEvent;

    .line 593
    .end local v1    # "groupTopItem":Lcom/google/android/clockwork/stream/StreamItemGroup;
    .end local v3    # "newSortedChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/clockwork/stream/StreamItemEntry;>;"
    :cond_0
    iget-object v5, p0, Lcom/google/android/clockwork/stream/StreamManager;->mReadStateManager:Lcom/google/android/clockwork/stream/ReadStateManager;

    invoke-virtual {v5, p1}, Lcom/google/android/clockwork/stream/ReadStateManager;->addOrUpdateItem(Lcom/google/android/clockwork/stream/StreamItem;)V

    .line 597
    iget-object v5, p0, Lcom/google/android/clockwork/stream/StreamManager;->mStreamItemRanker:Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;

    invoke-virtual {v5, p1}, Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;->setTopItemMaybeResort(Lcom/google/android/clockwork/stream/StreamItem;)Ljava/util/ArrayList;

    move-result-object v4

    .line 598
    .local v4, "newSortedTopItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/clockwork/stream/StreamItem;>;"
    if-nez v4, :cond_3

    .line 600
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v5, p0, Lcom/google/android/clockwork/stream/StreamManager;->mSortedTopItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 601
    iget-object v5, p0, Lcom/google/android/clockwork/stream/StreamManager;->mSortedTopItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/clockwork/stream/StreamItem;

    invoke-interface {v5}, Lcom/google/android/clockwork/stream/StreamItem;->getId()Lcom/google/android/clockwork/stream/StreamItemId;

    move-result-object v5

    invoke-interface {p1}, Lcom/google/android/clockwork/stream/StreamItem;->getId()Lcom/google/android/clockwork/stream/StreamItemId;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 602
    iget-object v5, p0, Lcom/google/android/clockwork/stream/StreamManager;->mSortedTopItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 612
    .end local v0    # "count":I
    .end local v2    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {p2, p1}, Lcom/google/android/clockwork/stream/StreamChangeEvent;->topLevelItemModified(Lcom/google/android/clockwork/stream/StreamItem;)Lcom/google/android/clockwork/stream/StreamChangeEvent;

    .line 613
    return-void

    .line 600
    .restart local v0    # "count":I
    .restart local v2    # "i":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 608
    .end local v0    # "count":I
    .end local v2    # "i":I
    :cond_3
    iput-object v4, p0, Lcom/google/android/clockwork/stream/StreamManager;->mSortedTopItems:Ljava/util/ArrayList;

    .line 609
    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lcom/google/android/clockwork/stream/StreamChangeEvent;->setHasReordered(Z)V

    goto :goto_1
.end method

.method private stripRemoteViewsFromNotification(Landroid/app/Notification;)V
    .locals 4
    .param p1, "notification"    # Landroid/app/Notification;

    .prologue
    const/4 v3, 0x0

    .line 478
    iput-object v3, p1, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 479
    iput-object v3, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 480
    iput-object v3, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 481
    new-instance v3, Landroid/support/v4/app/NotificationCompat$WearableExtender;

    invoke-direct {v3, p1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;-><init>(Landroid/app/Notification;)V

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->getPages()Ljava/util/List;

    move-result-object v2

    .line 483
    .local v2, "pages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification;

    .line 484
    .local v1, "page":Landroid/app/Notification;
    invoke-direct {p0, v1}, Lcom/google/android/clockwork/stream/StreamManager;->stripRemoteViewsFromNotification(Landroid/app/Notification;)V

    goto :goto_0

    .line 486
    .end local v1    # "page":Landroid/app/Notification;
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/android/clockwork/stream/StreamListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/clockwork/stream/StreamListener;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    return-void
.end method

.method public dismissStreamItem(Lcom/google/android/clockwork/stream/StreamItemId;)V
    .locals 8
    .param p1, "id"    # Lcom/google/android/clockwork/stream/StreamItemId;

    .prologue
    .line 188
    instance-of v5, p1, Lcom/google/android/clockwork/stream/StreamItemEntryId;

    if-eqz v5, :cond_2

    .line 189
    check-cast p1, Lcom/google/android/clockwork/stream/StreamItemEntryId;

    .end local p1    # "id":Lcom/google/android/clockwork/stream/StreamItemId;
    invoke-virtual {p0, p1}, Lcom/google/android/clockwork/stream/StreamManager;->getItemById(Lcom/google/android/clockwork/stream/StreamItemEntryId;)Lcom/google/android/clockwork/stream/StreamItemEntry;

    move-result-object v1

    .line 190
    .local v1, "entry":Lcom/google/android/clockwork/stream/StreamItemEntry;
    if-eqz v1, :cond_1

    .line 191
    const/4 v5, 0x0

    invoke-direct {p0, v1, v5}, Lcom/google/android/clockwork/stream/StreamManager;->dismissStreamItemEntry(Lcom/google/android/clockwork/stream/StreamItemEntry;Z)V

    .line 193
    new-instance v0, Lcom/google/common/logging/Cw$CwEvent;

    invoke-direct {v0}, Lcom/google/common/logging/Cw$CwEvent;-><init>()V

    .line 194
    .local v0, "cwEvent":Lcom/google/common/logging/Cw$CwEvent;
    new-instance v5, Lcom/google/common/logging/Cw$CwStreamletLog;

    invoke-direct {v5}, Lcom/google/common/logging/Cw$CwStreamletLog;-><init>()V

    iput-object v5, v0, Lcom/google/common/logging/Cw$CwEvent;->streamletLog:Lcom/google/common/logging/Cw$CwStreamletLog;

    .line 195
    iget-object v5, v0, Lcom/google/common/logging/Cw$CwEvent;->streamletLog:Lcom/google/common/logging/Cw$CwStreamletLog;

    new-instance v6, Lcom/google/common/logging/Cw$CwStreamItemId;

    invoke-direct {v6}, Lcom/google/common/logging/Cw$CwStreamItemId;-><init>()V

    iput-object v6, v5, Lcom/google/common/logging/Cw$CwStreamletLog;->streamItemId:Lcom/google/common/logging/Cw$CwStreamItemId;

    .line 196
    iget-object v5, v0, Lcom/google/common/logging/Cw$CwEvent;->streamletLog:Lcom/google/common/logging/Cw$CwStreamletLog;

    iget-object v5, v5, Lcom/google/common/logging/Cw$CwStreamletLog;->streamItemId:Lcom/google/common/logging/Cw$CwStreamItemId;

    invoke-virtual {v1}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v6

    iget v6, v6, Lcom/google/android/clockwork/stream/StreamItemEntryId;->id:I

    iput v6, v5, Lcom/google/common/logging/Cw$CwStreamItemId;->id:I

    .line 197
    iget-object v5, v0, Lcom/google/common/logging/Cw$CwEvent;->streamletLog:Lcom/google/common/logging/Cw$CwStreamletLog;

    iget-object v5, v5, Lcom/google/common/logging/Cw$CwStreamletLog;->streamItemId:Lcom/google/common/logging/Cw$CwStreamItemId;

    invoke-virtual {v1}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getOriginalPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/google/common/logging/Cw$CwStreamItemId;->originalPackageName:Ljava/lang/String;

    .line 199
    invoke-virtual {v1}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/clockwork/stream/StreamItemEntryId;->tag:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 200
    iget-object v5, v0, Lcom/google/common/logging/Cw$CwEvent;->streamletLog:Lcom/google/common/logging/Cw$CwStreamletLog;

    iget-object v5, v5, Lcom/google/common/logging/Cw$CwStreamletLog;->streamItemId:Lcom/google/common/logging/Cw$CwStreamItemId;

    invoke-virtual {v1}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/clockwork/stream/StreamItemEntryId;->tag:Ljava/lang/String;

    iput-object v6, v5, Lcom/google/common/logging/Cw$CwStreamItemId;->tag:Ljava/lang/String;

    .line 202
    :cond_0
    iget-object v5, v0, Lcom/google/common/logging/Cw$CwEvent;->streamletLog:Lcom/google/common/logging/Cw$CwStreamletLog;

    iget-object v5, v5, Lcom/google/common/logging/Cw$CwStreamletLog;->streamItemId:Lcom/google/common/logging/Cw$CwStreamItemId;

    invoke-virtual {v1}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getPostTime()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/google/common/logging/Cw$CwStreamItemId;->postTimeMs:J

    .line 204
    iget-object v5, v0, Lcom/google/common/logging/Cw$CwEvent;->streamletLog:Lcom/google/common/logging/Cw$CwStreamletLog;

    const/4 v6, 0x2

    iput v6, v5, Lcom/google/common/logging/Cw$CwStreamletLog;->lifeCycleEvent:I

    .line 205
    invoke-static {}, Lcom/google/android/clockwork/logging/WearableAppLogger;->getInstance()Lcom/google/android/clockwork/logging/WearableAppLogger;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/clockwork/logging/WearableAppLogger;->logEvent(Lcom/google/common/logging/Cw$CwEvent;)V

    .line 219
    .end local v0    # "cwEvent":Lcom/google/common/logging/Cw$CwEvent;
    .end local v1    # "entry":Lcom/google/android/clockwork/stream/StreamItemEntry;
    :cond_1
    return-void

    .line 207
    .restart local p1    # "id":Lcom/google/android/clockwork/stream/StreamItemId;
    :cond_2
    instance-of v5, p1, Lcom/google/android/clockwork/stream/StreamItemGroupId;

    if-eqz v5, :cond_1

    .line 208
    check-cast p1, Lcom/google/android/clockwork/stream/StreamItemGroupId;

    .end local p1    # "id":Lcom/google/android/clockwork/stream/StreamItemId;
    invoke-virtual {p0, p1}, Lcom/google/android/clockwork/stream/StreamManager;->getGroup(Lcom/google/android/clockwork/stream/StreamItemGroupId;)Lcom/google/android/clockwork/stream/StreamItemGroup;

    move-result-object v2

    .line 209
    .local v2, "group":Lcom/google/android/clockwork/stream/StreamItemGroup;
    if-eqz v2, :cond_1

    .line 211
    invoke-virtual {v2}, Lcom/google/android/clockwork/stream/StreamItemGroup;->getMembers()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/clockwork/stream/StreamItemEntry;

    .line 212
    .local v4, "member":Lcom/google/android/clockwork/stream/StreamItemEntry;
    const-string v5, "StreamManager"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 213
    const-string v5, "StreamManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cancel group member due to group dismissal: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_3
    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/google/android/clockwork/stream/StreamManager;->dismissStreamItemEntry(Lcom/google/android/clockwork/stream/StreamItemEntry;Z)V

    goto :goto_0
.end method

.method public dumpState(Lcom/google/android/wearable/util/IndentingPrintWriter;Z)V
    .locals 6
    .param p1, "ipw"    # Lcom/google/android/wearable/util/IndentingPrintWriter;
    .param p2, "verbose"    # Z

    .prologue
    .line 762
    iget-object v4, p0, Lcom/google/android/clockwork/stream/StreamManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 763
    :try_start_0
    new-instance v0, Lcom/google/android/clockwork/stream/StreamManager$DumpContext;

    iget-object v3, p0, Lcom/google/android/clockwork/stream/StreamManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, p2}, Lcom/google/android/clockwork/stream/StreamManager$DumpContext;-><init>(Landroid/content/Context;Z)V

    .line 764
    .local v0, "dumpContext":Lcom/google/android/clockwork/stream/StreamManager$DumpContext;
    invoke-direct {p0, p1}, Lcom/google/android/clockwork/stream/StreamManager;->dumpStreamAuditLocked(Lcom/google/android/wearable/util/IndentingPrintWriter;)V

    .line 765
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/google/android/clockwork/stream/StreamManager;->mItems:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " stream items ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/clockwork/stream/StreamManager;->mSortedTopItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " top level):"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/android/wearable/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 767
    invoke-virtual {p1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->increaseIndent()V

    .line 768
    iget-object v3, p0, Lcom/google/android/clockwork/stream/StreamManager;->mSortedTopItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/clockwork/stream/StreamItem;

    .line 769
    .local v2, "item":Lcom/google/android/clockwork/stream/StreamItem;
    invoke-static {p1, v2, v0}, Lcom/google/android/clockwork/stream/StreamManager;->dumpStreamItem(Lcom/google/android/wearable/util/IndentingPrintWriter;Lcom/google/android/clockwork/stream/StreamItem;Lcom/google/android/clockwork/stream/StreamManager$DumpContext;)V

    goto :goto_0

    .line 772
    .end local v0    # "dumpContext":Lcom/google/android/clockwork/stream/StreamManager$DumpContext;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/google/android/clockwork/stream/StreamItem;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 771
    .restart local v0    # "dumpContext":Lcom/google/android/clockwork/stream/StreamManager$DumpContext;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/wearable/util/IndentingPrintWriter;->decreaseIndent()V

    .line 772
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 773
    return-void
.end method

.method public getFirstTopLevelItem()Lcom/google/android/clockwork/stream/StreamItem;
    .locals 3

    .prologue
    .line 1142
    iget-object v1, p0, Lcom/google/android/clockwork/stream/StreamManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1143
    :try_start_0
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamManager;->mSortedTopItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1144
    const/4 v0, 0x0

    monitor-exit v1

    .line 1146
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamManager;->mSortedTopItems:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/clockwork/stream/StreamItem;

    monitor-exit v1

    goto :goto_0

    .line 1147
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getGroup(Lcom/google/android/clockwork/stream/StreamItemGroupId;)Lcom/google/android/clockwork/stream/StreamItemGroup;
    .locals 2
    .param p1, "streamItemGroupId"    # Lcom/google/android/clockwork/stream/StreamItemGroupId;

    .prologue
    .line 152
    iget-object v1, p0, Lcom/google/android/clockwork/stream/StreamManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamManager;->mGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/clockwork/stream/StreamItemGroup;

    monitor-exit v1

    return-object v0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getItemById(Lcom/google/android/clockwork/stream/StreamItemEntryId;)Lcom/google/android/clockwork/stream/StreamItemEntry;
    .locals 2
    .param p1, "streamItemEntryId"    # Lcom/google/android/clockwork/stream/StreamItemEntryId;

    .prologue
    .line 146
    iget-object v1, p0, Lcom/google/android/clockwork/stream/StreamManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamManager;->mItems:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/clockwork/stream/StreamItemEntry;

    monitor-exit v1

    return-object v0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getItems()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItemEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v1, p0, Lcom/google/android/clockwork/stream/StreamManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 141
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/clockwork/stream/StreamManager;->mItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTopLevelItems()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v1, p0, Lcom/google/android/clockwork/stream/StreamManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/clockwork/stream/StreamManager;->mSortedTopItems:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onNotificationCancelAllDirect(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 324
    const-string v0, "StreamManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    const-string v0, "StreamManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotificationCancelAllDirect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/clockwork/stream/StreamManager;->removeItemsForPackage(Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method onNotificationCancelDirect(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 312
    new-instance v0, Lcom/google/android/clockwork/stream/StreamItemEntryId;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/clockwork/stream/StreamItemEntryId;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 313
    .local v0, "streamItemId":Lcom/google/android/clockwork/stream/StreamItemEntryId;
    const-string v1, "StreamManager"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    const-string v1, "StreamManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNotificationCancelDirect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/clockwork/stream/StreamManager;->removeItem(Lcom/google/android/clockwork/stream/StreamItemEntryId;)V

    .line 317
    return-void
.end method

.method onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 7
    .param p1, "statusBarNotification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 250
    const-string v0, "StreamManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    const-string v0, "StreamManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotificationPosted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/clockwork/stream/StreamManager;->setItem(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;J)Lcom/google/android/clockwork/stream/StreamItem;

    .line 256
    return-void
.end method

.method onNotificationPostedDirect(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "notification"    # Landroid/app/Notification;

    .prologue
    .line 300
    const-string v0, "StreamManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    const-string v0, "StreamManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotificationPostedDirect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/clockwork/stream/StreamManager;->setItem(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;J)Lcom/google/android/clockwork/stream/StreamItem;

    .line 305
    return-void
.end method

.method onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 9
    .param p1, "statusBarNotification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v8, 0x3

    .line 262
    new-instance v4, Lcom/google/android/clockwork/stream/StreamItemEntryId;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/clockwork/stream/StreamItemEntryId;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 266
    .local v4, "streamItemId":Lcom/google/android/clockwork/stream/StreamItemEntryId;
    const-string v5, "StreamManager"

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 267
    const-string v5, "StreamManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onNotificationRemoved: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    iget-object v6, p0, Lcom/google/android/clockwork/stream/StreamManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 270
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/google/android/clockwork/stream/StreamManager;->getItemById(Lcom/google/android/clockwork/stream/StreamItemEntryId;)Lcom/google/android/clockwork/stream/StreamItemEntry;

    move-result-object v3

    .line 271
    .local v3, "streamItem":Lcom/google/android/clockwork/stream/StreamItemEntry;
    invoke-direct {p0, v4}, Lcom/google/android/clockwork/stream/StreamManager;->removeItem(Lcom/google/android/clockwork/stream/StreamItemEntryId;)V

    .line 277
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/google/android/clockwork/stream/StreamItemEntry;->isGroupSummary()Z

    move-result v5

    if-eqz v5, :cond_2

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x14

    if-ge v5, v7, :cond_2

    .line 279
    invoke-virtual {v3}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getGroupId()Lcom/google/android/clockwork/stream/StreamItemGroupId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/clockwork/stream/StreamManager;->getGroup(Lcom/google/android/clockwork/stream/StreamItemGroupId;)Lcom/google/android/clockwork/stream/StreamItemGroup;

    move-result-object v1

    .line 280
    .local v1, "group":Lcom/google/android/clockwork/stream/StreamItemGroup;
    if-eqz v1, :cond_2

    .line 282
    invoke-virtual {v1}, Lcom/google/android/clockwork/stream/StreamItemGroup;->getChildren()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/clockwork/stream/StreamItemEntry;

    .line 283
    .local v0, "child":Lcom/google/android/clockwork/stream/StreamItemEntry;
    const-string v5, "StreamManager"

    const/4 v7, 0x3

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 284
    const-string v5, "StreamManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cancel group child due to summary dismissal: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_1
    const/4 v5, 0x1

    invoke-direct {p0, v0, v5}, Lcom/google/android/clockwork/stream/StreamManager;->dismissStreamItemEntry(Lcom/google/android/clockwork/stream/StreamItemEntry;Z)V

    goto :goto_0

    .line 291
    .end local v0    # "child":Lcom/google/android/clockwork/stream/StreamItemEntry;
    .end local v1    # "group":Lcom/google/android/clockwork/stream/StreamItemGroup;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "streamItem":Lcom/google/android/clockwork/stream/StreamItemEntry;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v3    # "streamItem":Lcom/google/android/clockwork/stream/StreamItemEntry;
    :cond_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    return-void
.end method

.method public onStreamFiltererChanged()V
    .locals 12

    .prologue
    const/4 v7, 0x3

    .line 736
    const-string v6, "StreamManager"

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 737
    const-string v6, "StreamManager"

    const-string v7, "onStreamFiltererChanged"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_0
    new-instance v0, Lcom/google/android/clockwork/stream/StreamChangeEvent;

    invoke-direct {v0}, Lcom/google/android/clockwork/stream/StreamChangeEvent;-><init>()V

    .line 740
    .local v0, "changeEvent":Lcom/google/android/clockwork/stream/StreamChangeEvent;
    iget-object v7, p0, Lcom/google/android/clockwork/stream/StreamManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 741
    :try_start_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 742
    .local v5, "itemsToFilter":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/android/clockwork/stream/StreamItemEntryId;>;"
    iget-object v6, p0, Lcom/google/android/clockwork/stream/StreamManager;->mItems:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/clockwork/stream/StreamItemEntry;

    .line 743
    .local v3, "item":Lcom/google/android/clockwork/stream/StreamItemEntry;
    iget-object v6, p0, Lcom/google/android/clockwork/stream/StreamManager;->mStreamFilterer:Lcom/google/android/clockwork/stream/StreamFilterer;

    invoke-virtual {v3}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/clockwork/stream/StreamItemEntryId;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/clockwork/stream/StreamItemEntryId;->tag:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getNotification()Landroid/app/Notification;

    move-result-object v10

    invoke-virtual {v3}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getOriginalPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v8, v9, v10, v11}, Lcom/google/android/clockwork/stream/StreamFilterer;->getFilteredStatus(Ljava/lang/String;Ljava/lang/String;Landroid/app/Notification;Ljava/lang/String;)I

    move-result v1

    .line 745
    .local v1, "filterReason":I
    if-eqz v1, :cond_1

    .line 746
    invoke-virtual {v3}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 747
    const-string v6, "StreamManager"

    const/4 v8, 0x3

    invoke-static {v6, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 748
    const-string v6, "StreamManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  filtering existing item, reason="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/google/android/clockwork/stream/StreamItemEntry;->getId()Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 756
    .end local v1    # "filterReason":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "item":Lcom/google/android/clockwork/stream/StreamItemEntry;
    .end local v5    # "itemsToFilter":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/android/clockwork/stream/StreamItemEntryId;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 753
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "itemsToFilter":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/android/clockwork/stream/StreamItemEntryId;>;"
    :cond_2
    :try_start_1
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/clockwork/stream/StreamItemEntryId;

    .line 754
    .local v4, "itemToFilter":Lcom/google/android/clockwork/stream/StreamItemEntryId;
    invoke-direct {p0, v4, v0}, Lcom/google/android/clockwork/stream/StreamManager;->removeItemLocked(Lcom/google/android/clockwork/stream/StreamItemEntryId;Lcom/google/android/clockwork/stream/StreamChangeEvent;)V

    goto :goto_1

    .line 756
    .end local v4    # "itemToFilter":Lcom/google/android/clockwork/stream/StreamItemEntryId;
    :cond_3
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 757
    invoke-direct {p0, v0}, Lcom/google/android/clockwork/stream/StreamManager;->notifyChangeListeners(Lcom/google/android/clockwork/stream/StreamChangeEvent;)V

    .line 758
    return-void
.end method

.method public removeListener(Lcom/google/android/clockwork/stream/StreamListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/clockwork/stream/StreamListener;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method public setLastGmailActionElapsedTimestamp(J)V
    .locals 2
    .param p1, "timestamp"    # J

    .prologue
    .line 729
    iget-object v1, p0, Lcom/google/android/clockwork/stream/StreamManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 730
    :try_start_0
    iput-wide p1, p0, Lcom/google/android/clockwork/stream/StreamManager;->mLastGmailActionElapsedTimestamp:J

    .line 731
    monitor-exit v1

    .line 732
    return-void

    .line 731
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRemoteViewsDisabled(Z)V
    .locals 0
    .param p1, "remoteViewsDisabled"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/google/android/clockwork/stream/StreamManager;->mRemoteViewsDisabled:Z

    .line 131
    return-void
.end method

.method public setStreamFilterer(Lcom/google/android/clockwork/stream/StreamFilterer;)V
    .locals 1
    .param p1, "filterer"    # Lcom/google/android/clockwork/stream/StreamFilterer;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/android/clockwork/stream/StreamManager;->mStreamFilterer:Lcom/google/android/clockwork/stream/StreamFilterer;

    .line 165
    invoke-virtual {p0}, Lcom/google/android/clockwork/stream/StreamManager;->onStreamFiltererChanged()V

    .line 166
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamManager;->mStreamFilterer:Lcom/google/android/clockwork/stream/StreamFilterer;

    invoke-interface {v0, p0}, Lcom/google/android/clockwork/stream/StreamFilterer;->setChangedListener(Lcom/google/android/clockwork/stream/StreamFilterer$ChangedListener;)V

    .line 167
    return-void
.end method

.method public setStreamItemRanker(Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;)V
    .locals 2
    .param p1, "ranker"    # Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;

    .prologue
    .line 158
    iget-object v1, p0, Lcom/google/android/clockwork/stream/StreamManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 159
    :try_start_0
    iput-object p1, p0, Lcom/google/android/clockwork/stream/StreamManager;->mStreamItemRanker:Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;

    .line 160
    monitor-exit v1

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateRanking()V
    .locals 4

    .prologue
    .line 171
    iget-object v3, p0, Lcom/google/android/clockwork/stream/StreamManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 172
    :try_start_0
    iget-object v2, p0, Lcom/google/android/clockwork/stream/StreamManager;->mStreamItemRanker:Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;

    invoke-virtual {v2}, Lcom/google/android/clockwork/stream/ranker/StreamItemRanker;->maybeResort()Ljava/util/ArrayList;

    move-result-object v1

    .line 173
    .local v1, "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/clockwork/stream/StreamItem;>;"
    if-eqz v1, :cond_0

    .line 174
    iput-object v1, p0, Lcom/google/android/clockwork/stream/StreamManager;->mSortedTopItems:Ljava/util/ArrayList;

    .line 176
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    if-eqz v1, :cond_1

    .line 178
    new-instance v0, Lcom/google/android/clockwork/stream/StreamChangeEvent;

    invoke-direct {v0}, Lcom/google/android/clockwork/stream/StreamChangeEvent;-><init>()V

    .line 179
    .local v0, "changeEvent":Lcom/google/android/clockwork/stream/StreamChangeEvent;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/clockwork/stream/StreamChangeEvent;->setHasReordered(Z)V

    .line 180
    invoke-direct {p0, v0}, Lcom/google/android/clockwork/stream/StreamManager;->notifyChangeListeners(Lcom/google/android/clockwork/stream/StreamChangeEvent;)V

    .line 182
    .end local v0    # "changeEvent":Lcom/google/android/clockwork/stream/StreamChangeEvent;
    :cond_1
    return-void

    .line 176
    .end local v1    # "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/clockwork/stream/StreamItem;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
