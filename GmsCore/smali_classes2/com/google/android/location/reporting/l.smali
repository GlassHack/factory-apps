.class public final Lcom/google/android/location/reporting/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/location/reporting/service/m;

.field private final c:Lcom/google/android/location/reporting/r;

.field private final d:Lcom/google/android/location/reporting/e;

.field private final e:Lcom/google/android/gms/common/util/i;

.field private final f:Lcom/google/android/location/reporting/b/f;

.field private final g:Lcom/google/android/location/reporting/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/location/reporting/service/m;Lcom/google/android/location/reporting/r;Lcom/google/android/location/reporting/e;)V
    .locals 8

    .prologue
    .line 80
    new-instance v5, Lcom/google/android/gms/common/util/j;

    invoke-direct {v5}, Lcom/google/android/gms/common/util/j;-><init>()V

    new-instance v6, Lcom/google/android/location/reporting/b/g;

    invoke-direct {v6}, Lcom/google/android/location/reporting/b/g;-><init>()V

    new-instance v7, Lcom/google/android/location/reporting/b/c;

    invoke-direct {v7, p1}, Lcom/google/android/location/reporting/b/c;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/location/reporting/l;-><init>(Landroid/content/Context;Lcom/google/android/location/reporting/service/m;Lcom/google/android/location/reporting/r;Lcom/google/android/location/reporting/e;Lcom/google/android/gms/common/util/i;Lcom/google/android/location/reporting/b/f;Lcom/google/android/location/reporting/b/c;)V

    .line 82
    invoke-static {p1}, Lcom/google/android/location/reporting/b/l;->a(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/location/reporting/service/m;Lcom/google/android/location/reporting/r;Lcom/google/android/location/reporting/e;Lcom/google/android/gms/common/util/i;Lcom/google/android/location/reporting/b/f;Lcom/google/android/location/reporting/b/c;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/google/android/location/reporting/l;->a:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/google/android/location/reporting/l;->b:Lcom/google/android/location/reporting/service/m;

    .line 67
    iput-object p3, p0, Lcom/google/android/location/reporting/l;->c:Lcom/google/android/location/reporting/r;

    .line 68
    iput-object p4, p0, Lcom/google/android/location/reporting/l;->d:Lcom/google/android/location/reporting/e;

    .line 69
    iput-object p5, p0, Lcom/google/android/location/reporting/l;->e:Lcom/google/android/gms/common/util/i;

    .line 70
    iput-object p6, p0, Lcom/google/android/location/reporting/l;->f:Lcom/google/android/location/reporting/b/f;

    .line 71
    iput-object p7, p0, Lcom/google/android/location/reporting/l;->g:Lcom/google/android/location/reporting/b/c;

    .line 72
    return-void
.end method

.method private a()Ljava/util/List;
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 230
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 231
    iget-object v2, p0, Lcom/google/android/location/reporting/l;->c:Lcom/google/android/location/reporting/r;

    invoke-virtual {v2}, Lcom/google/android/location/reporting/r;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 232
    iget-object v2, p0, Lcom/google/android/location/reporting/l;->b:Lcom/google/android/location/reporting/service/m;

    invoke-virtual {v2}, Lcom/google/android/location/reporting/service/m;->f()Lcom/google/android/gms/location/ActivityRecognitionResult;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/location/reporting/l;->b:Lcom/google/android/location/reporting/service/m;

    invoke-virtual {v2}, Lcom/google/android/location/reporting/service/m;->f()Lcom/google/android/gms/location/ActivityRecognitionResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v2

    if-nez v2, :cond_1

    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/location/reporting/l;->g:Lcom/google/android/location/reporting/b/c;

    invoke-virtual {v2}, Lcom/google/android/location/reporting/b/c;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    if-eqz v0, :cond_0

    .line 233
    sget-object v0, Lcom/google/android/location/reporting/m;->b:Lcom/google/android/location/reporting/m;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_0
    return-object v3

    :cond_1
    move v2, v1

    .line 232
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private a(Lcom/google/android/location/reporting/config/ReportingConfig;JLcom/google/android/ulr/ApiRate;Landroid/location/Location;)V
    .locals 6

    .prologue
    .line 160
    invoke-static {p4}, Lcom/google/android/location/reporting/c;->a(Lcom/google/android/ulr/ApiRate;)Lcom/google/android/ulr/ApiMetadata;

    move-result-object v1

    .line 161
    invoke-virtual {p1}, Lcom/google/android/location/reporting/config/ReportingConfig;->getActiveAccountConfigs()Ljava/util/List;

    move-result-object v0

    .line 162
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/location/reporting/b/j;->a(I)V

    .line 164
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/config/AccountConfig;

    .line 165
    iget-object v3, p0, Lcom/google/android/location/reporting/l;->d:Lcom/google/android/location/reporting/e;

    invoke-virtual {p4}, Lcom/google/android/ulr/ApiRate;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4}, Lcom/google/android/location/reporting/e;->a(Lcom/google/android/location/reporting/config/AccountConfig;Ljava/lang/Object;Ljava/lang/String;)Z

    goto :goto_0

    .line 168
    :cond_0
    if-eqz p5, :cond_1

    .line 169
    iget-object v0, p0, Lcom/google/android/location/reporting/l;->b:Lcom/google/android/location/reporting/service/m;

    invoke-virtual {v0, p5}, Lcom/google/android/location/reporting/service/m;->a(Landroid/location/Location;)V

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/reporting/l;->b:Lcom/google/android/location/reporting/service/m;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/location/reporting/service/m;->b(J)V

    .line 172
    iget-object v0, p0, Lcom/google/android/location/reporting/l;->f:Lcom/google/android/location/reporting/b/f;

    iget-object v1, p0, Lcom/google/android/location/reporting/l;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/location/reporting/b/f;->a(Landroid/content/Context;)V

    .line 173
    return-void
