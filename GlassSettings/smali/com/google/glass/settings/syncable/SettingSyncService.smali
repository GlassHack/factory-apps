.class public Lcom/google/glass/settings/syncable/SettingSyncService;
.super Landroid/app/Service;
.source "SettingSyncService.java"


# static fields
.field public static final LOCK:Ljava/lang/Object;

.field private static final SHARED_PREFS_NAME:Ljava/lang/String; = "setting_sync"

.field private static syncAdapter:Lcom/google/glass/settings/syncable/SettingSyncAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/glass/settings/syncable/SettingSyncService;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    sget-object v0, Lcom/google/glass/settings/syncable/SettingSyncService;->syncAdapter:Lcom/google/glass/settings/syncable/SettingSyncAdapter;

    invoke-virtual {v0}, Lcom/google/glass/settings/syncable/SettingSyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 9

    .prologue
    .line 27
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 28
    sget-object v7, Lcom/google/glass/settings/syncable/SettingSyncService;->LOCK:Ljava/lang/Object;

    monitor-enter v7

    .line 29
    :try_start_0
    sget-object v0, Lcom/google/glass/settings/syncable/SettingSyncService;->syncAdapter:Lcom/google/glass/settings/syncable/SettingSyncAdapter;

    if-nez v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/google/glass/settings/syncable/SettingSyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 31
    .local v1, "application":Landroid/content/Context;
    new-instance v6, Lcom/google/glass/util/SettingsSecure;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    .line 32
    .local v6, "settingsSecure":Lcom/google/glass/util/SettingsSecure;
    new-instance v0, Lcom/google/glass/settings/syncable/SettingSyncAdapter;

    const/4 v2, 0x1

    .line 34
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 35
    invoke-static {}, Lcom/google/glass/net/ProtoRequestDispatcher$Providers;->getSecondaryDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v4

    const-string v5, "setting_sync"

    const/4 v8, 0x0

    .line 36
    invoke-virtual {v1, v5, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/settings/syncable/SettingSyncAdapter;-><init>(Landroid/content/Context;ZLandroid/content/ContentResolver;Lcom/google/glass/net/ProtoRequestDispatcher;Landroid/content/SharedPreferences;Lcom/google/glass/util/SettingsSecure;)V

    sput-object v0, Lcom/google/glass/settings/syncable/SettingSyncService;->syncAdapter:Lcom/google/glass/settings/syncable/SettingSyncAdapter;

    .line 40
    .end local v1    # "application":Landroid/content/Context;
    .end local v6    # "settingsSecure":Lcom/google/glass/util/SettingsSecure;
    :cond_0
    monitor-exit v7

    .line 41
    return-void

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
