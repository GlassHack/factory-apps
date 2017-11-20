.class public Lcom/google/android/gms/fitness/b/c/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field protected final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean p1, p0, Lcom/google/android/gms/fitness/b/c/ag;->a:Z

    .line 24
    return-void
.end method

.method private static a(Lcom/google/android/gms/fitness/b/i;)I
    .locals 1

    .prologue
    .line 90
    if-nez p0, :cond_0

    .line 91
    const/16 v0, 0x64

    .line 98
    :goto_0
    return v0

    .line 94
    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/fitness/b/i;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 98
    const/4 v0, 0x3

    goto :goto_0

    .line 95
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 96
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 97
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected static a(Lcom/google/android/gms/fitness/b/i;Lcom/google/android/gms/fitness/b/i;)I
    .locals 2

    .prologue
    .line 82
    invoke-static {p0}, Lcom/google/android/gms/fitness/b/c/ag;->a(Lcom/google/android/gms/fitness/b/i;)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/fitness/b/c/ag;->a(Lcom/google/android/gms/fitness/b/i;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected static b(Lcom/google/android/gms/fitness/b/e;Lcom/google/android/gms/fitness/b/e;)I
    .locals 2

    .prologue
    .line 68
    const-string v0, "com.google.activity.segment"

    invoke-interface {p0}, Lcom/google/android/gms/fitness/b/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    invoke-interface {p0}, Lcom/google/android/gms/fitness/b/e;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "detailed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/e;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, -0x1

    .line 78
    :goto_0
    return v0

    .line 73
    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/fitness/b/e;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/e;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "detailed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    const/4 v0, 0x1

    goto :goto_0

    .line 78
    :cond_1
    invoke-interface {p0}, Lcom/google/android/gms/fitness/b/e;->f()Lcom/google/android/gms/fitness/b/i;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/e;->f()Lcom/google/android/gms/fitness/b/i;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/b/c/ag;->a(Lcom/google/android/gms/fitness/b/i;Lcom/google/android/gms/fitness/b/i;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/fitness/b/e;Lcom/google/android/gms/fitness/b/e;)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 28
    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/google/android/gms/fitness/b/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Cannot compare sensors of dissimilar data type"

    invoke-static {v2, v3}, Lcom/google/c/a/ah;->a(ZLjava/lang/Object;)V

    .line 32
    invoke-static {p1}, Lcom/google/android/gms/fitness/b/c/r;->d(Lcom/google/android/gms/fitness/b/e;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p2}, Lcom/google/android/gms/fitness/b/c/r;->d(Lcom/google/android/gms/fitness/b/e;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 33
    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/e;->f()Lcom/google/android/gms/fitness/b/i;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/android/gms/fitness/b/e;->f()Lcom/google/android/gms/fitness/b/i;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/b/c/ag;->a(Lcom/google/android/gms/fitness/b/i;Lcom/google/android/gms/fitness/b/i;)I

    move-result v0

    .line 64
    :cond_0
    :goto_0
    return v0

    .line 34
    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/fitness/b/c/r;->d(Lcom/google/android/gms/fitness/b/e;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 36
    invoke-static {p2}, Lcom/google/android/gms/fitness/b/c/r;->d(Lcom/google/android/gms/fitness/b/e;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 37
    goto :goto_0

    .line 40
    :cond_2
    iget-boolean v2, p0, Lcom/google/android/gms/fitness/b/c/ag;->a:Z

    if-eqz v2, :cond_4

    .line 42
    invoke-static {p1}, Lcom/google/android/gms/fitness/b/c/r;->a(Lcom/google/android/gms/fitness/b/e;)Z

    move-result v2

    .line 43
    invoke-static {p2}, Lcom/google/android/gms/fitness/b/c/r;->a(Lcom/google/android/gms/fitness/b/e;)Z

    move-result v3

    .line 45
    if-eqz v2, :cond_3

    if-nez v3, :cond_3

    move v0, v1

    .line 46
    goto :goto_0

    .line 48
    :cond_3
    if-eqz v3, :cond_4

    if-eqz v2, :cond_0

    .line 54
    :cond_4
    sget-object v2, Lcom/google/android/gms/fitness/b/h;->a:Lcom/google/android/gms/fitness/b/h;

    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/e;->e()Lcom/google/android/gms/fitness/b/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/fitness/b/h;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/e;->e()Lcom/google/android/gms/fitness/b/h;

    move-result-object v2

    invoke-interface {p2}, Lcom/google/android/gms/fitness/b/e;->e()Lcom/google/android/gms/fitness/b/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/fitness/b/h;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 56
    invoke-static {p1, p2}, Lcom/google/android/gms/fitness/b/c/ag;->b(Lcom/google/android/gms/fitness/b/e;Lcom/google/android/gms/fitness/b/e;)I

    move-result v0

    goto :goto_0

    .line 57
    :cond_5
    sget-object v2, Lcom/google/android/gms/fitness/b/h;->a:Lcom/google/android/gms/fitness/b/h;

    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/e;->e()Lcom/google/android/gms/fitness/b/h;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/fitness/b/h;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    sget-object v0, Lcom/google/android/gms/fitness/b/h;->a:Lcom/google/android/gms/fitness/b/h;

    invoke-interface {p2}, Lcom/google/android/gms/fitness/b/e;->e()Lcom/google/android/gms/fitness/b/h;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/fitness/b/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    .line 60
    goto :goto_0

    .line 64
    :cond_6
    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/e;->f()Lcom/google/android/gms/fitness/b/i;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/android/gms/fitness/b/e;->f()Lcom/google/android/gms/fitness/b/i;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/b/c/ag;->a(Lcom/google/android/gms/fitness/b/i;Lcom/google/android/gms/fitness/b/i;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 17
    check-cast p1, Lcom/google/android/gms/fitness/b/e;

    check-cast p2, Lcom/google/android/gms/fitness/b/e;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/fitness/b/c/ag;->a(Lcom/google/android/gms/fitness/b/e;Lcom/google/android/gms/fitness/b/e;)I

    move-result v0

    return v0
.end method
