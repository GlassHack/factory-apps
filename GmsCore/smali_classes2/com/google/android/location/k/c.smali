.class public final Lcom/google/android/location/k/c;
.super Lcom/google/android/location/p/b;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/k/f;


# direct methods
.method public constructor <init>(Lcom/google/android/location/k/f;Z)V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/google/android/location/k/h;

    invoke-direct {v0}, Lcom/google/android/location/k/h;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/location/p/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 17
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/g/a/b/b/a;)V
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/google/android/location/k/c;->C()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/k/f;

    invoke-interface {v0, p1}, Lcom/google/android/location/k/f;->a(Lcom/google/g/a/b/b/a;)V

    .line 37
    return-void
.end method

.method public final a(Lcom/google/g/a/b/b/a;Lcom/google/android/location/k/a;)V
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/google/android/location/k/c;->C()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/k/f;

    invoke-interface {v0, p1, p2}, Lcom/google/android/location/k/f;->a(Lcom/google/g/a/b/b/a;Lcom/google/android/location/k/a;)V

    .line 27
    return-void
.end method

.method public final a(Lcom/google/g/a/b/b/a;Lcom/google/android/location/p/j;Lcom/google/android/location/k/g;)V
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/google/android/location/k/c;->C()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/k/f;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/location/k/f;->a(Lcom/google/g/a/b/b/a;Lcom/google/android/location/p/j;Lcom/google/android/location/k/g;)V

    .line 22
    return-void
.end method

.method public final b(Lcom/google/g/a/b/b/a;Lcom/google/android/location/p/j;Lcom/google/android/location/k/g;)V
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/android/location/k/c;->C()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/k/f;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/location/k/f;->b(Lcom/google/g/a/b/b/a;Lcom/google/android/location/p/j;Lcom/google/android/location/k/g;)V

    .line 32
    return-void
.end method
