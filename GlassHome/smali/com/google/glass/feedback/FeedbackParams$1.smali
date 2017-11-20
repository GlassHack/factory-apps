.class final Lcom/google/glass/feedback/FeedbackParams$1;
.super Ljava/lang/Object;
.source "FeedbackParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/feedback/FeedbackParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/glass/feedback/FeedbackParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/feedback/FeedbackParams;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 21
    new-instance v0, Lcom/google/glass/feedback/FeedbackParams;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/glass/feedback/FeedbackParams;-><init>(Landroid/os/Parcel;Lcom/google/glass/feedback/FeedbackParams$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/google/glass/feedback/FeedbackParams$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/feedback/FeedbackParams;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/glass/feedback/FeedbackParams;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 26
    new-array v0, p1, [Lcom/google/glass/feedback/FeedbackParams;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/google/glass/feedback/FeedbackParams$1;->newArray(I)[Lcom/google/glass/feedback/FeedbackParams;

    move-result-object v0

    return-object v0
.end method
