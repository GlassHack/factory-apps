.class public abstract Lcom/google/g/a/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/g/a/b/k;


# instance fields
.field private final a:Lcom/google/g/a/b/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/google/g/a/b/m;

    invoke-direct {v0, p0}, Lcom/google/g/a/b/m;-><init>(Lcom/google/g/a/b/k;)V

    iput-object v0, p0, Lcom/google/g/a/b/c;->a:Lcom/google/g/a/b/m;

    .line 17
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;[B)Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/g/a/b/c;->a:Lcom/google/g/a/b/m;

    invoke-virtual {v0, p1, p2}, Lcom/google/g/a/b/m;->a(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/g/a/b/c;->a:Lcom/google/g/a/b/m;

    invoke-virtual {v0, p1}, Lcom/google/g/a/b/m;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
