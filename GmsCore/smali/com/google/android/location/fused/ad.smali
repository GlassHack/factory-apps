.class public final Lcom/google/android/location/fused/ad;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/gms/location/internal/LocationRequestInternal;

.field private static final b:Lcom/google/android/gms/location/internal/LocationRequestInternal;


# instance fields
.field private final c:Lcom/google/android/location/fused/a/e;

.field private final d:Lcom/google/android/location/fused/a/k;

.field private final e:Lcom/google/android/location/fused/a/p;

.field private final f:Lcom/google/android/location/fused/a/j;

.field private final g:Lcom/google/android/location/fused/a/i;

.field private final h:Lcom/google/android/location/fused/a/a;

.field private final i:Lcom/google/android/location/fused/a/f;

.field private final j:Landroid/content/Context;

.field private final k:Landroid/os/Handler;

.field private final l:Lcom/google/android/location/fused/ae;

.field private final m:Lcom/google/android/location/fused/af;

.field private final n:Lcom/google/android/location/fused/ag;

.field private final o:Ljava/util/ArrayList;

.field private final p:Ljava/util/ArrayList;

.field private final q:Ljava/util/ArrayList;

.field private volatile r:Ljava/util/Collection;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Ljava/lang/Iterable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 71
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->a()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->a(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/fused/ad;->a:Lcom/google/android/gms/location/internal/LocationRequestInternal;

    .line 73
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->a()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->a(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->a(I)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/fused/ad;->b:Lcom/google/android/gms/location/internal/LocationRequestInternal;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/location/fused/a/e;Lcom/google/android/location/fused/a/k;Lcom/google/android/location/fused/a/p;Lcom/google/android/location/fused/a/j;Lcom/google/android/location/fused/a/i;Lcom/google/android/location/fused/a/a;Lcom/google/android/location/fused/a/f;Landroid/hardware/SensorManager;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/fused/ad;->o:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/fused/ad;->p:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/fused/ad;->q:Ljava/util/ArrayList;

    .line 104
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/fused/ad;->r:Ljava/util/Collection;

    .line 107
    iput-boolean v1, p0, Lcom/google/android/location/fused/ad;->s:Z

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/fused/ad;->t:Z

    .line 111
    iput-boolean v1, p0, Lcom/google/android/location/fused/ad;->u:Z

    .line 113
    iput-boolean v1, p0, Lcom/google/android/location/fused/ad;->v:Z

    .line 115
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/fused/ad;->w:Ljava/lang/Iterable;

    .line 128
    new-instance v0, Lcom/google/android/location/fused/ae;

    new-instance v1, Lcom/google/android/location/fused/a/n;

    invoke-static {p8}, Lcom/google/android/location/fused/ad;->a(Landroid/hardware/SensorManager;)Lcom/google/android/location/activity/az;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/location/fused/a/n;-><init>(Lcom/google/android/location/activity/az;)V

    new-instance v2, Lcom/google/android/location/fused/a/m;

    invoke-direct {v2}, Lcom/google/android/location/fused/a/m;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/location/fused/ae;-><init>(Lcom/google/android/location/fused/ad;Lcom/google/android/location/fused/a/n;Lcom/google/android/location/fused/a/m;)V

    iput-object v0, p0, Lcom/google/android/location/fused/ad;->l:Lcom/google/android/location/fused/ae;

    .line 131
    new-instance v0, Lcom/google/android/location/fused/af;

    new-instance v1, Lcom/google/android/location/fused/a/n;

    invoke-static {p8}, Lcom/google/android/location/fused/ad;->a(Landroid/hardware/SensorManager;)Lcom/google/android/location/activity/az;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/location/fused/a/n;-><init>(Lcom/google/android/location/activity/az;)V

    new-instance v2, Lcom/google/android/location/fused/a/m;

    invoke-direct {v2}, Lcom/google/android/location/fused/a/m;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/location/fused/af;-><init>(Lcom/google/android/location/fused/ad;Lcom/google/android/location/fused/a/n;Lcom/google/android/location/fused/a/m;)V

    iput-object v0, p0, Lcom/google/android/location/fused/ad;->m:Lcom/google/android/location/fused/af;

    .line 134
    new-instance v0, Lcom/google/android/location/fused/ag;

    new-instance v1, Lcom/google/android/location/fused/a/n;

    invoke-static {p8}, Lcom/google/android/location/fused/ad;->a(Landroid/hardware/SensorManager;)Lcom/google/android/location/activity/az;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/location/fused/a/n;-><init>(Lcom/google/android/location/activity/az;)V

    new-instance v2, Lcom/google/android/location/fused/a/m;

    invoke-direct {v2}, Lcom/google/android/location/fused/a/m;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/location/fused/ag;-><init>(Lcom/google/android/location/fused/ad;Lcom/google/android/location/fused/a/n;Lcom/google/android/location/fused/a/m;)V

    iput-object v0, p0, Lcom/google/android/location/fused/ad;->n:Lcom/google/android/location/fused/ag;

    .line 138
    iput-object p1, p0, Lcom/google/android/location/fused/ad;->c:Lcom/google/android/location/fused/a/e;

    .line 139
    iput-object p2, p0, Lcom/google/android/location/fused/ad;->d:Lcom/google/android/location/fused/a/k;

    .line 140
    iput-object p3, p0, Lcom/google/android/location/fused/ad;->e:Lcom/google/android/location/fused/a/p;

    .line 141
    iput-object p4, p0, Lcom/google/android/location/fused/ad;->f:Lcom/google/android/location/fused/a/j;

    .line 142
    iput-object p5, p0, Lcom/google/android/location/fused/ad;->g:Lcom/google/android/location/fused/a/i;

    .line 143
    iput-object p6, p0, Lcom/google/android/location/fused/ad;->h:Lcom/google/android/location/fused/a/a;

    .line 144
    iput-object p7, p0, Lcom/google/android/location/fused/ad;->i:Lcom/google/android/location/fused/a/f;

    .line 145
    iput-object p9, p0, Lcom/google/android/location/fused/ad;->j:Landroid/content/Context;

    .line 146
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/location/fused/ad;->k:Landroid/os/Handler;

    .line 147
    return-void
.end method

.method private static a(Landroid/hardware/SensorManager;)Lcom/google/android/location/activity/az;
    .locals 1

    .prologue
    .line 396
    const/16 v0, 0x12

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    new-instance v0, Lcom/google/android/location/activity/ab;

    invoke-direct {v0, p0}, Lcom/google/android/location/activity/ab;-><init>(Landroid/hardware/SensorManager;)V

    .line 400
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/location/activity/ak;

    invoke-direct {v0}, Lcom/google/android/location/activity/ak;-><init>()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/location/fused/ad;)Lcom/google/android/location/fused/a/e;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->c:Lcom/google/android/location/fused/a/e;

    return-object v0
.end method

.method private a(Z)V
    .locals 8

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 169
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 170
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 173
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->w:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/LocationRequestInternal;

    .line 174
    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/location/LocationRequest;->b()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 176
    :pswitch_1
    iget-object v2, p0, Lcom/google/android/location/fused/ad;->o:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v2, p0, Lcom/google/android/location/fused/ad;->p:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    :pswitch_2
    iget-object v2, p0, Lcom/google/android/location/fused/ad;->p:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    :pswitch_3
    iget-boolean v2, p0, Lcom/google/android/location/fused/ad;->t:Z

    if-eqz v2, :cond_0

    .line 184
    iget-object v2, p0, Lcom/google/android/location/fused/ad;->q:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    :cond_0
    new-instance v2, Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/location/LocationRequest;-><init>(Lcom/google/android/gms/location/LocationRequest;)V

    .line 190
    invoke-virtual {v2}, Lcom/google/android/gms/location/LocationRequest;->c()J

    move-result-wide v4

    const-wide/32 v6, 0x493e0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/location/LocationRequest;->a(J)Lcom/google/android/gms/location/LocationRequest;

    .line 192
    invoke-static {v2}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->b()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a(Z)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->d()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->c(Z)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->e()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a(Ljava/util/List;)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->c()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->b(Z)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-result-object v0

    .line 199
    iget-object v2, p0, Lcom/google/android/location/fused/ad;->p:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 205
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/location/fused/ad;->s:Z

    if-eqz v0, :cond_2

    .line 207
    iget-boolean v0, p0, Lcom/google/android/location/fused/ad;->t:Z

    if-eqz v0, :cond_4

    .line 208
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->q:Ljava/util/ArrayList;

    sget-object v1, Lcom/google/android/location/fused/ad;->a:Lcom/google/android/gms/location/internal/LocationRequestInternal;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/location/fused/ad;->v:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/location/fused/ad;->w:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->o:Ljava/util/ArrayList;

    sget-object v1, Lcom/google/android/location/fused/ad;->b:Lcom/google/android/gms/location/internal/LocationRequestInternal;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->p:Ljava/util/ArrayList;

    sget-object v1, Lcom/google/android/location/fused/ad;->b:Lcom/google/android/gms/location/internal/LocationRequestInternal;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->o:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/android/location/fused/av;->a(Ljava/util/Collection;)Lcom/google/android/location/fused/av;

    move-result-object v1

    .line 224
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->p:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/android/location/fused/av;->a(Ljava/util/Collection;)Lcom/google/android/location/fused/av;

    move-result-object v2

    .line 226
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->q:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/android/location/fused/av;->a(Ljava/util/Collection;)Lcom/google/android/location/fused/av;

    move-result-object v0

    .line 229
    invoke-virtual {v0, v2}, Lcom/google/android/location/fused/av;->a(Lcom/google/android/location/fused/av;)Lcom/google/android/location/fused/av;

    move-result-object v3

    .line 230
    iget-wide v4, v1, Lcom/google/android/location/fused/av;->b:J

    iget-wide v6, v2, Lcom/google/android/location/fused/av;->b:J

    cmp-long v0, v4, v6

    if-gtz v0, :cond_5

    iget-wide v4, v1, Lcom/google/android/location/fused/av;->b:J

    iget-wide v6, v3, Lcom/google/android/location/fused/av;->b:J

    cmp-long v0, v4, v6

    if-gtz v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/location/fused/ad;->u:Z

    .line 232
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->l:Lcom/google/android/location/fused/ae;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/location/fused/ae;->a(Lcom/google/android/location/fused/av;Z)V

    .line 233
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->m:Lcom/google/android/location/fused/af;

    invoke-virtual {v0, v2, p1}, Lcom/google/android/location/fused/af;->a(Lcom/google/android/location/fused/av;Z)V

    .line 234
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->n:Lcom/google/android/location/fused/ag;

    invoke-virtual {v0, v3, p1}, Lcom/google/android/location/fused/ag;->a(Lcom/google/android/location/fused/av;Z)V

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v2, Lcom/google/android/location/fused/av;->f:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v4, v3, Lcom/google/android/location/fused/av;->f:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    add-int/2addr v1, v4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 240
    iget-object v1, v2, Lcom/google/android/location/fused/av;->f:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 241
    iget-object v1, v3, Lcom/google/android/location/fused/av;->f:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 242
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/fused/ad;->r:Ljava/util/Collection;

    .line 243
    return-void

    .line 210
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->p:Ljava/util/ArrayList;

    sget-object v1, Lcom/google/android/location/fused/ad;->a:Lcom/google/android/gms/location/internal/LocationRequestInternal;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 230
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic b(Lcom/google/android/location/fused/ad;)Lcom/google/android/location/fused/a/a;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->h:Lcom/google/android/location/fused/a/a;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/location/fused/ad;)Lcom/google/android/location/fused/a/p;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->e:Lcom/google/android/location/fused/a/p;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/location/fused/ad;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/google/android/location/fused/ad;->u:Z

    return v0
