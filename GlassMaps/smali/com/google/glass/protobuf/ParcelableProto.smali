.class public Lcom/google/glass/protobuf/ParcelableProto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private logAsByteArray:[B

.field private final proto:Lcom/google/protobuf/nano/MessageNano;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/google/glass/protobuf/ParcelableProto$1;

    invoke-direct {v0}, Lcom/google/glass/protobuf/ParcelableProto$1;-><init>()V

    sput-object v0, Lcom/google/glass/protobuf/ParcelableProto;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/nano/MessageNano;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/glass/protobuf/ParcelableProto;->proto:Lcom/google/protobuf/nano/MessageNano;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/protobuf/ParcelableProto;->logAsByteArray:[B

    .line 39
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    iget-object v1, p0, Lcom/google/glass/protobuf/ParcelableProto;->logAsByteArray:[B

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/protobuf/ParcelableProto;->proto:Lcom/google/protobuf/nano/MessageNano;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 47
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 42
    :catch_1
    move-exception v0

    .line 43
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 44
    :catch_2
    move-exception v0

    .line 45
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static of(Lcom/google/protobuf/nano/MessageNano;)Lcom/google/glass/protobuf/ParcelableProto;
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/google/glass/protobuf/ParcelableProto;

    invoke-direct {v0, p0}, Lcom/google/glass/protobuf/ParcelableProto;-><init>(Lcom/google/protobuf/nano/MessageNano;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lcom/google/glass/protobuf/ParcelableProto;)Z
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/glass/protobuf/ParcelableProto;->getProto()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/glass/protobuf/ParcelableProto;->getProto()Lcom/google/protobuf/nano/MessageNano;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 78
    instance-of v0, p1, Lcom/google/glass/protobuf/ParcelableProto;

    if-eqz v0, :cond_0

    .line 79
    check-cast p1, Lcom/google/glass/protobuf/ParcelableProto;

    invoke-virtual {p0, p1}, Lcom/google/glass/protobuf/ParcelableProto;->equals(Lcom/google/glass/protobuf/ParcelableProto;)Z

    move-result v0

    .line 81
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProto()Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/glass/protobuf/ParcelableProto;->proto:Lcom/google/protobuf/nano/MessageNano;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/glass/protobuf/ParcelableProto;->proto:Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/protobuf/ParcelableProto;->proto:Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/MessageNano;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/protobuf/ParcelableProto;->logAsByteArray:[B

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/google/glass/protobuf/ParcelableProto;->proto:Lcom/google/protobuf/nano/MessageNano;

    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/protobuf/ParcelableProto;->logAsByteArray:[B

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/google/glass/protobuf/ParcelableProto;->logAsByteArray:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 55
    return-void
.end method
