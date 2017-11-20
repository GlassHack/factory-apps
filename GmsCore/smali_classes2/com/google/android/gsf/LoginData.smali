.class public Lcom/google/android/gsf/LoginData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:[B

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Lcom/google/android/gsf/l;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/google/android/gsf/k;

    invoke-direct {v0}, Lcom/google/android/gsf/k;-><init>()V

    sput-object v0, Lcom/google/android/gsf/LoginData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->a:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->b:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->c:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->d:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->e:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->f:[B

    .line 52
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->g:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->h:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gsf/LoginData;->i:I

    .line 55
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->j:Lcom/google/android/gsf/l;

    .line 56
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->k:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->l:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->m:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->n:Ljava/lang/String;

    .line 65
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->a:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->b:Ljava/lang/String;

    .line 48
    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->c:Ljava/lang/String;

    .line 49
    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->d:Ljava/lang/String;

    .line 50
    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->e:Ljava/lang/String;

    .line 51
    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->f:[B

    .line 52
    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->g:Ljava/lang/String;

    .line 53
    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->h:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gsf/LoginData;->i:I

    .line 55
    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->j:Lcom/google/android/gsf/l;

    .line 56
    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->k:Ljava/lang/String;

    .line 57
    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->l:Ljava/lang/String;

    .line 58
    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->m:Ljava/lang/String;

    .line 63
    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->n:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->f:[B

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->h:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gsf/LoginData;->i:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->j:Lcom/google/android/gsf/l;

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->k:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->l:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->m:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->n:Ljava/lang/String;

    .line 135
    return-void

    .line 134
    :cond_0
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->f:[B

    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->f:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/google/android/gsf/l;->valueOf(Ljava/lang/String;)Lcom/google/android/gsf/l;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->j:Lcom/google/android/gsf/l;

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/gsf/LoginData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->f:[B

    if-nez v0, :cond_0

    .line 101
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    :goto_0
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget v0, p0, Lcom/google/android/gsf/LoginData;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->j:Lcom/google/android/gsf/l;

    if-nez v0, :cond_1

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    :goto_1
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->f:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->f:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->j:Lcom/google/android/gsf/l;

    invoke-virtual {v0}, Lcom/google/android/gsf/l;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1
.end method
