.class public Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/proximity/data/a;


# instance fields
.field final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/google/android/gms/auth/firstparty/proximity/data/a;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/proximity/data/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;->CREATOR:Lcom/google/android/gms/auth/firstparty/proximity/data/a;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;->a:I

    .line 85
    invoke-static {p2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;->b:Ljava/lang/String;

    .line 86
    invoke-static {p3}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;->c:Ljava/lang/String;

    .line 87
    invoke-static {p4}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;->d:[B

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;-><init>(ILjava/lang/String;Ljava/lang/String;[B)V

    .line 65
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()[B
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;->d:[B

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 104
    if-nez p1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 107
    :cond_1
    if-ne p1, p0, :cond_2

    move v0, v1

    .line 108
    goto :goto_0

    .line 110
    :cond_2
    instance-of v2, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;

    if-eqz v2, :cond_0

    .line 114
    check-cast p1, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;

    .line 115
    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;->d:[B

    iget-object v3, p1, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;->d:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 130
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 131
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;->d:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 132
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 137
    invoke-static {p0, p1}, Lcom/google/android/gms/auth/firstparty/proximity/data/a;->a(Lcom/google/android/gms/auth/firstparty/proximity/data/Authorization;Landroid/os/Parcel;)V

    .line 138
    return-void
.end method
