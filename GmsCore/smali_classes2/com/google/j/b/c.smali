.class public final Lcom/google/j/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/j/g;


# instance fields
.field private a:Lcom/google/j/f;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/google/j/f;)V
    .locals 4

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-lez p2, :cond_1

    .line 35
    iput p2, p0, Lcom/google/j/b/c;->b:I

    .line 42
    :goto_0
    if-eqz p1, :cond_4

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 53
    :cond_0
    :goto_1
    if-lez v0, :cond_3

    .line 54
    add-int/lit8 v1, v0, -0x1

    .line 55
    const/16 v0, 0x2c

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    .line 57
    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 59
    const-string v2, "g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 60
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, p3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p3, v1

    goto :goto_1

    .line 37
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/j/b/c;->b:I

    goto :goto_0

    .line 61
    :cond_2
    const-string v2, "n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unrecognised encoding: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_3
    if-lez p2, :cond_5

    .line 70
    new-instance v0, Lcom/google/j/f;

    iget v1, p0, Lcom/google/j/b/c;->b:I

    invoke-direct {v0, p3, v1}, Lcom/google/j/f;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/google/j/b/c;->a:Lcom/google/j/f;

    .line 75
    :cond_4
    :goto_2
    return-void

    .line 72
    :cond_5
    new-instance v0, Lcom/google/j/f;

    const v1, 0x7fffffff

    invoke-direct {v0, p3, v1}, Lcom/google/j/f;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/google/j/b/c;->a:Lcom/google/j/f;

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public final s_()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/google/j/b/c;->b:I

    return v0
.end method

.method public final t_()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/j/b/c;->a:Lcom/google/j/f;

    return-object v0
.end method
