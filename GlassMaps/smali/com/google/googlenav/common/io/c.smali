.class public abstract Lcom/google/googlenav/common/io/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/common/io/PersistentStore;


# instance fields
.field private final a:Lcom/google/googlenav/common/io/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/google/googlenav/common/io/m;

    invoke-direct {v0, p0}, Lcom/google/googlenav/common/io/m;-><init>(Lcom/google/googlenav/common/io/PersistentStore;)V

    iput-object v0, p0, Lcom/google/googlenav/common/io/c;->a:Lcom/google/googlenav/common/io/m;

    .line 17
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/googlenav/common/io/c;->a:Lcom/google/googlenav/common/io/m;

    invoke-virtual {v0}, Lcom/google/googlenav/common/io/m;->a()V

    .line 64
    return-void
.end method

.method public final a(Ljava/lang/String;[B)Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/googlenav/common/io/c;->a:Lcom/google/googlenav/common/io/m;

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/common/io/m;->a(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method public final a_(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/googlenav/common/io/c;->a:Lcom/google/googlenav/common/io/m;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/m;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
