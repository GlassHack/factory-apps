.class public Lorg/ejml/ops/ReadCsv;
.super Ljava/lang/Object;


# instance fields
.field private comment:C

.field private hasComment:Z

.field private in:Ljava/io/BufferedReader;

.field private lineNumber:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lorg/ejml/ops/ReadCsv;->hasComment:Z

    iput v0, p0, Lorg/ejml/ops/ReadCsv;->lineNumber:I

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/ejml/ops/ReadCsv;->in:Ljava/io/BufferedReader;

    return-void
.end method

.method private isSpace(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected extractWords()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    iget v0, p0, Lorg/ejml/ops/ReadCsv;->lineNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ejml/ops/ReadCsv;->lineNumber:I

    iget-object v0, p0, Lorg/ejml/ops/ReadCsv;->in:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-boolean v1, p0, Lorg/ejml/ops/ReadCsv;->hasComment:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-char v2, p0, Lorg/ejml/ops/ReadCsv;->comment:C

    if-eq v1, v2, :cond_0

    :cond_2
    invoke-virtual {p0, v0}, Lorg/ejml/ops/ReadCsv;->parseWords(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getLineNumber()I
    .locals 1

    iget v0, p0, Lorg/ejml/ops/ReadCsv;->lineNumber:I

    return v0
.end method

.method public getReader()Ljava/io/BufferedReader;
    .locals 1

    iget-object v0, p0, Lorg/ejml/ops/ReadCsv;->in:Ljava/io/BufferedReader;

    return-object v0
.end method

.method protected parseWords(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/ejml/ops/ReadCsv;->isSpace(C)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    move v3, v2

    move v4, v0

    move v0, v2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eqz v4, :cond_2

    invoke-direct {p0, v6}, Lorg/ejml/ops/ReadCsv;->isSpace(C)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v2

    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-direct {p0, v6}, Lorg/ejml/ops/ReadCsv;->isSpace(C)Z

    move-result v6

    if-nez v6, :cond_0

    move v3, v0

    move v4, v1

    goto :goto_2

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v5
.end method

.method public setComment(C)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/ejml/ops/ReadCsv;->hasComment:Z

    iput-char p1, p0, Lorg/ejml/ops/ReadCsv;->comment:C

    return-void
.end method
