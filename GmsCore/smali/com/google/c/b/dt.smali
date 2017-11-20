.class final Lcom/google/c/b/dt;
.super Ljava/lang/ref/SoftReference;

# interfaces
.implements Lcom/google/c/b/ee;


# instance fields
.field private a:Lcom/google/c/b/dq;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/c/b/dq;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p3, p0, Lcom/google/c/b/dt;->a:Lcom/google/c/b/dq;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/c/b/dq;)Lcom/google/c/b/ee;
    .locals 1

    new-instance v0, Lcom/google/c/b/dt;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/c/b/dt;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/c/b/dq;)V

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final b()Lcom/google/c/b/dq;
    .locals 1

    iget-object v0, p0, Lcom/google/c/b/dt;->a:Lcom/google/c/b/dq;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/c/b/dt;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
