.class final Lcom/google/android/gms/usagereporting/a/r;
.super Lcom/google/android/gms/usagereporting/a/t;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/usagereporting/c;

.field final synthetic b:Lcom/google/android/gms/usagereporting/f;

.field final synthetic c:Lcom/google/android/gms/common/api/j;

.field final synthetic d:Lcom/google/android/gms/usagereporting/a/o;


# direct methods
.method constructor <init>(Lcom/google/android/gms/usagereporting/a/o;Lcom/google/android/gms/usagereporting/c;Lcom/google/android/gms/usagereporting/f;Lcom/google/android/gms/common/api/j;)V
    .locals 1

    .prologue
    .line 136
    iput-object p1, p0, Lcom/google/android/gms/usagereporting/a/r;->d:Lcom/google/android/gms/usagereporting/a/o;

    iput-object p2, p0, Lcom/google/android/gms/usagereporting/a/r;->a:Lcom/google/android/gms/usagereporting/c;

    iput-object p3, p0, Lcom/google/android/gms/usagereporting/a/r;->b:Lcom/google/android/gms/usagereporting/f;

    iput-object p4, p0, Lcom/google/android/gms/usagereporting/a/r;->c:Lcom/google/android/gms/common/api/j;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/usagereporting/a/t;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .prologue
    .line 158
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/google/android/gms/usagereporting/a/r;->d:Lcom/google/android/gms/usagereporting/a/o;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/usagereporting/a/o;->a(Lcom/google/android/gms/usagereporting/a/o;Lcom/google/android/gms/usagereporting/a/u;)Lcom/google/android/gms/usagereporting/a/u;

    .line 160
    iget-object v0, p0, Lcom/google/android/gms/usagereporting/a/r;->a:Lcom/google/android/gms/usagereporting/c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/usagereporting/c;->a(Lcom/google/android/gms/common/api/aa;)V

    .line 164
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/usagereporting/a/r;->a:Lcom/google/android/gms/usagereporting/c;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/usagereporting/c;->a(Lcom/google/android/gms/common/api/aa;)V

    goto :goto_0
.end method

.method public final c(Lcom/google/android/gms/common/api/Status;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/google/android/gms/usagereporting/a/r;->d:Lcom/google/android/gms/usagereporting/a/o;

    invoke-static {v0, v1}, Lcom/google/android/gms/usagereporting/a/o;->a(Lcom/google/android/gms/usagereporting/a/o;Lcom/google/android/gms/usagereporting/a/u;)Lcom/google/android/gms/usagereporting/a/u;

    .line 142
    iget-object v0, p0, Lcom/google/android/gms/usagereporting/a/r;->a:Lcom/google/android/gms/usagereporting/c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/usagereporting/c;->a(Lcom/google/android/gms/common/api/aa;)V

    .line 153
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/usagereporting/a/r;->b:Lcom/google/android/gms/usagereporting/f;

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/google/android/gms/usagereporting/a/r;->d:Lcom/google/android/gms/usagereporting/a/o;

    invoke-static {v0, v1}, Lcom/google/android/gms/usagereporting/a/o;->a(Lcom/google/android/gms/usagereporting/a/o;Lcom/google/android/gms/usagereporting/a/u;)Lcom/google/android/gms/usagereporting/a/u;

    .line 147
    iget-object v0, p0, Lcom/google/android/gms/usagereporting/a/r;->a:Lcom/google/android/gms/usagereporting/c;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/usagereporting/c;->a(Lcom/google/android/gms/common/api/aa;)V

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/usagereporting/a/r;->d:Lcom/google/android/gms/usagereporting/a/o;

    new-instance v1, Lcom/google/android/gms/usagereporting/a/u;

    iget-object v2, p0, Lcom/google/android/gms/usagereporting/a/r;->c:Lcom/google/android/gms/common/api/j;

    iget-object v3, p0, Lcom/google/android/gms/usagereporting/a/r;->b:Lcom/google/android/gms/usagereporting/f;

    invoke-interface {v2, v3}, Lcom/google/android/gms/common/api/j;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/api/v;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/usagereporting/a/u;-><init>(Lcom/google/android/gms/common/api/v;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/usagereporting/a/o;->a(Lcom/google/android/gms/usagereporting/a/o;Lcom/google/android/gms/usagereporting/a/u;)Lcom/google/android/gms/usagereporting/a/u;

    .line 152
    iget-object v0, p0, Lcom/google/android/gms/usagereporting/a/r;->d:Lcom/google/android/gms/usagereporting/a/o;

    invoke-virtual {v0}, Lcom/google/android/gms/usagereporting/a/o;->j()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/usagereporting/a/g;

    iget-object v1, p0, Lcom/google/android/gms/usagereporting/a/r;->d:Lcom/google/android/gms/usagereporting/a/o;

    invoke-static {v1}, Lcom/google/android/gms/usagereporting/a/o;->a(Lcom/google/android/gms/usagereporting/a/o;)Lcom/google/android/gms/usagereporting/a/u;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/usagereporting/a/g;->a(Lcom/google/android/gms/usagereporting/a/d;Lcom/google/android/gms/usagereporting/a/a;)V

    goto :goto_0
.end method
