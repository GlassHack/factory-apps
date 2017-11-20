.class public abstract Lcom/google/g/a/b/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/g/a/b/x;


# instance fields
.field private final a:Lcom/google/g/a/b/z;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/g/a/b/z;

    invoke-direct {v0, p0}, Lcom/google/g/a/b/z;-><init>(Lcom/google/g/a/b/x;)V

    iput-object v0, p0, Lcom/google/g/a/b/r;->a:Lcom/google/g/a/b/z;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/g/a/b/r;->a:Lcom/google/g/a/b/z;

    invoke-virtual {v0}, Lcom/google/g/a/b/z;->a()V

    return-void
.end method

.method public final a(Ljava/lang/String;[B)Z
    .locals 1

    iget-object v0, p0, Lcom/google/g/a/b/r;->a:Lcom/google/g/a/b/z;

    invoke-virtual {v0, p1, p2}, Lcom/google/g/a/b/z;->a(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method public final c(Ljava/lang/String;)[B
    .locals 1

    iget-object v0, p0, Lcom/google/g/a/b/r;->a:Lcom/google/g/a/b/z;

    invoke-virtual {v0, p1}, Lcom/google/g/a/b/z;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
