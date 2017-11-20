.class final Lcom/google/android/location/os/real/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/collectionlib/ao;


# instance fields
.field final a:Lcom/google/android/location/collectionlib/ao;

.field private final b:Lcom/google/android/location/os/at;


# direct methods
.method constructor <init>(Lcom/google/android/location/collectionlib/ao;Lcom/google/android/location/os/at;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/collectionlib/ao;

    .line 52
    iput-object p2, p0, Lcom/google/android/location/os/real/b;->b:Lcom/google/android/location/os/at;

    .line 53
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/android/location/os/real/b;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    new-instance v1, Lcom/google/android/location/os/real/o;

    invoke-direct {v1, p0}, Lcom/google/android/location/os/real/o;-><init>(Lcom/google/android/location/os/real/b;)V

    invoke-interface {v0, v1}, Lcom/google/android/location/k/j;->a(Ljava/lang/Runnable;)Z

    .line 296
    return-void
.end method

.method public final a(ILcom/google/g/a/b/b/a;)V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/location/os/real/b;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    new-instance v1, Lcom/google/android/location/os/real/d;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/location/os/real/d;-><init>(Lcom/google/android/location/os/real/b;ILcom/google/g/a/b/b/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/location/k/j;->a(Ljava/lang/Runnable;)Z

    .line 156
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/location/os/real/b;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    new-instance v1, Lcom/google/android/location/os/real/r;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/location/os/real/r;-><init>(Lcom/google/android/location/os/real/b;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/location/k/j;->a(Ljava/lang/Runnable;)Z

    .line 94
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/location/os/real/b;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    new-instance v1, Lcom/google/android/location/os/real/s;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/location/os/real/s;-><init>(Lcom/google/android/location/os/real/b;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/location/k/j;->a(Ljava/lang/Runnable;)Z

    .line 105
    return-void
.end method

.method public final a(Lcom/google/android/location/collectionlib/cj;)V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/location/os/real/b;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    new-instance v1, Lcom/google/android/location/os/real/t;

    invoke-direct {v1, p0, p1}, Lcom/google/android/location/os/real/t;-><init>(Lcom/google/android/location/os/real/b;Lcom/google/android/location/collectionlib/cj;)V

    invoke-interface {v0, v1}, Lcom/google/android/location/k/j;->a(Ljava/lang/Runnable;)Z

    .line 115
    return-void
.end method

.method public final a(Lcom/google/g/a/b/b/a;)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/location/os/real/b;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    new-instance v1, Lcom/google/android/location/os/real/v;

    invoke-direct {v1, p0, p1}, Lcom/google/android/location/os/real/v;-><init>(Lcom/google/android/location/os/real/b;Lcom/google/g/a/b/b/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/location/k/j;->a(Ljava/lang/Runnable;)Z

    .line 135
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/location/os/real/b;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    new-instance v1, Lcom/google/android/location/os/real/u;

    invoke-direct {v1, p0, p1}, Lcom/google/android/location/os/real/u;-><init>(Lcom/google/android/location/os/real/b;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/location/k/j;->a(Ljava/lang/Runnable;)Z

    .line 125
    return-void
.end method

.method public final a(Ljava/lang/String;ILcom/google/g/a/b/b/a;)V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/location/os/real/b;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    new-instance v1, Lcom/google/android/location/os/real/c;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/location/os/real/c;-><init>(Lcom/google/android/location/os/real/b;Ljava/lang/String;ILcom/google/g/a/b/b/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/location/k/j;->a(Ljava/lang/Runnable;)Z

    .line 63
    return-void
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/location/os/real/b;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    new-instance v1, Lcom/google/android/location/os/real/j;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/location/os/real/j;-><init>(Lcom/google/android/location/os/real/b;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/location/k/j;->a(Ljava/lang/Runnable;)Z

    .line 74
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/location/os/real/b;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    new-instance v1, Lcom/google/android/location/os/real/w;

    invoke-direct {v1, p0, p1}, Lcom/google/android/location/os/real/w;-><init>(Lcom/google/android/location/os/real/b;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Lcom/google/android/location/k/j;->a(Ljava/lang/Runnable;)Z

    .line 146
    return-void
.end method

.method public final a(ZZ)V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/android/location/os/real/b;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    new-instance v1, Lcom/google/android/location/os/real/p;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/location/os/real/p;-><init>(Lcom/google/android/location/os/real/b;ZZ)V

    invoke-interface {v0, v1}, Lcom/google/android/location/k/j;->a(Ljava/lang/Runnable;)Z

    .line 306
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/location/os/real/b;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    new-instance v1, Lcom/google/android/location/os/real/i;

    invoke-direct {v1, p0}, Lcom/google/android/location/os/real/i;-><init>(Lcom/google/android/location/os/real/b;)V

    invoke-interface {v0, v1}, Lcom/google/android/location/k/j;->a(Ljava/lang/Runnable;)Z

    .line 206
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/location/os/real/b;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    new-instance v1, Lcom/google/android/location/os/real/h;

    invoke-direct {v1, p0}, Lcom/google/android/location/os/real/h;-><init>(Lcom/google/android/location/os/real/b;)V

    invoke-interface {v0, v1}, Lcom/google/android/location/k/j;->a(Ljava/lang/Runnable;)Z

    .line 196
    return-void
.end method

.method public final c_(I)V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/location/os/real/b;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    new-instance v1, Lcom/google/android/location/os/real/f;

    invoke-direct {v1, p0, p1}, Lcom/google/android/location/os/real/f;-><init>(Lcom/google/android/location/os/real/b;I)V

    invoke-interface {v0, v1}, Lcom/google/android/location/k/j;->a(Ljava/lang/Runnable;)Z

    .line 176
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/location/os/real/b;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    new-instance v1, Lcom/google/android/location/os/real/e;

    invoke-direct {v1, p0}, Lcom/google/android/location/os/real/e;-><init>(Lcom/google/android/location/os/real/b;)V

    invoke-interface {v0, v1}, Lcom/google/android/location/k/j;->a(Ljava/lang/Runnable;)Z

    .line 166
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/android/location/os/real/b;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    new-instance v1, Lcom/google/android/location/os/real/l;

    invoke-direct {v1, p0}, Lcom/google/android/location/os/real/l;-><init>(Lcom/google/android/location/os/real/b;)V

    invoke-interface {v0, v1}, Lcom/google/android/location/k/j;->a(Ljava/lang/Runnable;)Z

    .line 266
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/android/location/os/real/b;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    new-instance v1, Lcom/google/android/location/os/real/k;

    invoke-direct {v1, p0}, Lcom/google/android/location/os/real/k;-><init>(Lcom/google/android/location/os/real/b;)V

    invoke-interface {v0, v1}, Lcom/google/android/location/k/j;->a(Ljava/lang/Runnable;)Z

    .line 256
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/location/os/real/b;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    new-instance v1, Lcom/google/android/location/os/real/g;

    invoke-direct {v1, p0}, Lcom/google/android/location/os/real/g;-><init>(Lcom/google/android/location/os/real/b;)V

    invoke-interface {v0, v1}, Lcom/google/android/location/k/j;->a(Ljava/lang/Runnable;)Z

    .line 186
    return-void
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/android/location/os/real/b;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    new-instance v1, Lcom/google/android/location/os/real/m;

    invoke-direct {v1, p0}, Lcom/google/android/location/os/real/m;-><init>(Lcom/google/android/location/os/real/b;)V

    invoke-interface {v0, v1}, Lcom/google/android/location/k/j;->a(Ljava/lang/Runnable;)Z

    .line 276
    return-void
.end method

.method public final i()V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/android/location/os/real/b;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    new-instance v1, Lcom/google/android/location/os/real/n;

    invoke-direct {v1, p0}, Lcom/google/android/location/os/real/n;-><init>(Lcom/google/android/location/os/real/b;)V

    invoke-interface {v0, v1}, Lcom/google/android/location/k/j;->a(Ljava/lang/Runnable;)Z

    .line 286
    return-void
.end method

.method public final j()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/location/os/real/b;->b:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    new-instance v1, Lcom/google/android/location/os/real/q;

    invoke-direct {v1, p0}, Lcom/google/android/location/os/real/q;-><init>(Lcom/google/android/location/os/real/b;)V

    invoke-interface {v0, v1}, Lcom/google/android/location/k/j;->a(Ljava/lang/Runnable;)Z

    .line 84
    return-void
.end method
