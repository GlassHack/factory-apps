.class public Lcom/google/glass/io/FilesWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .prologue
    .line 16
    invoke-static {p1}, Lcom/google/common/io/Files;->toByteArray(Ljava/io/File;)[B

    move-result-object v0

    return-object v0
.end method
