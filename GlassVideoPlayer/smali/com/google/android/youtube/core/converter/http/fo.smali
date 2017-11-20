.class public abstract Lcom/google/android/youtube/core/converter/http/fo;
.super Lcom/google/android/youtube/core/converter/http/be;
.source "SourceFile"


# instance fields
.field protected final b:Lcom/google/android/youtube/core/converter/l;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/converter/l;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/http/be;-><init>()V

    .line 28
    const-string v0, "the parser can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/converter/l;

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/fo;->b:Lcom/google/android/youtube/core/converter/l;

    .line 29
    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/google/android/youtube/core/converter/c;
.end method

.method protected final a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/fo;->b:Lcom/google/android/youtube/core/converter/l;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/converter/http/fo;->a()Lcom/google/android/youtube/core/converter/c;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/youtube/core/converter/l;->a(Ljava/io/InputStream;Lcom/google/android/youtube/core/converter/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/g;

    .line 42
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/youtube/core/model/g;->build()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    new-instance v1, Lcom/google/android/youtube/core/converter/ConverterException;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
