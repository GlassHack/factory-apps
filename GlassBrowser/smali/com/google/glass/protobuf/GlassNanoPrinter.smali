.class public final Lcom/google/glass/protobuf/GlassNanoPrinter;
.super Ljava/lang/Object;
.source "GlassNanoPrinter.java"


# static fields
.field private static final INDENT:Ljava/lang/String; = " "

.field private static final MAX_STRING_LEN:I = 0x12c


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendQuotedBytes([BLjava/lang/StringBuffer;)V
    .locals 8
    .param p0, "bytes"    # [B
    .param p1, "builder"    # Ljava/lang/StringBuffer;

    .prologue
    const/16 v7, 0x5c

    const/16 v6, 0x22

    .line 210
    if-nez p0, :cond_0

    .line 211
    const-string v2, "\"\""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    :goto_0
    return-void

    .line 215
    :cond_0
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 216
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 217
    aget-byte v2, p0, v1

    and-int/lit16 v0, v2, 0xff

    .line 218
    .local v0, "ch":I
    if-eq v0, v7, :cond_1

    if-ne v0, v6, :cond_2

    .line 219
    :cond_1
    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 216
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 220
    :cond_2
    const/16 v2, 0x20

    if-lt v0, v2, :cond_3

    const/16 v2, 0x7f

    if-ge v0, v2, :cond_3

    .line 221
    int-to-char v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 223
    :cond_3
    const-string v2, "\\%03o"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 226
    .end local v0    # "ch":I
    :cond_4
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private static deCamelCaseify(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "identifier"    # Ljava/lang/String;

    .prologue
    .line 164
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 165
    .local v2, "out":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 166
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 167
    .local v0, "currentChar":C
    if-nez v1, :cond_0

    .line 168
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 165
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 172
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 175
    .end local v0    # "currentChar":C
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static escapeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 193
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 194
    .local v3, "strLen":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 195
    .local v0, "b":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 196
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 197
    .local v2, "original":C
    const/16 v4, 0x20

    if-lt v2, v4, :cond_0

    const/16 v4, 0x7e

    if-gt v2, v4, :cond_0

    const/16 v4, 0x22

    if-eq v2, v4, :cond_0

    const/16 v4, 0x27

    if-eq v2, v4, :cond_0

    .line 198
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    :cond_0
    const-string v4, "\\u%04x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 203
    .end local v2    # "original":C
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method protected static getIndent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    const-string v0, " "

    return-object v0
.end method

.method protected static getNewLine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    const-string v0, " "

    return-object v0
.end method

.method public static print(Lcom/google/protobuf/nano/MessageNano;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "message":Lcom/google/protobuf/nano/MessageNano;, "TT;"
    if-nez p0, :cond_0

    .line 32
    const-string v2, ""

    .line 43
    :goto_0
    return-object v2

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 37
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v2, p0, v3, v0}, Lcom/google/glass/protobuf/GlassNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 38
    :catch_0
    move-exception v1

    .line 39
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "Error printing proto: "

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 40
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 41
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "Error printing proto: "

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    .locals 28
    .param p0, "identifier"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "indentBuf"    # Ljava/lang/StringBuffer;
    .param p3, "buf"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 60
    if-nez p1, :cond_1

    .line 158
    .end local p1    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 66
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/google/protobuf/nano/MessageNano;

    move/from16 v22, v0

    if-eqz v22, :cond_d

    .line 67
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->length()I

    move-result v18

    .line 68
    .local v18, "origIndentBufLength":I
    if-eqz p0, :cond_2

    .line 69
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-static/range {p0 .. p0}, Lcom/google/glass/protobuf/GlassNanoPrinter;->deCamelCaseify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    const-string v23, " <"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    .line 70
    invoke-static {}, Lcom/google/glass/protobuf/GlassNanoPrinter;->getNewLine()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    invoke-static {}, Lcom/google/glass/protobuf/GlassNanoPrinter;->getIndent()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 79
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    const/16 v22, 0x0

    :goto_1
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_7

    aget-object v8, v23, v22

    .line 80
    .local v8, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v16

    .line 81
    .local v16, "modifiers":I
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    .line 83
    .local v9, "fieldName":Ljava/lang/String;
    and-int/lit8 v25, v16, 0x1

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    and-int/lit8 v25, v16, 0x8

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_3

    const-string v25, "_"

    .line 85
    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_3

    const-string v25, "_"

    .line 86
    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_3

    .line 87
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    .line 88
    .local v10, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 90
    .local v21, "value":Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/lang/Class;->isArray()Z

    move-result v25

    if-eqz v25, :cond_6

    .line 91
    invoke-virtual {v10}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    .line 94
    .local v4, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v25, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v25

    if-ne v4, v0, :cond_4

    .line 95
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v9, v0, v1, v2}, Lcom/google/glass/protobuf/GlassNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    .line 79
    .end local v4    # "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v21    # "value":Ljava/lang/Object;
    :cond_3
    :goto_2
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 97
    .restart local v4    # "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v10    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v21    # "value":Ljava/lang/Object;
    :cond_4
    if-nez v21, :cond_5

    const/4 v14, 0x0

    .line 98
    .local v14, "len":I
    :goto_3
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    if-ge v13, v14, :cond_3

    .line 99
    move-object/from16 v0, v21

    invoke-static {v0, v13}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    .line 100
    .local v7, "elem":Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v9, v7, v0, v1}, Lcom/google/glass/protobuf/GlassNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    .line 98
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 97
    .end local v7    # "elem":Ljava/lang/Object;
    .end local v13    # "i":I
    .end local v14    # "len":I
    :cond_5
    invoke-static/range {v21 .. v21}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v14

    goto :goto_3

    .line 104
    .end local v4    # "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v9, v0, v1, v2}, Lcom/google/glass/protobuf/GlassNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    goto :goto_2

    .line 112
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v9    # "fieldName":Ljava/lang/String;
    .end local v10    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "modifiers":I
    .end local v21    # "value":Ljava/lang/Object;
    :cond_7
    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    const/16 v22, 0x0

    move/from16 v23, v22

    :goto_5
    move/from16 v0, v23

    move/from16 v1, v25

    if-ge v0, v1, :cond_c

    aget-object v15, v24, v23

    .line 113
    .local v15, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v17

    .line 116
    .local v17, "name":Ljava/lang/String;
    const-string v22, "set"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 117
    const/16 v22, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 119
    .local v20, "subfieldName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 121
    .local v12, "hazzer":Ljava/lang/reflect/Method;
    :try_start_0
    const-string v26, "has"

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v27

    if-eqz v27, :cond_9

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    :goto_6
    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 126
    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Boolean;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    if-nez v22, :cond_a

    .line 112
    .end local v12    # "hazzer":Ljava/lang/reflect/Method;
    .end local v20    # "subfieldName":Ljava/lang/String;
    :cond_8
    :goto_7
    add-int/lit8 v22, v23, 0x1

    move/from16 v23, v22

    goto :goto_5

    .line 121
    .restart local v12    # "hazzer":Ljava/lang/reflect/Method;
    .restart local v20    # "subfieldName":Ljava/lang/String;
    :cond_9
    :try_start_1
    new-instance v22, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 122
    :catch_0
    move-exception v6

    .line 123
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    goto :goto_7

    .line 130
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    :cond_a
    const/4 v11, 0x0

    .line 132
    .local v11, "getter":Ljava/lang/reflect/Method;
    :try_start_2
    const-string v26, "get"

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v27

    if-eqz v27, :cond_b

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    :goto_8
    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v11

    .line 137
    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/protobuf/GlassNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    goto :goto_7

    .line 132
    :cond_b
    :try_start_3
    new-instance v22, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_8

    .line 133
    :catch_1
    move-exception v6

    .line 134
    .restart local v6    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_7

    .line 140
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    .end local v11    # "getter":Ljava/lang/reflect/Method;
    .end local v12    # "hazzer":Ljava/lang/reflect/Method;
    .end local v15    # "method":Ljava/lang/reflect/Method;
    .end local v17    # "name":Ljava/lang/String;
    .end local v20    # "subfieldName":Ljava/lang/String;
    :cond_c
    if-eqz p0, :cond_0

    .line 141
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 142
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v22

    const-string v23, ">"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-static {}, Lcom/google/glass/protobuf/GlassNanoPrinter;->getNewLine()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 146
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "origIndentBufLength":I
    :cond_d
    invoke-static/range {p0 .. p0}, Lcom/google/glass/protobuf/GlassNanoPrinter;->deCamelCaseify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 147
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    const-string v23, ": "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v22, v0

    if-eqz v22, :cond_e

    .line 149
    check-cast p1, Ljava/lang/String;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-static/range {p1 .. p1}, Lcom/google/glass/protobuf/GlassNanoPrinter;->sanitizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 150
    .local v19, "stringMessage":Ljava/lang/String;
    const-string v22, "\""

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    const-string v23, "\""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    .end local v19    # "stringMessage":Ljava/lang/String;
    :goto_9
    invoke-static {}, Lcom/google/glass/protobuf/GlassNanoPrinter;->getNewLine()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 151
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_e
    move-object/from16 v0, p1

    instance-of v0, v0, [B

    move/from16 v22, v0

    if-eqz v22, :cond_f

    .line 152
    check-cast p1, [B

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [B

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/google/glass/protobuf/GlassNanoPrinter;->appendQuotedBytes([BLjava/lang/StringBuffer;)V

    goto :goto_9

    .line 154
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_f
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_9
.end method

.method private static sanitizeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x12c

    .line 182
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[...]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 186
    :cond_0
    invoke-static {p0}, Lcom/google/glass/protobuf/GlassNanoPrinter;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
