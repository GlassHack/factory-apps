.class public final Lcom/google/android/gms/analytics/bo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/analytics/bp;

.field b:Lcom/google/android/gms/analytics/bq;

.field private final c:Lcom/google/android/gms/analytics/br;

.field private d:Landroid/content/Context;

.field private final e:Ljava/util/Map;

.field private f:Lcom/google/android/gms/analytics/bi;

.field private final g:Lcom/google/android/gms/analytics/k;

.field private final h:Lcom/google/android/gms/analytics/bj;

.field private final i:Lcom/google/android/gms/analytics/j;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/analytics/br;Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 125
    invoke-static {}, Lcom/google/android/gms/analytics/k;->a()Lcom/google/android/gms/analytics/k;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/analytics/bj;->a()Lcom/google/android/gms/analytics/bj;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/analytics/j;->a()Lcom/google/android/gms/analytics/j;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/analytics/bc;

    const-string v0, "tracking"

    const/4 v1, 0x0

    invoke-direct {v6, v0, v1}, Lcom/google/android/gms/analytics/bc;-><init>(Ljava/lang/String;B)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/analytics/bo;-><init>(Ljava/lang/String;Lcom/google/android/gms/analytics/br;Lcom/google/android/gms/analytics/k;Lcom/google/android/gms/analytics/bj;Lcom/google/android/gms/analytics/j;Lcom/google/android/gms/analytics/bi;Landroid/content/Context;)V

    .line 129
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/android/gms/analytics/br;Lcom/google/android/gms/analytics/k;Lcom/google/android/gms/analytics/bj;Lcom/google/android/gms/analytics/j;Lcom/google/android/gms/analytics/bi;Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/bo;->e:Ljava/util/Map;

    .line 137
    iput-object p2, p0, Lcom/google/android/gms/analytics/bo;->c:Lcom/google/android/gms/analytics/br;

    .line 138
    if-eqz p7, :cond_0

    .line 139
    invoke-virtual {p7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/bo;->d:Landroid/content/Context;

    .line 141
    :cond_0
    if-eqz p1, :cond_1

    .line 142
    iget-object v0, p0, Lcom/google/android/gms/analytics/bo;->e:Ljava/util/Map;

    const-string v1, "&tid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/bo;->e:Ljava/util/Map;

    const-string v1, "useSecure"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iput-object p3, p0, Lcom/google/android/gms/analytics/bo;->g:Lcom/google/android/gms/analytics/k;

    .line 149
    iput-object p4, p0, Lcom/google/android/gms/analytics/bo;->h:Lcom/google/android/gms/analytics/bj;

    .line 150
    iput-object p5, p0, Lcom/google/android/gms/analytics/bo;->i:Lcom/google/android/gms/analytics/j;

    .line 153
    iget-object v0, p0, Lcom/google/android/gms/analytics/bo;->e:Ljava/util/Map;

    const-string v1, "&a"

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iput-object p6, p0, Lcom/google/android/gms/analytics/bo;->f:Lcom/google/android/gms/analytics/bi;

    .line 158
    new-instance v0, Lcom/google/android/gms/analytics/bp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/bp;-><init>(Lcom/google/android/gms/analytics/bo;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/bo;->a:Lcom/google/android/gms/analytics/bp;

    .line 160
    iget-object v0, p0, Lcom/google/android/gms/analytics/bo;->e:Ljava/util/Map;

    const-string v1, "&ate"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/analytics/bo;->e:Ljava/util/Map;

    const-string v1, "&adid"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    return-void
.end method


# virtual methods
.method public final a(D)V
    .locals 3

    .prologue
    .line 402
    const-string v0, "&sf"

    invoke-static {p1, p2}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/bo;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 379
    const-string v0, "Key should be non-null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    invoke-static {}, Lcom/google/android/gms/analytics/ak;->a()Lcom/google/android/gms/analytics/ak;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/al;->k:Lcom/google/android/gms/analytics/al;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/ak;->a(Lcom/google/android/gms/analytics/al;)V

    .line 381
    iget-object v0, p0, Lcom/google/android/gms/analytics/bo;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 276
    invoke-static {}, Lcom/google/android/gms/analytics/ak;->a()Lcom/google/android/gms/analytics/ak;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/analytics/al;->l:Lcom/google/android/gms/analytics/al;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/ak;->a(Lcom/google/android/gms/analytics/al;)V

    .line 277
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 278
    iget-object v0, p0, Lcom/google/android/gms/analytics/bo;->e:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 279
    if-eqz p1, :cond_0

    .line 280
    invoke-interface {v2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 283
    :cond_0
    const-string v0, "&tid"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    const-string v0, "Missing tracking id (%s) parameter."

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "&tid"

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V

    .line 287
    :cond_1
    const-string v0, "&t"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 288
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 289
    const-string v0, "Missing hit type (%s) parameter."

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "&t"

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V

    .line 290
    const-string v0, ""

    .line 293
    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/analytics/bo;->a:Lcom/google/android/gms/analytics/bp;

    iget-boolean v4, v3, Lcom/google/android/gms/analytics/bp;->c:Z

    iput-boolean v5, v3, Lcom/google/android/gms/analytics/bp;->c:Z

    if-eqz v4, :cond_3

    .line 294
    const-string v3, "&sc"

    const-string v4, "start"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 298
    const-string v0, "screenview"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "pageview"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "appview"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 302
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/analytics/bo;->e:Ljava/util/Map;

    const-string v4, "&a"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 303
    add-int/lit8 v0, v0, 0x1

    .line 304
    const v4, 0x7fffffff

    if-lt v0, v4, :cond_5

    move v0, v1

    .line 305
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/analytics/bo;->e:Ljava/util/Map;

    const-string v4, "&a"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    :cond_6
    const-string v0, "transaction"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "item"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/analytics/bo;->f:Lcom/google/android/gms/analytics/bi;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/bi;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 312
    const-string v0, "Too many hits sent too quickly, rate limiting invoked."

    invoke-static {v0}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V

    .line 316
    :goto_0
    return-void

    .line 314
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/analytics/bo;->c:Lcom/google/android/gms/analytics/br;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/br;->a(Ljava/util/Map;)V

    goto :goto_0
.end method
