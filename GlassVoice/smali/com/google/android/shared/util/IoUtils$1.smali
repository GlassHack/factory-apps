.class final Lcom/google/android/shared/util/IoUtils$1;
.super Ljava/lang/Object;
.source "IoUtils.java"

# interfaces
.implements Lcom/google/common/io/OutputSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/shared/util/IoUtils;->newOutputStreamSupplier(Ljava/io/File;Z)Lcom/google/common/io/OutputSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/io/OutputSupplier",
        "<",
        "Ljava/io/FileOutputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$append:Z

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Z)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/google/android/shared/util/IoUtils$1;->val$file:Ljava/io/File;

    iput-boolean p2, p0, Lcom/google/android/shared/util/IoUtils$1;->val$append:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutput()Ljava/io/FileOutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/google/android/shared/util/IoUtils$1;->val$file:Ljava/io/File;

    iget-boolean v2, p0, Lcom/google/android/shared/util/IoUtils$1;->val$append:Z

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    return-object v0
.end method

.method public bridge synthetic getOutput()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/google/android/shared/util/IoUtils$1;->getOutput()Ljava/io/FileOutputStream;

    move-result-object v0

    return-object v0
.end method
