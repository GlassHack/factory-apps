.class Lcom/google/glass/fs/FilesystemProvider$1;
.super Ljava/lang/Object;
.source "FilesystemProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/fs/FilesystemProvider;->get()Lcom/google/glass/fs/Filesystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Lcom/google/glass/fs/Filesystem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/fs/FilesystemProvider;


# direct methods
.method constructor <init>(Lcom/google/glass/fs/FilesystemProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/fs/FilesystemProvider;

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
