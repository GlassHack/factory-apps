.class public Lcom/google/android/location/geofencer/service/k;
.super Lcom/google/android/gms/common/util/a/c;
.source "SourceFile"


# static fields
.field static volatile i:Lcom/google/android/location/geofencer/service/k;


# instance fields
.field private final A:Ljava/util/List;

.field private final B:Lcom/google/android/location/geofencer/service/af;

.field private final C:Lcom/google/android/location/p/a;

.field final g:Landroid/content/BroadcastReceiver;

.field volatile h:Z

.field private final j:Lcom/google/android/location/geofencer/service/u;

.field private final k:Lcom/google/android/location/geofencer/service/t;

.field private final l:Lcom/google/android/location/geofencer/service/q;

.field private final m:Lcom/google/android/location/geofencer/service/s;

.field private final n:Lcom/google/android/location/geofencer/service/x;

.field private final o:Lcom/google/android/location/geofencer/service/y;

.field private final p:Lcom/google/android/location/geofencer/service/w;

.field private final q:Lcom/google/android/location/geofencer/service/z;

.field private final r:Lcom/google/android/location/geofencer/service/r;

.field private final s:Lcom/google/android/location/geofencer/service/n;

.field private final t:Ljava/lang/Object;

.field private final u:Lcom/google/android/gms/common/util/i;

.field private final v:Landroid/content/Context;

.field private final w:Lcom/google/android/location/geofencer/service/i;

.field private final x:Lcom/google/android/location/o/ab;

.field private final y:Landroid/content/IntentFilter;