.end method

.method static synthetic e(Lcom/google/android/location/fused/ad;)Lcom/google/android/location/fused/a/j;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->f:Lcom/google/android/location/fused/a/j;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/location/fused/ad;)Lcom/google/android/location/fused/a/i;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->g:Lcom/google/android/location/fused/a/i;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->r:Ljava/util/Collection;

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->l:Lcom/google/android/location/fused/ae;

    invoke-virtual {v0, p1}, Lcom/google/android/location/fused/ae;->a(I)V

    .line 308
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->m:Lcom/google/android/location/fused/af;

    invoke-virtual {v0, p1}, Lcom/google/android/location/fused/af;->a(I)V

    .line 309
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->n:Lcom/google/android/location/fused/ag;

    invoke-virtual {v0, p1}, Lcom/google/android/location/fused/ag;->a(I)V

    .line 310
    return-void
.end method

.method public final a(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->l:Lcom/google/android/location/fused/ae;

    invoke-virtual {v0, p1}, Lcom/google/android/location/fused/ae;->a(Landroid/location/Location;)V

    .line 345
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->m:Lcom/google/android/location/fused/af;

    invoke-virtual {v0, p1}, Lcom/google/android/location/fused/af;->a(Landroid/location/Location;)V

    .line 346
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->n:Lcom/google/android/location/fused/ag;

    invoke-virtual {v0, p1}, Lcom/google/android/location/fused/ag;->a(Landroid/location/Location;)V

    .line 348
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->i:Lcom/google/android/location/fused/a/f;

    invoke-virtual {v0}, Lcom/google/android/location/fused/a/f;->b()V

    .line 349
    return-void
.end method

.method public final a(Lcom/google/android/location/fused/bf;)V
    .locals 2

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/google/android/location/fused/ad;->t:Z

    .line 276
    invoke-virtual {p1}, Lcom/google/android/location/fused/bf;->c()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/location/fused/ad;->t:Z

    .line 277
    iget-boolean v1, p0, Lcom/google/android/location/fused/ad;->t:Z

    if-eq v1, v0, :cond_0

    .line 278
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/location/fused/ad;->a(Z)V

    .line 281
    :cond_0
    return-void
.end method

.method final a(Ljava/io/PrintWriter;)V
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/google/android/location/fused/ad;->s:Z

    if-eqz v0, :cond_0

    .line 356
    const-string v0, "Fused Location Provider Is Primed"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    :goto_0
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->c:Lcom/google/android/location/fused/a/e;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 362
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->d:Lcom/google/android/location/fused/a/k;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 363
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->e:Lcom/google/android/location/fused/a/p;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 364
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->f:Lcom/google/android/location/fused/a/j;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 365
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->g:Lcom/google/android/location/fused/a/i;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 366
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->h:Lcom/google/android/location/fused/a/a;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 367
    return-void

    .line 358
    :cond_0
    const-string v0, "Fused Location Provider Is Not Primed"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Iterable;Z)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/android/location/fused/ad;->w:Ljava/lang/Iterable;

    .line 158
    invoke-direct {p0, p2}, Lcom/google/android/location/fused/ad;->a(Z)V

    .line 159
    return-void
