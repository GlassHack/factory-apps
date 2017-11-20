.class Lcom/google/glass/io/FilesWrapperProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/aw;


# instance fields
.field final synthetic this$0:Lcom/google/glass/io/FilesWrapperProvider;


# direct methods
.method constructor <init>(Lcom/google/glass/io/FilesWrapperProvider;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/glass/io/FilesWrapperProvider$1;->this$0:Lcom/google/glass/io/FilesWrapperProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/io/FilesWrapper;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/google/glass/io/FilesWrapper;

    invoke-direct {v0}, Lcom/google/glass/io/FilesWrapper;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/google/glass/io/FilesWrapperProvider$1;->get()Lcom/google/glass/io/FilesWrapper;

    move-result-object v0

    return-object v0
.end method
