.class final Lcom/google/android/gms/blescanner/compat/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 138
    new-instance v2, Lcom/google/android/gms/blescanner/compat/m;

    invoke-direct {v2}, Lcom/google/android/gms/blescanner/compat/m;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v4, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/blescanner/compat/m;->a:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v4, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalid device address "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iput-object v0, v2, Lcom/google/android/gms/blescanner/compat/m;->b:Ljava/lang/String;

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v4, :cond_4

    const-class v0, Landroid/os/ParcelUuid;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    iput-object v0, v2, Lcom/google/android/gms/blescanner/compat/m;->c:Landroid/os/ParcelUuid;

    iput-object v5, v2, Lcom/google/android/gms/blescanner/compat/m;->d:Landroid/os/ParcelUuid;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v4, :cond_4

    const-class v1, Landroid/os/ParcelUuid;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    iget-object v3, v2, Lcom/google/android/gms/blescanner/compat/m;->d:Landroid/os/ParcelUuid;

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/google/android/gms/blescanner/compat/m;->c:Landroid/os/ParcelUuid;

    if-nez v3, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "uuid is null while uuidMask is not null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object v0, v2, Lcom/google/android/gms/blescanner/compat/m;->c:Landroid/os/ParcelUuid;

    iput-object v1, v2, Lcom/google/android/gms/blescanner/compat/m;->d:Landroid/os/ParcelUuid;

    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v4, :cond_6

    const-class v0, Landroid/os/ParcelUuid;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v4, :cond_6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_7

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "serviceDataUuid is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iput-object v0, v2, Lcom/google/android/gms/blescanner/compat/m;->e:Landroid/os/ParcelUuid;

    iput-object v1, v2, Lcom/google/android/gms/blescanner/compat/m;->f:[B

    iput-object v5, v2, Lcom/google/android/gms/blescanner/compat/m;->g:[B

    :cond_6
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v4, :cond_9

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_a

    if-gez v0, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid manufacture id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/blescanner/compat/m;->a(Landroid/os/ParcelUuid;[B[B)Lcom/google/android/gms/blescanner/compat/m;

    goto :goto_0

    :cond_8
    iput v0, v2, Lcom/google/android/gms/blescanner/compat/m;->h:I

    iput-object v1, v2, Lcom/google/android/gms/blescanner/compat/m;->i:[B

    iput-object v5, v2, Lcom/google/android/gms/blescanner/compat/m;->j:[B

    :cond_9
    :goto_1
    invoke-virtual {v2}, Lcom/google/android/gms/blescanner/compat/m;->a()Lcom/google/android/gms/blescanner/compat/ScanFilter;

    move-result-object v0

    return-object v0

    :cond_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/blescanner/compat/m;->a(I[B[B)Lcom/google/android/gms/blescanner/compat/m;

    goto :goto_1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 138
    new-array v0, p1, [Lcom/google/android/gms/blescanner/compat/ScanFilter;

    return-object v0
.end method
