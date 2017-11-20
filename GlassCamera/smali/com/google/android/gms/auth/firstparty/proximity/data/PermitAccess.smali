.class public Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/proximity/data/c;

.field public static final TYPE_AES:Ljava/lang/String; = "AES"

.field public static final TYPE_AUTHZEN_PUBLIC_KEY:Ljava/lang/String; = "AUTHZEN_PUBLIC_KEY"


# instance fields
.field final mData:[B

.field final pc:Ljava/lang/String;

.field final pe:I

.field final ru:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/proximity/data/c;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->CREATOR:Lcom/google/android/gms/auth/firstparty/proximity/data/c;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;[B)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "data"    # [B

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->pe:I

    invoke-static {p2}, Lcom/google/android/gms/common/internal/l;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->pc:Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/l;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->ru:Ljava/lang/String;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/l;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->mData:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;-><init>(ILjava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->pc:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->pc:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->ru:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->ru:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->mData:[B

    iget-object v3, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->mData:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->mData:[B

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->pc:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->ru:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->pc:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v1, v1, 0x20f

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->ru:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->mData:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/proximity/data/c;->a(Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;Landroid/os/Parcel;I)V

    return-void
.end method