.end method

.method public final a(ZZ)V
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/google/android/location/fused/ad;->s:Z

    if-eq v0, p1, :cond_0

    .line 265
    iput-boolean p1, p0, Lcom/google/android/location/fused/ad;->s:Z

    .line 266
    invoke-direct {p0, p2}, Lcom/google/android/location/fused/ad;->a(Z)V

    .line 268
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->l:Lcom/google/android/location/fused/ae;

    iget-object v0, v0, Lcom/google/android/location/fused/bg;->f:Lcom/google/android/location/fused/bl;

    invoke-virtual {v0}, Lcom/google/android/location/fused/bl;->a()V

    .line 374
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->m:Lcom/google/android/location/fused/af;

    iget-object v0, v0, Lcom/google/android/location/fused/bg;->f:Lcom/google/android/location/fused/bl;

    invoke-virtual {v0}, Lcom/google/android/location/fused/bl;->a()V

    .line 375
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->n:Lcom/google/android/location/fused/ag;

    iget-object v0, v0, Lcom/google/android/location/fused/bg;->f:Lcom/google/android/location/fused/bl;

    invoke-virtual {v0}, Lcom/google/android/location/fused/bl;->a()V

    .line 376
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->d:Lcom/google/android/location/fused/a/k;

    invoke-virtual {v0}, Lcom/google/android/location/fused/a/k;->e()V

    .line 377
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 378
    const-string v1, "com.google.android.location.internal.server.ACTION_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 379
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Lcom/google/android/location/fused/ad;->j:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/location/fused/ad;->k:Landroid/os/Handler;

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 381
    return-void
