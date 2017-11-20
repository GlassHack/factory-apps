.class public Lcom/google/android/youtube/core/model/BatchEntry$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/model/g;
.implements Ljava/io/Serializable;


# instance fields
.field private result:Ljava/lang/Object;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/youtube/core/model/BatchEntry;
    .locals 4

    .prologue
    .line 66
    new-instance v0, Lcom/google/android/youtube/core/model/BatchEntry;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/BatchEntry$Builder;->result:Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/youtube/core/model/BatchEntry$Builder;->status:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/BatchEntry;-><init>(Ljava/lang/Object;ILcom/google/android/youtube/core/model/BatchEntry;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/BatchEntry$Builder;->build()Lcom/google/android/youtube/core/model/BatchEntry;

    move-result-object v0

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/google/android/youtube/core/model/BatchEntry$Builder;->status:I

    return v0
.end method

.method public setResult(Ljava/lang/Object;)Lcom/google/android/youtube/core/model/BatchEntry$Builder;
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/youtube/core/model/BatchEntry$Builder;->result:Ljava/lang/Object;

    .line 71
    return-object p0
.end method

.method public setStatusCode(I)Lcom/google/android/youtube/core/model/BatchEntry$Builder;
    .locals 0

    .prologue
    .line 75
    iput p1, p0, Lcom/google/android/youtube/core/model/BatchEntry$Builder;->status:I

    .line 76
    return-object p0
.end method
