.class public Lcom/google/glass/io/FilesWrapper;
.super Ljava/lang/Object;
.source "FilesWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toByteArray(Ljava/io/File;)[B
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-static {p1}, Lcom/google/common/io/Files;->toByteArray(Ljava/io/File;)[B

    move-result-object v0

    return-object v0
.end method
