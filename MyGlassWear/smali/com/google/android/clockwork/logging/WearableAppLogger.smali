.class public Lcom/google/android/clockwork/logging/WearableAppLogger;
.super Ljava/lang/Object;
.source "WearableAppLogger.java"

# interfaces
.implements Lcom/google/android/wearable/gmsclient/WearableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/clockwork/logging/WearableAppLogger$1;,
        Lcom/google/android/clockwork/logging/WearableAppLogger$Event;,
        Lcom/google/android/clockwork/logging/WearableAppLogger$EventReceiver;,
        Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;
    }
.end annotation


# static fields
.field private static final ANDROID_ID:Ljava/lang/String; = "android_id"

.field private static final COMPONENT:Ljava/lang/String; = "component"

.field public static final FEATURE_TAG:Ljava/lang/String; = "logging"

.field private static final FIRST_TOUCH_ACTION:Ljava/lang/String; = "com.google.android.clockwork.FIRST_TOUCH"

.field private static final PATH:Ljava/lang/String;

.field private static final PREFS:Ljava/lang/String; = "logging"

.field private static final PREF_KEY_OTHER_PEER_ID:Ljava/lang/String; = "other_peer_id"

.field private static final PUBLISH_ID_RETRY_INTERVAL_MS:I = 0x493e0

.field private static final TAG:Ljava/lang/String; = "WearableAppLogger"

.field private static final UNKNOWN_ANDROID_ID:I = 0x0

.field private static final UPLOAD_DELAY_MS:I = 0xea60

.field private static sInstance:Lcom/google/android/clockwork/logging/WearableAppLogger;


# instance fields
.field private final mComponent:I

.field private final mContext:Landroid/content/Context;

.field private volatile mOtherAndroidId:J

.field private volatile mOtherPeerId:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private volatile mPublishedAndroidId:J

.field private final mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettings:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/wearable/DataMapItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdatesHandler:Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 70
    const-string v0, "logging"

    const-string v1, "/logging/settings"

    invoke-static {v0, v1}, Lcom/google/android/clockwork/host/WearableHostUtil;->pathWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/logging/WearableAppLogger;->PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 4
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "component"    # I
    .param p3, "loggingEnabled"    # Z

    .prologue
    const/4 v3, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/clockwork/logging/WearableAppLogger;->mSettings:Ljava/util/concurrent/ConcurrentHashMap;

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/clockwork/logging/WearableAppLogger;->mContext:Landroid/content/Context;

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/clockwork/logging/WearableAppLogger;->mPackageName:Ljava/lang/String;

    .line 110
    iput p2, p0, Lcom/google/android/clockwork/logging/WearableAppLogger;->mComponent:I

    .line 111
    if-nez p3, :cond_1

    .line 112
    iput-object v3, p0, Lcom/google/android/clockwork/logging/WearableAppLogger;->mUpdatesHandler:Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;

    .line 113
    iput-object v3, p0, Lcom/google/android/clockwork/logging/WearableAppLogger;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    const-string v1, "WearableAppLogger"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    const-string v1, "WearableAppLogger"

    const-string v2, "Logging enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WearableAppLogger"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 123
    new-instance v1, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;-><init>(Lcom/google/android/clockwork/logging/WearableAppLogger;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/clockwork/logging/WearableAppLogger;->mUpdatesHandler:Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;

    .line 125
    new-instance v1, Lcom/google/android/clockwork/logging/WearableAppLogger$EventReceiver;

    invoke-direct {v1, p0, v3}, Lcom/google/android/clockwork/logging/WearableAppLogger$EventReceiver;-><init>(Lcom/google/android/clockwork/logging/WearableAppLogger;Lcom/google/android/clockwork/logging/WearableAppLogger$1;)V

    iput-object v1, p0, Lcom/google/android/clockwork/logging/WearableAppLogger;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 126
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/google/android/clockwork/logging/WearableAppLogger;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    iget-object v1, p0, Lcom/google/android/clockwork/logging/WearableAppLogger;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 130
    iget-object v1, p0, Lcom/google/android/clockwork/logging/WearableAppLogger;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.google.android.clockwork.FIRST_TOUCH"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/google/android/clockwork/logging/WearableAppLogger;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/clockwork/logging/WearableAppLogger;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/clockwork/logging/WearableAppLogger;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/clockwork/logging/WearableAppLogger;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/clockwork/logging/WearableAppLogger;
    .param p1, "x1"    # Landroid/content/SharedPreferences;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/clockwork/logging/WearableAppLogger;->mPrefs:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/android/clockwork/logging/WearableAppLogger;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/clockwork/logging/WearableAppLogger;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/clockwork/logging/WearableAppLogger;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/clockwork/logging/WearableAppLogger;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/clockwork/logging/WearableAppLogger;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/clockwork/logging/WearableAppLogger;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/clockwork/logging/WearableAppLogger;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/clockwork/logging/WearableAppLogger;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/clockwork/logging/WearableAppLogger;->mOtherPeerId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/clockwork/logging/WearableAppLogger;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/clockwork/logging/WearableAppLogger;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/clockwork/logging/WearableAppLogger;->mOtherPeerId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/clockwork/logging/WearableAppLogger;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/clockwork/logging/WearableAppLogger;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/clockwork/logging/WearableAppLogger;->mSettings:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/clockwork/logging/WearableAppLogger;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/android/clockwork/logging/WearableAppLogger;

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/google/android/clockwork/logging/WearableAppLogger;->mPublishedAndroidId:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/google/android/clockwork/logging/WearableAppLogger;J)J
    .locals 0
    .param p0, "x0"    # Lcom/google/android/clockwork/logging/WearableAppLogger;
    .param p1, "x1"    # J

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/google/android/clockwork/logging/WearableAppLogger;->mPublishedAndroidId:J

    return-wide p1
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/android/clockwork/logging/WearableAppLogger;->PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/clockwork/logging/WearableAppLogger;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/clockwork/logging/WearableAppLogger;

    .prologue
    .line 56
    iget v0, p0, Lcom/google/android/clockwork/logging/WearableAppLogger;->mComponent:I

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/clockwork/logging/WearableAppLogger;)Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/clockwork/logging/WearableAppLogger;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/clockwork/logging/WearableAppLogger;->mUpdatesHandler:Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/clockwork/logging/WearableAppLogger;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/android/clockwork/logging/WearableAppLogger;

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/google/android/clockwork/logging/WearableAppLogger;->mOtherAndroidId:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/google/android/clockwork/logging/WearableAppLogger;J)J
    .locals 0
    .param p0, "x0"    # Lcom/google/android/clockwork/logging/WearableAppLogger;
    .param p1, "x1"    # J

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/google/android/clockwork/logging/WearableAppLogger;->mOtherAndroidId:J

    return-wide p1