.end method

.method private b()Lcom/google/android/location/reporting/m;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/location/reporting/l;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/k;->a(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/location/reporting/m;->d:Lcom/google/android/location/reporting/m;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/location/reporting/m;->c:Lcom/google/android/location/reporting/m;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/location/reporting/service/m;Lcom/google/android/location/reporting/config/ReportingConfig;Landroid/location/Location;)Z
    .locals 18

    .prologue
    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/location/reporting/service/m;->h()Landroid/location/Location;

    move-result-object v2

    .line 97
    invoke-static {}, Lcom/google/android/location/activity/k;->a()Z

    move-result v4

    .line 98
    move-object/from16 v0, p3

    invoke-static {v0, v2}, Lcom/google/android/location/reporting/s;->a(Landroid/location/Location;Landroid/location/Location;)F

    move-result v3

    const/4 v5, 0x0

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_2

    new-instance v3, Lcom/google/android/location/reporting/t;

    if-nez v4, :cond_1

    const/4 v2, 0x1

    :goto_0
    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lcom/google/android/location/reporting/t;-><init>(ZI)V

    move-object v10, v3

    .line 100
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/reporting/l;->b:Lcom/google/android/location/reporting/service/m;

    invoke-virtual {v2}, Lcom/google/android/location/reporting/service/m;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-gtz v2, :cond_7

    const-string v2, "GCoreUlr"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "GCoreUlr"

    const-string v3, "Not uploading first location since start (in case we\'re in restart loop)"

    invoke-static {v2, v3}, Lcom/google/android/location/reporting/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    :goto_2
    return v2

    .line 98
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v5

    sget-object v2, Lcom/google/android/location/reporting/service/y;->v:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v2}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v6, v5, v3

    if-lez v6, :cond_3

    cmpl-float v6, v5, v2

    if-lez v6, :cond_3

    new-instance v2, Lcom/google/android/location/reporting/t;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/android/location/reporting/t;-><init>(ZI)V

    move-object v10, v2

    goto :goto_1

    :cond_3
    cmpl-float v3, v3, v2

    if-lez v3, :cond_5

    new-instance v3, Lcom/google/android/location/reporting/t;

    if-nez v4, :cond_4

    const/4 v2, 0x1

    :goto_3
    const/4 v4, 0x3

    invoke-direct {v3, v2, v4}, Lcom/google/android/location/reporting/t;-><init>(ZI)V

    move-object v10, v3

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    new-instance v3, Lcom/google/android/location/reporting/t;

    cmpl-float v2, v5, v2

    if-lez v2, :cond_6

    const/4 v2, 0x1

    :goto_4
    const/4 v4, 0x4

    invoke-direct {v3, v2, v4}, Lcom/google/android/location/reporting/t;-><init>(ZI)V

    move-object v10, v3

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    .line 100
    :cond_7
    iget-boolean v13, v10, Lcom/google/android/location/reporting/t;->a:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/reporting/l;->e:Lcom/google/android/gms/common/util/i;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/i;->b()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/location/reporting/l;->b:Lcom/google/android/location/reporting/service/m;

    invoke-virtual {v2}, Lcom/google/android/location/reporting/service/m;->i()J

    move-result-wide v2

    sub-long v4, v14, v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-gtz v2, :cond_a

    sget-object v3, Lcom/google/android/location/reporting/m;->a:Lcom/google/android/location/reporting/m;

    move-object v12, v3

    :goto_5
    if-eqz v13, :cond_e

    invoke-interface {v12}, Lcom/google/android/location/reporting/i;->a()J

    move-result-wide v2

    move-wide v8, v2

    :goto_6
    cmp-long v2, v4, v8

    if-ltz v2, :cond_f

    const/4 v11, 0x1

    :goto_7
    if-eqz v11, :cond_11

    const-string v2, "GCoreUlr"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "GCoreUlr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Sending an intent to LocationReportingService, hasMoved: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", elapsed millis: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    new-instance v2, Lcom/google/android/ulr/ApiRate;

    invoke-interface {v12}, Lcom/google/android/location/reporting/i;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/location/reporting/l;->e:Lcom/google/android/gms/common/util/i;

    invoke-interface {v7}, Lcom/google/android/gms/common/util/i;->a()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    if-eqz v13, :cond_10

    const-string v9, "default"

    :goto_8
    invoke-direct/range {v2 .. v9}, Lcom/google/android/ulr/ApiRate;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/location/reporting/l;->b:Lcom/google/android/location/reporting/service/m;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v3, v0, v1, v10, v12}, Lcom/google/android/location/reporting/b/j;->a(Lcom/google/android/location/reporting/service/m;Lcom/google/android/location/reporting/config/ReportingConfig;Landroid/location/Location;Lcom/google/android/location/reporting/t;Lcom/google/android/location/reporting/i;)V

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-wide v6, v14

    move-object v8, v2

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/google/android/location/reporting/l;->a(Lcom/google/android/location/reporting/config/ReportingConfig;JLcom/google/android/ulr/ApiRate;Landroid/location/Location;)V

    :cond_9
    :goto_9
    move v2, v11

    goto/16 :goto_2

    :cond_a
    if-eqz v13, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/google/android/location/reporting/l;->b()Lcom/google/android/location/reporting/m;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/google/android/location/reporting/l;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/reporting/i;

    invoke-interface {v2}, Lcom/google/android/location/reporting/i;->a()J

    move-result-wide v8

    invoke-interface {v3}, Lcom/google/android/location/reporting/i;->a()J

    move-result-wide v16

    cmp-long v7, v8, v16

    if-gez v7, :cond_13

    :goto_b
    move-object v3, v2

    goto :goto_a

    :cond_b
    move-object v12, v3

    goto/16 :goto_5

    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/location/reporting/l;->b()Lcom/google/android/location/reporting/m;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/google/android/location/reporting/l;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/location/reporting/i;

    invoke-interface {v2}, Lcom/google/android/location/reporting/i;->b()J

    move-result-wide v8

    invoke-interface {v3}, Lcom/google/android/location/reporting/i;->b()J

    move-result-wide v16

    cmp-long v7, v8, v16

    if-gez v7, :cond_12

    :goto_d
    move-object v3, v2

    goto :goto_c

    :cond_d
    move-object v12, v3

    goto/16 :goto_5

    :cond_e
    invoke-interface {v12}, Lcom/google/android/location/reporting/i;->b()J

    move-result-wide v2

    move-wide v8, v2

    goto/16 :goto_6

    :cond_f
    const/4 v11, 0x0

    goto/16 :goto_7

    :cond_10
    const-string v9, "stationary"

    goto :goto_8

    :cond_11
    const-string v2, "GCoreUlr"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/location/reporting/b/d;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "GCoreUlr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Not calling LocationReportingService, hasMoved: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", elapsed millis: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/reporting/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_12
    move-object v2, v3

    goto :goto_d

    :cond_13
    move-object v2, v3

    goto :goto_b
.end method
