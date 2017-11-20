.class final Lcom/google/android/gms/fitness/service/ax;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/List;

.field final b:Ljava/util/List;

.field final c:Ljava/util/List;

.field d:Ljava/util/List;

.field e:Lcom/google/android/gms/fitness/data/Bucket;

.field f:Ljava/util/List;

.field g:I

.field private h:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/ax;->c:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/ax;->d:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/ax;->h:Ljava/util/List;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/ax;->e:Lcom/google/android/gms/fitness/data/Bucket;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/service/ax;->f:Ljava/util/List;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/fitness/service/ax;->g:I

    .line 41
    iput-object p2, p0, Lcom/google/android/gms/fitness/service/ax;->b:Ljava/util/List;

    .line 42
    iput-object p1, p0, Lcom/google/android/gms/fitness/service/ax;->a:Ljava/util/List;

    .line 43
    return-void
.end method

.method private a(Lcom/google/android/gms/fitness/data/DataSet;)I
    .locals 4

    .prologue
    const v3, 0x186a0

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSet;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    iget v1, p0, Lcom/google/android/gms/fitness/service/ax;->g:I

    invoke-static {}, Lcom/google/android/gms/fitness/data/DataSet;->h()I

    move-result v2

    add-int/2addr v1, v2

    if-ge v1, v3, :cond_0

    const/4 v0, 0x1

    .line 126
    :cond_0
    :goto_0
    return v0

    .line 123
    :cond_1
    invoke-static {}, Lcom/google/android/gms/fitness/data/DataSet;->h()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/fitness/service/ax;->e:Lcom/google/android/gms/fitness/data/Bucket;

    if-nez v2, :cond_2

    :goto_1
    add-int/2addr v0, v1

    .line 125
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSet;->i()I

    move-result v1

    .line 126
    sub-int v0, v3, v0

    iget v2, p0, Lcom/google/android/gms/fitness/service/ax;->g:I

    sub-int/2addr v0, v2

    div-int/2addr v0, v1

    goto :goto_0

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/ax;->e:Lcom/google/android/gms/fitness/data/Bucket;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Bucket;->h()I

    move-result v0

    goto :goto_1
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .prologue
    .line 145
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 150
    :goto_0
    return-object v0

    .line 148
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 149
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private a(Lcom/google/android/gms/fitness/data/DataSet;IILjava/util/List;)V
    .locals 4

    .prologue
    .line 105
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSet;->b()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/fitness/data/DataSet;->a(Lcom/google/android/gms/fitness/data/DataSet;Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v2

    move v1, p2

    .line 107
    :goto_0
    if-ge v1, p3, :cond_0

    .line 108
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSet;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/fitness/data/DataSet;->a(Lcom/google/android/gms/fitness/data/DataPoint;)V

    .line 107
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 110
    :cond_0
    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget v0, p0, Lcom/google/android/gms/fitness/service/ax;->g:I

    invoke-static {}, Lcom/google/android/gms/fitness/data/DataSet;->h()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSet;->i()I

    move-result v2

    sub-int v3, p2, p3

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/fitness/service/ax;->g:I

    .line 112
    return-void
.end method


# virtual methods
.method final a()V
    .locals 5

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/service/ax;->b()V

    .line 134
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/ax;->c:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/fitness/result/DataReadResult;

    iget-object v2, p0, Lcom/google/android/gms/fitness/service/ax;->d:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/fitness/service/ax;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/fitness/service/ax;->h:Ljava/util/List;

    invoke-static {v3}, Lcom/google/android/gms/fitness/service/ax;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/fitness/result/DataReadResult;-><init>(Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/common/api/Status;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/ax;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 137
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/ax;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 138
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/fitness/service/ax;->g:I

    .line 139
    return-void
.end method

.method final a(Ljava/util/List;Ljava/util/List;)V
    .locals 7

    .prologue
    .line 78
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSet;

    .line 80
    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/service/ax;->a(Lcom/google/android/gms/fitness/data/DataSet;)I

    move-result v1

    .line 81
    if-gtz v1, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/service/ax;->a()V

    .line 83
    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/service/ax;->a(Lcom/google/android/gms/fitness/data/DataSet;)I

    move-result v1

    .line 86
    :cond_0
    const/4 v2, 0x0

    .line 87
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSet;->d()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v6, v2

    move v2, v1

    move v1, v6

    .line 88
    :goto_1
    sub-int v5, v4, v1

    if-ge v2, v5, :cond_1

    .line 89
    add-int v5, v1, v2

    invoke-direct {p0, v0, v1, v5, p2}, Lcom/google/android/gms/fitness/service/ax;->a(Lcom/google/android/gms/fitness/data/DataSet;IILjava/util/List;)V

    .line 92
    add-int/2addr v1, v2

    .line 93
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/service/ax;->a()V

    .line 94
    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/service/ax;->a(Lcom/google/android/gms/fitness/data/DataSet;)I

    move-result v2

    goto :goto_1

    .line 97
    :cond_1
    invoke-direct {p0, v0, v1, v4, p2}, Lcom/google/android/gms/fitness/service/ax;->a(Lcom/google/android/gms/fitness/data/DataSet;IILjava/util/List;)V

    goto :goto_0

    .line 99
    :cond_2
    return-void
.end method

.method final b()V
    .locals 10

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/ax;->e:Lcom/google/android/gms/fitness/data/Bucket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/ax;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    new-instance v1, Lcom/google/android/gms/fitness/data/Bucket;

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/ax;->e:Lcom/google/android/gms/fitness/data/Bucket;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Bucket;->a()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/ax;->e:Lcom/google/android/gms/fitness/data/Bucket;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Bucket;->b()J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/ax;->e:Lcom/google/android/gms/fitness/data/Bucket;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Bucket;->c()Lcom/google/android/gms/fitness/data/Session;

    move-result-object v6

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/ax;->e:Lcom/google/android/gms/fitness/data/Bucket;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Bucket;->d()I

    move-result v7

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/ax;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    iget-object v0, p0, Lcom/google/android/gms/fitness/service/ax;->e:Lcom/google/android/gms/fitness/data/Bucket;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Bucket;->f()I

    move-result v9

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/fitness/data/Bucket;-><init>(JJLcom/google/android/gms/fitness/data/Session;III)V

    .line 165
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/ax;->e:Lcom/google/android/gms/fitness/data/Bucket;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Bucket;->g()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/fitness/data/Bucket;->a(Z)V

    .line 166
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/ax;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSet;

    .line 167
    invoke-virtual {v1, v0}, Lcom/google/android/gms/fitness/data/Bucket;->a(Lcom/google/android/gms/fitness/data/DataSet;)V

    .line 168
    iget v3, p0, Lcom/google/android/gms/fitness/service/ax;->g:I

    invoke-static {}, Lcom/google/android/gms/fitness/data/DataSet;->h()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSet;->i()I

    move-result v5

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSet;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/2addr v0, v5

    add-int/2addr v0, v4

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/fitness/service/ax;->g:I

    goto :goto_0

    .line 172
    :cond_0
    iget v0, p0, Lcom/google/android/gms/fitness/service/ax;->g:I

    iget-object v2, p0, Lcom/google/android/gms/fitness/service/ax;->e:Lcom/google/android/gms/fitness/data/Bucket;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/Bucket;->h()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/fitness/service/ax;->g:I

    .line 173
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/ax;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v0, p0, Lcom/google/android/gms/fitness/service/ax;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 176
    :cond_1
    return-void
.end method
