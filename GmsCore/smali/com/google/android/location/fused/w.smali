.class public final Lcom/google/android/location/fused/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/fused/ap;
.implements Lcom/google/android/location/fused/bb;


# instance fields
.field final a:Lcom/google/android/location/fused/c;

.field b:Lcom/google/h/a/b/b/t;

.field final c:Lcom/google/android/location/fused/bf;

.field final d:Lcom/google/android/location/fused/ad;

.field private final e:Lcom/google/android/gms/common/util/i;

.field private final f:Ljava/lang/String;

.field private final g:Landroid/os/Handler;

.field private final h:Landroid/content/Context;

.field private i:Lcom/google/android/location/fused/aq;

.field private j:Landroid/location/Location;

.field private final k:Lcom/google/android/location/fused/ao;

.field private final l:Lcom/google/android/location/fused/ao;

.field private m:J

.field private n:J

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Lcom/google/android/location/fused/al;

.field private s:I

.field private t:Lcom/google/android/location/fused/al;

.field private final u:Lcom/google/android/location/fused/ai;

.field private final v:Lcom/google/android/location/fused/ac;

.field private final w:[Landroid/location/Location;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/location/LocationManager;Lcom/google/android/location/fused/ar;Landroid/hardware/SensorManager;Lcom/google/android/location/fused/c;Lcom/google/android/location/fused/az;Lcom/google/android/gms/common/util/i;Lcom/google/android/location/fused/aq;)V
    .locals 16

    .prologue
    .line 161
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/location/fused/w;->p:Z

    .line 117
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/location/fused/w;->q:Z

    .line 131
    new-instance v2, Lcom/google/android/location/fused/ac;

    invoke-direct {v2}, Lcom/google/android/location/fused/ac;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/fused/w;->v:Lcom/google/android/location/fused/ac;

    .line 136
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/location/Location;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/fused/w;->w:[Landroid/location/Location;

    .line 162
    move-object/from16 v0, p8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/location/fused/w;->e:Lcom/google/android/gms/common/util/i;

    .line 163
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/location/fused/w;->h:Landroid/content/Context;

    .line 164
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/fused/w;->f:Ljava/lang/String;

    .line 165
    new-instance v2, Landroid/os/Handler;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/fused/w;->g:Landroid/os/Handler;

    .line 166
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/location/fused/w;->a:Lcom/google/android/location/fused/c;

    .line 167
    new-instance v2, Lcom/google/android/location/fused/bf;

    move-object/from16 v0, p6

    invoke-direct {v2, v0}, Lcom/google/android/location/fused/bf;-><init>(Lcom/google/android/location/fused/c;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/fused/w;->c:Lcom/google/android/location/fused/bf;

    .line 169
    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/location/fused/w;->i:Lcom/google/android/location/fused/aq;

    .line 171
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/fused/w;->r:Lcom/google/android/location/fused/al;

    .line 172
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/fused/w;->t:Lcom/google/android/location/fused/al;

    .line 173
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/location/fused/w;->s:I

    .line 175
    new-instance v2, Lcom/google/h/a/b/b/h;

    new-instance v3, Lcom/google/h/a/b/b/ah;

    invoke-direct {v3}, Lcom/google/h/a/b/b/ah;-><init>()V

    invoke-direct {v2, v3}, Lcom/google/h/a/b/b/h;-><init>(Lcom/google/h/a/b/b/t;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/fused/w;->b:Lcom/google/h/a/b/b/t;

    .line 177
    new-instance v2, Lcom/google/android/location/fused/ao;

    move-object/from16 v0, p6

    invoke-direct {v2, v0}, Lcom/google/android/location/fused/ao;-><init>(Lcom/google/android/location/fused/c;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/fused/w;->k:Lcom/google/android/location/fused/ao;

    .line 178
    new-instance v2, Lcom/google/android/location/fused/ao;

    move-object/from16 v0, p6

    invoke-direct {v2, v0}, Lcom/google/android/location/fused/ao;-><init>(Lcom/google/android/location/fused/c;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/fused/w;->l:Lcom/google/android/location/fused/ao;

    .line 180
    new-instance v2, Lcom/google/android/location/fused/ai;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Lcom/google/android/location/fused/ai;-><init>(Landroid/location/LocationManager;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/location/fused/w;->u:Lcom/google/android/location/fused/ai;

    .line 181
    new-instance v11, Lcom/google/android/location/fused/bd;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/google/android/location/fused/bd;-><init>(Landroid/content/Context;)V

    .line 182
    new-instance v9, Lcom/google/android/location/fused/a;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/fused/w;->g:Landroid/os/Handler;

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-direct {v9, v0, v1, v2}, Lcom/google/android/location/fused/a;-><init>(Landroid/content/Context;Landroid/hardware/SensorManager;Landroid/os/Handler;)V

    .line 184
    new-instance v10, Lcom/google/android/location/fused/x;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v9}, Lcom/google/android/location/fused/x;-><init>(Lcom/google/android/location/fused/w;Lcom/google/android/location/fused/a;)V

    .line 199
    new-instance v15, Lcom/google/android/location/fused/ad;

    new-instance v2, Lcom/google/android/location/fused/a/e;

    new-instance v4, Lcom/google/android/location/fused/z;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/google/android/location/fused/z;-><init>(Lcom/google/android/location/fused/w;)V

    new-instance v5, Lcom/google/android/location/fused/aa;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v5, v0, v1}, Lcom/google/android/location/fused/aa;-><init>(Lcom/google/android/location/fused/w;Landroid/location/LocationManager;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/fused/w;->u:Lcom/google/android/location/fused/ai;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/location/fused/w;->v:Lcom/google/android/location/fused/ac;

    move-object/from16 v3, p4

    move-object/from16 v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/google/android/location/fused/a/e;-><init>(Lcom/google/android/location/fused/ar;Landroid/location/LocationListener;Landroid/location/GpsStatus$Listener;Lcom/google/android/location/fused/ai;Lcom/google/android/location/fused/ac;Landroid/os/Looper;)V

    new-instance v12, Lcom/google/android/location/fused/a/k;

    new-instance v3, Lcom/google/android/location/fused/ab;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/google/android/location/fused/ab;-><init>(Lcom/google/android/location/fused/w;)V

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-direct {v12, v0, v3, v1}, Lcom/google/android/location/fused/a/k;-><init>(Lcom/google/android/location/fused/ar;Landroid/location/LocationListener;Landroid/os/Looper;)V

    new-instance v13, Lcom/google/android/location/fused/a/p;

    new-instance v3, Lcom/google/android/location/fused/bp;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/fused/w;->g:Landroid/os/Handler;

    move-object/from16 v0, p5

    move-object/from16 v1, p8

    invoke-direct {v3, v0, v10, v4, v1}, Lcom/google/android/location/fused/bp;-><init>(Landroid/hardware/SensorManager;Lcom/google/h/a/b/b/z;Landroid/os/Handler;Lcom/google/android/gms/common/util/i;)V

    invoke-direct {v13, v3, v9}, Lcom/google/android/location/fused/a/p;-><init>(Lcom/google/android/location/fused/bp;Lcom/google/android/location/fused/a;)V

    new-instance v14, Lcom/google/android/location/fused/a/j;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/fused/w;->v:Lcom/google/android/location/fused/ac;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/fused/w;->c:Lcom/google/android/location/fused/bf;

    invoke-direct {v14, v11, v3, v4}, Lcom/google/android/location/fused/a/j;-><init>(Lcom/google/android/location/fused/bd;Lcom/google/android/location/fused/ac;Lcom/google/android/location/fused/bf;)V

    new-instance v9, Lcom/google/android/location/fused/a/i;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/fused/w;->v:Lcom/google/android/location/fused/ac;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/fused/w;->c:Lcom/google/android/location/fused/bf;

    invoke-direct {v9, v11, v3, v4}, Lcom/google/android/location/fused/a/i;-><init>(Lcom/google/android/location/fused/bd;Lcom/google/android/location/fused/ac;Lcom/google/android/location/fused/bf;)V

    new-instance v10, Lcom/google/android/location/fused/a/a;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/fused/w;->v:Lcom/google/android/location/fused/ac;

    invoke-direct {v10, v11, v3}, Lcom/google/android/location/fused/a/a;-><init>(Lcom/google/android/location/fused/bd;Lcom/google/android/location/fused/ac;)V

    new-instance v3, Lcom/google/android/location/fused/a/f;

    const-string v4, "alarm"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    invoke-static {}, Lcom/google/android/gms/common/util/j;->c()Lcom/google/android/gms/common/util/i;

    move-result-object v8

    move-object/from16 v4, p4

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/location/fused/a/f;-><init>(Lcom/google/android/location/fused/ar;Landroid/app/AlarmManager;Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/util/i;)V

    move-object v4, v15

    move-object v5, v2

    move-object v6, v12

    move-object v7, v13

    move-object v8, v14

    move-object v11, v3

    move-object/from16 v12, p5

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    invoke-direct/range {v4 .. v14}, Lcom/google/android/location/fused/ad;-><init>(Lcom/google/android/location/fused/a/e;Lcom/google/android/location/fused/a/k;Lcom/google/android/location/fused/a/p;Lcom/google/android/location/fused/a/j;Lcom/google/android/location/fused/a/i;Lcom/google/android/location/fused/a/a;Lcom/google/android/location/fused/a/f;Landroid/hardware/SensorManager;Landroid/content/Context;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/location/fused/w;->d:Lcom/google/android/location/fused/ad;

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/fused/w;->e:Lcom/google/android/gms/common/util/i;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/i;->b()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/location/fused/w;->a(J)V

    .line 228
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 230
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/location/fused/w;->a(Landroid/content/ContentResolver;)V

    .line 231
    const-string v3, "location_providers_allowed"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Lcom/google/android/location/fused/y;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/fused/w;->g:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6, v2}, Lcom/google/android/location/fused/y;-><init>(Lcom/google/android/location/fused/w;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 240
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/google/android/location/fused/az;->a(Lcom/google/android/location/fused/bb;)V

    .line 241
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/location/fused/aq;)V
    .locals 10

    .prologue
    .line 139
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    new-instance v4, Lcom/google/android/location/fused/ar;

    invoke-direct {v4, p1}, Lcom/google/android/location/fused/ar;-><init>(Landroid/content/Context;)V

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/SensorManager;

    new-instance v6, Lcom/google/android/location/fused/c;

    invoke-direct {v6}, Lcom/google/android/location/fused/c;-><init>()V

    new-instance v7, Lcom/google/android/location/fused/az;

    invoke-direct {v7, p1}, Lcom/google/android/location/fused/az;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/common/util/j;->c()Lcom/google/android/gms/common/util/i;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v9, p3

    invoke-direct/range {v0 .. v9}, Lcom/google/android/location/fused/w;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/location/LocationManager;Lcom/google/android/location/fused/ar;Landroid/hardware/SensorManager;Lcom/google/android/location/fused/c;Lcom/google/android/location/fused/az;Lcom/google/android/gms/common/util/i;Lcom/google/android/location/fused/aq;)V

    .line 149
    return-void
.end method

.method private a(Landroid/location/Location;Landroid/location/Location;)V
    .locals 4

    .prologue
    .line 372
    if-eqz p1, :cond_0

    .line 373
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 374
    const-string v1, "fused"

    invoke-virtual {v0, v1}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Lcom/google/android/location/fused/w;->l:Lcom/google/android/location/fused/ao;

    iget-object v1, v1, Lcom/google/android/location/fused/ao;->b:Landroid/location/Location;

    invoke-static {v1, v0}, Lcom/google/android/location/fused/w;->b(Landroid/location/Location;Landroid/location/Location;)V

    move-object p1, v0

    .line 378
    :cond_0
    if-eqz p2, :cond_1

    .line 379
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 380
    const-string v1, "fused"

    invoke-virtual {v0, v1}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 381
    iget-object v1, p0, Lcom/google/android/location/fused/w;->l:Lcom/google/android/location/fused/ao;

    invoke-virtual {v1}, Lcom/google/android/location/fused/ao;->a()Landroid/location/Location;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/location/fused/w;->b(Landroid/location/Location;Landroid/location/Location;)V

    move-object p2, v0

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/fused/w;->k:Lcom/google/android/location/fused/ao;

    iput-object p1, v0, Lcom/google/android/location/fused/ao;->b:Landroid/location/Location;

    iput-object p2, v0, Lcom/google/android/location/fused/ao;->c:Landroid/location/Location;

    iget-object v1, v0, Lcom/google/android/location/fused/ao;->a:Lcom/google/android/location/fused/c;

    invoke-static {}, Lcom/google/android/location/fused/c;->a()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/location/fused/ao;->d:J

    .line 388
    iget-object v0, p0, Lcom/google/android/location/fused/w;->b:Lcom/google/h/a/b/b/t;

    invoke-interface {v0}, Lcom/google/h/a/b/b/t;->c()V

    .line 389
    return-void
.end method

.method private static b(Landroid/location/Location;Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 687
    if-eqz p0, :cond_0

    .line 688
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 689
    const-string v1, "fused"

    invoke-virtual {v0, v1}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 690
    const-string v1, "noGPSLocation"

    invoke-static {p1, v1, v0}, Lcom/google/android/location/o/w;->a(Landroid/location/Location;Ljava/lang/String;Landroid/location/Location;)V

    .line 695
    :cond_0
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/android/location/fused/w;->j:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/fused/w;->j:Landroid/location/Location;

    .line 355
    iget-object v0, p0, Lcom/google/android/location/fused/w;->l:Lcom/google/android/location/fused/ao;

    iget-object v0, v0, Lcom/google/android/location/fused/ao;->b:Landroid/location/Location;

    iget-object v1, p0, Lcom/google/android/location/fused/w;->l:Lcom/google/android/location/fused/ao;

    invoke-virtual {v1}, Lcom/google/android/location/fused/ao;->a()Landroid/location/Location;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/fused/w;->a(Landroid/location/Location;Landroid/location/Location;)V

    .line 359
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Z)Landroid/location/Location;
    .locals 3

    .prologue
    .line 296
    const-string v0, "GCoreFlp"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    const-string v0, "getLastLocation() request in engine"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    :cond_0
    if-eqz p1, :cond_2

    .line 302
    iget-object v0, p0, Lcom/google/android/location/fused/w;->k:Lcom/google/android/location/fused/ao;

    invoke-virtual {v0}, Lcom/google/android/location/fused/ao;->a()Landroid/location/Location;

    move-result-object v0

    .line 307
    :goto_0
    if-nez v0, :cond_1

    .line 308
    const-string v1, "GCoreFlp"

    const-string v2, "No location to return for getLastLocation()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_1
    return-object v0

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/fused/w;->k:Lcom/google/android/location/fused/ao;

    iget-object v0, v0, Lcom/google/android/location/fused/ao;->b:Landroid/location/Location;

    goto :goto_0
.end method

.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 246
    iget-boolean v0, p0, Lcom/google/android/location/fused/w;->o:Z

    if-eqz v0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/fused/w;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/a/b;->a(Landroid/content/Context;)V

    .line 251
    iput-boolean v3, p0, Lcom/google/android/location/fused/w;->o:Z

    .line 252
    invoke-static {p0}, Lcom/google/android/location/fused/NlpLocationReceiverService;->a(Lcom/google/android/location/fused/w;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/location/fused/w;->h:Landroid/content/Context;

    const-class v2, Lcom/google/android/location/fused/NlpLocationReceiverService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/google/android/location/fused/w;->h:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "GCoreFlp"

    const-string v1, "Unable to start the NLPLocationReceiverService"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/fused/w;->d:Lcom/google/android/location/fused/ad;

    invoke-virtual {v0}, Lcom/google/android/location/fused/ad;->b()V

    .line 254
    const-string v0, "GCoreFlp"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    const-string v0, "Engine enabled (%s)"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/location/fused/w;->f:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final a(J)V
    .locals 3

    .prologue
    .line 587
    iget-object v0, p0, Lcom/google/android/location/fused/w;->d:Lcom/google/android/location/fused/ad;

    iget-object v1, p0, Lcom/google/android/location/fused/w;->b:Lcom/google/h/a/b/b/t;

    invoke-interface {v1, p1, p2}, Lcom/google/h/a/b/b/t;->a(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/fused/ad;->a(I)V

    .line 588
    return-void
.end method

.method final a(Landroid/content/ContentResolver;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 781
    const-string v1, "gps"

    invoke-static {p1, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "network"

    invoke-static {p1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "network_location_opt_in"

    const/4 v3, -0x1

    invoke-static {p1, v2, v3}, Lcom/google/android/gsf/d;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_3

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/location/fused/w;->q:Z

    iput-boolean v0, p0, Lcom/google/android/location/fused/w;->p:Z

    iget-object v0, p0, Lcom/google/android/location/fused/w;->d:Lcom/google/android/location/fused/ad;

    iget-boolean v1, p0, Lcom/google/android/location/fused/w;->q:Z

    iget-boolean v2, p0, Lcom/google/android/location/fused/w;->p:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/location/fused/ad;->b(ZZ)V

    iget-boolean v0, p0, Lcom/google/android/location/fused/w;->q:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/location/fused/w;->g()V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/location/fused/w;->p:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/fused/w;->l:Lcom/google/android/location/fused/ao;

    iget-object v0, v0, Lcom/google/android/location/fused/ao;->b:Landroid/location/Location;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/fused/w;->l:Lcom/google/android/location/fused/ao;

    iput-object v4, v0, Lcom/google/android/location/fused/ao;->b:Landroid/location/Location;

    iput-object v4, v0, Lcom/google/android/location/fused/ao;->c:Landroid/location/Location;

    iget-object v0, p0, Lcom/google/android/location/fused/w;->j:Landroid/location/Location;

    invoke-direct {p0, v0, v4}, Lcom/google/android/location/fused/w;->a(Landroid/location/Location;Landroid/location/Location;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/location/fused/w;->c:Lcom/google/android/location/fused/bf;

    iget-boolean v1, p0, Lcom/google/android/location/fused/w;->p:Z

    invoke-virtual {v0, v1}, Lcom/google/android/location/fused/bf;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/location/fused/w;->f()V

    .line 785
    :cond_2
    return-void

    .line 781
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/location/Location;I)V
    .locals 3

    .prologue
    .line 593
    packed-switch p2, :pswitch_data_0

    .line 599
    const-string v0, "GCoreFlp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown injection type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :goto_0
    return-void

    .line 595
    :pswitch_0
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 596
    sget-object v0, Lcom/google/h/a/b/a/c;->d:Lcom/google/h/a/b/a/c;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/fused/w;->a(Landroid/location/Location;Lcom/google/h/a/b/a/c;)V

    goto :goto_0

    .line 593
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method final a(Landroid/location/Location;Lcom/google/h/a/b/a/c;)V
    .locals 20

    .prologue
    .line 445
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/location/fused/w;->o:Z

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/fused/w;->i:Lcom/google/android/location/fused/aq;

    if-nez v4, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    .line 452
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    .line 454
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/fused/w;->a:Lcom/google/android/location/fused/c;

    invoke-static/range {p1 .. p1}, Lcom/google/android/location/fused/c;->a(Landroid/location/Location;)J

    move-result-wide v18

    .line 455
    const-string v5, "network"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 456
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/fused/w;->l:Lcom/google/android/location/fused/ao;

    iget-object v4, v4, Lcom/google/android/location/fused/ao;->b:Landroid/location/Location;

    .line 457
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    cmp-long v4, v4, v8

    if-nez v4, :cond_2

    .line 460
    const-string v4, "GCoreFlp"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 461
    const-string v4, "Dropping duplicate NLP location"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 465
    :cond_2
    const-string v4, "cell"

    invoke-static/range {p1 .. p1}, Lcom/google/android/location/o/w;->c(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 467
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/fused/w;->v:Lcom/google/android/location/fused/ac;

    invoke-virtual {v4}, Lcom/google/android/location/fused/ac;->c()V

    .line 472
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/location/fused/w;->p:Z

    if-nez v4, :cond_4

    .line 473
    const-string v4, "GCoreFlp"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 474
    const-string v4, "Dropping NLP location because NLP provider disabled"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 469
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/fused/w;->v:Lcom/google/android/location/fused/ac;

    invoke-virtual {v4}, Lcom/google/android/location/fused/ac;->b()V

    goto :goto_1

    .line 479
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/fused/w;->l:Lcom/google/android/location/fused/ao;

    new-instance v5, Landroid/location/Location;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v4, v5}, Lcom/google/android/location/fused/ao;->a(Landroid/location/Location;)V

    .line 480
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/location/fused/w;->m:J

    .line 481
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/fused/w;->a:Lcom/google/android/location/fused/c;

    invoke-static/range {p1 .. p1}, Lcom/google/android/location/fused/c;->a(Landroid/location/Location;)J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_c

    const-string v5, "levelId"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "levelNumberE3"

    const v11, 0x7fffffff

    invoke-virtual {v4, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-eqz v5, :cond_c

    const v4, 0x7fffffff

    if-eq v10, v4, :cond_b

    new-instance v4, Lcom/google/android/location/fused/al;

    invoke-direct {v4, v5, v10, v8, v9}, Lcom/google/android/location/fused/al;-><init>(Ljava/lang/String;IJ)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/fused/w;->r:Lcom/google/android/location/fused/al;

    invoke-static {v4, v5}, Lcom/google/c/a/ad;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/location/fused/w;->s:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/android/location/fused/w;->s:I

    :goto_3
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/location/fused/w;->r:Lcom/google/android/location/fused/al;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/fused/w;->t:Lcom/google/android/location/fused/al;

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/location/fused/w;->s:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/fused/w;->t:Lcom/google/android/location/fused/al;

    iget-wide v4, v4, Lcom/google/android/location/fused/al;->d:J

    sub-long v4, v8, v4

    const-wide v8, 0x4a817c800L

    cmp-long v4, v4, v8

    if-lez v4, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/fused/w;->r:Lcom/google/android/location/fused/al;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/location/fused/w;->t:Lcom/google/android/location/fused/al;

    .line 484
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/fused/w;->c:Lcom/google/android/location/fused/bf;

    iget-object v5, v4, Lcom/google/android/location/fused/bf;->a:Ljava/lang/Object;

    monitor-enter v5

    const/4 v8, 0x0

    :try_start_0
    iput-boolean v8, v4, Lcom/google/android/location/fused/bf;->b:Z

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide/from16 v16, v6

    .line 522
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/fused/w;->t:Lcom/google/android/location/fused/al;

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/fused/w;->t:Lcom/google/android/location/fused/al;

    iget-wide v4, v4, Lcom/google/android/location/fused/al;->d:J

    sub-long v4, v18, v4

    const-wide v6, 0x9502f9000L

    cmp-long v4, v4, v6

    if-lez v4, :cond_7

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/location/fused/w;->t:Lcom/google/android/location/fused/al;

    .line 524
    :cond_7
    if-nez p1, :cond_13

    const/4 v4, 0x0

    .line 525
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/location/fused/w;->b:Lcom/google/h/a/b/b/t;

    move-wide/from16 v0, v18

    invoke-interface {v5, v0, v1, v4}, Lcom/google/h/a/b/b/t;->a(JLcom/google/h/a/b/a/b;)V

    .line 526
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/android/location/fused/w;->a(J)V

    .line 527
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/fused/w;->b:Lcom/google/h/a/b/b/t;

    invoke-interface {v4}, Lcom/google/h/a/b/b/t;->a()Lcom/google/h/a/b/a/b;

    move-result-object v6

    .line 528
    const-string v4, "GCoreFlp"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 529
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Filtered position: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 534
    :cond_8
    if-eqz v6, :cond_1a

    iget-object v4, v6, Lcom/google/h/a/b/a/b;->b:Lcom/google/h/a/b/a/c;

    sget-object v5, Lcom/google/h/a/b/a/c;->b:Lcom/google/h/a/b/a/c;

    if-ne v4, v5, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/fused/w;->t:Lcom/google/android/location/fused/al;

    .line 537
    :goto_6
    const-string v7, "fused"

    if-nez v6, :cond_1b

    const/4 v4, 0x0

    move-object v5, v4

    .line 544
    :goto_7
    if-eqz v5, :cond_a

    .line 547
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/fused/w;->l:Lcom/google/android/location/fused/ao;

    iget-object v4, v4, Lcom/google/android/location/fused/ao;->b:Landroid/location/Location;

    invoke-static {v4, v5}, Lcom/google/android/location/fused/w;->b(Landroid/location/Location;Landroid/location/Location;)V

    .line 550
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/location/fused/w;->m:J

    sub-long v6, v18, v6

    .line 551
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/fused/w;->l:Lcom/google/android/location/fused/ao;

    if-eqz v4, :cond_9

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    sget-object v4, Lcom/google/android/location/reporting/service/y;->n:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v4}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-gtz v4, :cond_9

    .line 553
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/fused/w;->l:Lcom/google/android/location/fused/ao;

    iget-object v4, v4, Lcom/google/android/location/fused/ao;->b:Landroid/location/Location;

    if-eqz v4, :cond_9

    const-string v6, "dbgProtoBuf"

    invoke-static {v4, v6}, Lcom/google/android/location/o/w;->c(Landroid/location/Location;Ljava/lang/String;)[B

    move-result-object v4

    const-string v6, "dbgProtoBuf"

    invoke-static {v5, v6, v4}, Lcom/google/android/location/o/w;->a(Landroid/location/Location;Ljava/lang/String;[B)V

    .line 557
    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/google/android/location/o/w;->e(Landroid/location/Location;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 558
    invoke-static {v5}, Lcom/google/android/location/o/w;->f(Landroid/location/Location;)V

    .line 561
    :cond_a
    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/fused/w;->w:[Landroid/location/Location;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/fused/w;->i:Lcom/google/android/location/fused/aq;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/fused/w;->w:[Landroid/location/Location;

    invoke-interface {v4, v6}, Lcom/google/android/location/fused/aq;->a([Landroid/location/Location;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/fused/w;->d:Lcom/google/android/location/fused/ad;

    invoke-virtual {v4, v5}, Lcom/google/android/location/fused/ad;->a(Landroid/location/Location;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/fused/w;->k:Lcom/google/android/location/fused/ao;

    invoke-virtual {v4, v5}, Lcom/google/android/location/fused/ao;->a(Landroid/location/Location;)V

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/location/fused/w;->n:J

    goto/16 :goto_0

    .line 481
    :cond_b
    new-instance v4, Lcom/google/android/location/fused/al;

    invoke-direct {v4, v5, v8, v9}, Lcom/google/android/location/fused/al;-><init>(Ljava/lang/String;J)V

    goto/16 :goto_2

    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_d
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/android/location/fused/w;->s:I

    goto/16 :goto_3

    .line 484
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 485
    :cond_e
    const-string v5, "gps"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 486
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/fused/w;->j:Landroid/location/Location;

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/fused/w;->j:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_f

    .line 489
    const-string v4, "GCoreFlp"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 490
    const-string v4, "Dropping duplicate GPS location"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 494
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/fused/w;->v:Lcom/google/android/location/fused/ac;

    invoke-virtual {v4}, Lcom/google/android/location/fused/ac;->a()V

    .line 495
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/location/fused/w;->q:Z

    if-nez v4, :cond_10

    .line 496
    const-string v4, "GCoreFlp"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 497
    const-string v4, "Dropping GPS location because GPS provider disabled"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 502
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/fused/w;->e:Lcom/google/android/gms/common/util/i;

    invoke-interface {v4}, Lcom/google/android/gms/common/util/i;->a()J

    move-result-wide v4

    .line 503
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/fused/w;->u:Lcom/google/android/location/fused/ai;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/google/android/location/fused/ai;->a(Landroid/location/Location;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 506
    new-instance v6, Landroid/location/Location;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/google/android/location/fused/w;->j:Landroid/location/Location;

    move-wide/from16 v16, v4

    goto/16 :goto_4

    .line 508
    :cond_11
    const-string v5, "fused"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 510
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/fused/w;->v:Lcom/google/android/location/fused/ac;

    invoke-virtual {v4}, Lcom/google/android/location/fused/ac;->d()V

    .line 514
    :cond_12
    const-string v4, "GCoreFlp"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 515
    const-string v4, "Dropping location from unknown provider"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 524
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    const-wide v6, 0x416312d000000000L    # 1.0E7

    mul-double/2addr v4, v6

    double-to-int v5, v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    const-wide v8, 0x416312d000000000L    # 1.0E7

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/4 v10, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearing()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearing()F

    move-result v4

    float-to-int v10, v4

    :cond_14
    const-wide/16 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v12

    :cond_15
    const/4 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v11

    :cond_16
    if-nez p2, :cond_22

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    const-string v8, "gps"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    sget-object v14, Lcom/google/h/a/b/a/c;->a:Lcom/google/h/a/b/a/c;

    :cond_17
    :goto_8
    new-instance v4, Lcom/google/h/a/b/a/b;

    const-string v8, ""

    const-string v9, ""

    invoke-direct/range {v4 .. v14}, Lcom/google/h/a/b/a/b;-><init>(IIILjava/lang/String;Ljava/lang/String;IFDLcom/google/h/a/b/a/c;)V

    goto/16 :goto_5

    :cond_18
    const-string v8, "network"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    sget-object v14, Lcom/google/h/a/b/a/c;->b:Lcom/google/h/a/b/a/c;

    const-string v4, "cell"

    invoke-static/range {p1 .. p1}, Lcom/google/android/location/o/w;->c(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    sget-object v14, Lcom/google/h/a/b/a/c;->c:Lcom/google/h/a/b/a/c;

    goto :goto_8

    :cond_19
    sget-object v14, Lcom/google/h/a/b/a/c;->e:Lcom/google/h/a/b/a/c;

    goto :goto_8

    .line 534
    :cond_1a
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 537
    :cond_1b
    new-instance v5, Landroid/location/Location;

    invoke-direct {v5, v7}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iget v7, v6, Lcom/google/h/a/b/a/b;->e:I

    int-to-float v7, v7

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v7, v8

    invoke-virtual {v5, v7}, Landroid/location/Location;->setAccuracy(F)V

    iget v7, v6, Lcom/google/h/a/b/a/b;->j:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1c

    iget v7, v6, Lcom/google/h/a/b/a/b;->j:I

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Landroid/location/Location;->setBearing(F)V

    :cond_1c
    iget v7, v6, Lcom/google/h/a/b/a/b;->f:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_1d

    iget v7, v6, Lcom/google/h/a/b/a/b;->f:F

    invoke-virtual {v5, v7}, Landroid/location/Location;->setSpeed(F)V

    :cond_1d
    iget-wide v8, v6, Lcom/google/h/a/b/a/b;->g:D

    const-wide/16 v10, 0x0

    cmpl-double v7, v8, v10

    if-eqz v7, :cond_1e

    iget-wide v8, v6, Lcom/google/h/a/b/a/b;->g:D

    invoke-virtual {v5, v8, v9}, Landroid/location/Location;->setAltitude(D)V

    :cond_1e
    iget v7, v6, Lcom/google/h/a/b/a/b;->c:I

    int-to-double v8, v7

    const-wide v10, 0x416312d000000000L    # 1.0E7

    div-double/2addr v8, v10

    invoke-virtual {v5, v8, v9}, Landroid/location/Location;->setLatitude(D)V

    iget v7, v6, Lcom/google/h/a/b/a/b;->d:I

    int-to-double v8, v7

    const-wide v10, 0x416312d000000000L    # 1.0E7

    div-double/2addr v8, v10

    invoke-virtual {v5, v8, v9}, Landroid/location/Location;->setLongitude(D)V

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Landroid/location/Location;->setTime(J)V

    const/16 v7, 0x11

    invoke-static {v7}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v7

    if-eqz v7, :cond_1f

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    :cond_1f
    if-eqz v4, :cond_21

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "levelId"

    iget-object v9, v4, Lcom/google/android/location/fused/al;->a:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v8, v4, Lcom/google/android/location/fused/al;->c:Z

    if-eqz v8, :cond_20

    const-string v8, "levelNumberE3"

    iget v4, v4, Lcom/google/android/location/fused/al;->b:I

    invoke-virtual {v7, v8, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_20
    invoke-virtual {v5, v7}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    :cond_21
    const/4 v4, 0x0

    sget-object v7, Lcom/google/android/location/fused/an;->a:[I

    iget-object v6, v6, Lcom/google/h/a/b/a/b;->b:Lcom/google/h/a/b/a/c;

    invoke-virtual {v6}, Lcom/google/h/a/b/a/c;->ordinal()I

    move-result v6

    aget v6, v7, v6

    packed-switch v6, :pswitch_data_0

    :goto_9
    invoke-static {v5, v4}, Lcom/google/android/location/o/w;->e(Landroid/location/Location;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_0
    const-string v4, "gps"

    goto :goto_9

    :pswitch_1
    const-string v4, "wifi"

    goto :goto_9

    :pswitch_2
    const-string v4, "cell"

    goto :goto_9

    :cond_22
    move-object/from16 v14, p2

    goto/16 :goto_8

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 650
    iget-object v0, p0, Lcom/google/android/location/fused/w;->k:Lcom/google/android/location/fused/ao;

    iget-object v0, v0, Lcom/google/android/location/fused/ao;->b:Landroid/location/Location;

    .line 651
    iget-object v1, p0, Lcom/google/android/location/fused/w;->k:Lcom/google/android/location/fused/ao;

    invoke-virtual {v1}, Lcom/google/android/location/fused/ao;->a()Landroid/location/Location;

    move-result-object v1

    .line 652
    iget-object v2, p0, Lcom/google/android/location/fused/w;->l:Lcom/google/android/location/fused/ao;

    iget-object v2, v2, Lcom/google/android/location/fused/ao;->b:Landroid/location/Location;

    .line 653
    iget-object v3, p0, Lcom/google/android/location/fused/w;->j:Landroid/location/Location;

    .line 654
    iget-object v4, p0, Lcom/google/android/location/fused/w;->l:Lcom/google/android/location/fused/ao;

    invoke-virtual {v4}, Lcom/google/android/location/fused/ao;->a()Landroid/location/Location;

    move-result-object v4

    .line 656
    iget-object v5, p0, Lcom/google/android/location/fused/w;->d:Lcom/google/android/location/fused/ad;

    invoke-virtual {v5, p2}, Lcom/google/android/location/fused/ad;->a(Ljava/io/PrintWriter;)V

    .line 657
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 659
    iget-boolean v5, p0, Lcom/google/android/location/fused/w;->o:Z

    if-eqz v5, :cond_0

    .line 660
    const-string v5, "Fused Location Provider Is Enabled"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 665
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Fused "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Gps "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Network "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Fused Coarse Interval "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Network Coarse Interval "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 670
    return-void

    .line 662
    :cond_0
    const-string v5, "Fused Location Provider Is Disabled"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/Collection;Z)V
    .locals 3

    .prologue
    .line 279
    const-string v0, "GCoreFlp"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    const-string v0, "Location requests set in engine: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/fused/w;->d:Lcom/google/android/location/fused/ad;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/fused/ad;->a(Ljava/lang/Iterable;Z)V

    .line 284
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 262
    iget-boolean v0, p0, Lcom/google/android/location/fused/w;->o:Z

    if-nez v0, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iput-boolean v3, p0, Lcom/google/android/location/fused/w;->o:Z

    .line 267
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/location/fused/NlpLocationReceiverService;->a(Lcom/google/android/location/fused/w;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/location/fused/w;->h:Landroid/content/Context;

    const-class v2, Lcom/google/android/location/fused/NlpLocationReceiverService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/google/android/location/fused/w;->h:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 268
    iget-object v0, p0, Lcom/google/android/location/fused/w;->d:Lcom/google/android/location/fused/ad;

    invoke-virtual {v0}, Lcom/google/android/location/fused/ad;->c()V

    .line 269
    const-string v0, "GCoreFlp"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    const-string v0, "Engine disabled (%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/location/fused/w;->f:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 816
    if-nez p1, :cond_0

    .line 817
    invoke-direct {p0}, Lcom/google/android/location/fused/w;->g()V

    .line 819
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 321
    iget-object v0, p0, Lcom/google/android/location/fused/w;->e:Lcom/google/android/gms/common/util/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/i;->b()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/android/location/fused/w;->n:J

    sub-long/2addr v2, v4

    .line 325
    iget-object v0, p0, Lcom/google/android/location/fused/w;->k:Lcom/google/android/location/fused/ao;

    if-eqz v0, :cond_0

    const-wide v4, 0x22ecb25c00L

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    :cond_0
    move v0, v1

    .line 327
    :goto_0
    iget-object v2, p0, Lcom/google/android/location/fused/w;->d:Lcom/google/android/location/fused/ad;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/location/fused/ad;->a(ZZ)V

    .line 329
    return-void

    .line 325
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 338
    iget-object v0, p0, Lcom/google/android/location/fused/w;->d:Lcom/google/android/location/fused/ad;

    invoke-virtual {v0, v1, v1}, Lcom/google/android/location/fused/ad;->a(ZZ)V

    .line 341
    return-void
.end method

.method public final e()Lcom/google/android/location/o/k;
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/google/android/location/fused/w;->v:Lcom/google/android/location/fused/ac;

    return-object v0
.end method

.method final f()V
    .locals 2

    .prologue
    .line 806
    iget-object v0, p0, Lcom/google/android/location/fused/w;->i:Lcom/google/android/location/fused/aq;

    iget-object v1, p0, Lcom/google/android/location/fused/w;->c:Lcom/google/android/location/fused/bf;

    invoke-virtual {v1}, Lcom/google/android/location/fused/bf;->b()Lcom/google/android/gms/location/LocationStatus;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/location/fused/aq;->a(Lcom/google/android/gms/location/LocationStatus;)V

    .line 807
    return-void
.end method
