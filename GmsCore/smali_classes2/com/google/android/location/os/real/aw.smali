.class public final Lcom/google/android/location/os/real/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/k/j;
.implements Lcom/google/android/location/os/at;
.implements Lcom/google/android/location/p/e;


# instance fields
.field public final a:Landroid/content/Context;

.field private final c:Lcom/google/android/location/os/e;

.field private final d:Lcom/google/android/location/os/real/x;

.field private final e:Lcom/google/android/location/os/real/ax;

.field private final f:Landroid/support/v4/a/i;

.field private final g:Landroid/app/AlarmManager;

.field private final h:[Landroid/app/PendingIntent;

.field private final i:Lcom/google/android/location/f/ag;

.field private final j:Lcom/google/android/location/k/b;

.field private final k:Lcom/google/android/location/k/e;

.field private final m:Lcom/google/android/location/os/ax;

.field private final n:Lcom/google/android/location/k/f;

.field private final o:Ljava/util/List;

.field private final p:Landroid/hardware/SensorManager;

.field private final q:Landroid/location/LocationManager;

.field private final r:Lcom/google/android/location/d/b;

.field private final s:J

.field private final t:Lcom/google/android/location/k/d;

.field private final u:Landroid/os/PowerManager;

.field private final v:Lcom/google/android/location/a/a;

.field private final w:Z

.field private final x:Lcom/google/android/location/os/aw;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/location/os/e;Lcom/google/android/location/os/real/ax;)V
    .locals 12

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    sget v0, Lcom/google/android/location/os/real/aw;->b:I

    new-array v0, v0, [Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/google/android/location/os/real/aw;->h:[Landroid/app/PendingIntent;

    .line 118
    new-instance v0, Lcom/google/android/location/os/real/ap;

    invoke-direct {v0}, Lcom/google/android/location/os/real/ap;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/os/real/aw;->j:Lcom/google/android/location/k/b;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/os/real/aw;->o:Ljava/util/List;

    .line 153
    iput-object p1, p0, Lcom/google/android/location/os/real/aw;->a:Landroid/content/Context;

    .line 154
    iput-object p2, p0, Lcom/google/android/location/os/real/aw;->c:Lcom/google/android/location/os/e;

    .line 155
    iput-object p3, p0, Lcom/google/android/location/os/real/aw;->e:Lcom/google/android/location/os/real/ax;

    .line 156
    new-instance v0, Lcom/google/android/location/d/b;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/google/android/location/d/b;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/google/android/location/os/real/aw;->r:Lcom/google/android/location/d/b;

    .line 157
    invoke-static {p1}, Landroid/support/v4/a/i;->a(Landroid/content/Context;)Landroid/support/v4/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/os/real/aw;->f:Landroid/support/v4/a/i;

    .line 158
    new-instance v0, Lcom/google/android/location/os/real/ar;

    invoke-direct {v0, p1, p2}, Lcom/google/android/location/os/real/ar;-><init>(Landroid/content/Context;Lcom/google/android/location/os/e;)V

    iput-object v0, p0, Lcom/google/android/location/os/real/aw;->k:Lcom/google/android/location/k/e;

    .line 160
    new-instance v0, Lcom/google/android/location/f/ag;

    iget-object v1, p0, Lcom/google/android/location/os/real/aw;->j:Lcom/google/android/location/k/b;

    iget-object v2, p0, Lcom/google/android/location/os/real/aw;->k:Lcom/google/android/location/k/e;

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/location/f/ag;-><init>(Lcom/google/android/location/k/b;Lcom/google/android/location/k/e;Lcom/google/android/location/p/e;)V

    iput-object v0, p0, Lcom/google/android/location/os/real/aw;->i:Lcom/google/android/location/f/ag;

    .line 161
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->i:Lcom/google/android/location/f/ag;

    invoke-virtual {v0}, Lcom/google/android/location/f/ag;->a()V

    .line 162
    new-instance v0, Lcom/google/android/location/os/real/x;

    iget-object v1, p0, Lcom/google/android/location/os/real/aw;->i:Lcom/google/android/location/f/ag;

    invoke-direct {v0, p1, p0, v1, p2}, Lcom/google/android/location/os/real/x;-><init>(Landroid/content/Context;Lcom/google/android/location/os/real/aw;Lcom/google/android/location/f/ag;Lcom/google/android/location/os/e;)V

    iput-object v0, p0, Lcom/google/android/location/os/real/aw;->d:Lcom/google/android/location/os/real/x;

    .line 163
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/google/android/location/os/real/aw;->g:Landroid/app/AlarmManager;

    .line 164
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->h:[Landroid/app/PendingIntent;

    sget-object v1, Lcom/google/android/location/k/k;->a:Lcom/google/android/location/k/k;

    invoke-virtual {v1}, Lcom/google/android/location/k/k;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/google/android/location/os/real/aw;->d:Lcom/google/android/location/os/real/x;

    iget-object v4, v4, Lcom/google/android/location/os/real/x;->a:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {p1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    aput-object v2, v0, v1

    .line 166
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->h:[Landroid/app/PendingIntent;

    sget-object v1, Lcom/google/android/location/k/k;->b:Lcom/google/android/location/k/k;

    invoke-virtual {v1}, Lcom/google/android/location/k/k;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/google/android/location/os/real/aw;->d:Lcom/google/android/location/os/real/x;

    iget-object v4, v4, Lcom/google/android/location/os/real/x;->b:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {p1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    aput-object v2, v0, v1

    .line 168
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->h:[Landroid/app/PendingIntent;

    sget-object v1, Lcom/google/android/location/k/k;->c:Lcom/google/android/location/k/k;

    invoke-virtual {v1}, Lcom/google/android/location/k/k;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/google/android/location/os/real/aw;->d:Lcom/google/android/location/os/real/x;

    iget-object v4, v4, Lcom/google/android/location/os/real/x;->c:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {p1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    aput-object v2, v0, v1

    .line 170
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->h:[Landroid/app/PendingIntent;

    sget-object v1, Lcom/google/android/location/k/k;->d:Lcom/google/android/location/k/k;

    invoke-virtual {v1}, Lcom/google/android/location/k/k;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/google/android/location/os/real/aw;->d:Lcom/google/android/location/os/real/x;

    iget-object v4, v4, Lcom/google/android/location/os/real/x;->d:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {p1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    aput-object v2, v0, v1

    .line 172
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->h:[Landroid/app/PendingIntent;

    sget-object v1, Lcom/google/android/location/k/k;->e:Lcom/google/android/location/k/k;

    invoke-virtual {v1}, Lcom/google/android/location/k/k;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/google/android/location/os/real/aw;->d:Lcom/google/android/location/os/real/x;

    iget-object v4, v4, Lcom/google/android/location/os/real/x;->e:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {p1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    aput-object v2, v0, v1

    .line 174
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->h:[Landroid/app/PendingIntent;

    sget-object v1, Lcom/google/android/location/k/k;->f:Lcom/google/android/location/k/k;

    invoke-virtual {v1}, Lcom/google/android/location/k/k;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/google/android/location/os/real/aw;->d:Lcom/google/android/location/os/real/x;

    iget-object v4, v4, Lcom/google/android/location/os/real/x;->f:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {p1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    aput-object v2, v0, v1

    .line 176
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->h:[Landroid/app/PendingIntent;

    sget-object v1, Lcom/google/android/location/k/k;->g:Lcom/google/android/location/k/k;

    invoke-virtual {v1}, Lcom/google/android/location/k/k;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/google/android/location/os/real/aw;->d:Lcom/google/android/location/os/real/x;

    iget-object v4, v4, Lcom/google/android/location/os/real/x;->g:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {p1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    aput-object v2, v0, v1

    .line 178
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->h:[Landroid/app/PendingIntent;

    sget-object v1, Lcom/google/android/location/k/k;->h:Lcom/google/android/location/k/k;

    invoke-virtual {v1}, Lcom/google/android/location/k/k;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/google/android/location/os/real/aw;->d:Lcom/google/android/location/os/real/x;

    iget-object v4, v4, Lcom/google/android/location/os/real/x;->h:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {p1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    aput-object v2, v0, v1

    .line 180
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->h:[Landroid/app/PendingIntent;

    sget-object v1, Lcom/google/android/location/k/k;->i:Lcom/google/android/location/k/k;

    invoke-virtual {v1}, Lcom/google/android/location/k/k;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/google/android/location/os/real/aw;->d:Lcom/google/android/location/os/real/x;

    iget-object v4, v4, Lcom/google/android/location/os/real/x;->i:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {p1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    aput-object v2, v0, v1

    .line 182
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->h:[Landroid/app/PendingIntent;

    sget-object v1, Lcom/google/android/location/k/k;->j:Lcom/google/android/location/k/k;

    invoke-virtual {v1}, Lcom/google/android/location/k/k;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/google/android/location/os/real/aw;->d:Lcom/google/android/location/os/real/x;

    iget-object v4, v4, Lcom/google/android/location/os/real/x;->j:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {p1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    aput-object v2, v0, v1

    .line 184
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->h:[Landroid/app/PendingIntent;

    sget-object v1, Lcom/google/android/location/k/k;->k:Lcom/google/android/location/k/k;

    invoke-virtual {v1}, Lcom/google/android/location/k/k;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/google/android/location/os/real/aw;->d:Lcom/google/android/location/os/real/x;

    iget-object v4, v4, Lcom/google/android/location/os/real/x;->k:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {p1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    aput-object v2, v0, v1

    .line 186
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->h:[Landroid/app/PendingIntent;

    sget-object v1, Lcom/google/android/location/k/k;->l:Lcom/google/android/location/k/k;

    invoke-virtual {v1}, Lcom/google/android/location/k/k;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/google/android/location/os/real/aw;->d:Lcom/google/android/location/os/real/x;

    iget-object v4, v4, Lcom/google/android/location/os/real/x;->l:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {p1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    aput-object v2, v0, v1

    .line 188
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->h:[Landroid/app/PendingIntent;

    sget-object v1, Lcom/google/android/location/k/k;->m:Lcom/google/android/location/k/k;

    invoke-virtual {v1}, Lcom/google/android/location/k/k;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/google/android/location/os/real/aw;->d:Lcom/google/android/location/os/real/x;

    iget-object v4, v4, Lcom/google/android/location/os/real/x;->m:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {p1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    aput-object v2, v0, v1

    .line 190
    new-instance v0, Lcom/google/android/location/a/a/b;

    invoke-direct {v0}, Lcom/google/android/location/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/os/real/aw;->v:Lcom/google/android/location/a/a;

    .line 191
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/google/android/location/os/real/aw;->u:Landroid/os/PowerManager;

    .line 193
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 195
    new-instance v0, Lcom/google/android/location/os/real/bc;

    new-instance v3, Lcom/google/android/location/os/real/ay;

    const/4 v1, 0x1

    invoke-direct {v3, p0, v1}, Lcom/google/android/location/os/real/ay;-><init>(Lcom/google/android/location/os/real/aw;Z)V

    new-instance v4, Lcom/google/android/location/os/real/ay;

    const/4 v1, 0x0

    invoke-direct {v4, p0, v1}, Lcom/google/android/location/os/real/ay;-><init>(Lcom/google/android/location/os/real/aw;Z)V

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/os/real/bc;-><init>(Landroid/content/Context;Lcom/google/android/location/os/e;Lcom/google/android/location/os/real/bd;Lcom/google/android/location/os/real/bd;Landroid/net/wifi/WifiManager;)V

    iput-object v0, p0, Lcom/google/android/location/os/real/aw;->m:Lcom/google/android/location/os/ax;

    .line 197
    new-instance v6, Lcom/google/android/location/os/real/at;

    iget-object v8, p0, Lcom/google/android/location/os/real/aw;->j:Lcom/google/android/location/k/b;

    iget-object v9, p0, Lcom/google/android/location/os/real/aw;->i:Lcom/google/android/location/f/ag;

    iget-object v10, p0, Lcom/google/android/location/os/real/aw;->d:Lcom/google/android/location/os/real/x;

    move-object v7, p1

    move-object v11, p2

    invoke-direct/range {v6 .. v11}, Lcom/google/android/location/os/real/at;-><init>(Landroid/content/Context;Lcom/google/android/location/k/b;Lcom/google/android/location/f/ag;Lcom/google/android/location/os/real/x;Lcom/google/android/location/os/e;)V

    iput-object v6, p0, Lcom/google/android/location/os/real/aw;->n:Lcom/google/android/location/k/f;

    .line 199
    invoke-static {}, Lcom/google/android/location/k/k;->values()[Lcom/google/android/location/k/k;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 204
    new-instance v4, Lcom/google/android/location/collectionlib/cz;

    iget-object v6, p0, Lcom/google/android/location/os/real/aw;->u:Landroid/os/PowerManager;

    iget-object v3, v3, Lcom/google/android/location/k/k;->n:Ljava/lang/String;

    invoke-direct {v4, v6, v5, v3}, Lcom/google/android/location/collectionlib/cz;-><init>(Landroid/os/PowerManager;Landroid/net/wifi/WifiManager;Ljava/lang/String;)V

    .line 211
    iget-object v3, p0, Lcom/google/android/location/os/real/aw;->o:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_0
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/google/android/location/os/real/aw;->p:Landroid/hardware/SensorManager;

    .line 214
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/google/android/location/os/real/aw;->q:Landroid/location/LocationManager;

    .line 216
    sget-object v0, Lcom/google/android/location/d/a;->s:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/os/real/aw;->s:J

    .line 222
    new-instance v0, Lcom/google/android/location/os/real/aq;

    iget-wide v2, p0, Lcom/google/android/location/os/real/aw;->s:J

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "nlp_ck"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/google/android/location/os/real/aq;-><init>(Landroid/content/Context;JLjava/io/File;)V

    iput-object v0, p0, Lcom/google/android/location/os/real/aw;->t:Lcom/google/android/location/k/d;

    .line 225
    invoke-static {p1}, Lcom/google/android/location/os/real/aw;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/location/os/real/aw;->w:Z

    .line 226
    invoke-static {}, Lcom/google/android/location/os/real/be;->a()Lcom/google/android/location/os/real/be;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/google/android/location/os/real/be;->a(Landroid/content/Context;Lcom/google/android/location/os/at;)Lcom/google/android/location/os/aw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/os/real/aw;->x:Lcom/google/android/location/os/aw;

    .line 227
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 233
    invoke-static {}, Lcom/google/android/gms/common/util/w;->c()I

    move-result v0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 234
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 235
    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0xf

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    move v3, v1

    .line 236
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    .line 233
    goto :goto_0

    :cond_1
    move v3, v2

    .line 235
    goto :goto_1

    :cond_2
    move v1, v2

    .line 236
    goto :goto_2
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 246
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "nlp_state"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 247
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "nlp_devices"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 248
    invoke-static {p0}, Lcom/google/android/location/os/real/aw;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {p0}, Lcom/google/android/location/os/real/aw;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/location/p/h;->a(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 260
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/location/os/real/ah;->a(Landroid/content/Context;)V

    .line 261
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    sget-boolean v1, Lcom/google/android/location/j/a;->e:Z

    if-eqz v1, :cond_0

    const-string v1, "NetworkLocationRealOs"

    const-string v2, "Unable to delete nlp state file"

    invoke-static {v1, v2, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 256
    :catch_1
    move-exception v0

    .line 257
    sget-boolean v1, Lcom/google/android/location/j/a;->e:Z

    if-eqz v1, :cond_1

    const-string v1, "NetworkLocationRealOs"

    const-string v2, "Unable to delete scache dir"

    invoke-static {v1, v2, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 272
    const-string v0, "cache.cell"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 273
    const-string v0, "cache.wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 274
    const-string v0, "gls.platform.key"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 277
    const-string v0, "nlp_GlsPlatformKey"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 278
    return-void
.end method

.method private c(Z)V
    .locals 7

    .prologue
    .line 365
    invoke-static {}, Lcom/google/android/location/k/k;->values()[Lcom/google/android/location/k/k;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v4, v2, v1

    .line 366
    invoke-virtual {v4}, Lcom/google/android/location/k/k;->ordinal()I

    move-result v0

    .line 367
    if-eqz p1, :cond_0

    iget-boolean v5, v4, Lcom/google/android/location/k/k;->o:Z

    if-eqz v5, :cond_3

    .line 368
    :cond_0
    iget-object v5, p0, Lcom/google/android/location/os/real/aw;->o:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/collectionlib/cz;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/cz;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 369
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "NetworkLocationRealOs"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Client "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/google/android/location/k/k;->n:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " leaked wakelock."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :cond_1
    invoke-virtual {p0, v4}, Lcom/google/android/location/os/real/aw;->a(Lcom/google/android/location/k/k;)V

    .line 372
    :cond_2
    invoke-virtual {p0, v4}, Lcom/google/android/location/os/real/aw;->b(Lcom/google/android/location/k/k;)V

    .line 365
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 375
    :cond_4
    return-void
.end method

.method private static d(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .prologue
    .line 709
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "nlp_s"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static e(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .prologue
    .line 718
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "nlp_ioh"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final A()Lcom/google/android/location/os/aw;
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->x:Lcom/google/android/location/os/aw;

    return-object v0
.end method

.method public final B()Lcom/google/android/location/k/f;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->n:Lcom/google/android/location/k/f;

    return-object v0
.end method

.method public final C()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->d:Lcom/google/android/location/os/real/x;

    iget-object v1, v0, Lcom/google/android/location/os/real/x;->z:Lcom/google/android/location/os/real/z;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, v0, Lcom/google/android/location/os/real/x;->n:Landroid/content/Context;

    iget-object v0, v0, Lcom/google/android/location/os/real/x;->z:Lcom/google/android/location/os/real/z;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final D()V
    .locals 4

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->d:Lcom/google/android/location/os/real/x;

    iget-object v1, v0, Lcom/google/android/location/os/real/x;->t:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    :goto_0
    :try_start_0
    iget-object v1, v0, Lcom/google/android/location/os/real/x;->t:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_1
    iget-object v1, v0, Lcom/google/android/location/os/real/x;->u:Lcom/google/android/location/collectionlib/cy;

    invoke-virtual {v1}, Lcom/google/android/location/collectionlib/cy;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/location/os/real/x;->u:Lcom/google/android/location/collectionlib/cy;

    invoke-virtual {v1}, Lcom/google/android/location/collectionlib/cy;->b()V

    goto :goto_1

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->k:Lcom/google/android/location/k/e;

    invoke-interface {v0}, Lcom/google/android/location/k/e;->d()Lcom/google/android/location/k/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/k/i;->shutdown()V

    .line 329
    :try_start_1
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->k:Lcom/google/android/location/k/e;

    invoke-interface {v0}, Lcom/google/android/location/k/e;->d()Lcom/google/android/location/k/i;

    move-result-object v0

    const-wide/16 v2, 0xa

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/location/k/i;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 333
    :goto_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/location/os/real/aw;->c(Z)V

    .line 334
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    .line 323
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public final E()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 341
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->d:Lcom/google/android/location/os/real/x;

    new-instance v1, Lcom/google/android/location/os/real/ae;

    invoke-direct {v1}, Lcom/google/android/location/os/real/ae;-><init>()V

    new-instance v2, Ljava/lang/Thread;

    const/4 v3, 0x0

    const-string v4, "NetworkLocationCallbackRunner"

    invoke-direct {v2, v3, v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/google/android/location/os/real/x;->t:Ljava/lang/Thread;

    iget-object v2, v0, Lcom/google/android/location/os/real/x;->t:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    new-instance v2, Lcom/google/android/location/os/real/ab;

    invoke-static {v1}, Lcom/google/android/location/os/real/ae;->a(Lcom/google/android/location/os/real/ae;)Landroid/os/Looper;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/google/android/location/os/real/ab;-><init>(Lcom/google/android/location/os/real/x;Landroid/os/Looper;B)V

    iput-object v2, v0, Lcom/google/android/location/os/real/x;->y:Landroid/os/Handler;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/16 v2, 0x2b

    invoke-virtual {v0, v2, v1, v5}, Lcom/google/android/location/os/real/x;->a(ILjava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/google/android/location/os/real/x;->a(Ljava/util/concurrent/CountDownLatch;)V

    .line 342
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/location/collectionlib/ab;Ljava/lang/String;Lcom/google/android/location/p/j;)Lcom/google/android/location/collectionlib/ay;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 747
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/location/os/real/ah;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 748
    if-nez v3, :cond_1

    .line 749
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkLocationRealOs"

    const-string v1, "client ID not assigned yet."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v0, v10

    .line 760
    :goto_0
    return-object v0

    .line 753
    :cond_1
    :try_start_0
    new-instance v0, Lcom/google/android/location/collectionlib/i;

    iget-object v1, p0, Lcom/google/android/location/os/real/aw;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/location/os/real/aw;->t:Lcom/google/android/location/k/d;

    invoke-interface {v2}, Lcom/google/android/location/k/d;->b()Ljavax/crypto/SecretKey;

    move-result-object v2

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v4

    iget-object v2, p0, Lcom/google/android/location/os/real/aw;->t:Lcom/google/android/location/k/d;

    invoke-interface {v2}, Lcom/google/android/location/k/d;->c()[B

    move-result-object v5

    iget-object v2, p0, Lcom/google/android/location/os/real/aw;->d:Lcom/google/android/location/os/real/x;

    iget-object v2, v2, Lcom/google/android/location/os/real/x;->y:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    new-instance v8, Lcom/google/android/location/p/a/c;

    sget-object v2, Lcom/google/android/location/p/a/a;->a:Lcom/google/android/location/p/a/b;

    invoke-direct {v8, p3, v2}, Lcom/google/android/location/p/a/c;-><init>(Ljava/lang/String;Lcom/google/android/location/p/a/b;)V

    move-object v2, p1

    move-object v6, p2

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/google/android/location/collectionlib/i;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B[BLcom/google/android/location/collectionlib/ab;Landroid/os/Looper;Lcom/google/android/location/p/a/c;Lcom/google/android/location/p/j;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 757
    :catch_0
    move-exception v0

    .line 758
    sget-boolean v1, Lcom/google/android/location/j/a;->e:Z

    if-eqz v1, :cond_2

    const-string v1, "NetworkLocationRealOs"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    move-object v0, v10

    .line 760
    goto :goto_0
.end method

.method public final a(Ljava/util/Set;Ljava/util/Map;JLjava/lang/String;Ljava/lang/Integer;ZLcom/google/g/a/b/b/a;ZLcom/google/android/location/collectionlib/ao;Ljava/lang/String;Lcom/google/android/location/p/j;)Lcom/google/android/location/collectionlib/az;
    .locals 11

    .prologue
    .line 634
    new-instance v8, Lcom/google/android/location/os/real/b;

    move-object/from16 v0, p10

    invoke-direct {v8, v0, p0}, Lcom/google/android/location/os/real/b;-><init>(Lcom/google/android/location/collectionlib/ao;Lcom/google/android/location/os/at;)V

    .line 635
    new-instance v1, Lcom/google/android/location/collectionlib/bo;

    invoke-direct {v1}, Lcom/google/android/location/collectionlib/bo;-><init>()V

    .line 637
    iput-object p1, v1, Lcom/google/android/location/collectionlib/bo;->a:Ljava/util/Set;

    invoke-virtual {v1, p3, p4}, Lcom/google/android/location/collectionlib/bo;->a(J)Lcom/google/android/location/collectionlib/bo;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/location/os/real/aw;->t:Lcom/google/android/location/k/d;

    invoke-interface {v3}, Lcom/google/android/location/k/d;->c()[B

    move-result-object v3

    sget-object v4, Lcom/google/android/location/collectionlib/aj;->b:Lcom/google/android/location/collectionlib/aj;

    iput-object v4, v2, Lcom/google/android/location/collectionlib/bo;->b:Lcom/google/android/location/collectionlib/aj;

    move-object/from16 v0, p5

    iput-object v0, v2, Lcom/google/android/location/collectionlib/bo;->c:Ljava/lang/String;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/google/android/location/collectionlib/bo;->d:Ljava/lang/String;

    iput-object v3, v2, Lcom/google/android/location/collectionlib/bo;->e:[B

    move/from16 v0, p9

    iput-boolean v0, v2, Lcom/google/android/location/collectionlib/bo;->i:Z

    move-object/from16 v0, p12

    iput-object v0, v2, Lcom/google/android/location/collectionlib/bo;->j:Lcom/google/android/location/p/j;

    .line 642
    invoke-virtual {v1}, Lcom/google/android/location/collectionlib/bo;->a()Lcom/google/android/location/collectionlib/RealCollectorConfig;

    move-result-object v3

    .line 643
    move/from16 v0, p7

    invoke-virtual {v3, v0}, Lcom/google/android/location/collectionlib/RealCollectorConfig;->a(Z)V

    .line 644
    if-eqz p2, :cond_0

    .line 645
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 646
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/collectionlib/cb;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v2, v1}, Lcom/google/android/location/collectionlib/RealCollectorConfig;->a(Lcom/google/android/location/collectionlib/cb;I)V

    goto :goto_0

    .line 649
    :cond_0
    new-instance v1, Lcom/google/android/location/collectionlib/ck;

    iget-object v2, p0, Lcom/google/android/location/os/real/aw;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/location/os/real/aw;->r:Lcom/google/android/location/d/b;

    iget-object v5, p0, Lcom/google/android/location/os/real/aw;->m:Lcom/google/android/location/os/ax;

    new-instance v9, Lcom/google/android/location/p/a/c;

    sget-object v6, Lcom/google/android/location/p/a/a;->a:Lcom/google/android/location/p/a/b;

    move-object/from16 v0, p11

    invoke-direct {v9, v0, v6}, Lcom/google/android/location/p/a/c;-><init>(Ljava/lang/String;Lcom/google/android/location/p/a/b;)V

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v9}, Lcom/google/android/location/collectionlib/ck;-><init>(Landroid/content/Context;Lcom/google/android/location/collectionlib/ai;Lcom/google/android/location/d/b;Lcom/google/android/location/os/ax;Ljava/lang/Integer;Lcom/google/g/a/b/b/a;Lcom/google/android/location/collectionlib/ao;Lcom/google/android/location/p/a/c;)V

    return-object v1
.end method

.method public final a(ZLjava/util/Set;Ljava/util/Map;JLcom/google/android/location/collectionlib/SensorScannerConfig;Lcom/google/android/location/collectionlib/ao;Ljava/lang/String;Lcom/google/android/location/p/j;)Lcom/google/android/location/collectionlib/az;
    .locals 12

    .prologue
    .line 596
    new-instance v9, Lcom/google/android/location/os/real/b;

    move-object/from16 v0, p7

    invoke-direct {v9, v0, p0}, Lcom/google/android/location/os/real/b;-><init>(Lcom/google/android/location/collectionlib/ao;Lcom/google/android/location/os/at;)V

    .line 597
    new-instance v3, Lcom/google/android/location/collectionlib/bo;

    invoke-direct {v3}, Lcom/google/android/location/collectionlib/bo;-><init>()V

    .line 598
    iput-object p2, v3, Lcom/google/android/location/collectionlib/bo;->a:Ljava/util/Set;

    if-eqz p1, :cond_1

    sget-object v2, Lcom/google/android/location/collectionlib/aj;->d:Lcom/google/android/location/collectionlib/aj;

    :goto_0
    iput-object v2, v3, Lcom/google/android/location/collectionlib/bo;->b:Lcom/google/android/location/collectionlib/aj;

    const/4 v2, 0x0

    iput-object v2, v3, Lcom/google/android/location/collectionlib/bo;->c:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, v3, Lcom/google/android/location/collectionlib/bo;->d:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, v3, Lcom/google/android/location/collectionlib/bo;->e:[B

    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/google/android/location/collectionlib/bo;->i:Z

    move-object/from16 v0, p9

    iput-object v0, v3, Lcom/google/android/location/collectionlib/bo;->j:Lcom/google/android/location/p/j;

    .line 602
    const-wide/16 v4, 0x0

    cmp-long v2, p4, v4

    if-ltz v2, :cond_2

    .line 603
    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Lcom/google/android/location/collectionlib/bo;->a(J)Lcom/google/android/location/collectionlib/bo;

    .line 607
    :goto_1
    if-eqz p6, :cond_0

    .line 608
    move-object/from16 v0, p6

    iput-object v0, v3, Lcom/google/android/location/collectionlib/bo;->h:Lcom/google/android/location/collectionlib/SensorScannerConfig;

    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/google/android/location/collectionlib/bo;->g:Z

    .line 610
    :cond_0
    invoke-virtual {v3}, Lcom/google/android/location/collectionlib/bo;->a()Lcom/google/android/location/collectionlib/RealCollectorConfig;

    move-result-object v4

    .line 611
    if-eqz p3, :cond_4

    .line 612
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 613
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/location/collectionlib/cb;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v3, v2}, Lcom/google/android/location/collectionlib/RealCollectorConfig;->a(Lcom/google/android/location/collectionlib/cb;I)V

    goto :goto_2

    .line 598
    :cond_1
    sget-object v2, Lcom/google/android/location/collectionlib/aj;->a:Lcom/google/android/location/collectionlib/aj;

    goto :goto_0

    .line 605
    :cond_2
    move-wide/from16 v0, p4

    neg-long v4, v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-ge v2, v6, :cond_3

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Scanning past data in supported starting from KitKat."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    iput-wide v4, v3, Lcom/google/android/location/collectionlib/bo;->f:J

    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/google/android/location/collectionlib/bo;->g:Z

    const/4 v2, 0x0

    iput-object v2, v3, Lcom/google/android/location/collectionlib/bo;->h:Lcom/google/android/location/collectionlib/SensorScannerConfig;

    goto :goto_1

    .line 616
    :cond_4
    new-instance v2, Lcom/google/android/location/collectionlib/ck;

    iget-object v3, p0, Lcom/google/android/location/os/real/aw;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/location/os/real/aw;->r:Lcom/google/android/location/d/b;

    iget-object v6, p0, Lcom/google/android/location/os/real/aw;->m:Lcom/google/android/location/os/ax;

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v10, Lcom/google/android/location/p/a/c;

    sget-object v11, Lcom/google/android/location/p/a/a;->a:Lcom/google/android/location/p/a/b;

    move-object/from16 v0, p8

    invoke-direct {v10, v0, v11}, Lcom/google/android/location/p/a/c;-><init>(Ljava/lang/String;Lcom/google/android/location/p/a/b;)V

    invoke-direct/range {v2 .. v10}, Lcom/google/android/location/collectionlib/ck;-><init>(Landroid/content/Context;Lcom/google/android/location/collectionlib/ai;Lcom/google/android/location/d/b;Lcom/google/android/location/os/ax;Ljava/lang/Integer;Lcom/google/g/a/b/b/a;Lcom/google/android/location/collectionlib/ao;Lcom/google/android/location/p/a/c;)V

    return-object v2
.end method

.method public final a()Lcom/google/android/location/f/ag;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->i:Lcom/google/android/location/f/ag;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 569
    sget-boolean v0, Lcom/google/android/location/j/a;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "location/"

    .line 572
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/location/os/real/aw;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 575
    :goto_1
    return-object v0

    .line 569
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 574
    :catch_0
    move-exception v0

    sget-boolean v0, Lcom/google/android/location/j/a;->d:Z

    if-eqz v0, :cond_1

    const-string v0, "NetworkLocationRealOs"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not load asset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(II)V
    .locals 8

    .prologue
    .line 537
    iget-object v2, p0, Lcom/google/android/location/os/real/aw;->c:Lcom/google/android/location/os/e;

    new-instance v1, Lcom/google/android/location/os/n;

    sget-object v3, Lcom/google/android/location/os/c;->O:Lcom/google/android/location/os/c;

    iget-object v0, v2, Lcom/google/android/location/os/e;->a:Lcom/google/android/location/os/ag;

    invoke-interface {v0}, Lcom/google/android/location/os/ag;->a()J

    move-result-wide v4

    move v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/location/os/n;-><init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JII)V

    invoke-virtual {v2, v1}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/af;)V

    .line 539
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->e:Lcom/google/android/location/os/real/ax;

    invoke-interface {v0, p1, p2}, Lcom/google/android/location/os/real/ax;->a(II)V

    .line 540
    return-void
.end method

.method public final a(IIIZLcom/google/android/location/p/j;)V
    .locals 8

    .prologue
    .line 304
    iget-object v6, p0, Lcom/google/android/location/os/real/aw;->d:Lcom/google/android/location/os/real/x;

    const/4 v7, 0x3

    new-instance v0, Lcom/google/android/location/os/real/af;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/os/real/af;-><init>(IIIZLcom/google/android/location/p/j;)V

    const/4 v1, 0x0

    invoke-virtual {v6, v7, v0, v1}, Lcom/google/android/location/os/real/x;->a(ILjava/lang/Object;Z)Z

    .line 306
    return-void
.end method

.method public final a(IIZZZLcom/google/android/location/p/j;)V
    .locals 8

    .prologue
    .line 809
    iget-object v7, p0, Lcom/google/android/location/os/real/aw;->d:Lcom/google/android/location/os/real/x;

    new-instance v0, Lcom/google/android/location/os/real/y;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/location/os/real/y;-><init>(IIZZZLcom/google/android/location/p/j;)V

    const/16 v1, 0x23

    const/4 v2, 0x1

    invoke-virtual {v7, v1, v0, v2}, Lcom/google/android/location/os/real/x;->a(ILjava/lang/Object;Z)Z

    .line 812
    return-void
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->v:Lcom/google/android/location/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/a/a;->a(J)V

    .line 448
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V
    .locals 3

    .prologue
    .line 675
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->d:Lcom/google/android/location/os/real/x;

    const/16 v1, 0x22

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/location/os/real/x;->a(ILjava/lang/Object;Z)Z

    .line 676
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->e:Lcom/google/android/location/os/real/ax;

    invoke-interface {v0, p1}, Lcom/google/android/location/os/real/ax;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V

    .line 677
    return-void
.end method

.method public final a(Lcom/google/android/location/activity/bj;)V
    .locals 3

    .prologue
    .line 670
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->d:Lcom/google/android/location/os/real/x;

    const/16 v1, 0x24

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/location/os/real/x;->a(ILjava/lang/Object;Z)Z

    .line 671
    return-void
.end method

.method public final a(Lcom/google/android/location/f/af;Lcom/google/android/location/f/ax;)V
    .locals 7

    .prologue
    .line 526
    iget-object v2, p0, Lcom/google/android/location/os/real/aw;->c:Lcom/google/android/location/os/e;

    new-instance v1, Lcom/google/android/location/os/m;

    sget-object v3, Lcom/google/android/location/os/c;->N:Lcom/google/android/location/os/c;

    iget-object v0, v2, Lcom/google/android/location/os/e;->a:Lcom/google/android/location/os/ag;

    invoke-interface {v0}, Lcom/google/android/location/os/ag;->a()J

    move-result-wide v4

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/location/os/m;-><init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JLcom/google/android/location/f/af;)V

    invoke-virtual {v2, v1}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/af;)V

    .line 527
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/google/android/location/f/af;->a:Lcom/google/android/location/f/y;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/location/f/af;->a:Lcom/google/android/location/f/y;

    iget-object v0, v0, Lcom/google/android/location/f/y;->c:Lcom/google/android/location/f/ak;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/location/f/af;->a:Lcom/google/android/location/f/y;

    iget-object v0, v0, Lcom/google/android/location/f/y;->d:Lcom/google/android/location/f/aa;

    sget-object v1, Lcom/google/android/location/f/aa;->a:Lcom/google/android/location/f/aa;

    if-eq v0, v1, :cond_1

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->e:Lcom/google/android/location/os/real/ax;

    invoke-interface {v0, p1, p2}, Lcom/google/android/location/os/real/ax;->a(Lcom/google/android/location/f/af;Lcom/google/android/location/f/ax;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/location/f/bg;)V
    .locals 3

    .prologue
    .line 681
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->d:Lcom/google/android/location/os/real/x;

    const/16 v1, 0x2f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/location/os/real/x;->a(ILjava/lang/Object;Z)Z

    .line 682
    return-void
.end method

.method public final a(Lcom/google/android/location/k/k;)V
    .locals 7

    .prologue
    .line 557
    iget-object v2, p0, Lcom/google/android/location/os/real/aw;->c:Lcom/google/android/location/os/e;

    invoke-virtual {p1}, Lcom/google/android/location/k/k;->ordinal()I

    move-result v6

    new-instance v1, Lcom/google/android/location/os/r;

    sget-object v3, Lcom/google/android/location/os/c;->R:Lcom/google/android/location/os/c;

    iget-object v0, v2, Lcom/google/android/location/os/e;->a:Lcom/google/android/location/os/ag;

    invoke-interface {v0}, Lcom/google/android/location/os/ag;->a()J

    move-result-wide v4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/location/os/r;-><init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JI)V

    invoke-virtual {v2, v1, v6}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/af;I)V

    .line 558
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->o:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/location/k/k;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/collectionlib/cy;

    .line 559
    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/cy;->b()V

    .line 560
    return-void
.end method

.method public final a(Lcom/google/android/location/k/k;JJLcom/google/android/location/p/j;)V
    .locals 10

    .prologue
    .line 405
    iget-object v1, p0, Lcom/google/android/location/os/real/aw;->c:Lcom/google/android/location/os/e;

    invoke-virtual {p1}, Lcom/google/android/location/k/k;->ordinal()I

    move-result v5

    new-instance v0, Lcom/google/android/location/os/k;

    sget-object v2, Lcom/google/android/location/os/c;->x:Lcom/google/android/location/os/c;

    iget-object v3, v1, Lcom/google/android/location/os/e;->a:Lcom/google/android/location/os/ag;

    invoke-interface {v3}, Lcom/google/android/location/os/ag;->a()J

    move-result-wide v3

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v0 .. v9}, Lcom/google/android/location/os/k;-><init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JIJJ)V

    invoke-virtual {v1, v0, v5}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/af;I)V

    .line 407
    invoke-static {}, Lcom/google/android/location/os/real/be;->a()Lcom/google/android/location/os/real/be;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/location/os/real/aw;->g:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->h:[Landroid/app/PendingIntent;

    invoke-virtual {p1}, Lcom/google/android/location/k/k;->ordinal()I

    move-result v4

    aget-object v8, v0, v4

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Lcom/google/android/location/os/real/be;->a(Landroid/app/AlarmManager;IJJLandroid/app/PendingIntent;Lcom/google/android/location/p/j;)V

    .line 423
    return-void
.end method

.method public final a(Lcom/google/android/location/k/k;JLcom/google/android/location/p/j;)V
    .locals 8

    .prologue
    .line 396
    iget-object v1, p0, Lcom/google/android/location/os/real/aw;->c:Lcom/google/android/location/os/e;

    invoke-virtual {p1}, Lcom/google/android/location/k/k;->ordinal()I

    move-result v5

    new-instance v0, Lcom/google/android/location/os/j;

    sget-object v2, Lcom/google/android/location/os/c;->w:Lcom/google/android/location/os/c;

    iget-object v3, v1, Lcom/google/android/location/os/e;->a:Lcom/google/android/location/os/ag;

    invoke-interface {v3}, Lcom/google/android/location/os/ag;->a()J

    move-result-wide v3

    move-wide v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/location/os/j;-><init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JIJ)V

    invoke-virtual {v1, v0, v5}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/af;I)V

    .line 397
    invoke-static {}, Lcom/google/android/location/os/real/be;->a()Lcom/google/android/location/os/real/be;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/location/os/real/aw;->g:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->h:[Landroid/app/PendingIntent;

    invoke-virtual {p1}, Lcom/google/android/location/k/k;->ordinal()I

    move-result v4

    aget-object v6, v0, v4

    move-wide v4, p2

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/location/os/real/be;->a(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;Lcom/google/android/location/p/j;)V

    .line 399
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->d:Lcom/google/android/location/os/real/x;

    const/16 v1, 0x2a

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/location/f/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/location/f/ai;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/location/os/real/x;->a(ILjava/lang/Object;Z)Z

    .line 400
    return-void
.end method

.method public final a(Lcom/google/android/location/k/k;Lcom/google/android/location/p/j;)V
    .locals 7

    .prologue
    .line 546
    iget-object v2, p0, Lcom/google/android/location/os/real/aw;->c:Lcom/google/android/location/os/e;

    invoke-virtual {p1}, Lcom/google/android/location/k/k;->ordinal()I

    move-result v6

    new-instance v1, Lcom/google/android/location/os/p;

    sget-object v3, Lcom/google/android/location/os/c;->Q:Lcom/google/android/location/os/c;

    iget-object v0, v2, Lcom/google/android/location/os/e;->a:Lcom/google/android/location/os/ag;

    invoke-interface {v0}, Lcom/google/android/location/os/ag;->a()J

    move-result-wide v4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/location/os/p;-><init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JI)V

    invoke-virtual {v2, v1, v6}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/af;I)V

    .line 547
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->o:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/location/k/k;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/collectionlib/cy;

    .line 548
    iget-object v1, p0, Lcom/google/android/location/os/real/aw;->a:Landroid/content/Context;

    const-string v2, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 550
    invoke-virtual {v0, p2}, Lcom/google/android/location/collectionlib/cy;->a(Lcom/google/android/location/p/j;)V

    .line 552
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/cy;->a()V

    .line 553
    return-void
.end method

.method public final a(Ljava/io/PrintWriter;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 878
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->d:Lcom/google/android/location/os/real/x;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/16 v2, 0x2e

    invoke-static {p1, v1}, Lcom/google/android/location/f/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/location/f/ai;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/location/os/real/x;->a(ILjava/lang/Object;Z)Z

    invoke-static {v1}, Lcom/google/android/location/os/real/x;->a(Ljava/util/concurrent/CountDownLatch;)V

    .line 879
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 94
    check-cast p1, Lcom/google/android/location/f/ag;

    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->d:Lcom/google/android/location/os/real/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->d:Lcom/google/android/location/os/real/x;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/location/os/real/x;->a(ILjava/lang/Object;Z)Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/location/collectionlib/cb;)V
    .locals 6

    .prologue
    .line 800
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->a:Landroid/content/Context;

    new-instance v1, Lcom/google/android/location/p/a/c;

    const-string v2, "NetworkLocationRealOs"

    sget-object v3, Lcom/google/android/location/p/a/a;->a:Lcom/google/android/location/p/a/b;

    invoke-direct {v1, v2, v3}, Lcom/google/android/location/p/a/c;-><init>(Ljava/lang/String;Lcom/google/android/location/p/a/b;)V

    invoke-static {v0, v1}, Lcom/google/android/location/collectionlib/u;->a(Landroid/content/Context;Lcom/google/android/location/p/a/c;)Lcom/google/android/location/collectionlib/u;

    move-result-object v2

    .line 802
    invoke-virtual {v2, p2}, Lcom/google/android/location/collectionlib/u;->b(Lcom/google/android/location/collectionlib/cb;)V

    iget-object v3, v2, Lcom/google/android/location/collectionlib/u;->e:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/location/collectionlib/cb;->c()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/google/android/location/j/a;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, v2, Lcom/google/android/location/collectionlib/u;->a:Lcom/google/android/location/p/a/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "ScannerType "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/location/collectionlib/cb;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " not supported"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/location/collectionlib/u;->a()V

    monitor-exit v3

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/location/collectionlib/cb;->a()I

    move-result v4

    invoke-virtual {v2, p2}, Lcom/google/android/location/collectionlib/u;->a(Lcom/google/android/location/collectionlib/cb;)Landroid/hardware/Sensor;

    move-result-object v5

    iget-object v0, v2, Lcom/google/android/location/collectionlib/u;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/collectionlib/z;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/google/android/location/collectionlib/z;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    iget-object v0, v0, Lcom/google/android/location/collectionlib/z;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v2, Lcom/google/android/location/collectionlib/u;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, v2, Lcom/google/android/location/collectionlib/u;->b:Landroid/hardware/SensorManager;

    iget-object v4, v2, Lcom/google/android/location/collectionlib/u;->c:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v4, v5}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_3

    iget-object v0, v2, Lcom/google/android/location/collectionlib/u;->a:Lcom/google/android/location/p/a/c;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Canceling batch for scanner type "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " because no client requests it."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V

    move v0, v1

    :goto_1
    if-nez v0, :cond_0

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, v2, Lcom/google/android/location/collectionlib/u;->a:Lcom/google/android/location/p/a/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "ClientId "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " for scanner type "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " not exists."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 8

    .prologue
    .line 442
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->v:Lcom/google/android/location/a/a;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/location/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 443
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4

    .prologue
    .line 869
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 870
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 871
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 872
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 874
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->f:Landroid/support/v4/a/i;

    invoke-virtual {v0, v2}, Landroid/support/v4/a/i;->a(Landroid/content/Intent;)Z

    .line 875
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 505
    iget-object v2, p0, Lcom/google/android/location/os/real/aw;->c:Lcom/google/android/location/os/e;

    new-instance v1, Lcom/google/android/location/os/o;

    sget-object v3, Lcom/google/android/location/os/c;->L:Lcom/google/android/location/os/c;

    iget-object v0, v2, Lcom/google/android/location/os/e;->a:Lcom/google/android/location/os/ag;

    invoke-interface {v0}, Lcom/google/android/location/os/ag;->a()J

    move-result-wide v4

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/location/os/o;-><init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JZ)V

    invoke-virtual {v2, v1}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/af;)V

    .line 506
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->d:Lcom/google/android/location/os/real/x;

    iget-object v1, p0, Lcom/google/android/location/os/real/aw;->r:Lcom/google/android/location/d/b;

    iget-boolean v2, v0, Lcom/google/android/location/os/real/x;->A:Z

    if-eq v2, p2, :cond_0

    iput-boolean p2, v0, Lcom/google/android/location/os/real/x;->A:Z

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz p2, :cond_1

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/google/android/location/os/real/x;->p:Lcom/google/android/location/os/real/ac;

    invoke-virtual {v1, p1, v3, v4}, Lcom/google/android/location/d/b;->a(Ljava/lang/String;ZLandroid/location/LocationListener;)V

    const-string v3, "gps"

    iget-object v0, v0, Lcom/google/android/location/os/real/x;->q:Lcom/google/android/location/os/real/ac;

    invoke-virtual {v1, p1, v3, v0, v2}, Lcom/google/android/location/d/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    const/4 v3, 0x1

    iget-object v4, v0, Lcom/google/android/location/os/real/x;->q:Lcom/google/android/location/os/real/ac;

    invoke-virtual {v1, p1, v3, v4}, Lcom/google/android/location/d/b;->a(Ljava/lang/String;ZLandroid/location/LocationListener;)V

    const-string v3, "passive"

    iget-object v0, v0, Lcom/google/android/location/os/real/x;->p:Lcom/google/android/location/os/real/ac;

    invoke-virtual {v1, p1, v3, v0, v2}, Lcom/google/android/location/d/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_0
.end method

.method public final a(Ljava/text/Format;Ljava/io/PrintWriter;)V
    .locals 4

    .prologue
    .line 818
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->r:Lcom/google/android/location/d/b;

    iget-object v1, p0, Lcom/google/android/location/os/real/aw;->j:Lcom/google/android/location/k/b;

    invoke-interface {v1}, Lcom/google/android/location/k/b;->d()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3, p2}, Lcom/google/android/location/d/b;->a(Ljava/text/Format;JLjava/io/PrintWriter;)V

    .line 819
    return-void
.end method

.method public final a(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 314
    iget-object v2, p0, Lcom/google/android/location/os/real/aw;->d:Lcom/google/android/location/os/real/x;

    iget-object v3, v2, Lcom/google/android/location/os/real/x;->w:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v4, v2, Lcom/google/android/location/os/real/x;->x:Z

    if-eqz v4, :cond_0

    monitor-exit v3

    :goto_0
    return-void

    :cond_0
    sget-boolean v4, Lcom/google/android/location/j/a;->b:Z

    if-eqz v4, :cond_1

    const-string v4, "NetworkLocationCallbackRunner"

    const-string v5, "quit"

    invoke-static {v4, v5}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v4, v2, Lcom/google/android/location/os/real/x;->y:Landroid/os/Handler;

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    if-eqz p1, :cond_3

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v2, v4, v0, v1}, Lcom/google/android/location/os/real/x;->a(IIZ)Z

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/google/android/location/os/real/x;->x:Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public final a(ZLjava/lang/String;)V
    .locals 4

    .prologue
    .line 829
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->d:Lcom/google/android/location/os/real/x;

    const/16 v1, 0x25

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/google/android/location/f/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/location/f/ai;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/location/os/real/x;->a(ILjava/lang/Object;Z)Z

    .line 830
    return-void
.end method

.method public final a(ZZ)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 346
    iget-object v2, p0, Lcom/google/android/location/os/real/aw;->d:Lcom/google/android/location/os/real/x;

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    if-eqz p2, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    const/16 v4, 0x2c

    invoke-virtual {v2, v4, v0, v3, v1}, Lcom/google/android/location/os/real/x;->a(IILjava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v3}, Lcom/google/android/location/os/real/x;->a(Ljava/util/concurrent/CountDownLatch;)V

    .line 347
    :cond_2
    return-void
.end method

.method public final a(I)Z
    .locals 2

    .prologue
    .line 786
    sget-object v0, Lcom/google/android/location/d/a;->m:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/location/os/real/be;->a()Lcom/google/android/location/os/real/be;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/os/real/aw;->p:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/location/os/real/be;->a(Landroid/hardware/SensorManager;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/location/collectionlib/cb;)Z
    .locals 2

    .prologue
    .line 737
    sget-object v0, Lcom/google/android/location/collectionlib/RealCollectorConfig;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 738
    if-nez v0, :cond_0

    .line 739
    const/4 v0, 0x0

    .line 741
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/location/os/real/aw;->p:Landroid/hardware/SensorManager;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/android/location/os/real/bf;->a(Landroid/hardware/SensorManager;I)Z

    move-result v0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/location/os/av;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 834
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->d:Lcom/google/android/location/os/real/x;

    const/16 v1, 0x26

    invoke-static {p1, p2}, Lcom/google/android/location/f/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/location/f/ai;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/location/os/real/x;->a(ILjava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/Runnable;)Z
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->d:Lcom/google/android/location/os/real/x;

    invoke-virtual {v0, p1}, Lcom/google/android/location/os/real/x;->a(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/location/collectionlib/cb;ILjava/lang/String;)Z
    .locals 3

    .prologue
    .line 793
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->a:Landroid/content/Context;

    new-instance v1, Lcom/google/android/location/p/a/c;

    sget-object v2, Lcom/google/android/location/p/a/a;->a:Lcom/google/android/location/p/a/b;

    invoke-direct {v1, p4, v2}, Lcom/google/android/location/p/a/c;-><init>(Ljava/lang/String;Lcom/google/android/location/p/a/b;)V

    invoke-static {v0, v1}, Lcom/google/android/location/collectionlib/u;->a(Landroid/content/Context;Lcom/google/android/location/p/a/c;)Lcom/google/android/location/collectionlib/u;

    move-result-object v0

    .line 795
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/location/collectionlib/u;->a(Ljava/lang/String;Lcom/google/android/location/collectionlib/cb;I)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 434
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->c:Lcom/google/android/location/os/e;

    sget-object v1, Lcom/google/android/location/os/c;->z:Lcom/google/android/location/os/c;

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/c;)V

    .line 435
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->d:Lcom/google/android/location/os/real/x;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/location/os/real/x;->a(IIZ)Z

    .line 436
    return-void
.end method

.method public final b(J)V
    .locals 1

    .prologue
    .line 909
    invoke-static {}, Lcom/google/android/location/os/real/be;->a()Lcom/google/android/location/os/real/be;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/location/os/real/be;->a(Lcom/google/android/location/os/at;J)V

    .line 910
    return-void
.end method

.method public final b(Lcom/google/android/location/k/k;)V
    .locals 7

    .prologue
    .line 427
    iget-object v2, p0, Lcom/google/android/location/os/real/aw;->c:Lcom/google/android/location/os/e;

    invoke-virtual {p1}, Lcom/google/android/location/k/k;->ordinal()I

    move-result v6

    new-instance v1, Lcom/google/android/location/os/l;

    sget-object v3, Lcom/google/android/location/os/c;->y:Lcom/google/android/location/os/c;

    iget-object v0, v2, Lcom/google/android/location/os/e;->a:Lcom/google/android/location/os/ag;

    invoke-interface {v0}, Lcom/google/android/location/os/ag;->a()J

    move-result-wide v4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/location/os/l;-><init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JI)V

    invoke-virtual {v2, v1, v6}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/af;I)V

    .line 428
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->g:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/google/android/location/os/real/aw;->h:[Landroid/app/PendingIntent;

    invoke-virtual {p1}, Lcom/google/android/location/k/k;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 429
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 864
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->f:Landroid/support/v4/a/i;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/a/i;->a(Landroid/content/Intent;)Z

    .line 865
    return-void
.end method

.method public final b(Z)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 351
    iget-object v3, p0, Lcom/google/android/location/os/real/aw;->d:Lcom/google/android/location/os/real/x;

    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v4, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/16 v5, 0x2d

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v5, v0, v4, v2}, Lcom/google/android/location/os/real/x;->a(IILjava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v4}, Lcom/google/android/location/os/real/x;->a(Ljava/util/concurrent/CountDownLatch;)V

    .line 355
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/location/os/real/aw;->c(Z)V

    .line 356
    return-void

    :cond_1
    move v0, v2

    .line 351
    goto :goto_0
.end method

.method public final c()Lcom/google/android/location/k/b;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->j:Lcom/google/android/location/k/b;

    return-object v0
.end method

.method public final d()Lcom/google/android/location/k/d;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->t:Lcom/google/android/location/k/d;

    return-object v0
.end method

.method public final e()Lcom/google/android/location/k/e;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->k:Lcom/google/android/location/k/e;

    return-object v0
.end method

.method public final f()Lcom/google/android/location/k/j;
    .locals 0

    .prologue
    .line 471
    return-object p0
.end method

.method public final g()Lcom/google/android/location/os/ax;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->m:Lcom/google/android/location/os/ax;

    return-object v0
.end method

.method public final h()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 511
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->a:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 513
    :try_start_0
    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 518
    :goto_0
    return v0

    .line 514
    :catch_0
    move-exception v0

    .line 515
    sget-boolean v2, Lcom/google/android/location/j/a;->b:Z

    if-eqz v2, :cond_0

    const-string v2, "NetworkLocationRealOs"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "can\'t check GPS "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move v0, v1

    .line 516
    goto :goto_0

    .line 518
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public final i()Lcom/google/android/location/os/ah;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->e:Lcom/google/android/location/os/real/ax;

    invoke-interface {v0}, Lcom/google/android/location/os/real/ax;->d()Lcom/google/android/location/os/ah;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lcom/google/android/location/os/au;
    .locals 5

    .prologue
    .line 581
    new-instance v0, Lcom/google/android/location/os/au;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/location/os/au;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 693
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 698
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 700
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m()Z
    .locals 2

    .prologue
    .line 732
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->p:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/android/location/os/real/aw;->q:Landroid/location/LocationManager;

    invoke-static {v0, v1}, Lcom/google/android/location/os/real/bf;->a(Landroid/hardware/SensorManager;Landroid/location/LocationManager;)Z

    move-result v0

    return v0
.end method

.method public final n()Ljava/io/File;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/location/os/real/aw;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final o()Ljava/io/File;
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/location/os/real/aw;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final p()Ljava/io/File;
    .locals 3

    .prologue
    .line 723
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->a:Landroid/content/Context;

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "nlp_acd"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public final q()I
    .locals 1

    .prologue
    .line 765
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 766
    invoke-static {v0}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 767
    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v0

    return v0
.end method

.method public final r()I
    .locals 4

    .prologue
    .line 772
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 773
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->a:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 774
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 775
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final s()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 780
    iget-object v1, p0, Lcom/google/android/location/os/real/aw;->p:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 781
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final t()J
    .locals 2

    .prologue
    .line 241
    iget-wide v0, p0, Lcom/google/android/location/os/real/aw;->s:J

    return-wide v0
.end method

.method public final u()Z
    .locals 1

    .prologue
    .line 844
    invoke-static {}, Lcom/google/android/location/os/real/be;->a()Lcom/google/android/location/os/real/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/os/real/be;->d()Z

    move-result v0

    return v0
.end method

.method public final v()Lcom/google/android/location/os/e;
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->c:Lcom/google/android/location/os/e;

    return-object v0
.end method

.method public final w()Lcom/google/android/location/activity/az;
    .locals 2

    .prologue
    .line 854
    invoke-static {}, Lcom/google/android/location/os/real/be;->a()Lcom/google/android/location/os/real/be;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/os/real/aw;->p:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/location/os/real/be;->a(Landroid/hardware/SensorManager;Lcom/google/android/location/os/at;)Lcom/google/android/location/activity/az;

    move-result-object v0

    return-object v0
.end method

.method public final x()Lcom/google/android/location/activity/bt;
    .locals 2

    .prologue
    .line 859
    invoke-static {}, Lcom/google/android/location/os/real/be;->a()Lcom/google/android/location/os/real/be;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/os/real/aw;->p:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/location/os/real/be;->b(Landroid/hardware/SensorManager;Lcom/google/android/location/os/at;)Lcom/google/android/location/activity/bt;

    move-result-object v0

    return-object v0
.end method

.method public final y()Z
    .locals 1

    .prologue
    .line 883
    iget-boolean v0, p0, Lcom/google/android/location/os/real/aw;->w:Z

    return v0
.end method

.method public final z()V
    .locals 4

    .prologue
    .line 686
    iget-object v0, p0, Lcom/google/android/location/os/real/aw;->d:Lcom/google/android/location/os/real/x;

    const/16 v1, 0x30

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/location/os/real/x;->a(IIZ)Z

    .line 687
    return-void
.end method
