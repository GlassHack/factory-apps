.class Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;
.super Ljava/lang/Object;
.source "RemoteStreamItemId.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;",
            ">;"
        }
    .end annotation
.end field

.field private static final REMOTE_STREAM_ITEM_ID_PREFIX:Ljava/lang/String;


# instance fields
.field public final creatorNodeId:Ljava/lang/String;

.field public final itemId:Lcom/google/android/clockwork/stream/StreamItemEntryId;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const-string v0, "bridger"

    const-string v1, "/stream_item"

    invoke-static {v0, v1}, Lcom/google/android/clockwork/host/WearableHostUtil;->pathWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->REMOTE_STREAM_ITEM_ID_PREFIX:Ljava/lang/String;

    .line 92
    new-instance v0, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId$1;

    invoke-direct {v0}, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId$1;-><init>()V

    sput-object v0, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->creatorNodeId:Ljava/lang/String;

    .line 83
    sget-object v0, Lcom/google/android/clockwork/stream/StreamItemEntryId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/clockwork/stream/StreamItemEntryId;

    iput-object v0, p0, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->itemId:Lcom/google/android/clockwork/stream/StreamItemEntryId;

    .line 84
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId$1;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/clockwork/stream/StreamItemEntryId;)V
    .locals 0
    .param p1, "creatorNodeId"    # Ljava/lang/String;
    .param p2, "itemId"    # Lcom/google/android/clockwork/stream/StreamItemEntryId;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->creatorNodeId:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->itemId:Lcom/google/android/clockwork/stream/StreamItemEntryId;

    .line 34
    return-void
.end method

.method public static fromKey(Ljava/lang/String;)Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x3

    .line 38
    const-string v1, ":"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "pieces":[Ljava/lang/String;
    array-length v1, v0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    sget-object v2, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->REMOTE_STREAM_ITEM_ID_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 40
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid RemoteStreamItemId key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_1
    new-instance v1, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {v3}, Lcom/google/android/clockwork/stream/StreamItemEntryId;->fromKey(Ljava/lang/String;)Lcom/google/android/clockwork/stream/StreamItemEntryId;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;-><init>(Ljava/lang/String;Lcom/google/android/clockwork/stream/StreamItemEntryId;)V

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 63
    instance-of v2, p1, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;

    if-nez v2, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 66
    check-cast v0, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;

    .line 67
    .local v0, "other":Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;
    iget-object v2, p0, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->creatorNodeId:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->creatorNodeId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->itemId:Lcom/google/android/clockwork/stream/StreamItemEntryId;

    iget-object v3, v0, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->itemId:Lcom/google/android/clockwork/stream/StreamItemEntryId;

    invoke-virtual {v2, v3}, Lcom/google/android/clockwork/stream/StreamItemEntryId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->REMOTE_STREAM_ITEM_ID_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->creatorNodeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->itemId:Lcom/google/android/clockwork/stream/StreamItemEntryId;

    invoke-virtual {v1}, Lcom/google/android/clockwork/stream/StreamItemEntryId;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 73
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->creatorNodeId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->itemId:Lcom/google/android/clockwork/stream/StreamItemEntryId;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "RemoteStreamItemId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget-object v1, p0, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->itemId:Lcom/google/android/clockwork/stream/StreamItemEntryId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    const-string v1, ", creatorNodeId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object v1, p0, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->creatorNodeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->creatorNodeId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/google/android/clockwork/stream/bridger/RemoteStreamItemId;->itemId:Lcom/google/android/clockwork/stream/StreamItemEntryId;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/clockwork/stream/StreamItemEntryId;->writeToParcel(Landroid/os/Parcel;I)V

    .line 90
    return-void
.end method
