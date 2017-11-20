.class public Lcom/google/android/location/clientlib/NlpLocation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Landroid/location/Location;

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/Integer;

.field public final e:Ljava/lang/Integer;

.field public final f:Ljava/lang/Integer;

.field public final g:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lcom/google/android/location/clientlib/f;

    invoke-direct {v0}, Lcom/google/android/location/clientlib/f;-><init>()V

    sput-object v0, Lcom/google/android/location/clientlib/NlpLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/location/Location;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;[B)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/google/android/location/clientlib/NlpLocation;->a:Landroid/location/Location;

    .line 71
    iput p2, p0, Lcom/google/android/location/clientlib/NlpLocation;->b:I

    .line 72
    iput-object p3, p0, Lcom/google/android/location/clientlib/NlpLocation;->c:Ljava/lang/String;

    .line 73
    iput-object p4, p0, Lcom/google/android/location/clientlib/NlpLocation;->d:Ljava/lang/Integer;

    .line 74
    iput-object p5, p0, Lcom/google/android/location/clientlib/NlpLocation;->e:Ljava/lang/Integer;

    .line 75
    iput-object p6, p0, Lcom/google/android/location/clientlib/NlpLocation;->f:Ljava/lang/Integer;

    .line 76
    iput-object p7, p0, Lcom/google/android/location/clientlib/NlpLocation;->g:[B

    .line 77
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    iput-object v0, p0, Lcom/google/android/location/clientlib/NlpLocation;->a:Landroid/location/Location;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/location/clientlib/NlpLocation;->b:I

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/location/clientlib/NlpLocation;->c:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/google/android/location/clientlib/NlpLocation;->d:Ljava/lang/Integer;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/google/android/location/clientlib/NlpLocation;->e:Ljava/lang/Integer;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    :goto_3
    iput-object v0, p0, Lcom/google/android/location/clientlib/NlpLocation;->f:Ljava/lang/Integer;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 137
    if-nez v0, :cond_4

    .line 138
    iput-object v1, p0, Lcom/google/android/location/clientlib/NlpLocation;->g:[B

    .line 143
    :goto_4
    return-void

    .line 131
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 133
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 134
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    .line 140
    :cond_4
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/location/clientlib/NlpLocation;->g:[B

    .line 141
    iget-object v0, p0, Lcom/google/android/location/clientlib/NlpLocation;->g:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_4
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/google/android/location/clientlib/NlpLocation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    iget-object v0, p0, Lcom/google/android/location/clientlib/NlpLocation;->a:Landroid/location/Location;

    invoke-virtual {v0, p1, p2}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    .line 90
    iget v0, p0, Lcom/google/android/location/clientlib/NlpLocation;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-object v0, p0, Lcom/google/android/location/clientlib/NlpLocation;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-object v0, p0, Lcom/google/android/location/clientlib/NlpLocation;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    :goto_0
    iget-object v0, p0, Lcom/google/android/location/clientlib/NlpLocation;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-object v0, p0, Lcom/google/android/location/clientlib/NlpLocation;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    :goto_1
    iget-object v0, p0, Lcom/google/android/location/clientlib/NlpLocation;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 107
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object v0, p0, Lcom/google/android/location/clientlib/NlpLocation;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    :goto_2
    iget-object v0, p0, Lcom/google/android/location/clientlib/NlpLocation;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 114
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget-object v0, p0, Lcom/google/android/location/clientlib/NlpLocation;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    :goto_3
    iget-object v0, p0, Lcom/google/android/location/clientlib/NlpLocation;->g:[B

    if-eqz v0, :cond_4

    .line 121
    iget-object v0, p0, Lcom/google/android/location/clientlib/NlpLocation;->g:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-object v0, p0, Lcom/google/android/location/clientlib/NlpLocation;->g:[B

    iget-object v1, p0, Lcom/google/android/location/clientlib/NlpLocation;->g:[B

    array-length v1, v1

    invoke-virtual {p1, v0, v2, v1}, Landroid/os/Parcel;->writeByteArray([BII)V

    .line 126
    :goto_4
    return-void

    .line 96
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 110
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 117
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 124
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4
.end method
