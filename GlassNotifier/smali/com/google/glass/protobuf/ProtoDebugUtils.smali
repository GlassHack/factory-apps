.class public final Lcom/google/glass/protobuf/ProtoDebugUtils;
.super Ljava/lang/Object;
.source "ProtoDebugUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/protobuf/ProtoDebugUtils$StringBuilderLogOutput;,
        Lcom/google/glass/protobuf/ProtoDebugUtils$LogOutput;
    }
.end annotation


# static fields
.field private static final PRIMITIVE_WRAPPERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/protobuf/ProtoDebugUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 31
    new-instance v0, Lcom/google/android/util/ArraySet;

    invoke-direct {v0}, Lcom/google/android/util/ArraySet;-><init>()V

    sput-object v0, Lcom/google/glass/protobuf/ProtoDebugUtils;->PRIMITIVE_WRAPPERS:Ljava/util/Set;

    .line 34
    sget-object v0, Lcom/google/glass/protobuf/ProtoDebugUtils;->PRIMITIVE_WRAPPERS:Ljava/util/Set;

    const-class v1, Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/google/glass/protobuf/ProtoDebugUtils;->PRIMITIVE_WRAPPERS:Ljava/util/Set;

    const-class v1, Ljava/lang/Byte;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/google/glass/protobuf/ProtoDebugUtils;->PRIMITIVE_WRAPPERS:Ljava/util/Set;

    const-class v1, Ljava/lang/Character;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/google/glass/protobuf/ProtoDebugUtils;->PRIMITIVE_WRAPPERS:Ljava/util/Set;

    const-class v1, Ljava/lang/Short;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/google/glass/protobuf/ProtoDebugUtils;->PRIMITIVE_WRAPPERS:Ljava/util/Set;

    const-class v1, Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/google/glass/protobuf/ProtoDebugUtils;->PRIMITIVE_WRAPPERS:Ljava/util/Set;

    const-class v1, Ljava/lang/Long;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/google/glass/protobuf/ProtoDebugUtils;->PRIMITIVE_WRAPPERS:Ljava/util/Set;

    const-class v1, Ljava/lang/Float;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/google/glass/protobuf/ProtoDebugUtils;->PRIMITIVE_WRAPPERS:Ljava/util/Set;

    const-class v1, Ljava/lang/Double;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asciiDebug(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 81
    :try_start_0
    new-instance v1, Lcom/google/glass/protobuf/ProtoDebugUtils$StringBuilderLogOutput;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/glass/protobuf/ProtoDebugUtils$StringBuilderLogOutput;-><init>(Lcom/google/glass/protobuf/ProtoDebugUtils$1;)V

    .line 82
    .local v1, "logOutput":Lcom/google/glass/protobuf/ProtoDebugUtils$StringBuilderLogOutput;
    const-string v2, "object"

    new-instance v3, Lcom/google/android/util/ArraySet;

    invoke-direct {v3}, Lcom/google/android/util/ArraySet;-><init>()V

    invoke-static {v1, v2, p0, v3}, Lcom/google/glass/protobuf/ProtoDebugUtils;->debugObject(Lcom/google/glass/protobuf/ProtoDebugUtils$LogOutput;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Set;)V

    .line 83
    invoke-virtual {v1}, Lcom/google/glass/protobuf/ProtoDebugUtils$StringBuilderLogOutput;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 86
    .end local v1    # "logOutput":Lcom/google/glass/protobuf/ProtoDebugUtils$StringBuilderLogOutput;
    :goto_0
    return-object v2

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/google/glass/protobuf/ProtoDebugUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "asciiDebug failed"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    const-string v2, "Error: unable to output asciiDebug()"

    goto :goto_0
.end method

.method private static debugFields(Lcom/google/glass/protobuf/ProtoDebugUtils$LogOutput;Ljava/lang/Object;Ljava/util/Set;)V
    .locals 6
    .param p0, "logOutput"    # Lcom/google/glass/protobuf/ProtoDebugUtils$LogOutput;
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/protobuf/ProtoDebugUtils$LogOutput;",
            "Ljava/lang/Object;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 107
    .local p2, "visitedObjects":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    const-string v2, "[already printed this object]"

    invoke-interface {p0, v2}, Lcom/google/glass/protobuf/ProtoDebugUtils$LogOutput;->appendLine(Ljava/lang/String;)V

    .line 130
    :cond_0
    return-void

    .line 111
    :cond_1
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 113
    .local v0, "current":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_4

    aget-object v1, v3, v2

    .line 116
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_3

    .line 114
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 121
    :cond_3
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v5

    if-nez v5, :cond_2

    .line 125
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 126
    invoke-static {p0, v1, p1, p2}, Lcom/google/glass/protobuf/ProtoDebugUtils;->debugSingleField(Lcom/google/glass/protobuf/ProtoDebugUtils$LogOutput;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set;)V

    goto :goto_2

    .line 128
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method private static debugObject(Lcom/google/glass/protobuf/ProtoDebugUtils$LogOutput;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Set;)V
    .locals 3
    .param p0, "logOutput"    # Lcom/google/glass/protobuf/ProtoDebugUtils$LogOutput;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/protobuf/ProtoDebugUtils$LogOutput;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 93
    .local p3, "visitedObjects":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    sget-object v0, Lcom/google/glass/protobuf/ProtoDebugUtils;->PRIMITIVE_WRAPPERS:Ljava/util/Set;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/glass/protobuf/ProtoDebugUtils$LogOutput;->appendLine(Ljava/lang/String;)V

    .line 103
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/glass/protobuf/ProtoDebugUtils$LogOutput;->appendLine(Ljava/lang/String;)V

    .line 99
    invoke-interface {p0}, Lcom/google/glass/protobuf/ProtoDebugUtils$LogOutput;->indent()V

    .line 100
    invoke-static {p0, p2, p3}, Lcom/google/glass/protobuf/ProtoDebugUtils;->debugFields(Lcom/google/glass/protobuf/ProtoDebugUtils$LogOutput;Ljava/lang/Object;Ljava/util/Set;)V

    .line 101
    invoke-interface {p0}, Lcom/google/glass/protobuf/ProtoDebugUtils$LogOutput;->outdent()V

    .line 102
    const-string v0, "}"

    invoke-interface {p0, v0}, Lcom/google/glass/protobuf/ProtoDebugUtils$LogOutput;->appendLine(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static debugSingleField(Lcom/google/glass/protobuf/ProtoDebugUtils$LogOutput;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/Set;)V
    .locals 7
    .param p0, "logOutput"    # Lcom/google/glass/protobuf/ProtoDebugUtils$LogOutput;
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/protobuf/ProtoDebugUtils$LogOutput;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Object;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 134
    .local p3, "visitedObjects":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 135
    .local v3, "result":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "fieldName":Ljava/lang/String;
    const-string v4, "gaiaAuthenticationToken_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 138
    const-string v4, "gaiaAuthenticationToken_: *****"

    invoke-interface {p0, v4}, Lcom/google/glass/protobuf/ProtoDebugUtils$LogOutput;->appendLine(Ljava/lang/String;)V

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 140
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/google/glass/protobuf/ProtoDebugUtils$LogOutput;->appendLine(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_2
    if-nez v3, :cond_3

    .line 142
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ": null"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/google/glass/protobuf/ProtoDebugUtils$LogOutput;->appendLine(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 144
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/google/glass/protobuf/ProtoDebugUtils$LogOutput;->appendLine(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 145
    :cond_4
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 146
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 147
    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 148
    .local v0, "element":Ljava/lang/Object;
    if-eqz v0, :cond_5

    .line 149
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xd

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v0, p3}, Lcom/google/glass/protobuf/ProtoDebugUtils;->debugObject(Lcom/google/glass/protobuf/ProtoDebugUtils$LogOutput;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Set;)V

    .line 146
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 153
    .end local v0    # "element":Ljava/lang/Object;
    .end local v2    # "i":I
    :cond_6
    invoke-static {p0, v1, v3, p3}, Lcom/google/glass/protobuf/ProtoDebugUtils;->debugObject(Lcom/google/glass/protobuf/ProtoDebugUtils$LogOutput;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Set;)V

    goto/16 :goto_0
.end method

.method public static lazyAsciiDebug(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 65
    new-instance v0, Lcom/google/glass/protobuf/ProtoDebugUtils$1;

    invoke-direct {v0, p0}, Lcom/google/glass/protobuf/ProtoDebugUtils$1;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
