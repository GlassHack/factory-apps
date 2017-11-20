.class final Lcom/google/glass/protobuf/ParcelableProto$1;
.super Ljava/lang/Object;
.source "ParcelableProto.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/protobuf/ParcelableProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/glass/protobuf/ParcelableProto;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/protobuf/ParcelableProto;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 23
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/google/glass/protobuf/ParcelableProto$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/protobuf/ParcelableProto;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/glass/protobuf/ParcelableProto;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 18
    new-array v0, p1, [Lcom/google/glass/protobuf/ParcelableProto;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/google/glass/protobuf/ParcelableProto$1;->newArray(I)[Lcom/google/glass/protobuf/ParcelableProto;

    move-result-object v0

    return-object v0
.end method
