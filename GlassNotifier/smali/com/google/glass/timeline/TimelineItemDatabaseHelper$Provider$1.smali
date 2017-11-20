.class Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider$1;
.super Ljava/lang/Object;
.source "TimelineItemDatabaseHelper.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
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
        "Lcom/google/glass/timeline/TimelineItemDatabaseHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    .prologue
    .line 1800
    iput-object p2, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .locals 10

    .prologue
    .line 1802
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v1

    .line 1803
    .local v1, "clock":Lcom/google/glass/time/Clock;
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1805
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    invoke-static {}, Lcom/google/glass/timeline/MediaStoreFileManager$Provider;->getInstance()Lcom/google/glass/timeline/MediaStoreFileManager$Provider;

    move-result-object v0

    iget-object v9, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v9}, Lcom/google/glass/timeline/MediaStoreFileManager$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/MediaStoreFileManager;

    move-result-object v4

    .line 1807
    .local v4, "mediaStoreFileManager":Lcom/google/glass/timeline/MediaStoreFileManager;
    invoke-static {}, Lcom/google/glass/timeline/BundleCoverHelper$Provider;->getInstance()Lcom/google/glass/timeline/BundleCoverHelper$Provider;

    move-result-object v0

    iget-object v9, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v9}, Lcom/google/glass/timeline/BundleCoverHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/BundleCoverHelper;

    move-result-object v5

    .line 1808
    .local v5, "bundleCoverHelper":Lcom/google/glass/timeline/BundleCoverHelper;
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v0

    iget-object v9, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v9}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v6

    .line 1809
    .local v6, "userEventHelper":Lcom/google/glass/userevent/UserEventHelper;
    invoke-static {}, Lcom/google/glass/util/BatteryHelperProvider;->getInstance()Lcom/google/glass/util/BatteryHelperProvider;

    move-result-object v0

    iget-object v9, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v9}, Lcom/google/glass/util/BatteryHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/util/BatteryHelper;

    move-result-object v7

    .line 1811
    .local v7, "batteryHelper":Lcom/google/glass/util/BatteryHelper;
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    .line 1819
    .local v3, "serializationHelper":Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1820
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v9

    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider$1;->val$context:Landroid/content/Context;

    .line 1821
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v9, v0}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->initIfNeeded(Landroid/app/Application;)V

    .line 1825
    :cond_0
    invoke-static {}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->getInstance()Lcom/google/glass/companion/RemoteCompanionProxy$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/RemoteCompanionProxy$Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 1827
    .local v8, "remoteCompanionProxy":Lcom/google/glass/companion/RemoteCompanionProxy;
    new-instance v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    iget-object v9, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider$1;->val$context:Landroid/content/Context;

    invoke-direct/range {v0 .. v9}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;-><init>(Lcom/google/glass/time/Clock;Landroid/content/ContentResolver;Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;Lcom/google/glass/timeline/MediaStoreFileManager;Lcom/google/glass/timeline/BundleCoverHelper;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/util/BatteryHelper;Lcom/google/glass/companion/RemoteCompanionProxy;Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1800
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider$1;->get()Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v0

    return-object v0
.end method
