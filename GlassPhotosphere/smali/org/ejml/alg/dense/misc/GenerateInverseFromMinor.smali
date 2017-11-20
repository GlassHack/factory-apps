.class public Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;
.super Ljava/lang/Object;


# instance fields
.field N:I

.field className:Ljava/lang/String;

.field stream:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UnrolledInverseFromMinor"

    iput-object v0, p0, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->className:Ljava/lang/String;

    new-instance v0, Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".java"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->stream:Ljava/io/PrintStream;

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 4

    iget v0, p0, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->N:I

    div-int v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->N:I

    rem-int v1, p1, v1

    add-int/lit8 v1, v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createMinor([IIII)[I
    .locals 7

    const/4 v3, 0x0

    add-int/lit8 v0, p4, -0x1

    mul-int/2addr v0, v0

    new-array v5, v0, [I

    move v4, v3

    move v0, v3

    :goto_0
    if-ge v4, p4, :cond_3

    if-ne v4, p2, :cond_1

    :cond_0
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_1
    if-ge v2, p4, :cond_0

    if-ne v2, p3, :cond_2

    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v0, 0x1

    mul-int v6, v4, p4

    add-int/2addr v6, v2

    aget v6, p1, v6

    aput v6, v5, v0

    move v0, v1

    goto :goto_2

    :cond_3
    return-object v5
.end method

.method private det([III)V
    .locals 7

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    if-ne p3, v3, :cond_1

    iget-object v0, p0, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->stream:Ljava/io/PrintStream;

    aget v1, p1, v1

    invoke-direct {p0, v1}, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p3, v4, :cond_2

    iget-object v0, p0, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->stream:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget v1, p1, v1

    invoke-direct {p0, v1}, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    aget v2, p1, v2

    invoke-direct {p0, v2}, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p1, v3

    invoke-direct {p0, v2}, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p1, v4

    invoke-direct {p0, v2}, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v2, p3, -0x1

    move v0, v1

    :goto_1
    if-ge v0, p3, :cond_0

    invoke-direct {p0, p1, v1, v0, p3}, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->createMinor([IIII)[I

    move-result-object v3

    rem-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_3

    iget-object v4, p0, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->stream:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " + "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, p1, v0

    invoke-direct {p0, v6}, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "*("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v4, p2, 0x1

    invoke-direct {p0, v3, v4, v2}, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->det([III)V

    iget-object v3, p0, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->stream:Ljava/io/PrintStream;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->stream:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, p1, v0

    invoke-direct {p0, v6}, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "*("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;

    invoke-direct {v0}, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;-><init>()V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->createClass(I)V

    return-void
.end method

.method private printCalls(I)V
    .locals 4

    iget-object v0, p0, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->stream:Ljava/io/PrintStream;

    const-string v1, "    \n    public static void inv( DenseMatrix64F mat , DenseMatrix64F inv ) {\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->stream:Ljava/io/PrintStream;

    const-string v1, "        double max = Math.abs(mat.data[0]);\n        int N = mat.getNumElements();\n        \n        for( int i = 1; i < N; i++ ) {\n            double a = Math.abs(mat.data[i]);\n            if( a > max ) max = a;\n        }\n\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->stream:Ljava/io/PrintStream;

    const-string v1, "        if( mat.numRows == 2 ) {\n            inv2(mat,inv,1.0/max);\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v0, 0x3

    :goto_0
    if-gt v0, p1, :cond_0

    iget-object v1, p0, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->stream:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "        } else if( mat.numRows == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) {\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "            inv"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(mat,inv,1.0/max);            \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->stream:Ljava/io/PrintStream;

    const-string v1, "        } else {\n            throw new IllegalArgumentException(\"Not supported\");\n        }\n    }\n\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method private printFunction(I)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->stream:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    public static void inv"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "( DenseMatrix64F mat , DenseMatrix64F inv , double scale )\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    {\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "        double []data = mat.data;\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iput p1, p0, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->N:I

    mul-int v2, p1, p1

    new-array v5, v2, [I

    move v4, v1

    move v2, v0

    :goto_0
    if-gt v4, p1, :cond_1

    move v3, v2

    move v2, v1

    :goto_1
    if-gt v2, p1, :cond_0

    aput v3, v5, v3

    iget-object v6, p0, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->stream:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "        double "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v3}, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = data[ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ]*scale;\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v3

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->stream:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    move v4, v1

    move v2, v0

    :goto_2
    if-gt v4, p1, :cond_5

    move v3, v2

    move v2, v1

    :goto_3
    if-gt v2, p1, :cond_4

    iget-object v6, p0, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->stream:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "        double m"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int v6, v4, v2

    rem-int/lit8 v6, v6, 0x2

    if-ne v6, v1, :cond_2

    iget-object v6, p0, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->stream:Ljava/io/PrintStream;

    const-string v7, "-( "

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v6, v4, -0x1

    add-int/lit8 v7, v2, -0x1

    invoke-direct {p0, v5, v6, v7, p1}, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->printTopMinor([IIII)V

    add-int v6, v4, v2

    rem-int/lit8 v6, v6, 0x2

    if-ne v6, v1, :cond_3

    iget-object v6, p0, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->stream:Ljava/io/PrintStream;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_3
    iget-object v6, p0, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->stream:Ljava/io/PrintStream;

    const-string v7, ";\n"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v3

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->stream:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    iget-object v2, p0, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->stream:Ljava/io/PrintStream;

    const-string v3, "        double det = (a11*m11"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v2, 0x2

    :goto_4
    if-gt v2, p1, :cond_6

    iget-object v3, p0, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->stream:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, -0x1

    invoke-direct {p0, v5}, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*m"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    iget-object v2, p0, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->stream:Ljava/io/PrintStream;

    const-string v3, ")/scale;"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->stream:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    iget-object v2, p0, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->stream:Ljava/io/PrintStream;

    const-string v3, "        data = inv.data;\n"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    move v3, v1

    :goto_5
    if-gt v3, p1, :cond_8

    move v2, v0

    move v0, v1

    :goto_6
    if-gt v0, p1, :cond_7

    iget-object v4, p0, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->stream:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "        data["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] = m"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / det;\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->stream:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    iget-object v0, p0, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->stream:Ljava/io/PrintStream;

    const-string v1, "    }\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->stream:Ljava/io/PrintStream;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method private printTop(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/*\n * Copyright (c) 2009-2010, Peter Abeles. All Rights Reserved.\n *\n * This file is part of Efficient Java Matrix Library (EJML).\n *\n * EJML is free software: you can redistribute it and/or modify\n * it under the terms of the GNU Lesser General Public License as\n * published by the Free Software Foundation, either version 3\n * of the License, or (at your option) any later version.\n *\n * EJML is distributed in the hope that it will be useful,\n * but WITHOUT ANY WARRANTY; without even the implied warranty of\n * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\n * GNU Lesser General Public License for more details.\n *\n * You should have received a copy of the GNU Lesser General Public\n * License along with EJML.  If not, see <http://www.gnu.org/licenses/>.\n */\n\npackage org.ejml.alg.dense.misc;\n\nimport org.ejml.data.DenseMatrix64F;\n\n\n/**\n * This code was auto generated by  {@link GenerateInverseFromMinor} and should not be modified\n * directly.  The input matrix is scaled make it much less prone to overflow and underflow issues.\n * \n * @author Peter Abeles\n */\npublic class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    public static final int MAX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->stream:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method private printTopMinor([IIII)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->createMinor([IIII)[I

    move-result-object v0

    const/4 v1, 0x0

    add-int/lit8 v2, p4, -0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->det([III)V

    return-void
.end method


# virtual methods
.method public createClass(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->printTop(I)V

    invoke-direct {p0, p1}, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->printCalls(I)V

    const/4 v0, 0x2

    :goto_0
    if-gt v0, p1, :cond_0

    invoke-direct {p0, v0}, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->printFunction(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/ejml/alg/dense/misc/GenerateInverseFromMinor;->stream:Ljava/io/PrintStream;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method