.end method

.method public final b(ZZ)V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->i:Lcom/google/android/location/fused/a/f;

    invoke-virtual {v0, p1}, Lcom/google/android/location/fused/a/f;->a(Z)V

    .line 288
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->i:Lcom/google/android/location/fused/a/f;

    invoke-virtual {v0}, Lcom/google/android/location/fused/a/f;->g()V

    .line 290
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->c:Lcom/google/android/location/fused/a/e;

    invoke-virtual {v0, p1}, Lcom/google/android/location/fused/a/e;->a(Z)V

    .line 291
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->c:Lcom/google/android/location/fused/a/e;

    invoke-virtual {v0}, Lcom/google/android/location/fused/a/e;->g()V

    .line 293
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->f:Lcom/google/android/location/fused/a/j;

    invoke-virtual {v0, p2}, Lcom/google/android/location/fused/a/j;->a(Z)V

    .line 294
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->f:Lcom/google/android/location/fused/a/j;

    invoke-virtual {v0}, Lcom/google/android/location/fused/a/j;->g()V

    .line 296
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->g:Lcom/google/android/location/fused/a/i;

    invoke-virtual {v0, p2}, Lcom/google/android/location/fused/a/i;->a(Z)V

    .line 297
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->g:Lcom/google/android/location/fused/a/i;

    invoke-virtual {v0}, Lcom/google/android/location/fused/a/i;->g()V

    .line 298
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->l:Lcom/google/android/location/fused/ae;

    iget-object v0, v0, Lcom/google/android/location/fused/bg;->f:Lcom/google/android/location/fused/bl;

    invoke-virtual {v0}, Lcom/google/android/location/fused/bl;->g()V

    .line 388
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->m:Lcom/google/android/location/fused/af;

    iget-object v0, v0, Lcom/google/android/location/fused/bg;->f:Lcom/google/android/location/fused/bl;

    invoke-virtual {v0}, Lcom/google/android/location/fused/bl;->g()V

    .line 389
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->n:Lcom/google/android/location/fused/ag;

    iget-object v0, v0, Lcom/google/android/location/fused/bg;->f:Lcom/google/android/location/fused/bl;

    invoke-virtual {v0}, Lcom/google/android/location/fused/bl;->g()V

    .line 390
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->d:Lcom/google/android/location/fused/a/k;

    invoke-virtual {v0}, Lcom/google/android/location/fused/a/k;->f()V

    .line 391
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->j:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 392
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 405
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 406
    const-string v1, "status"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 407
    const-string v1, "plugged"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 409
    const-string v1, "level"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 410
    const-string v1, "scale"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 411
    const/high16 v1, -0x40800000    # -1.0f

    .line 412
    if-ltz v4, :cond_1

    if-lez v5, :cond_1

    .line 413
    int-to-float v1, v4

    int-to-float v4, v5

    div-float/2addr v1, v4

    .line 414
    cmpg-float v4, v1, v2

    if-gez v4, :cond_0

    move v1, v2

    .line 417
    :cond_0
    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    move v1, v0

    .line 422
    :cond_1
    iget-boolean v2, p0, Lcom/google/android/location/fused/ad;->v:Z

    iput-boolean v6, p0, Lcom/google/android/location/fused/ad;->v:Z

    packed-switch v3, :pswitch_data_0

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/location/fused/ad;->v:Z

    if-eq v0, v2, :cond_3

    invoke-direct {p0, v6}, Lcom/google/android/location/fused/ad;->a(Z)V

    .line 428
    :cond_3
    :goto_1
    return-void

    .line 422
    :pswitch_0
    sget-object v0, Lcom/google/android/location/x;->z:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/fused/ad;->v:Z

    goto :goto_0

    .line 423
    :cond_4
    const-string v0, "com.google.android.location.internal.server.ACTION_RESTARTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 425
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->f:Lcom/google/android/location/fused/a/j;

    invoke-virtual {v0}, Lcom/google/android/location/fused/a/j;->c()V

    .line 426
    iget-object v0, p0, Lcom/google/android/location/fused/ad;->g:Lcom/google/android/location/fused/a/i;

    invoke-virtual {v0}, Lcom/google/android/location/fused/a/i;->c()V

    goto :goto_1

    .line 422
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
