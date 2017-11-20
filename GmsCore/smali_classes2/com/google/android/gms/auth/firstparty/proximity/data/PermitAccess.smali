.class public Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/proximity/data/d;


# instance fields
.field final a:I

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/google/android/gms/auth/firstparty/proximity/data/d;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->CREATOR:Lcom/google/android/gms/auth/firstparty/proximity/data/d;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->a:I

    .line 86
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->b:Ljava/lang/String;

    .line 87
    invoke-static {p3}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->c:Ljava/lang/String;

    .line 88
    invoke-static {p4}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->d:[B

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;-><init>(ILjava/lang/String;Ljava/lang/String;[B)V

    .line 68
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()[B
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->d:[B

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 105
    if-nez p1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v0

    .line 108
    :cond_1
    if-ne p1, p0, :cond_2

    move v0, v1

    .line 109
    goto :goto_0

    .line 111
    :cond_2
    instance-of v2, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    if-eqz v2, :cond_0

    .line 115
    check-cast p1, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

    .line 116
    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->d:[B

    iget-object v3, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->d:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 126
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 127
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;->d:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 128
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 138
    invoke-static {p0, p1}, Lcom/google/android/gms/auth/firstparty/proximity/data/d;->a(Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;Landroid/os/Parcel;)V

    .line 139
    return-void
.end method
