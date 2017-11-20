.class public Lcom/google/android/clockwork/stream/StreamItemGroupId;
.super Lcom/google/android/clockwork/stream/StreamItemId;
.source "StreamItemGroupId.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/clockwork/stream/StreamItemGroupId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final groupKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/google/android/clockwork/stream/StreamItemGroupId$1;

    invoke-direct {v0}, Lcom/google/android/clockwork/stream/StreamItemGroupId$1;-><init>()V

    sput-object v0, Lcom/google/android/clockwork/stream/StreamItemGroupId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/clockwork/stream/StreamItemId;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/clockwork/stream/StreamItemGroupId;->groupKey:Ljava/lang/String;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/clockwork/stream/StreamItemGroupId$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/google/android/clockwork/stream/StreamItemGroupId$1;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/clockwork/stream/StreamItemGroupId;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "groupKey"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/google/android/clockwork/stream/StreamItemId;-><init>(Ljava/lang/String;)V

    .line 16
    iput-object p2, p0, Lcom/google/android/clockwork/stream/StreamItemGroupId;->groupKey:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/clockwork/stream/StreamItemId;)I
    .locals 4
    .param p1, "other"    # Lcom/google/android/clockwork/stream/StreamItemId;

    .prologue
    .line 73
    iget-object v2, p0, Lcom/google/android/clockwork/stream/StreamItemGroupId;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/clockwork/stream/StreamItemId;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 74
    .local v0, "order":I
    if-eqz v0, :cond_0

    .line 81
    .end local v0    # "order":I
    :goto_0
    return v0

    .line 77
    .restart local v0    # "order":I
    :cond_0
    instance-of v2, p1, Lcom/google/android/clockwork/stream/StreamItemEntryId;

    if-eqz v2, :cond_1

    .line 78
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move-object v1, p1

    .line 80
    check-cast v1, Lcom/google/android/clockwork/stream/StreamItemGroupId;

    .line 81
    .local v1, "otherGroupId":Lcom/google/android/clockwork/stream/StreamItemGroupId;
    iget-object v2, p0, Lcom/google/android/clockwork/stream/StreamItemGroupId;->groupKey:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/clockwork/stream/StreamItemGroupId;->groupKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 10
    check-cast p1, Lcom/google/android/clockwork/stream/StreamItemId;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/clockwork/stream/StreamItemGroupId;->compareTo(Lcom/google/android/clockwork/stream/StreamItemId;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 32
    instance-of v2, p1, Lcom/google/android/clockwork/stream/StreamItemGroupId;

    if-nez v2, :cond_1

    .line 36
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 35
    check-cast v0, Lcom/google/android/clockwork/stream/StreamItemGroupId;

    .line 36
    .local v0, "other":Lcom/google/android/clockwork/stream/StreamItemGroupId;
    iget-object v2, p0, Lcom/google/android/clockwork/stream/StreamItemGroupId;->groupKey:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/clockwork/stream/StreamItemGroupId;->groupKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/clockwork/stream/StreamItemGroupId;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/clockwork/stream/StreamItemGroupId;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/clockwork/stream/StreamItemGroupId;->packageName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/clockwork/stream/StreamItemGroupId;->groupKey:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "StreamItemGroupId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget-object v1, p0, Lcom/google/android/clockwork/stream/StreamItemGroupId;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, ", group="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget-object v1, p0, Lcom/google/android/clockwork/stream/StreamItemGroupId;->groupKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamItemGroupId;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/google/android/clockwork/stream/StreamItemGroupId;->groupKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    return-void
.end method
