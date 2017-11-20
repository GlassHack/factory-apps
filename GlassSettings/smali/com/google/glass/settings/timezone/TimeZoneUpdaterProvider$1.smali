.class Lcom/google/glass/settings/timezone/TimeZoneUpdaterProvider$1;
.super Ljava/lang/Object;
.source "TimeZoneUpdaterProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/timezone/TimeZoneUpdaterProvider;->get(Landroid/content/Context;Lcom/google/glass/location/LocationManagerHelper;Lcom/google/common/util/concurrent/ListeningExecutorService;Lcom/google/glass/settings/timezone/TimeZoneUpdater$OnTimeZoneReceivedListener;)Lcom/google/glass/settings/timezone/TimeZoneUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Lcom/google/glass/settings/timezone/TimeZoneUpdater;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/timezone/TimeZoneUpdaterProvider;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/google/glass/settings/timezone/TimeZoneUpdater$OnTimeZoneReceivedListener;

.field final synthetic val$listeningExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

.field final synthetic val$locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/timezone/TimeZoneUpdaterProvider;Landroid/content/Context;Lcom/google/glass/settings/timezone/TimeZoneUpdater$OnTimeZoneReceivedListener;Lcom/google/common/util/concurrent/ListeningExecutorService;Lcom/google/glass/location/LocationManagerHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/timezone/TimeZoneUpdaterProvider;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdaterProvider$1;->this$0:Lcom/google/glass/settings/timezone/TimeZoneUpdaterProvider;

    iput-object p2, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdaterProvider$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdaterProvider$1;->val$listener:Lcom/google/glass/settings/timezone/TimeZoneUpdater$OnTimeZoneReceivedListener;

    iput-object p4, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdaterProvider$1;->val$listeningExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    iput-object p5, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdaterProvider$1;->val$locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/settings/timezone/TimeZoneUpdater;
    .locals 7

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdaterProvider$1;->val$context:Landroid/content/Context;

    const-string v4, "null context"

    invoke-static {v0, v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdaterProvider$1;->val$listener:Lcom/google/glass/settings/timezone/TimeZoneUpdater$OnTimeZoneReceivedListener;

    const-string v4, "null listener"

    invoke-static {v0, v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdaterProvider$1;->val$listeningExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    const-string v4, "null listeningExecutorService"

    invoke-static {v0, v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdaterProvider$1;->val$locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    const-string v4, "null locationManagerHelper"

    invoke-static {v0, v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v0

    iget-object v4, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdaterProvider$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v1

    .line 55
    .local v1, "broadcastReceiverRegistrar":Lcom/google/glass/context/BroadcastReceiverRegistrar;
    invoke-static {}, Lcom/google/glass/android/net/ConnectivityManagerProvider;->getInstance()Lcom/google/glass/android/net/ConnectivityManagerProvider;

    move-result-object v0

    iget-object v4, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdaterProvider$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/google/glass/android/net/ConnectivityManagerProvider;->from(Landroid/content/Context;)Lcom/google/glass/android/net/ConnectivityManager;

    move-result-object v2

    .line 58
    .local v2, "connectivityManager":Lcom/google/glass/android/net/ConnectivityManager;
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher$Providers;->getPrimaryDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v3

    .line 60
    .local v3, "protoRequestDispatcher":Lcom/google/glass/net/ProtoRequestDispatcher;
    new-instance v0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;

    iget-object v4, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdaterProvider$1;->val$locationManagerHelper:Lcom/google/glass/location/LocationManagerHelper;

    iget-object v5, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdaterProvider$1;->val$listeningExecutorService:Lcom/google/common/util/concurrent/ListeningExecutorService;

    iget-object v6, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdaterProvider$1;->val$listener:Lcom/google/glass/settings/timezone/TimeZoneUpdater$OnTimeZoneReceivedListener;

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/settings/timezone/TimeZoneUpdater;-><init>(Lcom/google/glass/context/BroadcastReceiverRegistrar;Lcom/google/glass/android/net/ConnectivityManager;Lcom/google/glass/net/ProtoRequestDispatcher;Lcom/google/glass/location/LocationManagerHelper;Lcom/google/common/util/concurrent/ListeningExecutorService;Lcom/google/glass/settings/timezone/TimeZoneUpdater$OnTimeZoneReceivedListener;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/google/glass/settings/timezone/TimeZoneUpdaterProvider$1;->get()Lcom/google/glass/settings/timezone/TimeZoneUpdater;

    move-result-object v0

    return-object v0
.end method
