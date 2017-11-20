.class public Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;
.super Ljava/lang/Object;


# instance fields
.field N:I

.field stream:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, p1}, Ljava/io/PrintStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->stream:Ljava/io/PrintStream;

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 4

    iget v0, p0, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->N:I

    div-int v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->N:I

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

.method public static main([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;

    const-string v1, "UnrolledDeterminantFromMinor.java"

    invoke-direct {v0, v1}, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->createClass(I)V

    return-void
.end method

.method private minor([III)V
    .locals 10

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    if-ne p3, v4, :cond_1

    iget-object v0, p0, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->stream:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget v2, p1, v3

    invoke-direct {p0, v2}, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    aget v2, p1, v2

    invoke-direct {p0, v2}, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p1, v5

    invoke-direct {p0, v2}, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p1, v4

    invoke-direct {p0, v2}, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v7, p3, -0x1

    mul-int v0, v7, v7

    new-array v8, v0, [I

    move v6, v3

    :goto_0
    if-ge v6, p3, :cond_0

    move v4, v5

    move v1, v3

    :goto_1
    if-ge v4, p3, :cond_3

    move v2, v3

    :goto_2
    if-ge v2, p3, :cond_2

    if-eq v2, v6, :cond_5

    add-int/lit8 v0, v1, 0x1

    mul-int v9, v4, p3

    add-int/2addr v9, v2

    aget v9, p1, v9

    aput v9, v8, v1

    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_3
    rem-int/lit8 v0, v6, 0x2

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->stream:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p1, v6

    invoke-direct {p0, v2}, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v8, v0, v7}, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->minor([III)V

    iget-object v0, p0, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->stream:Ljava/io/PrintStream;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->stream:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p1, v6

    invoke-direct {p0, v2}, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    move v0, v1

    goto :goto_3
.end method

.method private print2()V
    .locals 2

    iget-object v0, p0, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->stream:Ljava/io/PrintStream;

    const-string v1, "    public static double det2( RowD1Matrix64F mat )\n    {\n        return mat.get(0)*mat.get(3) - mat.get(1)*mat.get(2);\n    }\n\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method private print3()V
    .locals 2

    iget-object v0, p0, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->stream:Ljava/io/PrintStream;

    const-string v1, "    public static double det3( RowD1Matrix64F mat )\n    {\n        double a11 = mat.get( 0 );\n        double a12 = mat.get( 1 );\n        double a13 = mat.get( 2 );\n        double a21 = mat.get( 3 );\n        double a22 = mat.get( 4 );\n        double a23 = mat.get( 5 );\n        double a31 = mat.get( 6 );\n        double a32 = mat.get( 7 );\n        double a33 = mat.get( 8 );\n\n        double a = a11*(a22*a33 - a23*a32);\n        double b = a12*(a21*a33 - a23*a31);\n        double c = a13*(a21*a32 - a31*a22);\n\n        return a-b+c;\n    }\n\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method private printCalls(I)V
    .locals 4

    iget-object v0, p0, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->stream:Ljava/io/PrintStream;

    const-string v1, "    \n    public static double det( RowD1Matrix64F mat ) {\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->stream:Ljava/io/PrintStream;

    const-string v1, "        if( mat.numRows == 2 ) {\n            return det2(mat);\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v0, 0x3

    :goto_0
    if-gt v0, p1, :cond_0

    iget-object v1, p0, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->stream:Ljava/io/PrintStream;

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

    const-string v3, "            return det"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(mat);            \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->stream:Ljava/io/PrintStream;

    const-string v1, "        }\n        \n        throw new IllegalArgumentException(\"Not supported\");\n    }\n\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method private printFunction(I)V
    .locals 11

    const/4 v1, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->stream:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    public static double det"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "( RowD1Matrix64F mat )\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    {\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v6, p1, -0x1

    iput v6, p0, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->N:I

    mul-int v0, v6, v6

    new-array v7, v0, [I

    move v4, v1

    move v2, v5

    :goto_0
    if-gt v4, v6, :cond_1

    mul-int v0, v4, p1

    add-int/lit8 v0, v0, 0x1

    move v3, v2

    move v2, v0

    move v0, v1

    :goto_1
    if-gt v0, v6, :cond_0

    aput v3, v7, v3

    iget-object v8, p0, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->stream:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "        double  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, v3}, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " = mat.get( "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " );\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v2, v3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->stream:Ljava/io/PrintStream;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->stream:Ljava/io/PrintStream;

    const-string v2, "        double ret = 0;\n"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->stream:Ljava/io/PrintStream;

    const-string v2, "        ret += mat.get( 0 ) * ("

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-direct {p0, v7, v5, v6}, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->minor([III)V

    iget-object v0, p0, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->stream:Ljava/io/PrintStream;

    const-string v2, ");\n"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v0, 0x2

    move v2, v0

    :goto_2
    if-gt v2, p1, :cond_4

    move v0, v1

    :goto_3
    if-gt v0, v6, :cond_2

    add-int/lit8 v3, v2, -0x2

    add-int/lit8 v4, v0, -0x1

    mul-int/2addr v4, v6

    add-int/2addr v3, v4

    add-int/lit8 v4, v2, -0x2

    mul-int v8, v0, p1

    add-int/2addr v4, v8

    iget-object v8, p0, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->stream:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "        "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, v3}, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, " = mat.get( "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " );\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    rem-int/lit8 v0, v2, 0x2

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->stream:Ljava/io/PrintStream;

    const-string v3, "        ret -= "

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_4
    iget-object v0, p0, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->stream:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mat.get( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) * ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-direct {p0, v7, v5, v6}, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->minor([III)V

    iget-object v0, p0, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->stream:Ljava/io/PrintStream;

    const-string v3, ");\n"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->stream:Ljava/io/PrintStream;

    const-string v3, "        ret += "

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->stream:Ljava/io/PrintStream;

    const-string v1, "        return ret;\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->stream:Ljava/io/PrintStream;

    const-string v1, "    }\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->stream:Ljava/io/PrintStream;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method private printTop(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/*\n * Copyright (c) 2009-2010, Peter Abeles. All Rights Reserved.\n *\n * This file is part of Efficient Java Matrix Library (EJML).\n *\n * EJML is free software: you can redistribute it and/or modify\n * it under the terms of the GNU Lesser General Public License as\n * published by the Free Software Foundation, either version 3\n * of the License, or (at your option) any later version.\n *\n * EJML is distributed in the hope that it will be useful,\n * but WITHOUT ANY WARRANTY; without even the implied warranty of\n * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\n * GNU Lesser General Public License for more details.\n *\n * You should have received a copy of the GNU Lesser General Public\n * License along with EJML.  If not, see <http://www.gnu.org/licenses/>.\n */\n\npackage org.ejml.alg.dense.misc;\n\nimport org.ejml.data.RowD1Matrix64F;\n\n\n/**\n * This code was auto generated by  {@link GenerateDeterminantFromMinor} and should not be modified\n * directly.  \n * \n * @author Peter Abeles\n */\npublic class UnrolledDeterminantFromMinor {\n    \n    public static final int MAX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->stream:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createClass(I)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->printTop(I)V

    invoke-direct {p0, p1}, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->printCalls(I)V

    invoke-direct {p0}, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->print2()V

    invoke-direct {p0}, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->print3()V

    const/4 v0, 0x4

    :goto_0
    if-gt v0, p1, :cond_0

    invoke-direct {p0, v0}, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->printFunction(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/ejml/alg/dense/misc/GenerateDeterminantFromMinor;->stream:Ljava/io/PrintStream;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method
