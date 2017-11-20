.class public Lcom/google/android/location/network/NetworkLocationService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field private static b:Lcom/google/android/location/network/NetworkLocationService;


# instance fields
.field private a:Lcom/google/android/location/network/NetworkLocationProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "GCoreNetworkLocationService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 45
    sput-object p0, Lcom/google/android/location/network/NetworkLocationService;->b:Lcom/google/android/location/network/NetworkLocationService;

    .line 46
    return-void
.end method

.method static a(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 236
    invoke-static {p0, p1}, Lcom/google/android/location/network/NetworkLocationService;->b(Landroid/content/Context;Z)Z

    .line 240
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 242
    return-void
.end method

.method static declared-synchronized a(Landroid/content/Context;)Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 114
    const-class v8, Lcom/google/android/location/network/NetworkLocationService;

    monitor-enter v8

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 117
    new-instance v0, Lcom/google/android/location/network/e;

    invoke-direct {v0, p0}, Lcom/google/android/location/network/e;-><init>(Landroid/content/Context;)V

    .line 118
    invoke-virtual {v0}, Lcom/google/android/location/network/e;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 122
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/location/network/NetworkLocationService;->b(Landroid/content/Context;Z)Z

    move-result v0

    .line 123
    if-eqz v0, :cond_0

    .line 124
    const-string v2, "GCoreNlp"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    const-string v2, "GCoreNlp"

    const-string v3, "!shouldConfirmNlp, auto-opted user into NLP"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/google/android/location/network/NetworkLocationService;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gsf.GOOGLE_LOCATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 134
    const-string v0, "GCoreNlp"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    const-string v0, "GCoreNlp"

    const-string v1, "!shouldConfirmNlp, but user has LGAAYL off"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move v0, v6

    .line 187
    :cond_2
    :goto_0
    monitor-exit v8

    return v0

    .line 142
    :cond_3
    if-eqz v1, :cond_7

    .line 144
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/gsf/d;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "(name=?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "network_location_opt_in"

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 150
    if-nez v0, :cond_4

    .line 151
    const-string v0, "GCoreNlp"

    const-string v1, "applySettings(): provider not available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 153
    goto :goto_0

    .line 155
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 158
    invoke-static {p0}, Lcom/google/android/location/network/NetworkLocationService;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 164
    invoke-static {p0}, Lcom/google/android/location/network/NetworkLocationService;->c(Landroid/content/Context;)Z

    move-result v0

    .line 167
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/location/network/ConfirmAlertActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    const-string v2, "confirmLgaayl"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 169
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 170
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 172
    const-string v0, "GCoreNlp"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 173
    const-string v0, "GCoreNlp"

    const-string v1, "shouldConfirmNlp, asking to opt in"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v0, v6

    .line 175
    goto :goto_0

    :cond_6
    move v0, v7

    .line 177
    goto :goto_0

    .line 181
    :cond_7
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/location/network/NetworkLocationService;->b(Landroid/content/Context;Z)Z

    move-result v0

    .line 182
    if-eqz v0, :cond_2

    .line 183
    const-string v1, "GCoreNlp"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 184
    const-string v1, "GCoreNlp"

    const-string v2, "shouldConfirmNlp, NLP off. Cleared opt-in"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "network_location_opt_in"

    invoke-static {v1, v2, v0}, Lcom/google/android/gsf/d;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static b(Landroid/content/Context;Z)Z
    .locals 4

    .prologue
    .line 207
    invoke-static {p0}, Lcom/google/android/location/network/NetworkLocationService;->b(Landroid/content/Context;)Z

    move-result v1

    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "network_location_opt_in"

    if-eqz p1, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/google/android/gsf/d;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 210
    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 208
    :cond_0
    const-string v0, "0"

    goto :goto_0

    .line 210
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 220
    invoke-static {p0}, Lcom/google/android/gms/common/util/m;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/common/util/m;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/location/network/NetworkLocationService;->a:Lcom/google/android/location/network/NetworkLocationProvider;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/google/android/location/network/NetworkLocationProvider;

    invoke-virtual {p0}, Lcom/google/android/location/network/NetworkLocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/location/network/NetworkLocationProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/location/network/NetworkLocationService;->a:Lcom/google/android/location/network/NetworkLocationProvider;

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/location/network/NetworkLocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/location/network/NetworkLocationService;->a(Landroid/content/Context;)Z

    move-result v0

    .line 56
    if-eqz v0, :cond_1

    .line 62
    const-string v0, "GCoreNlp"

    const-string v1, "NLS.onBind() call to applySettings() had effect, have to fix inter-process"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/location/network/NetworkLocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/location/a/b;->a(Landroid/content/Context;)V

    .line 68
    iget-object v0, p0, Lcom/google/android/location/network/NetworkLocationService;->a:Lcom/google/android/location/network/NetworkLocationProvider;

    invoke-virtual {v0}, Lcom/google/android/location/network/NetworkLocationProvider;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/network/NetworkLocationService;->a:Lcom/google/android/location/network/NetworkLocationProvider;

    .line 82
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 90
    invoke-static {p1}, Lcom/google/android/location/clientlib/c;->a(Landroid/content/Intent;)Lcom/google/android/location/clientlib/NlpLocation;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/google/android/location/network/NetworkLocationService;->a:Lcom/google/android/location/network/NetworkLocationProvider;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/location/clientlib/NlpLocation;->a:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 96
    const-string v1, "noGPSLocation"

    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-static {v0, v1, v2}, Lcom/google/android/location/o/w;->a(Landroid/location/Location;Ljava/lang/String;Landroid/location/Location;)V

    .line 100
    iget-object v1, p0, Lcom/google/android/location/network/NetworkLocationService;->a:Lcom/google/android/location/network/NetworkLocationProvider;

    invoke-virtual {v1, v0}, Lcom/google/android/location/network/NetworkLocationProvider;->reportLocation(Landroid/location/Location;)V

    .line 102
    :cond_0
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/location/network/NetworkLocationService;->a:Lcom/google/android/location/network/NetworkLocationProvider;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/android/location/network/NetworkLocationService;->a:Lcom/google/android/location/network/NetworkLocationProvider;

    invoke-virtual {v0}, Lcom/google/android/location/network/NetworkLocationProvider;->onDisable()V

    .line 76
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
