.class final Lcom/google/protobuf/MessageLiteToString;
.super Ljava/lang/Object;
.source "MessageLiteToString.java"


# static fields
.field private static final BUILDER_LIST_SUFFIX:Ljava/lang/String; = "OrBuilderList"

.field private static final BYTES_SUFFIX:Ljava/lang/String; = "Bytes"

.field private static final LIST_SUFFIX:Ljava/lang/String; = "List"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final camelCaseToSnakeCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "camelCase"    # Ljava/lang/String;

    .prologue
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 201
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 202
    .local v1, "ch":C
    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 203
    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :cond_0
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 207
    .end local v1    # "ch":C
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static isDefaultValue(Ljava/lang/Object;)Z
    .locals 8
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 128
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 129
    check-cast p0, Ljava/lang/Boolean;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    move v1, v0

    .line 153
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 129
    goto :goto_0

    .line 131
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 132
    check-cast p0, Ljava/lang/Integer;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_1

    .line 134
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_4

    .line 135
    check-cast p0, Ljava/lang/Float;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_1

    .line 137
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_5

    .line 138
    check-cast p0, Ljava/lang/Double;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_1

    .line 140
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_5
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 141
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    .line 143
    :cond_6
    instance-of v0, p0, Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_7

    .line 144
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    .line 146
    :cond_7
    instance-of v0, p0, Lcom/google/protobuf/MessageLite;

    if-eqz v0, :cond_8

    move-object v0, p0

    .line 147
    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite;->getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    if-eq p0, v0, :cond_0

    move v1, v2

    goto :goto_1

    .line 149
    :cond_8
    instance-of v0, p0, Ljava/lang/Enum;

    if-eqz v0, :cond_9

    .line 150
    check-cast p0, Ljava/lang/Enum;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_1

    .restart local p0    # "o":Ljava/lang/Object;
    :cond_9
    move v1, v2

    .line 153
    goto :goto_1
.end method

