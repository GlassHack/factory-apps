.class final Lcom/google/android/gms/analytics/service/e;
.super Lcom/google/android/gms/analytics/internal/o;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/service/AnalyticsService;

.field private final b:Lcom/google/android/gms/analytics/service/h;

.field private final c:Ljava/util/Map;

.field private final d:Ljava/util/Map;

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/service/AnalyticsService;Lcom/google/android/gms/analytics/service/h;)V
    .locals 2

    .prologue
    .line 337
    iput-object p1, p0, Lcom/google/android/gms/analytics/service/e;->a:Lcom/google/android/gms/analytics/service/AnalyticsService;

    invoke-direct {p0}, Lcom/google/android/gms/analytics/internal/o;-><init>()V

    .line 338
    invoke-static {p1}, Lcom/google/android/gms/analytics/service/AnalyticsService;->a(Lcom/google/android/gms/analytics/service/AnalyticsService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/analytics/service/AnalyticsService;->a:Ljava/lang/String;

    const-string v1, "new AnalyticsStub Created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/analytics/service/e;->b:Lcom/google/android/gms/analytics/service/h;

    .line 340
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/service/e;->c:Ljava/util/Map;

    .line 341
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/service/e;->d:Ljava/util/Map;

    .line 342
    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 435
    const-string v0, "name should be non-null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    const-string v0, ""

    .line 437
    invoke-static {p1}, Lcom/google/android/gms/analytics/internal/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 438
    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 439
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 441
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/android/gms/analytics/service/e;->a:Lcom/google/android/gms/analytics/service/AnalyticsService;

    invoke-static {v0}, Lcom/google/android/gms/analytics/service/AnalyticsService;->a(Lcom/google/android/gms/analytics/service/AnalyticsService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/service/e;->a:Lcom/google/android/gms/analytics/service/AnalyticsService;

    iget-object v0, v0, Lcom/google/android/gms/analytics/service/AnalyticsService;->a:Ljava/lang/String;

    const-string v1, "clearHits call received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 357
    iget-object v1, p0, Lcom/google/android/gms/analytics/service/e;->b:Lcom/google/android/gms/analytics/service/h;

    new-instance v2, Lcom/google/android/gms/analytics/service/f;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/analytics/service/f;-><init>(Lcom/google/android/gms/analytics/service/e;I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/service/h;->a(Ljava/lang/Runnable;)V

    .line 363
    return-void
.end method

.method public final a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    .locals 12

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/android/gms/analytics/service/e;->a:Lcom/google/android/gms/analytics/service/AnalyticsService;

    invoke-static {v0}, Lcom/google/android/gms/analytics/service/AnalyticsService;->a(Lcom/google/android/gms/analytics/service/AnalyticsService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/service/e;->a:Lcom/google/android/gms/analytics/service/AnalyticsService;

    iget-object v0, v0, Lcom/google/android/gms/analytics/service/AnalyticsService;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendHit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 374
    if-gtz v3, :cond_1

    .line 375
    iget-object v0, p0, Lcom/google/android/gms/analytics/service/e;->a:Lcom/google/android/gms/analytics/service/AnalyticsService;

    iget-object v0, v0, Lcom/google/android/gms/analytics/service/AnalyticsService;->a:Ljava/lang/String;

    const-string v1, "Invalid Android App UID."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_1
    const-string v0, "&tid"

    invoke-static {p1, v0}, Lcom/google/android/gms/analytics/service/e;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 379
    const-string v0, "&t"

    invoke-static {p1, v0}, Lcom/google/android/gms/analytics/service/e;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 387
    const/4 v2, 0x0

    .line 388
    const/4 v1, 0x0

    .line 389
    if-eqz p5, :cond_12

    .line 390
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/internal/Command;

    .line 391
    const-string v7, "appendVersion"

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/Command;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 392
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/Command;->b()Ljava/lang/String;

    move-result-object v0

    .line 393
    const-string v1, "ma1b3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ma1b2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 394
    :cond_2
    const/4 v1, 0x1

    move-object v2, v0

    move v0, v1

    .line 400
    :goto_1
    if-eqz v0, :cond_b

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v1, "transaction"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "tran"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "trans"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "item"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_b

    .line 423
    :goto_3
    return-void

    :cond_4
    move-object v0, v1

    :cond_5
    move-object v1, v0

    .line 398
    goto :goto_0

    .line 400
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/analytics/service/e;->c:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/analytics/service/e;->c:Ljava/util/Map;

    sget-object v0, Lcom/google/android/gms/analytics/internal/k;->c:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-float v0, v8

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/analytics/service/e;->d:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/analytics/service/e;->d:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/analytics/service/e;->c:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sget-object v0, Lcom/google/android/gms/analytics/internal/k;->c:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-float v0, v8

    cmpg-float v0, v1, v0

    if-gez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/analytics/service/e;->d:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long v8, v10, v8

    long-to-float v0, v8

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float v5, v0, v5

    sget-object v0, Lcom/google/android/gms/analytics/internal/k;->d:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v5

    const/4 v5, 0x0

    cmpl-float v5, v0, v5

    if-lez v5, :cond_10

    add-float/2addr v1, v0

    sget-object v0, Lcom/google/android/gms/analytics/internal/k;->c:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-float v0, v8

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/service/e;->d:Ljava/util/Map;

    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_9

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/analytics/service/e;->c:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/analytics/service/e;->c:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/analytics/service/e;->a:Lcom/google/android/gms/analytics/service/AnalyticsService;

    invoke-static {v0}, Lcom/google/android/gms/analytics/service/AnalyticsService;->a(Lcom/google/android/gms/analytics/service/AnalyticsService;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/analytics/service/e;->a:Lcom/google/android/gms/analytics/service/AnalyticsService;

    iget-object v0, v0, Lcom/google/android/gms/analytics/service/AnalyticsService;->a:Ljava/lang/String;

    const-string v1, "Hit not sent because hit rate limit exceeded."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 405
    :cond_b
    if-eqz v2, :cond_e

    const-string v0, "ma4.0.0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "ma4.0.1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const-string v0, "&adid"

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    :cond_d
    :goto_5
    iget-object v0, p0, Lcom/google/android/gms/analytics/service/e;->a:Lcom/google/android/gms/analytics/service/AnalyticsService;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/u;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/internal/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/u;->a()V

    .line 408
    const-string v0, "AppUID"

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    iget-object v0, p0, Lcom/google/android/gms/analytics/service/e;->b:Lcom/google/android/gms/analytics/service/h;

    new-instance v1, Lcom/google/android/gms/analytics/service/g;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/analytics/service/g;-><init>(Lcom/google/android/gms/analytics/service/e;Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/service/h;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    .line 405
    :cond_e
    sget-object v0, Lcom/google/android/gms/analytics/internal/k;->x:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "&adid"

    invoke-static {p1, v0}, Lcom/google/android/gms/analytics/service/e;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "&adid"

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/analytics/service/e;->a:Lcom/google/android/gms/analytics/service/AnalyticsService;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/service/AnalyticsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/service/e;->e:Ljava/lang/String;

    if-nez v1, :cond_f

    iget-boolean v1, p0, Lcom/google/android/gms/analytics/service/e;->f:Z

    if-nez v1, :cond_f

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/service/e;->e:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/service/e;->f:Z

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/analytics/service/e;->e:Ljava/lang/String;

    const-string v1, "&adsig"

    invoke-static {v1}, Lcom/google/android/gms/analytics/internal/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_10
    move v0, v1

    goto/16 :goto_4

    :cond_11
    move v0, v2

    move-object v2, v1

    goto/16 :goto_1

    :cond_12
    move v0, v2

    move-object v2, v1

    goto/16 :goto_1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/android/gms/analytics/service/e;->a:Lcom/google/android/gms/analytics/service/AnalyticsService;

    invoke-static {v0}, Lcom/google/android/gms/analytics/service/AnalyticsService;->b(Lcom/google/android/gms/analytics/service/AnalyticsService;)Lcom/google/android/gms/analytics/internal/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/analytics/internal/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
