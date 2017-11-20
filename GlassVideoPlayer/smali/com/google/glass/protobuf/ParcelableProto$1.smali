.class final Lcom/google/glass/protobuf/ParcelableProto$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/protobuf/ParcelableProto;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/google/glass/protobuf/ParcelableProto$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/glass/protobuf/ParcelableProto;

    move-result-object v0

    return-object v0
.end method

.method public final newArray(I)[Lcom/google/glass/protobuf/ParcelableProto;
    .locals 1

    .prologue
    .line 19
    new-array v0, p1, [Lcom/google/glass/protobuf/ParcelableProto;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/google/glass/protobuf/ParcelableProto$1;->newArray(I)[Lcom/google/glass/protobuf/ParcelableProto;

    move-result-object v0

    return-object v0
.end method
