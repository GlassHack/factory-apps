.class public Lcom/google/glass/boutique/GlasswareSyncPreferences;
.super Ljava/lang/Object;
.source "GlasswareSyncPreferences.java"


# static fields
.field private static final GLASSWARE_SYNC_PREFS:Ljava/lang/String; = "glassware_sync_prefs"

.field private static final LAST_SYNCED_TIMESTAMP_US_PREF:Ljava/lang/String; = "last_synced_timestamp_us"


# instance fields
.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    const-string v0, "glassware_sync_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/boutique/GlasswareSyncPreferences;-><init>(Landroid/content/SharedPreferences;)V

    .line 19
    return-void
.end method

.method constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/glass/boutique/GlasswareSyncPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 24
    return-void
.end method


# virtual methods
.method public getLastSyncedTimestampUs()J
    .locals 4

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/glass/boutique/GlasswareSyncPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "last_synced_timestamp_us"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasSynced()Z
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/boutique/GlasswareSyncPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "last_synced_timestamp_us"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setLastSyncedTimestampUs(J)V
    .locals 2
    .param p1, "timestamp"    # J

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/glass/boutique/GlasswareSyncPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_synced_timestamp_us"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 38
    return-void
.end method
