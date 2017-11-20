.class public final Lcom/google/android/gms/fitness/b/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/b/d;


# instance fields
.field private a:Lcom/google/android/gms/fitness/b/a/g;

.field private b:Lcom/google/android/gms/fitness/b/a/e;

.field private c:J

.field private d:J

.field private e:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/b/a/g;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/fitness/b/a/d;->b:Lcom/google/android/gms/fitness/b/a/e;

    .line 23
    iput-wide v2, p0, Lcom/google/android/gms/fitness/b/a/d;->c:J

    .line 24
    iput-wide v2, p0, Lcom/google/android/gms/fitness/b/a/d;->d:J

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/b/a/d;->e:Ljava/util/List;

    .line 28
    iput-object p1, p0, Lcom/google/android/gms/fitness/b/a/d;->a:Lcom/google/android/gms/fitness/b/a/g;

    .line 29
    return-void
.end method


# virtual methods
.method public final synthetic a(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/b/d;
    .locals 3

    .prologue
    .line 20
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/b/a/d;->c:J

    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/fitness/b/e;)Lcom/google/android/gms/fitness/b/d;
    .locals 3

    .prologue
    .line 20
    instance-of v0, p1, Lcom/google/android/gms/fitness/b/a/e;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/fitness/b/a/e;

    iput-object p1, p0, Lcom/google/android/gms/fitness/b/a/d;->b:Lcom/google/android/gms/fitness/b/a/e;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/fitness/b/a/g;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/b/a/g;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/fitness/b/a/d;->b:Lcom/google/android/gms/fitness/b/a/e;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/b/a/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/a/g;->c(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/a/g;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/fitness/b/a/d;->b:Lcom/google/android/gms/fitness/b/a/e;

    iget-object v2, v2, Lcom/google/android/gms/fitness/b/a/e;->a:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataSource;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/fitness/b/a/g;->d(Ljava/lang/String;)Lcom/google/android/gms/fitness/b/a/g;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/fitness/b/a/d;->b:Lcom/google/android/gms/fitness/b/a/e;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/b/a/e;->e()Lcom/google/android/gms/fitness/b/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/fitness/b/a/g;->b(Lcom/google/android/gms/fitness/b/h;)Lcom/google/android/gms/fitness/b/a/g;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/fitness/b/a/d;->b:Lcom/google/android/gms/fitness/b/a/e;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/b/a/e;->a()Lcom/google/android/gms/fitness/b/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/fitness/b/a/g;->a(Lcom/google/android/gms/fitness/b/b;)Lcom/google/android/gms/fitness/b/f;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/a/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/a/e;

    iput-object v0, p0, Lcom/google/android/gms/fitness/b/a/d;->b:Lcom/google/android/gms/fitness/b/a/e;

    goto :goto_0
.end method

.method public final synthetic a()Lcom/google/android/gms/fitness/b/k;
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/google/android/gms/fitness/b/a/n;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/b/a/n;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/fitness/b/a/d;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final synthetic b()Lcom/google/android/gms/fitness/b/c;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/b/a/d;->c()Lcom/google/android/gms/fitness/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic b(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/fitness/b/d;
    .locals 3

    .prologue
    .line 20
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/b/a/d;->d:J

    return-object p0
.end method

.method public final c()Lcom/google/android/gms/fitness/b/a/c;
    .locals 6

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a/d;->a:Lcom/google/android/gms/fitness/b/a/g;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/b/a/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/a/e;

    iget-object v0, v0, Lcom/google/android/gms/fitness/b/a/e;->a:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v2

    .line 69
    iget-wide v0, p0, Lcom/google/android/gms/fitness/b/a/d;->d:J

    iget-wide v4, p0, Lcom/google/android/gms/fitness/b/a/d;->c:J

    invoke-virtual {v2, v0, v1, v4, v5}, Lcom/google/android/gms/fitness/data/DataPoint;->a(JJ)Lcom/google/android/gms/fitness/data/DataPoint;

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a/d;->b:Lcom/google/android/gms/fitness/b/a/e;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/fitness/b/a/d;->b:Lcom/google/android/gms/fitness/b/a/e;

    iget-object v0, v0, Lcom/google/android/gms/fitness/b/a/e;->a:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/fitness/data/DataPoint;->b(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;

    .line 75
    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataPoint;->a()[Lcom/google/android/gms/fitness/data/Value;

    move-result-object v3

    .line 76
    const/4 v0, 0x0

    .line 77
    iget-object v1, p0, Lcom/google/android/gms/fitness/b/a/d;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/a/n;

    .line 78
    iget-object v5, v0, Lcom/google/android/gms/fitness/b/a/n;->a:Ljava/lang/Float;

    if-eqz v5, :cond_2

    .line 79
    aget-object v5, v3, v1

    iget-object v0, v0, Lcom/google/android/gms/fitness/b/a/n;->a:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v5, v0}, Lcom/google/android/gms/fitness/data/Value;->a(F)V

    .line 83
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 84
    goto :goto_0

    .line 80
    :cond_2
    iget-object v5, v0, Lcom/google/android/gms/fitness/b/a/n;->b:Ljava/lang/Integer;

    if-eqz v5, :cond_1

    .line 81
    aget-object v5, v3, v1

    iget-object v0, v0, Lcom/google/android/gms/fitness/b/a/n;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/google/android/gms/fitness/data/Value;->a(I)V

    goto :goto_1

    .line 86
    :cond_3
    new-instance v0, Lcom/google/android/gms/fitness/b/a/c;

    invoke-direct {v0, v2}, Lcom/google/android/gms/fitness/b/a/c;-><init>(Lcom/google/android/gms/fitness/data/DataPoint;)V

    return-object v0
.end method
