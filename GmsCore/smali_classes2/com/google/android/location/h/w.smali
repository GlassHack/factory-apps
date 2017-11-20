.class public final Lcom/google/android/location/h/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/h/s;


# instance fields
.field public final a:Lcom/google/android/location/b/p;

.field final b:Lcom/google/android/location/ao;

.field c:Z

.field d:Lcom/google/android/location/f/ad;

.field public e:Z

.field public f:Z

.field private final g:Lcom/google/android/location/k/b;

.field private final h:Lcom/google/android/location/k/f;

.field private final i:Lcom/google/android/location/h/t;


# direct methods
.method public constructor <init>(Lcom/google/android/location/k/f;Lcom/google/android/location/b/p;Lcom/google/android/location/k/b;Lcom/google/android/location/ao;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/google/android/location/h/t;

    invoke-direct {v0}, Lcom/google/android/location/h/t;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/h/w;->i:Lcom/google/android/location/h/t;

    .line 64
    iput-boolean v1, p0, Lcom/google/android/location/h/w;->c:Z

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/h/w;->d:Lcom/google/android/location/f/ad;

    .line 67
    iput-boolean v1, p0, Lcom/google/android/location/h/w;->e:Z

    .line 69
    iput-boolean v1, p0, Lcom/google/android/location/h/w;->f:Z

    .line 81
    iput-object p1, p0, Lcom/google/android/location/h/w;->h:Lcom/google/android/location/k/f;

    .line 82
    iput-object p2, p0, Lcom/google/android/location/h/w;->a:Lcom/google/android/location/b/p;

    .line 83
    iput-object p3, p0, Lcom/google/android/location/h/w;->g:Lcom/google/android/location/k/b;

    .line 84
    iput-object p4, p0, Lcom/google/android/location/h/w;->b:Lcom/google/android/location/ao;

    .line 85
    return-void
.end method

.method private declared-synchronized a(Lcom/google/android/location/f/ad;)V
    .locals 3

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/h/w;->d:Lcom/google/android/location/f/ad;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/h/w;->d:Lcom/google/android/location/f/ad;

    invoke-virtual {v0, p1}, Lcom/google/android/location/f/ad;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 116
    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/google/android/location/j/a;->c:Z

    if-eqz v0, :cond_2

    const-string v0, "ModelStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Queue "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/location/f/ad;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/h/w;->i:Lcom/google/android/location/h/t;

    sget-object v1, Lcom/google/android/location/h/u;->a:[I

    iget-object v2, p1, Lcom/google/android/location/f/ad;->a:Lcom/google/android/location/f/ae;

    invoke-virtual {v2}, Lcom/google/android/location/f/ae;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    sget-boolean v0, Lcom/google/android/location/j/a;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "ModelRequestQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Programming error: unknown indoor request type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/google/android/location/f/ad;->a:Lcom/google/android/location/f/ae;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 117
    :pswitch_0
    :try_start_2
    iget-object v0, v0, Lcom/google/android/location/h/t;->a:Lcom/google/android/location/h/v;

    invoke-virtual {v0, p1}, Lcom/google/android/location/h/v;->a(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, v0, Lcom/google/android/location/h/t;->b:Lcom/google/android/location/h/v;

    invoke-virtual {v0, p1}, Lcom/google/android/location/h/v;->a(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/location/f/s;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 184
    iget-object v0, p0, Lcom/google/android/location/h/w;->a:Lcom/google/android/location/b/p;

    invoke-virtual {v0, p1}, Lcom/google/android/location/b/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/google/android/location/h/w;->a:Lcom/google/android/location/b/p;

    iget-object v2, p0, Lcom/google/android/location/h/w;->g:Lcom/google/android/location/k/b;

    invoke-interface {v2}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/location/b/p;->a(Ljava/lang/String;J)Lcom/google/android/location/f/s;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_0

    .line 199
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 192
    goto :goto_0

    .line 194
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/location/h/w;->e:Z

    if-eqz v0, :cond_2

    .line 196
    invoke-static {p1}, Lcom/google/android/location/f/ad;->a(Ljava/lang/String;)Lcom/google/android/location/f/ad;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/location/h/w;->a(Lcom/google/android/location/f/ad;)V

    move-object v0, v1

    .line 197
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 199
    goto :goto_0
.end method

.method public final a(Ljava/util/Set;)Ljava/util/List;
    .locals 8

    .prologue
    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 170
    iget-object v3, p0, Lcom/google/android/location/h/w;->a:Lcom/google/android/location/b/p;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/android/location/h/w;->g:Lcom/google/android/location/k/b;

    invoke-interface {v0}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/location/b/p;->a(JJ)Ljava/lang/String;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_0

    .line 172
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    :cond_1
    return-object v1
.end method

.method public final declared-synchronized a(Lcom/google/android/location/p/j;)V
    .locals 9

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 127
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/google/android/location/h/w;->c:Z

    if-nez v3, :cond_6

    .line 128
    iget-object v3, p0, Lcom/google/android/location/h/w;->i:Lcom/google/android/location/h/t;

    iget-object v4, v3, Lcom/google/android/location/h/t;->b:Lcom/google/android/location/h/v;

    invoke-virtual {v4}, Lcom/google/android/location/h/v;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, v3, Lcom/google/android/location/h/t;->a:Lcom/google/android/location/h/v;

    invoke-virtual {v3}, Lcom/google/android/location/h/v;->b()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v0, v2

    :cond_1
    if-eqz v0, :cond_6

    .line 129
    sget-boolean v0, Lcom/google/android/location/j/a;->c:Z

    if-eqz v0, :cond_2

    const-string v0, "ModelStateManager"

    const-string v2, "Sending GLS model request"

    invoke-static {v0, v2}, Lcom/google/android/location/p/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/h/w;->c:Z

    .line 131
    iget-object v0, p0, Lcom/google/android/location/h/w;->i:Lcom/google/android/location/h/t;

    iget-object v2, v0, Lcom/google/android/location/h/t;->b:Lcom/google/android/location/h/v;

    invoke-virtual {v2}, Lcom/google/android/location/h/v;->b()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v0, v0, Lcom/google/android/location/h/t;->b:Lcom/google/android/location/h/v;

    invoke-virtual {v0}, Lcom/google/android/location/h/v;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/ad;

    :goto_0
    iput-object v0, p0, Lcom/google/android/location/h/w;->d:Lcom/google/android/location/f/ad;

    .line 133
    new-instance v2, Lcom/google/android/location/h/x;

    invoke-direct {v2, p0}, Lcom/google/android/location/h/x;-><init>(Lcom/google/android/location/h/w;)V

    .line 155
    iget-object v3, p0, Lcom/google/android/location/h/w;->h:Lcom/google/android/location/k/f;

    iget-object v4, p0, Lcom/google/android/location/h/w;->d:Lcom/google/android/location/f/ad;

    new-instance v5, Lcom/google/g/a/b/b/a;

    sget-object v0, Lcom/google/android/location/n/a;->I:Lcom/google/g/a/b/b/c;

    invoke-direct {v5, v0}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    const/4 v6, 0x1

    iget-object v0, v4, Lcom/google/android/location/f/ad;->a:Lcom/google/android/location/f/ae;

    sget-object v7, Lcom/google/android/location/h/y;->a:[I

    invoke-virtual {v0}, Lcom/google/android/location/f/ae;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Programming error: unsupported model type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 131
    :cond_3
    :try_start_1
    iget-object v2, v0, Lcom/google/android/location/h/t;->a:Lcom/google/android/location/h/v;

    invoke-virtual {v2}, Lcom/google/android/location/h/v;->b()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v0, v0, Lcom/google/android/location/h/t;->a:Lcom/google/android/location/h/v;

    invoke-virtual {v0}, Lcom/google/android/location/h/v;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/f/ad;

    goto :goto_0

    :cond_4
    sget-boolean v0, Lcom/google/android/location/j/a;->d:Z

    if-eqz v0, :cond_5

    const-string v0, "ModelRequestQueue"

    const-string v2, "Programming error: trying to get next request when there\'s none"

    invoke-static {v0, v2}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 155
    :pswitch_0
    const/4 v0, 0x3

    :goto_1
    invoke-virtual {v5, v6, v0}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    const/4 v0, 0x2

    iget-object v1, v4, Lcom/google/android/location/f/ad;->b:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Lcom/google/g/a/b/b/a;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/a;

    new-instance v0, Lcom/google/g/a/b/b/a;

    sget-object v1, Lcom/google/android/location/n/a;->F:Lcom/google/g/a/b/b/c;

    invoke-direct {v0, v1}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v5}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    const/16 v1, 0xa

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/google/g/a/b/b/a;->e(II)Lcom/google/g/a/b/b/a;

    new-instance v1, Lcom/google/g/a/b/b/a;

    sget-object v4, Lcom/google/android/location/n/a;->Q:Lcom/google/g/a/b/b/c;

    invoke-direct {v1, v4}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v0}, Lcom/google/g/a/b/b/a;->a(ILcom/google/g/a/b/b/a;)V

    invoke-interface {v3, v1, p1, v2}, Lcom/google/android/location/k/f;->b(Lcom/google/g/a/b/b/a;Lcom/google/android/location/p/j;Lcom/google/android/location/k/g;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    :cond_6
    monitor-exit p0

    return-void

    :pswitch_1
    move v0, v1

    .line 155
    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/location/f/p;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 209
    iget-object v0, p0, Lcom/google/android/location/h/w;->a:Lcom/google/android/location/b/p;

    iget-object v0, v0, Lcom/google/android/location/b/p;->c:Lcom/google/android/location/b/f;

    invoke-virtual {v0, p1}, Lcom/google/android/location/b/f;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/google/android/location/h/w;->a:Lcom/google/android/location/b/p;

    iget-object v2, p0, Lcom/google/android/location/h/w;->g:Lcom/google/android/location/k/b;

    invoke-interface {v2}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v2

    iget-object v0, v0, Lcom/google/android/location/b/p;->c:Lcom/google/android/location/b/f;

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/location/b/f;->a(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/b/q;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 211
    :goto_0
    if-eqz v0, :cond_1

    .line 223
    :goto_1
    return-object v0

    .line 210
    :cond_0
    iget-object v0, v0, Lcom/google/android/location/b/q;->a:Lcom/google/android/location/f/p;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 216
    goto :goto_1

    .line 218
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/location/h/w;->e:Z

    if-eqz v0, :cond_3

    .line 220
    new-instance v0, Lcom/google/android/location/f/ad;

    sget-object v2, Lcom/google/android/location/f/ae;->b:Lcom/google/android/location/f/ae;

    invoke-direct {v0, v2, p1}, Lcom/google/android/location/f/ad;-><init>(Lcom/google/android/location/f/ae;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/location/h/w;->a(Lcom/google/android/location/f/ad;)V

    move-object v0, v1

    .line 221
    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 223
    goto :goto_1
.end method
