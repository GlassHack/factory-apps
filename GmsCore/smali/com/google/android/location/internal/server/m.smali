.class final Lcom/google/android/location/internal/server/m;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/internal/g;
.implements Lcom/google/android/location/os/real/ax;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/google/android/location/internal/server/GoogleLocationService;

.field private final c:Landroid/location/LocationManager;

.field private d:Z

.field private e:Z

.field private f:Z

.field private final g:Ljava/lang/Object;

.field private h:Lcom/google/android/location/os/e;

.field private i:Ljava/lang/Boolean;

.field private j:Z

.field private k:Lcom/google/android/location/os/real/aw;

.field private l:I

.field private m:I

.field private n:Lcom/google/android/location/p/j;

.field private final o:Lcom/google/android/location/internal/server/i;

.field private final p:Lcom/google/android/location/internal/server/b;

.field private q:Lcom/google/android/location/os/real/av;

.field private r:Lcom/google/android/location/internal/server/l;

.field private s:Lcom/google/android/location/internal/server/h;

.field private final t:I

.field private u:Landroid/database/ContentObserver;

.field private final v:Lcom/google/android/location/c/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v0, Lcom/google/android/location/j/a;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "gms"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NlpServiceThread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/internal/server/m;->a:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "gmm"

    goto :goto_0
.end method

