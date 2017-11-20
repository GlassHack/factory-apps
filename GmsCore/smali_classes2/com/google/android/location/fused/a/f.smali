.class public final Lcom/google/android/location/fused/a/f;
.super Lcom/google/android/location/fused/a/h;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private final a:Lcom/google/android/location/fused/ar;

.field private final b:Landroid/app/AlarmManager;

.field private final c:Landroid/content/Context;

.field private final d:Landroid/content/BroadcastReceiver;

.field private final e:Landroid/content/IntentFilter;

.field private final l:Landroid/app/PendingIntent;

.field private final m:Landroid/os/Handler;

.field private final n:Lcom/google/android/gms/common/util/i;

.field private o:Z

.field private p:I


# direct methods
.method public constructor <init>(Lcom/google/android/location/fused/ar;Landroid/app/AlarmManager;Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/util/i;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-direct {p0}, Lcom/google/android/location/fused/a/h;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/google/android/location/fused/a/f;->a:Lcom/google/android/location/fused/ar;

    .line 75
    iput-object p2, p0, Lcom/google/android/location/fused/a/f;->b:Landroid/app/AlarmManager;

    .line 76
    iput-object p3, p0, Lcom/google/android/location/fused/a/f;->c:Landroid/content/Context;

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/location/fused/a/f;->m:Landroid/os/Handler;

    .line 78
    iput v2, p0, Lcom/google/android/location/fused/a/f;->p:I

    .line 79
    iput-object p5, p0, Lcom/google/android/location/fused/a/f;->n:Lcom/google/android/gms/common/util/i;

    .line 81
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/fused/a/f;->e:Landroid/content/IntentFilter;

    .line 82
    iget-object v0, p0, Lcom/google/android/location/fused/a/f;->e:Landroid/content/IntentFilter;

    const-string v1, "com.google.android.gms.location.fused.GPS_ALARM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.location.fused.GPS_ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x8000000

    invoke-static {p3, v2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/fused/a/f;->l:Landroid/app/PendingIntent;

    .line 88
    new-instance v0, Lcom/google/android/location/fused/a/g;

    invoke-direct {v0, p0}, Lcom/google/android/location/fused/a/g;-><init>(Lcom/google/android/location/fused/a/f;)V

    iput-object v0, p0, Lcom/google/android/location/fused/a/f;->d:Landroid/content/BroadcastReceiver;

    .line 94
    return-void
.end method

.method private b(J)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 175
    iget-object v0, p0, Lcom/google/android/location/fused/a/f;->n:Lcom/google/android/gms/common/util/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/i;->b()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 176
    const/16 v2, 0x13

    invoke-static {v2}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    iget-object v2, p0, Lcom/google/android/location/fused/a/f;->b:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/google/android/location/fused/a/f;->l:Landroid/app/PendingIntent;

    invoke-virtual {v2, v4, v0, v1, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 187
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v2, p0, Lcom/google/android/location/fused/a/f;->b:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/google/android/location/fused/a/f;->l:Landroid/app/PendingIntent;

    invoke-virtual {v2, v4, v0, v1, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/location/fused/a/f;->a:Lcom/google/android/location/fused/ar;

    invoke-virtual {v0}, Lcom/google/android/location/fused/ar;->a()Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 167
    invoke-direct {p0}, Lcom/google/android/location/fused/a/f;->h()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/fused/a/f;->b(J)V

    .line 168
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/location/fused/a/f;->p:I

    .line 169
    return-void
.end method

.method private h()J
    .locals 4

    .prologue
    .line 191
    sget-object v0, Lcom/google/android/location/x;->C:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/location/fused/a/h;->f:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method protected final a()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 98
    iget-boolean v0, p0, Lcom/google/android/location/fused/a/l;->h:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/location/fused/a/l;->i:Z

    if-eqz v0, :cond_1

    .line 99
    iget-boolean v0, p0, Lcom/google/android/location/fused/a/f;->o:Z

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/google/android/location/fused/a/f;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/location/fused/a/f;->d:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/google/android/location/fused/a/f;->e:Landroid/content/IntentFilter;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/location/fused/a/f;->m:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 101
    iput-boolean v5, p0, Lcom/google/android/location/fused/a/f;->o:Z

    .line 104
    :cond_0
    invoke-direct {p0}, Lcom/google/android/location/fused/a/f;->h()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/fused/a/f;->b(J)V

    .line 105
    iput v5, p0, Lcom/google/android/location/fused/a/f;->p:I

    .line 120
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/location/fused/a/f;->o:Z

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/google/android/location/fused/a/f;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/location/fused/a/f;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 109
    iput-boolean v2, p0, Lcom/google/android/location/fused/a/f;->o:Z

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/fused/a/f;->a:Lcom/google/android/location/fused/ar;

    invoke-virtual {v0}, Lcom/google/android/location/fused/ar;->a()Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 113
    const-string v0, "GCoreFlp"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    const-string v0, "Pulsed GPS Disabled"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/fused/a/f;->b:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/google/android/location/fused/a/f;->l:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 118
    iput v2, p0, Lcom/google/android/location/fused/a/f;->p:I

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 126
    iget v0, p0, Lcom/google/android/location/fused/a/f;->p:I

    packed-switch v0, :pswitch_data_0

    .line 134
    :goto_0
    return-void

    .line 128
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/location/fused/a/f;->h()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/fused/a/f;->b(J)V

    goto :goto_0

    .line 131
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/location/fused/a/f;->d()V

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method final c()V
    .locals 8

    .prologue
    .line 138
    iget v0, p0, Lcom/google/android/location/fused/a/f;->p:I

    packed-switch v0, :pswitch_data_0

    .line 162
    :goto_0
    return-void

    .line 140
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/location/fused/a/f;->a:Lcom/google/android/location/fused/ar;

    invoke-virtual {v0}, Lcom/google/android/location/fused/ar;->a()Landroid/location/LocationManager;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/location/os/real/bf;->a(Landroid/location/LocationManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/google/android/location/fused/a/f;->a:Lcom/google/android/location/fused/ar;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/google/android/location/fused/a/f;->m:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/location/fused/a/l;->j:Ljava/util/Collection;

    const/4 v7, 0x1

    move-object v4, p0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/location/fused/ar;->a(Ljava/lang/String;JLandroid/location/LocationListener;Landroid/os/Looper;Ljava/util/Collection;Z)V

    .line 155
    :cond_0
    :goto_1
    sget-object v0, Lcom/google/android/location/x;->D:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/fused/a/f;->b(J)V

    .line 156
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/location/fused/a/f;->p:I

    goto :goto_0

    .line 152
    :cond_1
    const-string v0, "GCoreFlp"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const-string v0, "Gps not enabled because no gps device exists"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 159
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/location/fused/a/f;->d()V

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 211
    return-void
.end method
