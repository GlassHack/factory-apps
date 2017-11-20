.class public Lcom/google/android/clockwork/stream/StreamItemEntryId;
.super Lcom/google/android/clockwork/stream/StreamItemId;
.source "StreamItemEntryId.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItemEntryId;",
            ">;"
        }
    .end annotation
.end field

.field private static final NULL_TAG_KEY_PART:Ljava/lang/String; = "null_tag"


# instance fields
.field public final id:I

.field public final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/google/android/clockwork/stream/StreamItemEntryId$1;

    invoke-direct {v0}, Lcom/google/android/clockwork/stream/StreamItemEntryId$1;-><init>()V

    sput-object v0, Lcom/google/android/clockwork/stream/StreamItemEntryId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/clockwork/stream/StreamItemId;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/clockwork/stream/StreamItemEntryId;->tag:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/clockwork/stream/StreamItemEntryId;->id:I

    .line 84
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/clockwork/stream/StreamItemEntryId$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/google/android/clockwork/stream/StreamItemEntryId$1;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/google/android/clockwork/stream/StreamItemEntryId;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/clockwork/stream/StreamItemId;-><init>(Ljava/lang/String;)V

    .line 24
    iput-object p2, p0, Lcom/google/android/clockwork/stream/StreamItemEntryId;->tag:Ljava/lang/String;

    .line 25
    iput p3, p0, Lcom/google/android/clockwork/stream/StreamItemEntryId;->id:I

    .line 26
    return-void
.end method

.method public static fromKey(Ljava/lang/String;)Lcom/google/android/clockwork/stream/StreamItemEntryId;
    .locals 7
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    .line 29
    const-string v4, ":"

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, "pieces":[Ljava/lang/String;
    array-length v4, v2

    if-eq v4, v5, :cond_0

    .line 36
    :goto_0
    return-object v3

    .line 33
    :cond_0
    const/4 v4, 0x0

    aget-object v1, v2, v4

    .line 34
    .local v1, "packageName":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 35
    .local v0, "id":I
    aget-object v4, v2, v6

    const-string v5, "null_tag"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 36
    .local v3, "tag":Ljava/lang/String;
    :goto_1
    new-instance v4, Lcom/google/android/clockwork/stream/StreamItemEntryId;

    invoke-direct {v4, v1, v3, v0}, Lcom/google/android/clockwork/stream/StreamItemEntryId;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v3, v4

    goto :goto_0

    .line 35
    .end local v3    # "tag":Ljava/lang/String;
    :cond_1
    aget-object v3, v2, v6

    goto :goto_1
.end method


# virtual methods
.method public compareTo(Lcom/google/android/clockwork/stream/StreamItemId;)I
    .locals 5
    .param p1, "other"    # Lcom/google/android/clockwork/stream/StreamItemId;

    .prologue
    const/4 v2, -0x1

    .line 106
    iget-object v3, p0, Lcom/google/android/clockwork/stream/StreamItemEntryId;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/clockwork/stream/StreamItemId;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 107
    .local v0, "order":I
    if-eqz v0, :cond_1

    move v2, v0

    .line 119
    :cond_0
    :goto_0
    return v2

    .line 110
    :cond_1
    instance-of v3, p1, Lcom/google/android/clockwork/stream/StreamItemGroupId;

    if-nez v3, :cond_0

    move-object v1, p1

    .line 113
    check-cast v1, Lcom/google/android/clockwork/stream/StreamItemEntryId;

    .line 114
    .local v1, "otherEntryId":Lcom/google/android/clockwork/stream/StreamItemEntryId;
    iget-object v3, p0, Lcom/google/android/clockwork/stream/StreamItemEntryId;->tag:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v2, v1, Lcom/google/android/clockwork/stream/StreamItemEntryId;->tag:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/clockwork/stream/StreamItemEntryId;->tag:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/clockwork/stream/StreamItemEntryId;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 116
    :goto_1
    if-eqz v0, :cond_5

    move v2, v0

    .line 117
    goto :goto_0

    .line 114
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, v1, Lcom/google/android/clockwork/stream/StreamItemEntryId;->tag:Ljava/lang/String;

    if-eqz v3, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 119
    :cond_5
    iget v2, p0, Lcom/google/android/clockwork/stream/StreamItemEntryId;->id:I

    iget v3, v1, Lcom/google/android/clockwork/stream/StreamItemEntryId;->id:I

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->compare(II)I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 12
    check-cast p1, Lcom/google/android/clockwork/stream/StreamItemId;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/clockwork/stream/StreamItemEntryId;->compareTo(Lcom/google/android/clockwork/stream/StreamItemId;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 62
    instance-of v2, p1, Lcom/google/android/clockwork/stream/StreamItemEntryId;

    if-nez v2, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 65
    check-cast v0, Lcom/google/android/clockwork/stream/StreamItemEntryId;

    .line 66
    .local v0, "other":Lcom/google/android/clockwork/stream/StreamItemEntryId;
    iget-object v2, p0, Lcom/google/android/clockwork/stream/StreamItemEntryId;->tag:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/google/android/clockwork/stream/StreamItemEntryId;->tag:Ljava/lang/String;

    if-nez v2, :cond_0

    :goto_1
    iget-object v2, p0, Lcom/google/android/clockwork/stream/StreamItemEntryId;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/clockwork/stream/StreamItemEntryId;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/android/clockwork/stream/StreamItemEntryId;->id:I

    iget v3, v0, Lcom/google/android/clockwork/stream/StreamItemEntryId;->id:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/clockwork/stream/StreamItemEntryId;->tag:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/clockwork/stream/StreamItemEntryId;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/clockwork/stream/StreamItemEntryId;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/clockwork/stream/StreamItemEntryId;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamItemEntryId;->tag:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null_tag"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamItemEntryId;->tag:Ljava/lang/String;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/clockwork/stream/StreamItemEntryId;->packageName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/clockwork/stream/StreamItemEntryId;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/clockwork/stream/StreamItemEntryId;->tag:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "StreamItemEntryId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-object v1, p0, Lcom/google/android/clockwork/stream/StreamItemEntryId;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-object v1, p0, Lcom/google/android/clockwork/stream/StreamItemEntryId;->tag:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 45
    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v1, p0, Lcom/google/android/clockwork/stream/StreamItemEntryId;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    :cond_0
    iget v1, p0, Lcom/google/android/clockwork/stream/StreamItemEntryId;->id:I

    if-eqz v1, :cond_1

    .line 49
    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget v1, p0, Lcom/google/android/clockwork/stream/StreamItemEntryId;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
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
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamItemEntryId;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamItemEntryId;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget v0, p0, Lcom/google/android/clockwork/stream/StreamItemEntryId;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    return-void
.end method