.method constructor <init>(Lcom/google/android/location/internal/server/GoogleLocationService;Landroid/os/Looper;Lcom/google/android/location/b/af;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 146
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 81
    iput-boolean v1, p0, Lcom/google/android/location/internal/server/m;->d:Z

    .line 84
    iput-boolean v1, p0, Lcom/google/android/location/internal/server/m;->e:Z

    .line 87
    iput-boolean v1, p0, Lcom/google/android/location/internal/server/m;->f:Z

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/internal/server/m;->g:Ljava/lang/Object;

    .line 103
    iput-boolean v1, p0, Lcom/google/android/location/internal/server/m;->j:Z

    .line 112
    iput v2, p0, Lcom/google/android/location/internal/server/m;->l:I

    .line 115
    iput v2, p0, Lcom/google/android/location/internal/server/m;->m:I

    .line 118
    iput-object v3, p0, Lcom/google/android/location/internal/server/m;->n:Lcom/google/android/location/p/j;

    .line 127
    iput-object v3, p0, Lcom/google/android/location/internal/server/m;->q:Lcom/google/android/location/os/real/av;

    .line 129
    new-instance v0, Lcom/google/android/location/internal/server/l;

    invoke-direct {v0}, Lcom/google/android/location/internal/server/l;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/internal/server/m;->r:Lcom/google/android/location/internal/server/l;

    .line 147
    iput-object p1, p0, Lcom/google/android/location/internal/server/m;->b:Lcom/google/android/location/internal/server/GoogleLocationService;

    .line 148
    const-string v0, "location"

    invoke-virtual {p1, v0}, Lcom/google/android/location/internal/server/GoogleLocationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/google/android/location/internal/server/m;->c:Landroid/location/LocationManager;

    .line 151
    invoke-static {p1}, Lcom/google/android/location/internal/server/m;->a(Landroid/content/Context;)Lcom/google/android/location/d/f;

    move-result-object v0

    iget v0, v0, Lcom/google/android/location/d/f;->d:I

    iput v0, p0, Lcom/google/android/location/internal/server/m;->t:I

    .line 152
    new-instance v0, Lcom/google/android/location/p/a;

    invoke-virtual {p1}, Lcom/google/android/location/internal/server/GoogleLocationService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/location/p/a;-><init>(Landroid/content/pm/PackageManager;)V

    .line 153
    new-instance v1, Lcom/google/android/location/internal/server/i;

    iget v2, p0, Lcom/google/android/location/internal/server/m;->t:I

    invoke-direct {v1, v2}, Lcom/google/android/location/internal/server/i;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/location/internal/server/m;->o:Lcom/google/android/location/internal/server/i;

    .line 154
    new-instance v1, Lcom/google/android/location/internal/server/b;

    iget v2, p0, Lcom/google/android/location/internal/server/m;->t:I

    invoke-direct {v1, v2, p3, v0}, Lcom/google/android/location/internal/server/b;-><init>(ILcom/google/android/location/b/af;Lcom/google/android/location/p/a;)V

    iput-object v1, p0, Lcom/google/android/location/internal/server/m;->p:Lcom/google/android/location/internal/server/b;

    .line 156
    new-instance v0, Lcom/google/android/location/internal/server/n;

    invoke-direct {v0, p0, p0}, Lcom/google/android/location/internal/server/n;-><init>(Lcom/google/android/location/internal/server/m;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/location/internal/server/m;->u:Landroid/database/ContentObserver;

    .line 157
    invoke-static {p1}, Lcom/google/android/location/c/a;->a(Landroid/content/Context;)Lcom/google/android/location/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/internal/server/m;->v:Lcom/google/android/location/c/a;

    .line 158
    new-instance v0, Lcom/google/android/location/internal/server/h;

    iget v1, p0, Lcom/google/android/location/internal/server/m;->t:I

    invoke-direct {v0, v1}, Lcom/google/android/location/internal/server/h;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/location/internal/server/m;->s:Lcom/google/android/location/internal/server/h;

    .line 159
    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/google/android/location/d/f;
    .locals 1

    .prologue
    .line 266
    sget-boolean v0, Lcom/google/android/location/j/a;->f:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/location/d/g;->e:Lcom/google/android/location/d/g;

    :goto_0
    invoke-static {v0, p0}, Lcom/google/android/location/d/f;->a(Lcom/google/android/location/d/g;Landroid/content/Context;)Lcom/google/android/location/d/f;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/location/d/g;->b:Lcom/google/android/location/d/g;

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/location/internal/server/m;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/location/internal/server/m;->g()V

    return-void
.end method

.method private a(Z)V
    .locals 7

    .prologue
    .line 629
    iget-object v0, p0, Lcom/google/android/location/internal/server/m;->k:Lcom/google/android/location/os/real/aw;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/google/android/location/internal/server/m;->k:Lcom/google/android/location/os/real/aw;

    iget-object v1, p0, Lcom/google/android/location/internal/server/m;->p:Lcom/google/android/location/internal/server/b;

    iget-object v1, v1, Lcom/google/android/location/internal/server/b;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/location/internal/server/m;->p:Lcom/google/android/location/internal/server/b;

    iget v2, v2, Lcom/google/android/location/internal/server/b;->e:I

    iget-object v3, p0, Lcom/google/android/location/internal/server/m;->p:Lcom/google/android/location/internal/server/b;

    iget-boolean v4, v3, Lcom/google/android/location/internal/server/b;->f:Z

    iget-object v3, p0, Lcom/google/android/location/internal/server/m;->p:Lcom/google/android/location/internal/server/b;

    iget-boolean v5, v3, Lcom/google/android/location/internal/server/b;->g:Z

    iget-object v3, p0, Lcom/google/android/location/internal/server/m;->p:Lcom/google/android/location/internal/server/b;

    iget-object v6, v3, Lcom/google/android/location/internal/server/b;->d:Lcom/google/android/location/p/j;

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/location/os/real/aw;->a(IIZZZLcom/google/android/location/p/j;)V

    .line 636
    :cond_0
    return-void
.end method

.method private b(Z)V
    .locals 12

    .prologue
    .line 647
    iget-object v0, p0, Lcom/google/android/location/internal/server/m;->o:Lcom/google/android/location/internal/server/i;

    invoke-virtual {v0}, Lcom/google/android/location/internal/server/i;->a()I

    move-result v1

    .line 648
    iget-object v0, p0, Lcom/google/android/location/internal/server/m;->o:Lcom/google/android/location/internal/server/i;

    invoke-virtual {v0}, Lcom/google/android/location/internal/server/i;->b()I

    move-result v2

    .line 649
    iget-object v0, p0, Lcom/google/android/location/internal/server/m;->o:Lcom/google/android/location/internal/server/i;

    invoke-virtual {v0}, Lcom/google/android/location/internal/server/i;->c()I

    move-result v3

    .line 650
    iget-object v0, p0, Lcom/google/android/location/internal/server/m;->o:Lcom/google/android/location/internal/server/i;

    invoke-virtual {v0}, Lcom/google/android/location/internal/server/i;->d()Lcom/google/android/location/p/j;

    move-result-object v5

    .line 651
    iget-object v0, p0, Lcom/google/android/location/internal/server/m;->k:Lcom/google/android/location/os/real/aw;

    if-eqz v0, :cond_1

    .line 652
    if-eqz v5, :cond_2

    iget-object v0, p0, Lcom/google/android/location/internal/server/m;->n:Lcom/google/android/location/p/j;

    invoke-virtual {v5, v0}, Lcom/google/android/location/p/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 655
    :goto_0
    if-nez p1, :cond_0

    iget v4, p0, Lcom/google/android/location/internal/server/m;->l:I

    if-ne v1, v4, :cond_0

    iget v4, p0, Lcom/google/android/location/internal/server/m;->m:I

    if-ne v2, v4, :cond_0

    if-nez v0, :cond_1

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/internal/server/m;->k:Lcom/google/android/location/os/real/aw;

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/location/os/real/aw;->a(IIIZLcom/google/android/location/p/j;)V

    .line 663
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/internal/server/m;->r:Lcom/google/android/location/internal/server/l;

    iget v3, p0, Lcom/google/android/location/internal/server/m;->l:I

    iget v4, p0, Lcom/google/android/location/internal/server/m;->m:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, v0, Lcom/google/android/location/internal/server/l;->c:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_4

    iput-wide v6, v0, Lcom/google/android/location/internal/server/l;->c:J

    .line 664
    :goto_1
    iput v1, p0, Lcom/google/android/location/internal/server/m;->l:I

    .line 665
    iput v2, p0, Lcom/google/android/location/internal/server/m;->m:I

    .line 666
    iput-object v5, p0, Lcom/google/android/location/internal/server/m;->n:Lcom/google/android/location/p/j;

    .line 667
    return-void

    .line 652
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/internal/server/m;->n:Lcom/google/android/location/p/j;

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 663
    :cond_4
    iget-wide v8, v0, Lcom/google/android/location/internal/server/l;->c:J

    sub-long v8, v6, v8

    iput-wide v6, v0, Lcom/google/android/location/internal/server/l;->c:J

    iget-object v6, v0, Lcom/google/android/location/internal/server/l;->a:Ljava/util/Map;

    invoke-static {v6, v3, v8, v9}, Lcom/google/android/location/internal/server/l;->a(Ljava/util/Map;IJ)V

    iget-object v0, v0, Lcom/google/android/location/internal/server/l;->b:Ljava/util/Map;

    invoke-static {v0, v4, v8, v9}, Lcom/google/android/location/internal/server/l;->a(Ljava/util/Map;IJ)V

    goto :goto_1
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/google/android/location/internal/server/m;->a:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 232
    sget-object v0, Lcom/google/android/location/d/g;->a:Lcom/google/android/location/d/g;

    iget-object v2, p0, Lcom/google/android/location/internal/server/m;->b:Lcom/google/android/location/internal/server/GoogleLocationService;

    invoke-static {v0, v2}, Lcom/google/android/location/d/f;->a(Lcom/google/android/location/d/g;Landroid/content/Context;)Lcom/google/android/location/d/f;

    move-result-object v0

    .line 233
    iget-object v2, p0, Lcom/google/android/location/internal/server/m;->b:Lcom/google/android/location/internal/server/GoogleLocationService;

    invoke-static {v2}, Lcom/google/android/location/internal/server/m;->a(Landroid/content/Context;)Lcom/google/android/location/d/f;

    move-result-object v2

    .line 234
    iget v3, v0, Lcom/google/android/location/d/f;->d:I

    iget v4, v2, Lcom/google/android/location/d/f;->d:I

    if-lt v3, v4, :cond_3

    .line 236
    :goto_0
    if-ne v0, v2, :cond_4

    move v0, v1

    .line 237
    :goto_1
    if-eqz v0, :cond_5

    .line 238
    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/google/android/location/internal/server/m;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "This NLP should run continuously. intent is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/google/android/location/d/f;->e:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_0
    iget-object v3, p0, Lcom/google/android/location/internal/server/m;->b:Lcom/google/android/location/internal/server/GoogleLocationService;

    iget-object v2, v2, Lcom/google/android/location/d/f;->e:Landroid/content/Intent;

    invoke-virtual {v3, v2}, Lcom/google/android/location/internal/server/GoogleLocationService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 240
    iget-object v2, p0, Lcom/google/android/location/internal/server/m;->b:Lcom/google/android/location/internal/server/GoogleLocationService;

    invoke-virtual {v2}, Lcom/google/android/location/internal/server/GoogleLocationService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 244
    sget-object v3, Lcom/google/android/gsf/d;->a:Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/android/location/internal/server/m;->u:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 246
    const-string v3, "location_providers_allowed"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/location/internal/server/m;->u:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 257
    :goto_2
    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/location/internal/server/m;->j:Z

    if-nez v0, :cond_2

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/internal/server/m;->b:Lcom/google/android/location/internal/server/GoogleLocationService;

    invoke-virtual {v0}, Lcom/google/android/location/internal/server/GoogleLocationService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/internal/server/m;->u:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 260
    :cond_2
    return-void

    :cond_3
    move-object v0, v2

    .line 234
    goto :goto_0

    .line 236
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 250
    :cond_5
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/google/android/location/internal/server/m;->a:Ljava/lang/String;

    const-string v2, "This NLP version is older than the platforn NLP version, stopping service."

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/internal/server/m;->b:Lcom/google/android/location/internal/server/GoogleLocationService;

    invoke-virtual {v1}, Lcom/google/android/location/internal/server/GoogleLocationService;->a()V

    goto :goto_2
.end method

.method private g()V
    .locals 10

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 283
    iget-boolean v6, p0, Lcom/google/android/location/internal/server/m;->j:Z

    .line 294
    if-eqz v6, :cond_12

    iget-object v0, p0, Lcom/google/android/location/internal/server/m;->b:Lcom/google/android/location/internal/server/GoogleLocationService;

    iget-object v1, p0, Lcom/google/android/location/internal/server/m;->c:Landroid/location/LocationManager;

    const-string v4, "network"

    invoke-virtual {v1, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "network_location_opt_in"

    invoke-static {v0, v4, v5}, Lcom/google/android/gsf/d;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v2, v0, :cond_10

    move v0, v2

    :goto_0
    if-eqz v1, :cond_11

    if-eqz v0, :cond_11

    move v0, v2

    :goto_1
    if-eqz v0, :cond_12

    move v1, v2

    .line 297
    :goto_2
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/location/internal/server/m;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "shouldBeRunning="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " shouldBeEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " enable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/google/android/location/internal/server/m;->d:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_0
    iget-object v4, p0, Lcom/google/android/location/internal/server/m;->g:Ljava/lang/Object;

    monitor-enter v4

    .line 303
    if-eqz v6, :cond_1e

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/internal/server/m;->k:Lcom/google/android/location/os/real/aw;

    if-nez v0, :cond_1e

    move v0, v2

    .line 306
    :goto_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    if-eqz v0, :cond_2

    .line 308
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/location/internal/server/m;->a:Ljava/lang/String;

    const-string v4, "Creating RealOs"

    invoke-static {v0, v4}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_1
    new-instance v0, Lcom/google/android/location/os/real/aw;

    iget-object v4, p0, Lcom/google/android/location/internal/server/m;->b:Lcom/google/android/location/internal/server/GoogleLocationService;

    iget-object v5, p0, Lcom/google/android/location/internal/server/m;->h:Lcom/google/android/location/os/e;

    invoke-direct {v0, v4, v5, p0}, Lcom/google/android/location/os/real/aw;-><init>(Landroid/content/Context;Lcom/google/android/location/os/e;Lcom/google/android/location/os/real/ax;)V

    .line 315
    invoke-virtual {v0}, Lcom/google/android/location/os/real/aw;->E()V

    .line 316
    iget-object v4, p0, Lcom/google/android/location/internal/server/m;->g:Ljava/lang/Object;

    monitor-enter v4

    .line 317
    :try_start_1
    iput-object v0, p0, Lcom/google/android/location/internal/server/m;->k:Lcom/google/android/location/os/real/aw;

    .line 321
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/location/internal/server/m;->a(Z)V

    .line 322
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 325
    :cond_2
    iget-object v4, p0, Lcom/google/android/location/internal/server/m;->g:Ljava/lang/Object;

    monitor-enter v4

    .line 328
    if-nez v1, :cond_4

    :try_start_2
    iget-boolean v0, p0, Lcom/google/android/location/internal/server/m;->d:Z

    if-eq v0, v1, :cond_4

    .line 329
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/location/internal/server/m;->a:Ljava/lang/String;

    const-string v5, "Sending NLP deactivated msg"

    invoke-static {v0, v5}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_3
    iput-boolean v1, p0, Lcom/google/android/location/internal/server/m;->d:Z

    .line 331
    iget-object v0, p0, Lcom/google/android/location/internal/server/m;->o:Lcom/google/android/location/internal/server/i;

    iget-object v5, p0, Lcom/google/android/location/internal/server/m;->b:Lcom/google/android/location/internal/server/GoogleLocationService;

    invoke-virtual {v0, v5, v1}, Lcom/google/android/location/internal/server/i;->a(Landroid/content/Context;Z)V

    .line 333
    :cond_4
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 338
    if-eqz v1, :cond_1c

    .line 354
    sget-object v0, Lcom/google/android/location/d/g;->a:Lcom/google/android/location/d/g;

    iget-object v4, p0, Lcom/google/android/location/internal/server/m;->b:Lcom/google/android/location/internal/server/GoogleLocationService;

    invoke-static {v0, v4}, Lcom/google/android/location/d/f;->a(Lcom/google/android/location/d/g;Landroid/content/Context;)Lcom/google/android/location/d/f;

    move-result-object v4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v0, v5, :cond_13

    move v0, v2

    :goto_4
    if-nez v0, :cond_5

    iget-object v0, v4, Lcom/google/android/location/d/f;->a:Lcom/google/android/location/d/g;

    sget-object v4, Lcom/google/android/location/d/g;->f:Lcom/google/android/location/d/g;

    if-eq v0, v4, :cond_14

    :cond_5
    move v4, v2

    .line 355
    :goto_5
    sget-boolean v0, Lcom/google/android/location/j/a;->f:Z

    if-eqz v0, :cond_17

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/google/android/location/internal/server/m;->a:Ljava/lang/String;

    const-string v5, "NLP Running in GCore, testing to see if Android Maps is running."

    invoke-static {v0, v5}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    sget-object v0, Lcom/google/android/location/d/g;->c:Lcom/google/android/location/d/g;

    iget-object v5, p0, Lcom/google/android/location/internal/server/m;->b:Lcom/google/android/location/internal/server/GoogleLocationService;

    invoke-static {v0, v5}, Lcom/google/android/location/d/f;->a(Lcom/google/android/location/d/g;Landroid/content/Context;)Lcom/google/android/location/d/f;

    move-result-object v0

    sget-object v5, Lcom/google/android/location/d/g;->d:Lcom/google/android/location/d/g;

    iget-object v7, p0, Lcom/google/android/location/internal/server/m;->b:Lcom/google/android/location/internal/server/GoogleLocationService;

    invoke-static {v5, v7}, Lcom/google/android/location/d/f;->a(Lcom/google/android/location/d/g;Landroid/content/Context;)Lcom/google/android/location/d/f;

    move-result-object v5

    iget-object v7, v0, Lcom/google/android/location/d/f;->a:Lcom/google/android/location/d/g;

    sget-object v8, Lcom/google/android/location/d/g;->f:Lcom/google/android/location/d/g;

    if-ne v7, v8, :cond_15

    iget-object v5, v5, Lcom/google/android/location/d/f;->a:Lcom/google/android/location/d/g;

    sget-object v7, Lcom/google/android/location/d/g;->f:Lcom/google/android/location/d/g;

    if-ne v5, v7, :cond_15

    move v0, v2

    :goto_6
    move v5, v0

    .line 360
    :goto_7
    sget-object v0, Lcom/google/android/location/d/a;->b:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 362
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/google/android/location/internal/server/m;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "fullCollection: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", collectionEnabled: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", gServices collection enabled: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_7
    iget-object v8, p0, Lcom/google/android/location/internal/server/m;->k:Lcom/google/android/location/os/real/aw;

    if-eqz v5, :cond_1a

    if-eqz v7, :cond_1a

    move v0, v2

    :goto_8
    if-eqz v4, :cond_1b

    if-eqz v7, :cond_1b

    :goto_9
    invoke-virtual {v8, v0, v2}, Lcom/google/android/location/os/real/aw;->a(ZZ)V

    .line 366
    iget-object v2, p0, Lcom/google/android/location/internal/server/m;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 367
    const/4 v0, 0x1

    :try_start_3
    invoke-direct {p0, v0}, Lcom/google/android/location/internal/server/m;->b(Z)V

    .line 368
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/internal/server/m;->i:Ljava/lang/Boolean;

    .line 369
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 389
    :cond_8
    :goto_a
    iget-object v2, p0, Lcom/google/android/location/internal/server/m;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 392
    if-eqz v1, :cond_a

    :try_start_4
    iget-boolean v0, p0, Lcom/google/android/location/internal/server/m;->d:Z

    if-eq v0, v1, :cond_a

    .line 393
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/android/location/internal/server/m;->a:Ljava/lang/String;

    const-string v3, "Sending NLP activated msg"

    invoke-static {v0, v3}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :cond_9
    iput-boolean v1, p0, Lcom/google/android/location/internal/server/m;->d:Z

    .line 395
    iget-object v0, p0, Lcom/google/android/location/internal/server/m;->o:Lcom/google/android/location/internal/server/i;

    iget-object v3, p0, Lcom/google/android/location/internal/server/m;->b:Lcom/google/android/location/internal/server/GoogleLocationService;

    invoke-virtual {v0, v3, v1}, Lcom/google/android/location/internal/server/i;->a(Landroid/content/Context;Z)V

    .line 396
    iget-object v0, p0, Lcom/google/android/location/internal/server/m;->b:Lcom/google/android/location/internal/server/GoogleLocationService;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.google.android.location.internal.server.ACTION_RESTARTED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/google/android/location/internal/server/GoogleLocationService;->sendBroadcast(Landroid/content/Intent;)V

    .line 398
    :cond_a
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 401
    iget-boolean v0, p0, Lcom/google/android/location/internal/server/m;->d:Z

    if-nez v0, :cond_b

    .line 402
    iget-object v2, p0, Lcom/google/android/location/internal/server/m;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 403
    :try_start_5
    iget-object v0, p0, Lcom/google/android/location/internal/server/m;->b:Lcom/google/android/location/internal/server/GoogleLocationService;

    invoke-static {v0}, Lcom/google/android/location/os/real/aw;->b(Landroid/content/Context;)V

    .line 404
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 407
    :cond_b
    if-nez v6, :cond_f

    .line 410
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/google/android/location/internal/server/m;->a:Ljava/lang/String;

    const-string v2, "Destroying our service"

    invoke-static {v0, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :cond_c
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/google/android/location/internal/server/m;->a:Ljava/lang/String;

    const-string v2, "Destroying RealOs"

    invoke-static {v0, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_d
    iget-object v0, p0, Lcom/google/android/location/internal/server/m;->k:Lcom/google/android/location/os/real/aw;

    if-eqz v0, :cond_e

    .line 413
    iget-object v0, p0, Lcom/google/android/location/internal/server/m;->k:Lcom/google/android/location/os/real/aw;

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/real/aw;->a(Z)V

    .line 414
    iget-object v0, p0, Lcom/google/android/location/internal/server/m;->k:Lcom/google/android/location/os/real/aw;

    invoke-virtual {v0}, Lcom/google/android/location/os/real/aw;->D()V

    .line 417
    :cond_e
    iget-object v0, p0, Lcom/google/android/location/internal/server/m;->b:Lcom/google/android/location/internal/server/GoogleLocationService;

    invoke-virtual {v0}, Lcom/google/android/location/internal/server/GoogleLocationService;->a()V

    .line 418
    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 420
    :cond_f
    return-void

    :cond_10
    move v0, v3

    .line 294
    goto/16 :goto_0

    :cond_11
    move v0, v3

    goto/16 :goto_1

    :cond_12
    move v1, v3

    goto/16 :goto_2

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 322
    :catchall_1
    move-exception v0

    monitor-exit v4

    throw v0

    .line 333
    :catchall_2
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_13
    move v0, v3

    .line 354
    goto/16 :goto_4

    :cond_14
    move v4, v3

    goto/16 :goto_5

    .line 355
    :cond_15
    iget v0, v0, Lcom/google/android/location/d/f;->d:I

    const/16 v5, 0x45f

    if-lt v0, v5, :cond_16

    move v0, v2

    goto/16 :goto_6

    :cond_16
    move v0, v3

    goto/16 :goto_6

    :cond_17
    sget-object v0, Lcom/google/android/location/d/g;->e:Lcom/google/android/location/d/g;

    iget-object v5, p0, Lcom/google/android/location/internal/server/m;->b:Lcom/google/android/location/internal/server/GoogleLocationService;

    invoke-static {v0, v5}, Lcom/google/android/location/d/f;->a(Lcom/google/android/location/d/g;Landroid/content/Context;)Lcom/google/android/location/d/f;

    move-result-object v0

    sget-boolean v5, Lcom/google/android/location/j/a;->b:Z

    if-eqz v5, :cond_18

    sget-object v5, Lcom/google/android/location/internal/server/m;->a:Ljava/lang/String;

    const-string v7, "NLP Running in Maps"

    invoke-static {v5, v7}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    iget-object v0, v0, Lcom/google/android/location/d/f;->a:Lcom/google/android/location/d/g;

    sget-object v5, Lcom/google/android/location/d/g;->f:Lcom/google/android/location/d/g;

    if-ne v0, v5, :cond_19

    move v0, v2

    :goto_b
    move v5, v0

    goto/16 :goto_7

    :cond_19
    move v0, v3

    goto :goto_b

    :cond_1a
    move v0, v3

    .line 364
    goto/16 :goto_8

    :cond_1b
    move v2, v3

    goto/16 :goto_9

    .line 369
    :catchall_3
    move-exception v0

    monitor-exit v2

    throw v0

    .line 370
    :cond_1c
    iget-object v0, p0, Lcom/google/android/location/internal/server/m;->k:Lcom/google/android/location/os/real/aw;

    if-eqz v0, :cond_8

    .line 371
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/google/android/location/internal/server/m;->a:Ljava/lang/String;

    const-string v2, "May destroy NetworkProvider if created."

    invoke-static {v0, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_1d
    iget-object v0, p0, Lcom/google/android/location/internal/server/m;->k:Lcom/google/android/location/os/real/aw;

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/real/aw;->b(Z)V

    .line 380
    iget-object v2, p0, Lcom/google/android/location/internal/server/m;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 381
    const/4 v0, 0x0

    :try_start_6
    iput-object v0, p0, Lcom/google/android/location/internal/server/m;->q:Lcom/google/android/location/os/real/av;

    .line 384
    iget-object v0, p0, Lcom/google/android/location/internal/server/m;->o:Lcom/google/android/location/internal/server/i;

    invoke-virtual {v0}, Lcom/google/android/location/internal/server/i;->e()V

    .line 385
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/internal/server/m;->l:I

    .line 386
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto/16 :goto_a

    :catchall_4
    move-exception v0

    monitor-exit v2

    throw v0

    .line 398
    :catchall_5
    move-exception v0

    monitor-exit v2

    throw v0

    .line 404
    :catchall_6
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1e
    move v0, v3

    goto/16 :goto_3
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 727
    iget-object v1, p0, Lcom/google/android/location/internal/server/m;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 728
    const/4 v0, 0x2

    :try_start_0
    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 729
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(II)V
    .locals 3

    .prologue
    .line 786
    iget-object v1, p0, Lcom/google/android/location/internal/server/m;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 787
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/internal/server/m;->o:Lcom/google/android/location/internal/server/i;

    iget-object v2, p0, Lcom/google/android/location/internal/server/m;->b:Lcom/google/android/location/internal/server/GoogleLocationService;

    invoke-virtual {v0, v2, p1, p2}, Lcom/google/android/location/internal/server/i;->a(Landroid/content/Context;II)V

    .line 788
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Landroid/app/PendingIntent;)V
    .locals 4

    .prologue
    .line 588
    iget-object v1, p0, Lcom/google/android/location/internal/server/m;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 589
    :try_start_0
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/location/internal/server/m;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "removing location pending intent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/PendingIntent;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/internal/server/m;->o:Lcom/google/android/location/internal/server/i;

    invoke-virtual {v0, p1}, Lcom/google/android/location/internal/server/i;->a(Landroid/app/PendingIntent;)V

    .line 592
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/location/internal/server/m;->b(Z)V

    .line 593
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Landroid/app/PendingIntent;IIZZZLcom/google/android/location/p/j;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 572
    iget-object v10, p0, Lcom/google/android/location/internal/server/m;->g:Ljava/lang/Object;

    monitor-enter v10

    .line 573
    :try_start_0
    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/location/internal/server/m;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "adding pendingIntent "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/PendingIntent;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with period "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", trigger "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    :cond_0
    const/4 v1, 0x5

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 576
    iget-object v1, p0, Lcom/google/android/location/internal/server/m;->o:Lcom/google/android/location/internal/server/i;

    iget-object v2, p0, Lcom/google/android/location/internal/server/m;->b:Lcom/google/android/location/internal/server/GoogleLocationService;

    move-object v3, p1

    move v5, p3

    move v6, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/google/android/location/internal/server/i;->a(Landroid/content/Context;Landroid/app/PendingIntent;IIZZLcom/google/android/location/p/j;Ljava/lang/String;)V

    .line 579
    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/google/android/location/internal/server/m;->b(Z)V

    .line 580
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v10

    throw v1
.end method

.method public final a(Landroid/app/PendingIntent;IZZLcom/google/android/location/p/j;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 602
    iget-object v8, p0, Lcom/google/android/location/internal/server/m;->g:Ljava/lang/Object;

    monitor-enter v8

    .line 603
    :try_start_0
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/location/internal/server/m;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adding activity pendingIntent "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/PendingIntent;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/internal/server/m;->p:Lcom/google/android/location/internal/server/b;

    iget-object v0, p0, Lcom/google/android/location/internal/server/m;->b:Lcom/google/android/location/internal/server/GoogleLocationService;

    const/4 v2, 0x0

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    new-instance v4, Lcom/google/android/location/collectionlib/cy;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "NLP ActivityPendingIntent client in "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/google/android/location/collectionlib/cy;->b:[S

    invoke-direct {v4, v0, v2, v5}, Lcom/google/android/location/collectionlib/cy;-><init>(Landroid/os/PowerManager;Ljava/lang/String;[S)V

    invoke-virtual {v4, p5}, Lcom/google/android/location/collectionlib/cy;->a(Lcom/google/android/location/p/j;)V

    new-instance v0, Lcom/google/android/location/internal/server/c;

    move-object v2, p1

    move-object v5, p5

    move v6, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/location/internal/server/c;-><init>(Lcom/google/android/location/internal/server/b;Landroid/app/PendingIntent;ILcom/google/android/location/collectionlib/cy;Lcom/google/android/location/p/j;ZLjava/lang/String;)V

    iget-object v2, v1, Lcom/google/android/location/internal/server/b;->b:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/location/internal/server/b;->a()V

    .line 607
    invoke-direct {p0, p3}, Lcom/google/android/location/internal/server/m;->a(Z)V

    .line 608
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public final a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 800
    iget-object v3, p0, Lcom/google/android/location/internal/server/m;->g:Ljava/lang/Object;

    monitor-enter v3

    .line 801
    :try_start_0
    iget-object v4, p0, Lcom/google/android/location/internal/server/m;->p:Lcom/google/android/location/internal/server/b;

    iget-object v5, p0, Lcom/google/android/location/internal/server/m;->b:Lcom/google/android/location/internal/server/GoogleLocationService;

    const/4 v0, 0x0

    iget-object v2, v4, Lcom/google/android/location/internal/server/b;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v0, :cond_5

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.google.android.location.internal.EXTRA_RELEASE_VERSION"

    iget v7, v4, Lcom/google/android/location/internal/server/b;->a:I

    invoke-virtual {v2, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.google.android.location.internal.EXTRA_ACTIVITY_RESULT"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/internal/server/g;

    iget-boolean v7, v0, Lcom/google/android/location/internal/server/g;->i:Z

    if-nez v7, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v7

    const/4 v8, 0x6

    if-eq v7, v8, :cond_6

    :cond_0
    invoke-virtual {v0, v5, v2}, Lcom/google/android/location/internal/server/g;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v7

    if-nez v7, :cond_2

    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_1

    const-string v1, "ActivityRecognitionListener"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "dropping intent receiver"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/google/android/location/internal/server/g;->b:Landroid/app/PendingIntent;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    const/4 v1, 0x1

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v8, "com.google.android.location.internal.EXTRA_ACTIVITY_PENDING_INTENT"

    iget-object v0, v0, Lcom/google/android/location/internal/server/g;->b:Landroid/app/PendingIntent;

    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, v4, Lcom/google/android/location/internal/server/b;->h:Lcom/google/android/location/b/af;

    invoke-virtual {v0, v7}, Lcom/google/android/location/b/af;->b(Landroid/os/Parcelable;)V

    :cond_2
    move v0, v1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v4}, Lcom/google/android/location/internal/server/b;->a()V

    .line 802
    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/location/internal/server/m;->a(Z)V

    .line 803
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_5
    move-object v2, v0

    goto :goto_1

    :cond_6
    move-object v0, v2

    goto :goto_0
.end method

.method public final a(Lcom/google/android/location/f/af;Lcom/google/android/location/f/ax;)V
    .locals 16

    .prologue
    .line 738
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/internal/server/m;->s:Lcom/google/android/location/internal/server/h;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/location/internal/server/h;->a(ZLcom/google/android/location/f/af;Lcom/google/android/location/f/ax;)Landroid/location/Location;

    move-result-object v7

    .line 739
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/internal/server/m;->s:Lcom/google/android/location/internal/server/h;

    const/4 v3, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/location/internal/server/h;->a(ZLcom/google/android/location/f/af;Lcom/google/android/location/f/ax;)Landroid/location/Location;

    move-result-object v8

    .line 742
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/location/internal/server/m;->g:Ljava/lang/Object;

    monitor-enter v10

    .line 743
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/internal/server/m;->o:Lcom/google/android/location/internal/server/i;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/location/f/af;->a:Lcom/google/android/location/f/y;

    iget-wide v4, v2, Lcom/google/android/location/f/y;->e:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/internal/server/m;->b:Lcom/google/android/location/internal/server/GoogleLocationService;

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/google/android/location/f/af;->d:Z

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/location/internal/server/i;->a(JLandroid/content/Context;Landroid/location/Location;Landroid/location/Location;Z)Ljava/util/List;

    move-result-object v2

    .line 749
    new-instance v3, Lcom/google/android/location/os/real/av;

    invoke-virtual {v7}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long/2addr v12, v14

    sub-long/2addr v4, v12

    const/4 v6, 0x0

    invoke-direct {v3, v8, v4, v5, v6}, Lcom/google/android/location/os/real/av;-><init>(Landroid/location/Location;JI)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/location/internal/server/m;->q:Lcom/google/android/location/os/real/av;

    .line 751
    sget-boolean v3, Lcom/google/android/location/j/a;->b:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/google/android/location/internal/server/m;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "reporting "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/location/internal/server/m;->b(Z)V

    .line 763
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 764
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/internal/server/m;->k:Lcom/google/android/location/os/real/aw;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/location/internal/server/m;->k:Lcom/google/android/location/os/real/aw;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Lcom/google/android/location/os/real/aw;->a(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 781
    :catchall_0
    move-exception v2

    monitor-exit v10

    throw v2

    .line 770
    :cond_2
    :try_start_1
    sget-object v2, Lcom/google/android/location/d/a;->c:Lcom/google/android/gms/common/a/b;

    invoke-static {v2}, Lcom/google/android/location/d/a;->a(Lcom/google/android/gms/common/a/b;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 772
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/internal/server/m;->o:Lcom/google/android/location/internal/server/i;

    invoke-virtual {v2}, Lcom/google/android/location/internal/server/i;->f()Ljava/util/Map;

    move-result-object v4

    .line 773
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/internal/server/m;->v:Lcom/google/android/location/c/a;

    invoke-virtual {v2}, Lcom/google/android/location/c/a;->a()V

    .line 775
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 776
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/location/internal/server/m;->v:Lcom/google/android/location/c/a;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Lcom/google/android/location/c/a;->a(Ljava/lang/String;I)V

    goto :goto_1

    .line 779
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/internal/server/m;->v:Lcom/google/android/location/c/a;

    invoke-virtual {v2}, Lcom/google/android/location/c/a;->b()V

    .line 781
    :cond_4
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final a(Lcom/google/android/location/os/e;)V
    .locals 2

    .prologue
    .line 181
    iget-object v1, p0, Lcom/google/android/location/internal/server/m;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 182
    :try_start_0
    iput-object p1, p0, Lcom/google/android/location/internal/server/m;->h:Lcom/google/android/location/os/e;

    .line 183
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/io/PrintWriter;)V
    .locals 12

    .prologue
    .line 673
    iget-object v4, p0, Lcom/google/android/location/internal/server/m;->g:Ljava/lang/Object;

    monitor-enter v4

    .line 674
    :try_start_0
    iget-object v5, p0, Lcom/google/android/location/internal/server/m;->p:Lcom/google/android/location/internal/server/b;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-string v0, "####PendingIntent Activity Client Stats"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    const-string v0, "-Currently connected activity PendingIntents-"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/google/android/location/internal/server/b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/internal/server/c;

    iget-object v1, v0, Lcom/google/android/location/internal/server/c;->f:Ljava/lang/String;

    iget v2, v0, Lcom/google/android/location/internal/server/c;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/location/f/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/location/f/ai;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-wide v2, v0, Lcom/google/android/location/internal/server/c;->g:J

    sub-long v2, v6, v2

    iget-object v1, v5, Lcom/google/android/location/internal/server/b;->c:Ljava/util/Map;

    iget-object v10, v0, Lcom/google/android/location/internal/server/c;->f:Ljava/lang/String;

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/internal/server/d;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/google/android/location/internal/server/d;->a:Lcom/google/android/location/internal/server/o;

    iget-object v1, v1, Lcom/google/android/location/internal/server/o;->a:Ljava/util/Map;

    iget v10, v0, Lcom/google/android/location/internal/server/c;->d:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    add-long/2addr v2, v10

    :cond_0
    new-instance v1, Lcom/google/android/location/internal/server/p;

    iget v10, v0, Lcom/google/android/location/internal/server/c;->d:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v0, Lcom/google/android/location/internal/server/c;->h:Ljava/lang/String;

    invoke-direct {v1, v10, v11}, Lcom/google/android/location/internal/server/p;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/location/internal/server/c;->f:Ljava/lang/String;

    invoke-static {p1, v2, v3, v1, v0}, Lcom/google/android/location/internal/server/b;->a(Ljava/io/PrintWriter;JLcom/google/android/location/internal/server/p;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 675
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 674
    :cond_1
    :try_start_1
    const-string v0, "-Previous packages-"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/google/android/location/internal/server/b;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/internal/server/d;

    iget-object v0, v0, Lcom/google/android/location/internal/server/d;->a:Lcom/google/android/location/internal/server/o;

    iget-object v0, v0, Lcom/google/android/location/internal/server/o;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/internal/server/p;

    invoke-static {v1, v2}, Lcom/google/android/location/f/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/location/f/ai;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {p1, v6, v7, v2, v1}, Lcom/google/android/location/internal/server/b;->a(Ljava/io/PrintWriter;JLcom/google/android/location/internal/server/p;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v0, "####Finished PendingIntent Activity Client Stats"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 675
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final a(Ljava/text/Format;Ljava/io/PrintWriter;)V
    .locals 6

    .prologue
    .line 695
    iget-object v2, p0, Lcom/google/android/location/internal/server/m;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 696
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v0, Lcom/google/android/location/j/a;->f:Z

    if-eqz v0, :cond_1

    const-string v0, "GMS"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " collection is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 698
    iget-object v0, p0, Lcom/google/android/location/internal/server/m;->i:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 699
    const-string v0, "not yet set."

    move-object v1, p2

    .line 701
    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 704
    iget-object v0, p0, Lcom/google/android/location/internal/server/m;->k:Lcom/google/android/location/os/real/aw;

    if-eqz v0, :cond_0

    .line 705
    const-string v0, "RealOs stats:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 706
    iget-object v0, p0, Lcom/google/android/location/internal/server/m;->k:Lcom/google/android/location/os/real/aw;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/os/real/aw;->a(Ljava/text/Format;Ljava/io/PrintWriter;)V

    .line 707
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 709
    :cond_0
    invoke-static {}, Lcom/google/android/location/collectionlib/dd;->a()Lcom/google/android/location/collectionlib/dd;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v0, p2, v4, v5}, Lcom/google/android/location/collectionlib/dd;->a(Ljava/io/PrintWriter;J)V

    .line 710
    monitor-exit v2

    return-void

    .line 696
    :cond_1
    const-string v0, "GMM"

    goto :goto_0

    .line 701
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/internal/server/m;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "enabled"

    move-object v1, p2

    goto :goto_1

    :cond_3
    const-string v0, "disabled"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p2

    goto :goto_1

    .line 710
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 529
    iget-object v1, p0, Lcom/google/android/location/internal/server/m;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 530
    :try_start_0
    invoke-static {p0}, Lcom/google/android/location/internal/f;->a(Lcom/google/android/location/internal/g;)V

    .line 531
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/internal/server/m;->j:Z

    .line 532
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 533
    invoke-direct {p0}, Lcom/google/android/location/internal/server/m;->f()V

    .line 534
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Landroid/app/PendingIntent;)V
    .locals 4

    .prologue
    .line 617
    iget-object v1, p0, Lcom/google/android/location/internal/server/m;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 618
    :try_start_0
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/location/internal/server/m;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "removing activity pendingIntent "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/PendingIntent;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    :cond_0
    iget-object v2, p0, Lcom/google/android/location/internal/server/m;->p:Lcom/google/android/location/internal/server/b;

    iget-object v0, v2, Lcom/google/android/location/internal/server/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/internal/server/c;

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "ActivityRecognitionListener"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to find the activity detection pendingIntent to remove: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/location/internal/server/m;->a(Z)V

    .line 622
    monitor-exit v1

    return-void

    .line 620
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/location/internal/server/c;->b()V

    invoke-virtual {v2}, Lcom/google/android/location/internal/server/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 622
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Ljava/io/PrintWriter;)V
    .locals 4

    .prologue
    .line 682
    iget-object v1, p0, Lcom/google/android/location/internal/server/m;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 683
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "NLP-Period is currently "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/android/location/internal/server/m;->l:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 684
    iget-object v0, p0, Lcom/google/android/location/internal/server/m;->r:Lcom/google/android/location/internal/server/l;

    iget v2, p0, Lcom/google/android/location/internal/server/m;->l:I

    iget v3, p0, Lcom/google/android/location/internal/server/m;->m:I

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/location/internal/server/l;->a(Ljava/io/PrintWriter;II)V

    .line 685
    iget-object v0, p0, Lcom/google/android/location/internal/server/m;->o:Lcom/google/android/location/internal/server/i;

    invoke-virtual {v0, p1}, Lcom/google/android/location/internal/server/i;->a(Ljava/io/PrintWriter;)V

    .line 686
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 544
    iget-object v1, p0, Lcom/google/android/location/internal/server/m;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 545
    :try_start_0
    invoke-static {p0}, Lcom/google/android/location/internal/f;->b(Lcom/google/android/location/internal/g;)V

    .line 546
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/internal/server/m;->j:Z

    .line 553
    iget-object v0, p0, Lcom/google/android/location/internal/server/m;->k:Lcom/google/android/location/os/real/aw;

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/google/android/location/internal/server/m;->k:Lcom/google/android/location/os/real/aw;

    invoke-virtual {v0}, Lcom/google/android/location/os/real/aw;->C()V

    .line 556
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/location/internal/server/m;->f:Z

    if-nez v0, :cond_1

    .line 557
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 559
    :cond_1
    invoke-direct {p0}, Lcom/google/android/location/internal/server/m;->f()V

    .line 560
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c(Ljava/io/PrintWriter;)V
    .locals 2

    .prologue
    .line 714
    iget-object v1, p0, Lcom/google/android/location/internal/server/m;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 715
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/internal/server/m;->k:Lcom/google/android/location/os/real/aw;

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/google/android/location/internal/server/m;->k:Lcom/google/android/location/os/real/aw;

    invoke-virtual {v0, p1}, Lcom/google/android/location/os/real/aw;->a(Ljava/io/PrintWriter;)V

    .line 718
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final d()Lcom/google/android/location/os/ah;
    .locals 2

    .prologue
    .line 793
    iget-object v1, p0, Lcom/google/android/location/internal/server/m;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 794
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/internal/server/m;->q:Lcom/google/android/location/os/real/av;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 795
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 188
    iget-boolean v0, p0, Lcom/google/android/location/internal/server/m;->e:Z

    if-nez v0, :cond_0

    .line 189
    iput-boolean v1, p0, Lcom/google/android/location/internal/server/m;->e:Z

    .line 190
    iget-object v0, p0, Lcom/google/android/location/internal/server/m;->b:Lcom/google/android/location/internal/server/GoogleLocationService;

    invoke-static {v0}, Lcom/google/android/location/os/real/aw;->c(Landroid/content/Context;)V

    .line 192
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 213
    :goto_0
    return-void

    .line 194
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/location/internal/server/m;->g()V

    goto :goto_0

    .line 198
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/location/internal/server/m;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 199
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/location/internal/server/m;->f()V

    .line 200
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 201
    :pswitch_2
    iget-object v1, p0, Lcom/google/android/location/internal/server/m;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 205
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/location/internal/server/m;->f:Z

    .line 206
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/location/internal/server/m;->a:Ljava/lang/String;

    const-string v2, "Looper quitting."

    invoke-static {v0, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/internal/server/m;->k:Lcom/google/android/location/os/real/aw;

    .line 209
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
