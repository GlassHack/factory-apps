.class public final Lcom/google/android/maps/driveabout/location/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/glass/logging/FormattingLogger;

.field private static final b:Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;

.field private static final c:Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;

.field private static final d:Lcom/google/glass/location/LocationManagerHelper$LocationComparator;

.field private static final e:Lcom/google/glass/location/LocationManagerHelper$LocationComparator;


# instance fields
.field private f:Lcom/google/android/maps/driveabout/location/t;

.field private final g:Lcom/google/android/maps/driveabout/location/i;

.field private h:Lcom/google/android/maps/driveabout/location/p;

.field private i:Lcom/google/android/maps/driveabout/location/e;

.field private j:Lcom/google/android/maps/driveabout/location/a;

.field private final k:Lcom/google/android/maps/driveabout/location/c;

.field private final l:Lcom/google/android/maps/driveabout/location/c;

.field private m:Lcom/google/android/maps/driveabout/location/c;

.field private n:Lcom/google/android/maps/driveabout/location/ab;

.field private o:Lcom/google/android/maps/driveabout/location/w;

.field private final p:Lcom/google/android/maps/driveabout/location/s;

.field private final q:Ljava/util/List;

.field private r:I

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/32 v4, 0xea60

    .line 40
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/location/m;->a:Lcom/google/glass/logging/FormattingLogger;

    .line 104
    new-instance v0, Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;

    .line 105
    invoke-static {}, Lcom/google/android/maps/driveabout/util/n;->a()Lcom/google/android/maps/driveabout/util/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/util/l;->k()I

    move-result v1

    int-to-long v1, v1

    .line 106
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;-><init>(JLcom/google/glass/time/Clock;)V

    sput-object v0, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;

    .line 108
    new-instance v0, Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;

    .line 110
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v1

    invoke-direct {v0, v4, v5, v1}, Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;-><init>(JLcom/google/glass/time/Clock;)V

    sput-object v0, Lcom/google/android/maps/driveabout/location/m;->c:Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;

    .line 112
    new-instance v0, Lcom/google/glass/location/LocationManagerHelper$LocationComparator;

    .line 113
    invoke-static {}, Lcom/google/android/maps/driveabout/util/n;->a()Lcom/google/android/maps/driveabout/util/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/util/l;->k()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/google/glass/location/LocationManagerHelper$LocationComparator;-><init>(J)V

    sput-object v0, Lcom/google/android/maps/driveabout/location/m;->d:Lcom/google/glass/location/LocationManagerHelper$LocationComparator;

    .line 115
    new-instance v0, Lcom/google/glass/location/LocationManagerHelper$LocationComparator;

    invoke-direct {v0, v4, v5}, Lcom/google/glass/location/LocationManagerHelper$LocationComparator;-><init>(J)V

    sput-object v0, Lcom/google/android/maps/driveabout/location/m;->e:Lcom/google/glass/location/LocationManagerHelper$LocationComparator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/location/t;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v0, Lcom/google/android/maps/driveabout/location/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/driveabout/location/s;-><init>(Lcom/google/android/maps/driveabout/location/m;Lcom/google/android/maps/driveabout/location/n;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->p:Lcom/google/android/maps/driveabout/location/s;

    .line 160
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->q:Ljava/util/List;

    .line 163
    iput v2, p0, Lcom/google/android/maps/driveabout/location/m;->r:I

    .line 180
    iput-object p1, p0, Lcom/google/android/maps/driveabout/location/m;->f:Lcom/google/android/maps/driveabout/location/t;

    .line 185
    new-instance v0, Lcom/google/android/maps/driveabout/location/i;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/location/i;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    .line 186
    new-instance v0, Lcom/google/android/maps/driveabout/location/f;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/location/f;-><init>(Lcom/google/android/maps/driveabout/location/b;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->k:Lcom/google/android/maps/driveabout/location/c;

    .line 187
    new-instance v0, Lcom/google/android/maps/driveabout/location/aa;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/location/aa;-><init>(Lcom/google/android/maps/driveabout/location/b;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->l:Lcom/google/android/maps/driveabout/location/c;

    .line 188
    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/location/m;->b(I)V

    .line 189
    return-void
.end method

.method public static final a()F
    .locals 2

    .prologue
    .line 92
    invoke-static {}, Lcom/google/android/maps/driveabout/location/m;->b()F

    move-result v0

    const v1, 0x3f2aacda    # 0.6667f

    mul-float/2addr v0, v1

    return v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/location/m;)Lcom/google/android/maps/driveabout/location/t;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->f:Lcom/google/android/maps/driveabout/location/t;

    return-object v0
.end method

.method private a(J)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 329
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->f:Lcom/google/android/maps/driveabout/location/t;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    invoke-interface {v0, p1, p2, v2, v1}, Lcom/google/android/maps/driveabout/location/t;->requestGpsLocationUpdates(JFLcom/google/android/maps/driveabout/location/b;)V

    .line 330
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->f:Lcom/google/android/maps/driveabout/location/t;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    invoke-interface {v0, p1, p2, v2, v1}, Lcom/google/android/maps/driveabout/location/t;->requestNetworkLocationUpdates(JFLcom/google/android/maps/driveabout/location/b;)V

    .line 331
    return-void
.end method

.method public static final b()F
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Lcom/google/android/maps/driveabout/util/n;->a()Lcom/google/android/maps/driveabout/util/l;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/l;->n()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/location/m;)Lcom/google/android/maps/driveabout/location/c;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->m:Lcom/google/android/maps/driveabout/location/c;

    return-object v0
.end method

.method private b(I)V
    .locals 4

    .prologue
    .line 401
    invoke-static {}, Lcom/google/googlenav/common/b;->a()Lcom/google/googlenav/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/b;->f()Lcom/google/googlenav/common/a;

    move-result-object v0

    .line 402
    new-instance v1, Lcom/google/android/maps/driveabout/location/e;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/location/m;->f:Lcom/google/android/maps/driveabout/location/t;

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/maps/driveabout/location/e;-><init>(Lcom/google/android/maps/driveabout/location/b;Lcom/google/android/maps/driveabout/location/t;Lcom/google/googlenav/common/a;)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/location/m;->i:Lcom/google/android/maps/driveabout/location/e;

    .line 403
    new-instance v1, Lcom/google/android/maps/driveabout/location/p;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    invoke-direct {v1, p0, v2}, Lcom/google/android/maps/driveabout/location/p;-><init>(Lcom/google/android/maps/driveabout/location/m;Lcom/google/android/maps/driveabout/location/b;)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/location/m;->h:Lcom/google/android/maps/driveabout/location/p;

    .line 404
    new-instance v1, Lcom/google/android/maps/driveabout/location/ab;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    .line 405
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/location/i;->c()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/maps/driveabout/location/ab;-><init>(Lcom/google/android/maps/driveabout/location/b;Landroid/os/Handler;Lcom/google/googlenav/common/a;)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/location/m;->n:Lcom/google/android/maps/driveabout/location/ab;

    .line 406
    new-instance v0, Lcom/google/android/maps/driveabout/location/a;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/location/a;-><init>(Lcom/google/android/maps/driveabout/location/b;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->j:Lcom/google/android/maps/driveabout/location/a;

    .line 430
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    const-string v1, "gps"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->i:Lcom/google/android/maps/driveabout/location/e;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/i;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    .line 431
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    const-string v1, "driveabout_gps_fixup"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->h:Lcom/google/android/maps/driveabout/location/p;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/i;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    .line 438
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    const-string v1, "network"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->h:Lcom/google/android/maps/driveabout/location/p;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/i;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    .line 440
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    const-string v1, "remote_gps"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->i:Lcom/google/android/maps/driveabout/location/e;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/i;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    .line 441
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    const-string v1, "driveabout_base_location"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->j:Lcom/google/android/maps/driveabout/location/a;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/i;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    .line 443
    if-nez p1, :cond_0

    .line 444
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->k:Lcom/google/android/maps/driveabout/location/c;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->m:Lcom/google/android/maps/driveabout/location/c;

    .line 445
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/location/m;->i()V

    .line 450
    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    const-string v1, "driveabout_bearing_noise_reduction"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->m:Lcom/google/android/maps/driveabout/location/c;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/i;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    .line 457
    new-instance v0, Lcom/google/android/maps/driveabout/location/w;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/location/w;-><init>(Lcom/google/android/maps/driveabout/location/b;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->o:Lcom/google/android/maps/driveabout/location/w;

    .line 458
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    const-string v1, "android_orientation"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->o:Lcom/google/android/maps/driveabout/location/w;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/i;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    .line 459
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/m;->m:Lcom/google/android/maps/driveabout/location/c;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/location/c;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->o:Lcom/google/android/maps/driveabout/location/w;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/i;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    .line 460
    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->l:Lcom/google/android/maps/driveabout/location/c;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->m:Lcom/google/android/maps/driveabout/location/c;

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/location/m;)Lcom/google/android/maps/driveabout/location/e;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->i:Lcom/google/android/maps/driveabout/location/e;

    return-object v0
.end method

.method private c(I)V
    .locals 4

    .prologue
    .line 677
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    const-string v1, "driveabout_bearing_noise_reduction"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->m:Lcom/google/android/maps/driveabout/location/c;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/i;->b(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    .line 679
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/m;->m:Lcom/google/android/maps/driveabout/location/c;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/location/c;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->o:Lcom/google/android/maps/driveabout/location/w;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/i;->b(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    .line 684
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/location/b;

    .line 685
    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/location/m;->m:Lcom/google/android/maps/driveabout/location/c;

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/location/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/google/android/maps/driveabout/location/i;->b(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    goto :goto_0

    .line 690
    :cond_0
    if-nez p1, :cond_1

    .line 691
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->k:Lcom/google/android/maps/driveabout/location/c;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->m:Lcom/google/android/maps/driveabout/location/c;

    .line 692
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/location/m;->i()V

    .line 699
    :goto_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    const-string v1, "driveabout_bearing_noise_reduction"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->m:Lcom/google/android/maps/driveabout/location/c;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/i;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    .line 701
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/m;->m:Lcom/google/android/maps/driveabout/location/c;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/location/c;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->o:Lcom/google/android/maps/driveabout/location/w;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/i;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    .line 706
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/location/b;

    .line 707
    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/location/m;->m:Lcom/google/android/maps/driveabout/location/c;

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/location/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/google/android/maps/driveabout/location/i;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    goto :goto_2

    .line 694
    :cond_1
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/location/m;->j()V

    .line 695
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->l:Lcom/google/android/maps/driveabout/location/c;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->m:Lcom/google/android/maps/driveabout/location/c;

    goto :goto_1

    .line 709
    :cond_2
    return-void
.end method

.method static synthetic f()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/android/maps/driveabout/location/m;->a:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 319
    invoke-static {}, Lcom/google/android/maps/driveabout/util/n;->a()Lcom/google/android/maps/driveabout/util/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/l;->l()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/location/m;->a(J)V

    .line 320
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/i;->d()V

    .line 340
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->n:Lcom/google/android/maps/driveabout/location/ab;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/ab;->a()V

    .line 341
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->i:Lcom/google/android/maps/driveabout/location/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/e;->a()V

    .line 342
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/m;->d()V

    .line 343
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->f:Lcom/google/android/maps/driveabout/location/t;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/m;->p:Lcom/google/android/maps/driveabout/location/s;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/location/t;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 344
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/location/m;->a(Z)V

    .line 345
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 464
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    const-string v1, "driveabout_hmm"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->n:Lcom/google/android/maps/driveabout/location/ab;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/i;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    .line 465
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    const-string v1, "da_tunnel_heartbeat"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->m:Lcom/google/android/maps/driveabout/location/c;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/i;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    .line 466
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    const-string v1, "driveabout_hmm"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->i:Lcom/google/android/maps/driveabout/location/e;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/i;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    .line 467
    return-void
.end method

.method private j()V
    .locals 3

    .prologue
    .line 471
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    const-string v1, "driveabout_hmm"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->n:Lcom/google/android/maps/driveabout/location/ab;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/i;->b(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    .line 472
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    const-string v1, "da_tunnel_heartbeat"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->m:Lcom/google/android/maps/driveabout/location/c;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/i;->b(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    .line 473
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    const-string v1, "driveabout_hmm"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/location/m;->i:Lcom/google/android/maps/driveabout/location/e;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/i;->b(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    .line 474
    return-void
.end method

.method private k()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 487
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->f:Lcom/google/android/maps/driveabout/location/t;

    sget-object v1, Lcom/google/android/maps/driveabout/location/m;->b:Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;

    sget-object v2, Lcom/google/android/maps/driveabout/location/m;->d:Lcom/google/glass/location/LocationManagerHelper$LocationComparator;

    .line 488
    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/t;->getLastKnownGpsLocation(Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;Lcom/google/glass/location/LocationManagerHelper$LocationComparator;)Landroid/location/Location;

    move-result-object v0

    .line 490
    if-nez v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/maps/driveabout/location/i;->a(ILandroid/os/Bundle;)V

    .line 501
    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->f:Lcom/google/android/maps/driveabout/location/t;

    sget-object v1, Lcom/google/android/maps/driveabout/location/m;->c:Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;

    sget-object v2, Lcom/google/android/maps/driveabout/location/m;->e:Lcom/google/glass/location/LocationManagerHelper$LocationComparator;

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/location/t;->getLastKnownNetworkLocation(Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;Lcom/google/glass/location/LocationManagerHelper$LocationComparator;)Landroid/location/Location;

    move-result-object v0

    .line 503
    if-nez v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    const-string v1, "network"

    invoke-virtual {v0, v1, v3, v4}, Lcom/google/android/maps/driveabout/location/i;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 509
    :goto_1
    return-void

    .line 497
    :cond_0
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 498
    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/location/i;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0

    .line 507
    :cond_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/location/i;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_1
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 657
    iget v0, p0, Lcom/google/android/maps/driveabout/location/m;->r:I

    if-eq v0, p1, :cond_0

    .line 658
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/location/m;->c(I)V

    .line 659
    iput p1, p0, Lcom/google/android/maps/driveabout/location/m;->r:I

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    new-instance v1, Lcom/google/android/maps/driveabout/location/o;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/location/o;-><init>(Lcom/google/android/maps/driveabout/location/m;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/location/i;->a(Ljava/lang/Runnable;)V

    .line 668
    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/c/t;)V
    .locals 1

    .prologue
    .line 385
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/c/t;->b()Lcom/google/android/maps/driveabout/location/u;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/location/m;->a(Lcom/google/android/maps/driveabout/location/t;)V

    .line 386
    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/location/b;)V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/m;->m:Lcom/google/android/maps/driveabout/location/c;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/location/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/maps/driveabout/location/i;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    .line 248
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    const-string v1, "driveabout_orientation_filter"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/maps/driveabout/location/i;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    .line 249
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/location/t;)V
    .locals 2

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/location/m;->h()V

    .line 391
    iput-object p1, p0, Lcom/google/android/maps/driveabout/location/m;->f:Lcom/google/android/maps/driveabout/location/t;

    .line 392
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->i:Lcom/google/android/maps/driveabout/location/e;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/m;->f:Lcom/google/android/maps/driveabout/location/t;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/location/e;->a(Lcom/google/android/maps/driveabout/location/t;)V

    .line 393
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/location/m;->c()V

    .line 394
    return-void
.end method

.method public final a(Lcom/google/android/maps/driveabout/nav/w;)V
    .locals 2

    .prologue
    .line 647
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    new-instance v1, Lcom/google/android/maps/driveabout/location/n;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/location/n;-><init>(Lcom/google/android/maps/driveabout/location/m;Lcom/google/android/maps/driveabout/nav/w;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/location/i;->a(Ljava/lang/Runnable;)V

    .line 653
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/location/i;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    .line 270
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/location/m;->s:Z

    if-ne v0, p1, :cond_0

    .line 313
    :goto_0
    return-void

    .line 306
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/location/m;->s:Z

    .line 308
    if-eqz p1, :cond_1

    .line 309
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->f:Lcom/google/android/maps/driveabout/location/t;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/location/t;->requestOrientationUpdates(Lcom/google/android/maps/driveabout/location/b;)V

    goto :goto_0

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->f:Lcom/google/android/maps/driveabout/location/t;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/location/t;->removeOrientationUpdates()V

    goto :goto_0
.end method

.method public final b(Lcom/google/android/maps/driveabout/location/b;)V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/m;->m:Lcom/google/android/maps/driveabout/location/c;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/location/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/maps/driveabout/location/i;->b(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    .line 258
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    const-string v1, "driveabout_orientation_filter"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/maps/driveabout/location/i;->b(Ljava/lang/String;Lcom/google/android/maps/driveabout/location/b;)V

    .line 259
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 260
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->h:Lcom/google/android/maps/driveabout/location/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/p;->a()V

    .line 286
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->n:Lcom/google/android/maps/driveabout/location/ab;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/ab;->b()V

    .line 290
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/location/m;->k()V

    .line 291
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/location/m;->g()V

    .line 293
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->f:Lcom/google/android/maps/driveabout/location/t;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/m;->p:Lcom/google/android/maps/driveabout/location/s;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/location/t;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 295
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/location/m;->a(Z)V

    .line 296
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->f:Lcom/google/android/maps/driveabout/location/t;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/location/t;->removeLocationUpdates(Lcom/google/android/maps/driveabout/location/b;)V

    .line 352
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->f:Lcom/google/android/maps/driveabout/location/t;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/location/t;->removeLocationUpdates(Lcom/google/android/maps/driveabout/location/b;)V

    .line 375
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->f:Lcom/google/android/maps/driveabout/location/t;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/location/t;->stopListeningForCompanionPropertiesChange()V

    .line 376
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/location/m;->a(Z)V

    .line 377
    iget-object v0, p0, Lcom/google/android/maps/driveabout/location/m;->g:Lcom/google/android/maps/driveabout/location/i;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/location/i;->b()V

    .line 378
    return-void
.end method
