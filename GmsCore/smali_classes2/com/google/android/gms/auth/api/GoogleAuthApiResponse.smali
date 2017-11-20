.class public Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/api/j;


# instance fields
.field final a:I

.field final b:I

.field final c:Landroid/os/Bundle;

.field final d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/google/android/gms/auth/api/j;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/j;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;->CREATOR:Lcom/google/android/gms/auth/api/j;

    return-void
.end method

.method public constructor <init>(IILandroid/os/Bundle;[B)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput p1, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;->a:I

    .line 95
    iput p2, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;->b:I

    .line 96
    iput-object p3, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;->c:Landroid/os/Bundle;

    .line 97
    iput-object p4, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;->d:[B

    .line 98
    return-void
.end method

.method private constructor <init>(ILandroid/os/Bundle;[B)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;->a:I

    .line 38
    iput p1, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;->b:I

    .line 39
    iput-object p2, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;->c:Landroid/os/Bundle;

    .line 40
    iput-object p3, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;->d:[B

    .line 41
    return-void
.end method

.method public constructor <init>(ILjava/util/Map;[B)V
    .locals 1

    .prologue
    .line 33
    invoke-static {p2}, Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;->a(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;-><init>(ILandroid/os/Bundle;[B)V

    .line 34
    return-void
.end method

.method private static a(Ljava/util/Map;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 44
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 45
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 46
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_0
    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 85
    invoke-static {p0, p1}, Lcom/google/android/gms/auth/api/j;->a(Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;Landroid/os/Parcel;)V

    .line 86
    return-void
.end method
