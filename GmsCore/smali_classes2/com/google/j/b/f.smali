.class public final Lcom/google/j/b/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/io/DataInputStream;

.field public b:[Ljava/lang/String;

.field public c:[Ljava/lang/String;

.field public d:I

.field public e:I

.field private f:Lcom/google/j/b/o;

.field private g:I


# direct methods
.method public constructor <init>(Lcom/google/j/b/o;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/j/b/f;->f:Lcom/google/j/b/o;

    .line 39
    iget v1, p1, Lcom/google/j/b/o;->d:I

    iput v1, p0, Lcom/google/j/b/f;->e:I

    .line 40
    invoke-virtual {p1}, Lcom/google/j/b/o;->s_()I

    move-result v1

    iput v1, p0, Lcom/google/j/b/f;->d:I

    .line 41
    new-instance v1, Ljava/io/DataInputStream;

    invoke-virtual {p1}, Lcom/google/j/b/o;->t_()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/google/j/b/f;->a:Ljava/io/DataInputStream;

    .line 43
    instance-of v1, p1, Lcom/google/j/b/h;

    if-eqz v1, :cond_0

    .line 44
    check-cast p1, Lcom/google/j/b/h;

    .line 46
    iget-object v1, p1, Lcom/google/j/b/h;->a:Lcom/google/j/b/b;

    invoke-virtual {v1}, Lcom/google/j/b/b;->d()Ljava/util/Hashtable;

    move-result-object v2

    .line 47
    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v1

    iput v1, p0, Lcom/google/j/b/f;->g:I

    .line 48
    iget v1, p0, Lcom/google/j/b/f;->g:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/google/j/b/f;->b:[Ljava/lang/String;

    .line 49
    iget v1, p0, Lcom/google/j/b/f;->g:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/google/j/b/f;->c:[Ljava/lang/String;

    .line 50
    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    move v1, v0

    .line 53
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    iget-object v4, p0, Lcom/google/j/b/f;->b:[Ljava/lang/String;

    aput-object v0, v4, v1

    .line 56
    iget-object v4, p0, Lcom/google/j/b/f;->c:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v1

    .line 57
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 58
    goto :goto_0

    .line 63
    :cond_0
    iget v1, p0, Lcom/google/j/b/f;->d:I

    if-lez v1, :cond_1

    .line 64
    iget-object v1, p0, Lcom/google/j/b/f;->a:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/google/j/b/f;->g:I

    .line 65
    iget v1, p0, Lcom/google/j/b/f;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/j/b/f;->d:I

    .line 67
    iget v1, p0, Lcom/google/j/b/f;->g:I

    if-lez v1, :cond_1

    .line 68
    iget v1, p0, Lcom/google/j/b/f;->g:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/google/j/b/f;->b:[Ljava/lang/String;

    .line 69
    iget v1, p0, Lcom/google/j/b/f;->g:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/google/j/b/f;->c:[Ljava/lang/String;

    .line 71
    :goto_1
    iget v1, p0, Lcom/google/j/b/f;->g:I

    if-ge v0, v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/google/j/b/f;->a:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 78
    iget-object v2, p0, Lcom/google/j/b/f;->b:[Ljava/lang/String;

    aput-object v1, v2, v0

    .line 79
    iget v2, p0, Lcom/google/j/b/f;->d:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    iput v1, p0, Lcom/google/j/b/f;->d:I

    .line 81
    iget-object v1, p0, Lcom/google/j/b/f;->a:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 82
    iget-object v2, p0, Lcom/google/j/b/f;->c:[Ljava/lang/String;

    aput-object v1, v2, v0

    .line 83
    iget v2, p0, Lcom/google/j/b/f;->d:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    iput v1, p0, Lcom/google/j/b/f;->d:I

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 87
    :cond_1
    return-void
.end method