.field private volatile z:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/util/i;)V
    .locals 3

    .prologue
    .line 201
    const-class v0, Lcom/google/android/location/internal/GoogleLocationManagerService;

    new-instance v1, Lcom/google/android/location/p/a;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/location/p/a;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/location/geofencer/service/k;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/util/i;Ljava/lang/Class;Lcom/google/android/location/p/a;)V

    .line 208
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/util/i;Ljava/lang/Class;Lcom/google/android/location/p/a;)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/16 v1, 0x64

    const/4 v8, 0x0

    .line 220
    const-string v0, "GeofencerStateMachine"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/util/a/c;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 146
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/k;->t:Ljava/lang/Object;

    .line 157
    iput-boolean v8, p0, Lcom/google/android/location/geofencer/service/k;->z:Z

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/k;->A:Ljava/util/List;

    .line 167
    iput-boolean v8, p0, Lcom/google/android/location/geofencer/service/k;->h:Z

    .line 221
    iput-object p1, p0, Lcom/google/android/location/geofencer/service/k;->v:Landroid/content/Context;

    .line 222
    iput-object p2, p0, Lcom/google/android/location/geofencer/service/k;->u:Lcom/google/android/gms/common/util/i;

    .line 223
    invoke-static {p1}, Lcom/google/android/location/o/ab;->a(Landroid/content/Context;)Lcom/google/android/location/o/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/k;->x:Lcom/google/android/location/o/ab;

    .line 224
    invoke-static {p1}, Lcom/google/android/gms/common/a/b;->a(Landroid/content/Context;)V

    .line 227
    new-instance v0, Lcom/google/android/location/geofencer/service/i;

    move-object v2, p2

    move-object v3, p1

    move-object v4, p0

    move-object v5, p3

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/location/geofencer/service/i;-><init>(ILcom/google/android/gms/common/util/i;Landroid/content/Context;Lcom/google/android/location/geofencer/service/k;Ljava/lang/Class;Lcom/google/android/location/geofencer/service/b;Lcom/google/android/location/geofencer/service/ab;)V

    .line 232
    iput-object v0, p0, Lcom/google/android/location/geofencer/service/k;->w:Lcom/google/android/location/geofencer/service/i;

    .line 233
    new-instance v0, Lcom/google/android/location/geofencer/service/u;

    iget-object v2, p0, Lcom/google/android/location/geofencer/service/k;->w:Lcom/google/android/location/geofencer/service/i;

    invoke-direct {v0, p0, v2}, Lcom/google/android/location/geofencer/service/u;-><init>(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/location/geofencer/service/i;)V

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/k;->j:Lcom/google/android/location/geofencer/service/u;

    .line 234
    new-instance v0, Lcom/google/android/location/geofencer/service/q;

    iget-object v2, p0, Lcom/google/android/location/geofencer/service/k;->w:Lcom/google/android/location/geofencer/service/i;

    invoke-direct {v0, p0, v2}, Lcom/google/android/location/geofencer/service/q;-><init>(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/location/geofencer/service/i;)V

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/k;->l:Lcom/google/android/location/geofencer/service/q;

    .line 235
    new-instance v0, Lcom/google/android/location/geofencer/service/t;

    iget-object v2, p0, Lcom/google/android/location/geofencer/service/k;->w:Lcom/google/android/location/geofencer/service/i;

    invoke-direct {v0, p0, v2}, Lcom/google/android/location/geofencer/service/t;-><init>(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/location/geofencer/service/i;)V

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/k;->k:Lcom/google/android/location/geofencer/service/t;

    .line 236
    new-instance v0, Lcom/google/android/location/geofencer/service/s;

    iget-object v2, p0, Lcom/google/android/location/geofencer/service/k;->w:Lcom/google/android/location/geofencer/service/i;

    invoke-direct {v0, p0, v2}, Lcom/google/android/location/geofencer/service/s;-><init>(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/location/geofencer/service/i;)V

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/k;->m:Lcom/google/android/location/geofencer/service/s;

    .line 237
    new-instance v0, Lcom/google/android/location/geofencer/service/x;

    iget-object v2, p0, Lcom/google/android/location/geofencer/service/k;->w:Lcom/google/android/location/geofencer/service/i;

    invoke-direct {v0, p0, v2}, Lcom/google/android/location/geofencer/service/x;-><init>(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/location/geofencer/service/i;)V

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/k;->n:Lcom/google/android/location/geofencer/service/x;

    .line 238
    new-instance v0, Lcom/google/android/location/geofencer/service/y;

    iget-object v2, p0, Lcom/google/android/location/geofencer/service/k;->w:Lcom/google/android/location/geofencer/service/i;

    invoke-direct {v0, p0, v2}, Lcom/google/android/location/geofencer/service/y;-><init>(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/location/geofencer/service/i;)V

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/k;->o:Lcom/google/android/location/geofencer/service/y;

    .line 239
    new-instance v0, Lcom/google/android/location/geofencer/service/w;

    iget-object v2, p0, Lcom/google/android/location/geofencer/service/k;->w:Lcom/google/android/location/geofencer/service/i;

    invoke-direct {v0, p0, v2}, Lcom/google/android/location/geofencer/service/w;-><init>(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/location/geofencer/service/i;)V

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/k;->p:Lcom/google/android/location/geofencer/service/w;

    .line 240
    new-instance v0, Lcom/google/android/location/geofencer/service/z;

    iget-object v2, p0, Lcom/google/android/location/geofencer/service/k;->w:Lcom/google/android/location/geofencer/service/i;

    invoke-direct {v0, p0, v2}, Lcom/google/android/location/geofencer/service/z;-><init>(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/location/geofencer/service/i;)V

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/k;->q:Lcom/google/android/location/geofencer/service/z;

    .line 241
    new-instance v0, Lcom/google/android/location/geofencer/service/r;

    iget-object v2, p0, Lcom/google/android/location/geofencer/service/k;->w:Lcom/google/android/location/geofencer/service/i;

    invoke-direct {v0, p0, v2}, Lcom/google/android/location/geofencer/service/r;-><init>(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/location/geofencer/service/i;)V

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/k;->r:Lcom/google/android/location/geofencer/service/r;

    .line 242
    new-instance v0, Lcom/google/android/location/geofencer/service/n;

    iget-object v2, p0, Lcom/google/android/location/geofencer/service/k;->w:Lcom/google/android/location/geofencer/service/i;

    invoke-direct {v0, p0, v2}, Lcom/google/android/location/geofencer/service/n;-><init>(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/location/geofencer/service/i;)V

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/k;->s:Lcom/google/android/location/geofencer/service/n;

    .line 244
    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    iget-object v2, p0, Lcom/google/android/gms/common/util/a/c;->e:Lcom/google/android/gms/common/util/a/f;

    if-eqz v2, :cond_0

    invoke-static {v2, v0}, Lcom/google/android/gms/common/util/a/f;->a(Lcom/google/android/gms/common/util/a/f;Z)V

    .line 245
    :cond_0
    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/c;->e:Lcom/google/android/gms/common/util/a/f;

    invoke-static {v0}, Lcom/google/android/gms/common/util/a/f;->d(Lcom/google/android/gms/common/util/a/f;)Lcom/google/android/gms/common/util/a/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/util/a/e;->a(I)V

    .line 250
    new-instance v0, Lcom/google/android/location/geofencer/service/v;

    invoke-direct {v0, p0, v8}, Lcom/google/android/location/geofencer/service/v;-><init>(Lcom/google/android/location/geofencer/service/k;B)V

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/k;->g:Landroid/content/BroadcastReceiver;

    .line 251
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/k;->w:Lcom/google/android/location/geofencer/service/i;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/k;->y:Landroid/content/IntentFilter;

    .line 254
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/k;->j:Lcom/google/android/location/geofencer/service/u;

    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/service/k;->a(Lcom/google/android/gms/common/util/a/b;)V

    .line 255
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/k;->l:Lcom/google/android/location/geofencer/service/q;

    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/service/k;->a(Lcom/google/android/gms/common/util/a/b;)V

    .line 256
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/k;->k:Lcom/google/android/location/geofencer/service/t;

    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/service/k;->a(Lcom/google/android/gms/common/util/a/b;)V

    .line 257
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/k;->m:Lcom/google/android/location/geofencer/service/s;

    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/service/k;->a(Lcom/google/android/gms/common/util/a/b;)V

    .line 258
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/k;->n:Lcom/google/android/location/geofencer/service/x;

    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/service/k;->a(Lcom/google/android/gms/common/util/a/b;)V

    .line 259
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/k;->o:Lcom/google/android/location/geofencer/service/y;

    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/service/k;->a(Lcom/google/android/gms/common/util/a/b;)V

    .line 260
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/k;->p:Lcom/google/android/location/geofencer/service/w;

    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/service/k;->a(Lcom/google/android/gms/common/util/a/b;)V

    .line 261
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/k;->q:Lcom/google/android/location/geofencer/service/z;

    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/service/k;->a(Lcom/google/android/gms/common/util/a/b;)V

    .line 262
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/k;->r:Lcom/google/android/location/geofencer/service/r;

    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/service/k;->a(Lcom/google/android/gms/common/util/a/b;)V

    .line 263
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/k;->s:Lcom/google/android/location/geofencer/service/n;

    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/service/k;->a(Lcom/google/android/gms/common/util/a/b;)V

    .line 264
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/k;->j:Lcom/google/android/location/geofencer/service/u;

    iget-object v1, p0, Lcom/google/android/gms/common/util/a/c;->e:Lcom/google/android/gms/common/util/a/f;

    invoke-static {v1, v0}, Lcom/google/android/gms/common/util/a/f;->b(Lcom/google/android/gms/common/util/a/f;Lcom/google/android/gms/common/util/a/b;)V

    .line 267
    new-instance v0, Lcom/google/android/location/geofencer/service/l;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/geofencer/service/l;-><init>(Lcom/google/android/location/geofencer/service/k;Landroid/os/Handler;)V

    .line 274
    new-instance v1, Lcom/google/android/location/geofencer/service/af;

    invoke-direct {v1, p1, v0}, Lcom/google/android/location/geofencer/service/af;-><init>(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 276
    iput-object v1, p0, Lcom/google/android/location/geofencer/service/k;->B:Lcom/google/android/location/geofencer/service/af;

    .line 277
    iput-object p4, p0, Lcom/google/android/location/geofencer/service/k;->C:Lcom/google/android/location/p/a;

    .line 278
    return-void

    .line 245
    :cond_1
    const/16 v1, 0xa

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/location/geofencer/service/k;)Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/k;->y:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/location/geofencer/service/k;
    .locals 3

    .prologue
    .line 184
    const-class v1, Lcom/google/android/location/geofencer/service/k;

    monitor-enter v1

    .line 185
    :try_start_0
    sget-object v0, Lcom/google/android/location/geofencer/service/k;->i:Lcom/google/android/location/geofencer/service/k;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/location/geofencer/service/k;->i:Lcom/google/android/location/geofencer/service/k;

    invoke-direct {v0}, Lcom/google/android/location/geofencer/service/k;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    :cond_0
    const-string v0, "GeofencerStateMachine"

    const-string v2, "Creating GeofencerStateMachine"

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance v0, Lcom/google/android/location/geofencer/service/k;

    invoke-static {}, Lcom/google/android/gms/common/util/j;->c()Lcom/google/android/gms/common/util/i;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/google/android/location/geofencer/service/k;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/util/i;)V

    .line 188
    sput-object v0, Lcom/google/android/location/geofencer/service/k;->i:Lcom/google/android/location/geofencer/service/k;

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/service/k;->d()V

    .line 190
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    sget-object v0, Lcom/google/android/location/geofencer/service/k;->i:Lcom/google/android/location/geofencer/service/k;

    return-object v0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/google/android/location/geofencer/service/k;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 107
    const-string v0, "android.intent.extra.DATA_REMOVED"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "GeofencerStateMachine"

    const-string v1, "Package removed."

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/location/geofencer/service/k;->c(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/geofencer/service/k;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/google/android/location/geofencer/service/k;->a(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/gms/common/util/a/a;)V
    .locals 0

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/google/android/location/geofencer/service/k;->a(Lcom/google/android/gms/common/util/a/a;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/location/geofencer/service/k;)V
    .locals 3

    .prologue
    .line 107
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/k;->t:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/service/k;->h:Z

    if-eqz v0, :cond_0

    const-string v0, "GeofencerStateMachine"

    const-string v2, "SM quitted, ignoring sendUserSwitched."

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const-string v0, "GeofencerStateMachine"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "GeofencerStateMachine"

    const-string v2, "sendUserSwitched"

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/service/k;->b(I)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/google/android/location/geofencer/service/k;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/google/android/location/geofencer/service/k;->c(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/location/geofencer/service/k;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/google/android/location/geofencer/service/k;->a(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/gms/common/util/a/a;)V
    .locals 0

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/google/android/location/geofencer/service/k;->a(Lcom/google/android/gms/common/util/a/a;)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/gms/common/util/a/a;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/google/android/location/geofencer/service/k;->a()Lcom/google/android/gms/common/util/a/a;

    move-result-object v0

    return-object v0
.end method

.method private c(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 383
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 384
    if-nez v0, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 389
    if-eqz v0, :cond_0

    .line 392
    sget-boolean v1, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v1, :cond_2

    .line 393
    const-string v1, "GeofencerStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "App data cleared. Removing geofences from: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_2
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/service/am;->a(Ljava/lang/String;Lcom/google/android/location/geofencer/service/f;)Lcom/google/android/location/geofencer/service/am;

    move-result-object v0

    .line 397
    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/service/k;->a(Lcom/google/android/location/geofencer/service/am;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/location/geofencer/service/k;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/google/android/location/geofencer/service/k;->a(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/gms/common/util/a/a;)V
    .locals 0

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/google/android/location/geofencer/service/k;->a(Lcom/google/android/gms/common/util/a/a;)V

    return-void
.end method

.method static synthetic d(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/location/o/ab;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/k;->x:Lcom/google/android/location/o/ab;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/gms/common/util/a/a;)V
    .locals 0

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/google/android/location/geofencer/service/k;->a(Lcom/google/android/gms/common/util/a/a;)V

    return-void
.end method

.method public static e()Lcom/google/android/location/geofencer/service/k;
    .locals 2

    .prologue
    .line 195
    const-class v1, Lcom/google/android/location/geofencer/service/k;

    monitor-enter v1

    .line 196
    :try_start_0
    sget-object v0, Lcom/google/android/location/geofencer/service/k;->i:Lcom/google/android/location/geofencer/service/k;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic e(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/location/geofencer/service/x;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/k;->n:Lcom/google/android/location/geofencer/service/x;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/gms/common/util/a/a;)V
    .locals 0

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/google/android/location/geofencer/service/k;->a(Lcom/google/android/gms/common/util/a/a;)V

    return-void
.end method

.method static synthetic f(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/location/geofencer/service/y;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/k;->o:Lcom/google/android/location/geofencer/service/y;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/gms/common/util/a/a;)V
    .locals 0

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/google/android/location/geofencer/service/k;->a(Lcom/google/android/gms/common/util/a/a;)V

    return-void
.end method

.method static synthetic g(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/location/geofencer/service/w;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/k;->p:Lcom/google/android/location/geofencer/service/w;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/gms/common/util/a/a;)V
    .locals 0

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/google/android/location/geofencer/service/k;->a(Lcom/google/android/gms/common/util/a/a;)V

    return-void
.end method

.method static synthetic h(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/location/geofencer/service/z;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/k;->q:Lcom/google/android/location/geofencer/service/z;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/gms/common/util/a/a;)V
    .locals 0

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/google/android/location/geofencer/service/k;->a(Lcom/google/android/gms/common/util/a/a;)V

    return-void
.end method

.method static synthetic i(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/location/geofencer/service/r;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/k;->r:Lcom/google/android/location/geofencer/service/r;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/gms/common/util/a/a;)V
    .locals 0

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/google/android/location/geofencer/service/k;->a(Lcom/google/android/gms/common/util/a/a;)V

    return-void
.end method

.method private i()Z
    .locals 2

    .prologue
    .line 443
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/k;->t:Ljava/lang/Object;

    monitor-enter v1

    .line 444
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/service/k;->h:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 445
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic j(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/location/geofencer/service/n;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/k;->s:Lcom/google/android/location/geofencer/service/n;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/gms/common/util/a/a;)V
    .locals 0

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/google/android/location/geofencer/service/k;->a(Lcom/google/android/gms/common/util/a/a;)V

    return-void
.end method

.method static synthetic k(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/location/geofencer/service/af;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/k;->B:Lcom/google/android/location/geofencer/service/af;

    return-object v0
.end method

.method static synthetic k(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/gms/common/util/a/a;)V
    .locals 0

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/google/android/location/geofencer/service/k;->a(Lcom/google/android/gms/common/util/a/a;)V

    return-void
.end method

.method static synthetic l(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/location/geofencer/service/s;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/k;->m:Lcom/google/android/location/geofencer/service/s;

    return-object v0
.end method

.method static synthetic l(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/gms/common/util/a/a;)V
    .locals 0

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/google/android/location/geofencer/service/k;->a(Lcom/google/android/gms/common/util/a/a;)V

    return-void
.end method

.method static synthetic m(Lcom/google/android/location/geofencer/service/k;)V
    .locals 1

    .prologue
    .line 107
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/service/k;->c(I)V

    return-void
.end method

.method static synthetic m(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/gms/common/util/a/a;)V
    .locals 0

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/google/android/location/geofencer/service/k;->a(Lcom/google/android/gms/common/util/a/a;)V

    return-void
.end method

.method static synthetic n(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/location/geofencer/service/t;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/k;->k:Lcom/google/android/location/geofencer/service/t;

    return-object v0
.end method

.method static synthetic o(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/location/geofencer/service/q;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/k;->l:Lcom/google/android/location/geofencer/service/q;

    return-object v0
.end method

.method static synthetic p(Lcom/google/android/location/geofencer/service/k;)V
    .locals 1

    .prologue
    .line 107
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/service/k;->c(I)V

    return-void
.end method

.method static synthetic q(Lcom/google/android/location/geofencer/service/k;)V
    .locals 1

    .prologue
    .line 107
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/service/k;->c(I)V

    return-void
.end method

.method static synthetic r(Lcom/google/android/location/geofencer/service/k;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/k;->v:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic s(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/location/p/a;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/k;->C:Lcom/google/android/location/p/a;

    return-object v0
.end method

.method static synthetic t(Lcom/google/android/location/geofencer/service/k;)V
    .locals 1

    .prologue
    .line 107
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/service/k;->c(I)V

    return-void
.end method

.method static synthetic u(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/gms/common/util/i;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/k;->u:Lcom/google/android/gms/common/util/i;

    return-object v0
.end method


# virtual methods
.method protected final a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 406
    sparse-switch p1, :sswitch_data_0

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (Message not named in getWhatToString)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 408
    :sswitch_0
    const-string v0, "SM_QUERY_LOCATION_OPT_IN_CMD"

    goto :goto_0

    .line 410
    :sswitch_1
    const-string v0, "SM_INITIALIZE_CMD"

    goto :goto_0

    .line 412
    :sswitch_2
    const-string v0, "SM_STOP_CMD"

    goto :goto_0

    .line 414
    :sswitch_3
    const-string v0, "SM_ADD_GEOFENCE_LIST_CMD"

    goto :goto_0

    .line 416
    :sswitch_4
    const-string v0, "SM_REMOVE_GEOFENCE_CMD"

    goto :goto_0

    .line 418
    :sswitch_5
    const-string v0, "SM_LOCATION_CMD"

    goto :goto_0

    .line 420
    :sswitch_6
    const-string v0, "SM_ACTIVITY_CMD"

    goto :goto_0

    .line 422
    :sswitch_7
    const-string v0, "SM_UPDATE_DETECTOR_REQUIREMENT_CMD"

    goto :goto_0

    .line 424
    :sswitch_8
    const-string v0, "SM_SYSTEM_EVENT_CMD"

    goto :goto_0

    .line 426
    :sswitch_9
    const-string v0, "SM_DUMP_CMD"

    goto :goto_0

    .line 428
    :sswitch_a
    const-string v0, "SM_SEND_AND_WAIT_FOR_TEST_CMD"

    goto :goto_0

    .line 430
    :sswitch_b
    const-string v0, "SM_SAVE_ACTIVITY_STATE_CMD"

    goto :goto_0

    .line 432
    :sswitch_c
    const-string v0, "SM_USER_SWITCH_CMD"

    goto :goto_0

    .line 434
    :sswitch_d
    const-string v0, "SM_HARDWARE_GEOFENCE_CHANGED_CMD"

    goto :goto_0

    .line 436
    :sswitch_e
    const-string v0, "SM_HARDWARE_GEFOENCE_AVAILABILITY_CMD"

    goto :goto_0

    .line 406
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_b
        0xb -> :sswitch_c
        0xc -> :sswitch_d
        0xd -> :sswitch_e
        0x62 -> :sswitch_a
        0x63 -> :sswitch_9
    .end sparse-switch
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 481
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/k;->t:Ljava/lang/Object;

    monitor-enter v1

    .line 482
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/service/k;->z:Z

    if-eqz v0, :cond_0

    .line 483
    const-string v0, "GeofencerStateMachine"

    const-string v2, "sendInitialize called more than once."

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    monitor-exit v1

    .line 503
    :goto_0
    return-void

    .line 486
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/service/k;->h:Z

    if-eqz v0, :cond_2

    .line 487
    const-string v0, "GeofencerStateMachine"

    const-string v2, "SM quit, ignoring sendInitialize."

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/k;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/service/e;

    .line 491
    const/16 v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/location/geofencer/service/e;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 503
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 493
    :cond_1
    :try_start_1
    monitor-exit v1

    goto :goto_0

    .line 495
    :cond_2
    const-string v0, "GeofencerStateMachine"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 496
    const-string v0, "GeofencerStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendInitialize: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :cond_3
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/google/android/location/geofencer/service/k;->a(ILjava/lang/Object;)V

    .line 499
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/geofencer/service/k;->z:Z

    .line 500
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/k;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/service/e;

    .line 501
    invoke-virtual {v0, p0}, Lcom/google/android/location/geofencer/service/e;->a(Lcom/google/android/gms/common/util/a/c;)V

    goto :goto_2

    .line 503
    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final a(Landroid/location/Location;)V
    .locals 4

    .prologue
    .line 588
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/k;->t:Ljava/lang/Object;

    monitor-enter v1

    .line 589
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/service/k;->h:Z

    if-eqz v0, :cond_0

    .line 590
    const-string v0, "GeofencerStateMachine"

    const-string v2, "SM quitted, ignoring sendNewLocation."

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    monitor-exit v1

    .line 597
    :goto_0
    return-void

    .line 593
    :cond_0
    const-string v0, "GeofencerStateMachine"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 594
    const-string v0, "GeofencerStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendNewLocation: location="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :cond_1
    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/android/location/geofencer/service/k;->u:Lcom/google/android/gms/common/util/i;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/i;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/location/geofencer/service/k;->a(ILjava/lang/Object;)V

    .line 597
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/google/android/location/geofencer/service/am;)V
    .locals 4

    .prologue
    .line 561
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/k;->t:Ljava/lang/Object;

    monitor-enter v1

    .line 562
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/service/k;->h:Z

    if-eqz v0, :cond_0

    .line 563
    const-string v0, "GeofencerStateMachine"

    const-string v2, "SM quitted, ignoring removeGeofences."

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/location/geofencer/service/am;->a(Ljava/lang/Object;)V

    .line 565
    monitor-exit v1

    .line 579
    :goto_0
    return-void

    .line 567
    :cond_0
    const-string v0, "GeofencerStateMachine"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 568
    const-string v0, "GeofencerStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "removeGeofences: removeRequest="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/service/k;->z:Z

    if-eqz v0, :cond_2

    .line 571
    invoke-virtual {p1, p0}, Lcom/google/android/location/geofencer/service/am;->a(Lcom/google/android/gms/common/util/a/c;)V

    .line 579
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 573
    :cond_2
    :try_start_1
    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_3

    .line 574
    const-string v0, "GeofencerStateMachine"

    const-string v2, "State machine not initialized, putting request to pending requests."

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/k;->A:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final a(Lcom/google/android/location/i/e;Lcom/google/android/location/i/e;)V
    .locals 4

    .prologue
    .line 607
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/k;->t:Ljava/lang/Object;

    monitor-enter v1

    .line 608
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/service/k;->h:Z

    if-eqz v0, :cond_0

    .line 609
    const-string v0, "GeofencerStateMachine"

    const-string v2, "SM quitted, ignoring sendMovementChange."

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    monitor-exit v1

    .line 617
    :goto_0
    return-void

    .line 612
    :cond_0
    const-string v0, "GeofencerStateMachine"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 613
    const-string v0, "GeofencerStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendMovementChange: previousMovement="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",currentMovement="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    :cond_1
    const/4 v0, 0x7

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/location/geofencer/service/k;->a(ILjava/lang/Object;)V

    .line 617
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/util/List;Lcom/google/android/location/geofencer/service/f;Landroid/app/PendingIntent;)V
    .locals 4

    .prologue
    .line 533
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/k;->t:Ljava/lang/Object;

    monitor-enter v1

    .line 534
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/service/k;->h:Z

    if-eqz v0, :cond_0

    .line 535
    const-string v0, "GeofencerStateMachine"

    const-string v2, "SM quit, ignoring addGeofences."

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const/16 v0, 0x3e8

    invoke-static {p2, v0, p1}, Lcom/google/android/location/geofencer/service/a;->a(Lcom/google/android/location/geofencer/service/f;ILjava/util/List;)V

    .line 538
    monitor-exit v1

    .line 553
    :goto_0
    return-void

    .line 540
    :cond_0
    const-string v0, "GeofencerStateMachine"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 541
    const-string v0, "GeofencerStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addGeofences: geofences="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :cond_1
    new-instance v0, Lcom/google/android/location/geofencer/service/a;

    invoke-direct {v0, p1, p3, p2}, Lcom/google/android/location/geofencer/service/a;-><init>(Ljava/util/List;Landroid/app/PendingIntent;Lcom/google/android/location/geofencer/service/f;)V

    .line 544
    iget-boolean v2, p0, Lcom/google/android/location/geofencer/service/k;->z:Z

    if-eqz v2, :cond_2

    .line 545
    invoke-virtual {v0, p0}, Lcom/google/android/location/geofencer/service/a;->a(Lcom/google/android/gms/common/util/a/c;)V

    .line 553
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 547
    :cond_2
    :try_start_1
    sget-boolean v2, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v2, :cond_3

    .line 548
    const-string v2, "GeofencerStateMachine"

    const-string v3, "State machine not initialized, putting request to pending requests."

    invoke-static {v2, v3}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    :cond_3
    iget-object v2, p0, Lcom/google/android/location/geofencer/service/k;->A:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final a(Z)V
    .locals 4

    .prologue
    .line 661
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/k;->t:Ljava/lang/Object;

    monitor-enter v1

    .line 662
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/service/k;->h:Z

    if-eqz v0, :cond_0

    .line 663
    const-string v0, "GeofencerStateMachine"

    const-string v2, "SM quitted, ignoring sendHardwareGeofenceAvailability."

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    monitor-exit v1

    .line 670
    :goto_0
    return-void

    .line 666
    :cond_0
    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_1

    .line 667
    const-string v0, "GeofencerStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendHardwareGeofenceAvailability: availabile="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    :cond_1
    const/16 v0, 0xd

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/location/geofencer/service/k;->a(ILjava/lang/Object;)V

    .line 670
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected final b()V
    .locals 2

    .prologue
    .line 455
    invoke-super {p0}, Lcom/google/android/gms/common/util/a/c;->b()V

    .line 456
    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 457
    const-string v0, "GeofencerStateMachine"

    const-string v1, "onQuitting"

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/k;->B:Lcom/google/android/location/geofencer/service/af;

    iget-object v1, v0, Lcom/google/android/location/geofencer/service/af;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/location/geofencer/service/af;->b:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 465
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/k;->v:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/geofencer/service/k;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 466
    return-void
.end method

.method public final b(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 511
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/k;->t:Ljava/lang/Object;

    monitor-enter v1

    .line 512
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/service/k;->h:Z

    if-eqz v0, :cond_0

    .line 513
    const-string v0, "GeofencerStateMachine"

    const-string v2, "SM quit, ignoring sendSystemEvent."

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    monitor-exit v1

    .line 520
    :goto_0
    return-void

    .line 516
    :cond_0
    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_1

    .line 517
    const-string v0, "GeofencerStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendSystemEvent: intent="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :cond_1
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/google/android/location/geofencer/service/k;->a(ILjava/lang/Object;)V

    .line 520
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Ljava/io/PrintWriter;)V
    .locals 3

    .prologue
    .line 679
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/k;->t:Ljava/lang/Object;

    monitor-enter v1

    .line 680
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/service/k;->h:Z

    if-eqz v0, :cond_0

    .line 681
    const-string v0, "GeofencerStateMachine"

    const-string v2, "SM quitted, ignoring dump."

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const-string v0, "State machine quitted."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 683
    monitor-exit v1

    .line 693
    :goto_0
    return-void

    .line 685
    :cond_0
    new-instance v0, Lcom/google/android/location/geofencer/service/c;

    invoke-direct {v0, p1}, Lcom/google/android/location/geofencer/service/c;-><init>(Ljava/lang/Object;)V

    .line 687
    invoke-virtual {v0, p0}, Lcom/google/android/location/geofencer/service/c;->a(Lcom/google/android/gms/common/util/a/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 689
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/location/geofencer/service/c;->b()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 693
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 691
    :catch_0
    move-exception v0

    :try_start_3
    const-string v0, "Dump interrupted.\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public final d()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 304
    invoke-super {p0}, Lcom/google/android/gms/common/util/a/c;->d()V

    .line 305
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/k;->B:Lcom/google/android/location/geofencer/service/af;

    iget-object v1, v0, Lcom/google/android/location/geofencer/service/af;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/android/gsf/d;->a:Landroid/net/Uri;

    iget-object v3, v0, Lcom/google/android/location/geofencer/service/af;->b:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, v0, Lcom/google/android/location/geofencer/service/af;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_providers_allowed"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/location/geofencer/service/af;->b:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 306
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/k;->w:Lcom/google/android/location/geofencer/service/i;

    iget-object v1, v0, Lcom/google/android/location/geofencer/service/i;->h:Lcom/google/android/location/geofencer/data/h;

    invoke-virtual {v1}, Lcom/google/android/location/geofencer/data/h;->a()V

    iget-object v0, v0, Lcom/google/android/location/geofencer/service/i;->i:Lcom/google/android/location/geofencer/data/h;

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/data/h;->a()V

    .line 316
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/k;->v:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/geofencer/service/k;->g:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/google/android/location/geofencer/service/k;->y:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 319
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 321
    const-string v1, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 322
    const-string v1, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/k;->v:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/location/geofencer/service/k;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 327
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 328
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 329
    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 330
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 331
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/k;->v:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/location/geofencer/service/k;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 332
    return-void
.end method

.method final f()V
    .locals 3

    .prologue
    .line 336
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/k;->t:Ljava/lang/Object;

    monitor-enter v1

    .line 337
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/service/k;->h:Z

    if-eqz v0, :cond_0

    .line 338
    const-string v0, "GeofencerStateMachine"

    const-string v2, "SM quitted, ignoring sendQueryLocationOptIn."

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    monitor-exit v1

    .line 345
    :goto_0
    return-void

    .line 341
    :cond_0
    const-string v0, "GeofencerStateMachine"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    const-string v0, "GeofencerStateMachine"

    const-string v2, "sendQueryLocationOptIn"

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/service/k;->b(I)V

    .line 345
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final g()V
    .locals 3

    .prologue
    .line 625
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/k;->t:Ljava/lang/Object;

    monitor-enter v1

    .line 626
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/service/k;->h:Z

    if-eqz v0, :cond_0

    .line 627
    const-string v0, "GeofencerStateMachine"

    const-string v2, "SM quitted, ignoring sendSaveActivityState."

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    monitor-exit v1

    .line 634
    :goto_0
    return-void

    .line 630
    :cond_0
    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_1

    .line 631
    const-string v0, "GeofencerStateMachine"

    const-string v2, "sendSaveActivityState"

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    :cond_1
    const/16 v0, 0xa

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/google/android/location/geofencer/service/k;->a(ILjava/lang/Object;)V

    .line 634
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final h()V
    .locals 3

    .prologue
    .line 642
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/k;->t:Ljava/lang/Object;

    monitor-enter v1

    .line 643
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/service/k;->h:Z

    if-eqz v0, :cond_0

    .line 644
    const-string v0, "GeofencerStateMachine"

    const-string v2, "SM quitted, ignoring sendHardwareGeofenceChanged."

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    monitor-exit v1

    .line 651
    :goto_0
    return-void

    .line 647
    :cond_0
    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_1

    .line 648
    const-string v0, "GeofencerStateMachine"

    const-string v2, "sendHardwareGeofenceChanged"

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    :cond_1
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/service/k;->b(I)V

    .line 651
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