.method static final printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p0, "buffer"    # Ljava/lang/StringBuilder;
    .param p1, "indent"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    const/16 v5, 0x22

    const/16 v4, 0x20

    .line 167
    instance-of v3, p3, Ljava/util/List;

    if-eqz v3, :cond_0

    move-object v2, p3

    .line 168
    check-cast v2, Ljava/util/List;

    .line 169
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 170
    .local v0, "entry":Ljava/lang/Object;
    invoke-static {p0, p1, p2, v0}, Lcom/google/protobuf/MessageLiteToString;->printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 175
    .end local v0    # "entry":Ljava/lang/Object;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_0
    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_1

    .line 177
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 179
    :cond_1
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    instance-of v3, p3, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 182
    const-string v3, ": \""

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    check-cast p3, Ljava/lang/String;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-static {p3}, Lcom/google/protobuf/TextFormatEscaper;->escapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    .end local v1    # "i":I
    :cond_2
    :goto_2
    return-void

    .line 183
    .restart local v1    # "i":I
    .restart local p3    # "object":Ljava/lang/Object;
    :cond_3
    instance-of v3, p3, Lcom/google/protobuf/ByteString;

    if-eqz v3, :cond_4

    .line 184
    const-string v3, ": \""

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    check-cast p3, Lcom/google/protobuf/ByteString;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-static {p3}, Lcom/google/protobuf/TextFormatEscaper;->escapeBytes(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 185
    .restart local p3    # "object":Ljava/lang/Object;
    :cond_4
    instance-of v3, p3, Lcom/google/protobuf/GeneratedMessageLite;

    if-eqz v3, :cond_6

    .line 186
    const-string v3, " {"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    check-cast p3, Lcom/google/protobuf/GeneratedMessageLite;

    .end local p3    # "object":Ljava/lang/Object;
    add-int/lit8 v3, p1, 0x2

    invoke-static {p3, p0, v3}, Lcom/google/protobuf/MessageLiteToString;->reflectivePrintWithIndent(Lcom/google/protobuf/MessageLite;Ljava/lang/StringBuilder;I)V

    .line 188
    const-string v3, "\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const/4 v1, 0x0

    :goto_3
    if-ge v1, p1, :cond_5

    .line 190
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 192
    :cond_5
    const-string v3, "}"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 194
    .restart local p3    # "object":Ljava/lang/Object;
    :cond_6
    const-string v3, ": "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private static reflectivePrintWithIndent(Lcom/google/protobuf/MessageLite;Ljava/lang/StringBuilder;I)V
    .locals 24
    .param p0, "messageLite"    # Lcom/google/protobuf/MessageLite;
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .param p2, "indent"    # I

    .prologue
    .line 46
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 47
    .local v15, "nameToNoArgMethod":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 48
    .local v14, "nameToMethod":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Method;>;"
    new-instance v8, Ljava/util/TreeSet;

    invoke-direct {v8}, Ljava/util/TreeSet;-><init>()V

    .line 49
    .local v8, "getters":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    const/16 v19, 0x0

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    aget-object v13, v20, v19

    .line 50
    .local v13, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v14, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    if-nez v22, :cond_0

    .line 52
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v15, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v22

    const-string v23, "get"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 55
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_0
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 60
    .end local v13    # "method":Ljava/lang/reflect/Method;
    :cond_1
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_2
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_e

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 61
    .local v7, "getter":Ljava/lang/String;
    const-string v19, "get"

    const-string v21, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 62
    .local v17, "suffix":Ljava/lang/String;
    const-string v19, "List"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    const-string v19, "OrBuilderList"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 63
    const/16 v19, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x1

    .line 64
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v22

    const-string v23, "List"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    sub-int v22, v22, v23

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v22

    if-eqz v22, :cond_3

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "camelCase":Ljava/lang/String;
    :goto_2
    const-string v21, "get"

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v22

    if-eqz v22, :cond_4

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    :goto_3
    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/reflect/Method;

    .line 68
    .local v12, "listMethod":Ljava/lang/reflect/Method;
    if-eqz v12, :cond_5

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v19

    const-class v21, Ljava/util/List;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 72
    invoke-static {v4}, Lcom/google/protobuf/MessageLiteToString;->camelCaseToSnakeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    .line 73
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v12, v0, v1}, Lcom/google/protobuf/GeneratedMessageLite;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 69
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v19

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/google/protobuf/MessageLiteToString;->printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 64
    .end local v4    # "camelCase":Ljava/lang/String;
    .end local v12    # "listMethod":Ljava/lang/reflect/Method;
    :cond_3
    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 67
    .restart local v4    # "camelCase":Ljava/lang/String;
    :cond_4
    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 78
    .end local v4    # "camelCase":Ljava/lang/String;
    :cond_5
    const-string v21, "set"

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v22

    if-eqz v22, :cond_7

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    :goto_4
    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/reflect/Method;

    .line 79
    .local v16, "setter":Ljava/lang/reflect/Method;
    if-eqz v16, :cond_2

    .line 82
    const-string v19, "Bytes"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    const-string v21, "get"

    const/16 v19, 0x0

    .line 84
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v22

    const-string v23, "Bytes"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    sub-int v22, v22, v23

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v22

    if-eqz v22, :cond_8

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 83
    :goto_5
    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 89
    :cond_6
    const/16 v19, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v22

    if-eqz v22, :cond_9

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 93
    .restart local v4    # "camelCase":Ljava/lang/String;
    :goto_6
    const-string v21, "get"

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v22

    if-eqz v22, :cond_a

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    :goto_7
    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Method;

    .line 94
    .local v6, "getMethod":Ljava/lang/reflect/Method;
    const-string v21, "has"

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v22

    if-eqz v22, :cond_b

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    :goto_8
    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/reflect/Method;

    .line 96
    .local v9, "hasMethod":Ljava/lang/reflect/Method;
    if-eqz v6, :cond_2

    .line 97
    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v6, v0, v1}, Lcom/google/protobuf/GeneratedMessageLite;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 98
    .local v18, "value":Ljava/lang/Object;
    if-nez v9, :cond_d

    .line 99
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/MessageLiteToString;->isDefaultValue(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_c

    const/4 v10, 0x1

    .line 102
    .local v10, "hasValue":Z
    :goto_9
    if-eqz v10, :cond_2

    .line 106
    invoke-static {v4}, Lcom/google/protobuf/MessageLiteToString;->camelCaseToSnakeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 103
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v19

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/google/protobuf/MessageLiteToString;->printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 78
    .end local v4    # "camelCase":Ljava/lang/String;
    .end local v6    # "getMethod":Ljava/lang/reflect/Method;
    .end local v9    # "hasMethod":Ljava/lang/reflect/Method;
    .end local v10    # "hasValue":Z
    .end local v16    # "setter":Ljava/lang/reflect/Method;
    .end local v18    # "value":Ljava/lang/Object;
    :cond_7
    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 84
    .restart local v16    # "setter":Ljava/lang/reflect/Method;
    :cond_8
    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 89
    :cond_9
    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 93
    .restart local v4    # "camelCase":Ljava/lang/String;
    :cond_a
    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_7

    .line 94
    .restart local v6    # "getMethod":Ljava/lang/reflect/Method;
    :cond_b
    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_8

    .line 99
    .restart local v9    # "hasMethod":Ljava/lang/reflect/Method;
    .restart local v18    # "value":Ljava/lang/Object;
    :cond_c
    const/4 v10, 0x0

    goto :goto_9

    .line 100
    :cond_d
    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v9, v0, v1}, Lcom/google/protobuf/GeneratedMessageLite;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Boolean;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    goto :goto_9

    .line 113
    .end local v4    # "camelCase":Ljava/lang/String;
    .end local v6    # "getMethod":Ljava/lang/reflect/Method;
    .end local v7    # "getter":Ljava/lang/String;
    .end local v9    # "hasMethod":Ljava/lang/reflect/Method;
    .end local v16    # "setter":Ljava/lang/reflect/Method;
    .end local v17    # "suffix":Ljava/lang/String;
    .end local v18    # "value":Ljava/lang/Object;
    :cond_e
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    move/from16 v19, v0

    if-eqz v19, :cond_f

    move-object/from16 v19, p0

    .line 114
    check-cast v19, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/FieldSet;

    move-object/from16 v19, v0

    .line 115
    invoke-virtual/range {v19 .. v19}, Lcom/google/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 116
    .local v11, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;>;>;"
    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_f

    .line 117
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 118
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual/range {v19 .. v19}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v19

    const/16 v20, 0xd

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v20, "["

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/google/protobuf/MessageLiteToString;->printField(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_a

    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;>;"
    .end local v11    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Object;>;>;"
    :cond_f
    move-object/from16 v19, p0

    .line 122
    check-cast v19, Lcom/google/protobuf/GeneratedMessageLite;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    move-object/from16 v19, v0

    if-eqz v19, :cond_10

    .line 123
    check-cast p0, Lcom/google/protobuf/GeneratedMessageLite;

    .end local p0    # "messageLite":Lcom/google/protobuf/MessageLite;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/UnknownFieldSetLite;->printWithIndent(Ljava/lang/StringBuilder;I)V

    .line 125
    :cond_10
    return-void
.end method

.method static toString(Lcom/google/protobuf/MessageLite;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "messageLite"    # Lcom/google/protobuf/MessageLite;
    .param p1, "commentString"    # Ljava/lang/String;

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/MessageLiteToString;->reflectivePrintWithIndent(Lcom/google/protobuf/MessageLite;Ljava/lang/StringBuilder;I)V

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
