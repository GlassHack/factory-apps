.class final Lcom/google/common/io/ah;
.super Lcom/google/common/io/g;
.source "SourceFile"


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Lcom/google/common/collect/ImmutableSet;


# direct methods
.method private varargs constructor <init>(Ljava/io/File;[Lcom/google/common/io/FileWriteMode;)V
    .locals 1

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/google/common/io/g;-><init>()V

    .line 211
    invoke-static {p1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/google/common/io/ah;->a:Ljava/io/File;

    .line 212
    invoke-static {p2}, Lcom/google/common/collect/ImmutableSet;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/io/ah;->b:Lcom/google/common/collect/ImmutableSet;

    .line 213
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;[Lcom/google/common/io/FileWriteMode;Lcom/google/common/io/ag;)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, Lcom/google/common/io/ah;-><init>(Ljava/io/File;[Lcom/google/common/io/FileWriteMode;)V

    return-void
.end method

.method private b()Ljava/io/FileOutputStream;
    .locals 4

    .prologue
    .line 217
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/google/common/io/ah;->a:Ljava/io/File;

    iget-object v2, p0, Lcom/google/common/io/ah;->b:Lcom/google/common/collect/ImmutableSet;

    sget-object v3, Lcom/google/common/io/FileWriteMode;->APPEND:Lcom/google/common/io/FileWriteMode;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/google/common/io/ah;->b()Ljava/io/FileOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Files.asByteSink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/io/ah;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/io/ah;->b:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
