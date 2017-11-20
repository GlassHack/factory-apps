.class public final Lcom/google/android/location/os/real/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/k/f;


# instance fields
.field final a:Lcom/google/android/location/os/e;

.field private final b:Lcom/google/android/location/os/real/ah;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/location/k/b;Lcom/google/android/location/f/ag;Lcom/google/android/location/os/real/x;Lcom/google/android/location/os/e;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p5, p0, Lcom/google/android/location/os/real/at;->a:Lcom/google/android/location/os/e;

    .line 24
    new-instance v0, Lcom/google/android/location/os/real/ah;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/location/os/real/ah;-><init>(Landroid/content/Context;Lcom/google/android/location/k/b;Lcom/google/android/location/f/ag;Lcom/google/android/location/os/real/x;)V

    iput-object v0, p0, Lcom/google/android/location/os/real/at;->b:Lcom/google/android/location/os/real/ah;

    .line 25
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/g/a/b/b/a;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 46
    iget-object v0, p0, Lcom/google/android/location/os/real/at;->a:Lcom/google/android/location/os/e;

    sget-object v1, Lcom/google/android/location/os/c;->A:Lcom/google/android/location/os/c;

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/c;)V

    .line 47
    iget-object v1, p0, Lcom/google/android/location/os/real/at;->b:Lcom/google/android/location/os/real/ah;

    iget-object v6, v1, Lcom/google/android/location/os/real/ah;->g:Lcom/google/android/location/os/real/ak;

    new-instance v0, Lcom/google/android/location/os/real/aj;

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/os/real/aj;-><init>(Lcom/google/android/location/os/real/ah;Lcom/google/g/a/b/b/a;Lcom/google/android/location/p/j;Lcom/google/android/location/k/a;Lcom/google/android/location/k/g;)V

    invoke-virtual {v6, v0}, Lcom/google/android/location/os/real/ak;->a(Lcom/google/android/location/os/real/aj;)V

    .line 48
    return-void
.end method

.method public final a(Lcom/google/g/a/b/b/a;Lcom/google/android/location/k/a;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 34
    iget-object v0, p0, Lcom/google/android/location/os/real/at;->a:Lcom/google/android/location/os/e;

    sget-object v1, Lcom/google/android/location/os/c;->C:Lcom/google/android/location/os/c;

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/c;)V

    .line 35
    iget-object v1, p0, Lcom/google/android/location/os/real/at;->b:Lcom/google/android/location/os/real/ah;

    iget-object v6, v1, Lcom/google/android/location/os/real/ah;->f:Lcom/google/android/location/os/real/ak;

    new-instance v0, Lcom/google/android/location/os/real/aj;

    move-object v2, p1

    move-object v4, p2

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/os/real/aj;-><init>(Lcom/google/android/location/os/real/ah;Lcom/google/g/a/b/b/a;Lcom/google/android/location/p/j;Lcom/google/android/location/k/a;Lcom/google/android/location/k/g;)V

    invoke-virtual {v6, v0}, Lcom/google/android/location/os/real/ak;->a(Lcom/google/android/location/os/real/aj;)V

    .line 36
    return-void
.end method

.method public final a(Lcom/google/g/a/b/b/a;Lcom/google/android/location/p/j;Lcom/google/android/location/k/g;)V
    .locals 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/location/os/real/at;->b:Lcom/google/android/location/os/real/ah;

    new-instance v1, Lcom/google/android/location/os/real/au;

    sget-object v2, Lcom/google/android/location/os/c;->l:Lcom/google/android/location/os/c;

    invoke-direct {v1, p0, p3, v2}, Lcom/google/android/location/os/real/au;-><init>(Lcom/google/android/location/os/real/at;Lcom/google/android/location/k/g;Lcom/google/android/location/os/c;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/location/os/real/ah;->a(Lcom/google/g/a/b/b/a;Lcom/google/android/location/p/j;Lcom/google/android/location/k/g;)V

    .line 30
    return-void
.end method

.method public final b(Lcom/google/g/a/b/b/a;Lcom/google/android/location/p/j;Lcom/google/android/location/k/g;)V
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/location/os/real/at;->a:Lcom/google/android/location/os/e;

    sget-object v1, Lcom/google/android/location/os/c;->D:Lcom/google/android/location/os/c;

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/c;)V

    .line 41
    iget-object v0, p0, Lcom/google/android/location/os/real/at;->b:Lcom/google/android/location/os/real/ah;

    new-instance v1, Lcom/google/android/location/os/real/au;

    sget-object v2, Lcom/google/android/location/os/c;->k:Lcom/google/android/location/os/c;

    invoke-direct {v1, p0, p3, v2}, Lcom/google/android/location/os/real/au;-><init>(Lcom/google/android/location/os/real/at;Lcom/google/android/location/k/g;Lcom/google/android/location/os/c;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/location/os/real/ah;->a(Lcom/google/g/a/b/b/a;Lcom/google/android/location/p/j;Lcom/google/android/location/k/g;)V

    .line 42
    return-void
.end method
