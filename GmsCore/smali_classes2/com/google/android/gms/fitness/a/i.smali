.class public final Lcom/google/android/gms/fitness/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/fitness/a/a/d;

.field private final b:Lcom/google/android/gms/fitness/a/a/a;

.field private final c:Lcom/google/android/gms/fitness/a/a/b;

.field private final d:Lcom/google/android/gms/fitness/a/a/e;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/fitness/m/a;Lcom/google/android/gms/fitness/n/ar;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/google/android/gms/fitness/a/a/d;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/fitness/a/a/d;-><init>(Lcom/google/android/gms/fitness/m/a;Lcom/google/android/gms/fitness/n/ar;)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/a/i;->a:Lcom/google/android/gms/fitness/a/a/d;

    .line 32
    new-instance v0, Lcom/google/android/gms/fitness/a/a/a;

    invoke-direct {v0, p1}, Lcom/google/android/gms/fitness/a/a/a;-><init>(Lcom/google/android/gms/fitness/m/a;)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/a/i;->b:Lcom/google/android/gms/fitness/a/a/a;

    .line 33
    new-instance v0, Lcom/google/android/gms/fitness/a/a/b;

    iget-object v1, p0, Lcom/google/android/gms/fitness/a/i;->b:Lcom/google/android/gms/fitness/a/a/a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/fitness/a/a/b;-><init>(Lcom/google/android/gms/fitness/a/a/a;)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/a/i;->c:Lcom/google/android/gms/fitness/a/a/b;

    .line 34
    new-instance v0, Lcom/google/android/gms/fitness/a/a/e;

    invoke-direct {v0, p1}, Lcom/google/android/gms/fitness/a/a/e;-><init>(Lcom/google/android/gms/fitness/m/a;)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/a/i;->d:Lcom/google/android/gms/fitness/a/a/e;

    .line 35
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;JJJILcom/google/android/gms/fitness/data/DataSource;Z)Ljava/util/List;
    .locals 14

    .prologue
    .line 52
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 95
    :goto_0
    return-object v2

    .line 56
    :cond_0
    const/4 v2, 0x1

    move/from16 v0, p8

    if-ne v0, v2, :cond_1

    .line 57
    iget-object v3, p0, Lcom/google/android/gms/fitness/a/i;->d:Lcom/google/android/gms/fitness/a/a/e;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, p6

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    move-object v10, p1

    move/from16 v11, p10

    invoke-virtual/range {v3 .. v11}, Lcom/google/android/gms/fitness/a/a/e;->a(JJJLjava/util/List;Z)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 65
    :cond_1
    const/4 v2, 0x4

    move/from16 v0, p8

    if-ne v0, v2, :cond_2

    .line 66
    iget-object v3, p0, Lcom/google/android/gms/fitness/a/i;->b:Lcom/google/android/gms/fitness/a/a/a;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, p6

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    move-object v10, p1

    move-object/from16 v11, p9

    move/from16 v12, p10

    invoke-virtual/range {v3 .. v12}, Lcom/google/android/gms/fitness/a/a/a;->a(JJJLjava/util/List;Lcom/google/android/gms/fitness/data/DataSource;Z)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 75
    :cond_2
    const/4 v2, 0x3

    move/from16 v0, p8

    if-ne v0, v2, :cond_3

    .line 76
    iget-object v2, p0, Lcom/google/android/gms/fitness/a/i;->c:Lcom/google/android/gms/fitness/a/a/b;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    iget-object v3, v2, Lcom/google/android/gms/fitness/a/a/b;->a:Lcom/google/android/gms/fitness/a/a/a;

    move-object v10, p1

    move-object/from16 v11, p9

    move/from16 v12, p10

    invoke-virtual/range {v3 .. v12}, Lcom/google/android/gms/fitness/a/a/a;->a(JJJLjava/util/List;Lcom/google/android/gms/fitness/data/DataSource;Z)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/fitness/a/j;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 85
    :cond_3
    const/4 v2, 0x2

    move/from16 v0, p8

    if-ne v0, v2, :cond_4

    .line 86
    iget-object v3, p0, Lcom/google/android/gms/fitness/a/i;->a:Lcom/google/android/gms/fitness/a/a/d;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, p6

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    move-object v10, p1

    move/from16 v11, p10

    invoke-virtual/range {v3 .. v11}, Lcom/google/android/gms/fitness/a/a/d;->a(JJJLjava/util/List;Z)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_0

    .line 94
    :cond_4
    const-string v2, "Unsupported bucketing strategy specified: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->f(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 95
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto/16 :goto_0
.end method
