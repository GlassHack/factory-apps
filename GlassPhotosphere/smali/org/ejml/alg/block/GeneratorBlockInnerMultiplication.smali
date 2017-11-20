.class public Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication$1;,
        Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication$Operation;
    }
.end annotation


# instance fields
.field className:Ljava/lang/String;

.field stream:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication;->className:Ljava/lang/String;

    new-instance v0, Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".java"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication;->stream:Ljava/io/PrintStream;

    return-void
.end method

.method private createHeader(ZLorg/ejml/alg/block/GeneratorBlockInnerMultiplication$Operation;ZZ)V
    .locals 9

    if-eqz p1, :cond_0

    const-string v0, " &alpha; "

    move-object v5, v0

    :goto_0
    if-eqz p1, :cond_1

    const-string v0, " double alpha ,"

    move-object v4, v0

    :goto_1
    if-eqz p3, :cond_2

    const-string v0, "<sup>T</sup>"

    move-object v3, v0

    :goto_2
    if-eqz p4, :cond_3

    const-string v0, "<sup>T</sup>"

    :goto_3
    sget-object v1, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication$1;->$SwitchMap$org$ejml$alg$block$GeneratorBlockInnerMultiplication$Operation:[I

    invoke-virtual {p2}, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication$Operation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown optype"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, ""

    move-object v5, v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    move-object v4, v0

    goto :goto_1

    :cond_2
    const-string v0, ""

    move-object v3, v0

    goto :goto_2

    :cond_3
    const-string v0, ""

    goto :goto_3

    :pswitch_0
    const-string v1, "C - "

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "blockMult"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p2}, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication;->opName(Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication$Operation;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p3, :cond_5

    if-eqz p4, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "TransAB"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    :goto_5
    iget-object v6, p0, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication;->stream:Ljava/io/PrintStream;

    invoke-virtual {v6}, Ljava/io/PrintStream;->println()V

    iget-object v6, p0, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication;->stream:Ljava/io/PrintStream;

    const-string v7, "    /**\n     * <p>\n     * Performs the follow operation on individual inner blocks:<br>\n     * <br>\n"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication;->stream:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "     * C = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "A"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " * B"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication;->stream:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "     * </p>\n     */\n    public static void "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " final double[] dataA, final double []dataB, final double []dataC,\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "                                     int indexA, int indexB, int indexC,\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "                                     final int heightA, final int widthA, final int widthC) {\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string v1, "C + "

    goto/16 :goto_4

    :pswitch_2
    const-string v1, ""

    goto/16 :goto_4

    :cond_5
    if-eqz p3, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "TransA"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    :cond_6
    if-eqz p4, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "TransB"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private createOpString(ZLorg/ejml/alg/block/GeneratorBlockInnerMultiplication$Operation;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p2}, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication;->opString(Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication$Operation;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " alpha * "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication;

    const-string v1, "BlockInnerMultiplication"

    invoke-direct {v0, v1}, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication;->createClass()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Done generating class"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private opName(Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication$Operation;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication$1;->$SwitchMap$org$ejml$alg$block$GeneratorBlockInnerMultiplication$Operation:[I

    invoke-virtual {p1}, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication$Operation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown opType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "Minus"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "Plus"

    goto :goto_0

    :pswitch_2
    const-string v0, "Set"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private opString(Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication$Operation;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication$1;->$SwitchMap$org$ejml$alg$block$GeneratorBlockInnerMultiplication$Operation:[I

    invoke-virtual {p1}, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication$Operation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown opType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "-="

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "+="

    goto :goto_0

    :pswitch_2
    const-string v0, "="

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private printTop()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/*\n * Copyright (c) 2009-2010, Peter Abeles. All Rights Reserved.\n *\n * This file is part of Efficient Java Matrix Library (EJML).\n *\n * EJML is free software: you can redistribute it and/or modify\n * it under the terms of the GNU Lesser General Public License as\n * published by the Free Software Foundation, either version 3\n * of the License, or (at your option) any later version.\n *\n * EJML is distributed in the hope that it will be useful,\n * but WITHOUT ANY WARRANTY; without even the implied warranty of\n * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\n * GNU Lesser General Public License for more details.\n *\n * You should have received a copy of the GNU Lesser General Public\n * License along with EJML.  If not, see <http://www.gnu.org/licenses/>.\n */\n\npackage org.ejml.alg.block;\n\n/**\n * <p>\n * Matrix multiplication for the inner row major blocks, typically inside of a {@link org.ejml.data.BlockMatrix64F}.\n * </p>\n *\n * <p>\n * This code was auto generated by {@link GeneratorBlockInnerMultiplication} and should not be modified directly.\n * </p>\n *\n * @author Peter Abeles\n */\npublic class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication;->stream:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method private print_mult(ZLorg/ejml/alg/block/GeneratorBlockInnerMultiplication$Operation;)V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication;->createHeader(ZLorg/ejml/alg/block/GeneratorBlockInnerMultiplication$Operation;ZZ)V

    iget-object v0, p0, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication;->stream:Ljava/io/PrintStream;

    const-string v1, "//        for( int i = 0; i < heightA; i++ ) {\n//            for( int k = 0; k < widthA; k++ ) {\n//                for( int j = 0; j < widthC; j++ ) {\n//                    dataC[ i*widthC + j + indexC ] += dataA[i*widthA + k + indexA] * dataB[k*widthC + j + indexB];\n//                }\n//            }\n//        }\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication;->stream:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    sget-object v0, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication$Operation;->MINUS:Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication$Operation;

    if-ne p2, v0, :cond_0

    const-string v0, "-="

    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_1

    const-string v0, "alpha*"

    :goto_1
    iget-object v2, p0, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication;->stream:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "        int a = indexA;\n        int rowC = indexC;\n        for( int i = 0; i < heightA; i++ , rowC += widthC ) {\n            int b = indexB;\n\n            final int endC = rowC + widthC;\n            final int endA = a + widthA;\n            while( a != endA ) {//for( int k = 0; k < widthA; k++ ) {\n                double valA = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "dataA[a++];\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "                int c = rowC;\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication$Operation;->SET:Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication$Operation;

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication;->stream:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "                if( b == indexB ) {\n                    while( c != endC  ) {//for( int j = 0; j < widthC; j++ ) {\n                        dataC[ c++ ] = valA * dataB[ b++ ];\n                    }\n                } else {\n                    while( c != endC  ) {//for( int j = 0; j < widthC; j++ ) {\n                        dataC[ c++ ] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " valA * dataB[ b++ ];\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "                    }\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "                }\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication;->stream:Ljava/io/PrintStream;

    const-string v1, "            }\n        }"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication;->stream:Ljava/io/PrintStream;

    const-string v1, "    }"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "+="

    move-object v1, v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication;->stream:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "                while( c != endC  ) {//for( int j = 0; j < widthC; j++ ) {\n                    dataC[ c++ ] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " valA * dataB[ b++ ];\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "                }\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private print_multTransA(ZLorg/ejml/alg/block/GeneratorBlockInnerMultiplication$Operation;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication;->createHeader(ZLorg/ejml/alg/block/GeneratorBlockInnerMultiplication$Operation;ZZ)V

    sget-object v0, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication$Operation;->MINUS:Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication$Operation;

    if-ne p2, v0, :cond_0

    const-string v0, "-="

    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_1

    const-string v0, "alpha*"

    :goto_1
    iget-object v2, p0, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication;->stream:Ljava/io/PrintStream;

    const-string v3, "//        for( int i = 0; i < widthA; i++ ) {\n//            for( int k = 0; k < heightA; k++ ) {\n//                double valA = dataA[k*widthA + i + indexA];\n//                for( int j = 0; j < widthC; j++ ) {\n//                    dataC[ i*widthC + j + indexC ] += valA * dataB[k*widthC + j + indexB];\n//                }\n//            }\n//        }\n"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication;->stream:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    iget-object v2, p0, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication;->stream:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "        int rowC = indexC;\n        for( int i = 0; i < widthA; i++ , rowC += widthC) {\n            int colA = i + indexA;\n            int endA = colA + widthA*heightA;\n            int b = indexB;\n\n            // for( int k = 0; k < heightA; k++ ) {\n            while(colA != endA ) {\n                double valA = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "dataA[colA];\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "                int c = rowC;\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "                final int endB = b + widthC;\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "                //for( int j = 0; j < widthC; j++ ) {\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication$Operation;->SET:Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication$Operation;

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication;->stream:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "                if( b == indexB ) {\n                    while( b != endB ) {\n                        dataC[ c++ ] = valA * dataB[b++];\n                    } \n                } else {\n                    while( b != endB ) {\n                        dataC[ c++ ] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " valA * dataB[b++];\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "                    }\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "                }\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication;->stream:Ljava/io/PrintStream;

    const-string v1, "                colA += widthA;\n            }\n        }\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication;->stream:Ljava/io/PrintStream;

    const-string v1, "    }"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "+="

    move-object v1, v0

    goto/16 :goto_0

    :cond_1
    const-string v0, ""

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication;->stream:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "                while( b != endB ) {\n                    dataC[ c++ ] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " valA * dataB[b++];\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "                }\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private print_multTransB(ZLorg/ejml/alg/block/GeneratorBlockInnerMultiplication$Operation;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication;->createHeader(ZLorg/ejml/alg/block/GeneratorBlockInnerMultiplication$Operation;ZZ)V

    invoke-direct {p0, p1, p2}, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication;->createOpString(ZLorg/ejml/alg/block/GeneratorBlockInnerMultiplication$Operation;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication;->stream:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "        for( int i = 0; i < heightA; i++ ) {\n            for( int j = 0; j < widthC; j++ ) {\n                double val = 0;\n\n                for( int k = 0; k < widthA; k++ ) {\n                    val += dataA[i*widthA + k + indexA] * dataB[j*widthA + k + indexB];\n                }\n\n                dataC[ i*widthC + j + indexC ] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " val;\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "            }\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "        }"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication;->stream:Ljava/io/PrintStream;

    const-string v1, "    }"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createClass()V
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication;->printTop()V

    move v4, v2

    :goto_0
    const/4 v0, 0x2

    if-ge v4, v0, :cond_3

    if-ne v4, v1, :cond_0

    move v0, v1

    :goto_1
    invoke-static {}, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication$Operation;->values()[Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication$Operation;

    move-result-object v5

    array-length v6, v5

    move v3, v2

    :goto_2
    if-ge v3, v6, :cond_2

    aget-object v7, v5, v3

    if-eqz v0, :cond_1

    sget-object v8, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication$Operation;->MINUS:Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication$Operation;

    if-ne v7, v8, :cond_1

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0, v7}, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication;->print_mult(ZLorg/ejml/alg/block/GeneratorBlockInnerMultiplication$Operation;)V

    invoke-direct {p0, v0, v7}, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication;->print_multTransA(ZLorg/ejml/alg/block/GeneratorBlockInnerMultiplication$Operation;)V

    invoke-direct {p0, v0, v7}, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication;->print_multTransB(ZLorg/ejml/alg/block/GeneratorBlockInnerMultiplication$Operation;)V

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/ejml/alg/block/GeneratorBlockInnerMultiplication;->stream:Ljava/io/PrintStream;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method
