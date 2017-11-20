.class Lcom/google/glass/voice/network/translate/CachedAudioDownloader$1;
.super Ljava/lang/Object;
.source "CachedAudioDownloader.java"

# interfaces
.implements Lcom/google/glass/io/CachedFilesManager$Loader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/network/translate/CachedAudioDownloader;->getCacheFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/glass/io/CachedFilesManager$Loader",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/glass/voice/network/translate/CachedAudioDownloader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/network/translate/CachedAudioDownloader;

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 122
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic load(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/network/translate/CachedAudioDownloader$1;->load(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
