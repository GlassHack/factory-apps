.class public final Lcom/google/maps/api/android/lib6/b/d;
.super Lcom/google/maps/api/android/lib6/b/b;


# instance fields
.field private final a:Lcom/google/g/a/b/b/f;


# direct methods
.method public constructor <init>(Lcom/google/g/a/b/b/f;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/b/b;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/b/d;->a:Lcom/google/g/a/b/b/f;

    invoke-virtual {p1, v2}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->e()Lcom/google/maps/api/android/lib6/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/e;->h()Lcom/google/g/a/e;

    move-result-object v0

    const-string v1, "Cohort"

    invoke-virtual {v0, v1}, Lcom/google/g/a/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2, v0}, Lcom/google/g/a/b/b/f;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/f;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/DataOutput;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/d;->a:Lcom/google/g/a/b/b/f;

    invoke-static {p1, v0}, Lcom/google/g/a/b/b/j;->a(Ljava/io/DataOutput;Lcom/google/g/a/b/b/f;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Ljava/io/DataInput;)Z
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    sget-object v0, Lcom/google/n/c/a/a/n;->b:Lcom/google/g/a/b/b/h;

    invoke-static {v0, p1}, Lcom/google/g/a/b/b/j;->a(Lcom/google/g/a/b/b/h;Ljava/io/DataInput;)Lcom/google/g/a/b/b/f;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v8}, Lcom/google/g/a/b/b/f;->g(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/b/d;->a:Lcom/google/g/a/b/b/f;

    invoke-virtual {v2, v8, v0}, Lcom/google/g/a/b/b/f;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/f;

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->e()Lcom/google/maps/api/android/lib6/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/b/e;->h()Lcom/google/g/a/e;

    move-result-object v2

    const-string v3, "Cohort"

    if-nez v0, :cond_2

    iget-object v0, v2, Lcom/google/g/a/e;->a:Lcom/google/g/a/b/x;

    const/4 v2, 0x0

    invoke-interface {v0, v3, v2}, Lcom/google/g/a/b/x;->a(Ljava/lang/String;[B)Z

    :cond_0
    :goto_0
    invoke-virtual {v1, v9}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/h;->a()Lcom/google/maps/api/android/lib6/b/h;

    move-result-object v0

    invoke-virtual {v1, v9}, Lcom/google/g/a/b/b/f;->f(I)Lcom/google/g/a/b/b/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/b/h;->a(Lcom/google/g/a/b/b/f;)V

    :cond_1
    return v8

    :cond_2
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    instance-of v6, v0, Ljava/lang/Boolean;

    if-eqz v6, :cond_3

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v5, v0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    :goto_1
    iget-object v0, v2, Lcom/google/g/a/e;->a:Lcom/google/g/a/b/x;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-interface {v0, v3, v2}, Lcom/google/g/a/b/x;->a(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_1
    instance-of v6, v0, Ljava/lang/String;

    if-eqz v6, :cond_4

    check-cast v0, Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    instance-of v6, v0, Ljava/lang/Integer;

    if-eqz v6, :cond_5

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v5, v0}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_1

    :cond_5
    instance-of v6, v0, Ljava/lang/Long;

    if-eqz v6, :cond_6

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Ljava/io/DataOutput;->writeLong(J)V

    goto :goto_1

    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bad type: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final h()I
    .locals 1

    const/16 v0, 0x3e

    return v0
.end method
