.class public abstract Lcom/google/speech/grammar/AbstractGrammarCompiler;
.super Ljava/lang/Object;
.source "AbstractGrammarCompiler.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private nativeObj:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/google/speech/grammar/AbstractGrammarCompiler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/speech/grammar/AbstractGrammarCompiler;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lcom/google/speech/grammar/AbstractGrammarCompiler;->nativeConstruct()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/speech/grammar/AbstractGrammarCompiler;->nativeObj:J

    .line 28
    return-void
.end method

.method private assertValidState()V
    .locals 4

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/google/speech/grammar/AbstractGrammarCompiler;->nativeObj:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recognizer not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    return-void
.end method

.method private static native nativeCompile(J[B)Z
.end method

.method private static native nativeConstruct()J
.end method

.method private static native nativeDelete(J)Z
.end method

.method private static native nativeInitFromFile(JLjava/lang/String;[Ljava/lang/String;)Z
.end method

.method private static native nativeInitFromProto(J[B[Ljava/lang/String;)Z
.end method

.method private static native nativeReadCache(JLjava/lang/String;)Z
.end method

.method private static native nativeWriteCache(JLjava/lang/String;Z)Z
.end method

.method private static native nativeWriteClgFst(JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native nativeWriteSemanticFst(JLjava/lang/String;Ljava/lang/String;)Z
.end method


# virtual methods
.method public declared-synchronized compileAbnf(Ljava/lang/String;)Z
    .locals 3
    .param p1, "abnfInput"    # Ljava/lang/String;

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/speech/grammar/AbstractGrammarCompiler;->assertValidState()V

    .line 80
    iget-wide v0, p0, Lcom/google/speech/grammar/AbstractGrammarCompiler;->nativeObj:J

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/speech/grammar/AbstractGrammarCompiler;->nativeCompile(J[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 135
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/speech/grammar/AbstractGrammarCompiler;->nativeObj:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 136
    iget-wide v0, p0, Lcom/google/speech/grammar/AbstractGrammarCompiler;->nativeObj:J

    invoke-static {v0, v1}, Lcom/google/speech/grammar/AbstractGrammarCompiler;->nativeDelete(J)Z

    .line 137
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/grammar/AbstractGrammarCompiler;->nativeObj:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_0
    monitor-exit p0

    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/google/speech/grammar/AbstractGrammarCompiler;->delete()V

    .line 126
    return-void
.end method

.method public declared-synchronized initFromFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "configFile"    # Ljava/lang/String;
    .param p2, "resourcePath"    # Ljava/lang/String;

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/speech/grammar/AbstractGrammarCompiler;->assertValidState()V

    .line 32
    iget-wide v0, p0, Lcom/google/speech/grammar/AbstractGrammarCompiler;->nativeObj:J

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, p1, v2}, Lcom/google/speech/grammar/AbstractGrammarCompiler;->nativeInitFromFile(JLjava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initFromProto([BLjava/lang/String;)Z
    .locals 4
    .param p1, "configBytes"    # [B
    .param p2, "resourcePath"    # Ljava/lang/String;

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/speech/grammar/AbstractGrammarCompiler;->assertValidState()V

    .line 37
    iget-wide v0, p0, Lcom/google/speech/grammar/AbstractGrammarCompiler;->nativeObj:J

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, p1, v2}, Lcom/google/speech/grammar/AbstractGrammarCompiler;->nativeInitFromProto(J[B[Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized readCache(Ljava/lang/String;)Z
    .locals 2
    .param p1, "cacheDirectory"    # Ljava/lang/String;

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/speech/grammar/AbstractGrammarCompiler;->assertValidState()V

    .line 48
    iget-wide v0, p0, Lcom/google/speech/grammar/AbstractGrammarCompiler;->nativeObj:J

    invoke-static {v0, v1, p1}, Lcom/google/speech/grammar/AbstractGrammarCompiler;->nativeReadCache(JLjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized writeCache(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "cacheDirectory"    # Ljava/lang/String;
    .param p2, "purgeCache"    # Z

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/speech/grammar/AbstractGrammarCompiler;->assertValidState()V

    .line 60
    iget-wide v0, p0, Lcom/google/speech/grammar/AbstractGrammarCompiler;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/speech/grammar/AbstractGrammarCompiler;->nativeWriteCache(JLjava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized writeClgFst(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "clgFstFile"    # Ljava/lang/String;
    .param p2, "clgSymbolFile"    # Ljava/lang/String;

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/speech/grammar/AbstractGrammarCompiler;->assertValidState()V

    .line 95
    iget-wide v0, p0, Lcom/google/speech/grammar/AbstractGrammarCompiler;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/speech/grammar/AbstractGrammarCompiler;->nativeWriteClgFst(JLjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized writeSemanticFst(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "semanticFstFile"    # Ljava/lang/String;
    .param p2, "semanticSymbolFile"    # Ljava/lang/String;

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/speech/grammar/AbstractGrammarCompiler;->assertValidState()V

    .line 109
    iget-wide v0, p0, Lcom/google/speech/grammar/AbstractGrammarCompiler;->nativeObj:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/speech/grammar/AbstractGrammarCompiler;->nativeWriteSemanticFst(JLjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
