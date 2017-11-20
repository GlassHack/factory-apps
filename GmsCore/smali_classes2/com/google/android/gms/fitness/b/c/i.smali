.class final Lcom/google/android/gms/fitness/b/c/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 168
    check-cast p1, Lcom/google/android/gms/fitness/b/c;

    check-cast p2, Lcom/google/android/gms/fitness/b/c;

    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/c;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/j;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/j;->a()I

    move-result v2

    invoke-interface {p2}, Lcom/google/android/gms/fitness/b/c;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/j;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/j;->a()I

    move-result v3

    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/c;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/j;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/j;->c()F

    move-result v4

    invoke-interface {p2}, Lcom/google/android/gms/fitness/b/c;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/b/j;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/b/j;->c()F

    move-result v0

    if-ne v2, v5, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-ne v3, v5, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {v4, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    goto :goto_0
.end method
