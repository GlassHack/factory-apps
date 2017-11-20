.class public abstract Lcom/google/j/b/o;
.super Lcom/google/j/b/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/j/g;


# instance fields
.field protected c:Lcom/google/j/f;

.field public d:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/j/b/a;-><init>()V

    .line 26
    invoke-virtual {p0, p1}, Lcom/google/j/b/o;->a(I)V

    .line 27
    iput p2, p0, Lcom/google/j/b/o;->d:I

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/google/j/f;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/j/b/a;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/j/b/o;->c:Lcom/google/j/f;

    .line 41
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 44
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/j/b/o;->a(I)V

    .line 45
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lcom/google/j/b/o;->d:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return-void

    .line 46
    :catch_0
    move-exception v0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/j/b/o;->c:Lcom/google/j/f;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/google/j/b/o;->c:Lcom/google/j/f;

    invoke-virtual {v0}, Lcom/google/j/f;->b()V

    .line 88
    :cond_0
    return-void
.end method

.method public abstract s_()I
.end method

.method public abstract t_()Ljava/io/InputStream;
.end method
