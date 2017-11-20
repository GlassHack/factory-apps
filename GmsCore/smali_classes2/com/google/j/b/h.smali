.class public final Lcom/google/j/b/h;
.super Lcom/google/j/b/o;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/j/b/b;

.field public final b:[Lcom/google/j/b/b;

.field private final e:I


# direct methods
.method public constructor <init>(IILcom/google/j/b/b;[Lcom/google/j/b/b;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/j/b/o;-><init>(II)V

    .line 31
    iput-object p3, p0, Lcom/google/j/b/h;->a:Lcom/google/j/b/b;

    .line 32
    iput-object p4, p0, Lcom/google/j/b/h;->b:[Lcom/google/j/b/b;

    .line 33
    array-length v0, p4

    iput v0, p0, Lcom/google/j/b/h;->e:I

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/google/j/f;)V
    .locals 4

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/j/b/o;-><init>(Lcom/google/j/f;)V

    .line 46
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 49
    :try_start_0
    invoke-static {v1}, Lcom/google/j/b/b;->a(Ljava/io/InputStream;)Lcom/google/j/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/j/b/h;->a:Lcom/google/j/b/b;

    .line 50
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput v0, p0, Lcom/google/j/b/h;->e:I

    .line 51
    iget v0, p0, Lcom/google/j/b/h;->e:I

    new-array v0, v0, [Lcom/google/j/b/b;

    iput-object v0, p0, Lcom/google/j/b/h;->b:[Lcom/google/j/b/b;

    .line 53
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/google/j/b/h;->e:I

    if-ge v0, v2, :cond_0

    .line 54
    iget-object v2, p0, Lcom/google/j/b/h;->b:[Lcom/google/j/b/b;

    invoke-static {v1}, Lcom/google/j/b/b;->a(Ljava/io/InputStream;)Lcom/google/j/b/b;

    move-result-object v3

    aput-object v3, v2, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    throw v0

    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method public final s_()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/j/b/h;->a:Lcom/google/j/b/b;

    iget-object v0, v0, Lcom/google/j/b/b;->a:Lcom/google/j/g;

    invoke-interface {v0}, Lcom/google/j/g;->s_()I

    move-result v0

    return v0
.end method

.method public final t_()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/j/b/h;->a:Lcom/google/j/b/b;

    iget-object v0, v0, Lcom/google/j/b/b;->a:Lcom/google/j/g;

    invoke-interface {v0}, Lcom/google/j/g;->t_()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
