.class public Lcom/google/android/gsf/gtalkservice/DataMessageManager;
.super Ljava/lang/Object;
.source "DataMessageManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;,
        Lcom/google/android/gsf/gtalkservice/DataMessageManager$MissInfo;
    }
.end annotation


# static fields
.field private static final NON_PACKAGE_CATEGORIES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

.field private mHandler:Landroid/os/Handler;

.field private mLockObject:Ljava/lang/Object;

.field private final mReceiverLookupMissInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gsf/gtalkservice/DataMessageManager$MissInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUserManager:Landroid/os/UserManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->NON_PACKAGE_CATEGORIES:Ljava/util/HashSet;

    .line 76
    sget-object v0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->NON_PACKAGE_CATEGORIES:Ljava/util/HashSet;

    const-string v1, "android.intent.category.MASTER_CLEAR"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->NON_PACKAGE_CATEGORIES:Ljava/util/HashSet;

    const-string v1, "android.server.checkin.CHECKIN"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->NON_PACKAGE_CATEGORIES:Ljava/util/HashSet;

    const-string v1, "com.google.android.gsf.subscribedfeeds"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->NON_PACKAGE_CATEGORIES:Ljava/util/HashSet;

    const-string v1, "INSTALL_ASSET"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->NON_PACKAGE_CATEGORIES:Ljava/util/HashSet;

    const-string v1, "REMOVE_ASSET"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->NON_PACKAGE_CATEGORIES:Ljava/util/HashSet;

    const-string v1, "SERVER_NOTIFICATION"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->NON_PACKAGE_CATEGORIES:Ljava/util/HashSet;

    const-string v1, "DECLINE_ASSET"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->NON_PACKAGE_CATEGORIES:Ljava/util/HashSet;

    const-string v1, "com.google.android.gsf"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->NON_PACKAGE_CATEGORIES:Ljava/util/HashSet;

    const-string v1, "com.google.android.apps.googlevoice.INBOX_NOTIFICATION"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;Landroid/os/Handler;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "endpoint"    # Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v3, 0x1

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mReceiverLookupMissInfo:Ljava/util/HashMap;

    .line 197
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mLockObject:Ljava/lang/Object;

    .line 198
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mContext:Landroid/content/Context;

    .line 199
    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mHandler:Landroid/os/Handler;

    .line 200
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    .line 202
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 203
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "GOOGLE_C2DM"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 204
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 205
    const-string v1, "user"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mUserManager:Landroid/os/UserManager;

    .line 206
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 207
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-static {p0}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private extractExtras(Lorg/jivesoftware/smack/packet/DataMessage;Landroid/content/Intent;Ljava/util/Map;)V
    .locals 6
    .param p1, "dataMsg"    # Lorg/jivesoftware/smack/packet/DataMessage;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/packet/DataMessage;",
            "Landroid/content/Intent;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 468
    .local p3, "reserved":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/DataMessage;->getAppDataIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 469
    .local v1, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jivesoftware/smack/packet/DataMessage$AppData;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 470
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/DataMessage$AppData;

    .line 471
    .local v0, "appData":Lorg/jivesoftware/smack/packet/DataMessage$AppData;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/DataMessage$AppData;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 472
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/DataMessage$AppData;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 474
    .local v3, "value":Ljava/lang/String;
    const-string v4, "from"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 479
    const-string v4, "GOOGLE."

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 480
    const-string v4, "GOOGLE."

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 485
    :cond_1
    const-string v4, "GTalkService"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 486
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse intent data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->log(Ljava/lang/String;)V

    .line 488
    :cond_2
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 490
    .end local v0    # "appData":Lorg/jivesoftware/smack/packet/DataMessage$AppData;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private getPermission(Lorg/jivesoftware/smack/packet/DataMessage;Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "dataMsg"    # Lorg/jivesoftware/smack/packet/DataMessage;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "category"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 559
    sget-object v1, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->NON_PACKAGE_CATEGORIES:Ljava/util/HashSet;

    invoke-virtual {v1, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 574
    :cond_0
    :goto_0
    return-object v0

    .line 565
    :cond_1
    const-string v1, "INSTALL_ASSET"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "REMOVE_ASSET"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DECLINE_ASSET"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "UPDATES_AVAILABLE"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SERVER_NOTIFICATION"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".permission.C2D_MESSAGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 615
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DataMsgMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    return-void
.end method

.method private parseDataMessageIntent(Lorg/jivesoftware/smack/packet/DataMessage;)Landroid/content/Intent;
    .locals 7
    .param p1, "dataMsg"    # Lorg/jivesoftware/smack/packet/DataMessage;

    .prologue
    .line 498
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/DataMessage;->getFrom()Ljava/lang/String;

    move-result-object v1

    .line 499
    .local v1, "from":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/DataMessage;->getCategory()Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, "category":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 502
    const-string v5, "GTalkService"

    const-string v6, "[DataMsgMgr] found msg w/o category, dropping"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/4 v2, 0x0

    .line 529
    :cond_0
    :goto_0
    return-object v2

    .line 509
    :cond_1
    const-string v5, "GSYNC_TICKLE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 510
    const-string v0, "com.google.android.gsf.subscribedfeeds"

    .line 513
    :cond_2
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/DataMessage;->getUserSerialNumber()J

    move-result-wide v5

    long-to-int v3, v5

    .line 515
    .local v3, "serial":I
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.google.android.c2dm.intent.RECEIVE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 517
    .local v2, "intent":Landroid/content/Intent;
    sget-object v5, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->NON_PACKAGE_CATEGORIES:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 518
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    :goto_1
    const-string v5, "from"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/DataMessage;->getToken()Ljava/lang/String;

    move-result-object v4

    .line 524
    .local v4, "token":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 526
    const-string v5, "collapse_key"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 520
    .end local v4    # "token":Ljava/lang/String;
    :cond_3
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private processInternalMessage(Ljava/lang/String;Lorg/jivesoftware/smack/packet/DataMessage;Landroid/content/Intent;)V
    .locals 3
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "dataMsg"    # Lorg/jivesoftware/smack/packet/DataMessage;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 533
    invoke-virtual {p2}, Lorg/jivesoftware/smack/packet/DataMessage;->getFrom()Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, "from":Ljava/lang/String;
    const-string v2, "com.google.android.gsf"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "google.com"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 539
    const-string v2, "registration_id"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 542
    .local v1, "registration_id":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 544
    const-string v2, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 545
    invoke-virtual {p3, p1}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 546
    const-string v2, "app"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    .end local v1    # "registration_id":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private processSendDataMessageFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "appPackage"    # Ljava/lang/String;

    .prologue
    .line 369
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 370
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    const-string v1, "error_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method private shouldUnregisterRegIdForApp(Landroid/content/Intent;I)Z
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userSerial"    # I

    .prologue
    .line 272
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 273
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v8, "c2dm_num_app_lookup_misses_before_unregister"

    const/4 v9, 0x1

    invoke-static {v0, v8, v9}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 276
    .local v7, "numMissesBeforeConsideringMissing":I
    const-string v8, "c2dm_min_seconds_before_missing_app_unregister"

    const-wide/16 v9, 0x0

    invoke-static {v0, v8, v9, v10}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long v2, v8, v10

    .line 280
    .local v2, "minMsBeforeConsideringMissing":J
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, "intentPackageName":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 282
    .local v5, "now":J
    iget-object v9, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mReceiverLookupMissInfo:Ljava/util/HashMap;

    monitor-enter v9

    .line 285
    :try_start_0
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mReceiverLookupMissInfo:Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gsf/gtalkservice/DataMessageManager$MissInfo;

    .line 286
    .local v4, "missInfo":Lcom/google/android/gsf/gtalkservice/DataMessageManager$MissInfo;
    if-nez v4, :cond_0

    .line 287
    new-instance v4, Lcom/google/android/gsf/gtalkservice/DataMessageManager$MissInfo;

    .end local v4    # "missInfo":Lcom/google/android/gsf/gtalkservice/DataMessageManager$MissInfo;
    invoke-direct {v4}, Lcom/google/android/gsf/gtalkservice/DataMessageManager$MissInfo;-><init>()V

    .line 288
    .restart local v4    # "missInfo":Lcom/google/android/gsf/gtalkservice/DataMessageManager$MissInfo;
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mReceiverLookupMissInfo:Ljava/util/HashMap;

    invoke-virtual {v8, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->queryPackageManagerForBroadcastIntentReceiver(Landroid/content/Intent;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 296
    const/4 v8, 0x0

    iput v8, v4, Lcom/google/android/gsf/gtalkservice/DataMessageManager$MissInfo;->count:I

    .line 297
    const/4 v8, 0x0

    monitor-exit v9

    .line 305
    :goto_0
    return v8

    .line 299
    :cond_1
    iget v8, v4, Lcom/google/android/gsf/gtalkservice/DataMessageManager$MissInfo;->count:I

    if-nez v8, :cond_2

    .line 300
    iput-wide v5, v4, Lcom/google/android/gsf/gtalkservice/DataMessageManager$MissInfo;->timeOfFirstMiss:J

    .line 302
    :cond_2
    iget v8, v4, Lcom/google/android/gsf/gtalkservice/DataMessageManager$MissInfo;->count:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v4, Lcom/google/android/gsf/gtalkservice/DataMessageManager$MissInfo;->count:I

    .line 305
    iget v8, v4, Lcom/google/android/gsf/gtalkservice/DataMessageManager$MissInfo;->count:I

    if-lt v8, v7, :cond_3

    iget-wide v10, v4, Lcom/google/android/gsf/gtalkservice/DataMessageManager$MissInfo;->timeOfFirstMiss:J

    add-long/2addr v10, v2

    cmp-long v8, v5, v10

    if-ltz v8, :cond_3

    const/4 v8, 0x1

    :goto_1
    monitor-exit v9

    goto :goto_0

    .line 307
    .end local v4    # "missInfo":Lcom/google/android/gsf/gtalkservice/DataMessageManager$MissInfo;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 305
    .restart local v4    # "missInfo":Lcom/google/android/gsf/gtalkservice/DataMessageManager$MissInfo;
    :cond_3
    const/4 v8, 0x0

    goto :goto_1
.end method


# virtual methods
.method public acquireWakeLock()V
    .locals 2

    .prologue
    .line 214
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 216
    monitor-exit v1

    .line 217
    return-void

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected afterBroadcast(Landroid/content/Intent;Lorg/jivesoftware/smack/packet/DataMessage;JILandroid/os/Bundle;ILjava/lang/String;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "msg"    # Lorg/jivesoftware/smack/packet/DataMessage;
    .param p3, "duration"    # J
    .param p5, "result"    # I
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "userSerial"    # I
    .param p8, "userAid"    # Ljava/lang/String;

    .prologue
    .line 141
    if-nez p5, :cond_0

    .line 142
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DataMsgMgr] broadcast intent callback: result=CANCELLED for"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p7}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->shouldUnregisterRegIdForApp(Landroid/content/Intent;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p2}, Lorg/jivesoftware/smack/packet/DataMessage;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p7, p8}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->unregisterApp(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;)V

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->releaseWakeLock()V

    .line 156
    return-void
.end method

.method public getWakeLock()Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method public initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 0
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .prologue
    .line 226
    invoke-virtual {p1, p0}, Lorg/jivesoftware/smack/XMPPConnection;->addDataMessageListener(Lorg/jivesoftware/smack/PacketListener;)V

    .line 227
    return-void
.end method

.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 11
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Packet;

    .prologue
    .line 380
    instance-of v0, p1, Lorg/jivesoftware/smack/packet/DataMessage;

    if-eqz v0, :cond_1

    move-object v3, p1

    .line 381
    check-cast v3, Lorg/jivesoftware/smack/packet/DataMessage;

    .line 382
    .local v3, "dataMsg":Lorg/jivesoftware/smack/packet/DataMessage;
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/DataMessage;->getCategory()Ljava/lang/String;

    move-result-object v7

    .line 384
    .local v7, "category":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->setLastDataMessageReceived()V

    .line 388
    :cond_0
    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->parseDataMessageIntent(Lorg/jivesoftware/smack/packet/DataMessage;)Landroid/content/Intent;

    move-result-object v2

    .line 389
    .local v2, "intent":Landroid/content/Intent;
    if-nez v2, :cond_2

    .line 390
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DataMessageMgr] processPacket: cannot parse data message "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->toXML()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "dataMsg":Lorg/jivesoftware/smack/packet/DataMessage;
    .end local v7    # "category":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 394
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "dataMsg":Lorg/jivesoftware/smack/packet/DataMessage;
    .restart local v7    # "category":Ljava/lang/String;
    :cond_2
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 395
    .local v9, "reserved":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v3, v2, v9}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->extractExtras(Lorg/jivesoftware/smack/packet/DataMessage;Landroid/content/Intent;Ljava/util/Map;)V

    .line 400
    const-string v0, "com.google.android.gsf.gtalkservice"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 401
    const-string v0, "STOP_ACK"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 402
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->stopAck()V

    .line 414
    :cond_3
    invoke-direct {p0, v7, v3, v2}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->processInternalMessage(Ljava/lang/String;Lorg/jivesoftware/smack/packet/DataMessage;Landroid/content/Intent;)V

    .line 416
    new-instance v0, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;-><init>(Lcom/google/android/gsf/gtalkservice/DataMessageManager;Landroid/content/Intent;Lorg/jivesoftware/smack/packet/DataMessage;J)V

    move-object v4, p0

    move-object v5, v3

    move-object v6, v2

    move-object v8, v0

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->sendGCMBroadcast(Lorg/jivesoftware/smack/packet/DataMessage;Landroid/content/Intent;Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;Ljava/util/Map;)V

    goto :goto_0

    .line 406
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->acquireWakeLock()V

    .line 407
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 408
    .local v10, "message":Landroid/os/Message;
    iput-object v3, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 409
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public queryPackageManagerForBroadcastIntentReceiver(Landroid/content/Intent;I)Z
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userSerial"    # I

    .prologue
    const/4 v0, 0x0

    .line 236
    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 237
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 238
    .local v3, "ts":J
    const/4 v2, 0x0

    .line 240
    .local v2, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, -0x1

    .line 241
    .local v5, "userHandle":I
    if-lez p2, :cond_3

    .line 242
    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, p2}, Landroid/os/UserManager;->getUserHandle(I)I

    move-result v5

    .line 243
    if-ltz v5, :cond_2

    .line 244
    invoke-virtual {v1, p1, v0, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 252
    :goto_0
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v0, 0x1

    .line 253
    .local v0, "foundReceiver":Z
    :cond_0
    const-string v6, "GTalkService"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 254
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findReceiverForIntent: queryBroadcastReceivers took "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms, found="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->log(Ljava/lang/String;)V

    .line 257
    :cond_1
    return v0

    .line 246
    .end local v0    # "foundReceiver":Z
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "User removed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :cond_3
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method public releaseWakeLock()V
    .locals 2

    .prologue
    .line 220
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 222
    monitor-exit v1

    .line 223
    return-void

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendDataMessageStanza(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 316
    const-string v8, "use_rmq"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 317
    .local v7, "useRmq":Z
    const-string v8, "use_rmq"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 319
    invoke-static {p1}, Lcom/google/android/gsf/gtalkservice/gtalk/ApplicationEndpointPacketManager;->getAppPackage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "appPackage":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 322
    const-string v8, "missing_package_name"

    invoke-direct {p0, v8, v0}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->processSendDataMessageFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v8}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->isD2cmWhitelisted()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v8, v0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->isPackageNameWhitelisted(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 330
    :cond_2
    const-string v8, "app"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 332
    const-string v8, "registration_id"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 333
    .local v5, "regId":Ljava/lang/String;
    const-string v8, "registration_id"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 334
    if-nez v5, :cond_3

    .line 335
    const-string v8, "missing_reg_id"

    invoke-direct {p0, v8, v0}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->processSendDataMessageFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :cond_3
    new-instance v6, Lorg/jivesoftware/smack/packet/DataMessage;

    invoke-direct {v6}, Lorg/jivesoftware/smack/packet/DataMessage;-><init>()V

    .line 341
    .local v6, "stanza":Lorg/jivesoftware/smack/packet/DataMessage;
    const-string v8, "d2cm@google.com"

    invoke-virtual {v6, v8}, Lorg/jivesoftware/smack/packet/DataMessage;->setFrom(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v6, v0}, Lorg/jivesoftware/smack/packet/DataMessage;->setCategory(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v6, v5}, Lorg/jivesoftware/smack/packet/DataMessage;->setRegId(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 346
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_6

    .line 347
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 348
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 349
    .local v4, "o":Ljava/lang/Object;
    if-eqz v4, :cond_4

    .line 350
    instance-of v8, v4, Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 351
    new-instance v8, Lorg/jivesoftware/smack/packet/DataMessage$AppData;

    check-cast v4, Ljava/lang/String;

    .end local v4    # "o":Ljava/lang/Object;
    invoke-direct {v8, v3, v4}, Lorg/jivesoftware/smack/packet/DataMessage$AppData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Lorg/jivesoftware/smack/packet/DataMessage;->addAppData(Lorg/jivesoftware/smack/packet/DataMessage$AppData;)V

    goto :goto_1

    .line 354
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_5
    const-string v8, "invalid_params"

    invoke-direct {p0, v8, v0}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->processSendDataMessageFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 361
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "o":Ljava/lang/Object;
    :cond_6
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v8, v6, v7}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;Z)Z

    move-result v8

    if-nez v8, :cond_7

    .line 362
    const-string v8, "no_connection"

    invoke-direct {p0, v8, v0}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->processSendDataMessageFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :cond_7
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual {v8}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->setLastDataMessageSent()V

    goto/16 :goto_0
.end method

.method public sendGCMBroadcast(Lorg/jivesoftware/smack/packet/DataMessage;Landroid/content/Intent;Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;Ljava/util/Map;)V
    .locals 15
    .param p1, "dataMsg"    # Lorg/jivesoftware/smack/packet/DataMessage;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "category"    # Ljava/lang/String;
    .param p4, "callbackReceiver"    # Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/packet/DataMessage;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 424
    .local p5, "reserved":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p3}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->getPermission(Lorg/jivesoftware/smack/packet/DataMessage;Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 425
    .local v3, "permission":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/DataMessage;->getUserSerialNumber()J

    move-result-wide v1

    long-to-int v14, v1

    .line 426
    .local v14, "serial":I
    move-object/from16 v0, p4

    iput v14, v0, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;->mUserSerial:I

    .line 428
    const-string v1, "UAID"

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p4

    iput-object v1, v0, Lcom/google/android/gsf/gtalkservice/DataMessageManager$BroadcastDoneReceiver;->mUserAid:Ljava/lang/String;

    .line 430
    const-string v1, "GTalkService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    .line 432
    .local v13, "extras":Landroid/os/Bundle;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v3, :cond_1

    const-string v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v13, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " extras: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->log(Ljava/lang/String;)V

    .line 439
    .end local v13    # "extras":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->acquireWakeLock()V

    .line 441
    const/4 v1, -0x1

    if-ne v14, v1, :cond_3

    .line 442
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    invoke-virtual/range {v1 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 461
    :goto_2
    return-void

    .line 432
    .restart local v13    # "extras":Landroid/os/Bundle;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " with permission="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, ""

    goto :goto_1

    .line 445
    .end local v13    # "extras":Landroid/os/Bundle;
    :cond_3
    new-instance v6, Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v14}, Landroid/os/UserManager;->getUserHandle(I)I

    move-result v1

    invoke-direct {v6, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 446
    .local v6, "userHandle":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v6}, Landroid/os/UserManager;->isUserRunningOrStopping(Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 447
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempting to send message to stopped user "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mEndpoint:Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;

    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/packet/DataMessage;->getRmq2Id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->sendNack(Ljava/lang/String;)V

    goto :goto_2

    .line 452
    :cond_4
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p2

    move-object/from16 v8, p4

    invoke-virtual/range {v4 .. v12}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2
.end method

.method protected unregisterApp(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "userSerial"    # I
    .param p4, "userAid"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 584
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 585
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 586
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Should not happen. Received intent with no package name. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->log(Ljava/lang/String;)V

    .line 612
    :goto_0
    return-void

    .line 590
    :cond_0
    const-string v2, "GTalkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receiver package not found, unregister application "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sender "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.c2dm.intent.UNREGISTER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 599
    .local v1, "unregIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 600
    const-string v2, "app"

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-static {v3, v5, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 602
    if-eqz p4, :cond_1

    .line 603
    const-string v2, "GOOG.USER_AID"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 606
    :cond_1
    const-string v2, "device_user_id"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 609
    const-string v2, "app_gsf"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 611
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
