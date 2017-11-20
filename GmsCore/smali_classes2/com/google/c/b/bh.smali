.class final Lcom/google/c/b/bh;
.super Lcom/google/c/b/ax;
.source "SourceFile"


# instance fields
.field final b:I


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1828
    invoke-direct {p0, p1}, Lcom/google/c/b/ax;-><init>(Ljava/lang/Object;)V

    .line 1829
    iput p2, p0, Lcom/google/c/b/bh;->b:I

    .line 1830
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 1834
    iget v0, p0, Lcom/google/c/b/bh;->b:I

    return v0
.end method
