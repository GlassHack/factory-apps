.class Lcom/google/glass/io/FilesWrapperProvider$1;
.super Ljava/lang/Object;
.source "FilesWrapperProvider.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/io/FilesWrapperProvider;->get()Lcom/google/glass/io/FilesWrapper;
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
        "Lcom/google/glass/io/FilesWrapper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/glass/io/FilesWrapperProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/io/FilesWrapperProvider;

    .prologue
    .line 22
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
