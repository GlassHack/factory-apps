.class public final Lcom/google/android/gms/fitness/sensors/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/fitness/sensors/e/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/fitness/sensors/e/d;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/google/android/gms/fitness/sensors/e/c;

    invoke-direct {v0, p1}, Lcom/google/android/gms/fitness/sensors/e/c;-><init>(Lcom/google/android/gms/fitness/sensors/e/d;)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/e/a;->a:Lcom/google/android/gms/fitness/sensors/e/c;

    .line 42
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/fitness/sensors/e/e;
    .locals 20

    .prologue
    .line 49
    const-wide v4, 0x7fffffffffffffffL

    .line 50
    const-wide v6, 0x7fffffffffffffffL

    .line 51
    const-wide v8, 0x7fffffffffffffffL

    .line 52
    const-wide/high16 v13, -0x8000000000000000L

    .line 53
    const/4 v10, 0x1

    .line 54
    new-instance v11, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/fitness/sensors/e/a;->a:Lcom/google/android/gms/fitness/sensors/e/c;

    invoke-static {v2}, Lcom/google/android/gms/fitness/sensors/e/c;->a(Lcom/google/android/gms/fitness/sensors/e/c;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v11, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/fitness/sensors/e/a;->a:Lcom/google/android/gms/fitness/sensors/e/c;

    invoke-static {v2}, Lcom/google/android/gms/fitness/sensors/e/c;->a(Lcom/google/android/gms/fitness/sensors/e/c;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/sensors/e/e;

    .line 57
    iget-wide v0, v2, Lcom/google/android/gms/fitness/sensors/e/e;->a:J

    move-wide/from16 v16, v0

    .line 58
    cmp-long v3, v16, v4

    if-gez v3, :cond_1

    move-wide/from16 v4, v16

    .line 61
    :cond_1
    iget-wide v0, v2, Lcom/google/android/gms/fitness/sensors/e/e;->b:J

    move-wide/from16 v16, v0

    .line 62
    cmp-long v3, v16, v6

    if-gez v3, :cond_2

    move-wide/from16 v6, v16

    .line 65
    :cond_2
    iget v3, v2, Lcom/google/android/gms/fitness/sensors/e/e;->c:I

    .line 66
    if-le v3, v10, :cond_3

    move v10, v3

    .line 69
    :cond_3
    iget-object v3, v2, Lcom/google/android/gms/fitness/sensors/e/e;->d:Ljava/util/List;

    if-eqz v3, :cond_4

    .line 70
    iget-object v3, v2, Lcom/google/android/gms/fitness/sensors/e/e;->d:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 72
    :cond_4
    iget-wide v0, v2, Lcom/google/android/gms/fitness/sensors/e/e;->f:J

    move-wide/from16 v16, v0

    .line 73
    cmp-long v3, v16, v8

    if-gez v3, :cond_0

    .line 75
    iget-wide v2, v2, Lcom/google/android/gms/fitness/sensors/e/e;->g:J

    .line 76
    cmp-long v8, v13, v2

    if-gez v8, :cond_9

    move-wide v13, v2

    move-wide/from16 v8, v16

    .line 77
    goto :goto_0

    .line 81
    :cond_5
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 82
    const/4 v11, 0x0

    .line 86
    :cond_6
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 87
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/fitness/sensors/e/a;->a:Lcom/google/android/gms/fitness/sensors/e/c;

    invoke-static {v2}, Lcom/google/android/gms/fitness/sensors/e/c;->a(Lcom/google/android/gms/fitness/sensors/e/c;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/sensors/e/e;

    .line 88
    iget-wide v0, v2, Lcom/google/android/gms/fitness/sensors/e/e;->a:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x2

    mul-long v18, v18, v4

    cmp-long v15, v16, v18

    if-gtz v15, :cond_7

    .line 89
    iget-object v2, v2, Lcom/google/android/gms/fitness/sensors/e/e;->e:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 93
    :cond_8
    new-instance v3, Lcom/google/android/gms/fitness/sensors/e/e;

    const/4 v15, 0x0

    invoke-direct/range {v3 .. v15}, Lcom/google/android/gms/fitness/sensors/e/e;-><init>(JJJILjava/util/List;Ljava/util/List;JB)V

    return-object v3

    :cond_9
    move-wide/from16 v8, v16

    goto/16 :goto_0
.end method

.method public final a(Lcom/google/android/gms/fitness/sensors/e/e;)Z
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/sensors/e/a;->a()Lcom/google/android/gms/fitness/sensors/e/e;

    move-result-object v0

    .line 102
    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/sensors/e/e;->a(Lcom/google/android/gms/fitness/sensors/e/e;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/e/a;->a:Lcom/google/android/gms/fitness/sensors/e/c;

    invoke-static {v0}, Lcom/google/android/gms/fitness/sensors/e/c;->a(Lcom/google/android/gms/fitness/sensors/e/c;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 155
    const-string v0, "CompositeRegistration{%s %s}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/sensors/e/a;->a:Lcom/google/android/gms/fitness/sensors/e/c;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/sensors/e/a;->a()Lcom/google/android/gms/fitness/sensors/e/e;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
