.class final Lcom/google/android/gms/fitness/e/k;
.super Lcom/google/android/gms/common/server/j;
.source "SourceFile"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 21
    sget-object v0, Lcom/google/android/gms/fitness/i/a;->a:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->h:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/fitness/i/a;->g:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/server/j;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Lcom/google/android/gms/common/server/ClientContext;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3

    .prologue
    .line 33
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/common/server/j;->a(Landroid/content/Context;Lcom/google/android/gms/common/server/ClientContext;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 34
    const-string v1, "User-Agent"

    const-string v2, "Fitness"

    invoke-static {p1, v2}, Lcom/google/android/gms/common/server/r;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-object v0
.end method

.method protected final a(Lcom/android/d/p;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 40
    new-instance v0, Lcom/google/android/gms/common/server/b;

    iget-object v1, p0, Lcom/google/android/gms/fitness/e/k;->a:Landroid/content/Context;

    sget-object v2, Lcom/google/android/gms/fitness/i/a;->d:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v2}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v2, Lcom/google/android/gms/fitness/i/a;->e:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v2}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v2, Lcom/google/android/gms/fitness/i/a;->f:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v2}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/server/b;-><init>(Landroid/content/Context;Ljava/lang/String;IIF)V

    invoke-virtual {p1, v0}, Lcom/android/d/p;->a(Lcom/android/d/x;)Lcom/android/d/p;

    .line 42
    return-void
.end method
