.class public final Lcom/google/android/location/fused/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/fused/ap;
.implements Lcom/google/android/location/fused/bo;
.implements Lcom/google/android/location/fused/service/b;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private a:Ljava/util/Collection;

.field private final b:Ljava/util/ArrayList;

.field private final c:Ljava/util/ArrayList;

.field private final d:Ljava/util/ArrayList;

.field private final e:Lcom/google/android/location/fused/a/c;

.field private final f:Lcom/google/android/location/fused/a/c;

.field private final g:Lcom/google/android/location/fused/a/c;

.field private final h:Lcom/google/android/location/fused/bm;

.field private final i:Lcom/google/android/gms/common/util/i;

.field private final j:Lcom/google/android/location/fused/aq;

.field private k:Lcom/google/android/location/fused/ao;

.field private l:J

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/location/fused/aq;)V
    .locals 7

    .prologue
    .line 79
    new-instance v4, Lcom/google/android/location/fused/bm;

    invoke-direct {v4, p1, p2}, Lcom/google/android/location/fused/bm;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    invoke-static {}, Lcom/google/android/gms/common/util/j;->c()Lcom/google/android/gms/common/util/i;

    move-result-object v5

    invoke-static {p2}, Lcom/google/android/location/fused/service/a;->a(Landroid/os/Looper;)Lcom/google/android/location/fused/service/a;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/location/fused/d;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/location/fused/aq;Lcom/google/android/location/fused/bm;Lcom/google/android/gms/common/util/i;Lcom/google/android/location/fused/service/a;)V

    .line 86
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/location/fused/aq;Lcom/google/android/location/fused/bm;Lcom/google/android/gms/common/util/i;Lcom/google/android/location/fused/service/a;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/fused/d;->a:Ljava/util/Collection;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/fused/d;->b:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/fused/d;->c:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/fused/d;->d:Ljava/util/ArrayList;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/fused/d;->k:Lcom/google/android/location/fused/ao;

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/fused/d;->l:J

    .line 70
    iput-boolean v7, p0, Lcom/google/android/location/fused/d;->m:Z

    .line 95
    invoke-virtual {p6, p0}, Lcom/google/android/location/fused/service/a;->a(Lcom/google/android/location/fused/service/b;)V

    .line 97
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/16 v1, 0x13

    invoke-static {v1}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v4, Lcom/google/android/location/o/d;

    invoke-direct {v4, v0}, Lcom/google/android/location/o/d;-><init>(Landroid/app/AlarmManager;)V

    .line 99
    :goto_0
    new-instance v0, Lcom/google/android/location/fused/a/c;

    const/4 v2, 0x1

    move-object v1, p6

    move-object v3, p1

    move-object v5, p5

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/location/fused/a/c;-><init>(Lcom/google/android/location/fused/service/a;ILandroid/content/Context;Lcom/google/android/location/o/c;Lcom/google/android/gms/common/util/i;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/location/fused/d;->e:Lcom/google/android/location/fused/a/c;

    .line 101
    iget-object v0, p0, Lcom/google/android/location/fused/d;->e:Lcom/google/android/location/fused/a/c;

    invoke-virtual {v0}, Lcom/google/android/location/fused/a/c;->b()V

    .line 102
    new-instance v0, Lcom/google/android/location/fused/a/c;

    const/4 v2, 0x2

    move-object v1, p6

    move-object v3, p1

    move-object v5, p5

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/location/fused/a/c;-><init>(Lcom/google/android/location/fused/service/a;ILandroid/content/Context;Lcom/google/android/location/o/c;Lcom/google/android/gms/common/util/i;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/location/fused/d;->f:Lcom/google/android/location/fused/a/c;

    .line 104
    iget-object v0, p0, Lcom/google/android/location/fused/d;->f:Lcom/google/android/location/fused/a/c;

    invoke-virtual {v0}, Lcom/google/android/location/fused/a/c;->b()V

    .line 105
    new-instance v0, Lcom/google/android/location/fused/a/c;

    const/4 v2, 0x3

    move-object v1, p6

    move-object v3, p1

    move-object v5, p5

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/location/fused/a/c;-><init>(Lcom/google/android/location/fused/service/a;ILandroid/content/Context;Lcom/google/android/location/o/c;Lcom/google/android/gms/common/util/i;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/location/fused/d;->g:Lcom/google/android/location/fused/a/c;

    .line 107
    iget-object v0, p0, Lcom/google/android/location/fused/d;->g:Lcom/google/android/location/fused/a/c;

    invoke-virtual {v0}, Lcom/google/android/location/fused/a/c;->b()V

    .line 108
    iput-object p4, p0, Lcom/google/android/location/fused/d;->h:Lcom/google/android/location/fused/bm;

    .line 109
    iget-object v0, p0, Lcom/google/android/location/fused/d;->h:Lcom/google/android/location/fused/bm;

    iput-object p0, v0, Lcom/google/android/location/fused/bm;->a:Lcom/google/android/location/fused/bo;

    .line 110
    new-instance v0, Lcom/google/android/location/fused/ao;

    new-instance v1, Lcom/google/android/location/fused/c;

    invoke-direct {v1}, Lcom/google/android/location/fused/c;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/location/fused/ao;-><init>(Lcom/google/android/location/fused/c;)V

    iput-object v0, p0, Lcom/google/android/location/fused/d;->k:Lcom/google/android/location/fused/ao;

    .line 111
    iput-object p5, p0, Lcom/google/android/location/fused/d;->i:Lcom/google/android/gms/common/util/i;

    .line 112
    iput-object p3, p0, Lcom/google/android/location/fused/d;->j:Lcom/google/android/location/fused/aq;

    .line 114
    iget-object v0, p0, Lcom/google/android/location/fused/d;->e:Lcom/google/android/location/fused/a/c;

    invoke-virtual {v0, v7}, Lcom/google/android/location/fused/a/c;->a(Z)V

    .line 115
    iget-object v0, p0, Lcom/google/android/location/fused/d;->f:Lcom/google/android/location/fused/a/c;

    invoke-virtual {v0, v7}, Lcom/google/android/location/fused/a/c;->a(Z)V

    .line 116
    iget-object v0, p0, Lcom/google/android/location/fused/d;->g:Lcom/google/android/location/fused/a/c;

    invoke-virtual {v0, v7}, Lcom/google/android/location/fused/a/c;->a(Z)V

    .line 117
    return-void

    .line 97
    :cond_0
    new-instance v4, Lcom/google/android/location/o/e;

    invoke-direct {v4, v0}, Lcom/google/android/location/o/e;-><init>(Landroid/app/AlarmManager;)V

    goto :goto_0
.end method

.method private static a(Lcom/google/android/location/fused/av;Lcom/google/android/location/fused/a/c;)V
    .locals 4

    .prologue
    .line 311
    iget-wide v0, p0, Lcom/google/android/location/fused/av;->b:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 312
    iget-wide v0, p0, Lcom/google/android/location/fused/av;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/location/fused/a/c;->a(J)V

    .line 313
    iget-wide v0, p0, Lcom/google/android/location/fused/av;->d:J

    iget-wide v2, p1, Lcom/google/android/location/fused/a/b;->a:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    iput-wide v0, p1, Lcom/google/android/location/fused/a/b;->a:J

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/android/location/fused/a/l;->k:Z

    .line 314
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/location/fused/a/c;->e()V

    .line 318
    :goto_0
    return-void

    .line 316
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/location/fused/a/c;->f()V

    goto :goto_0
.end method

.method private f()V
    .locals 6

    .prologue
    .line 151
    iget-object v1, p0, Lcom/google/android/location/fused/d;->b:Ljava/util/ArrayList;

    .line 152
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 153
    iget-object v2, p0, Lcom/google/android/location/fused/d;->c:Ljava/util/ArrayList;

    .line 154
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 155
    iget-object v3, p0, Lcom/google/android/location/fused/d;->d:Ljava/util/ArrayList;

    .line 156
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 158
    iget-object v0, p0, Lcom/google/android/location/fused/d;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/internal/LocationRequestInternal;

    .line 159
    invoke-virtual {v0}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->a()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/location/LocationRequest;->b()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 161
    :pswitch_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    :pswitch_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 167
    :pswitch_3
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 172
    :cond_0
    invoke-static {v1}, Lcom/google/android/location/fused/av;->a(Ljava/util/Collection;)Lcom/google/android/location/fused/av;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/fused/d;->e:Lcom/google/android/location/fused/a/c;

    invoke-static {v0, v1}, Lcom/google/android/location/fused/d;->a(Lcom/google/android/location/fused/av;Lcom/google/android/location/fused/a/c;)V

    .line 176
    invoke-static {v2}, Lcom/google/android/location/fused/av;->a(Ljava/util/Collection;)Lcom/google/android/location/fused/av;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/fused/d;->f:Lcom/google/android/location/fused/a/c;

    invoke-static {v0, v1}, Lcom/google/android/location/fused/d;->a(Lcom/google/android/location/fused/av;Lcom/google/android/location/fused/a/c;)V

    .line 180
    invoke-static {v3}, Lcom/google/android/location/fused/av;->a(Ljava/util/Collection;)Lcom/google/android/location/fused/av;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/fused/d;->g:Lcom/google/android/location/fused/a/c;

    invoke-static {v0, v1}, Lcom/google/android/location/fused/d;->a(Lcom/google/android/location/fused/av;Lcom/google/android/location/fused/a/c;)V

    .line 184
    return-void

    .line 159
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


# virtual methods
.method public final a(Z)Landroid/location/Location;
    .locals 1

    .prologue
    .line 202
    if-eqz p1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/google/android/location/fused/d;->k:Lcom/google/android/location/fused/ao;

    invoke-virtual {v0}, Lcom/google/android/location/fused/ao;->a()Landroid/location/Location;

    move-result-object v0

    .line 206
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/location/fused/d;->k:Lcom/google/android/location/fused/ao;

    iget-object v0, v0, Lcom/google/android/location/fused/ao;->b:Landroid/location/Location;

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 121
    iget-boolean v0, p0, Lcom/google/android/location/fused/d;->m:Z

    if-nez v0, :cond_0

    .line 122
    iput-boolean v1, p0, Lcom/google/android/location/fused/d;->m:Z

    .line 123
    iget-object v0, p0, Lcom/google/android/location/fused/d;->h:Lcom/google/android/location/fused/bm;

    invoke-virtual {v0}, Lcom/google/android/location/fused/bm;->a()V

    .line 124
    iget-object v0, p0, Lcom/google/android/location/fused/d;->e:Lcom/google/android/location/fused/a/c;

    invoke-virtual {v0, v1}, Lcom/google/android/location/fused/a/c;->a(Z)V

    .line 125
    iget-object v0, p0, Lcom/google/android/location/fused/d;->f:Lcom/google/android/location/fused/a/c;

    invoke-virtual {v0, v1}, Lcom/google/android/location/fused/a/c;->a(Z)V

    .line 126
    iget-object v0, p0, Lcom/google/android/location/fused/d;->g:Lcom/google/android/location/fused/a/c;

    invoke-virtual {v0, v1}, Lcom/google/android/location/fused/a/c;->a(Z)V

    .line 127
    invoke-direct {p0}, Lcom/google/android/location/fused/d;->f()V

    .line 129
    :cond_0
    return-void
.end method

.method public final a(Landroid/location/Location;I)V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public final a(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public final a(Ljava/util/Collection;Z)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/google/android/location/fused/d;->a:Ljava/util/Collection;

    .line 146
    invoke-direct {p0}, Lcom/google/android/location/fused/d;->f()V

    .line 147
    return-void
.end method

.method public final a(ZZ)V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/android/location/fused/d;->e:Lcom/google/android/location/fused/a/c;

    invoke-virtual {v0, p1}, Lcom/google/android/location/fused/a/c;->b_(Z)V

    .line 300
    iget-object v0, p0, Lcom/google/android/location/fused/d;->f:Lcom/google/android/location/fused/a/c;

    invoke-virtual {v0, p1}, Lcom/google/android/location/fused/a/c;->b_(Z)V

    .line 301
    iget-object v0, p0, Lcom/google/android/location/fused/d;->g:Lcom/google/android/location/fused/a/c;

    invoke-virtual {v0, p1}, Lcom/google/android/location/fused/a/c;->b_(Z)V

    .line 303
    iget-object v0, p0, Lcom/google/android/location/fused/d;->e:Lcom/google/android/location/fused/a/c;

    invoke-virtual {v0, p2}, Lcom/google/android/location/fused/a/c;->b(Z)V

    .line 304
    iget-object v0, p0, Lcom/google/android/location/fused/d;->f:Lcom/google/android/location/fused/a/c;

    invoke-virtual {v0, p2}, Lcom/google/android/location/fused/a/c;->b(Z)V

    .line 305
    iget-object v0, p0, Lcom/google/android/location/fused/d;->g:Lcom/google/android/location/fused/a/c;

    invoke-virtual {v0, p2}, Lcom/google/android/location/fused/a/c;->b(Z)V

    .line 306
    return-void
.end method

.method public final a([Landroid/location/Location;)V
    .locals 14

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/google/android/location/fused/d;->m:Z

    if-eqz v0, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/fused/d;->e:Lcom/google/android/location/fused/a/c;

    invoke-virtual {v0}, Lcom/google/android/location/fused/a/c;->c()V

    .line 227
    iget-object v0, p0, Lcom/google/android/location/fused/d;->f:Lcom/google/android/location/fused/a/c;

    invoke-virtual {v0}, Lcom/google/android/location/fused/a/c;->c()V

    .line 228
    iget-object v0, p0, Lcom/google/android/location/fused/d;->g:Lcom/google/android/location/fused/a/c;

    invoke-virtual {v0}, Lcom/google/android/location/fused/a/c;->c()V

    .line 234
    const/4 v4, 0x0

    .line 235
    const/4 v3, 0x0

    .line 236
    iget-object v0, p0, Lcom/google/android/location/fused/d;->i:Lcom/google/android/gms/common/util/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/i;->a()J

    move-result-wide v6

    .line 237
    iget-object v0, p0, Lcom/google/android/location/fused/d;->i:Lcom/google/android/gms/common/util/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/i;->b()J

    move-result-wide v8

    .line 238
    const/4 v2, 0x0

    .line 239
    const/4 v0, -0x1

    .line 240
    const/4 v1, 0x0

    move v5, v4

    move v4, v3

    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_4

    .line 241
    aget-object v3, p1, v1

    .line 242
    if-eqz v2, :cond_9

    .line 243
    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    cmp-long v2, v10, v12

    if-ltz v2, :cond_3

    .line 244
    add-int/lit8 v5, v5, 0x1

    move v2, v4

    move v4, v5

    .line 250
    :goto_2
    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/google/android/location/fused/d;->l:J

    cmp-long v5, v10, v12

    if-nez v5, :cond_2

    move v0, v1

    .line 253
    :cond_2
    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    sub-long/2addr v10, v6

    .line 254
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    add-long/2addr v10, v8

    invoke-virtual {v5, v10, v11}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    .line 256
    invoke-virtual {v3, v10, v11}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 257
    const-string v5, "fused_hardware"

    invoke-virtual {v3, v5}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 240
    add-int/lit8 v1, v1, 0x1

    move v5, v4

    move v4, v2

    move-object v2, v3

    goto :goto_1

    .line 246
    :cond_3
    add-int/lit8 v4, v4, 0x1

    move v2, v4

    move v4, v5

    goto :goto_2

    .line 264
    :cond_4
    if-le v4, v5, :cond_6

    .line 266
    const/4 v1, 0x0

    :goto_3
    array-length v2, p1

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_5

    .line 267
    aget-object v2, p1, v1

    .line 268
    array-length v3, p1

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    .line 269
    aget-object v4, p1, v3

    aput-object v4, p1, v1

    .line 270
    aput-object v2, p1, v3

    .line 266
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 272
    :cond_5
    if-ltz v0, :cond_6

    .line 273
    array-length v1, p1

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, -0x1

    .line 277
    :cond_6
    if-ltz v0, :cond_8

    .line 279
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    .line 284
    array-length v1, p1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    new-array v2, v1, [Landroid/location/Location;

    .line 285
    add-int/lit8 v1, v0, 0x1

    const/4 v0, 0x0

    :goto_4
    array-length v3, p1

    if-ge v1, v3, :cond_7

    .line 286
    aget-object v3, p1, v1

    aput-object v3, v2, v0

    .line 285
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    move-object p1, v2

    .line 289
    :cond_8
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/fused/d;->l:J

    .line 290
    iget-object v0, p0, Lcom/google/android/location/fused/d;->j:Lcom/google/android/location/fused/aq;

    invoke-interface {v0, p1}, Lcom/google/android/location/fused/aq;->a([Landroid/location/Location;)V

    goto/16 :goto_0

    :cond_9
    move v2, v4

    move v4, v5

    goto :goto_2
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    iget-boolean v0, p0, Lcom/google/android/location/fused/d;->m:Z

    if-eqz v0, :cond_0

    .line 134
    iput-boolean v1, p0, Lcom/google/android/location/fused/d;->m:Z

    .line 135
    iget-object v0, p0, Lcom/google/android/location/fused/d;->h:Lcom/google/android/location/fused/bm;

    invoke-virtual {v0}, Lcom/google/android/location/fused/bm;->b()V

    .line 136
    iget-object v0, p0, Lcom/google/android/location/fused/d;->e:Lcom/google/android/location/fused/a/c;

    invoke-virtual {v0, v1}, Lcom/google/android/location/fused/a/c;->a(Z)V

    .line 137
    iget-object v0, p0, Lcom/google/android/location/fused/d;->f:Lcom/google/android/location/fused/a/c;

    invoke-virtual {v0, v1}, Lcom/google/android/location/fused/a/c;->a(Z)V

    .line 138
    iget-object v0, p0, Lcom/google/android/location/fused/d;->g:Lcom/google/android/location/fused/a/c;

    invoke-virtual {v0, v1}, Lcom/google/android/location/fused/a/c;->a(Z)V

    .line 139
    invoke-direct {p0}, Lcom/google/android/location/fused/d;->f()V

    .line 141
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public final e()Lcom/google/android/location/o/k;
    .locals 2

    .prologue
    .line 216
    new-instance v0, Lcom/google/android/location/o/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/location/o/k;-><init>(I)V

    return-object v0
.end method
