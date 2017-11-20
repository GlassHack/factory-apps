.class public Lcom/google/android/gms/fitness/sensors/c/c;
.super Lcom/google/android/gms/fitness/sensors/b/a;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/Map;

.field private final c:Lcom/google/android/gms/fitness/sensors/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/fitness/sensors/a;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/android/gms/fitness/sensors/b/a;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/c/c;->b:Ljava/util/Map;

    .line 44
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/a;

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/c/c;->c:Lcom/google/android/gms/fitness/sensors/a;

    .line 45
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/sensors/c/c;->a:Ljava/util/List;

    .line 47
    return-void
.end method

.method private a(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/sensors/c/b;)Z
    .locals 2

    .prologue
    .line 82
    invoke-interface {p2}, Lcom/google/android/gms/fitness/sensors/c/b;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->h()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/google/android/gms/fitness/sensors/c/c;->a(Lcom/google/android/gms/fitness/sensors/c/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/sensors/c/b;)Z
    .locals 1

    .prologue
    .line 76
    invoke-interface {p2}, Lcom/google/android/gms/fitness/sensors/c/b;->c()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/google/android/gms/fitness/sensors/c/c;->a(Lcom/google/android/gms/fitness/sensors/c/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/google/android/gms/fitness/sensors/c/b;)Z
    .locals 1

    .prologue
    .line 165
    invoke-interface {p1}, Lcom/google/android/gms/fitness/sensors/c/b;->b()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/sensors/c/c;->c(Lcom/google/android/gms/fitness/data/DataType;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/google/android/gms/fitness/data/DataType;)Ljava/util/List;
    .locals 4

    .prologue
    .line 173
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 174
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/c/c;->c:Lcom/google/android/gms/fitness/sensors/a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/sensors/a;->a(Lcom/google/android/gms/fitness/data/DataType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/c/c;->c:Lcom/google/android/gms/fitness/sensors/a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/sensors/a;->b(Lcom/google/android/gms/fitness/data/DataType;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    .line 176
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->b()I

    move-result v3

    if-nez v3, :cond_0

    .line 177
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 181
    :cond_1
    return-object v1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)Lcom/google/c/j/a/v;
    .locals 17

    .prologue
    .line 100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/fitness/sensors/c/c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/sensors/c/b;

    .line 101
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lcom/google/android/gms/fitness/sensors/c/c;->a(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/sensors/c/b;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    invoke-interface {v2}, Lcom/google/android/gms/fitness/sensors/c/b;->b()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gms/fitness/sensors/c/c;->c(Lcom/google/android/gms/fitness/data/DataType;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v2, "no input data sources found for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/google/c/j/a/n;->a(Ljava/lang/Object;)Lcom/google/c/j/a/v;

    move-result-object v2

    .line 105
    :goto_0
    return-object v2

    .line 102
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    const-string v4, "more than one input data sources found for.  Using the first one: %s, %s, %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const/4 v6, 0x2

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_2
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/fitness/data/DataSource;

    new-instance v5, Lcom/google/android/gms/fitness/sensors/c/e;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->c()Lcom/google/android/gms/fitness/data/o;

    move-result-object v3

    const/4 v6, 0x0

    invoke-direct {v5, v2, v3, v6}, Lcom/google/android/gms/fitness/sensors/c/e;-><init>(Lcom/google/android/gms/fitness/sensors/c/b;Lcom/google/android/gms/fitness/data/o;B)V

    new-instance v3, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->f()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->e()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->g()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->j()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->h()Ljava/util/List;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->i()Ljava/util/List;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;->k()J

    move-result-wide v15

    invoke-direct/range {v3 .. v16}, Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;-><init>(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/o;JJJILjava/util/List;Ljava/util/List;J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/fitness/sensors/c/c;->c:Lcom/google/android/gms/fitness/sensors/a;

    invoke-interface {v2, v3}, Lcom/google/android/gms/fitness/sensors/a;->a(Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)Lcom/google/c/j/a/v;

    move-result-object v2

    new-instance v4, Lcom/google/android/gms/fitness/sensors/c/d;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1, v5, v3}, Lcom/google/android/gms/fitness/sensors/c/d;-><init>(Lcom/google/android/gms/fitness/sensors/c/c;Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;Lcom/google/android/gms/fitness/sensors/c/e;Lcom/google/android/gms/fitness/request/SensorRegistrationRequest;)V

    invoke-static {v2, v4}, Lcom/google/c/j/a/n;->a(Lcom/google/c/j/a/v;Lcom/google/c/j/a/m;)V

    goto :goto_0

    .line 105
    :cond_3
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/google/c/j/a/n;->a(Ljava/lang/Object;)Lcom/google/c/j/a/v;

    move-result-object v2

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/fitness/data/DataSource;)Z
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/c/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/c/b;

    .line 66
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/fitness/sensors/c/c;->a(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/sensors/c/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x1

    .line 70
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataType;)Z
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/c/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/c/b;

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/fitness/sensors/c/c;->a(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/sensors/c/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x1

    .line 60
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/o;)Z
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/c/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/o;

    .line 187
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/fitness/sensors/c/c;->c:Lcom/google/android/gms/fitness/sensors/a;

    invoke-interface {v1, v0}, Lcom/google/android/gms/fitness/sensors/a;->a(Lcom/google/android/gms/fitness/data/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/google/android/gms/fitness/data/DataType;)Ljava/util/List;
    .locals 4

    .prologue
    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/fitness/sensors/c/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/sensors/c/b;

    .line 91
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/fitness/sensors/c/c;->a(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/sensors/c/b;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    invoke-interface {v0}, Lcom/google/android/gms/fitness/sensors/c/b;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    :cond_1
    return-object v1
.end method
