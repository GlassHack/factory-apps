.class final Lcom/google/protobuf/nano/android/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    invoke-static {p1}, Lcom/google/protobuf/nano/android/c;->a(Landroid/os/Parcel;)Lcom/google/protobuf/nano/j;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/android/ParcelableMessageNano;

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    new-array v0, p1, [Lcom/google/protobuf/nano/android/ParcelableMessageNano;

    return-object v0
.end method
