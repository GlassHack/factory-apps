.class public final Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNanoPrinter;
.super Ljava/lang/Object;
.source "MessageNanoPrinter.java"


# static fields
.field private static final INDENT:Ljava/lang/String; = "  "

.field private static final MAX_STRING_LEN:I = 0xc8


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
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

    .line 239
    if-nez p0, :cond_0

    .line 240
    const-string v2, "\"\""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 245
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 246
    aget-byte v0, p0, v1

    .line 247
    .local v0, "ch":I
    if-eq v0, v7, :cond_1

    if-ne v0, v6, :cond_2

    .line 248
    :cond_1
    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 245
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 249
    :cond_2
    const/16 v2, 0x20

    if-lt v0, v2, :cond_3

    const/16 v2, 0x7f

    if-ge v0, v2, :cond_3

    .line 250
    int-to-char v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 252
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

    .line 255
    .end local v0    # "ch":I
    :cond_4
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private static deCamelCaseify(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "identifier"    # Ljava/lang/String;

    .prologue
    .line 193
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 194
    .local v2, "out":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 195
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 196
    .local v0, "currentChar":C
    if-nez v1, :cond_0

    .line 197
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 194
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 199
    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 201
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 204
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
    .line 222
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 223
    .local v3, "strLen":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 224
    .local v0, "b":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 225
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 226
    .local v2, "original":C
    const/16 v4, 0x20

    if-lt v2, v4, :cond_0

    const/16 v4, 0x7e

    if-gt v2, v4, :cond_0

    const/16 v4, 0x22

    if-eq v2, v4, :cond_0

    const/16 v4, 0x27

    if-eq v2, v4, :cond_0

    .line 227
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 224
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
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

    .line 232
    .end local v2    # "original":C
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static print(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "message":Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;, "TT;"
    if-nez p0, :cond_0

    .line 62
    const-string v2, ""

    .line 73
    :goto_0
    return-object v2

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 67
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v2, p0, v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 68
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error printing proto: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 70
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error printing proto: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    .locals 27
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
    .line 90
    if-nez p1, :cond_1

    .line 187
    .end local p1    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 96
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move/from16 v25, v0

    if-eqz v25, :cond_b

    .line 97
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuffer;->length()I

    move-result v21

    .line 98
    .local v21, "origIndentBufLength":I
    if-eqz p0, :cond_2

    .line 99
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v25

    invoke-static/range {p0 .. p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNanoPrinter;->deCamelCaseify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    const-string v26, " <\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    const-string v25, "  "

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 108
    .local v6, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .local v4, "arr$":[Ljava/lang/reflect/Field;
    array-length v0, v4

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_1
    move/from16 v0, v17

    if-ge v15, v0, :cond_7

    aget-object v9, v4, v15

    .line 109
    .local v9, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v19

    .line 110
    .local v19, "modifiers":I
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    .line 112
    .local v10, "fieldName":Ljava/lang/String;
    and-int/lit8 v25, v19, 0x1

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    and-int/lit8 v25, v19, 0x8

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_3

    const-string v25, "_"

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_3

    const-string v25, "_"

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_3

    .line 116
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    .line 117
    .local v11, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .line 119
    .local v24, "value":Ljava/lang/Object;
    invoke-virtual {v11}, Ljava/lang/Class;->isArray()Z

    move-result v25

    if-eqz v25, :cond_6

    .line 120
    invoke-virtual {v11}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    .line 123
    .local v5, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v25, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v25

    if-ne v5, v0, :cond_4

    .line 124
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v10, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    .line 108
    .end local v5    # "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v24    # "value":Ljava/lang/Object;
    :cond_3
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 126
    .restart local v5    # "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v11    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v24    # "value":Ljava/lang/Object;
    :cond_4
    if-nez v24, :cond_5

    const/16 v16, 0x0

    .line 127
    .local v16, "len":I
    :goto_3
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_4
    move/from16 v0, v16

    if-ge v14, v0, :cond_3

    .line 128
    move-object/from16 v0, v24

    invoke-static {v0, v14}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    .line 129
    .local v8, "elem":Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v10, v8, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    .line 127
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 126
    .end local v8    # "elem":Ljava/lang/Object;
    .end local v14    # "i":I
    .end local v16    # "len":I
    :cond_5
    invoke-static/range {v24 .. v24}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v16

    goto :goto_3

    .line 133
    .end local v5    # "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v10, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    goto :goto_2

    .line 141
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "fieldName":Ljava/lang/String;
    .end local v11    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v19    # "modifiers":I
    .end local v24    # "value":Ljava/lang/Object;
    :cond_7
    invoke-virtual {v6}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .local v4, "arr$":[Ljava/lang/reflect/Method;
    array-length v0, v4

    move/from16 v17, v0

    const/4 v15, 0x0

    :goto_5
    move/from16 v0, v17

    if-ge v15, v0, :cond_a

    aget-object v18, v4, v15

    .line 142
    .local v18, "method":Ljava/lang/reflect/Method;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v20

    .line 145
    .local v20, "name":Ljava/lang/String;
    const-string v25, "set"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 146
    const/16 v25, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    .line 148
    .local v23, "subfieldName":Ljava/lang/String;
    const/4 v13, 0x0

    .line 150
    .local v13, "hazzer":Ljava/lang/reflect/Method;
    :try_start_0
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "has"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 155
    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v13, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Boolean;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    if-nez v25, :cond_9

    .line 141
    .end local v13    # "hazzer":Ljava/lang/reflect/Method;
    .end local v23    # "subfieldName":Ljava/lang/String;
    :cond_8
    :goto_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 151
    .restart local v13    # "hazzer":Ljava/lang/reflect/Method;
    .restart local v23    # "subfieldName":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 152
    .local v7, "e":Ljava/lang/NoSuchMethodException;
    goto :goto_6

    .line 159
    .end local v7    # "e":Ljava/lang/NoSuchMethodException;
    :cond_9
    const/4 v12, 0x0

    .line 161
    .local v12, "getter":Ljava/lang/reflect/Method;
    :try_start_1
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "get"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v12

    .line 166
    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNanoPrinter;->print(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    goto :goto_6

    .line 162
    :catch_1
    move-exception v7

    .line 163
    .restart local v7    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_6

    .line 169
    .end local v7    # "e":Ljava/lang/NoSuchMethodException;
    .end local v12    # "getter":Ljava/lang/reflect/Method;
    .end local v13    # "hazzer":Ljava/lang/reflect/Method;
    .end local v18    # "method":Ljava/lang/reflect/Method;
    .end local v20    # "name":Ljava/lang/String;
    .end local v23    # "subfieldName":Ljava/lang/String;
    :cond_a
    if-eqz p0, :cond_0

    .line 170
    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 171
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v25

    const-string v26, ">\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 175
    .end local v4    # "arr$":[Ljava/lang/reflect/Method;
    .end local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "i$":I
    .end local v17    # "len$":I
    .end local v21    # "origIndentBufLength":I
    :cond_b
    invoke-static/range {p0 .. p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNanoPrinter;->deCamelCaseify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 176
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    const-string v26, ": "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v25, v0

    if-eqz v25, :cond_c

    .line 178
    check-cast p1, Ljava/lang/String;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-static/range {p1 .. p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNanoPrinter;->sanitizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 179
    .local v22, "stringMessage":Ljava/lang/String;
    const-string v25, "\""

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    const-string v26, "\""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    .end local v22    # "stringMessage":Ljava/lang/String;
    :goto_7
    const-string v25, "\n"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 180
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_c
    move-object/from16 v0, p1

    instance-of v0, v0, [B

    move/from16 v25, v0

    if-eqz v25, :cond_d

    .line 181
    check-cast p1, [B

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [B

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNanoPrinter;->appendQuotedBytes([BLjava/lang/StringBuffer;)V

    goto :goto_7

    .line 183
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_d
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_7
.end method

.method private static sanitizeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0xc8

    .line 211
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[...]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 215
    :cond_0
    invoke-static {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNanoPrinter;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
