.class Lcom/google/glass/sync/LocationSyncHandler$Provider$1;
.super Ljava/lang/Object;
.source "LocationSyncHandler.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/sync/LocationSyncHandler$Provider;->get(Landroid/content/Context;)Lcom/google/glass/sync/LocationSyncHandler;
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
        "Lcom/google/glass/sync/LocationSyncHandler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/sync/LocationSyncHandler$Provider;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/sync/LocationSyncHandler$Provider;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/sync/LocationSyncHandler$Provider;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/google/glass/sync/LocationSyncHandler$Provider$1;->this$0:Lcom/google/glass/sync/LocationSyncHandler$Provider;

    iput-object p2, p0, Lcom/google/glass/sync/LocationSyncHandler$Provider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/sync/LocationSyncHandler;
    .locals 8

    .prologue
    .line 324
    new-instance v1, Lcom/google/glass/util/SettingsSecure;

    iget-object v0, p0, Lcom/google/glass/sync/LocationSyncHandler$Provider$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    .line 325
    .local v1, "settingsSecure":Lcom/google/glass/util/SettingsSecure;
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v2

    .line 326
    .local v2, "clock":Lcom/google/glass/time/Clock;
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v0

    iget-object v7, p0, Lcom/google/glass/sync/LocationSyncHandler$Provider$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v7}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v3

    .line 328
    .local v3, "userEventHelper":Lcom/google/glass/userevent/UserEventHelper;
    invoke-static {}, Lcom/google/glass/android/net/ConnectivityManagerProvider;->getInstance()Lcom/google/glass/android/net/ConnectivityManagerProvider;

    move-result-object v0

    iget-object v7, p0, Lcom/google/glass/sync/LocationSyncHandler$Provider$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v7}, Lcom/google/glass/android/net/ConnectivityManagerProvider;->from(Landroid/content/Context;)Lcom/google/glass/android/net/ConnectivityManager;

    move-result-object v4

    .line 330
    .local v4, "connectivityManager":Lcom/google/glass/android/net/ConnectivityManager;
    invoke-static {}, Lcom/google/glass/location/LocationManagerHelper$Provider;->getInstance()Lcom/google/glass/location/LocationManagerHelper$Provider;

    move-result-object v0

    iget-object v7, p0, Lcom/google/glass/sync/LocationSyncHandler$Provider$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v7}, Lcom/google/glass/location/LocationManagerHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/location/LocationManagerHelper;

    move-result-object v5

    .line 332
    .local v5, "locationManagerHelper":Lcom/google/glass/location/LocationManagerHelper;
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher$Providers;->getPrimaryDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v6

    .line 334
    .local v6, "dispatcher":Lcom/google/glass/net/ProtoRequestDispatcher;
    new-instance v0, Lcom/google/glass/sync/LocationSyncHandler;

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/sync/LocationSyncHandler;-><init>(Lcom/google/glass/util/SettingsSecure;Lcom/google/glass/time/Clock;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/android/net/ConnectivityManager;Lcom/google/glass/location/LocationManagerHelper;Lcom/google/glass/net/ProtoRequestDispatcher;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/google/glass/sync/LocationSyncHandler$Provider$1;->get()Lcom/google/glass/sync/LocationSyncHandler;

    move-result-object v0

    return-object v0
.end method
