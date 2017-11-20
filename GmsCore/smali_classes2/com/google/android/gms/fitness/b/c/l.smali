.class public final Lcom/google/android/gms/fitness/b/c/l;
.super Lcom/google/android/gms/fitness/b/c/ag;
.source "SourceFile"


# instance fields
.field private final b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 19
    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/b/c/ag;-><init>(Z)V

    .line 20
    iput-boolean v0, p0, Lcom/google/android/gms/fitness/b/c/l;->b:Z

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/b/e;Lcom/google/android/gms/fitness/b/e;)I
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 25
    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lcom/google/android/gms/fitness/b/e;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "Cannot compare sensors of dissimilar data type"

    invoke-static {v3, v4}, Lcom/google/c/a/ah;->a(ZLjava/lang/Object;)V

    .line 29
    invoke-static {p1}, Lcom/google/android/gms/fitness/b/c/r;->d(Lcom/google/android/gms/fitness/b/e;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p2}, Lcom/google/android/gms/fitness/b/c/r;->d(Lcom/google/android/gms/fitness/b/e;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 30
    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/e;->f()Lcom/google/android/gms/fitness/b/i;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/android/gms/fitness/b/e;->f()Lcom/google/android/gms/fitness/b/i;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/b/c/l;->a(Lcom/google/android/gms/fitness/b/i;Lcom/google/android/gms/fitness/b/i;)I

    move-result v0

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 32
    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/fitness/b/c/r;->d(Lcom/google/android/gms/fitness/b/e;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 35
    invoke-static {p2}, Lcom/google/android/gms/fitness/b/c/r;->d(Lcom/google/android/gms/fitness/b/e;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 36
    goto :goto_0

    .line 40
    :cond_2
    iget-boolean v3, p0, Lcom/google/android/gms/fitness/b/c/l;->b:Z

    if-eqz v3, :cond_4

    .line 41
    invoke-static {p1}, Lcom/google/android/gms/fitness/b/c/r;->b(Lcom/google/android/gms/fitness/b/e;)Z

    move-result v3

    .line 42
    invoke-static {p2}, Lcom/google/android/gms/fitness/b/c/r;->b(Lcom/google/android/gms/fitness/b/e;)Z

    move-result v4

    .line 44
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    move v0, v2

    .line 45
    goto :goto_0

    .line 48
    :cond_3
    if-nez v3, :cond_0

    .line 51
    if-eqz v4, :cond_4

    move v0, v1

    .line 52
    goto :goto_0

    .line 57
    :cond_4
    invoke-static {p1}, Lcom/google/android/gms/fitness/b/c/r;->c(Lcom/google/android/gms/fitness/b/e;)Z

    move-result v3

    .line 58
    invoke-static {p2}, Lcom/google/android/gms/fitness/b/c/r;->c(Lcom/google/android/gms/fitness/b/e;)Z

    move-result v4

    .line 59
    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    move v0, v2

    .line 60
    goto :goto_0

    .line 62
    :cond_5
    if-nez v3, :cond_0

    .line 65
    if-eqz v4, :cond_6

    move v0, v1

    .line 66
    goto :goto_0

    .line 69
    :cond_6
    iget-boolean v2, p0, Lcom/google/android/gms/fitness/b/c/l;->a:Z

    if-eqz v2, :cond_8

    .line 71
    invoke-static {p1}, Lcom/google/android/gms/fitness/b/c/r;->a(Lcom/google/android/gms/fitness/b/e;)Z

    move-result v2

    .line 72
    invoke-static {p2}, Lcom/google/android/gms/fitness/b/c/r;->a(Lcom/google/android/gms/fitness/b/e;)Z

    move-result v3

    .line 74
    if-eqz v2, :cond_7

    if-nez v3, :cond_7

    move v0, v1

    .line 75
    goto :goto_0

    .line 77
    :cond_7
    if-eqz v3, :cond_8

    if-eqz v2, :cond_0

    .line 83
    :cond_8
    sget-object v2, Lcom/google/android/gms/fitness/b/h;->a:Lcom/google/android/gms/fitness/b/h;

    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/e;->e()Lcom/google/android/gms/fitness/b/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/fitness/b/h;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/e;->e()Lcom/google/android/gms/fitness/b/h;

    move-result-object v2

    invoke-interface {p2}, Lcom/google/android/gms/fitness/b/e;->e()Lcom/google/android/gms/fitness/b/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/fitness/b/h;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 85
    invoke-static {p1, p2}, Lcom/google/android/gms/fitness/b/c/l;->b(Lcom/google/android/gms/fitness/b/e;Lcom/google/android/gms/fitness/b/e;)I

    move-result v0

    goto :goto_0

    .line 86
    :cond_9
    sget-object v2, Lcom/google/android/gms/fitness/b/h;->a:Lcom/google/android/gms/fitness/b/h;

    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/e;->e()Lcom/google/android/gms/fitness/b/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/fitness/b/h;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 88
    sget-object v0, Lcom/google/android/gms/fitness/b/h;->a:Lcom/google/android/gms/fitness/b/h;

    invoke-interface {p2}, Lcom/google/android/gms/fitness/b/e;->e()Lcom/google/android/gms/fitness/b/h;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/fitness/b/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    .line 89
    goto/16 :goto_0

    .line 93
    :cond_a
    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/e;->f()Lcom/google/android/gms/fitness/b/i;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/android/gms/fitness/b/e;->f()Lcom/google/android/gms/fitness/b/i;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/b/c/l;->a(Lcom/google/android/gms/fitness/b/i;Lcom/google/android/gms/fitness/b/i;)I

    move-result v0

    goto/16 :goto_0
.end method

.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 9
    check-cast p1, Lcom/google/android/gms/fitness/b/e;

    check-cast p2, Lcom/google/android/gms/fitness/b/e;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/fitness/b/c/l;->a(Lcom/google/android/gms/fitness/b/e;Lcom/google/android/gms/fitness/b/e;)I

    move-result v0

    return v0
.end method
