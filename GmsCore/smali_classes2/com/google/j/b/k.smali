.class public final Lcom/google/j/b/k;
.super Lcom/google/j/b/o;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/j/b/c;


# direct methods
.method public constructor <init>(Lcom/google/j/f;)V
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/google/j/b/o;-><init>(Lcom/google/j/f;)V

    .line 23
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 24
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 27
    new-instance v2, Lcom/google/j/b/c;

    invoke-direct {v2, v1, v0, p1}, Lcom/google/j/b/c;-><init>(Ljava/lang/String;ILcom/google/j/f;)V

    iput-object v2, p0, Lcom/google/j/b/k;->a:Lcom/google/j/b/c;

    .line 28
    return-void
.end method


# virtual methods
.method public final s_()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/j/b/k;->a:Lcom/google/j/b/c;

    invoke-virtual {v0}, Lcom/google/j/b/c;->s_()I

    move-result v0

    return v0
.end method

.method public final t_()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/j/b/k;->a:Lcom/google/j/b/c;

    invoke-virtual {v0}, Lcom/google/j/b/c;->t_()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