.end method

.method public static getInstance()Lcom/google/android/clockwork/logging/WearableAppLogger;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/google/android/clockwork/logging/WearableAppLogger;->sInstance:Lcom/google/android/clockwork/logging/WearableAppLogger;

    return-object v0
.end method

.method public static setInstance(Lcom/google/android/clockwork/logging/WearableAppLogger;)V
    .locals 0
    .param p0, "instance"    # Lcom/google/android/clockwork/logging/WearableAppLogger;

    .prologue
    .line 100
    sput-object p0, Lcom/google/android/clockwork/logging/WearableAppLogger;->sInstance:Lcom/google/android/clockwork/logging/WearableAppLogger;

    .line 101
    return-void
.end method


# virtual methods
.method public logEvent(Lcom/google/common/logging/Cw$CwEvent;)V
    .locals 5
    .param p1, "cwEvent"    # Lcom/google/common/logging/Cw$CwEvent;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/clockwork/logging/WearableAppLogger;->mUpdatesHandler:Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;

    if-nez v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/google/android/clockwork/logging/WearableAppLogger;->mUpdatesHandler:Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;

    const/4 v1, 0x5

    new-instance v2, Lcom/google/android/clockwork/logging/WearableAppLogger$Event;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, p0, p1, v3, v4}, Lcom/google/android/clockwork/logging/WearableAppLogger$Event;-><init>(Lcom/google/android/clockwork/logging/WearableAppLogger;Lcom/google/common/logging/Cw$CwEvent;J)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public onDataChanged(Lcom/google/android/gms/wearable/DataEventBuffer;)V
    .locals 4
    .param p1, "dataEvents"    # Lcom/google/android/gms/wearable/DataEventBuffer;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/clockwork/logging/WearableAppLogger;->mUpdatesHandler:Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;

    if-nez v0, :cond_0

    .line 164
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/DataEventBuffer;->close()V

    .line 171
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/google/android/clockwork/logging/WearableAppLogger;->mUpdatesHandler:Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;

    iget-object v1, p0, Lcom/google/android/clockwork/logging/WearableAppLogger;->mUpdatesHandler:Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;

    const/4 v2, 0x3

    invoke-static {p1}, Lcom/google/android/gms/common/data/FreezableUtils;->freezeIterable(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->sendMessage(Landroid/os/Message;)Z

    .line 170
    invoke-virtual {p1}, Lcom/google/android/gms/wearable/DataEventBuffer;->close()V

    goto :goto_0
.end method

.method public onMessageReceived(Lcom/google/android/gms/wearable/MessageEvent;)V
    .locals 0
    .param p1, "messageEvent"    # Lcom/google/android/gms/wearable/MessageEvent;

    .prologue
    .line 183
    return-void
.end method

.method public onPeerConnected(Lcom/google/android/gms/wearable/Node;)V
    .locals 3
    .param p1, "peer"    # Lcom/google/android/gms/wearable/Node;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/clockwork/logging/WearableAppLogger;->mUpdatesHandler:Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;

    if-nez v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/google/android/clockwork/logging/WearableAppLogger;->mUpdatesHandler:Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;

    iget-object v1, p0, Lcom/google/android/clockwork/logging/WearableAppLogger;->mUpdatesHandler:Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onPeerDisconnected(Lcom/google/android/gms/wearable/Node;)V
    .locals 0
    .param p1, "peer"    # Lcom/google/android/gms/wearable/Node;

    .prologue
    .line 186
    return-void
.end method

.method public onReceive()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/clockwork/logging/WearableAppLogger;->mUpdatesHandler:Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;

    if-nez v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/google/android/clockwork/logging/WearableAppLogger;->mUpdatesHandler:Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public start()Lcom/google/android/clockwork/logging/WearableAppLogger;
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/clockwork/logging/WearableAppLogger;->mUpdatesHandler:Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;

    if-nez v0, :cond_0

    .line 140
    :goto_0
    return-object p0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/google/android/clockwork/logging/WearableAppLogger;->mUpdatesHandler:Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
