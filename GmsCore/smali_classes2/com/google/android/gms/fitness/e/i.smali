.class final Lcom/google/android/gms/fitness/e/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/e/b;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Lcom/google/protobuf/nano/j;
    .locals 3

    .prologue
    .line 175
    check-cast p1, Lcom/google/android/gms/fitness/data/DataSource;

    new-instance v1, Lcom/google/n/a/a/a/a/d;

    invoke-direct {v1}, Lcom/google/n/a/a/a/a/d;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/google/n/a/a/a/a/d;->f:Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->e()Lcom/google/android/gms/fitness/data/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/fitness/e/c;->c:Lcom/google/android/gms/fitness/e/b;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->e()Lcom/google/android/gms/fitness/data/Application;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/fitness/e/b;->a(Ljava/lang/Object;)Lcom/google/protobuf/nano/j;

    move-result-object v0

    check-cast v0, Lcom/google/n/a/a/a/a/b;

    iput-object v0, v1, Lcom/google/n/a/a/a/a/d;->i:Lcom/google/n/a/a/a/a/b;

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->f()Lcom/google/android/gms/fitness/data/Device;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/fitness/e/c;->b:Lcom/google/android/gms/fitness/e/b;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->f()Lcom/google/android/gms/fitness/data/Device;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/fitness/e/b;->a(Ljava/lang/Object;)Lcom/google/protobuf/nano/j;

    move-result-object v0

    check-cast v0, Lcom/google/n/a/a/a/a/g;

    iput-object v0, v1, Lcom/google/n/a/a/a/a/d;->h:Lcom/google/n/a/a/a/a/g;

    :cond_1
    sget-object v0, Lcom/google/android/gms/fitness/e/c;->e:Lcom/google/android/gms/fitness/e/b;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/fitness/e/b;->a(Ljava/lang/Object;)Lcom/google/protobuf/nano/j;

    move-result-object v0

    check-cast v0, Lcom/google/n/a/a/a/a/e;

    iput-object v0, v1, Lcom/google/n/a/a/a/a/d;->g:Lcom/google/n/a/a/a/a/e;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/n/a/a/a/a/d;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/n/a/a/a/a/d;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/n/a/a/a/a/d;->a:Ljava/lang/String;

    return-object v1
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/j;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 175
    check-cast p1, Lcom/google/n/a/a/a/a/d;

    new-instance v1, Lcom/google/android/gms/fitness/data/h;

    invoke-direct {v1}, Lcom/google/android/gms/fitness/data/h;-><init>()V

    sget-object v0, Lcom/google/android/gms/fitness/e/c;->e:Lcom/google/android/gms/fitness/e/b;

    iget-object v2, p1, Lcom/google/n/a/a/a/a/d;->g:Lcom/google/n/a/a/a/a/e;

    invoke-interface {v0, v2}, Lcom/google/android/gms/fitness/e/b;->a(Lcom/google/protobuf/nano/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataType;

    iput-object v0, v1, Lcom/google/android/gms/fitness/data/h;->a:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v0, p1, Lcom/google/n/a/a/a/a/d;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/google/android/gms/fitness/data/h;->b:I

    iget-object v0, p1, Lcom/google/n/a/a/a/a/d;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/c/a/ax;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/fitness/data/h;->a(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/h;

    move-result-object v1

    iget-object v0, p1, Lcom/google/n/a/a/a/a/d;->d:Ljava/lang/String;

    iput-object v0, v1, Lcom/google/android/gms/fitness/data/h;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/n/a/a/a/a/d;->h:Lcom/google/n/a/a/a/a/g;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/fitness/e/c;->b:Lcom/google/android/gms/fitness/e/b;

    iget-object v2, p1, Lcom/google/n/a/a/a/a/d;->h:Lcom/google/n/a/a/a/a/g;

    invoke-interface {v0, v2}, Lcom/google/android/gms/fitness/e/b;->a(Lcom/google/protobuf/nano/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/Device;

    iput-object v0, v1, Lcom/google/android/gms/fitness/data/h;->d:Lcom/google/android/gms/fitness/data/Device;

    :cond_0
    iget-object v0, p1, Lcom/google/n/a/a/a/a/d;->i:Lcom/google/n/a/a/a/a/b;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/n/a/a/a/a/d;->i:Lcom/google/n/a/a/a/a/b;

    iget-object v0, v0, Lcom/google/n/a/a/a/a/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/fitness/e/c;->c:Lcom/google/android/gms/fitness/e/b;

    iget-object v2, p1, Lcom/google/n/a/a/a/a/d;->i:Lcom/google/n/a/a/a/a/b;

    invoke-interface {v0, v2}, Lcom/google/android/gms/fitness/e/b;->a(Lcom/google/protobuf/nano/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/Application;

    iput-object v0, v1, Lcom/google/android/gms/fitness/data/h;->e:Lcom/google/android/gms/fitness/data/Application;

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/h;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    return-object v0
.end method
