.class Lcom/google/glass/fs/FilesystemProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/av;


# instance fields
.field final synthetic this$0:Lcom/google/glass/fs/FilesystemProvider;


# direct methods
.method constructor <init>(Lcom/google/glass/fs/FilesystemProvider;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/glass/fs/FilesystemProvider$1;->this$0:Lcom/google/glass/fs/FilesystemProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/fs/Filesystem;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/google/glass/fs/Filesystem;

    invoke-direct {v0}, Lcom/google/glass/fs/Filesystem;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/google/glass/fs/FilesystemProvider$1;->get()Lcom/google/glass/fs/Filesystem;

    move-result-object v0

    return-object v0
.end method
