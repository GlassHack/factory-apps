.class Lcom/google/glass/protobuf/ProtoDebugUtils$StringBuilderLogOutput;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/protobuf/ProtoDebugUtils$LogOutput;


# static fields
.field private static final INDENT:Ljava/lang/String; = "    "


# instance fields
.field private final buffer:Ljava/lang/StringBuilder;

.field private level:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/glass/protobuf/ProtoDebugUtils$StringBuilderLogOutput;->buffer:Ljava/lang/StringBuilder;

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/protobuf/ProtoDebugUtils$StringBuilderLogOutput;->level:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/protobuf/ProtoDebugUtils$1;)V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/google/glass/protobuf/ProtoDebugUtils$StringBuilderLogOutput;-><init>()V

    return-void
.end method


# virtual methods
.method public appendLine(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 180
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/glass/protobuf/ProtoDebugUtils$StringBuilderLogOutput;->level:I

    if-ge v0, v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/google/glass/protobuf/ProtoDebugUtils$StringBuilderLogOutput;->buffer:Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/google/glass/protobuf/ProtoDebugUtils$StringBuilderLogOutput;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    return-void
.end method

.method public indent()V
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/google/glass/protobuf/ProtoDebugUtils$StringBuilderLogOutput;->level:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/protobuf/ProtoDebugUtils$StringBuilderLogOutput;->level:I

    .line 189
    return-void
.end method

.method public outdent()V
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/google/glass/protobuf/ProtoDebugUtils$StringBuilderLogOutput;->level:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/glass/protobuf/ProtoDebugUtils$StringBuilderLogOutput;->level:I

    .line 194
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/glass/protobuf/ProtoDebugUtils$StringBuilderLogOutput;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
