.class public final Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a/a;
.super Lcom/google/m/b/a/c/a;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/m/b/a/c/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/m/b/a/c/a;-><init>()V

    .line 18
    sget-object v0, Lcom/google/m/b/a/c/b;->a:Lcom/google/m/b/a/c/b;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a/a;->a:Lcom/google/m/b/a/c/b;

    return-void
.end method


# virtual methods
.method public final a([BLjava/util/List;[B)I
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/m/b/a/c/b;->b:Lcom/google/m/b/a/c/b;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a/a;->a:Lcom/google/m/b/a/c/b;

    .line 32
    const/4 v0, -0x1

    return v0
.end method

.method public final a()Lcom/google/m/b/a/c/b;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a/a;->a:Lcom/google/m/b/a/c/b;

    return-object v0
.end method

.method public final a([B)[B
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/google/m/b/a/c/b;->c:Lcom/google/m/b/a/c/b;

    iput-object v0, p0, Lcom/google/android/gms/auth/be/proximity/authorization/a/c/a/a;->a:Lcom/google/m/b/a/c/b;

    .line 50
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public final b()[B
    .locals 1

    .prologue
    .line 43
    const-string v0, "hello"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public final b([B)[B
    .locals 0

    .prologue
    .line 55
    return-object p1
.end method

.method public final c([B)[B
    .locals 0

    .prologue
    .line 60
    return-object p1
.end method
