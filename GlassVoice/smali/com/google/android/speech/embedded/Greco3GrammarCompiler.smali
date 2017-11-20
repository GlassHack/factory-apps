.class public Lcom/google/android/speech/embedded/Greco3GrammarCompiler;
.super Ljava/lang/Object;
.source "Greco3GrammarCompiler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/embedded/Greco3GrammarCompiler$GrammarCompilerImpl;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
.field public static NUM_GENERATED_FILES:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Greco3GrammarCompiler"


# instance fields
.field private mCompiler:Lcom/google/android/speech/embedded/Greco3GrammarCompiler$GrammarCompilerImpl;

.field private final mConfigFile:Ljava/lang/String;

.field private final mResourcePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x4

    sput v0, Lcom/google/android/speech/embedded/Greco3GrammarCompiler;->NUM_GENERATED_FILES:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "configFile"    # Ljava/lang/String;
    .param p2, "resourcePath"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/android/speech/embedded/Greco3GrammarCompiler;->mConfigFile:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/google/android/speech/embedded/Greco3GrammarCompiler;->mResourcePath:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public compile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "abnfInput"    # Ljava/lang/String;
    .param p2, "outputPath"    # Ljava/lang/String;
    .param p3, "cachePath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 87
    .local v0, "start":J
    iget-object v4, p0, Lcom/google/android/speech/embedded/Greco3GrammarCompiler;->mCompiler:Lcom/google/android/speech/embedded/Greco3GrammarCompiler$GrammarCompilerImpl;

    invoke-virtual {v4, p3}, Lcom/google/android/speech/embedded/Greco3GrammarCompiler$GrammarCompilerImpl;->readCache(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 90
    const-string v4, "Greco3GrammarCompiler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading cache file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/android/shared/util/L;->e(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 94
    :cond_0
    iget-object v4, p0, Lcom/google/android/speech/embedded/Greco3GrammarCompiler;->mCompiler:Lcom/google/android/speech/embedded/Greco3GrammarCompiler$GrammarCompilerImpl;

    invoke-virtual {v4, p1}, Lcom/google/android/speech/embedded/Greco3GrammarCompiler$GrammarCompilerImpl;->compileAbnf(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 120
    :cond_1
    :goto_0
    return v2

    .line 99
    :cond_2
    iget-object v4, p0, Lcom/google/android/speech/embedded/Greco3GrammarCompiler;->mCompiler:Lcom/google/android/speech/embedded/Greco3GrammarCompiler$GrammarCompilerImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/grammar_clg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/grammar_symbols"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/speech/embedded/Greco3GrammarCompiler$GrammarCompilerImpl;->writeClgFst(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 104
    iget-object v4, p0, Lcom/google/android/speech/embedded/Greco3GrammarCompiler;->mCompiler:Lcom/google/android/speech/embedded/Greco3GrammarCompiler$GrammarCompilerImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/semantic_fst"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/semantic_symbols"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/speech/embedded/Greco3GrammarCompiler$GrammarCompilerImpl;->writeSemanticFst(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 111
    iget-object v4, p0, Lcom/google/android/speech/embedded/Greco3GrammarCompiler;->mCompiler:Lcom/google/android/speech/embedded/Greco3GrammarCompiler$GrammarCompilerImpl;

    invoke-virtual {v4, p3, v3}, Lcom/google/android/speech/embedded/Greco3GrammarCompiler$GrammarCompilerImpl;->writeCache(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_3

    .line 113
    const-string v4, "Greco3GrammarCompiler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error writing cache to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v2}, Lcom/google/android/shared/util/L;->e(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    move v2, v3

    .line 114
    goto :goto_0

    .line 117
    :cond_3
    const-string v4, "Greco3GrammarCompiler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Compilation complete, time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v0

    long-to-float v6, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v2}, Lcom/google/android/shared/util/L;->i(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    move v2, v3

    .line 120
    goto/16 :goto_0
.end method

.method public delete()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3GrammarCompiler;->mCompiler:Lcom/google/android/speech/embedded/Greco3GrammarCompiler$GrammarCompilerImpl;

    invoke-virtual {v0}, Lcom/google/android/speech/embedded/Greco3GrammarCompiler$GrammarCompilerImpl;->delete()V

    .line 53
    return-void
.end method

.method public init()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 56
    new-instance v3, Lcom/google/android/speech/embedded/Greco3GrammarCompiler$GrammarCompilerImpl;

    invoke-direct {v3}, Lcom/google/android/speech/embedded/Greco3GrammarCompiler$GrammarCompilerImpl;-><init>()V

    iput-object v3, p0, Lcom/google/android/speech/embedded/Greco3GrammarCompiler;->mCompiler:Lcom/google/android/speech/embedded/Greco3GrammarCompiler$GrammarCompilerImpl;

    .line 59
    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/google/android/speech/embedded/Greco3GrammarCompiler;->mConfigFile:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/google/android/speech/embedded/Greco3Mode;->isAsciiConfiguration(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    iget-object v3, p0, Lcom/google/android/speech/embedded/Greco3GrammarCompiler;->mCompiler:Lcom/google/android/speech/embedded/Greco3GrammarCompiler$GrammarCompilerImpl;

    iget-object v4, p0, Lcom/google/android/speech/embedded/Greco3GrammarCompiler;->mConfigFile:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/speech/embedded/Greco3GrammarCompiler;->mResourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/speech/embedded/Greco3GrammarCompiler$GrammarCompilerImpl;->initFromFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 69
    :goto_0
    return v1

    .line 63
    :cond_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/google/android/speech/embedded/Greco3GrammarCompiler;->mConfigFile:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/google/android/shared/util/IoUtils;->toByteArray(Ljava/io/File;)[B

    move-result-object v0

    .line 64
    .local v0, "fileBytes":[B
    iget-object v3, p0, Lcom/google/android/speech/embedded/Greco3GrammarCompiler;->mCompiler:Lcom/google/android/speech/embedded/Greco3GrammarCompiler$GrammarCompilerImpl;

    iget-object v4, p0, Lcom/google/android/speech/embedded/Greco3GrammarCompiler;->mResourcePath:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/google/android/speech/embedded/Greco3GrammarCompiler$GrammarCompilerImpl;->initFromProto([BLjava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, "init":Z
    goto :goto_0

    .line 67
    .end local v0    # "fileBytes":[B
    .end local v1    # "init":Z
    :catch_0
    move-exception v2

    .line 68
    .local v2, "ioe":Ljava/io/IOException;
    const-string v3, "Greco3GrammarCompiler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "I/O Exception reading binary config file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0
.end method
