.class public final Lcom/google/android/youtube/core/model/UserAuth;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field private volatile g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 179
    new-instance v0, Lcom/google/android/youtube/core/model/m;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/m;-><init>()V

    .line 178
    sput-object v0, Lcom/google/android/youtube/core/model/UserAuth;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 18
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserAuth;->b:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserAuth;->c:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserAuth;->d:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserAuth;->e:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserAuth;->f:Ljava/lang/String;

    .line 107
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/youtube/core/model/UserAuth;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/model/UserAuth;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 88
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/model/UserAuth;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lcom/google/android/youtube/core/model/UserAuth;->b:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lcom/google/android/youtube/core/model/UserAuth;->c:Ljava/lang/String;

    .line 82
    iput-object p4, p0, Lcom/google/android/youtube/core/model/UserAuth;->d:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    .line 83
    invoke-static {p5}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/UserAuth;->e:Ljava/lang/String;

    .line 84
    iput-object p6, p0, Lcom/google/android/youtube/core/model/UserAuth;->f:Ljava/lang/String;

    .line 85
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 111
    if-ne p0, p1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v0

    .line 114
    :cond_1
    instance-of v2, p1, Lcom/google/android/youtube/core/model/UserAuth;

    if-nez v2, :cond_2

    move v0, v1

    .line 115
    goto :goto_0

    .line 117
    :cond_2
    check-cast p1, Lcom/google/android/youtube/core/model/UserAuth;

    .line 119
    iget-object v2, p0, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/youtube/core/model/UserAuth;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/youtube/core/model/UserAuth;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 124
    iget v0, p0, Lcom/google/android/youtube/core/model/UserAuth;->g:I

    .line 125
    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 128
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserAuth;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 129
    iput v0, p0, Lcom/google/android/youtube/core/model/UserAuth;->g:I

    .line 131
    :cond_0
    return v0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserAuth;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "accountName=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserAuth;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserAuth;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserAuth;->d:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 174
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserAuth;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/google/android/youtube/core/model/UserAuth;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    return-void
.end method
